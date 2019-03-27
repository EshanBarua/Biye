-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 05:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biye_bari`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(30) NOT NULL,
  `client_email` varchar(30) NOT NULL,
  `client_password` varchar(20) NOT NULL,
  `client_contact` varchar(15) NOT NULL,
  `client_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `sp_id` int(10) UNSIGNED NOT NULL,
  `sp_name` varchar(30) NOT NULL,
  `sp_email` varchar(30) NOT NULL,
  `sp_password` varchar(20) NOT NULL,
  `sp_gender` varchar(6) NOT NULL,
  `sp_category` varchar(15) NOT NULL,
  `sp_contact` varchar(15) NOT NULL,
  `sp_photo` longblob,
  `sp_details` text NOT NULL,
  `sp_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_rating`
--

CREATE TABLE `service_provider_rating` (
  `rating_id` int(10) UNSIGNED NOT NULL,
  `rating` int(5) NOT NULL,
  `sp_id` int(10) NOT NULL,
  `sp_name` varchar(30) NOT NULL,
  `rating_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`sp_id`),
  ADD UNIQUE KEY `sp_id` (`sp_id`);

--
-- Indexes for table `service_provider_rating`
--
ALTER TABLE `service_provider_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `sp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_rating`
--
ALTER TABLE `service_provider_rating`
  MODIFY `rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
