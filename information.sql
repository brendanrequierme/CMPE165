-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 04:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `information`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(128) NOT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Santa Cruz', 1),
(2, 'Las Vegas', 1),
(3, 'Seattle', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `usd` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`) VALUES
(1, 'Beachview Inn', 'Within easy reach of Santa Cruz Beach Boardwalk', 1, '237.00'),
(2, 'Casablanca On The Beach', '3.5-star beach hotel with restaurant, near Santa Cruz Beach Boardwalk', 1, '589.00'),
(3, 'Bellagio', 'Luxury hotel with 18 restaurants, near Bellagio Conservatory & Botanical Gardens', 2, '394.00'),
(4, 'The Paramount Hotel', '3.5-star hotel with 24-hour health club, near Washington State Convention Center', 3, '179.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `time_paid` datetime DEFAULT NULL,
  `time_cancelled` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `reserved_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(128) NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `bed_count` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_price`, `description`, `bed_count`, `hotel_id`) VALUES
(1, 'Basic Room', '237.00', 'Sleeps 2 people', 1, 1),
(2, 'Queen Room', '242.00', 'Sleeps 2 people (including up to 1 child)', 2, 1),
(3, 'Classic Queen', '799.00', 'Partial ocean view\r\nSleeps 2 people (including up to 1 child)', 1, 2),
(4, 'Newly Renovated 2 Queens', '589.00', 'Street View\r\nSleeps 4 people (including up to 3 children)', 2, 2),
(5, 'Resort King Room', '394.00', 'Sleeps 3 people (including up to 2 children)', 1, 3),
(6, 'Premier Two Queen', '399.00', 'Sleeps 4 people (including up to 3 children)', 2, 3),
(7, 'Fountain View Two Queen', '413.00', 'Sleeps 4 people (including up to 3 children)', 2, 3),
(8, 'Salone Suite', '1025.00', 'Sleeps 3 people (including up to 2 children)', 1, 3),
(9, 'Urban King Room', '179.00', 'Sleeps 2 people (including up to 1 child)', 1, 4),
(10, 'Urban Deluxe King Room', '181.00', 'Sleeps 2 people (including up to 1 child)', 1, 4),
(11, 'Traditional Room, 2 Queen Beds', '209.00', 'Sleeps 4 people (including up to 3 children)', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_reserved`
--

CREATE TABLE `room_reserved` (
  `reserved_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `room_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'California');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `username`, `password`) VALUES
(1, 'user', '$2y$10$YTr/kjkrcb5gxyMoyukRbOn3cxBOLXCxHeRWgrpyWos5.nE6rBP3u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_id` (`city_id`),
  ADD KEY `state_if_fk` (`state_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD UNIQUE KEY `hotel_id` (`hotel_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reserved_id` (`reserved_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `room_id` (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `room_reserved`
--
ALTER TABLE `room_reserved`
  ADD PRIMARY KEY (`reserved_id`),
  ADD UNIQUE KEY `reserved_id` (`reserved_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_reserved`
--
ALTER TABLE `room_reserved`
  MODIFY `reserved_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `state_if_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`reserved_id`) REFERENCES `room_reserved` (`reserved_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `room_reserved`
--
ALTER TABLE `room_reserved`
  ADD CONSTRAINT `room_reserved_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `room_reserved_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
