-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2013 at 06:19 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sk`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE IF NOT EXISTS `ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publisher_id` int(10) unsigned NOT NULL DEFAULT '3',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `title` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `title` (`title`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `creation_date`, `publisher_id`, `deleted`, `title`) VALUES
(1, '2013-04-21 17:06:28', 1, 0, '2013-04-21 20:06:28'),
(2, '2013-04-21 17:06:38', 2, 0, '2013-04-21 20:06:38'),
(3, '2013-04-21 17:06:37', 3, 0, '2013-04-21 20:06:37'),
(4, '2013-04-21 17:06:48', 1, 0, '2013-04-21 20:06:48'),
(5, '2013-05-03 15:09:04', 3, 0, '2013-05-03 18:09:04'),
(6, '2013-05-03 15:09:03', 1, 0, '2013-05-03 18:09:03'),
(7, '2013-05-03 18:31:34', 2, 0, '2013-05-03 21:31:34'),
(8, '2013-05-04 09:52:40', 3, 0, '2013-05-04 12:52:40'),
(9, '2012-11-06 22:00:00', 3, 0, '2012-11-07 00:00:00'),
(10, '2013-05-22 11:06:53', 3, 1, '2018-08-18 00:00:00'),
(11, '2013-05-17 16:04:37', 2, 0, '2013-05-17 19:04:37'),
(12, '2013-05-19 09:53:51', 3, 0, '2013-05-19 12:53:51'),
(14, '2013-05-22 08:02:26', 1, 0, '2013-05-19 12:55:47'),
(15, '2013-05-22 08:19:30', 3, 0, '2013-05-19 13:00:54'),
(16, '2013-05-21 16:37:30', 2, 0, 'Appartment for sale'),
(17, '2013-05-22 11:00:34', 1, 0, 'new ad'),
(18, '2013-05-22 11:08:03', 3, 1, 'new adv');

-- --------------------------------------------------------

--
-- Table structure for table `ad_field_value`
--

CREATE TABLE IF NOT EXISTS `ad_field_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ad_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(1024) NOT NULL DEFAULT '''''',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`,`ad_id`,`value`(255)),
  KEY `field_ad` (`field_id`,`ad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ad_field_value`
--

INSERT INTO `ad_field_value` (`id`, `field_id`, `ad_id`, `value`) VALUES
(1, 4, 12, 'some value'),
(4, 4, 14, 'some data'),
(5, 8, 14, 'soma data2'),
(6, 4, 15, 'некоторые данные1'),
(7, 4, 15, 'некоторые данные2'),
(8, 1, 16, 'address12'),
(9, 1, 14, 'ssss'),
(10, 1, 14, 'some data'),
(11, 1, 15, 'some data'),
(29, 3, 17, 'xcxcx\r\nedited'),
(30, 1, 17, 'new'),
(31, 5, 18, 'some'),
(32, 3, 18, '902830948203'),
(33, 8, 17, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `artist`, `title`) VALUES
(1, 'The  Military  Wives', 'In  My  Dreams'),
(2, 'Adele', '21'),
(3, 'Bruce  Springsteen', 'Wrecking Ball (Deluxe)'),
(4, 'Lana  Del  Rey', 'Born  To  Die'),
(5, 'Gotye', 'Making  Mirrors'),
(6, 'Okean Elzy', '1211'),
(7, 'Vivaldi', 'Four seasons'),
(8, 'Okean Elzy', 'Brussels2');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `rubric_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `enabled` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_831B9722727ACA70` (`parent_id`),
  KEY `IDX_831B9722A29EC0FC` (`rubric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content__content`
--

CREATE TABLE IF NOT EXISTS `content__content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rubric_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `raw_content` longtext COLLATE utf8_unicode_ci,
  `redirect_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `content_formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publication_date_start` datetime DEFAULT NULL,
  `comments_enabled` tinyint(1) NOT NULL,
  `comments_close_at` datetime DEFAULT NULL,
  `comments_default_status` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rubricslug_idx` (`rubric_id`,`slug`),
  KEY `IDX_D83A3B3BA29EC0FC` (`rubric_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `content__content`
--

INSERT INTO `content__content` (`id`, `rubric_id`, `title`, `abstract`, `content`, `raw_content`, `redirect_url`, `image`, `content_formatter`, `enabled`, `slug`, `publication_date_start`, `comments_enabled`, `comments_close_at`, `comments_default_status`, `date`, `created_at`, `updated_at`) VALUES
(1, 4, 'Arcticle 1', 'Small description', '<p>Main text</p>', NULL, NULL, 'N;', NULL, 1, 'arcticle-1', '2013-06-08 12:37:39', 1, NULL, NULL, '2013-06-08 00:00:00', '2013-06-08 12:37:39', '2013-06-08 12:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `content__file`
--

CREATE TABLE IF NOT EXISTS `content__file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3A7912D984A0A3ED` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content__link`
--

CREATE TABLE IF NOT EXISTS `content__link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `link_content_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_804ABD3884A0A3ED` (`content_id`),
  KEY `IDX_804ABD38D32A6318` (`link_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '''''',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `name`, `deleted`) VALUES
