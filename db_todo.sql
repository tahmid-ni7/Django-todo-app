-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2020 at 06:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add task', 7, 'add_task'),
(26, 'Can change task', 7, 'change_task'),
(27, 'Can delete task', 7, 'delete_task'),
(28, 'Can view task', 7, 'view_task');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$7uXAOSKIOOcM$15c8ey0lu+oHzVY3UvExO6nBO7u3qO7+X8fJGr8U5RU=', '2020-04-04 05:59:48.187148', 1, 'tahmid', 'Tahmid', 'Nishat', 'tahmid.ni7@gmail.com', 1, 1, '2020-04-02 14:30:52.000000'),
(6, 'pbkdf2_sha256$180000$KwRrIZqXXeFo$6ilXU7X6on+daMftdV3ASADBa2Umlok8JFl3DCKBdCc=', '2020-04-04 06:25:34.037821', 0, 'tahmidni7', 'Tahmid Nishat', '', 'tahmid.umn@gmail.com', 0, 1, '2020-04-04 06:25:22.921178'),
(5, 'pbkdf2_sha256$180000$3j2j1XbnV2PW$h6F6pAQtkcQU8WLz3m9ByrnixkEAuXMZ+XMVz/MNo7s=', '2020-04-04 06:02:34.785317', 0, 'tahur', 'Izaz Mahmud', '', 'izaz@gmail.com', 0, 1, '2020-04-04 06:02:20.802574');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-04-02 14:34:50.305053', '1', 'tahmid', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(2, '2020-04-03 10:10:48.321804', '1', 'Complete my Django todo project within today.', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-04-03 10:21:40.155586', '1', 'Complete my Django todo project within today.', 2, '[{\"changed\": {\"fields\": [\"Important\"]}}]', 7, 1),
(4, '2020-04-04 06:00:18.818441', '3', 'admin', 3, '', 4, 1),
(5, '2020-04-04 06:00:18.819859', '4', 'tahmid.ni7@gmail.com', 3, '', 4, 1),
(6, '2020-04-04 06:00:18.820862', '2', 'tahur', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'todo', 'task');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-02 14:30:03.063232'),
(2, 'auth', '0001_initial', '2020-04-02 14:30:03.641208'),
(3, 'admin', '0001_initial', '2020-04-02 14:30:05.051847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-02 14:30:05.288159'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-02 14:30:05.319409'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-02 14:30:05.491275'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-02 14:30:05.538149'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-02 14:30:05.616274'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-02 14:30:05.631897'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-02 14:30:05.725643'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-02 14:30:05.741268'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-02 14:30:05.772520'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-02 14:30:05.850640'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-02 14:30:05.897514'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-02 14:30:05.960013'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-02 14:30:05.975636'),
(17, 'sessions', '0001_initial', '2020-04-02 14:30:06.069385'),
(18, 'todo', '0001_initial', '2020-04-03 10:08:44.034757');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e8df60t9y2gbbbxvu2xywsfktfgc24d1', 'ZWM3MzIyN2VmZjI4YTY5ZGYwNzNlYmJiNjM3MGIyNTYxNDYxMzU2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMWRhMDNjMjhhNGIwYjMxMjJmODYwNzIwODgxYjc2ZjliNzdhYTljIn0=', '2020-04-16 14:32:28.957532'),
('ygojsqd7r7ojyn2i81qg9272wgykyipi', 'ZWM3MzIyN2VmZjI4YTY5ZGYwNzNlYmJiNjM3MGIyNTYxNDYxMzU2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMWRhMDNjMjhhNGIwYjMxMjJmODYwNzIwODgxYjc2ZjliNzdhYTljIn0=', '2020-04-16 17:39:55.117059'),
('193uik5agcukribzze9yst2famx9s90x', 'ZWM3MzIyN2VmZjI4YTY5ZGYwNzNlYmJiNjM3MGIyNTYxNDYxMzU2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMWRhMDNjMjhhNGIwYjMxMjJmODYwNzIwODgxYjc2ZjliNzdhYTljIn0=', '2020-04-17 06:32:58.812400'),
('4bjjpmlravtnfj74wv4q72vivxttcc7b', 'ZDc3NTRiMWExZjU1MTYxNWE4YjY4NDc2ZDFiYzA5MTIxNDdlMzRkMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGQwNjY3MzUzMDRjZjQwYWNiNWQyY2I3NjQwNjhiZTc4MjUyYjIwIn0=', '2020-04-17 15:42:14.864449'),
('26g9zemsqdazwk80l2y7hm4kff964tb5', 'ZDc3NTRiMWExZjU1MTYxNWE4YjY4NDc2ZDFiYzA5MTIxNDdlMzRkMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGQwNjY3MzUzMDRjZjQwYWNiNWQyY2I3NjQwNjhiZTc4MjUyYjIwIn0=', '2020-04-18 05:30:17.661079');

-- --------------------------------------------------------

--
-- Table structure for table `todo_task`
--

DROP TABLE IF EXISTS `todo_task`;
CREATE TABLE IF NOT EXISTS `todo_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `memo` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `completed_date` datetime(6) DEFAULT NULL,
  `important` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo_task_user_id_69f329a5` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_task`
--

INSERT INTO `todo_task` (`id`, `title`, `memo`, `created_date`, `completed_date`, `important`, `user_id`) VALUES
(1, 'Complete my Django todo project within today.', '1. Do first', '2020-04-03 10:10:48.301817', '2020-04-03 10:10:27.000000', 1, 1),
(2, 'First Task', 'None', '2020-04-03 11:27:31.997982', '2020-04-04 05:13:30.186595', 1, 1),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum optio eveniet nemo?', '', '2020-04-03 12:33:25.871324', '2020-04-04 05:12:23.011326', 1, 1),
(16, 'After creating a task you can set it as an important task based on your preference. You can checked a task after finishing that. You can also delete the unnecessary tasks.', '', '2020-04-04 06:07:27.105639', '2020-04-04 06:07:55.188826', 0, 5),
(11, 'html form to pass variable to php to bash?', '', '2020-04-04 05:20:01.005014', '2020-04-04 05:20:22.025168', 0, 1),
(9, 'Get up early in the morning & start coding.', '- Finish this project\r\n- Deploy to python anywhere', '2020-04-03 20:11:05.321195', '2020-04-04 05:13:46.139055', 1, 1),
(15, 'html form to pass variable to php to bash?', '1. Do as much quickly.\r\n2. Like a good finisher', '2020-04-04 06:06:52.652003', NULL, 1, 5),
(17, 'This is a simple to-do application, where you can track your daliy tasks.', '- Laravel\r\n- Django\r\n- Python\r\n- PHP\r\n- Bootstrap', '2020-04-04 06:19:42.258785', NULL, 0, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
