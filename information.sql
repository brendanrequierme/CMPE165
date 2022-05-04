-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 03:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SELECT @@system_time_zone;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `information`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookedhotel`
--

CREATE TABLE `bookedhotel` (
  `booked_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `usd` decimal(10,2) DEFAULT NULL,
  `image` text NOT NULL,
  `rating` decimal(10,1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `room_number` int DEFAULT 0,
  `days` int DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookedhotel`
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
(2, 'Los Angeles', 1),
(3, 'San Diego', 1),
(4, 'San Francisco', 1),
(5, 'San Jose', 1);

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
  `rating` decimal(10,1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`, `start_date`, `end_date`) VALUES
(1, 'Best Western Plus South Bay Hotel LAX', '15000 Hawthorne Boulevard Lawndale, California, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90260', 2, '140.00', '1.jpg', '7.7', NOW(), '2022-05-26'),
(2, 'JW Marriott Santa Monica Le Merigot', '1740 Ocean Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 2, '431.00', '2.jpg', '8.3', '2022-06-04', '2022-07-21'),
(3, 'Andaz West Hollywood', '8401 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 2, '272.00', '3.jpg', '9.0', '2022-05-24', '2022-05-31'),
(4, 'Alhambra Hotel', '2221 W Commonwealth Ave, East Los Angeles, Los Angeles (CA), United States, 91803', 2, '92.00', '4.jpg', '8.4', NOW(), '2022-06-26'),
(5, 'Hollywood Celebrity Hotel', '1775 Orchid Avenue, Hollywood, Los Angeles (CA), United States, 90028', 2, '162.00', '5.jpg', '8.8', NOW(), '2022-07-21'),
(6, 'Marina del Rey Hotel', '13534 Bali Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 2, '287.00', '6.jpg', '8.4', '2022-07-13', '2022-08-15'),
(7, 'Tommie Hollywood', '6516 W Selma Ave, Hollywood, Los Angeles (CA), United States, 90028', 2, '228.00', '7.jpg', '8.4', '2022-05-06', '2022-10-05'),
(8, 'The London West Hollywood at Beverly Hills', '1020 N. San Vicente Blvd, West Hollywood, Los Angeles (CA), United States, 90069', 2, '459.00', '8.jpg', '8.9', NOW(), '2022-05-14'),
(9, 'Peacock Suites', '1745 South Anaheim Blvd., Anaheim, Los Angeles (CA), United States, 92805', 2, '199.00', '9.jpg', '8.6', NOW(), '2022-06-01'),
(10, '1 Hotel West Hollywood', '8490 West Sunset blvd, West Hollywood, Los Angeles (CA), United States, 90069', 2, '499.00', '10.jpg', '8.7', NOW(), '2022-10-24'),
(11, 'Courtyard by Marriott Los Angeles Monterey Park', '555 North Atlantic Boulevard, East Los Angeles, Los Angeles (CA), United States, 91754', 2, '208.00', '11.jpg', '8.7', NOW(), '2022-07-15'),
(12, 'Thompson Hollywood', '1541 Wilcox Ave, Hollywood, Los Angeles (CA), United States, 90028-7308', 2, '293.00', '12.jpg', '8.4', '2022-05-08', '2022-05-29'),
(13, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground', '1380 South Harbor Blvd, Anaheim, Los Angeles (CA), United States, 92802-2310', 2, '168.00', '13.jpg', '8.8', NOW(), '2022-06-15'),
(14, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS', '5268 TUJUNGA AVENUE, Burbank, Los Angeles (CA), United States, 91601', 2, '229.00', '14.jpg', '9.8', NOW(), '2022-05-30'),
(15, 'Wyndham Santa Monica At The Pier Hotel', '120 Colorado Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 2, '283.00', '15.jpg', '7.6', NOW(), '2022-05-31'),
(16, 'JW Marriott Los Angeles L.A. LIVE', '900 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 2, '599.00', '16.jpg', '8.8', '2022-05-13', '2022-05-22'),
(17, 'Maison 140', '140 South Lasky Drive, Beverly Hills, California, Beverly Hills, Los Angeles (CA), United States, 90212', 2, '209.00', '17.jpg', '7.4', NOW(), '2022-05-26'),
(18, 'Delta Hotels by Marriott Anaheim Garden Grove', '12021 Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92840', 2, '209.00', '18.jpg', '8.3', '2022-05-21', '2022-05-26'),
(19, 'Hilton Los Angeles Universal City Hotel', '555 Universal Hollywood Drive, Universal City, Los Angeles (CA), United States, 91608', 2, '292.00', '19.jpg', '8.5', NOW(), '2022-05-26'),
(20, 'The Ritz-Carlton, Marina del Rey', '4375 Admiralty Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 2, '368.00', '20.jpg', '10.0', NOW(), '2022-05-19'),
(21, 'Sixty Beverly Hills Hotel', '9360 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90212', 2, '359.00', '21.jpg', '7.9', NOW(), '2022-07-28'),
(22, 'Sheraton Los Angeles San Gabriel', '303 East Valley Boulevard, East Los Angeles, Los Angeles (CA), United States, 91776', 2, '197.00', '22.jpg', '8.8', NOW(), '2022-11-23'),
(23, 'The Hollywood Roosevelt', '7000 Hollywood Boulevard, Hollywood, Los Angeles (CA), United States, 90028', 2, '288.00', '23.jpg', '8.6', NOW(), '2022-10-24'),
(24, 'Hyatt Place At Anaheim Resort Conv', '2035 South Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92802', 2, '239.00', '24.jpg', '8.7', '2022-05-11', '2022-05-27'),
(25, 'La Quinta Inn & Suites by Wyndham LAX', '5249 W Century Boulevard, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90045', 2, '138.00', '25.jpg', '7.7', '2022-05-04', '2022-05-28'),
(26, 'Embassy Suites Los Angeles International Airport South Hotel', '1440 E. Imperial Avenue, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90245', 4, '167.00', '26.jpg', '7.9', NOW(), '2022-05-29'),
(27, 'Hotel Figueroa, an Unbound Collection by Hyatt', '939 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 2, '279.00', '27.jpg', '8.8', NOW(), '2022-05-30'),
(28, 'Kimpton Hotel Wilshire', '6317 Wilshire Boulevard, West Hollywood, Los Angeles (CA), United States, 90048', 2, '339.00', '28.jpg', '8.1', NOW(), '2022-05-31'),
(29, 'The Moment Hotel', '7370 Sunset Boulevard, Hollywood, Los Angeles (CA), United States, 90046', 2, '282.00', '29.jpg', '7.5', NOW(), '2022-05-21'),
(30, 'Omni Los Angeles at California Plaza', '251 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 2, '263.00', '30.jpg', '8.6', NOW(), '2022-07-15'),
(31, 'The Hoxton Downtown LA', '1060 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 2, '235.00', '31.jpg', '9.2', NOW(), '2022-12-31'),
(32, 'Andaz San Diego - a concept by Hyatt', '600 F Street, San Diego City Center, San Diego (CA), United States, 92101', 3, '399.00', '32.jpg', '8.6', NOW(), '2022-10-30'),
(33, 'Courtyard San Diego Downtown', '530 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 3, '314.00', '33.jpg', '8.6', NOW(), '2022-10-31'),
(34, 'THE US GRANT, a Luxury Collection Hotel, San Diego', '326 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 3, '602.00', '34.jpg', '8.4', NOW(), '2022-07-01'),
(35, 'The Westgate Hotel', '1055 2nd Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '429.00', '35.jpg', '8.3', NOW(), '2022-08-23'),
(36, 'Residence Inn San Diego Downtown/Gaslamp Quarter', '356 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '949.00', '36.jpg', '9.0', NOW(), '2022-06-22'),
(37, 'Best Western Mission Bay', '2575 Clairemont Drive, Bay Park, San Diego (CA), United States, 92117', 3, '129.00', '37.jpg', '7.9', '2022-05-09', '2022-05-26'),
(38, 'Kona Kai Resort & Spa, a Noble House Resort', '1551 Shelter Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92106', 3, '429.00', '38.jpg', '8.5', '2022-06-21', '2022-07-15'),
(39, 'Embassy Suites San Diego La Jolla Hotel', '4550 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92122', 3, '220.00', '39.jpg', '8.7', NOW(), '2022-05-29'),
(40, 'Homewood Suites by Hilton San Diego-Del Mar - CA Hotel', '11025 Vista Sorrento Parkway, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 3, '248.00', '40.jpg', '8.6', NOW(), '2022-05-23'),
(41, 'Wyndham San Diego Bayside', '1355 North Harbor Dr., San Diego City Center, San Diego (CA), United States, 92101', 3, '288.00', '41.jpg', '8.0', NOW(), '2022-05-29'),
(42, 'Hotel Indigo San Diego - Gaslamp Quarter', '509 9th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '409.00', '42.jpg', '8.6', NOW(), '2022-05-31'),
(43, 'Best Western Plus Bayside Inn', '555 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101-3414', 3, '178.00', '43.jpg', '8.8', NOW(), '2022-05-15'),
(44, 'Country Inn & Suites by Radisson, San Diego North', '5975 Lusk Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 3, '238.00', '44.jpg', '8.4', NOW(), '2022-05-24'),
(45, 'Doubletree San Diego Mission Valley Hotel', '7450 Hazard Center Drive, Mission Valley East, San Diego (CA), United States, 92108', 3, '255.00', '45.jpg', '8.3', NOW(), '2022-05-13'),
(46, 'Courtyard San Diego Gaslamp/Convention Center', '453 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '902.00', '46.jpg', '9.1', NOW(), '2022-05-06'),
(47, 'Holiday Inn Express San Diego Seaworld Beach Area', '4540 Mission Bay Drive, Pacific Beach, San Diego (CA), United States, 92109', 3, '180.00', '47.jpg', '7.6', NOW(), '2022-05-07'),
(48, 'San Diego Marriott La Jolla', '4240 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92037', 3, '269.00', '48.jpg', '8.0', NOW(), '2022-05-06'),
(49, 'Residence Inn San Diego La Jolla', '8901 Gilman Drive, La Jolla, San Diego (CA), United States, 92037', 3, '332.00', '49.jpg', '9.0', NOW(), '2022-05-14'),
(50, 'The Westin San Diego Gaslamp Quarter', '910 Broadway Circle, San Diego City Center, San Diego (CA), United States, 92101', 3, '441.00', '50.jpg', '8.4', NOW(), '2022-05-09'),
(51, 'Carte Hotel San Diego Downtown, Curio Collection by Hilton', '401 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101', 3, '470.00', '51.jpg', '8.7', NOW(), '2022-05-06'),
(52, 'DoubleTree by Hilton San Diego - Hotel Circle', '1515 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 3, '189.00', '52.jpg', '7.7', NOW(), '2022-05-22'),
(53, 'InterContinental San Diego', '901 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 3, '449.00', '53.jpg', '8.8', NOW(), '2022-05-25'),
(54, 'Hampton Inn San Diego Downtown Hotel', '1531 Pacific Highway, San Diego City Center, San Diego (CA), United States, 92101', 3, '345.00', '54.jpg', '8.3', NOW(), '2022-05-21'),
(55, 'Moxy San Diego Downtown/Gaslamp Quarter', '831 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '379.00', '55.jpg', '9.8', NOW(), '2022-07-23'),
(56, 'Pendry San Diego', '550 J Street, San Diego City Center, San Diego (CA), United States, 92101', 3, '489.00', '56.jpg', '9.1', NOW(), '2022-05-22'),
(57, 'Catamaran Resort Hotel and Spa', '3999 Mission Boulevard, Pacific Beach, San Diego (CA), United States, 92109', 3, '389.00', '57.jpg', '8.0', NOW(), '2022-05-24'),
(58, 'Kimpton Hotel Palomar San Diego', '1047 5th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 3, '352.00', '58.jpg', '7.8', NOW(), '2022-05-21'),
(59, 'DoubleTree by Hilton Hotel San Diego - Del Mar', '11915 El Camino Real, Del Mar / Carmel Valley, San Diego (CA), United States, 92130-2539', 5, '245.00', '59.jpg', '8.1', NOW(), '2022-05-15'),
(60, 'Holiday Inn San Diego Bayside', '4875 North Harbor Drive, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 3, '225.00', '60.jpg', '8.0', NOW(), '2022-05-14'),
(61, 'The Donatello', '501 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '276.00', '61.jpg', '8.7', NOW(), '2022-05-12'),
(62, 'The Inn at Union Square', '440 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '260.00', '62.jpg', '9.1', NOW(), '2022-05-10'),
(63, 'Omni San Francisco Hotel', '500 California Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 4, '203.00', '63.jpg', '9.2', NOW(), '2022-05-13'),
(64, 'Hyatt Centric Fishermans Wharf', '555 North Point St, Fisherman Wharf, San Francisco (CA), United States, 94133', 4, '299.00', '64.jpg', '8.3', NOW(), '2022-05-17'),
(65, 'Hyatt Place Emeryville/San Francisco Bay Area', '5700 Bay Street, Oakland, San Francisco (CA), United States, 94608', 4, '199.00', '65.jpg', '8.6', NOW(), '2022-05-18'),
(66, 'Hotel Abri Union Square', '127 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '191.00', '66.jpg', '8.3', NOW(), '2022-05-19'),
(67, 'Extended Stay America Premier Suites - Oakland - Alameda', '1350 Marina Village Pkwy, Oakland, San Francisco (CA), United States, 94501', 4, '138.00', '67.jpg', '7.2', NOW(), '2022-05-22'),
(68, 'Axiom Hotel San Francisco', '28 Cyril Magnin ST, San Francisco Downtown, San Francisco (CA), United States, 94109', 4, '239.00', '68.jpg', '8.3', NOW(), '2022-05-31'),
(69, 'Courtyard San Francisco Union Square', '761 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 4, '219.00', '69.jpg', '7.8', NOW(), '2022-05-31'),
(70, 'Chancellor Hotel on Union Square', '433 Powell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '182.00', '70.jpg', '9.3', NOW(), '2022-05-28'),
(71, 'Holiday Inn San Francisco - Golden Gateway', '1500 Van Ness Avenue, San Francisco Downtown, San Francisco (CA), United States, 94109', 4, '206.00', '71.jpg', '8.0', NOW(), '2022-05-07'),
(72, 'Executive Inn & Suites Oakland', '1755 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 4, '161.00', '72.jpg', '8.6', NOW(), '2022-05-09'),
(73, 'Handlery Union Square Hotel', '351 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '244.00', '73.jpg', '8.3', NOW(), '2022-05-15'),
(74, 'Hampton Inn San Francisco Downtown Convention Center', '942 Mission Street, South of Market, San Francisco (CA), United States, 94103', 4, '220.00', '74.jpg', '8.4', NOW(), '2022-05-14'),
(75, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel', '1800 Powell Street, Oakland, San Francisco (CA), United States, 94608', 4, '203.00', '75.jpg', '8.2', NOW(), '2022-05-12'),
(76, 'Executive Hotel Vintage Court', '650 Bush Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 4, '199.00', '76.jpg', '7.7', NOW(), '2022-05-09'),
(77, 'The Pickwick Hotel', '85 Fifth Street, South of Market, San Francisco (CA), United States, 94103', 4, '155.00', '77.jpg', '7.5', NOW(), '2022-05-07'),
(78, 'The Westin St. Francis San Francisco on Union Square', '335 Powell Street , San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '206.00', '78.jpg', '8.3', NOW(), '2022-05-06'),
(79, 'InterContinental San Francisco', '888 Howard Street, South of Market, San Francisco (CA), United States, 94103', 4, '246.00', '79.jpg', '8.5', NOW(), '2022-05-12'),
(80, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham', '105 Rockaway Beach Ave, Pacifica, San Francisco (CA), United States, 94044', 4, '189.00', '80.jpg', '7.9', NOW(), '2022-05-15'),
(81, 'Hotel Zephyr San Francisco', '250 Beach Street, Fisherman Wharf, San Francisco (CA), United States, 94133', 4, '341.00', '81.jpg', '8.3', NOW(), '2022-05-13'),
(82, 'Grand Hyatt at SFO', '55 South McDonnell Rd, San Francisco International Airport, San Francisco (CA), United States, 94128', 4, '289.00', '82.jpg', '9.3', NOW(), '2022-05-16'),
(83, 'Embassy Suites San Rafael Marin County Hotel', '101 Mcinnis Parkway, Marin County, San Francisco (CA), United States, 94903', 4, '194.00', '83.jpg', '8.2', NOW(), '2022-05-19'),
(84, 'Casa Madrona Hotel and Spa', '801 Bridgeway, Marin County, San Francisco (CA), United States, 94965', 4, '416.00', '84.jpg', '8.5',  NOW(), '2022-05-21'),
(85, 'Courtyard Oakland Downtown', '988 Broadway, Oakland, San Francisco (CA), United States, 94607', 4, '191.00', '85.jpg', '8.5', NOW(), '2022-05-22'),
(86, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat', '562 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 4, '203.00', '86.jpg', '9.0', NOW(), '2022-05-14'),
(87, 'Inn Redwood City', '1818 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063-2111', 4, '127.00', '87.jpg', '7.7', NOW(), '2022-05-13'),
(88, 'Club Quarters Hotel in San Francisco', '424 Clay Street, San Francisco Downtown, San Francisco (CA), United States, 94111', 4, '188.00', '88.jpg', '8.3', NOW(), '2022-05-17'),
(89, 'Hotel Zoe Fisherman Wharf', '425 NORTH POINT STREET, Fisherman Wharf, San Francisco (CA), United States, 94133', 4, '281.00', '89.jpg', '8.6', NOW(), '2022-05-19'),
(90, 'Hyatt House Emeryville San Francisco Bay Area', '5800 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 4, '196.00', '90.jpg', '8.6', NOW(), '2022-05-22'),
(91, 'Ramada by Wyndham Sunnyvale Silicon Valley', '1217 Wildwood Avenue, Santa Clara, San Jose (CA), United States, 94089', 5, '143.00', '91.jpg', '7.7', NOW(), '2022-05-26'),
(92, 'AC Hotel by Marriott Palo Alto', '744 San Antonio Road, Mountain View, San Jose (CA), United States, 94303', 5, '269.00', '92.jpg', '9.0', NOW(), '2022-05-26'),
(93, 'Residence Inn by Marriott San Jose North/Silicon Valley', '656 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 5, '328.00', '93.jpg', '9.1', NOW(), '2022-05-26'),
(94, 'Hyatt Regency Santa Clara', '5101 Great America Parkway, Santa Clara, San Jose (CA), United States, 95054', 5, '220.00', '94.jpg', '8.6', NOW(), '2022-05-23'),
(95, 'Sonesta ES Suites Sunnyvale', '900 Hamlin Court, Sunnyvale, San Jose (CA), United States, 94089', 5, '269.00', '95.jpg', '8.6', NOW(), '2022-05-28'),
(96, 'Residence Inn San Jose Cupertino', '19429 Stevens Creek Boulevard, Cupertino, San Jose (CA), United States, 95014', 5, '247.00', '96.jpg', '9.8', NOW(), '2022-05-21'),
(97, 'The Westin Palo Alto', '675 EL CAMINO REAL, Palo Alto, San Jose (CA), United States', 5, '512.00', '97.jpg', '8.8', NOW(), '2022-05-31'),
(98, 'Best Western Lanai Garden Inn and Suites', '1575 Tully Road, San Jose City Center, San Jose (CA), United States, 95122-2459', 5, '126.00', '98.jpg', '8.1', NOW(), '2022-05-28'),
(99, 'Quality Inn & Suites Silicon Valley', '2930 El Camino Real, Santa Clara, San Jose (CA), United States, 95051', 5, '90.00', '99.jpg', '7.0', NOW(), '2022-05-09'),
(100, 'Country Inn & Suites by Radisson, San Jose International Airport, CA', '1350 N 4th St, San Jose City Center, San Jose (CA), United States, 95112', 5, '122.00', '100.jpg', '8.4', NOW(), '2022-05-10'),
(101, 'Homewood Suites by Hilton Palo Alto', '4329 El Camino Real, Mountain View, San Jose (CA), United States, 94306', 5, '225.00', '101.jpg', '9.0', NOW(), '2022-05-14'),
(102, 'Residence Inn Palo Alto Mountain View', '1854 El Camino Real West, Mountain View, San Jose (CA), United States, 94040', 5, '949.00', '102.jpg', '8.9', NOW(), '2022-05-19'),
(103, 'Holiday Inn Express Sunnyvale - Silicon Valley', '852 West El Camino Real, Mountain View, San Jose (CA), United States, 94087', 5, '145.00', '103.jpg', '8.9', NOW(), '2022-05-16'),
(104, 'The Palo Alto Inn', '4238 El Camino Real, Mountain View, San Jose (CA), United States, CA 94306', 5, '169.00', '104.jpg', '8.2', NOW(), '2022-05-14'),
(105, 'Hotel Valencia Santana Row', '355 Santana Row, San Jose City Center, San Jose (CA), United States, 95128', 5, '429.00', '105.jpg', '8.6', NOW(), '2022-05-27'),
(106, 'Crowne Plaza Cabana Hotel', '4290 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 5, '276.00', '106.jpg', '8.3', NOW(), '2022-05-18'),
(107, 'Juniper Hotel Cupertino A Curio Collection By Hilton', '10050 S. De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 5, '341.00', '107.jpg', '8.8', NOW(), '2022-05-17'),
(108, 'Comfort Inn Palo Alto', '3945 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 5, '149.00', '108.jpg', '8.1', NOW(), '2022-05-11'),
(109, 'AC Hotel by Marriott Sunnyvale Moffett Park', '1235 Bordeaux Drive, Sunnyvale, San Jose (CA), United States', 5, '212.00', '109.jpg', '7.2', NOW(), '2022-05-22'),
(110, 'Extended Stay America Premier Suites - San Jose - Airport', '55 E. Brokaw Road, San Jose City Center, San Jose (CA), United States, 95112', 5, '147.00', '110.jpg', '7.5', NOW(), '2022-05-21'),
(111, 'AC Hotel by Marriott San Jose Santa Clara', '2970 Lakeside Drive, Santa Clara, San Jose (CA), United States, 95054', 5, '279.00', '111.jpg', '9.1', NOW(), '2022-05-26'),
(112, 'Hampton Inn & Suites San Jose Airport, CA', '2088 North First Street, San Jose City Center, San Jose (CA), United States, 95131', 5, '152.00', '112.jpg', '10.0', NOW(), '2022-05-23'),
(113, 'Larkspur Landing Campbell - An All-Suite Hotel', '550 West Hamilton Avenue, San Jose City Center, San Jose (CA), United States, 95008', 5, '199.00', '113.jpg', '8.5', NOW(), '2022-05-29'),
(114, 'Holiday Inn Express Hotel & Suites Santa Clara', '1700 El Camino Real, Santa Clara, San Jose (CA), United States, 95050', 5, '165.00', '114.jpg', '8.9', NOW(), '2022-05-27'),
(115, 'Hotel Zico', '200 East El Camino Real, Mountain View, San Jose (CA), United States, 94040', 5, '167.00', '115.jpg', '8.3', NOW(), '2022-05-29'),
(116, 'Best Western University Inn Santa Clara', '1655 El Camino Real, Santa Clara, San Jose (CA), United States, 95050-4158', 5, '169.00', '116.jpg', '8.4', NOW(), '2022-05-15'),
(117, 'Aloft Santa Clara', '510 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 5, '168.00', '117.jpg', '8.7', NOW(), '2022-05-13'),
(118, 'Four Points by Sheraton San Jose Airport', '1471 NORTH 4TH STREET, San Jose City Center, San Jose (CA), United States, 95112', 5, '151.00', '118.jpg', '9.0', NOW(), '2022-05-14'),
(119, 'Silicon Way Inn', '331 East Weddell Drive, Sunnyvale, San Jose (CA), United States, CA 94089', 5, '69.00', '119.jpg', '7.8', NOW(), '2022-05-26'),
(120, 'Residence Inn Sunnyvale Silicon Valley II', '1080 Stewart Drive, Sunnyvale, San Jose (CA), United States, 94086', 5, '333.00', '120.jpg', '8.6', NOW(), '2022-05-18'),
(121, 'Holiday Inn Express Hotel & Suites Santa Cruz', '1410 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '184.00', '121.jpg', '8.1', NOW(), '2022-05-10'),
(122, 'Bay Front Inn - Downtown Santa Cruz', '325 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '485.00', '122.jpg', '6.7', NOW(), '2022-05-27'),
(123, 'Hilton Santa Cruz/Scotts Valley', '6001 La Madrona Drive, Scotts Valley, Scotts Valley (CA), United States, 95066', 1, '243.00', '123.jpg', '8.7', NOW(), '2022-05-17'),
(124, 'Quality Inn Santa Cruz', '1101 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '222.00', '124.jpg', '7.9', NOW(), '2022-05-15'),
(125, 'Budget Inn Santa Cruz', '110 San Lorenzo Boulevard, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '119.00', '125.jpg', '8.1', NOW(), '2022-05-21'),
(126, 'Ocean Echo Inn & Beach Cottages', '401 Johans Beach Drive, Twin Lakes, Santa Cruz (CA), United States, CA 95062', 1, '369.00', '126.jpg', '8.8', NOW(), '2022-05-23'),
(127, 'Hampton Inn Santa Cruz West', '2424 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '248.00', '127.jpg', '8.5', NOW(), '2022-05-27'),
(128, 'Best Western Inn', '126 Plymouth Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060-2932', 1, '259.00', '128.jpg', '7.8', NOW(), '2022-05-29'),
(129, 'Pacific Blue Inn', '636 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '259.00', '129.jpg', '8.8', NOW(), '2022-05-31'),
(130, 'Ocean Gate Inn', '111 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '130.00', '130.jpg', '6.9', NOW(), '2022-05-15'),
(131, 'Beachview Inn', '50 Front Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '155.00', '131.jpg', '8.9', NOW(), '2022-05-22'),
(132, 'Motel Santa Cruz Santa Cruz', '370 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '119.00', '132.jpg', '5.3', NOW(), '2022-05-21'),
(133, 'Comfort Inn Beach/Boardwalk Area', '314 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '217.00', '133.jpg', '7.7', NOW(), '2022-05-20'),
(134, 'Hyatt Place Santa Cruz', '407 BROADWAY AVENUE, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '299.00', '134.jpg', '9.0', NOW(), '2022-05-19'),
(135, 'Fairfield Inn & Suites Santa Cruz - Capitola', '1255 41st Avenue, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '135.jpg', '9.0', NOW(), '2022-05-18'),
(136, 'Fern River Resort', '5250 Highway 9, Felton, Felton (CA), United States, CA 95018', 1, '167.00', '136.jpg', '8.9', NOW(), '2022-05-14'),
(137, 'Comfort Inn Santa Cruz', '110 Plymouth St., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '137.jpg', '8.0', NOW(), '2022-05-11'),
(138, 'Fairfield Inn & Suites Santa Cruz', '2956 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '218.00', '138.jpg', '9.1', NOW(), '2022-05-13'),
(139, 'Super 8 By Wyndham Santa Cruz/Beach Boardwalk East', '338 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '407.00', '139.jpg', '7.7', NOW(), '2022-05-22'),
(140, 'Chaminade Resort & Spa', 'One Chaminade Lane, Live Oak, Santa Cruz (CA), United States, 95065', 1, '439.00', '140.jpg', '7.9', NOW(), '2022-05-18'),
(141, 'Fireside Inn By The Beach Boardwalk & Bowling', '311 2nd Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '185.00', '141.jpg', '7.2', NOW(), '2022-05-07'),
(142, 'Best Western Plus Capitola By-the-Sea Inn and Suites', '1435 41st Ave, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '142.jpg', '8.9', NOW(), '2022-05-09'),
(143, 'Rio Vista Inn & Suites Santa Cruz', '611 Third Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '179.00', '143.jpg', '8.8', NOW(), '2022-05-14'),
(144, 'Hotel Paradox, Autograph Collection', '611 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '314.00', '144.jpg', '9.0', NOW(), '2022-05-16'),
(145, 'Mission Inn', '2250 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '189.00', '145.jpg', '8.5', NOW(), '2022-05-28'),
(146, 'Inn at Depot Hill', '250 Monterey Avenue, Capitola, Capitola (CA), United States, 95010', 1, '340.00', '146.jpg', '10.0', NOW(), '2022-05-16'),
(147, 'The Inn at Pasatiempo', '555 Highway 17, Pasatiempo, Santa Cruz (CA), United States, CA 95060', 1, '239.00', '147.jpg', '8.4', NOW(), '2022-05-18'),
(148, 'Howard Johnson by Wyndham Santa Cruz Beach Boardwalk', '130 West Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '136.00', '148.jpg', '7.3', NOW(), '2022-05-21'),
(149, 'Capitola Venetian Hotel', '1500 Wharf Road, Capitola, Capitola (CA), United States, CA 95010', 1, '340.00', '149.jpg', '8.5', NOW(), '2022-05-29'),
(150, 'Hampton Inn Santa Cruz', '1505 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '150.jpg', '8.2', NOW(), '2022-05-31');

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
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `restaurant_image` text DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_image`, `hotel_id`) VALUES
(1, 'El Borrego', 'El Borrego.jpg', 1),
(2, 'Loaded Cafe', 'Loaded Cafe.jpg', 1),
(3, 'Saigon Dish', 'Saigon Dish.jpg', 1),
(4, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 2),
(5, 'Bottega Louie', 'Bottega Louie.jpg', 2),
(6, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 2),
(7, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 3),
(8, 'Bottega Louie', 'Bottega Louie.jpg', 3),
(9, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 3),
(10, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 4),
(11, 'Bottega Louie', 'Bottega Louie.jpg', 4),
(12, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 4),
(13, 'Yamashiro Hollywood', 'Yamashiro.jpg', 5),
(14, '25 Degrees', '25 Degrees.jpg', 5),
(15, 'Hard Rock Cafe', 'Hard Rock Cafe.jpg', 5),
(16, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 6),
(17, 'Bottega Louie', 'Bottega Louie.jpg', 6),
(18, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 6),
(19, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 7),
(20, 'Bottega Louie', 'Bottega Louie.jpg', 7),
(21, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 7),
(22, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 8),
(23, 'Bottega Louie', 'Bottega Louie.jpg', 8),
(24, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 8),
(25, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 9),
(26, 'Bottega Louie', 'Bottega Louie.jpg', 9),
(27, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 9),
(28, 'Juniper', 'Juniper.jpg', 10),
(29, 'Harriets Rooftop', 'Harriet Rooftop.jpg', 10),
(30, 'Tesse', 'Tesse.jpg', 10),
(31, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 11),
(32, 'Bottega Louie', 'Bottega Louie.jpg', 11),
(33, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 11),
(34, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 12),
(35, 'Bottega Louie', 'Bottega Louie.jpg', 12),
(36, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 12),
(37, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 13),
(38, 'Bottega Louie', 'Bottega Louie.jpg', 13),
(39, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 13),
(40, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 14),
(41, 'Bottega Louie', 'Bottega Louie.jpg', 14),
(42, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 14),
(43, 'Del Friscos Grille', 'Del Frisco.jpg', 15),
(44, 'True Food Kitchen', 'True Food.jpg', 15),
(45, 'The Lobster', 'The Lobster.jpg', 15),
(46, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 16),
(47, 'Bottega Louie', 'Bottega Louie.jpg', 16),
(48, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 16),
(49, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 17),
(50, 'Bottega Louie', 'Bottega Louie.jpg', 17),
(51, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 17),
(52, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 18),
(53, 'Bottega Louie', 'Bottega Louie.jpg', 18),
(54, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 18),
(55, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 19),
(56, 'Bottega Louie', 'Bottega Louie.jpg', 19),
(57, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 19),
(58, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 20),
(59, 'Bottega Louie', 'Bottega Louie.jpg', 20),
(60, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 20),
(61, 'Above SIXTY', 'Above SIXTY.jpg', 21),
(62, 'Caulfields Bar & Dining Room', 'Caulfield.jpg', 21),
(63, 'Spago', 'Spago.jpg', 21),
(64, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 22),
(65, 'Bottega Louie', 'Bottega Louie.jpg', 22),
(66, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 22),
(67, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 23),
(68, 'Bottega Louie', 'Bottega Louie.jpg', 23),
(69, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 23),
(70, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 24),
(71, 'Bottega Louie', 'Bottega Louie.jpg', 24),
(72, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 24),
(73, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 25),
(74, 'Bottega Louie', 'Bottega Louie.jpg', 25),
(75, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 25),
(76, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 26),
(77, 'Bottega Louie', 'Bottega Louie.jpg', 26),
(78, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 26),
(79, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 27),
(80, 'Bottega Louie', 'Bottega Louie.jpg', 27),
(81, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 27),
(82, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 28),
(83, 'Bottega Louie', 'Bottega Louie.jpg', 28),
(84, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 28),
(85, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 29),
(86, 'Bottega Louie', 'Bottega Louie.jpg', 29),
(87, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 29),
(88, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 30),
(89, 'Bottega Louie', 'Bottega Louie.jpg', 30),
(90, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 30),
(91, 'Cabra', 'Cabra.jpg', 31),
(92, 'Sibling Rival', 'Sibling Rival.jpg', 31),
(93, 'Bottega Louie', 'Bottega Louie.jpg', 31),
(94, 'Sushi Ota', 'Sushi Ota.jpg', 32),
(95, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 32),
(96, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 32),
(97, 'Sushi Ota', 'Sushi Ota.jpg', 33),
(98, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 33),
(99, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 33),
(100, 'Sushi Ota', 'Sushi Ota.jpg', 34),
(101, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 34),
(102, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 34),
(103, 'Le Fontainebleau', 'Le Fontainebleau.jpg', 35),
(104, 'The Westgate Room', 'The Westgate Room.jpg', 35),
(105, 'The WestBean Coffee Roasters', 'Westbean.jpg', 35),
(106, 'Sushi Ota', 'Sushi Ota.jpg', 36),
(107, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 36),
(108, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 36),
(109, 'Sushi Ota', 'Sushi Ota.jpg', 37),
(110, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 37),
(111, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 37),
(112, 'Sushi Ota', 'Sushi Ota.jpg', 38),
(113, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 38),
(114, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 38),
(115, 'Sushi Ota', 'Sushi Ota.jpg', 39),
(116, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 39),
(117, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 39),
(118, 'Bistro 39', 'Bistro 39.jpg', 40),
(119, 'NY Garden Deli & Cafe', 'NY Garden.jpg', 40),
(120, 'Moms Pizza and Pasta', 'Moms Pizza.jpg', 40),
(121, 'Sushi Ota', 'Sushi Ota.jpg', 41),
(122, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 41),
(123, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 41),
(124, 'Sushi Ota', 'Sushi Ota.jpg', 42),
(125, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 42),
(126, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 42),
(127, 'Sushi Ota', 'Sushi Ota.jpg', 43),
(128, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 43),
(129, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 43),
(130, 'Sushi Ota', 'Sushi Ota.jpg', 44),
(131, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 44),
(132, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 44),
(133, 'Wood Ranch BBQ & Grill', 'Wood Ranch.jpeg', 45),
(134, 'True Food Kitchen', 'True Food Kitchen.jpeg', 45),
(135, 'Lazy Dog', 'Lazy Dog.jpeg', 45),
(136, 'Sushi Ota', 'Sushi Ota.jpg', 46),
(137, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 46),
(138, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 46),
(139, 'Sushi Ota', 'Sushi Ota.jpg', 47),
(140, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 47),
(141, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 47),
(142, 'Sushi Ota', 'Sushi Ota.jpg', 48),
(143, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 48),
(144, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 48),
(145, 'Sushi Ota', 'Sushi Ota.jpg', 49),
(146, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 49),
(147, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 49),
(148, 'Tapas & Beers', 'Tapas.jpeg', 50),
(149, 'Werewolf', 'Werewolf.jpeg', 50),
(150, 'Sushi 2', 'Sushi 2.jpeg', 50),
(151, 'Sushi Ota', 'Sushi Ota.jpg', 51),
(152, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 51),
(153, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 51),
(154, 'Sushi Ota', 'Sushi Ota.jpg', 52),
(155, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 52),
(156, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 52),
(157, 'Sushi Ota', 'Sushi Ota.jpg', 53),
(158, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 53),
(159, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 53),
(160, 'Sushi Ota', 'Sushi Ota.jpg', 54),
(161, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 54),
(162, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 54),
(163, 'Sushi Ota', 'Sushi Ota.jpg', 55),
(164, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 55),
(165, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 55),
(166, 'Sushi Ota', 'Sushi Ota.jpg', 56),
(167, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 56),
(168, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 56),
(169, 'Sushi Ota', 'Sushi Ota.jpg', 57),
(170, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 57),
(171, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 57),
(172, 'Sushi Ota', 'Sushi Ota.jpg', 58),
(173, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 58),
(174, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 58),
(175, 'Sushi Ota', 'Sushi Ota.jpg', 59),
(176, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 59),
(177, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 59),
(178, 'Sushi Ota', 'Sushi Ota.jpg', 60),
(179, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 60),
(180, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 60),
(181, 'Happy Lamb Hot Pot', 'Happy Lamb Hot Pot.jpeg', 61),
(182, 'Honey Honey Cafe & Crepery', 'Honey Honey Cafe.jpeg', 61),
(183, 'Ryokos', 'Ryokos.jpeg', 61),
(184, 'Foreign Cinema', 'Foreign Cinema.jpg', 62),
(185, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 62),
(186, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 62),
(187, 'Foreign Cinema', 'Foreign Cinema.jpg', 63),
(188, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 63),
(189, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 63),
(190, 'Foreign Cinema', 'Foreign Cinema.jpg', 64),
(191, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 64),
(192, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 64),
(193, 'Honor Kitchen & Cocktails', 'Honor Kitchen.jpeg', 65),
(194, 'Doyle Street Cafe', 'Doyle Street Cafe.jpeg', 65),
(195, 'Branch Line Pub', 'Branch Line Pub.jpeg', 65),
(196, 'Foreign Cinema', 'Foreign Cinema.jpg', 66),
(197, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 66),
(198, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 66),
(199, 'Foreign Cinema', 'Foreign Cinema.jpg', 67),
(200, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 67),
(201, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 67),
(202, 'Foreign Cinema', 'Foreign Cinema.jpg', 68),
(203, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 68),
(204, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 68),
(205, 'Foreign Cinema', 'Foreign Cinema.jpg', 69),
(206, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 69),
(207, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 69),
(208, 'Sears Fine Food', 'Sears Fine Food.jpeg', 70),
(209, 'Boba Guys', 'Boba Guys.jpeg', 70),
(210, 'Golden Gate Tap Room', 'Golden Gate Tap Room.jpeg', 70),
(211, 'Foreign Cinema', 'Foreign Cinema.jpg', 71),
(212, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 71),
(213, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 71),
(214, 'Foreign Cinema', 'Foreign Cinema.jpg', 72),
(215, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 72),
(216, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 72),
(217, 'Foreign Cinema', 'Foreign Cinema.jpg', 73),
(218, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 73),
(219, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 73),
(220, 'Foreign Cinema', 'Foreign Cinema.jpg', 74),
(221, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 74),
(222, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 74),
(223, 'Third Culture Bakery', 'Third Culture Bakery.jpeg', 75),
(224, 'Chevys Fresh Mex', 'Chevys Fresh Mex.jpeg', 75),
(225, 'Wallys Cafe', 'Wallys Cafe.jpeg', 75),
(226, 'Foreign Cinema', 'Foreign Cinema.jpg', 76),
(227, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 76),
(228, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 76),
(229, 'Foreign Cinema', 'Foreign Cinema.jpg', 77),
(230, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 77),
(231, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 77),
(232, 'Foreign Cinema', 'Foreign Cinema.jpg', 78),
(233, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 78),
(234, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 78),
(235, 'Foreign Cinema', 'Foreign Cinema.jpg', 79),
(236, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 79),
(237, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 79),
(238, 'Moonraker Restaurant', 'Moonraker Restaurant.jpeg', 80),
(239, 'Breakers Breakfast', 'Breakers Breakfast.jpeg', 80),
(240, 'Nicks Seashore Restaurant', 'Nicks Seashore Restaurant.jpeg', 80),
(241, 'Foreign Cinema', 'Foreign Cinema.jpg', 81),
(242, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 81),
(243, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 81),
(244, 'Foreign Cinema', 'Foreign Cinema.jpg', 82),
(245, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 82),
(246, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 82),
(247, 'Foreign Cinema', 'Foreign Cinema.jpg', 83),
(248, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 83),
(249, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 83),
(250, 'Foreign Cinema', 'Foreign Cinema.jpg', 84),
(251, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 84),
(252, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 84),
(253, 'Foreign Cinema', 'Foreign Cinema.jpg', 85),
(254, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 85),
(255, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 85),
(256, 'Foreign Cinema', 'Foreign Cinema.jpg', 86),
(257, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 86),
(258, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 86),
(259, 'Foreign Cinema', 'Foreign Cinema.jpg', 87),
(260, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 87),
(261, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 87),
(262, 'Foreign Cinema', 'Foreign Cinema.jpg', 88),
(263, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 88),
(264, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 88),
(265, 'Foreign Cinema', 'Foreign Cinema.jpg', 89),
(266, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 89),
(267, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 89),
(268, 'Foreign Cinema', 'Foreign Cinema.jpg', 90),
(269, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 90),
(270, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 90),
(271, 'Sifu Wong Kitchen', 'Sifu Wong Kitchen.jpeg', 91),
(272, 'HiroNori Craft Ramen', 'HiroNori Craft Ramen.jpeg', 91),
(273, 'Faultline Brewing Company', 'Faultline Brewing Company.jpeg', 91),
(274, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 92),
(275, 'A Slice of New York', 'A Slice of New York.jpg', 92),
(276, 'Philz Coffee', 'Philz Coffee.jpg', 92),
(277, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 93),
(278, 'A Slice of New York', 'A Slice of New York.jpg', 93),
(279, 'Philz Coffee', 'Philz Coffee.jpg', 93),
(280, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 94),
(281, 'A Slice of New York', 'A Slice of New York.jpg', 94),
(282, 'Philz Coffee', 'Philz Coffee.jpg', 94),
(283, 'DishDash', 'DishDash.jpeg', 95),
(284, 'Dish N Dash', 'Dish N Dash.jpeg', 95),
(285, 'Mangal Turkish Grill', 'Mangal Turkish Grill.jpeg', 95),
(286, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 96),
(287, 'A Slice of New York', 'A Slice of New York.jpg', 96),
(288, 'Philz Coffee', 'Philz Coffee.jpg', 96),
(289, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 97),
(290, 'A Slice of New York', 'A Slice of New York.jpg', 97),
(291, 'Philz Coffee', 'Philz Coffee.jpg', 97),
(292, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 98),
(293, 'A Slice of New York', 'A Slice of New York.jpg', 98),
(294, 'Philz Coffee', 'Philz Coffee.jpg', 98),
(295, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 99),
(296, 'A Slice of New York', 'A Slice of New York.jpg', 99),
(297, 'Philz Coffee', 'Philz Coffee.jpg', 99),
(298, 'Fourth Street Bowl', 'Fourth Street Bowl.jpeg', 100),
(299, 'Izakaya', 'Izakaya.jpg', 100),
(300, 'LUNA Mexican Kitchen', 'LUNA Mexican Kitchen.jpeg', 100),
(301, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 101),
(302, 'A Slice of New York', 'A Slice of New York.jpg', 101),
(303, 'Philz Coffee', 'Philz Coffee.jpg', 101),
(304, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 102),
(305, 'A Slice of New York', 'A Slice of New York.jpg', 102),
(306, 'Philz Coffee', 'Philz Coffee.jpg', 102),
(307, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 103),
(308, 'A Slice of New York', 'A Slice of New York.jpg', 103),
(309, 'Philz Coffee', 'Philz Coffee.jpg', 103),
(310, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 104),
(311, 'A Slice of New York', 'A Slice of New York.jpg', 104),
(312, 'Philz Coffee', 'Philz Coffee.jpg', 104),
(313, 'Oveja Negra', 'Oveja Negra.jpeg', 105),
(314, 'Smitten Ice Cream', 'Smitten Ice Cream.jpeg', 105),
(315, 'V Bar', 'V Bar.jpeg', 105),
(316, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 106),
(317, 'A Slice of New York', 'A Slice of New York.jpg', 106),
(318, 'Philz Coffee', 'Philz Coffee.jpg', 106),
(319, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 107),
(320, 'A Slice of New York', 'A Slice of New York.jpg', 107),
(321, 'Philz Coffee', 'Philz Coffee.jpg', 107),
(322, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 108),
(323, 'A Slice of New York', 'A Slice of New York.jpg', 108),
(324, 'Philz Coffee', 'Philz Coffee.jpg', 108),
(325, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 109),
(326, 'A Slice of New York', 'A Slice of New York.jpg', 109),
(327, 'Philz Coffee', 'Philz Coffee.jpg', 109),
(328, 'Sam & Curry', 'Sam & Curry.jpeg', 110),
(329, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpeg', 110),
(330, 'Smoking Pig BBQ', 'Smoking Pig BBQ.jpeg', 110),
(331, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 111),
(332, 'A Slice of New York', 'A Slice of New York.jpg', 111),
(333, 'Philz Coffee', 'Philz Coffee.jpg', 111),
(334, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 112),
(335, 'A Slice of New York', 'A Slice of New York.jpg', 112),
(336, 'Philz Coffee', 'Philz Coffee.jpg', 112),
(337, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 113),
(338, 'A Slice of New York', 'A Slice of New York.jpg', 113),
(339, 'Philz Coffee', 'Philz Coffee.jpg', 113),
(340, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 114),
(341, 'A Slice of New York', 'A Slice of New York.jpg', 114),
(342, 'Philz Coffee', 'Philz Coffee.jpg', 114),
(343, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 115),
(344, 'A Slice of New York', 'A Slice of New York.jpg', 115),
(345, 'Philz Coffee', 'Philz Coffee.jpg', 115),
(346, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 116),
(347, 'A Slice of New York', 'A Slice of New York.jpg', 116),
(348, 'Philz Coffee', 'Philz Coffee.jpg', 116),
(349, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 117),
(350, 'A Slice of New York', 'A Slice of New York.jpg', 117),
(351, 'Philz Coffee', 'Philz Coffee.jpg', 117),
(352, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 118),
(353, 'A Slice of New York', 'A Slice of New York.jpg', 118),
(354, 'Philz Coffee', 'Philz Coffee.jpg', 118),
(355, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 119),
(356, 'A Slice of New York', 'A Slice of New York.jpg', 119),
(357, 'Philz Coffee', 'Philz Coffee.jpg', 119),
(358, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 120),
(359, 'A Slice of New York', 'A Slice of New York.jpg', 120),
(360, 'Philz Coffee', 'Philz Coffee.jpg', 120),
(361, 'Ikes Sandwiches', 'Ikes Sandwiches.jpeg', 121),
(362, 'The Habit', 'The Habit.jpeg', 121),
(363, 'Taqueria Los Pericos', 'Taqueria Los Pericos.jpeg', 121),
(364, 'Seabright Deli', 'Seabright Deli.jpg', 122),
(365, 'Cafe Brasil', 'Cafe Brasil.jpg', 122),
(366, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 122),
(367, 'Seabright Deli', 'Seabright Deli.jpg', 123),
(368, 'Cafe Brasil', 'Cafe Brasil.jpg', 123),
(369, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 123),
(370, 'Seabright Deli', 'Seabright Deli.jpg', 124),
(371, 'Cafe Brasil', 'Cafe Brasil.jpg', 124),
(372, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 124),
(373, 'Walnut Avenue Cafe', 'Walnut Avenue Cafe.jpeg', 125),
(374, 'Pacific Cookie Company', 'Pacific Cookie Company.jpeg', 125),
(375, 'Hulas Island Grill', 'Hulas Island Grill.jpeg', 125),
(376, 'Seabright Deli', 'Seabright Deli.jpg', 126),
(377, 'Cafe Brasil', 'Cafe Brasil.jpg', 126),
(378, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 126),
(379, 'Seabright Deli', 'Seabright Deli.jpg', 127),
(380, 'Cafe Brasil', 'Cafe Brasil.jpg', 127),
(381, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 127),
(382, 'Seabright Deli', 'Seabright Deli.jpg', 128),
(383, 'Cafe Brasil', 'Cafe Brasil.jpg', 128),
(384, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 128),
(385, 'Seabright Deli', 'Seabright Deli.jpg', 129),
(386, 'Cafe Brasil', 'Cafe Brasil.jpg', 129),
(387, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 129),
(388, 'Lindas Seabreeze Cafe', 'Lindas Seabreeze Cafe.jpeg', 130),
(389, 'Los Primos', 'Los Primos.jpeg', 130),
(390, 'Cafe Brasil', 'Cafe Brasil.jpeg', 130),
(391, 'Seabright Deli', 'Seabright Deli.jpg', 131),
(392, 'Cafe Brasil', 'Cafe Brasil.jpg', 131),
(393, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 131),
(394, 'Seabright Deli', 'Seabright Deli.jpg', 132),
(395, 'Cafe Brasil', 'Cafe Brasil.jpg', 132),
(396, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 132),
(397, 'Seabright Deli', 'Seabright Deli.jpg', 133),
(398, 'Cafe Brasil', 'Cafe Brasil.jpg', 133),
(399, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 133),
(400, 'Seabright Deli', 'Seabright Deli.jpg', 134),
(401, 'Cafe Brasil', 'Cafe Brasil.jpg', 134),
(402, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 134),
(403, 'Naka Sushi', 'Naka Sushi.jpeg', 135),
(404, 'East End Gastropub', 'East End Gastropub.jpeg', 135),
(405, 'iCrave', 'iCrave.jpeg', 135),
(406, 'Seabright Deli', 'Seabright Deli.jpg', 136),
(407, 'Cafe Brasil', 'Cafe Brasil.jpg', 136),
(408, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 136),
(409, 'Seabright Deli', 'Seabright Deli.jpg', 137),
(410, 'Cafe Brasil', 'Cafe Brasil.jpg', 137),
(411, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 137),
(412, 'Seabright Deli', 'Seabright Deli.jpg', 138),
(413, 'Cafe Brasil', 'Cafe Brasil.jpg', 138),
(414, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 138),
(415, 'Seabright Deli', 'Seabright Deli.jpg', 139),
(416, 'Cafe Brasil', 'Cafe Brasil.jpg', 139),
(417, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 139),
(418, 'Garden Liquors & Deli', 'Garden Liquors.jpeg', 140),
(419, 'Silver Spur', 'Silver Spur.jpeg', 140),
(420, 'Moes Alley', 'Moes Alley.jpeg', 140),
(421, 'Seabright Deli', 'Seabright Deli.jpg', 141),
(422, 'Cafe Brasil', 'Cafe Brasil.jpg', 141),
(423, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 141),
(424, 'Seabright Deli', 'Seabright Deli.jpg', 142),
(425, 'Cafe Brasil', 'Cafe Brasil.jpg', 142),
(426, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 142),
(427, 'Seabright Deli', 'Seabright Deli.jpg', 143),
(428, 'Cafe Brasil', 'Cafe Brasil.jpg', 143),
(429, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 143),
(430, 'Seabright Deli', 'Seabright Deli.jpg', 144),
(431, 'Cafe Brasil', 'Cafe Brasil.jpg', 144),
(432, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 144),
(433, 'Seabright Deli', 'Seabright Deli.jpg', 145),
(434, 'Cafe Brasil', 'Cafe Brasil.jpg', 145),
(435, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 145),
(436, 'Seabright Deli', 'Seabright Deli.jpg', 146),
(437, 'Cafe Brasil', 'Cafe Brasil.jpg', 146),
(438, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 146),
(439, 'Seabright Deli', 'Seabright Deli.jpg', 147),
(440, 'Cafe Brasil', 'Cafe Brasil.jpg', 147),
(441, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 147),
(442, 'Seabright Deli', 'Seabright Deli.jpg', 148),
(443, 'Cafe Brasil', 'Cafe Brasil.jpg', 148),
(444, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 148),
(445, 'Seabright Deli', 'Seabright Deli.jpg', 149),
(446, 'Cafe Brasil', 'Cafe Brasil.jpg', 149),
(447, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 149),
(448, 'Seabright Deli', 'Seabright Deli.jpg', 150),
(449, 'Cafe Brasil', 'Cafe Brasil.jpg', 150),
(450, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 150);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(128) NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `room_count` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_price`, `room_count`, `start_date`, `end_date`, `hotel_id`) VALUES
(1, 'Best Western Plus South Bay Hotel LAX (Basic Room)', '140.00', 5, NOW(), '2022-05-26', 1),
(2, 'JW Marriott Santa Monica Le Merigot (Basic Room)', '431.00', 10, NOW(), '2022-05-26', 2),
(3, 'Andaz West Hollywood (Basic Room)', '272.00', 5, NOW(), '2022-05-26', 3),
(4, 'Alhambra Hotel (Basic Room)', '92.00', 3, NOW(), '2022-05-26', 4),
(5, 'Hollywood Celebrity Hotel (Basic Room)', '162.00', 7, NOW(), '2022-05-26', 5),
(6, 'Marina del Rey Hotel (Basic Room)', '287.00', 4, NOW(), '2022-05-26', 6),
(7, 'Tommie Hollywood (Basic Room)', '228.00', 5, NOW(), '2022-05-26', 7),
(8, 'The London West Hollywood at Beverly Hills (Basic Room)', '459.00', 8, NOW(), '2022-05-26', 8),
(9, 'Peacock Suites (Basic Room)', '199.00', 6, NOW(), '2022-05-26', 9),
(10, '1 Hotel West Hollywood (Basic Room)', '499.00', 4, NOW(), '2022-05-26', 10),
(11, 'Courtyard by Marriott Los Angeles Monterey Park (Basic Room)', '208.00', 5, NOW(), '2022-05-26', 11),
(12, 'Thompson Hollywood (Basic Room)', '293.00', 6, NOW(), '2022-05-26', 12),
(13, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground (Basic Room)', '168.00', 3, NOW(), '2022-05-26', 13),
(14, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS (Basic Room)', '229.00', 2, NOW(), '2022-05-26', 14),
(15, 'Wyndham Santa Monica At The Pier Hotel (Basic Room)', '237.00', 7, NOW(), '2022-05-26', 15),
(16, 'JW Marriott Los Angeles L.A. LIVE (Basic Room)', '599.00', 5, NOW(), '2022-05-26', 16),
(17, 'Maison 140 (Basic Room)', '209.00', 4, NOW(), '2022-05-26', 17),
(18, 'Delta Hotels by Marriott Anaheim Garden Grove (Basic Room)', '209.00', 2, NOW(), '2022-05-26', 18),
(19, 'Hilton Los Angeles Universal City Hotel (Basic Room)', '292.00', 3, NOW(), '2022-05-26', 19),
(20, 'The Ritz-Carlton, Marina del Rey (Basic Room)', '368.00', 5, NOW(), '2022-05-26', 20),
(21, 'Sixty Beverly Hills Hotel (Basic Room)', '359.00', 6, NOW(), '2022-05-26', 21),
(22, 'Sheraton Los Angeles San Gabriel (Basic Room)', '197.00', 7, NOW(), '2022-05-26', 22),
(23, 'The Hollywood Roosevelt (Basic Room)', '288.00', 3, NOW(), '2022-05-26', 23),
(24, 'Hyatt Place At Anaheim Resort Conv (Basic Room)', '239.00', 5, NOW(), '2022-05-26', 24),
(25, 'La Quinta Inn & Suites by Wyndham LAX (Basic Room)', '138.00', 4, NOW(), '2022-05-26', 25),
(26, 'Embassy Suites Los Angeles International Airport South Hotel (Basic Room)', '167.00', 5, NOW(), '2022-05-26', 26),
(27, 'Hotel Figueroa, an Unbound Collection by Hyatt (Basic Room)', '279.00', 4, NOW(), '2022-05-26', 27),
(28, 'Kimpton Hotel Wilshire (Basic Room)', '339.00', 2, NOW(), '2022-05-26', 28),
(29, 'The Moment Hotel (Basic Room)', '282.00', 6, NOW(), '2022-05-26', 29),
(30, 'Omni Los Angeles at California Plaza (Basic Room)', '263.00', 8, NOW(), '2022-05-26', 30),
(31, 'The Hoxton Downtown LA (Basic Room)', '235.00', 3, NOW(), '2022-05-26', 31),
(32, 'Andaz San Diego - a concept by Hyatt (Basic Room)', '399.00', 9, NOW(), '2022-05-26', 32),
(33, 'Courtyard San Diego Downtown (Basic Room)', '314.00', 6, NOW(), '2022-05-26', 33),
(34, 'THE US GRANT, a Luxury Collection Hotel, San Diego (Basic Room)', '602.00', 8, NOW(), '2022-05-26', 34),
(35, 'The Westgate Hotel (Basic Room)', '429.00', 6, NOW(), '2022-05-26', 35),
(36, 'Residence Inn San Diego Downtown/Gaslamp Quarter (Basic Room)', '949.00', 5, NOW(), '2022-05-26', 36),
(37, 'Best Western Mission Bay (Basic Room)', '129.00', 8, NOW(), '2022-05-26', 37),
(38, 'Kona Kai Resort & Spa, a Noble House Resort (Basic Room)', '429.00', 3, NOW(), '2022-05-26', 38),
(39, 'Embassy Suites San Diego La Jolla Hotel (Basic Room)', '220.00', 6, NOW(), '2022-05-26', 39),
(40, 'Homewood Suites by Hilton San Diego-Del Mar - CA Hotel (Basic Room)', '248.00', 7, NOW(), '2022-05-26', 40),
(41, 'Wyndham San Diego Bayside (Basic Room)', '288.00', 9, NOW(), '2022-05-26', 41),
(42, 'Hotel Indigo San Diego - Gaslamp Quarter (Basic Room)', '409.00', 4, NOW(), '2022-05-26', 42),
(43, 'Best Western Plus Bayside Inn (Basic Room)', '178.00', 5, NOW(), '2022-05-26', 43),
(44, 'Country Inn & Suites by Radisson, San Diego North (Basic Room)', '238.00', 3, NOW(), '2022-05-26', 44),
(45, 'Doubletree San Diego Mission Valley Hotel (Basic Room)', '255.00', 7, NOW(), '2022-05-26', 45),
(46, 'Courtyard San Diego Gaslamp/Convention Center (Basic Room)', '902.00', 8, NOW(), '2022-05-26', 46),
(47, 'Holiday Inn Express San Diego Seaworld Beach Area (Basic Room)', '180.00', 4, NOW(), '2022-05-26', 47),
(48, 'San Diego Marriott La Jolla (Basic Room)', '269.00', 3, NOW(), '2022-05-26', 48),
(49, 'Residence Inn San Diego La Jolla (Basic Room)', '237.00', 7, NOW(), '2022-05-26', 49),
(50, 'The Westin San Diego Gaslamp Quarter (Basic Room)', '441.00', 4, NOW(), '2022-05-26', 50),
(51, 'Carte Hotel San Diego Downtown, Curio Collection by Hilton (Basic Room)', '470.00', 5, NOW(), '2022-05-26', 51),
(52, 'DoubleTree by Hilton San Diego - Hotel Circle (Basic Room)', '189.00', 8, NOW(), '2022-05-26', 52),
(53, 'InterContinental San Diego (Basic Room)', '449.00', 5, NOW(), '2022-05-26', 53),
(54, 'Hampton Inn San Diego Downtown Hotel (Basic Room)', '345.00', 4, NOW(), '2022-05-26', 54),
(55, 'Moxy San Diego Downtown/Gaslamp Quarter (Basic Room)', '379.00', 3, NOW(), '2022-05-26', 55),
(56, 'Pendry San Diego (Basic Room)', '489.00', 6, NOW(), '2022-05-26', 56),
(57, 'Catamaran Resort Hotel and Spa (Basic Room)', '389.00', 8, NOW(), '2022-05-26', 57),
(58, 'Kimpton Hotel Palomar San Diego (Basic Room)', '352.00', 5, NOW(), '2022-05-26', 58),
(59, 'DoubleTree by Hilton Hotel San Diego - Del Mar (Basic Room)', '245.00', 9, NOW(), '2022-05-26', 59),
(60, 'Holiday Inn San Diego Bayside (Basic Room)', '225.00', 5, NOW(), '2022-05-26', 60),
(61, 'The Donatello (Basic Room)', '276.00', 6, NOW(), '2022-05-26', 61),
(62, 'The Inn at Union Square (Basic Room)', '260.00', 4, NOW(), '2022-05-26', 62),
(63, 'Omni San Francisco Hotel (Basic Room)', '203.00', 3, NOW(), '2022-05-26', 63),
(64, 'Hyatt Centric Fishermans Wharf (Basic Room)', '299.00', 8, NOW(), '2022-05-26', 64),
(65, 'Hyatt Place Emeryville/San Francisco Bay Area (Basic Room)', '199.00', 6, NOW(), '2022-05-26', 65),
(66, 'Hotel Abri Union Square (Basic Room)', '191.00', 5, NOW(), '2022-05-26', 66),
(67, 'Extended Stay America Premier Suites - Oakland - Alameda (Basic Room)', '138.00', 9, NOW(), '2022-05-26', 67),
(68, 'Axiom Hotel San Francisco (Basic Room)', '239.00', 6, NOW(), '2022-05-26', 68),
(69, 'Courtyard San Francisco Union Square (Basic Room)', '219.00', 7, NOW(), '2022-05-26', 69),
(70, 'Chancellor Hotel on Union Square (Basic Room)', '182.00', 4, NOW(), '2022-05-26', 70),
(71, 'Holiday Inn San Francisco - Golden Gateway (Basic Room)', '206.00', 4, NOW(), '2022-05-26', 71),
(72, 'Executive Inn & Suites Oakland (Basic Room)', '161.00', 6, NOW(), '2022-05-26', 72),
(73, 'Handlery Union Square Hotel (Basic Room)', '244.00', 4, NOW(), '2022-05-26',73),
(74, 'Hampton Inn San Francisco Downtown Convention Center (Basic Room)', '220.00', 4, NOW(), '2022-05-26', 74),
(75, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel (Basic Room)', '203.00', 9, NOW(), '2022-05-26', 75),
(76, 'Executive Hotel Vintage Court (Basic Room)', '199.00', 3, NOW(), '2022-05-26', 76),
(77, 'The Pickwick Hotel (Basic Room)', '155.00', 4, NOW(), '2022-05-26', 77),
(78, 'The Westin St. Francis San Francisco on Union Square (Basic Room)', '206.00', 5, NOW(), '2022-05-26', 78),
(79, 'InterContinental San Francisco (Basic Room)', '246.00', 6, NOW(), '2022-05-26', 79),
(80, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham (Basic Room)', '237.00', 7, NOW(), '2022-05-26', 80),
(81, 'Hotel Zephyr San Francisco (Basic Room)', '341.00', 7, NOW(), '2022-05-26', 81),
(82, 'Grand Hyatt at SFO (Basic Room)', '289.00', 8, NOW(), '2022-05-26', 82),
(83, 'Embassy Suites San Rafael Marin County Hotel (Basic Room)', '194.00', 9, NOW(), '2022-05-26', 83),
(84, 'Casa Madrona Hotel and Spa (Basic Room)', '416.00', 5, NOW(), '2022-05-26', 84),
(85, 'Courtyard Oakland Downtown (Basic Room)', '191.00', 6, NOW(), '2022-05-26', 85),
(86, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat (Basic Room)', '203.00', 8, NOW(), '2022-05-26', 86),
(87, 'Inn Redwood City (Basic Room)', '127.00', 9, NOW(), '2022-05-26', 87),
(88, 'Club Quarters Hotel in San Francisco (Basic Room)', '188.00', 5, NOW(), '2022-05-26', 88),
(89, 'Hotel Zoe Fisherman Wharf (Basic Room)', '281.00', 6, NOW(), '2022-05-26', 89),
(90, 'Hyatt House Emeryville San Francisco Bay Area (Basic Room)', '196.00', 4, NOW(), '2022-05-26', 90),
(91, 'Ramada by Wyndham Sunnyvale Silicon Valley (Basic Room)', '143.00', 8, NOW(), '2022-05-26', 91),
(92, 'AC Hotel by Marriott Palo Alto (Basic Room)', '269.00', 6, NOW(), '2022-05-26', 92),
(93, 'Residence Inn by Marriott San Jose North/Silicon Valley (Basic Room)', '328.00', 9, NOW(), '2022-05-26', 93),
(94, 'Hyatt Regency Santa Clara (Basic Room)', '220.00', 5, NOW(), '2022-05-26', 94),
(95, 'Sonesta ES Suites Sunnyvale (Basic Room)', '269.00', 7, NOW(), '2022-05-26', 95),
(96, 'Residence Inn San Jose Cupertino (Basic Room)', '237.00', 3, NOW(), '2022-05-26', 96),
(97, 'The Westin Palo Alto (Basic Room)', '512.00', 8, NOW(), '2022-05-26', 97),
(98, 'Best Western Lanai Garden Inn and Suites (Basic Room)', '126.00', 9, NOW(), '2022-05-26', 98),
(99, 'Quality Inn & Suites Silicon Valley (Basic Room)', '90.00', 3, NOW(), '2022-05-26', 99),
(100, 'Country Inn & Suites by Radisson (Basic Room)', '122.00', 7, NOW(), '2022-05-26', 100),
(101, 'Homewood Suites by Hilton Palo Alto (Basic Room)', '225.00', 9, NOW(), '2022-05-26', 101),
(102, 'Residence Inn Palo Alto Mountain View (Basic Room)', '949.00', 6, NOW(), '2022-05-26', 102),
(103, 'Holiday Inn Express Sunnyvale - Silicon Valley (Basic Room)', '145.00', 4, NOW(), '2022-05-26', 103),
(104, 'The Palo Alto Inn (Basic Room)', '169.00', 5, NOW(), '2022-05-26', 104),
(105, 'Hotel Valencia Santana Row (Basic Room)', '429.00', 7, NOW(), '2022-05-26', 105),
(106, 'Crowne Plaza Cabana Hotel (Basic Room)', '276.00', 8, NOW(), '2022-05-26', 106),
(107, 'Juniper Hotel Cupertino A Curio Collection By Hilton (Basic Room)', '341.00', 5, NOW(), '2022-05-26', 107),
(108, 'Comfort Inn Palo Alto (Basic Room)', '149.00', 6, NOW(), '2022-05-26', 108),
(109, 'AC Hotel by Marriott Sunnyvale Moffett Park (Basic Room)', '212.00', 9, NOW(), '2022-05-26', 109),
(110, 'Extended Stay America Premier Suites - San Jose - Airport (Basic Room)', '147.00', 4, NOW(), '2022-05-26', 110),
(111, 'AC Hotel by Marriott San Jose Santa Clara (Basic Room)', '279.00', 5, NOW(), '2022-05-26', 111),
(112, 'Hampton Inn & Suites San Jose Airport, CA (Basic Room)', '152.00', 7, NOW(), '2022-05-26', 112),
(113, 'Larkspur Landing Campbell - An All-Suite Hotel (Basic Room)', '199.00', 8, NOW(), '2022-05-26', 113),
(114, 'Holiday Inn Express Hotel & Suites Santa Clara (Basic Room)', '165.00', 5, NOW(), '2022-05-26', 114),
(115, 'Hotel Zico (Basic Room)', '167.00', 6, NOW(), '2022-05-26', 115),
(116, 'Best Western University Inn Santa Clara (Basic Room)', '169.00', 4, NOW(), '2022-05-26', 116),
(117, 'Aloft Santa Clara (Basic Room)', '168.00', 5, NOW(), '2022-05-26', 117),
(118, 'Four Points by Sheraton San Jose Airport (Basic Room)', '151.00', 6, NOW(), '2022-05-26', 118),
(119, 'Silicon Way Inn (Basic Room)', '69.00', 7, NOW(), '2022-05-26', 119),
(120, 'Residence Inn Sunnyvale Silicon Valley II (Basic Room)', '333.00', 8, NOW(), '2022-05-26', 120),
(121, 'Holiday Inn Express Hotel & Suites Santa Cruz (Basic Room)', '184.00', 9, NOW(), '2022-05-26', 121),
(122, 'Bay Front Inn - Downtown Santa Cruz (Basic Room)', '485.00', 5, NOW(), '2022-05-26', 122),
(123, 'Hilton Santa Cruz/Scotts Valley (Basic Room)', '243.00', 7, NOW(), '2022-05-26', 123),
(124, 'Quality Inn Santa Cruz (Basic Room)', '222.00', 9, NOW(), '2022-05-26', 124),
(125, 'Budget Inn Santa Cruz (Basic Room)', '119.00', 5, NOW(), '2022-05-26', 125),
(126, 'Ocean Echo Inn & Beach Cottages (Basic Room)', '369.00', 9, NOW(), '2022-05-26', 126),
(127, 'Hampton Inn Santa Cruz West (Basic Room)', '127.00', 4, NOW(), '2022-05-26', 127),
(128, 'Best Western Inn (Basic Room)', '259.00', 6, NOW(), '2022-05-26', 128),
(129, 'Pacific Blue Inn (Basic Room)', '259.00', 8, NOW(), '2022-05-26', 129),
(130, 'Ocean Gate Inn (Basic Room)', '130.00', 4, NOW(), '2022-05-26', 130),
(131, 'Beachview Inn (Basic Room)', '155.00', 7, NOW(), '2022-05-26', 131),
(132, 'Motel Santa Cruz Santa Cruz (Basic Room)', '119.00', 9, NOW(), '2022-05-26', 132),
(133, 'Comfort Inn Beach/Boardwalk Area (Basic Room)', '217.00', 6, NOW(), '2022-05-26', 133),
(134, 'Hyatt Place Santa Cruz (Basic Room)', '299.00', 4, NOW(), '2022-05-26', 134),
(135, 'Fairfield Inn & Suites Santa Cruz - Capitola (Basic Room)', '299.00', 5, NOW(), '2022-05-26', 135),
(136, 'Fern River Resort (Basic Room)', '167.00', 7, NOW(), '2022-05-26', 136),
(137, 'Comfort Inn Santa Cruz (Basic Room)', '229.00', 8, NOW(), '2022-05-26', 137),
(138, 'Fairfield Inn & Suites Santa Cruz (Basic Room)', '218.00', 7, NOW(), '2022-05-26', 138),
(139, 'Super 8 By Wyndham Santa Cruz/Beach Boardwalk East (Basic Room)', '407.00', 5, NOW(), '2022-05-26', 139),
(140, 'Chaminade Resort & Spa (Basic Room)', '439.00', 4, NOW(), '2022-05-26', 140),
(141, 'Fireside Inn By The Beach Boardwalk & Bowling (Basic Room)', '185.00', 7, NOW(), '2022-05-26', 141),
(142, 'Best Western Plus Capitola By-the-Sea Inn and Suites (Basic Room)', '299.00', 6, NOW(), '2022-05-26', 142),
(143, 'Rio Vista Inn & Suites Santa Cruz (Basic Room)', '179.00', 4, NOW(), '2022-05-26', 143),
(144, 'Hotel Paradox, Autograph Collection (Basic Room)', '314.00', 5, NOW(), '2022-05-26', 144),
(145, 'Mission Inn (Basic Room)', '189.00', 8, NOW(), '2022-05-26', 145),
(146, 'Inn at Depot Hill (Basic Room)', '340.00', 9, NOW(), '2022-05-26', 146),
(147, 'The Inn at Pasatiempo (Basic Room)', '239.00', 4, NOW(), '2022-05-26', 147),
(148, 'Howard Johnson by Wyndham Santa Cruz Beach Boardwalk (Basic Room)', '136.00', 3, NOW(), '2022-05-26', 148),
(149, 'Capitola Venetian Hotel (Basic Room)', '340.00', 7, NOW(), '2022-05-26', 149),
(150, 'Hampton Inn Santa Cruz (Basic Room)', '229.00', 8, NOW(), '2022-05-26', 150);

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
  `password` varchar(128) NOT NULL,
  `reward_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `username`, `password`, `reward_points`) VALUES
(1, 'user', '$2y$10$YTr/kjkrcb5gxyMoyukRbOn3cxBOLXCxHeRWgrpyWos5.nE6rBP3u', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookedhotel`
--
ALTER TABLE `bookedhotel`
  ADD PRIMARY KEY (`booked_id`),
  ADD UNIQUE KEY `hotel_id` (`booked_id`),
  ADD KEY `city_id` (`city_id`);

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
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`),
  ADD KEY `hotel_id` (`hotel_id`);

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
-- AUTO_INCREMENT for table `bookedhotel`
--
ALTER TABLE `bookedhotel`
  MODIFY `booked_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

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