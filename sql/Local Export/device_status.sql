-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 07:01 PM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vellore_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `device_status`
--

CREATE TABLE `device_status` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `node` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pin` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `device_status`
--

INSERT INTO `device_status` (`id`, `room_id`, `room_no`, `node`, `pin`, `status`, `time`, `action_by`) VALUES
(1, 1, '3', 'n1', 5, '1', '2017-06-23 06:48:53pm', 'startup'),
(2, 2, '4', 'n1', 4, '0', '2017-06-23 06:49:22pm', 'startup'),
(3, 3, '7', 'n2', 5, '0', '2017-06-23 06:49:29pm', 'startup'),
(4, 4, '8', 'n2', 4, '1', '2017-06-23 06:49:34pm', 'startup'),
(5, 5, '9', 'n2', 2, '1', '2017-06-23 06:49:42pm', 'startup'),
(6, 6, '10', 'n3', 5, '1', '2017-06-23 06:49:56pm', 'startup'),
(7, 7, '11', 'n3', 4, '1', '2017-06-23 06:50:08pm', 'startup'),
(8, 8, '12', 'n4', 5, '1', '2017-06-23 06:50:16pm', 'startup'),
(9, 9, '13', 'n4', 4, '1', '2017-06-23 06:50:22pm', 'startup'),
(10, 10, '14', 'n4', 2, '1', '2017-06-23 06:50:26pm', 'startup'),
(11, 11, '15', 'n5', 5, '1', '2017-06-23 06:50:36pm', 'startup'),
(12, 12, '16', 'n5', 4, '1', '2017-06-23 06:50:40pm', 'startup'),
(13, 13, '17', 'n6', 5, '1', '2017-06-23 06:50:49pm', 'startup'),
(14, 14, '18', 'n6', 4, '1', '2017-06-23 06:50:53pm', 'startup'),
(15, 15, '19', 'n6', 2, '1', '2017-06-23 06:50:58pm', 'startup'),
(16, 16, '17', 'n7', 5, '1', '2017-06-23 06:51:08pm', 'startup'),
(17, 17, '18', 'n7', 4, '1', '2017-06-23 06:51:12pm', 'startup'),
(18, 18, '19', 'n7', 2, '1', '2017-06-23 06:51:19pm', 'startup'),
(19, 19, '23', 'n8', 5, '1', '2017-06-23 06:51:28pm', 'startup'),
(20, 20, '24', 'n8', 4, '1', '2017-06-23 06:51:33pm', 'startup'),
(21, 20, '24', 'n8', 4, '1', '2017-06-23 08:16:33pm', 'switch'),
(22, 20, '24', 'n8', 4, '0', '2017-06-23 09:16:20PM', 'switch'),
(23, 20, '24', 'n8', 4, '1', '2017-06-23 09:32:06PM', 'switch'),
(24, 20, '24', 'n8', 4, '0', '2017-06-23 10:11:16PM', 'switch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_status`
--
ALTER TABLE `device_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rooms_idx` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_status`
--
ALTER TABLE `device_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `device_status`
--
ALTER TABLE `device_status`
  ADD CONSTRAINT `fk_rooms` FOREIGN KEY (`room_id`) REFERENCES `device_room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
