-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2016 at 02:42 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `promos`
--

-- --------------------------------------------------------

--
-- Table structure for table `rw_app`
--

CREATE TABLE IF NOT EXISTS `rw_app` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rw_promo_code`
--

CREATE TABLE IF NOT EXISTS `rw_promo_code` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `rw_app_id` tinyint(4) NOT NULL,
  `code` varchar(255) NOT NULL,
  `unlock_code` varchar(255) NOT NULL,
  `uses_remaining` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rw_promo_code`
--

INSERT INTO `rw_promo_code` (`id`, `rw_app_id`, `code`, `unlock_code`, `uses_remaining`) VALUES
(1, 123, '123', '123', 123);

-- --------------------------------------------------------

--
-- Table structure for table `rw_promo_code_redeemed`
--

CREATE TABLE IF NOT EXISTS `rw_promo_code_redeemed` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `rw_promo_code_id` mediumint(9) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `redeemed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
