-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2017 at 08:49 AM
-- Server version: 5.5.49
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_production`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_event`
--

CREATE TABLE IF NOT EXISTS `ci_event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `max_attendies` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `logtime` datetime NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_event`
--

INSERT INTO `ci_event` (`id`, `name`, `admin_id`, `description`, `max_attendies`, `is_active`, `logtime`, `modified_at`) VALUES
(1, 'Music', 1, 'Listen to Pianist in Lobby', 2, 1, '2016-01-20 12:13:03', '2016-09-29 10:35:05'),
(2, 'Group Walk', 1, 'We will walk 2 miles through the park', 50, 1, '2016-01-20 12:13:18', '2016-02-04 16:53:54'),
(3, 'Dancing Competition', 1, 'Dancing Passion !!', 1, 1, '2016-01-20 12:13:31', '2016-10-13 05:49:33'),
(4, 'Trip to Grocery Store', 1, 'We will spend 45 minutes at grocery store', 20, 1, '2016-01-21 06:06:19', '2016-02-04 11:22:52'),
(5, 'Morning Yoga', 3, 'Morning yoga with instructor kelly', 50, 1, '2016-01-29 08:56:54', '2016-01-29 08:56:54'),
(6, 'Book Club', 1, 'We will have a new book every month and discuss on a weekly basis.', 25, 1, '2016-02-09 22:43:23', '2016-02-09 22:43:23'),
(7, 'Physical Therapy', 1, 'Licensed Physical Therapist will be in gym and taking 10 appointments', 10, 0, '2016-02-09 22:44:13', '2016-10-13 05:14:50'),
(8, 'test', 7, 'etrtrertetretre', 25, 1, '2016-02-19 05:57:51', '2016-02-19 05:57:51'),
(9, 'test activity 2', 7, 'testing to test', 10, 1, '2016-02-19 06:00:16', '2016-02-19 06:00:16'),
(10, 'tester3', 7, 'technology tech', 40, 1, '2016-02-19 06:11:16', '2016-02-19 06:11:16'),
(11, '&^*&^HKJGFHV', 7, '79871654698', 0, 1, '2016-02-19 06:54:45', '2016-02-19 06:54:45'),
(12, 'test1', 8, 'tester on testing 1', 1, 1, '2016-02-19 09:11:35', '2016-02-19 09:11:35'),
(13, 'test2', 8, 'tester on testing 2', 2, 1, '2016-02-19 09:12:07', '2016-02-19 09:12:07'),
(14, ' SAI bhajan sandhya', 9, 'testing to test', 500, 1, '2016-02-20 05:34:04', '2016-04-28 09:52:58'),
(15, 'healthcheckup', 9, 'testing to test', 1000, 1, '2016-02-20 05:34:51', '2016-04-28 09:53:06'),
(16, 'charity', 9, 'testing to test', 500, 1, '2016-02-20 05:37:10', '2016-04-28 09:53:09'),
(17, 'test hide', 9, 'testing to test', 0, 1, '2016-02-20 06:53:14', '2016-04-28 09:53:03'),
(18, 'event1', 4, 'test event1', 10, 1, '2016-02-20 10:51:30', '2016-02-20 10:51:30'),
(19, 'event2', 4, 'test event2', 11, 1, '2016-02-20 10:52:10', '2016-02-20 10:52:10'),
(20, 'event3', 4, 'test event3', 20, 1, '2016-02-20 10:54:00', '2016-02-20 10:54:00'),
(21, 'Board Games', 1, 'Games in the Common Room', 10, 0, '2016-02-28 22:26:54', '2016-10-13 05:13:06'),
(22, 'shopping trip', 10, 'trip to the mall', 8, 1, '2016-03-29 02:58:58', '2016-03-29 02:58:58'),
(23, 'block walking', 10, 'walk outside', 999, 1, '2016-03-29 02:59:23', '2016-03-29 02:59:23'),
(24, 'book club', 10, 'book club', 0, 1, '2016-03-29 03:00:13', '2016-03-29 03:00:13'),
(25, 'yoga', 10, 'yoga', 16, 1, '2016-03-29 03:01:20', '2016-03-29 03:01:20'),
(26, 'Evening Tea at Harbour Front', 11, 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 20, 1, '2016-03-31 13:19:24', '2016-03-31 13:19:24'),
(27, 'Story Reading ', 11, 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 25, 1, '2016-04-01 10:48:38', '2016-04-01 10:48:38'),
(28, 'Fun Games', 11, 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', 20, 1, '2016-04-01 10:49:05', '2016-04-01 10:49:05'),
(29, 'Trip to HEB', 12, 'We will take a shopping trip to HEB. There is a Starbucks near by that will be our meeting point when we finish shopping.', 25, 1, '2016-04-10 13:48:31', '2016-04-10 13:48:31'),
(30, 'Bridge Card Games', 12, 'We will play duplicate and party bridge.', 20, 1, '2016-04-10 13:49:50', '2016-04-10 13:49:50'),
(31, 'Walking Group', 12, 'We will go on a 2 mile walk down Quinlan Rd.', 20, 1, '2016-04-10 14:19:37', '2016-04-10 14:19:37'),
(32, 'Jazz Music', 12, 'Join us for some great Jazz music', 30, 1, '2016-04-10 14:38:27', '2016-04-10 14:38:27'),
(33, 'geoff tablet test', 1, 'testwr for tablet', 5, 0, '2016-04-16 04:09:05', '2016-10-13 04:58:17'),
(34, 'Walkers & Talkers', 13, 'We will walk and talk.', 25, 1, '2016-04-25 21:21:46', '2016-04-25 21:21:46'),
(35, 'Yoga', 13, 'Light stretching yoga', 15, 1, '2016-04-25 21:23:48', '2016-04-25 21:23:48'),
(36, 'Gardening Club', 13, 'We will do various activities throughout the garden', 20, 1, '2016-04-25 21:26:58', '2016-04-25 21:26:58'),
(37, 'Bridge Card Games', 13, 'We will have two tables', 15, 1, '2016-04-25 21:27:29', '2016-04-25 21:27:29'),
(38, 'sky diving', 19, 'sky diving', 4, 1, '2016-05-12 09:09:34', '2016-05-12 09:09:34'),
(39, 'Bike Ride', 31, 'Bike ride', 50, 1, '2016-05-14 03:26:56', '2016-05-14 03:26:56'),
(40, 'community meeting', 31, 'weekly meetup', 12, 1, '2016-05-14 03:27:14', '2016-05-14 03:27:14'),
(41, 'swimming meet', 31, 'swim meet', 100, 1, '2016-05-14 03:27:42', '2016-05-14 03:27:42'),
(42, 'Writing Group (Cups & Cones)', 55, 'Writing Group', 12, 1, '2016-05-16 21:24:08', '2016-05-16 21:24:08'),
(43, 'Akido', 55, 'Akido', 12, 1, '2016-05-16 21:24:20', '2016-05-16 21:24:20'),
(44, 'Event Planning CMTE Mtg', 55, 'Event Planning group', 8, 1, '2016-05-16 21:24:43', '2016-05-16 21:24:43'),
(45, 'Fairways Board Mtg', 55, 'Board Meeting', 40, 1, '2016-05-16 21:25:02', '2016-05-16 21:25:02'),
(46, 'Landscape CMTE Mtg', 55, 'Landscape Meeting', 30, 1, '2016-05-16 21:25:19', '2016-05-16 21:25:19'),
(47, 'Facilities CMTE Mtg', 55, 'Facilities CMTE meeting', 40, 1, '2016-05-16 21:25:41', '2016-05-16 21:25:41'),
(48, 'Mothers Day Tea', 55, 'Mothers Day Tea', 50, 1, '2016-05-16 21:25:57', '2016-05-16 21:25:57'),
(49, 'Movie in the Park', 55, 'Movie in the park', 999, 1, '2016-05-16 21:26:13', '2016-05-16 21:26:13'),
(50, 'Run Lab', 55, 'Runners, Run lab', 20, 1, '2016-05-16 21:26:30', '2016-05-16 21:26:30'),
(51, 'Shred Day', 55, 'Shred Day', 999, 1, '2016-05-16 21:26:43', '2016-05-16 21:26:43'),
(52, 'SR Photography Group', 55, 'Photo Group', 20, 1, '2016-05-16 21:26:57', '2016-05-16 21:26:57'),
(53, 'SRC Ride', 55, 'Bike Ride', 20, 1, '2016-05-16 21:27:11', '2016-05-16 21:27:11'),
(54, 'SRCC Ride (Cups & Cones)', 55, 'Bike Ride', 20, 1, '2016-05-16 21:27:22', '2016-05-16 21:27:22'),
(55, 'SRNA Mtg', 55, 'SRNA Meetings', 20, 1, '2016-05-16 21:27:35', '2016-05-16 21:27:35'),
(56, 'SRMA Board Mtg', 55, 'Board Meeting', 40, 1, '2016-05-16 21:27:52', '2016-05-16 21:27:52'),
(57, 'SRROA Board Mtg', 55, 'Board Meeting', 40, 1, '2016-05-16 21:28:02', '2016-05-16 21:28:02'),
(58, 'Tia Chi', 55, 'Tia Chi', 16, 1, '2016-05-16 21:28:11', '2016-05-16 21:28:11'),
(59, 'Trails CMTE Mtg', 55, 'Board Meeting', 20, 1, '2016-05-16 21:28:23', '2016-05-16 21:28:23'),
(60, 'Vinyasa Yoga', 55, 'Yoga', 16, 1, '2016-05-16 21:28:35', '2016-05-16 21:28:35'),
(61, 'Yoga', 55, 'yoga', 16, 1, '2016-05-16 21:28:45', '2016-05-16 21:28:45'),
(62, 'SRCC Ride', 55, 'Bike Ride', 15, 1, '2016-05-16 21:28:57', '2016-05-16 21:28:57'),
(63, 'Health Workshop', 55, 'Health Workshop', 50, 1, '2016-05-16 21:34:45', '2016-05-16 21:34:45'),
(64, 'Men''s Group Meeting', 55, 'We will have unfiltered meeting about Authentic Manhood', 8, 1, '2016-05-19 15:10:15', '2016-05-19 15:10:15'),
(65, 'test', 69, 'test', 12, 1, '2016-06-09 03:49:27', '2016-06-09 03:49:27'),
(66, 'Aqua Fitness w/ Louise', 75, 'Come enjoy 30 minutes of fun fitness in the swimming pool.', 15, 1, '2016-07-27 19:01:38', '2016-07-27 19:01:38'),
(67, '30min Brain Games w/ Julie', 75, 'Come test yourself with fun mind games.', 30, 1, '2016-07-27 19:02:39', '2016-07-27 19:02:39'),
(68, 'Political Forum w/ David', 75, 'Have a healthy discussion on politics.', 25, 1, '2016-07-27 19:03:23', '2016-07-27 19:03:23'),
(69, 'Balance & Thai Chi w/ Kade', 75, 'Stimulate your body and mind challenges poses.', 15, 1, '2016-07-27 19:04:06', '2016-07-27 19:04:06'),
(70, 'Spanish Class w/ DeeDee', 75, 'Mi Gusta Espanol. All levels are welcome to come join us.', 20, 1, '2016-07-27 19:05:40', '2016-07-27 19:05:40'),
(71, 'At the Movies/Review Group', 75, 'Channel your inner Roger Ebert to review great movies.', 15, 1, '2016-07-27 19:07:12', '2016-07-27 19:07:12'),
(72, 'Men''s Coffee w/ Bud', 75, 'Men talk over coffee and we may solve the world''s problems.', 20, 1, '2016-07-27 19:09:03', '2016-07-27 19:09:03'),
(73, 'The Life of the New York Times w/ Abby', 75, 'Our time will go by in a New York minute.', 25, 1, '2016-07-27 19:09:58', '2016-07-27 19:09:58'),
(74, 'Walking Club w/ Linda', 75, 'Walking and talking for all levels.', 30, 1, '2016-07-27 19:10:30', '2016-07-27 19:10:30'),
(75, 'Technology Class w/ Janice', 75, 'Come learn what your grand kids already know.', 20, 1, '2016-07-27 19:11:11', '2016-07-27 19:11:11'),
(76, 'Sit & Be Fit w/ Lorin', 75, 'Fitness while sitting still counts!', 18, 1, '2016-07-27 19:12:58', '2016-07-27 19:12:58'),
(77, 'Color Rama Relaxation Time w/ Julie', 75, 'Colors of the rainbow with mental relaxation.', 15, 1, '2016-07-27 19:14:17', '2016-07-27 19:14:17'),
(78, 'Happy Hour', 75, 'Every week we will have different hosts.', 25, 1, '2016-07-27 19:15:38', '2016-07-27 19:15:38'),
(79, 'Bridge Group', 75, 'Everyone is welcome, even beginners.', 30, 1, '2016-07-27 19:16:21', '2016-07-27 19:16:21'),
(80, 'Activity 1', 19, 'Activity 1', 16, 1, '2016-08-29 05:09:19', '2016-08-29 05:09:19'),
(81, 'Activity 1', 19, 'Activity 1', 16, 1, '2016-08-29 05:16:49', '2016-08-29 05:16:49'),
(82, 'Activity 2', 19, 'Activity 2', 2, 1, '2016-08-29 05:16:51', '2016-08-29 05:16:51'),
(83, 'Activity 3', 19, 'Activity 3', 3, 1, '2016-08-29 05:16:52', '2016-08-29 05:16:52'),
(84, 'Activity 4', 19, 'Activity 4', 4, 1, '2016-08-29 05:16:53', '2016-08-29 05:16:53'),
(85, 'Activity 5', 19, 'Activity 5', 5, 1, '2016-08-29 05:16:55', '2016-08-29 05:16:55'),
(86, 'Activity 6', 19, 'Activity 6', 6, 1, '2016-08-29 05:16:56', '2016-08-29 05:16:56'),
(87, 'Activity 7', 19, 'Activity 7', 7, 1, '2016-08-29 05:16:58', '2016-08-29 05:16:58'),
(88, 'Activity 8', 19, 'Activity 8', 8, 1, '2016-08-29 05:16:59', '2016-08-29 05:16:59'),
(89, 'Activity 9', 19, 'Activity 9', 9, 1, '2016-08-29 05:17:01', '2016-08-29 05:17:01'),
(90, 'Activity 10', 19, 'Activity 10', 10, 1, '2016-08-29 05:17:02', '2016-08-29 05:17:02'),
(91, 'Activity 11', 19, 'Activity 11', 11, 1, '2016-08-29 05:17:04', '2016-08-29 05:17:04'),
(92, 'Activity 12', 19, 'Activity 12', 12, 1, '2016-08-29 05:17:05', '2016-08-29 05:17:05'),
(93, 'Activity 13', 19, 'Activity 13', 13, 1, '2016-08-29 05:17:07', '2016-08-29 05:17:07'),
(94, 'Activity 14', 19, 'Activity 14', 14, 0, '2016-08-29 05:17:09', '2016-09-09 12:55:18'),
(95, 'Activity 15', 19, 'Activity 15', 15, 1, '2016-08-29 05:17:10', '2016-08-29 05:17:10'),
(96, 'Activity 16', 19, 'Activity 16', 16, 1, '2016-08-29 05:17:12', '2016-08-29 05:17:12'),
(97, 'Activity 17', 19, 'Activity 17', 17, 1, '2016-08-29 05:17:13', '2016-08-29 05:17:13'),
(98, 'Activity 18', 19, 'Activity 18', 18, 1, '2016-08-29 05:17:15', '2016-08-29 05:17:15'),
(99, 'Music', 89, 'Listen to Pianist in Lobby', 100, 1, '2016-08-31 06:37:02', '2016-08-31 06:37:02'),
(100, 'Group Walk', 89, 'We will walk 2 miles through the park', 100, 1, '2016-08-31 06:37:27', '2016-08-31 06:37:27'),
(101, 'Book', 1, '', 100, 0, '2016-09-01 06:27:34', '2016-09-19 07:02:08'),
(102, 'asdf', 19, '', 0, 0, '2016-09-02 05:43:16', '2016-09-30 05:36:55'),
(103, 'oDesk Support', 19, 'talk \\ skype', 6, 0, '2016-09-07 17:46:44', '2016-09-09 12:56:38'),
(104, 'thus event ', 19, 'thus event management', 1, 0, '2016-09-08 12:33:24', '2016-09-30 05:37:46'),
(105, 'Fri Activity', 19, 'Fri activity event', 2, 1, '2016-09-09 05:29:23', '2016-09-09 05:29:23'),
(106, 'Fri Activity 2', 19, 'Fri Activity 2 event', 2, 1, '2016-09-09 06:30:54', '2016-09-09 06:30:54'),
(107, 'Test new event ', 19, 'test new event for 2 users', 2, 1, '2016-09-09 10:07:24', '2016-09-09 10:07:24'),
(108, 'Test event for end date', 19, ' Test event for end date description', 5, 1, '2016-09-09 10:43:07', '2016-09-09 10:43:07'),
(109, 'Hidden event', 19, 'hide event description updated', 5, 0, '2016-09-09 12:58:30', '2016-09-14 06:34:01'),
(110, 'tst new', 19, 'test des', 6, 1, '2016-09-10 06:40:35', '2016-09-10 06:40:35'),
(111, 'Sat activity', 19, 'sat activity description', 2, 1, '2016-09-10 12:26:27', '2016-09-10 12:26:27'),
(112, '4 Exceed Activity name Edit EventEvent List', 19, 'Exceed Activity name description \r\nExceed Activity name description 2\r\nExceed Activity name description 3\r\nExceed Activity name description  4', 0, 1, '2016-09-14 06:59:00', '2016-09-14 07:01:25'),
(113, 'Latest event', 19, 'Latest event for delete', 10, 0, '2016-09-30 05:25:35', '2016-09-30 05:30:45'),
(114, 'Check max user', 19, 'check for num of user should not be more then 1', 1, 1, '2016-09-30 08:38:24', '2016-09-30 08:38:24'),
(115, 'Test New Demo Event ', 19, 'Test new event description ', 10, 0, '2016-10-01 05:33:00', '2017-03-20 08:24:45'),
(116, 'nutritious', 1, 'Clean water, nutritious food, and a hygienic environment— these are the building blocks of health for any community. Yet, these necessities are out of reach for many families in low-resource environments. As a result, malnutrition contributes to 45 percen', 50, 1, '2016-12-12 11:52:19', '2016-12-12 11:52:19'),
(117, 'Qigong Exercise', 77, 'In the sixth century BCE, Lao Tzu first described breathing techniques as a way to stimulate Qi energy. From there, two types of Qigong breathing exercises evolved: Buddha''s Breath and Daoist''s Breath. Both methods infuse the body with Qi and help focus m', 15, 0, '2016-12-27 22:19:11', '2017-03-23 13:06:21'),
(118, 'Movie & Popcorn', 77, 'Come enjoy a classic movie and popcorn', 25, 1, '2016-12-27 22:23:05', '2016-12-27 22:23:05'),
(119, 'Test Activity', 1, 'Test activity description', 10, 0, '2017-01-05 14:49:39', '2017-03-23 12:52:21'),
(120, '12345', 1, '', 0, 0, '2017-01-13 08:14:24', '2017-01-13 08:17:42'),
(121, 'check', 1, '', 5, 0, '2017-01-27 14:15:12', '2017-01-27 14:32:29'),
(122, 'Test event 21', 19, 'test event', 23, 1, '2017-03-21 08:16:02', '2017-03-21 08:16:02'),
(123, 'TestEvent Today', 1, 'It is a basically dancing event for residents for testing', 10, 0, '2017-03-23 12:49:47', '2017-03-23 12:50:25'),
(124, 'Test Event Today', 1, 'It is a basically dancing event for residents.', 10, 1, '2017-03-23 12:51:26', '2017-03-23 12:57:36'),
(125, 'Coffee & Pastries', 102, '', 0, 1, '2017-03-30 12:50:46', '2017-03-30 12:50:46'),
(126, 'Exercise', 102, '', 0, 1, '2017-03-30 12:51:07', '2017-03-30 12:51:07'),
(127, 'Mexican Train', 102, '', 0, 1, '2017-03-30 12:51:19', '2017-03-30 12:51:19'),
(128, 'Ice Cream Social', 102, '', 0, 1, '2017-03-30 12:51:31', '2017-03-30 12:51:31'),
(129, 'Bingo', 102, '', 0, 1, '2017-03-30 12:51:42', '2017-03-30 12:51:42'),
(130, 'Movie Night', 102, '', 0, 1, '2017-03-30 12:52:28', '2017-03-30 12:52:28'),
(131, 'Sunday School Class', 102, '', 0, 1, '2017-03-30 12:52:50', '2017-03-30 17:09:33'),
(132, 'Game Time', 102, '', 0, 1, '2017-03-30 12:55:13', '2017-03-30 12:55:13'),
(158, 'Check-In', 103, 'International Office Briefing & Check-In International Students Only', 100, 1, '2017-04-16 21:17:28', '2017-04-16 21:31:32'),
(133, 'Sing in the Chorus', 102, '', 0, 1, '2017-03-30 12:56:20', '2017-03-30 12:56:20'),
(134, 'Church Service', 102, '', 0, 1, '2017-03-30 12:57:24', '2017-03-30 18:47:57'),
(135, 'Cookies & Punch', 102, '', 0, 1, '2017-03-30 12:58:50', '2017-03-30 13:39:28'),
(136, 'Spinner Dominoes', 102, '', 0, 1, '2017-03-30 12:59:36', '2017-03-30 12:59:36'),
(137, 'Oldies & Gospel by Vonnie & Lemon Cheesecake Mouse', 102, '', 0, 1, '2017-03-30 13:00:41', '2017-03-30 13:00:41'),
(138, 'Masterpiece Theater', 102, '', 0, 1, '2017-03-30 13:04:34', '2017-03-30 15:28:13'),
(139, 'Study Group', 102, '', 0, 1, '2017-03-30 13:04:50', '2017-03-30 13:04:50'),
(140, 'Singing Fellowship & Communion', 102, '', 0, 1, '2017-03-30 13:06:24', '2017-03-30 13:06:24'),
(141, 'Resident Birthday Party', 102, '', 0, 1, '2017-03-30 13:10:12', '2017-03-30 13:10:12'),
(142, 'Community Store', 102, '', 0, 1, '2017-03-30 13:47:11', '2017-03-30 13:47:11'),
(143, 'Arts & Crafts', 102, '', 0, 1, '2017-03-30 13:47:34', '2017-03-30 13:47:34'),
(144, 'Game Night', 102, '', 0, 1, '2017-03-30 13:47:47', '2017-03-30 13:47:47'),
(145, 'Omelet Station', 102, '', 0, 1, '2017-03-30 13:48:08', '2017-03-30 13:48:08'),
(146, 'Isometrics', 102, '', 0, 1, '2017-03-30 13:48:39', '2017-03-30 13:48:39'),
(147, 'Singing', 102, '', 0, 1, '2017-03-30 13:49:33', '2017-03-30 13:49:33'),
(148, 'Bible Study', 102, '', 0, 1, '2017-03-30 13:54:12', '2017-03-30 13:54:12'),
(149, 'Communion', 102, '', 0, 1, '2017-03-30 13:55:14', '2017-03-30 13:55:14'),
(150, 'Singing in the Chorus', 102, '', 0, 1, '2017-03-30 14:15:51', '2017-03-30 14:15:51'),
(151, 'Shopping', 102, '', 0, 1, '2017-03-30 14:26:55', '2017-05-09 19:15:07'),
(152, 'Singing, Fellowship & Communion', 102, '', 0, 1, '2017-03-30 15:23:16', '2017-03-30 15:23:16'),
(153, 'Breakfast Station', 102, '', 0, 1, '2017-03-30 15:46:12', '2017-03-30 15:46:12'),
(154, 'Games', 102, '', 0, 1, '2017-03-30 16:11:58', '2017-03-30 16:12:16'),
(155, 'Dinner Music', 102, '', 0, 1, '2017-03-30 16:14:56', '2017-03-30 16:14:56'),
(156, 'Seasonal Activity', 102, '', 0, 1, '2017-03-30 16:29:38', '2017-03-30 16:29:38'),
(157, 'Happy Hour w/', 102, '', 0, 1, '2017-03-30 16:36:41', '2017-03-30 16:36:41'),
(159, 'lunch', 103, 'Scheduled Lunch', 100, 1, '2017-04-16 21:18:43', '2017-04-16 21:19:05'),
(160, 'Orientation', 103, 'Program Welcome & Orientation', 100, 1, '2017-04-16 21:20:19', '2017-04-16 21:20:19'),
(161, 'Headshots', 103, 'Headshots & UT ID Cards, (Business Attire Re-quired) & Hotel Check-In', 100, 1, '2017-04-16 21:21:09', '2017-04-16 21:21:09'),
(162, 'Free Time', 103, 'Scheduled Free Time', 100, 1, '2017-04-16 21:21:39', '2017-04-16 21:21:39'),
(163, 'Dinner', 103, 'Reception & Welcome Dinner All Students', 100, 1, '2017-04-16 21:22:42', '2017-04-16 21:22:42'),
(164, 'STC 382 (Mackie)', 103, 'Marketing Technological Innovations', 100, 1, '2017-04-17 00:52:29', '2017-04-17 00:52:29'),
(165, 'STC 386T1 (Badolato)', 103, 'Converting Technology to Wealth', 100, 1, '2017-04-17 00:54:09', '2017-04-17 00:54:09'),
(166, 'STC 380 (Cornwell)', 103, 'Financing New Ventures', 100, 1, '2017-04-17 00:55:04', '2017-04-17 00:55:04'),
(167, 'STC 386T1 (Alexander)', 103, 'Converting Technology to Wealth', 100, 1, '2017-04-17 01:05:42', '2017-04-17 01:05:42'),
(168, 'xyz activity', 1, 'activity description', 0, 1, '2017-04-17 05:27:35', '2017-04-17 05:27:35'),
(169, 'Excel Bootcamp', 103, 'Dr. Ty Henderson - Excel Bootcamp - Joint', 100, 1, '2017-04-17 18:43:15', '2017-04-17 18:43:15'),
(170, 'Working in Teams', 103, 'Dr. Doug Dierking - Working in Teams - Joing', 100, 1, '2017-04-17 18:43:46', '2017-04-17 18:43:46'),
(171, 'Pitch Workshop', 103, 'CS Overview & Pitch Workshop - Joint', 100, 1, '2017-04-17 18:44:40', '2017-04-17 18:44:40'),
(172, 'Excursion', 102, '', 0, 1, '2017-04-25 21:31:52', '2017-04-25 21:31:52'),
(173, 'Isha Event 1 ', 1, 'Test Event 1 ', 10, 1, '2017-04-27 05:01:49', '2017-04-27 05:01:49'),
(174, 'Isha Event 2', 1, 'Test Event 2', 10, 1, '2017-04-27 05:02:15', '2017-04-27 05:02:15'),
(175, 'Isha Event 3', 1, 'Test Event 3', 10, 1, '2017-04-27 05:02:35', '2017-04-27 05:02:35'),
(176, 'Isha Event 4', 1, 'Test Event 4', 10, 1, '2017-04-27 05:03:10', '2017-04-27 05:03:10'),
(177, 'Isha Event 5', 1, 'Test Event 5', 10, 1, '2017-04-27 05:03:36', '2017-04-27 05:03:36'),
(178, 'Chair Yoga', 102, '', 0, 1, '2017-05-01 03:55:08', '2017-05-01 03:55:08'),
(179, '42 Dominoes', 102, '', 0, 1, '2017-05-01 04:02:26', '2017-05-01 04:02:26'),
(180, 'In Service', 102, '', 0, 1, '2017-05-09 15:00:01', '2017-05-09 15:00:01'),
(181, 'Lunch Bunch', 102, '', 0, 1, '2017-05-09 15:02:53', '2017-05-09 15:02:53'),
(182, 'Entertainment', 102, '', 0, 1, '2017-05-09 15:05:29', '2017-05-09 15:05:29'),
(183, 'Day Circle', 102, '', 0, 1, '2017-05-09 16:35:17', '2017-05-09 16:35:17'),
(184, 'Ice Cream Social Special', 102, '', 0, 1, '2017-05-09 16:38:08', '2017-05-09 16:38:08'),
(185, 'NEW RESIDENT PARTY', 102, 'with Jerry Saucier', 0, 1, '2017-05-09 18:26:47', '2017-05-09 18:26:47'),
(186, 'RESIDENT COUNCIL MEETING', 102, '', 0, 1, '2017-05-09 18:30:56', '2017-05-09 18:30:56'),
(187, 'DIRECTOR''S SPECIAL', 102, '', 0, 1, '2017-05-09 18:33:29', '2017-05-09 18:33:29'),
(188, 'Special Activity', 102, '', 0, 1, '2017-05-09 18:40:07', '2017-05-09 18:40:07'),
(189, 'Birthday Luncheon', 102, '', 0, 1, '2017-05-09 18:43:48', '2017-05-09 18:43:48'),
(190, 'TOWN HALL MEETING', 102, '', 0, 1, '2017-05-09 19:12:19', '2017-05-09 19:12:19'),
(191, 'TODAY''S BIRTHDAY', 102, '', 0, 1, '2017-05-09 19:33:40', '2017-05-09 19:33:40'),
(192, 'Medical Shuttle', 101, '', 0, 1, '2017-05-31 11:19:24', '2017-05-31 11:19:24'),
(193, 'Live Well (Legacy)', 101, '', 0, 1, '2017-05-31 11:21:26', '2017-05-31 11:21:26'),
(194, 'Brain Fitness (Klarus)', 101, '', 0, 1, '2017-05-31 11:22:00', '2017-05-31 11:22:00'),
(195, 'Chair Yoga Session', 101, '', 0, 1, '2017-05-31 11:26:59', '2017-05-31 11:26:59'),
(196, 'Lunch Club Orders Due', 101, '', 0, 1, '2017-05-31 11:27:24', '2017-05-31 11:27:24'),
(197, 'Shopping - TL', 101, '', 0, 1, '2017-05-31 11:29:42', '2017-05-31 11:29:42'),
(198, 'Tai Chi', 101, '', 0, 1, '2017-05-31 11:29:58', '2017-05-31 11:29:58'),
(199, 'Lunch Club', 101, '', 0, 1, '2017-05-31 11:30:53', '2017-05-31 11:30:53'),
(200, 'Color Therapy', 101, '', 0, 1, '2017-05-31 11:31:39', '2017-05-31 11:31:39'),
(201, 'Friday Happy Hour', 101, '', 0, 1, '2017-05-31 11:32:28', '2017-05-31 11:32:28'),
(202, 'Coffee Talk', 101, '', 0, 1, '2017-05-31 11:32:43', '2017-05-31 11:32:43'),
(203, 'Art 101', 101, '', 0, 1, '2017-05-31 11:32:57', '2017-05-31 11:32:57'),
(204, 'Movie Matinee', 101, '', 0, 1, '2017-05-31 11:33:14', '2017-05-31 11:33:14'),
(205, 'Dominoes', 101, '', 0, 1, '2017-05-31 11:33:49', '2017-05-31 11:34:53'),
(206, 'Worship Service', 101, '', 0, 1, '2017-05-31 11:36:22', '2017-05-31 11:36:22'),
(207, 'Silver Steppers', 101, '', 0, 1, '2017-05-31 11:36:38', '2017-05-31 11:36:38'),
(208, 'Stretching & Strengthening', 101, '', 0, 1, '2017-05-31 11:37:00', '2017-05-31 11:37:00'),
(209, 'Bridge', 101, '', 0, 1, '2017-05-31 11:37:17', '2017-05-31 11:37:17'),
(210, 'The Noteables', 101, '', 0, 1, '2017-05-31 11:37:44', '2017-05-31 11:37:44'),
(211, 'Pizza Social', 101, '', 0, 1, '2017-05-31 11:38:06', '2017-05-31 11:38:06'),
(212, 'Men''s Doughnut Club', 101, '', 0, 1, '2017-05-31 11:38:28', '2017-05-31 11:38:28'),
(213, 'Movie Committee', 101, '', 0, 1, '2017-05-31 11:38:41', '2017-05-31 11:38:41'),
(214, 'Root Beer Float Party', 101, '', 0, 1, '2017-05-31 11:38:57', '2017-05-31 11:38:57'),
(215, 'Men''s Bible Study', 101, '', 0, 1, '2017-05-31 11:39:29', '2017-05-31 11:39:29'),
(216, 'Women''s Bible Study', 101, '', 0, 1, '2017-05-31 11:39:41', '2017-05-31 11:39:41'),
(217, 'BP Checks', 101, '', 0, 1, '2017-05-31 11:39:58', '2017-05-31 11:39:58'),
(218, 'Games - CH', 101, '', 0, 1, '2017-05-31 11:40:51', '2017-05-31 11:40:51'),
(219, 'Denim & Diamond''s BBQ', 101, '', 0, 1, '2017-05-31 11:41:37', '2017-05-31 11:41:37'),
(220, 'Retired Educator''s Club', 101, '', 0, 1, '2017-05-31 11:42:13', '2017-05-31 11:42:13'),
(221, 'Chair Volley Ball', 101, '', 0, 1, '2017-05-31 11:42:30', '2017-05-31 11:42:30'),
(222, 'Hand & Arm Massage', 101, '', 0, 1, '2017-05-31 11:42:55', '2017-05-31 11:42:55'),
(223, 'Mexican Train Game', 101, '', 0, 1, '2017-05-31 11:43:26', '2017-05-31 11:43:26'),
(224, 'Birthday Cake', 101, '', 0, 1, '2017-05-31 11:43:53', '2017-05-31 11:43:53'),
(225, 'Legacy Walk Fit Club', 101, '', 0, 1, '2017-05-31 11:44:23', '2017-05-31 11:44:23'),
(226, 'Klarus Health Talk', 101, '', 0, 1, '2017-05-31 11:45:14', '2017-05-31 11:48:00'),
(227, 'Potluck', 101, '', 0, 1, '2017-05-31 11:45:32', '2017-05-31 11:45:32'),
(228, 'New Resident Orientation', 101, '', 0, 1, '2017-05-31 11:46:01', '2017-05-31 11:46:01'),
(229, 'Legacy Health Talk', 101, '', 0, 1, '2017-05-31 11:46:28', '2017-05-31 11:47:32'),
(230, 'Retired Medical Professionals Club', 101, '', 0, 1, '2017-05-31 11:48:29', '2017-05-31 11:48:29'),
(231, 'B I N G O', 101, '', 0, 1, '2017-05-31 11:48:55', '2017-05-31 11:48:55'),
(232, 'Clear Life Hearing', 101, '', 0, 1, '2017-05-31 11:49:13', '2017-05-31 11:49:13'),
(233, 'Resident Meeting', 101, '', 0, 1, '2017-05-31 11:49:38', '2017-05-31 11:49:38'),
(234, 'Supper Club', 101, '', 0, 1, '2017-05-31 11:49:54', '2017-05-31 11:49:54'),
(235, 'Happy Birthday!', 101, '', 0, 1, '2017-05-31 15:13:13', '2017-05-31 15:13:13'),
(236, 'Special Event', 101, '', 0, 1, '2017-05-31 15:15:54', '2017-05-31 15:15:54'),
(237, 'Care Serve', 101, '', 0, 1, '2017-05-31 15:24:14', '2017-05-31 15:24:14'),
(238, 'Legacy', 101, '', 0, 1, '2017-05-31 15:26:55', '2017-05-31 15:26:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_event`
--
ALTER TABLE `ci_event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_event`
--
ALTER TABLE `ci_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
