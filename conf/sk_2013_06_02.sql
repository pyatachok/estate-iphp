-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2013 at 01:38 PM
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
(10, '2013-05-22 11:06:53', 3, 0, '2018-08-18 00:00:00'),
(11, '2013-05-17 16:04:37', 2, 0, '2013-05-17 19:04:37'),
(12, '2013-05-19 09:53:51', 3, 0, '2013-05-19 12:53:51'),
(14, '2013-05-22 08:02:26', 1, 0, '2013-05-19 12:55:47'),
(15, '2013-05-22 08:19:30', 3, 0, '2013-05-19 13:00:54'),
(16, '2013-05-21 16:37:30', 2, 0, 'Appartment for sale'),
(17, '2013-05-22 11:00:34', 1, 0, 'new ad'),
(18, '2013-05-22 11:07:02', 3, 1, 'new adv');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

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
(25, 1, 17, 'fg2'),
(29, 3, 17, 'xcxcx'),
(30, 1, 17, 'new'),
(31, 5, 18, 'some'),
(32, 3, 18, '902830948203');

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
-- Table structure for table `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '''''',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

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
(7, 'floor', 0),
(8, 'adress2', 0),
(9, 'adress3', 0);

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
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `deleted`) VALUES
(1, 'kira', 0),
(2, 'iris', 0),
(3, 'mice', 0),
(4, 'new', 1),
(5, 'iris3', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

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
(10, 8, 4),
(11, 8, 7),
(12, 8, 9),
(4, 9, 4),
(6, 9, 7),
(5, 9, 8);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `ad_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
