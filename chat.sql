-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2011 at 03:44 
-- Server version: 5.0.56
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dari` varchar(45) default NULL,
  `ke` varchar(45) default NULL,
  `isi` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `dari`, `ke`, `isi`, `status`) VALUES
(1, 'A', 'B', 'Tes', 1),
(2, 'A', 'B', 'Tes', 1),
(3, 'B', 'A', 'Jajal bos', 1),
(4, 'A', 'B', 'Yo', 1),
(5, 'A', 'B', 'Jajal', 1),
(6, 'B', 'A', 'Yo', 1),
(7, 'A', 'B', 'TEs', 1),
(8, 'A', 'B', 'Tesitng', 1),
(9, 'A', 'B', 'ad', 1),
(10, 'A', 'B', 'ad', 1),
(11, 'A', 'B', '12', 1),
(12, 'A', 'B', 'A', 1),
(13, 'A', 'B', 'B', 1),
(14, 'A', 'B', 'C', 1),
(15, 'A', 'B', 'D', 1),
(16, 'A', 'B', 'S', 1),
(17, 'A', 'B', 'V', 1),
(18, 'A', 'B', 'Q', 1),
(19, 'A', 'B', 'D', 1),
(20, 'A', 'B', 'W', 1),
(21, 'A', 'B', 'Q', 1),
(22, 'B', 'A', 'jos lah', 1),
(23, 'A', 'B', 'A', 1),
(24, 'A', 'B', 'B', 1),
(25, 'A', 'B', 'C', 1),
(26, 'A', 'B', '1', 1),
(27, 'A', 'B', '2', 1),
(28, 'A', 'B', '3', 1),
(29, 'A', 'B', '1', 1),
(30, 'A', 'B', '2', 1),
(31, 'A', 'B', '3', 1),
(32, 'B', 'C', 'ad', 1),
(33, 'B', 'A', 'aa', 1),
(34, 'A', 'B', 'asasf', 1),
(35, 'B', 'A', 'ggg', 1),
(36, 'A', 'B', 'sdfsdf', 1),
(37, 'A', 'B', 'sdfs', 1),
(38, 'B', 'A', 'sdfs', 1),
(39, 'A', 'C', 'tes', 1),
(40, 'B', 'A', 'Jajal', 1),
(41, 'C', 'A', 'Tes lagi', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
