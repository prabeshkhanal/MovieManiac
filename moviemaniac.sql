-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 03:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviemaniac`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add movie', 7, 'add_movie'),
(26, 'Can change movie', 7, 'change_movie'),
(27, 'Can delete movie', 7, 'delete_movie'),
(28, 'Can view movie', 7, 'view_movie'),
(29, 'Can add register', 8, 'add_register'),
(30, 'Can change register', 8, 'change_register'),
(31, 'Can delete register', 8, 'delete_register'),
(32, 'Can view register', 8, 'view_register'),
(33, 'Can add contactus', 9, 'add_contactus'),
(34, 'Can change contactus', 9, 'change_contactus'),
(35, 'Can delete contactus', 9, 'delete_contactus'),
(36, 'Can view contactus', 9, 'view_contactus'),
(37, 'Can add trending', 10, 'add_trending'),
(38, 'Can change trending', 10, 'change_trending'),
(39, 'Can delete trending', 10, 'delete_trending'),
(40, 'Can view trending', 10, 'view_trending'),
(41, 'Can add recent', 11, 'add_recent'),
(42, 'Can change recent', 11, 'change_recent'),
(43, 'Can delete recent', 11, 'delete_recent'),
(44, 'Can view recent', 11, 'view_recent'),
(45, 'Can add usercomment', 12, 'add_usercomment'),
(46, 'Can change usercomment', 12, 'change_usercomment'),
(47, 'Can delete usercomment', 12, 'delete_usercomment'),
(48, 'Can view usercomment', 12, 'view_usercomment'),
(49, 'Can add usercomment', 13, 'add_usercomment'),
(50, 'Can change usercomment', 13, 'change_usercomment'),
(51, 'Can delete usercomment', 13, 'delete_usercomment'),
(52, 'Can view usercomment', 13, 'view_usercomment'),
(53, 'Can add commentbyuser', 14, 'add_commentbyuser'),
(54, 'Can change commentbyuser', 14, 'change_commentbyuser'),
(55, 'Can delete commentbyuser', 14, 'delete_commentbyuser'),
(56, 'Can view commentbyuser', 14, 'view_commentbyuser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$x7pmHTWgBIxR$G4PrOWgxGIQrZKvqnfaAiumh3IwhaLBEjBlF6qC4uWA=', '2020-02-11 07:40:39.446709', 1, 'admin', '', '', 'prabesh226@gmail.com', 1, 1, '2020-02-10 13:21:58.255269'),
(2, 'pbkdf2_sha256$150000$2mGpitEe0EIg$gH7UCKgxBT4UauXi3HW6VJxAbU81hs0xd/HwVWecfA0=', '2020-02-10 16:33:45.218231', 0, 'prabesh', 'prabesh', 'khanal', 'prabesh226@gmail.com', 0, 1, '2020-02-10 16:27:08.822372');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commentbyuser_commentbyuser`
--

CREATE TABLE `commentbyuser_commentbyuser` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentbyuser_commentbyuser`
--

INSERT INTO `commentbyuser_commentbyuser` (`id`, `username`, `rating`, `comment`) VALUES
(1, 'prabesh', 5, 'cmt testing');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_contactus`
--

