-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2014 at 02:58 PM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bug_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE IF NOT EXISTS `bugs` (
  `ID` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `project` varchar(30) DEFAULT NULL,
  `organisation` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `priority` varchar(30) DEFAULT NULL,
  `reported_by` varchar(30) DEFAULT NULL,
  `reported_on` varchar(30) DEFAULT NULL,
  `assigned_to` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `last_updated_on` varchar(30) DEFAULT NULL,
  `last_updated_by` varchar(30) DEFAULT NULL,
  `bugtype` varchar(30) DEFAULT NULL,
  `build` varchar(30) DEFAULT NULL,
  `app` varchar(30) DEFAULT NULL,
  `modapp` varchar(30) DEFAULT NULL,
  `comments` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bugs`
--

INSERT INTO `bugs` (`ID`, `flag`, `description`, `project`, `organisation`, `category`, `priority`, `reported_by`, `reported_on`, `assigned_to`, `status`, `last_updated_on`, `last_updated_by`, `bugtype`, `build`, `app`, `modapp`, `comments`) VALUES
(0, '', 'yrty', 'Themes', 'Vasudhaika Software Solutions', 'Enhancement', 'NO PRIORITY', NULL, NULL, 'pratyusha', 'New', NULL, NULL, 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'yryrgyh'),
(1, '', 'cxzc', 'cxvcv', 'vcxv', 'cvcvc', 'vcvcx', NULL, '', 'vcvv', 'vcvc', '', '', 'cvc', 'vcv', 'cvvcvcxv', 'vcxvcvc', 'vvcxvc'),
(2, '', 'DFSADSA', 'Checkout', 'Vasudhaika Software Solutions', 'Bug', 'NO PRIORITY', NULL, '', 'Priya', 'New', '', '', 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'fads\r\n'),
(3, '', 'vcvc', 'I18N', 'Vasudhaika Software Solutions', 'Bug', 'NO PRIORITY', NULL, '', 'Priya', 'New', '', '', 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'dsadsf'),
(4, '', 'cxzvcx', 'Checkout', 'Vasudhaika Software Solutions', 'Bug', 'NO PRIORITY', NULL, '', 'Priya', 'New', '', '', 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'DFMBDS\r\n'),
(5, '', 'hhrh', 'Themes', 'Vasudhaika Software Solutions', 'Enhancement', 'NO PRIORITY', NULL, '', 'Priya', 'Checked IN', '', '', 'UI', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'hrhrhrhhh'),
(6, '', 'jfghjfjgj', 'Checkout', 'Vasudhaika Software Solutions', 'Enhancement', 'Low', NULL, '', 'Priya', 'Checked IN', '', '', 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'jgjgjjj'),
(7, '', 'kljlkljkl', 'Checkout', 'Vasudhaika Software Solutions', 'Enhancement', 'Low', NULL, '', 'Priya', 'In Progress', '', '', 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'kljkljkljlljjlk'),
(8, '', 'functional bug', 'Checkout', 'Vasudhaika Software Solutions', 'Questions', 'Low', NULL, '', 'pratyusha', 'ReOpen', '', '', 'UI', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'wefe'),
(9, '', 'yyryryryr', 'Themes', 'Vasudhaika Software Solutions', 'Enhancement', 'Medium', NULL, '', 'pratyusha', 'ReOpen', '', '', 'UI', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'ytryr'),
(10, '', 'hgdfhd', 'Themes', 'Vasudhaika Software Solutions', 'Enhancement', 'Low', NULL, NULL, 'pratyusha', 'In Progress', NULL, NULL, 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'hhhhh'),
(11, '', 'utyiti', 'Themes', 'Vasudhaika Software Solutions', 'Enhancement', 'Medium', NULL, NULL, 'pratyusha', 'In Progress', NULL, NULL, 'Functional', 'Demo Issues', 'iAgriMarC', 'DashBoard', 'iiiidi');

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE IF NOT EXISTS `login_users` (
  `UserName` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`UserName`, `Password`) VALUES
('Bhadram2', 'bhadra'),
('Naresh3', 'naresh'),
('prathyusha1', 'prathyu');

-- --------------------------------------------------------

--
-- Table structure for table `Persons`
--

CREATE TABLE IF NOT EXISTS `Persons` (
  `FirstName` char(30) DEFAULT NULL,
  `lastName` char(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Persons`
--

INSERT INTO `Persons` (`FirstName`, `lastName`, `Age`) VALUES
('Priya', 'yelchuru', 23),
('pratyusha', 'chaudhary', 24);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
