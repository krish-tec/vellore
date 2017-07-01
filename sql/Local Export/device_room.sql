-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 07:03 PM
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
-- Table structure for table `device_room`
--

CREATE TABLE `device_room` (
  `id` int(11) NOT NULL,
  `node` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `internal_pin` int(11) NOT NULL,
  `external_pin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `relay_pin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `device_room`
--

INSERT INTO `device_room` (`id`, `node`, `internal_pin`, `external_pin`, `relay_pin`, `room_no`, `active`) VALUES
(1, 'n1', 5, 'D1', 'R1', '3', 1),
(2, 'n1', 4, 'D2', 'R2', '4', 1),
(3, 'n2', 5, 'D1', 'R1', '7', 1),
(4, 'n2', 4, 'D2', 'R2', '8', 1),
(5, 'n2', 2, 'D4', 'R3', '9', 1),
(6, 'n3', 5, 'D1', 'R1', '10', 1),
(7, 'n3', 4, 'D2', 'R2', '11', 1),
(8, 'n4', 5, 'D1', 'R1', '12', 1),
(9, 'n4', 4, 'D2', 'R2', '13', 1),
(10, 'n4', 2, 'D4', 'R3', '14', 1),
(11, 'n5', 5, 'D1', 'R1', '15', 1),
(12, 'n5', 4, 'D2', 'R2', '16', 1),
(13, 'n6', 5, 'D1', 'R1', '17', 1),
(14, 'n6', 4, 'D2', 'R2', '18', 1),
(15, 'n6', 2, 'D4', 'R3', '19', 1),
(16, 'n7', 5, 'D1', 'R1', '17', 1),
(17, 'n7', 4, 'D2', 'R2', '18', 1),
(18, 'n7', 2, 'D4', 'R3', '19', 1),
(19, 'n8', 5, 'D4', 'R3', '23', 1),
(20, 'n8', 4, 'D2', 'R2', '24', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_room`
--
ALTER TABLE `device_room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_room`
--
ALTER TABLE `device_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