CREATE TABLE `contactus_contactus` (
  `id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus_contactus`
--

INSERT INTO `contactus_contactus` (`id`, `user_fullname`, `user_email`, `user_message`) VALUES
(1, 'a', 'prabesh226@gmail.com', 'a'),
(6, 'prabesh', 'prabesh@gmail.com', 'Hello'),
(7, 'prabesh`', 'prabesh@gmail.com', 'Hello again'),
(8, 'prabesh', 'prabesh@gmail.com', 'Hello squared'),
(9, 'a', 'prabesh@gmail.com', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-10 13:32:25.377747', '1', 'movie object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-02-10 13:33:55.277588', '2', 'movie object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-02-10 13:35:17.795215', '3', 'movie object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-02-13 05:26:50.770853', '3', 'movie object (3)', 3, '', 7, 1),
(5, '2020-02-13 05:26:50.829041', '2', 'movie object (2)', 3, '', 7, 1),
(6, '2020-02-13 05:26:50.880042', '1', 'movie object (1)', 3, '', 7, 1),
(7, '2020-02-13 05:29:14.467851', '4', 'movie object (4)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-02-13 09:53:36.141387', '5', 'movie object (5)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-02-13 09:56:38.565628', '6', 'movie object (6)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-02-13 09:58:44.034908', '7', 'movie object (7)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-02-13 10:00:11.929111', '8', 'movie object (8)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-02-15 02:33:17.628251', '9', 'movie object (9)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-02-15 02:35:07.305824', '10', 'movie object (10)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-02-15 02:36:36.798533', '11', 'movie object (11)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-02-15 02:39:58.017071', '12', 'movie object (12)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-02-15 02:40:53.241355', '13', 'movie object (13)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2020-02-15 02:41:44.261588', '14', 'movie object (14)', 1, '[{\"added\": {}}]', 7, 1),
(18, '2020-02-15 02:42:37.986260', '15', 'movie object (15)', 1, '[{\"added\": {}}]', 7, 1),
(19, '2020-02-15 02:44:41.568226', '16', 'movie object (16)', 1, '[{\"added\": {}}]', 7, 1),
(20, '2020-02-15 02:47:32.748543', '17', 'movie object (17)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2020-02-15 02:48:14.956759', '18', 'movie object (18)', 1, '[{\"added\": {}}]', 7, 1),
(22, '2020-02-15 02:48:57.058472', '19', 'movie object (19)', 1, '[{\"added\": {}}]', 7, 1),
(23, '2020-02-15 02:49:41.501553', '20', 'movie object (20)', 1, '[{\"added\": {}}]', 7, 1),
(24, '2020-02-15 02:50:23.385063', '21', 'movie object (21)', 1, '[{\"added\": {}}]', 7, 1),
(25, '2020-02-15 02:51:30.885377', '22', 'movie object (22)', 1, '[{\"added\": {}}]', 7, 1),
(26, '2020-02-15 03:18:19.106833', '1', 'Trending object (1)', 1, '[{\"added\": {}}]', 10, 1),
(27, '2020-02-15 03:19:40.260469', '2', 'Trending object (2)', 1, '[{\"added\": {}}]', 10, 1),
(28, '2020-02-15 03:21:04.954408', '3', 'Trending object (3)', 1, '[{\"added\": {}}]', 10, 1),
(29, '2020-02-15 04:05:03.158588', '4', 'Trending object (4)', 1, '[{\"added\": {}}]', 10, 1),
(30, '2020-02-15 04:05:43.940967', '4', 'Trending object (4)', 3, '', 10, 1),
(31, '2020-02-16 15:33:34.547741', '1', 'Recent object (1)', 1, '[{\"added\": {}}]', 11, 1),
(32, '2020-02-16 15:34:19.197774', '2', 'Recent object (2)', 1, '[{\"added\": {}}]', 11, 1),
(33, '2020-02-16 15:35:28.534788', '3', 'Recent object (3)', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(14, 'commentbyuser', 'commentbyuser'),
(9, 'contactus', 'contactus'),
(5, 'contenttypes', 'contenttype'),
(7, 'movies', 'movie'),
(12, 'movies', 'usercomment'),
(11, 'recent', 'recent'),
(6, 'sessions', 'session'),
(10, 'trending', 'trending'),
(13, 'usercomment', 'usercomment'),
(8, 'userlogin', 'register');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-10 13:18:22.209510'),
(2, 'auth', '0001_initial', '2020-02-10 13:18:24.014590'),
(3, 'admin', '0001_initial', '2020-02-10 13:18:32.212512'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-10 13:18:34.579019'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-10 13:18:34.641759'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-10 13:18:35.884360'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-10 13:18:37.283249'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-10 13:18:37.359623'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-10 13:18:37.387875'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-10 13:18:37.995380'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-10 13:18:38.049597'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-10 13:18:38.078878'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-10 13:18:38.258971'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-10 13:18:38.367729'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-10 13:18:38.467464'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-10 13:18:38.497381'),
(17, 'movies', '0001_initial', '2020-02-10 13:18:38.736741'),
(18, 'sessions', '0001_initial', '2020-02-10 13:18:39.052176'),
(19, 'movies', '0002_auto_20200210_1916', '2020-02-10 13:31:05.505715'),
(20, 'userlogin', '0001_initial', '2020-02-10 15:23:03.981255'),
(21, 'userlogin', '0002_auto_20200210_2149', '2020-02-10 16:04:56.600149'),
(22, 'userlogin', '0003_auto_20200210_2207', '2020-02-10 16:23:13.337041'),
(23, 'movies', '0003_auto_20200211_1331', '2020-02-11 07:46:39.896455'),
(24, 'contactus', '0001_initial', '2020-02-12 12:34:41.208034'),
(25, 'movies', '0004_movie_movieid', '2020-02-12 12:42:10.377786'),
(26, 'movies', '0005_remove_movie_movieid', '2020-02-12 12:42:10.496727'),
(27, 'contactus', '0002_auto_20200212_1828', '2020-02-12 12:43:52.517824'),
(28, 'trending', '0001_initial', '2020-02-15 03:11:04.934662'),
(29, 'recent', '0001_initial', '2020-02-15 04:00:50.244278'),
(30, 'movies', '0006_usercomment', '2020-02-15 04:24:08.434915'),
(31, 'movies', '0007_delete_usercomment', '2020-02-15 07:47:10.907569'),
(32, 'usercomment', '0001_initial', '2020-02-15 07:47:10.982160'),
(33, 'usercomment', '0002_auto_20200215_1327', '2020-02-15 07:47:11.050842'),
(34, 'commentbyuser', '0001_initial', '2020-02-15 08:03:55.151752'),
(35, 'movies', '0008_auto_20200216_2034', '2020-02-16 14:49:51.723702'),
(36, 'recent', '0002_auto_20200216_2034', '2020-02-16 14:49:52.736988'),
(37, 'trending', '0002_auto_20200216_2034', '2020-02-16 14:49:53.928660');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vmbvulksbclw6d680kwrxkjawk3wbfbq', 'MWVlNDQ1NzZhZDUwZjY2MmQ2NTI2MmQ5NDEzZjRhMjEyMjExOTI2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OTNlZDZkZGJjMzI4MmQ0YzQ0OWYzYzJjNWNhM2U5ZmZjNjg3ODgzIn0=', '2020-02-25 07:40:39.473576'),
('xq6xlony40mahwv65t765b58ce21jwos', 'MzAzNjc3ODllYzkzMWE5M2MyNTlkMzdlMTdkYjQ0YjM5MGJjY2IzZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMGVhY2Q5MjBjMzZkMWZhMjA3YmY0NjA1ODM2ZDUxZjA2MDk1NzQxIn0=', '2020-02-24 16:33:45.307417');

-- --------------------------------------------------------

--
-- Table structure for table `movies_movie`
--

CREATE TABLE `movies_movie` (
  `id` int(11) NOT NULL,
  `movie_photo` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `movie_date` varchar(100) NOT NULL,
  `movie_description` varchar(1000) NOT NULL,
  `movie_genre` varchar(50) NOT NULL,
  `movie_review` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_movie`
--

INSERT INTO `movies_movie` (`id`, `movie_photo`, `movie_name`, `movie_date`, `movie_description`, `movie_genre`, `movie_review`) VALUES
(4, 'Avatar.jpg', 'Avatar', '2009', 'When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora. There he learns of greedy corporate figurehead Parker Selfridge\'s intentions of driving off the native humanoid \"Na\'vi\" in order to mine for the precious material scattered throughout their rich woodland. In exchange for the spinal surgery that will fix his legs, Jake gathers knowledge, of the Indigenous Race and their Culture, for the cooperating military unit spearheaded by gung-ho Colonel Quaritch, while simultaneously attempting to infiltrate the Na\'vi people with the use of an \"avatar\" identity. While Jake begins to bond with the native tribe and quickly falls in love with the beautiful alien Neytiri, the restless Colonel moves forward with his ruthless extermination tactics, forcing the soldier to take a stand - and fight back in an epic battle for the fate of Pandora.', 'Action | Adventure | Fantasy | Sci-Fi', '9/10'),
(5, 'A_Moment_to_Remember.jpg', 'A Moment to Remember', '2004', 'A Moment to Remember (Korean: 내 머리 속의 지우개; RR: Nae Meorisogui Jiugae; lit. \"Eraser in My Head\") is a 2004 South Korean film based on the 2001 Japanese television drama Pure Soul. It stars Son Ye-jin and Jung Woo-sung and follows the theme of discovery in a relationship and the burdens of loss caused by Alzheimer\'s disease. ', 'Drama | Romance', '8/10'),
(6, 'Frozen2.jpg', 'Frozen II', '2019', 'Having harnessed her ever-growing power after lifting the dreadful curse of the eternal winter in Frozen (2013), the beautiful conjurer of snow and ice, Queen Elsa, now rules the peaceful kingdom of Arendelle, enjoying a happy life with her sister, Princess Anna. However, a melodious voice that only Elsa can hear keeps her awake, inviting her to the mystical enchanted forest that the sisters\' father told them a long time ago. Now, unable to block the thrilling call of the secret siren, Elsa--along with Anna, Kristoff, Olaf, and Sven--summons up the courage to follow the voice into the unknown, intent on finding answers in the perpetually misty realm in the woods. More and more, an inexplicable imbalance is hurting not only her kingdom but also the neighbouring tribe of Northuldra. Can Queen Elsa put her legendary magical skills to good use to restore peace and stability?', 'Animation | Adventure | Comedy | Family | Fantasy ', '9/10'),
(7, 'Avengers_Endgame.jpg', 'Avengers Endgame', '2019', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos\'s actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...', 'Action | Adventure | Drama | Sci-Fi', '10/10'),
(8, 'Wolf_Children.jpg', 'Wolf Children', '2012', 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.', 'Animation | Drama | Family | Fantasy', '9/10'),
(10, '28_Up.jpg', '28 Up', '1984', 'The Up series is a series of documentary films produced by Granada Television for ITV that follows the lives of fourteen British children since 1964, when they were seven years old. The documentary has had nine episodes—one episode every seven years—thus spanning 56 years. All were broadcast on ITV, apart from the sixth episode that was broadcast on BBC One. Individual films and the series as a whole have received numerous accolades;[clarification needed] the fourth episode, 28 Up, was chosen for Roger Ebert\'s list of the ten greatest films of all time.', 'Documentary | Biography', '7/10'),
(11, 'Avengers_Infinity_War.jpg', 'Avengers: Infinity War', '2018', 'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment, the fate of Earth and existence has never been more uncertain.', 'Action | Adventure | Sci-Fi', '10/10'),
(12, 'Batman__Bill.jpg', 'Batman & Bill', '2017', 'Documentary about the uncredited co-creator of Batman, Bill Finger.', 'Documentary | Animation | Mystery', '8/10'),
(13, 'FordvFerrari.jpg', 'Ford v Ferrari', '2019', 'As Enzo Ferrari\'s fast Rosso-Corsa racing cars dominate the mid-1960s motorsport world, the American car designer, Carroll Shelby, is forced to retire after winning the demanding 1959 \'24 Hours of Le Mans\' endurance race. But, before long, an unexpected proposition by the Vice President of Henry Ford\'s motor company, Lee Iacocca, will offer an opportunity to beat the Italians at their own game. Now, under those pressing circumstances, the British sports car driver and racing engineer, Ken Miles, reluctantly agrees to lend a hand and improve the firm\'s image, as Ford\'s race team has less than ninety days to rewrite history. As a result, the non-conformist duo comes up with the mighty Ford GT40 Mk I high-performance racing car. Can Shelby and Miles break Ferrari\'s streak?', 'Action | Biography | Drama | Sport', '7/10'),
(14, 'It.jpg', 'It', '2017', 'In the Town of Derry, the local kids are disappearing one by one. In a place known as \'The Barrens\', a group of seven kids are united by their horrifying and strange encounters with an evil clown and their determination to kill It.', 'Horror', '9/10'),
(15, 'Joker.jpg', 'Joker', '2019', 'Joker centers around an origin of the iconic arch nemesis and is an original, standalone story not seen before on the big screen. Todd Phillips\' exploration of Arthur Fleck (Joaquin Phoenix), a man disregarded by society is not only a gritty character study, but also a broader cautionary tale.', 'Crime | Drama | Thriller', '10/10'),
(16, 'Klaus.jpg', 'Klaus', '2019', 'When Jesper (Jason Schwartzman) distinguishes himself as the postal academy\'s worst student, he is stationed on a frozen island above the Arctic Circle, where the feuding locals hardly exchange words let alone letters. Jesper is about to give up when he finds an ally in local teacher Alva (Rashida Jones), and discovers Klaus (Oscar® winner J.K. Simmons), a mysterious carpenter who lives alone in a cabin full of handmade toys. These unlikely friendships return laughter to Smeerensburg, forging a new legacy of generous neighbors, magical lore and stockings hung by the chimney with care. An animated Christmas comedy directed by Despicable Me co-creator Sergio Pablos, KLAUS co-stars Rashida Jones, Jason Schwartzman and JK Simmons.', 'Animation | Adventure | Comedy | Family', '6/10'),
(17, 'Maleficent.jpg', 'Maleficent', '2014', 'A beautiful, pure-hearted young woman, Maleficent has an idyllic life growing up in a peaceable forest kingdom, until one day when an invading army threatens the harmony of the land. Maleficent rises to be the land\'s fiercest protector, but she ultimately suffers a ruthless betrayal - an act that begins to turn her pure heart to stone. Bent on revenge, Maleficent faces a battle with the invading king\'s successor and, as a result, places a curse upon his newborn infant Aurora. As the child grows, Maleficent realizes that Aurora holds the key to peace in the kingdom - and perhaps to Maleficent\'s true happiness as well.', 'Action | Adventure | Family | Fantasy | Romance', '5/10'),
(18, 'Parasite.jpg', 'Parasite', '2019', 'Jobless, penniless, and, above all, hopeless, the unmotivated patriarch, Ki-taek, and his equally unambitious family--his supportive wife, Chung-sook; his cynical twentysomething daughter, Ki-jung, and his college-age son, Ki-woo--occupy themselves by working for peanuts in their squalid basement-level apartment. Then, by sheer luck, a lucrative business proposition will pave the way for an ingeniously insidious scheme, as Ki-woo summons up the courage to pose as an English tutor for the teenage daughter of the affluent Park family. Now, the stage seems set for an unceasing winner-take-all class war. How does one get rid of a parasite?', 'Comedy | Crime | Drama | Thriller', '10/10'),
(19, 'The_Irishman.jpg', 'The Irishman', '2019', 'Frank \"The Irishman\" Sheeran is a man with a lot on his mind. The former labor union high official and hitman, learned to kill serving in Italy during the Second World War. He now looks back on his life and the hits that defined his mob career, maintaining connections with the Bufalino crime family. In particular, the part he claims to have played in the disappearance of his life-long friend, Jimmy Hoffa, the former president of the International Brotherhood of Teamsters, who mysteriously vanished in late July 1975 at the age of 62.', 'Biography | Crime | Drama', '9/10'),
(20, 'Togo.jpg', 'Togo', '2019', 'The story of the sled dog, Togo, who led the 1925 serum run, but was considered by most to be too small and weak to lead such an intense race.', 'Adventure | Biography | Drama | Family | History', '6/10'),
(21, 'Upgrade.jpg', 'Upgrade', '2018', 'Grey\'s a stay-at-home mechanic, who\'s wife is Asha. One day, Grey asks Asha to help him return a car to his client. Whilst Grey and Asha\'s self-driving car malfunctions, it crashes. Grey watches helplessly as Asha bleeds to death next to him. Grey returns home - a widowed quadriplegic, under the care of his mother. His wife\'\'s death and the inability of police to identify their attackers cause him to sink into a depression. After a suicide attempt, he\'s offered to have high tech chip implanted - enabling him to walk. Though initially hesitant, he\'s persuaded to have the surgery.', 'Action | Horror | Sci-Fi | Thriller', '9/10');

-- --------------------------------------------------------

--
-- Table structure for table `trending_trending`
--

CREATE TABLE `trending_trending` (
  `id` int(11) NOT NULL,
  `movie_photo` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `movie_date` varchar(100) NOT NULL,
  `movie_description` varchar(1000) NOT NULL,
  `movie_genre` varchar(50) NOT NULL,
  `movie_review` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trending_trending`
--

INSERT INTO `trending_trending` (`id`, `movie_photo`, `movie_name`, `movie_date`, `movie_description`, `movie_genre`, `movie_review`) VALUES
(1, 'Parasite_0j2LQZh.jpg', 'Parasite', '2019', 'Jobless, penniless, and, above all, hopeless, the unmotivated patriarch, Ki-taek, and his equally unambitious family--his supportive wife, Chung-sook; his cynical twentysomething daughter, Ki-jung, and his college-age son, Ki-woo--occupy themselves by working for peanuts in their squalid basement-level apartment. Then, by sheer luck, a lucrative business proposition will pave the way for an ingeniously insidious scheme, as Ki-woo summons up the courage to pose as an English tutor for the teenage daughter of the affluent Park family. Now, the stage seems set for an unceasing winner-take-all class war. How does one get rid of a parasite?', 'Comedy | Crime | Drama | Thriller', '10/10'),
(2, 'Joker_krLzhq5.jpg', 'Joker', '2019', 'Joker centers around an origin of the iconic arch nemesis and is an original, standalone story not seen before on the big screen. Todd Phillips\' exploration of Arthur Fleck (Joaquin Phoenix), a man disregarded by society is not only a gritty character study, but also a broader cautionary tale.', 'Crime | Drama | Thriller', '10/10'),
(3, 'The_Irishman_wVWMgKP.jpg', 'The Irishman', '2019', 'Frank \"The Irishman\" Sheeran is a man with a lot on his mind. The former labor union high official and hitman, learned to kill serving in Italy during the Second World War. He now looks back on his life and the hits that defined his mob career, maintaining connections with the Bufalino crime family. In particular, the part he claims to have played in the disappearance of his life-long friend, Jimmy Hoffa, the former president of the International Brotherhood of Teamsters, who mysteriously vanished in late July 1975 at the age of 62.', 'Biography | Crime | Drama', '9/10');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin_register`
--

CREATE TABLE `userlogin_register` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `commentbyuser_commentbyuser`
--
ALTER TABLE `commentbyuser_commentbyuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus_contactus`
--
ALTER TABLE `contactus_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `movies_movie`
--
ALTER TABLE `movies_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_trending`
--
ALTER TABLE `trending_trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin_register`
--
ALTER TABLE `userlogin_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commentbyuser_commentbyuser`
--
ALTER TABLE `commentbyuser_commentbyuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus_contactus`
--
ALTER TABLE `contactus_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `movies_movie`
--
ALTER TABLE `movies_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `trending_trending`
--
ALTER TABLE `trending_trending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogin_register`
--
ALTER TABLE `userlogin_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
