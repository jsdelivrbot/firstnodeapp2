            var express = require('express');
			var mysql=require('mysql');
			var md5 = require('md5');
			var session = require('express-session');			
			var app  = express();
			
			app.set('view engine', 'ejs');
            var port = process.env.PORT || 8080;
			var upload=require('express-fileupload');
			var nodemailer=require('nodemailer');
			var http=require('http').Server(app);
			var io=require('socket.io')(http);
			const {Users} = require('./utils/users');
			var users = new Users();
          // app.set('port', (process.env.PORT || 5000));
           //http.listen(app.get('port'));
           http.listen(port);

           app.use(upload()); //for file upload -- html form file upload imp
       	  // app.use(express.static(__dirname + '/public'));
			app.use('/public', express.static('vendors')); 
			store  = new express.session.MemoryStore;
			app.use(express.cookieParser());
			app.use(express.session({ secret: 'something'}));
			// set the home page route
			app.get('/', function(req, res) {
				
				//res.send('Welcome Monu kanyal');
				// ejs render automatically looks in the views folder
				res.render('index',{page_title:'Home'});
			});


			app.get('/firebasechat',function(request,response){
			
				if (request.session.user) 
				{
					var username=request.session.user;	
					 response.render('firechat',{username:username});
				}
				else
				{
					 response.render('login');
				}
		
			});

	app.post('/disconnect',function(request,response){
		if (request.session.user) 
		{
			request.session.destroy();
			response.redirect('/firebasechat');
		}
		
	});

	app.get('/login',function(request,response){
		
			 response.render('login');
		

	});
	app.get('/login_private',function(request,response){
		
			// response.render('login_private');
		

	});


app.post('/createuser',function(request,response){
		var username=request.body.username;
		var room_name=request.body.optradio;
		request.session.user=username;
	 response.render('firechat',{username:username,room:room_name});
						
	});

		// socket for chat
		function onlyUnique(value, index, self) 
		{ 
			return self.indexOf(value) === index;
		}

		function removeA(arr) 
		{
		var what, a = arguments, L = a.length, ax;
		while (L > 1 && arr.length) {
		    what = a[--L];
		    while ((ax= arr.indexOf(what)) !== -1) {
		        arr.splice(ax, 1);
		    }
		}
		  return arr;
		}
	app.post('/upload',function(req,res){
			var file=req.files.mkfile;   //request.files.filenamefield
			var filename=file.name;	
	   		//console.log(req.files);
	   		var url =req.protocol + '://' + req.get('host') + "/public/upload/" +filename;
			file.mv("./vendors/upload/"+filename,function(err){
			if(err)
			{
				console.log(err);
				res.json({ 'msg': '400' });
				
			}
			else
			{
				var type=req.files.mkfile.mimetype;
				console.log('uploaded:'+filename);
				res.json ({ 'msg':filename,'url':url,'type':type });
				

			}
		});

	});
	//socket
	

		io.on('connection', function(socket){
			console.log('socket started: New user connected');
			
			//join	
			socket.on('newuser', function(username,room){
			
					socket.join(room);
					//socket.username=username;
					//socket.myroom=room;
					 users.removeUser(socket.id);
   					 users.addUser(socket.id, username, room);
   					 io.to(room).emit('updateUserList', users.getUserList(room));
					
			});

			
			socket.on('sendmsg', function(msg,username,ts){
		    	 var user = users.getUser(socket.id);
		    	console.log('message: '+ user.name);
		    	io.to(user.room).emit('showchat', user.name,msg,ts);
		  	});

			//pic from client side
			socket.on('sendfile', function(imagename,imagepath,type,user,ts){
		    	var user = users.getUser(socket.id);
		    	console.log('file sender: '+ user.name);
		    	console.log('file type: '+ type);
		    	if(type=='image')
		    	{
		    		io.to(user.room).emit('showimage', user.name,imagename,imagepath,ts);
		  		}
		  		else if(type=='video')
		  		{
		  		    io.to(user.room).emit('showvideo', user.name,imagename,imagepath,ts);
		  		}
		  	});

			socket.on('disconnect', function(){
		    	  var user = users.removeUser(socket.id);
				    if (user) 
				    {
				    	var msg=user.name+' disconnected';
				      	io.to(user.room).emit('updateUserList', users.getUserList(user.room));
				    	io.to(user.room).emit('notification',msg);
				    }
		 	 });

		});
		

		app.get('/start_sock',function(request,response){
		
			response.render('start_socket');
		});

		app.post('/createroom',function(request,response){
			var username=request.body.username;
			var room_name=request.body.optradio;
			request.session.user=username;
			//console.log(request.session.user);
			response.render('start',{username:username,room:room_name});
		});
		// socket end



