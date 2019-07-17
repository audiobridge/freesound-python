-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2019 at 02:16 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_freesound`
--
CREATE DATABASE IF NOT EXISTS `db_freesound` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_freesound`;

-- --------------------------------------------------------

--
-- Table structure for table `search_keys`
--

DROP TABLE IF EXISTS `search_keys`;
CREATE TABLE `search_keys` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `current_page` int(11) DEFAULT '1',
  `total_page` int(11) DEFAULT NULL,
  `records` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0-new, 1- in progress, 2- completed',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `search_keys`
--

TRUNCATE TABLE `search_keys`;
--
-- Dumping data for table `search_keys`
--

INSERT INTO `search_keys` (`id`, `item_name`, `current_page`, `total_page`, `records`, `status`, `created_at`, `updated_at`) VALUES
(1, 'my age', 1, 1, 114, 2, '2019-07-08 12:34:19', '2019-07-08 16:52:40'),
(2, 'flowers', 2, 3, 434, 1, '2019-07-08 12:34:19', '2019-07-08 17:43:28'),
(3, 'tired', 1, NULL, NULL, 0, '2019-07-08 12:34:54', NULL),
(4, 'yellow', 1, NULL, NULL, 0, '2019-07-08 12:34:54', NULL),
(5, 'fire', 1, NULL, NULL, 0, '2019-07-08 12:36:56', NULL),
(6, 'love', 1, NULL, NULL, 0, '2019-07-08 12:36:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sounds`
--

DROP TABLE IF EXISTS `tbl_sounds`;
CREATE TABLE `tbl_sounds` (
  `id` int(20) NOT NULL,
  `freesound_id` int(11) DEFAULT NULL,
  `search_key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filesize` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `json_dump` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `search_keys`
--
ALTER TABLE `search_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sounds`
--
ALTER TABLE `tbl_sounds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `search_keys`
--
ALTER TABLE `search_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sounds`
--
ALTER TABLE `tbl_sounds`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
