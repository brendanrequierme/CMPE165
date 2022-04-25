-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 07:54 PM
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
(3, 'Seattle', 1),
(4, 'Los Angeles', 1),
(5, 'San Diego', 1),
(6, 'San Francisco', 1),
(7, 'San Jose', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `usd` decimal(10,2) DEFAULT NULL,
  `image` text NOT NULL,
  `rating` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`) VALUES
(1, 'Best Western Plus South Bay Hotel LAX', '15000 Hawthorne Boulevard Lawndale, California,, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90260', 4, '140.00', '1.jpg', '7.7'),
(2, 'JW Marriott Santa Monica Le Merigot', '1740 Ocean Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '431.00', '2.jpg', '8.3'),
(3, 'Andaz West Hollywood', '8401 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 4, '272.00', '3.jpg', '9.0'),
(4, 'Alhambra Hotel', '2221 W Commonwealth Ave, East Los Angeles, Los Angeles (CA), United States, 91803', 4, '92.00', '4.jpg', '8.4'),
(5, 'Hollywood Celebrity Hotel', '1775 Orchid Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '162.00', '5.jpg', '8.8'),
(6, 'Marina del Rey Hotel', '13534 Bali Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '287.00', '6.jpg', '8.4'),
(7, 'Tommie Hollywood', '6516 W Selma Ave, Hollywood, Los Angeles (CA), United States, 90028', 4, '228.00', '7.jpg', '8.4'),
(8, 'The London West Hollywood at Beverly Hills', '1020 N. San Vicente Blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '459.00', '8.jpg', '8.9'),
(9, 'Peacock Suites', '1745 South Anaheim Blvd., Anaheim, Los Angeles (CA), United States, 92805', 4, '199.00', '9.jpg', '8.6'),
(10, '1 Hotel West Hollywood', '8490 West Sunset blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '499.00', '10.jpg', '8.7'),
(11, 'Courtyard by Marriott Los Angeles Monterey Park', '555 North Atlantic Boulevard, East Los Angeles, Los Angeles (CA), United States, 91754', 4, '208.00', '11.jpg', '8.7'),
(12, 'Thompson Hollywood', '1541 Wilcox Ave, Hollywood, Los Angeles (CA), United States, 90028-7308', 4, '293.00', '12.jpg', '8.4'),
(13, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground', '1380 South Harbor Blvd, Anaheim, Los Angeles (CA), United States, 92802-2310', 4, '168.00', '13.jpg', '8.8'),
(14, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS', '5268 TUJUNGA AVENUE, Burbank, Los Angeles (CA), United States, 91601', 4, '229.00', '14.jpg', '9.8'),
(15, 'Wyndham Santa Monica At The Pier Hotel', '120 Colorado Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '283.00', '15.jpg', '7.6'),
(16, 'JW Marriott Los Angeles L.A. LIVE', '900 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '599.00', '16.jpg', '8.8'),
(17, 'Maison 140', '140 South Lasky Drive, Beverly Hills, California, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '209.00', '17.jpg', '7.4'),
(18, 'Delta Hotels by Marriott Anaheim Garden Grove', '12021 Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92840', 4, '209.00', '18.jpg', '8.3'),
(19, 'Hilton Los Angeles Universal City Hotel', '555 Universal Hollywood Drive, Universal City, Los Angeles (CA), United States, 91608', 4, '292.00', '19.jpg', '8.5'),
(20, 'The Ritz-Carlton, Marina del Rey', '4375 Admiralty Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '368.00', '20.jpg', '10.0'),
(21, 'Sixty Beverly Hills Hotel', '9360 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '359.00', '21.jpg', '7.9'),
(22, 'Sheraton Los Angeles San Gabriel', '303 East Valley Boulevard, East Los Angeles, Los Angeles (CA), United States, 91776', 4, '197.00', '22.jpg', '8.8'),
(23, 'The Hollywood Roosevelt', '7000 Hollywood Boulevard, Hollywood, Los Angeles (CA), United States, 90028', 4, '288.00', '23.jpg', '8.6'),
(24, 'Hyatt Place At Anaheim Resort Conv', '2035 South Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92802', 4, '239.00', '24.jpg', '8.7'),
(25, 'La Quinta Inn & Suites by Wyndham LAX', '5249 W Century Boulevard, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '138.00', '25.jpg', '7.7'),
(26, 'Embassy Suites Los Angeles International Airport South Hotel', '1440 E. Imperial Avenue, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90245', 4, '167.00', '26.jpg', '7.9'),
(27, 'Hotel Figueroa, an Unbound Collection by Hyatt', '939 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '279.00', '27.jpg', '8.8'),
(28, 'Kimpton Hotel Wilshire', '6317 Wilshire Boulevard, West Hollywood, Los Angeles (CA), United States, 90048', 4, '339.00', '28.jpg', '8.1'),
(29, 'The Moment Hotel', '7370 Sunset Boulevard, Hollywood, Los Angeles (CA), United States, 90046', 4, '282.00', '29.jpg', '7.5'),
(30, 'Omni Los Angeles at California Plaza', '251 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '263.00', '30.jpg', '8.6'),
(31, 'The Hoxton Downtown LA', '1060 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '235.00', '31.jpg', '9.2');

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`) VALUES
(61, 'The Donatello', '501 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '276.00', '61.jpg', '8.7'),
(62, 'The Inn at Union Square', '440 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '260.00', '62.jpg', '9.1'),
(63, 'Omni San Francisco Hotel', '500 California Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 6, '203.00', '63.jpg', '9.2'),
(64, 'Hyatt Centric Fishermans Wharf', '555 North Point St, Fisherman''s Wharf, San Francisco (CA), United States, 94133', 6, '299.00', '64.jpg', '8.3'),
(65, 'Hyatt Place Emeryville/San Francisco Bay Area', '5700 Bay Street, Oakland, San Francisco (CA), United States, 94608', 6, '199.00', '65.jpg', '8.6'),
(66, 'Hotel Abri Union Square', '127 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '191.00', '66.jpg', '8.3'),
(67, 'Extended Stay America Premier Suites - Oakland - Alameda', '1350 Marina Village Pkwy, Oakland, San Francisco (CA), United States, 94501', 6, '138.00', '67.jpg', '7.2'),
(68, 'Axiom Hotel San Francisco', '28 Cyril Magnin ST, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '239.00', '68.jpg', '8.3'),
(69, 'Courtyard San Francisco Union Square', '761 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '219.00', '69.jpg', '7.8'),
(70, 'Chancellor Hotel on Union Square', '433 Powell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '182.00', '70.jpg', '9.3'),
(71, 'Holiday Inn San Francisco - Golden Gateway', '1500 Van Ness Avenue, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '206.00', '71.jpg', '8.0'),
(72, 'Executive Inn & Suites Oakland', '1755 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 6, '161.00', '72.jpg', '8.6'),
(73, 'Handlery Union Square Hotel', '351 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '244.00', '73.jpg', '8.3'),
(74, 'Hampton Inn San Francisco Downtown Convention Center', '942 Mission Street, South of Market, San Francisco (CA), United States, 94103', 6, '220.00', '74.jpg', '8.4'),
(75, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel', '1800 Powell Street, Oakland, San Francisco (CA), United States, 94608', 6, '203.00', '75.jpg', '8.2'),
(76, 'Executive Hotel Vintage Court', '650 Bush Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '199.00', '76.jpg', '7.7'),
(77, 'The Pickwick Hotel', '85 Fifth Street, South of Market, San Francisco (CA), United States, 94103', 6, '155.00', '77.jpg', '7.5'),
(78, 'The Westin St. Francis San Francisco on Union Square', '335 Powell Street , San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '206.00', '78.jpg', '8.3'),
(79, 'InterContinental San Francisco', '888 Howard Street, South of Market, San Francisco (CA), United States, 94103', 6, '246.00', '79.jpg', '8.5'),
(80, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham', '105 Rockaway Beach Ave, Pacifica, San Francisco (CA), United States, 94044', 6, '189.00', '80.jpg', '7.9'),
(81, 'Hotel Zephyr San Francisco', '250 Beach Street, Fisherman''s Wharf, San Francisco (CA), United States, 94133', 6, '341.00', '81.jpg', '8.3'),
(82, 'Grand Hyatt at SFO', '55 South McDonnell Rd, San Francisco International Airport, San Francisco (CA), United States, 94128', 6, '289.00', '82.jpg', '9.3'),
(83, 'Embassy Suites San Rafael Marin County Hotel', '101 Mcinnis Parkway, Marin County, San Francisco (CA), United States, 94903', 6, '194.00', '83.jpg', '8.2'),
(84, 'Casa Madrona Hotel and Spa', '801 Bridgeway, Marin County, San Francisco (CA), United States, 94965', 6, '416.00', '84.jpg', '8.5'),
(85, 'Courtyard Oakland Downtown', '988 Broadway, Oakland, San Francisco (CA), United States, 94607', 6, '191.00', '85.jpg', '8.5'),
(86, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat', '562 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '203.00', '86.jpg', '9.0'),
(87, 'Inn Redwood City', '1818 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063-2111', 6, '127.00', '87.jpg', '7.7'),
(88, 'Club Quarters Hotel in San Francisco', '424 Clay Street, San Francisco Downtown, San Francisco (CA), United States, 94111', 6, '188.00', '88.jpg', '8.3'),
(89, 'Hotel Zoe Fisherman''s Wharf', '425 NORTH POINT STREET, Fisherman''s Wharf, San Francisco (CA), United States, 94133', 6, '281.00', '89.jpg', '8.6'),
(90, 'Hyatt House Emeryville San Francisco Bay Area', '5800 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 6, '196.00', '90.jpg', '8.6');

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
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

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
  ADD CONSTRAINT `state_if_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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