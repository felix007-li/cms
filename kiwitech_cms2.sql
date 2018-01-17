-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-01-03 11:31:47
-- 服务器版本： 10.1.24-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiwitech_cms2`
--

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'JSON'),
(4, 'XML PHP'),
(5, 'Jquery'),
(6, 'Angular');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(5, 6, 'Jimmy', 'jimmy@gmail.com', 'Wonderful article!', 'unapproved', '2017-10-27');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(2, 4, 'Javascript is the future language!', 'Li', 'Li', '2017-10-27', 'javascript.jpeg', 'balalala', 'javacript', 0, 'published', 9),
(6, 1, 'Bootstrap to Responsive Design', 'Li', 'Chen', '2017-10-27', 'bootstrap.jpeg', 'Hello World!', 'bootstrap', 0, 'published', 11),
(7, 4, 'PHP is the best language in the world', '', 'Li', '2017-10-27', 'php_image1.jpeg', 'Do you think so, haha!', 'php', 0, 'published', 6);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(30) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(4, 'Chen', '$2y$10$JMutnZHfgsruRHOrCjHyfuXdKBlpPEcYemE.fFzrSNXiV/XjFaFGK', 'Chen', 'HaiYing', 'arley0012@hotmail.com', '', 'admin', ''),
(5, 'Li', '$2y$10$VJy7qIBS9yt8tOYapp49x.aVDZxnkC3bnlVAymbpIKEyn6Ly/waKK', 'Li', 'Li', 'arley0012@hotmail.com', '', 'admin', ''),
(6, 'Kevin', '$2y$10$eRYMAoIH0u1uAVWEtTAs2.prnKLTpZ8Wx58dYILoKfpJpEcymOfBi', 'Kevin', 'Li', 'arley0012@hotmail.com', '', 'subscriber', ''),
(7, 'LiLi', '$2y$10$C4D5vyDAaD5oEiFKv90NiegyrJUwNysrROpgNJiCxgwAlj/XBRpx2', 'Li', 'Li', 'arley0012@hotmail.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