(1, 'title', 0),
(2, 'description', 0),
(3, 'contact_person', 0),
(4, 'address', 0),
(5, 'phone', 0),
(6, 'email', 0),
(7, 'floor', 1),
(8, 'adress2', 0),
(9, 'adress3', 1),
(10, 'new', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `name`) VALUES
(2, 'iris'),
(5, 'iris3'),
(1, 'kira'),
(3, 'mice'),
(4, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fos_user_group`
--

INSERT INTO `fos_user_group` (`id`, `name`, `roles`) VALUES
(1, 'group1', 'a:1:{i:0;s:10:"ROLE_ADMIN";}');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'admin', 'admin', 'imychkova@gmail.com', 'imychkova@gmail.com', 1, '3bugv90ba1og0g084og4wgckksocsc8', 'EjEqfTAXSJhbSAjMK0cJcTixQ4Hn6XnpxQvlZieqVqo3bcbif3jn87IR9A1hcKL3ZXhWO57flQnkrPOjgJK4fw==', '2013-06-30 17:25:31', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2013-06-02 14:25:35', '2013-06-30 17:25:31', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(2, 'mice', 'mice', 'i.mychkova@gmail.com', 'i.mychkova@gmail.com', 0, 'l8jzs5edplsk0os8kgs8sswgwgw8wso', '9XtihLj0J9wLYQFE6Nlq/mzW0Ed9uE+myEcLtBEs94tvxC/hgQIyPHcXLe1GUrQehn34ZLstk1seLfkRyYduwg==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2013-06-03 22:17:24', '2013-06-03 22:17:24', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `deleted`) VALUES
(1, 'kira', 1),
(2, 'iris', 0),
(3, 'mice', 0),
(4, 'new', 0),
(7, 'new3', 0),
(9, 'new4', 1),
(10, 'new5', 1),
(11, 'new6', 1),
(12, 'new777', 0);

-- --------------------------------------------------------

--
-- Table structure for table `related_fields`
--

CREATE TABLE IF NOT EXISTS `related_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `related_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`,`related_field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `related_fields`
--

INSERT INTO `related_fields` (`id`, `field_id`, `related_field_id`) VALUES
(16, 4, 7),
(17, 4, 8),
(8, 4, 9),
(13, 7, 4),
(14, 7, 8),
(15, 7, 9),
(18, 8, 7),
(4, 9, 4),
(6, 9, 7),
(5, 9, 8),
(20, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rubric__rubric`
--

CREATE TABLE IF NOT EXISTS `rubric__rubric` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `root` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DFC7923D727ACA70` (`parent_id`),
  KEY `lftrgt` (`lft`,`rgt`),
  KEY `lvl` (`lvl`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `full_path` (`full_path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rubric__rubric`
--

INSERT INTO `rubric__rubric` (`id`, `parent_id`, `title`, `abstract`, `path`, `full_path`, `redirect_url`, `status`, `controller`, `lft`, `rgt`, `root`, `lvl`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Real Estate', NULL, '', '/', NULL, 1, 'Iphp\\CoreBundle\\Module\\SiteIndexModule', 1, 8, 1, 0, '2013-06-04 21:08:22', '2013-06-04 21:32:15'),
(2, 1, 'news', NULL, 'news', '/news/', NULL, 1, 'Iphp\\ContentBundle\\Module\\ContentListModule', 2, 3, 1, 1, '2013-06-04 21:32:43', '2013-06-04 21:32:43'),
(3, 1, 'home', NULL, 'home', '/home/', NULL, 1, 'Iphp\\CoreBundle\\Module\\RubricIndexModule', 4, 7, 1, 1, '2013-06-04 21:35:08', '2013-06-04 21:35:08'),
(4, 3, 'in1', NULL, 'in1', '/home/in1/', NULL, 1, 'Iphp\\ContentBundle\\Module\\ContentListModule', 5, 6, 1, 2, '2013-06-04 21:37:17', '2013-06-04 21:37:17');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `ad_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`);

--
-- Constraints for table `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `FK_831B9722727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `block` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_831B9722A29EC0FC` FOREIGN KEY (`rubric_id`) REFERENCES `rubric__rubric` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content__content`
--
ALTER TABLE `content__content`
  ADD CONSTRAINT `FK_D83A3B3BA29EC0FC` FOREIGN KEY (`rubric_id`) REFERENCES `rubric__rubric` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `content__file`
--
ALTER TABLE `content__file`
  ADD CONSTRAINT `FK_3A7912D984A0A3ED` FOREIGN KEY (`content_id`) REFERENCES `content__content` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `content__link`
--
ALTER TABLE `content__link`
  ADD CONSTRAINT `FK_804ABD3884A0A3ED` FOREIGN KEY (`content_id`) REFERENCES `content__content` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_804ABD38D32A6318` FOREIGN KEY (`link_content_id`) REFERENCES `content__content` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rubric__rubric`
--
ALTER TABLE `rubric__rubric`
  ADD CONSTRAINT `FK_DFC7923D727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `rubric__rubric` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
