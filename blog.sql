-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 12:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(11) NOT NULL,
  `ads` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `ads`) VALUES
(2, 'PHP JOBS - NOIDA'),
(3, 'PHP JOBS - GHAZIABAD');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `value`) VALUES
(1, ' 2021 - 2022');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `width` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `width`) VALUES
(6, '1.png', '25%');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `aname` varchar(50) NOT NULL,
  `admin_theme` varchar(50) NOT NULL,
  `user_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `aemail`, `apass`, `aname`, `admin_theme`, `user_img`) VALUES
(1, 'himanshutyagi623@gmail.com', '121212', 'Himanshu', 'admin-theme.css', '10906485.jpg'),
(2, 'ruchityagi623@gmail.com', '12345', 'Ruchi Tyagi', 'admin-theme.css', 'IMG_1662.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `nav_post`
--

CREATE TABLE `nav_post` (
  `id` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nav_post`
--

INSERT INTO `nav_post` (`id`, `url`, `icon`, `name`) VALUES
(1, 'admin.php?pid=dashboard', 'home.png', 'Dashboard'),
(2, 'admin.php?pid=add_post', 'add.png', 'Add Post'),
(3, 'admin.php?pid=active_post', 'sign-post.png', 'Active Post'),
(4, 'admin.php?pid=view_post', 'eye.png', 'View Post'),
(5, 'update-post.php', 'captcha.png', 'Update Post'),
(6, 'admin.php?pid=delete_post', 'remove.png', 'Delete Post'),
(7, 'admin.php?pid=user_setting', 'settings.png', 'User Setting'),
(8, 'admin.php?pid=theme', 'theme.png', 'Theme'),
(9, 'site-mgmt.php', 'admin.png', 'Site Management'),
(10, 'advertise.php', 'sign-post.png', 'Advertisement');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_msg` varchar(2000) NOT NULL,
  `post_category` varchar(50) NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_msg`, `post_category`, `post_author`, `post_status`) VALUES
(1, 'Facebook', 'Welcome to facebook', 'HTML', 'himanshutyagi623@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_menu`
--

CREATE TABLE `site_menu` (
  `id` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_menu`
--

INSERT INTO `site_menu` (`id`, `url`, `name`) VALUES
(1, '?pid=home', 'HOME'),
(2, '?pid=html', 'HTML'),
(3, '?pid=css', 'CSS'),
(4, '?pid=javascript', 'JAVASCRIPT'),
(5, '?pid=php', 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_email`
--

CREATE TABLE `topbar_email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topbar_email`
--

INSERT INTO `topbar_email` (`id`, `name`, `url`, `value`) VALUES
(1, 'Email', 'mailto:himanshutyagi623@gmail.com', 'himanshutyagi623@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_link3`
--

CREATE TABLE `topbar_link3` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topbar_link3`
--

INSERT INTO `topbar_link3` (`id`, `name`, `url`, `value`) VALUES
(1, 'Github', 'https://github.com/himanshutyagi143', 'himanshutyagi143');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_link4`
--

CREATE TABLE `topbar_link4` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topbar_link4`
--

INSERT INTO `topbar_link4` (`id`, `name`, `url`, `value`) VALUES
(1, 'Blogger', 'https://himanshustack.blogspot.com/', 'Himanshu stack');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_phone`
--

CREATE TABLE `topbar_phone` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topbar_phone`
--

INSERT INTO `topbar_phone` (`id`, `name`, `url`, `value`) VALUES
(1, 'Phone', 'tel:9718108561', '9718108561');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav_post`
--
ALTER TABLE `nav_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `site_menu`
--
ALTER TABLE `site_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_email`
--
ALTER TABLE `topbar_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_link3`
--
ALTER TABLE `topbar_link3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_link4`
--
ALTER TABLE `topbar_link4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_phone`
--
ALTER TABLE `topbar_phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nav_post`
--
ALTER TABLE `nav_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_menu`
--
ALTER TABLE `site_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topbar_email`
--
ALTER TABLE `topbar_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topbar_link3`
--
ALTER TABLE `topbar_link3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topbar_link4`
--
ALTER TABLE `topbar_link4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topbar_phone`
--
ALTER TABLE `topbar_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
