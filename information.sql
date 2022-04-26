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
-- Table structure for table `bookedhotel`
--

CREATE TABLE `bookedhotel` (
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
-- Dumping data for table `bookedhotel`
--

INSERT INTO `bookedhotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`, `start_date`, `end_date`) VALUES
(1, 'Best Western Plus South Bay Hotel LAX', '15000 Hawthorne Boulevard Lawndale, California, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90260', 4, '140.00', '1.jpg', '7.7', NULL, NULL),
(2, 'JW Marriott Santa Monica Le Merigot', '1740 Ocean Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '431.00', '2.jpg', '8.3', NULL, NULL),
(3, 'Andaz West Hollywood', '8401 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 4, '272.00', '3.jpg', '9.0', NULL, NULL),
(4, 'Alhambra Hotel', '2221 W Commonwealth Ave, East Los Angeles, Los Angeles (CA), United States, 91803', 4, '92.00', '4.jpg', '8.4', NULL, NULL),
(5, 'Hollywood Celebrity Hotel', '1775 Orchid Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '162.00', '5.jpg', '8.8', NULL, NULL),
(6, 'Marina del Rey Hotel', '13534 Bali Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '287.00', '6.jpg', '8.4', NULL, NULL),
(7, 'Tommie Hollywood', '6516 W Selma Ave, Hollywood, Los Angeles (CA), United States, 90028', 4, '228.00', '7.jpg', '8.4', NULL, NULL),
(8, 'The London West Hollywood at Beverly Hills', '1020 N. San Vicente Blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '459.00', '8.jpg', '8.9', NULL, NULL),
(9, 'Peacock Suites', '1745 South Anaheim Blvd., Anaheim, Los Angeles (CA), United States, 92805', 4, '199.00', '9.jpg', '8.6', NULL, NULL),
(10, '1 Hotel West Hollywood', '8490 West Sunset blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '499.00', '10.jpg', '8.7', NULL, NULL),
(11, 'Courtyard by Marriott Los Angeles Monterey Park', '555 North Atlantic Boulevard, East Los Angeles, Los Angeles (CA), United States, 91754', 4, '208.00', '11.jpg', '8.7', NULL, NULL),
(12, 'Thompson Hollywood', '1541 Wilcox Ave, Hollywood, Los Angeles (CA), United States, 90028-7308', 4, '293.00', '12.jpg', '8.4', NULL, NULL),
(13, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground', '1380 South Harbor Blvd, Anaheim, Los Angeles (CA), United States, 92802-2310', 4, '168.00', '13.jpg', '8.8', NULL, NULL),
(14, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS', '5268 TUJUNGA AVENUE, Burbank, Los Angeles (CA), United States, 91601', 4, '229.00', '14.jpg', '9.8', NULL, NULL),
(15, 'Wyndham Santa Monica At The Pier Hotel', '120 Colorado Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '283.00', '15.jpg', '7.6', NULL, NULL),
(16, 'JW Marriott Los Angeles L.A. LIVE', '900 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '599.00', '16.jpg', '8.8', NULL, NULL),
(17, 'Maison 140', '140 South Lasky Drive, Beverly Hills, California, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '209.00', '17.jpg', '7.4', NULL, NULL),
(18, 'Delta Hotels by Marriott Anaheim Garden Grove', '12021 Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92840', 4, '209.00', '18.jpg', '8.3', NULL, NULL),
(19, 'Hilton Los Angeles Universal City Hotel', '555 Universal Hollywood Drive, Universal City, Los Angeles (CA), United States, 91608', 4, '292.00', '19.jpg', '8.5', NULL, NULL),
(20, 'The Ritz-Carlton, Marina del Rey', '4375 Admiralty Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '368.00', '20.jpg', '10.0', NULL, NULL),
(21, 'Sixty Beverly Hills Hotel', '9360 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '359.00', '21.jpg', '7.9', NULL, NULL),
(22, 'Sheraton Los Angeles San Gabriel', '303 East Valley Boulevard, East Los Angeles, Los Angeles (CA), United States, 91776', 4, '197.00', '22.jpg', '8.8', NULL, NULL),
(23, 'The Hollywood Roosevelt', '7000 Hollywood Boulevard, Hollywood, Los Angeles (CA), United States, 90028', 4, '288.00', '23.jpg', '8.6', NULL, NULL),
(24, 'Hyatt Place At Anaheim Resort Conv', '2035 South Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92802', 4, '239.00', '24.jpg', '8.7', NULL, NULL),
(25, 'La Quinta Inn & Suites by Wyndham LAX', '5249 W Century Boulevard, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '138.00', '25.jpg', '7.7', NULL, NULL),
(26, 'Embassy Suites Los Angeles International Airport South Hotel', '1440 E. Imperial Avenue, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90245', 4, '167.00', '26.jpg', '7.9', NULL, NULL),
(27, 'Hotel Figueroa, an Unbound Collection by Hyatt', '939 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '279.00', '27.jpg', '8.8', NULL, NULL),
(28, 'Kimpton Hotel Wilshire', '6317 Wilshire Boulevard, West Hollywood, Los Angeles (CA), United States, 90048', 4, '339.00', '28.jpg', '8.1', NULL, NULL),
(29, 'The Moment Hotel', '7370 Sunset Boulevard, Hollywood, Los Angeles (CA), United States, 90046', 4, '282.00', '29.jpg', '7.5', NULL, NULL),
(30, 'Omni Los Angeles at California Plaza', '251 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '263.00', '30.jpg', '8.6', NULL, NULL),
(31, 'The Hoxton Downtown LA', '1060 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '235.00', '31.jpg', '9.2', NULL, NULL),
(32, 'Andaz San Diego - a concept by Hyatt', '600 F Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '399.00', '32.jpg', '8.6', NULL, NULL),
(33, 'Courtyard San Diego Downtown', '530 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '314.00', '33.jpg', '8.6', NULL, NULL),
(34, 'THE US GRANT, a Luxury Collection Hotel, San Diego', '326 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '602.00', '34.jpg', '8.4', NULL, NULL),
(35, 'The Westgate Hotel', '1055 2nd Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '429.00', '35.jpg', '8.3', NULL, NULL),
(36, 'Residence Inn San Diego Downtown/Gaslamp Quarter', '356 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '949.00', '36.jpg', '9.0', NULL, NULL),
(37, 'Best Western Mission Bay', '2575 Clairemont Drive, Bay Park, San Diego (CA), United States, 92117', 5, '129.00', '37.jpg', '7.9', NULL, NULL),
(38, 'Kona Kai Resort & Spa, a Noble House Resort', '1551 Shelter Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92106', 5, '429.00', '38.jpg', '8.5', NULL, NULL),
(39, 'Embassy Suites San Diego La Jolla Hotel', '4550 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92122', 5, '220.00', '39.jpg', '8.7', NULL, NULL),
(40, 'Homewood Suites by Hilton San Diego-Del Mar - CA Hotel', '11025 Vista Sorrento Parkway, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 5, '248.00', '40.jpg', '8.6', NULL, NULL),
(41, 'Wyndham San Diego Bayside', '1355 North Harbor Dr., San Diego City Center, San Diego (CA), United States, 92101', 5, '288.00', '41.jpg', '8.0', NULL, NULL),
(42, 'Hotel Indigo San Diego - Gaslamp Quarter', '509 9th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '409.00', '42.jpg', '8.6', NULL, NULL),
(43, 'Best Western Plus Bayside Inn', '555 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101-3414', 5, '178.00', '43.jpg', '8.8', NULL, NULL),
(44, 'Country Inn & Suites by Radisson, San Diego North', '5975 Lusk Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 5, '238.00', '44.jpg', '8.4', NULL, NULL),
(45, 'Doubletree San Diego Mission Valley Hotel', '7450 Hazard Center Drive, Mission Valley East, San Diego (CA), United States, 92108', 5, '255.00', '45.jpg', '8.3', NULL, NULL),
(46, 'Courtyard San Diego Gaslamp/Convention Center', '453 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '902.00', '46.jpg', '9.1', NULL, NULL),
(47, 'Holiday Inn Express San Diego Seaworld Beach Area', '4540 Mission Bay Drive, Pacific Beach, San Diego (CA), United States, 92109', 5, '180.00', '47.jpg', '7.6', NULL, NULL),
(48, 'San Diego Marriott La Jolla', '4240 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92037', 5, '269.00', '48.jpg', '8.0', NULL, NULL),
(49, 'Residence Inn San Diego La Jolla', '8901 Gilman Drive, La Jolla, San Diego (CA), United States, 92037', 5, '332.00', '49.jpg', '9.0', NULL, NULL),
(50, 'The Westin San Diego Gaslamp Quarter', '910 Broadway Circle, San Diego City Center, San Diego (CA), United States, 92101', 5, '441.00', '50.jpg', '8.4', NULL, NULL),
(51, 'Carte Hotel San Diego Downtown, Curio Collection by Hilton', '401 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '470.00', '51.jpg', '8.7', NULL, NULL),
(52, 'DoubleTree by Hilton San Diego - Hotel Circle', '1515 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '189.00', '52.jpg', '7.7', NULL, NULL),
(53, 'InterContinental San Diego', '901 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 5, '449.00', '53.jpg', '8.8', NULL, NULL),
(54, 'Hampton Inn San Diego Downtown Hotel', '1531 Pacific Highway, San Diego City Center, San Diego (CA), United States, 92101', 5, '345.00', '54.jpg', '8.3', NULL, NULL),
(55, 'Moxy San Diego Downtown/Gaslamp Quarter', '831 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '379.00', '55.jpg', '9.8', NULL, NULL),
(56, 'Pendry San Diego', '550 J Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '489.00', '56.jpg', '9.1', NULL, NULL),
(57, 'Catamaran Resort Hotel and Spa', '3999 Mission Boulevard, Pacific Beach, San Diego (CA), United States, 92109', 5, '389.00', '57.jpg', '8.0', NULL, NULL),
(58, 'Kimpton Hotel Palomar San Diego', '1047 5th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '352.00', '58.jpg', '7.8', NULL, NULL),
(59, 'DoubleTree by Hilton Hotel San Diego - Del Mar', '11915 El Camino Real, Del Mar / Carmel Valley, San Diego (CA), United States, 92130-2539', 5, '245.00', '59.jpg', '8.1', NULL, NULL),
(60, 'Holiday Inn San Diego Bayside', '4875 North Harbor Drive, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 5, '225.00', '60.jpg', '8.0', NULL, NULL),
(61, 'The Donatello', '501 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '276.00', '61.jpg', '8.7', NULL, NULL),
(62, 'The Inn at Union Square', '440 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '260.00', '62.jpg', '9.1', NULL, NULL),
(63, 'Omni San Francisco Hotel', '500 California Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 6, '203.00', '63.jpg', '9.2', NULL, NULL),
(64, 'Hyatt Centric Fishermans Wharf', '555 North Point St, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '299.00', '64.jpg', '8.3', NULL, NULL),
(65, 'Hyatt Place Emeryville/San Francisco Bay Area', '5700 Bay Street, Oakland, San Francisco (CA), United States, 94608', 6, '199.00', '65.jpg', '8.6', NULL, NULL),
(66, 'Hotel Abri Union Square', '127 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '191.00', '66.jpg', '8.3', NULL, NULL),
(67, 'Extended Stay America Premier Suites - Oakland - Alameda', '1350 Marina Village Pkwy, Oakland, San Francisco (CA), United States, 94501', 6, '138.00', '67.jpg', '7.2', NULL, NULL),
(68, 'Axiom Hotel San Francisco', '28 Cyril Magnin ST, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '239.00', '68.jpg', '8.3', NULL, NULL),
(69, 'Courtyard San Francisco Union Square', '761 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '219.00', '69.jpg', '7.8', NULL, NULL),
(70, 'Chancellor Hotel on Union Square', '433 Powell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '182.00', '70.jpg', '9.3', NULL, NULL),
(71, 'Holiday Inn San Francisco - Golden Gateway', '1500 Van Ness Avenue, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '206.00', '71.jpg', '8.0', NULL, NULL),
(72, 'Executive Inn & Suites Oakland', '1755 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 6, '161.00', '72.jpg', '8.6', NULL, NULL),
(73, 'Handlery Union Square Hotel', '351 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '244.00', '73.jpg', '8.3', NULL, NULL),
(74, 'Hampton Inn San Francisco Downtown Convention Center', '942 Mission Street, South of Market, San Francisco (CA), United States, 94103', 6, '220.00', '74.jpg', '8.4', NULL, NULL),
(75, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel', '1800 Powell Street, Oakland, San Francisco (CA), United States, 94608', 6, '203.00', '75.jpg', '8.2', NULL, NULL),
(76, 'Executive Hotel Vintage Court', '650 Bush Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '199.00', '76.jpg', '7.7', NULL, NULL),
(77, 'The Pickwick Hotel', '85 Fifth Street, South of Market, San Francisco (CA), United States, 94103', 6, '155.00', '77.jpg', '7.5', NULL, NULL),
(78, 'The Westin St. Francis San Francisco on Union Square', '335 Powell Street , San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '206.00', '78.jpg', '8.3', NULL, NULL),
(79, 'InterContinental San Francisco', '888 Howard Street, South of Market, San Francisco (CA), United States, 94103', 6, '246.00', '79.jpg', '8.5', NULL, NULL),
(80, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham', '105 Rockaway Beach Ave, Pacifica, San Francisco (CA), United States, 94044', 6, '189.00', '80.jpg', '7.9', NULL, NULL),
(81, 'Hotel Zephyr San Francisco', '250 Beach Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '341.00', '81.jpg', '8.3', NULL, NULL),
(82, 'Grand Hyatt at SFO', '55 South McDonnell Rd, San Francisco International Airport, San Francisco (CA), United States, 94128', 6, '289.00', '82.jpg', '9.3', NULL, NULL),
(83, 'Embassy Suites San Rafael Marin County Hotel', '101 Mcinnis Parkway, Marin County, San Francisco (CA), United States, 94903', 6, '194.00', '83.jpg', '8.2', NULL, NULL),
(84, 'Casa Madrona Hotel and Spa', '801 Bridgeway, Marin County, San Francisco (CA), United States, 94965', 6, '416.00', '84.jpg', '8.5', NULL, NULL),
(85, 'Courtyard Oakland Downtown', '988 Broadway, Oakland, San Francisco (CA), United States, 94607', 6, '191.00', '85.jpg', '8.5', NULL, NULL),
(86, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat', '562 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '203.00', '86.jpg', '9.0', NULL, NULL),
(87, 'Inn Redwood City', '1818 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063-2111', 6, '127.00', '87.jpg', '7.7', NULL, NULL),
(88, 'Club Quarters Hotel in San Francisco', '424 Clay Street, San Francisco Downtown, San Francisco (CA), United States, 94111', 6, '188.00', '88.jpg', '8.3', NULL, NULL),
(89, 'Hotel Zoe Fisherman\'s Wharf', '425 NORTH POINT STREET, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '281.00', '89.jpg', '8.6', NULL, NULL),
(90, 'Hyatt House Emeryville San Francisco Bay Area', '5800 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 6, '196.00', '90.jpg', '8.6', NULL, NULL),
(91, 'Ramada by Wyndham Sunnyvale Silicon Valley', '1217 Wildwood Avenue, Santa Clara, San Jose (CA), United States, 94089', 7, '143.00', '91.jpg', '7.7', NULL, NULL),
(92, 'AC Hotel by Marriott Palo Alto', '744 San Antonio Road, Mountain View, San Jose (CA), United States, 94303', 7, '269.00', '92.jpg', '9.0', NULL, NULL),
(93, 'Residence Inn by Marriott San Jose North/Silicon Valley', '656 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '328.00', '93.jpg', '9.1', NULL, NULL),
(94, 'Hyatt Regency Santa Clara', '5101 Great America Parkway, Santa Clara, San Jose (CA), United States, 95054', 7, '220.00', '94.jpg', '8.6', NULL, NULL),
(95, 'Sonesta ES Suites Sunnyvale', '900 Hamlin Court, Sunnyvale, San Jose (CA), United States, 94089', 7, '269.00', '95.jpg', '8.6', NULL, NULL),
(96, 'Residence Inn San Jose Cupertino', '19429 Stevens Creek Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '247.00', '96.jpg', '9.8', NULL, NULL),
(97, 'The Westin Palo Alto', '675 EL CAMINO REAL, Palo Alto, San Jose (CA), United States', 7, '512.00', '97.jpg', '8.8', NULL, NULL),
(98, 'Best Western Lanai Garden Inn and Suites', '1575 Tully Road, San Jose City Center, San Jose (CA), United States, 95122-2459', 7, '126.00', '98.jpg', '8.1', NULL, NULL),
(99, 'Quality Inn & Suites Silicon Valley', '2930 El Camino Real, Santa Clara, San Jose (CA), United States, 95051', 7, '90.00', '99.jpg', '7.0', NULL, NULL),
(100, 'Country Inn & Suites by Radisson, San Jose International Airport, CA', '1350 N 4th St, San Jose City Center, San Jose (CA), United States, 95112', 7, '122.00', '100.jpg', '8.4', NULL, NULL),
(101, 'Homewood Suites by Hilton Palo Alto', '4329 El Camino Real, Mountain View, San Jose (CA), United States, 94306', 7, '225.00', '101.jpg', '9.0', NULL, NULL),
(102, 'Residence Inn Palo Alto Mountain View', '1854 El Camino Real West, Mountain View, San Jose (CA), United States, 94040', 7, '949.00', '102.jpg', '8.9', NULL, NULL),
(103, 'Holiday Inn Express Sunnyvale - Silicon Valley', '852 West El Camino Real, Mountain View, San Jose (CA), United States, 94087', 7, '145.00', '103.jpg', '8.9', NULL, NULL),
(104, 'The Palo Alto Inn', '4238 El Camino Real, Mountain View, San Jose (CA), United States, CA 94306', 7, '169.00', '104.jpg', '8.2', NULL, NULL),
(105, 'Hotel Valencia Santana Row', '355 Santana Row, San Jose City Center, San Jose (CA), United States, 95128', 7, '429.00', '105.jpg', '8.6', NULL, NULL),
(106, 'Crowne Plaza Cabana Hotel', '4290 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '276.00', '106.jpg', '8.3', NULL, NULL),
(107, 'Juniper Hotel Cupertino A Curio Collection By Hilton', '10050 S. De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '341.00', '107.jpg', '8.8', NULL, NULL),
(108, 'Comfort Inn Palo Alto', '3945 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '149.00', '108.jpg', '8.1', NULL, NULL),
(109, 'AC Hotel by Marriott Sunnyvale Moffett Park', '1235 Bordeaux Drive, Sunnyvale, San Jose (CA), United States', 7, '212.00', '109.jpg', '7.2', NULL, NULL),
(110, 'Extended Stay America Premier Suites - San Jose - Airport', '55 E. Brokaw Road, San Jose City Center, San Jose (CA), United States, 95112', 7, '147.00', '110.jpg', '7.5', NULL, NULL),
(111, 'AC Hotel by Marriott San Jose Santa Clara', '2970 Lakeside Drive, Santa Clara, San Jose (CA), United States, 95054', 7, '279.00', '111.jpg', '9.1', NULL, NULL),
(112, 'Hampton Inn & Suites San Jose Airport, CA', '2088 North First Street, San Jose City Center, San Jose (CA), United States, 95131', 7, '152.00', '112.jpg', '10.0', NULL, NULL),
(113, 'Larkspur Landing Campbell - An All-Suite Hotel', '550 West Hamilton Avenue, San Jose City Center, San Jose (CA), United States, 95008', 7, '199.00', '113.jpg', '8.5', NULL, NULL),
(114, 'Holiday Inn Express Hotel & Suites Santa Clara', '1700 El Camino Real, Santa Clara, San Jose (CA), United States, 95050', 7, '165.00', '114.jpg', '8.9', NULL, NULL),
(115, 'Hotel Zico', '200 East El Camino Real, Mountain View, San Jose (CA), United States, 94040', 7, '167.00', '115.jpg', '8.3', NULL, NULL),
(116, 'Best Western University Inn Santa Clara', '1655 El Camino Real, Santa Clara, San Jose (CA), United States, 95050-4158', 7, '169.00', '116.jpg', '8.4', NULL, NULL),
(117, 'Aloft Santa Clara', '510 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '168.00', '117.jpg', '8.7', NULL, NULL),
(118, 'Four Points by Sheraton San Jose Airport', '1471 NORTH 4TH STREET, San Jose City Center, San Jose (CA), United States, 95112', 7, '151.00', '118.jpg', '9.0', NULL, NULL),
(119, 'Silicon Way Inn', '331 East Weddell Drive, Sunnyvale, San Jose (CA), United States, CA 94089', 7, '69.00', '119.jpg', '7.8', NULL, NULL),
(120, 'Residence Inn Sunnyvale Silicon Valley II', '1080 Stewart Drive, Sunnyvale, San Jose (CA), United States, 94086', 7, '333.00', '120.jpg', '8.6', NULL, NULL),
(121, 'Holiday Inn Express Hotel & Suites Santa Cruz', '1410 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '184.00', '121.jpg', '8.1', NULL, NULL),
(122, 'Bay Front Inn - Downtown Santa Cruz', '325 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '485.00', '122.jpg', '6.7', NULL, NULL),
(123, 'Hilton Santa Cruz/Scotts Valley', '6001 La Madrona Drive, Scotts Valley, Scotts Valley (CA), United States, 95066', 1, '243.00', '123.jpg', '8.7', NULL, NULL),
(124, 'Quality Inn Santa Cruz', '1101 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '222.00', '124.jpg', '7.9', NULL, NULL),
(125, 'Budget Inn Santa Cruz', '110 San Lorenzo Boulevard, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '119.00', '125.jpg', '8.1', NULL, NULL),
(126, 'Ocean Echo Inn & Beach Cottages', '401 Johans Beach Drive, Twin Lakes, Santa Cruz (CA), United States, CA 95062', 1, '369.00', '126.jpg', '8.8', NULL, NULL),
(127, 'Hampton Inn Santa Cruz West', '2424 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '248.00', '127.jpg', '8.5', NULL, NULL),
(128, 'Best Western Inn', '126 Plymouth Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060-2932', 1, '259.00', '128.jpg', '7.8', NULL, NULL),
(129, 'Pacific Blue Inn', '636 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '259.00', '129.jpg', '8.8', NULL, NULL),
(130, 'Ocean Gate Inn', '111 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '130.00', '130.jpg', '6.9', NULL, NULL),
(131, 'Beachview Inn', '50 Front Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '155.00', '131.jpg', '8.9', NULL, NULL),
(132, 'Motel Santa Cruz Santa Cruz', '370 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '119.00', '132.jpg', '5.3', NULL, NULL),
(133, 'Comfort Inn Beach/Boardwalk Area', '314 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '217.00', '133.jpg', '7.7', NULL, NULL),
(134, 'Hyatt Place Santa Cruz', '407 BROADWAY AVENUE, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '299.00', '134.jpg', '9.0', NULL, NULL),
(135, 'Fairfield Inn & Suites Santa Cruz - Capitola', '1255 41st Avenue, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '135.jpg', '9.0', NULL, NULL),
(136, 'Fern River Resort', '5250 Highway 9, Felton, Felton (CA), United States, CA 95018', 1, '167.00', '136.jpg', '8.9', NULL, NULL),
(137, 'Comfort Inn Santa Cruz', '110 Plymouth St., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '137.jpg', '8.0', NULL, NULL),
(138, 'Fairfield Inn & Suites Santa Cruz', '2956 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '218.00', '138.jpg', '9.1', NULL, NULL),
(139, 'Super 8 By Wyndham Santa Cruz/Beach Boardwalk East', '338 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '407.00', '139.jpg', '7.7', NULL, NULL),
(140, 'Chaminade Resort & Spa', 'One Chaminade Lane, Live Oak, Santa Cruz (CA), United States, 95065', 1, '439.00', '140.jpg', '7.9', NULL, NULL),
(141, 'Fireside Inn By The Beach Boardwalk & Bowling', '311 2nd Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '185.00', '141.jpg', '7.2', NULL, NULL),
(142, 'Best Western Plus Capitola By-the-Sea Inn and Suites', '1435 41st Ave, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '142.jpg', '8.9', NULL, NULL),
(143, 'Rio Vista Inn & Suites Santa Cruz', '611 Third Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '179.00', '143.jpg', '8.8', NULL, NULL),
(144, 'Hotel Paradox, Autograph Collection', '611 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '314.00', '144.jpg', '9.0', NULL, NULL),
(145, 'Mission Inn', '2250 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '189.00', '145.jpg', '8.5', NULL, NULL),
(146, 'Inn at Depot Hill', '250 Monterey Avenue, Capitola, Capitola (CA), United States, 95010', 1, '340.00', '146.jpg', '10.0', NULL, NULL),
(147, 'The Inn at Pasatiempo', '555 Highway 17, Pasatiempo, Santa Cruz (CA), United States, CA 95060', 1, '239.00', '147.jpg', '8.4', NULL, NULL),
(148, 'Howard Johnson by Wyndham Santa Cruz Beach Boardwalk', '130 West Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '136.00', '148.jpg', '7.3', NULL, NULL),
(149, 'Capitola Venetian Hotel', '1500 Wharf Road, Capitola, Capitola (CA), United States, CA 95010', 1, '340.00', '149.jpg', '8.5', NULL, NULL),
(150, 'Hampton Inn Santa Cruz', '1505 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '150.jpg', '8.2', NULL, NULL);

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
  `rating` decimal(10,1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`, `start_date`, `end_date`) VALUES
(1, 'Best Western Plus South Bay Hotel LAX', '15000 Hawthorne Boulevard Lawndale, California,, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90260', 4, '140.00', '1.jpg', '7.7', NULL, NULL),
(2, 'JW Marriott Santa Monica Le Merigot', '1740 Ocean Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '431.00', '2.jpg', '8.3', NULL, NULL),
(3, 'Andaz West Hollywood', '8401 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 4, '272.00', '3.jpg', '9.0', NULL, NULL),
(4, 'Alhambra Hotel', '2221 W Commonwealth Ave, East Los Angeles, Los Angeles (CA), United States, 91803', 4, '92.00', '4.jpg', '8.4', NULL, NULL),
(5, 'Hollywood Celebrity Hotel', '1775 Orchid Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '162.00', '5.jpg', '8.8', NULL, NULL),
(6, 'Marina del Rey Hotel', '13534 Bali Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '287.00', '6.jpg', '8.4', NULL, NULL),
(7, 'Tommie Hollywood', '6516 W Selma Ave, Hollywood, Los Angeles (CA), United States, 90028', 4, '228.00', '7.jpg', '8.4', NULL, NULL),
(8, 'The London West Hollywood at Beverly Hills', '1020 N. San Vicente Blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '459.00', '8.jpg', '8.9', NULL, NULL),
(9, 'Peacock Suites', '1745 South Anaheim Blvd., Anaheim, Los Angeles (CA), United States, 92805', 4, '199.00', '9.jpg', '8.6', NULL, NULL),
(10, '1 Hotel West Hollywood', '8490 West Sunset blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '499.00', '10.jpg', '8.7', NULL, NULL),
(11, 'Courtyard by Marriott Los Angeles Monterey Park', '555 North Atlantic Boulevard, East Los Angeles, Los Angeles (CA), United States, 91754', 4, '208.00', '11.jpg', '8.7', NULL, NULL),
(12, 'Thompson Hollywood', '1541 Wilcox Ave, Hollywood, Los Angeles (CA), United States, 90028-7308', 4, '293.00', '12.jpg', '8.4', NULL, NULL),
(13, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground', '1380 South Harbor Blvd, Anaheim, Los Angeles (CA), United States, 92802-2310', 4, '168.00', '13.jpg', '8.8', NULL, NULL),
(14, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS', '5268 TUJUNGA AVENUE, Burbank, Los Angeles (CA), United States, 91601', 4, '229.00', '14.jpg', '9.8', NULL, NULL),
(15, 'Wyndham Santa Monica At The Pier Hotel', '120 Colorado Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '283.00', '15.jpg', '7.6', NULL, NULL),
(16, 'JW Marriott Los Angeles L.A. LIVE', '900 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '599.00', '16.jpg', '8.8', NULL, NULL),
(17, 'Maison 140', '140 South Lasky Drive, Beverly Hills, California, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '209.00', '17.jpg', '7.4', NULL, NULL),
(18, 'Delta Hotels by Marriott Anaheim Garden Grove', '12021 Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92840', 4, '209.00', '18.jpg', '8.3', NULL, NULL),
(19, 'Hilton Los Angeles Universal City Hotel', '555 Universal Hollywood Drive, Universal City, Los Angeles (CA), United States, 91608', 4, '292.00', '19.jpg', '8.5', NULL, NULL),
(20, 'The Ritz-Carlton, Marina del Rey', '4375 Admiralty Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '368.00', '20.jpg', '10.0', NULL, NULL),
(21, 'Sixty Beverly Hills Hotel', '9360 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '359.00', '21.jpg', '7.9', NULL, NULL),
(22, 'Sheraton Los Angeles San Gabriel', '303 East Valley Boulevard, East Los Angeles, Los Angeles (CA), United States, 91776', 4, '197.00', '22.jpg', '8.8', NULL, NULL),
(23, 'The Hollywood Roosevelt', '7000 Hollywood Boulevard, Hollywood, Los Angeles (CA), United States, 90028', 4, '288.00', '23.jpg', '8.6', NULL, NULL),
(24, 'Hyatt Place At Anaheim Resort Conv', '2035 South Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92802', 4, '239.00', '24.jpg', '8.7', NULL, NULL),
(25, 'La Quinta Inn & Suites by Wyndham LAX', '5249 W Century Boulevard, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '138.00', '25.jpg', '7.7', NULL, NULL),
(26, 'Embassy Suites Los Angeles International Airport South Hotel', '1440 E. Imperial Avenue, LAX Los Angeles International Airport, Los Angeles (CA), United States, 90245', 4, '167.00', '26.jpg', '7.9', NULL, NULL),
(27, 'Hotel Figueroa, an Unbound Collection by Hyatt', '939 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '279.00', '27.jpg', '8.8', NULL, NULL),
(28, 'Kimpton Hotel Wilshire', '6317 Wilshire Boulevard, West Hollywood, Los Angeles (CA), United States, 90048', 4, '339.00', '28.jpg', '8.1', NULL, NULL),
(29, 'The Moment Hotel', '7370 Sunset Boulevard, Hollywood, Los Angeles (CA), United States, 90046', 4, '282.00', '29.jpg', '7.5', NULL, NULL),
(30, 'Omni Los Angeles at California Plaza', '251 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '263.00', '30.jpg', '8.6', NULL, NULL),
(31, 'The Hoxton Downtown LA', '1060 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '235.00', '31.jpg', '9.2', NULL, NULL),
(32, 'Andaz San Diego - a concept by Hyatt', '600 F Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '399.00', '32.jpg', '8.6', NULL, NULL),
(33, 'Courtyard San Diego Downtown', '530 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '314.00', '33.jpg', '8.6', NULL, NULL),
(34, 'THE US GRANT, a Luxury Collection Hotel, San Diego', '326 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '602.00', '34.jpg', '8.4', NULL, NULL),
(35, 'The Westgate Hotel', '1055 2nd Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '429.00', '35.jpg', '8.3', NULL, NULL),
(36, 'Residence Inn San Diego Downtown/Gaslamp Quarter', '356 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '949.00', '36.jpg', '9.0', NULL, NULL),
(37, 'Best Western Mission Bay', '2575 Clairemont Drive, Bay Park, San Diego (CA), United States, 92117', 5, '129.00', '37.jpg', '7.9', NULL, NULL),
(38, 'Kona Kai Resort & Spa, a Noble House Resort', '1551 Shelter Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92106', 5, '429.00', '38.jpg', '8.5', NULL, NULL),
(39, 'Embassy Suites San Diego La Jolla Hotel', '4550 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92122', 5, '220.00', '39.jpg', '8.7', NULL, NULL),
(40, 'Homewood Suites by Hilton San Diego-Del Mar - CA Hotel', '11025 Vista Sorrento Parkway, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 5, '248.00', '40.jpg', '8.6', NULL, NULL),
(41, 'Wyndham San Diego Bayside', '1355 North Harbor Dr., San Diego City Center, San Diego (CA), United States, 92101', 5, '288.00', '41.jpg', '8.0', NULL, NULL),
(42, 'Hotel Indigo San Diego - Gaslamp Quarter', '509 9th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '409.00', '42.jpg', '8.6', NULL, NULL),
(43, 'Best Western Plus Bayside Inn', '555 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101-3414', 5, '178.00', '43.jpg', '8.8', NULL, NULL),
(44, 'Country Inn & Suites by Radisson, San Diego North', '5975 Lusk Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 5, '238.00', '44.jpg', '8.4', NULL, NULL),
(45, 'Doubletree San Diego Mission Valley Hotel', '7450 Hazard Center Drive, Mission Valley East, San Diego (CA), United States, 92108', 5, '255.00', '45.jpg', '8.3', NULL, NULL),
(46, 'Courtyard San Diego Gaslamp/Convention Center', '453 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '902.00', '46.jpg', '9.1', NULL, NULL),
(47, 'Holiday Inn Express San Diego Seaworld Beach Area', '4540 Mission Bay Drive, Pacific Beach, San Diego (CA), United States, 92109', 5, '180.00', '47.jpg', '7.6', NULL, NULL),
(48, 'San Diego Marriott La Jolla', '4240 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92037', 5, '269.00', '48.jpg', '8.0', NULL, NULL),
(49, 'Residence Inn San Diego La Jolla', '8901 Gilman Drive, La Jolla, San Diego (CA), United States, 92037', 5, '332.00', '49.jpg', '9.0', NULL, NULL),
(50, 'The Westin San Diego Gaslamp Quarter', '910 Broadway Circle, San Diego City Center, San Diego (CA), United States, 92101', 5, '441.00', '50.jpg', '8.4', NULL, NULL),
(51, 'Carte Hotel San Diego Downtown, Curio Collection by Hilton', '401 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '470.00', '51.jpg', '8.7', NULL, NULL),
(52, 'DoubleTree by Hilton San Diego - Hotel Circle', '1515 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '189.00', '52.jpg', '7.7', NULL, NULL),
(53, 'InterContinental San Diego', '901 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 5, '449.00', '53.jpg', '8.8', NULL, NULL),
(54, 'Hampton Inn San Diego Downtown Hotel', '1531 Pacific Highway, San Diego City Center, San Diego (CA), United States, 92101', 5, '345.00', '54.jpg', '8.3', NULL, NULL),
(55, 'Moxy San Diego Downtown/Gaslamp Quarter', '831 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '379.00', '55.jpg', '9.8', NULL, NULL),
(56, 'Pendry San Diego', '550 J Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '489.00', '56.jpg', '9.1', NULL, NULL),
(57, 'Catamaran Resort Hotel and Spa', '3999 Mission Boulevard, Pacific Beach, San Diego (CA), United States, 92109', 5, '389.00', '57.jpg', '8.0', NULL, NULL),
(58, 'Kimpton Hotel Palomar San Diego', '1047 5th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '352.00', '58.jpg', '7.8', NULL, NULL),
(59, 'DoubleTree by Hilton Hotel San Diego - Del Mar', '11915 El Camino Real, Del Mar / Carmel Valley, San Diego (CA), United States, 92130-2539', 5, '245.00', '59.jpg', '8.1', NULL, NULL),
(60, 'Holiday Inn San Diego Bayside', '4875 North Harbor Drive, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 5, '225.00', '60.jpg', '8.0', NULL, NULL),
(61, 'The Donatello', '501 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '276.00', '61.jpg', '8.7', NULL, NULL),
(62, 'The Inn at Union Square', '440 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '260.00', '62.jpg', '9.1', NULL, NULL),
(63, 'Omni San Francisco Hotel', '500 California Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 6, '203.00', '63.jpg', '9.2', NULL, NULL),
(64, 'Hyatt Centric Fishermans Wharf', '555 North Point St, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '299.00', '64.jpg', '8.3', NULL, NULL),
(65, 'Hyatt Place Emeryville/San Francisco Bay Area', '5700 Bay Street, Oakland, San Francisco (CA), United States, 94608', 6, '199.00', '65.jpg', '8.6', NULL, NULL),
(66, 'Hotel Abri Union Square', '127 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '191.00', '66.jpg', '8.3', NULL, NULL),
(67, 'Extended Stay America Premier Suites - Oakland - Alameda', '1350 Marina Village Pkwy, Oakland, San Francisco (CA), United States, 94501', 6, '138.00', '67.jpg', '7.2', NULL, NULL),
(68, 'Axiom Hotel San Francisco', '28 Cyril Magnin ST, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '239.00', '68.jpg', '8.3', NULL, NULL),
(69, 'Courtyard San Francisco Union Square', '761 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '219.00', '69.jpg', '7.8', NULL, NULL),
(70, 'Chancellor Hotel on Union Square', '433 Powell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '182.00', '70.jpg', '9.3', NULL, NULL),
(71, 'Holiday Inn San Francisco - Golden Gateway', '1500 Van Ness Avenue, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '206.00', '71.jpg', '8.0', NULL, NULL),
(72, 'Executive Inn & Suites Oakland', '1755 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 6, '161.00', '72.jpg', '8.6', NULL, NULL),
(73, 'Handlery Union Square Hotel', '351 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '244.00', '73.jpg', '8.3', NULL, NULL),
(74, 'Hampton Inn San Francisco Downtown Convention Center', '942 Mission Street, South of Market, San Francisco (CA), United States, 94103', 6, '220.00', '74.jpg', '8.4', NULL, NULL),
(75, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel', '1800 Powell Street, Oakland, San Francisco (CA), United States, 94608', 6, '203.00', '75.jpg', '8.2', NULL, NULL),
(76, 'Executive Hotel Vintage Court', '650 Bush Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '199.00', '76.jpg', '7.7', NULL, NULL),
(77, 'The Pickwick Hotel', '85 Fifth Street, South of Market, San Francisco (CA), United States, 94103', 6, '155.00', '77.jpg', '7.5', NULL, NULL),
(78, 'The Westin St. Francis San Francisco on Union Square', '335 Powell Street , San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '206.00', '78.jpg', '8.3', NULL, NULL),
(79, 'InterContinental San Francisco', '888 Howard Street, South of Market, San Francisco (CA), United States, 94103', 6, '246.00', '79.jpg', '8.5', NULL, NULL),
(80, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham', '105 Rockaway Beach Ave, Pacifica, San Francisco (CA), United States, 94044', 6, '189.00', '80.jpg', '7.9', NULL, NULL),
(81, 'Hotel Zephyr San Francisco', '250 Beach Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '341.00', '81.jpg', '8.3', NULL, NULL),
(82, 'Grand Hyatt at SFO', '55 South McDonnell Rd, San Francisco International Airport, San Francisco (CA), United States, 94128', 6, '289.00', '82.jpg', '9.3', NULL, NULL),
(83, 'Embassy Suites San Rafael Marin County Hotel', '101 Mcinnis Parkway, Marin County, San Francisco (CA), United States, 94903', 6, '194.00', '83.jpg', '8.2', NULL, NULL),
(84, 'Casa Madrona Hotel and Spa', '801 Bridgeway, Marin County, San Francisco (CA), United States, 94965', 6, '416.00', '84.jpg', '8.5', NULL, NULL),
(85, 'Courtyard Oakland Downtown', '988 Broadway, Oakland, San Francisco (CA), United States, 94607', 6, '191.00', '85.jpg', '8.5', NULL, NULL),
(86, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat', '562 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '203.00', '86.jpg', '9.0', NULL, NULL),
(87, 'Inn Redwood City', '1818 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063-2111', 6, '127.00', '87.jpg', '7.7', NULL, NULL),
(88, 'Club Quarters Hotel in San Francisco', '424 Clay Street, San Francisco Downtown, San Francisco (CA), United States, 94111', 6, '188.00', '88.jpg', '8.3', NULL, NULL),
(89, 'Hotel Zoe Fisherman\'s Wharf', '425 NORTH POINT STREET, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '281.00', '89.jpg', '8.6', NULL, NULL),
(90, 'Hyatt House Emeryville San Francisco Bay Area', '5800 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 6, '196.00', '90.jpg', '8.6', NULL, NULL),
(91, 'Ramada by Wyndham Sunnyvale Silicon Valley', '1217 Wildwood Avenue, Santa Clara, San Jose (CA), United States, 94089', 7, '143.00', '91.jpg', '7.7', NULL, NULL),
(92, 'AC Hotel by Marriott Palo Alto', '744 San Antonio Road, Mountain View, San Jose (CA), United States, 94303', 7, '269.00', '92.jpg', '9.0', NULL, NULL),
(93, 'Residence Inn by Marriott San Jose North/Silicon Valley', '656 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '328.00', '93.jpg', '9.1', NULL, NULL),
(94, 'Hyatt Regency Santa Clara', '5101 Great America Parkway, Santa Clara, San Jose (CA), United States, 95054', 7, '220.00', '94.jpg', '8.6', NULL, NULL),
(95, 'Sonesta ES Suites Sunnyvale', '900 Hamlin Court, Sunnyvale, San Jose (CA), United States, 94089', 7, '269.00', '95.jpg', '8.6', NULL, NULL),
(96, 'Residence Inn San Jose Cupertino', '19429 Stevens Creek Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '247.00', '96.jpg', '9.8', NULL, NULL),
(97, 'The Westin Palo Alto', '675 EL CAMINO REAL, Palo Alto, San Jose (CA), United States', 7, '512.00', '97.jpg', '8.8', NULL, NULL),
(98, 'Best Western Lanai Garden Inn and Suites', '1575 Tully Road, San Jose City Center, San Jose (CA), United States, 95122-2459', 7, '126.00', '98.jpg', '8.1', NULL, NULL),
(99, 'Quality Inn & Suites Silicon Valley', '2930 El Camino Real, Santa Clara, San Jose (CA), United States, 95051', 7, '90.00', '99.jpg', '7.0', NULL, NULL),
(100, 'Country Inn & Suites by Radisson, San Jose International Airport, CA', '1350 N 4th St, San Jose City Center, San Jose (CA), United States, 95112', 7, '122.00', '100.jpg', '8.4', NULL, NULL),
(101, 'Homewood Suites by Hilton Palo Alto', '4329 El Camino Real, Mountain View, San Jose (CA), United States, 94306', 7, '225.00', '101.jpg', '9.0', NULL, NULL),
(102, 'Residence Inn Palo Alto Mountain View', '1854 El Camino Real West, Mountain View, San Jose (CA), United States, 94040', 7, '949.00', '102.jpg', '8.9', NULL, NULL),
(103, 'Holiday Inn Express Sunnyvale - Silicon Valley', '852 West El Camino Real, Mountain View, San Jose (CA), United States, 94087', 7, '145.00', '103.jpg', '8.9', NULL, NULL),
(104, 'The Palo Alto Inn', '4238 El Camino Real, Mountain View, San Jose (CA), United States, CA 94306', 7, '169.00', '104.jpg', '8.2', NULL, NULL),
(105, 'Hotel Valencia Santana Row', '355 Santana Row, San Jose City Center, San Jose (CA), United States, 95128', 7, '429.00', '105.jpg', '8.6', NULL, NULL),
(106, 'Crowne Plaza Cabana Hotel', '4290 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '276.00', '106.jpg', '8.3', NULL, NULL),
(107, 'Juniper Hotel Cupertino A Curio Collection By Hilton', '10050 S. De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '341.00', '107.jpg', '8.8', NULL, NULL),
(108, 'Comfort Inn Palo Alto', '3945 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '149.00', '108.jpg', '8.1', NULL, NULL),
(109, 'AC Hotel by Marriott Sunnyvale Moffett Park', '1235 Bordeaux Drive, Sunnyvale, San Jose (CA), United States', 7, '212.00', '109.jpg', '7.2', NULL, NULL),
(110, 'Extended Stay America Premier Suites - San Jose - Airport', '55 E. Brokaw Road, San Jose City Center, San Jose (CA), United States, 95112', 7, '147.00', '110.jpg', '7.5', NULL, NULL),
(111, 'AC Hotel by Marriott San Jose Santa Clara', '2970 Lakeside Drive, Santa Clara, San Jose (CA), United States, 95054', 7, '279.00', '111.jpg', '9.1', NULL, NULL),
(112, 'Hampton Inn & Suites San Jose Airport, CA', '2088 North First Street, San Jose City Center, San Jose (CA), United States, 95131', 7, '152.00', '112.jpg', '10.0', NULL, NULL),
(113, 'Larkspur Landing Campbell - An All-Suite Hotel', '550 West Hamilton Avenue, San Jose City Center, San Jose (CA), United States, 95008', 7, '199.00', '113.jpg', '8.5', NULL, NULL),
(114, 'Holiday Inn Express Hotel & Suites Santa Clara', '1700 El Camino Real, Santa Clara, San Jose (CA), United States, 95050', 7, '165.00', '114.jpg', '8.9', NULL, NULL),
(115, 'Hotel Zico', '200 East El Camino Real, Mountain View, San Jose (CA), United States, 94040', 7, '167.00', '115.jpg', '8.3', NULL, NULL),
(116, 'Best Western University Inn Santa Clara', '1655 El Camino Real, Santa Clara, San Jose (CA), United States, 95050-4158', 7, '169.00', '116.jpg', '8.4', NULL, NULL),
(117, 'Aloft Santa Clara', '510 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '168.00', '117.jpg', '8.7', NULL, NULL),
(118, 'Four Points by Sheraton San Jose Airport', '1471 NORTH 4TH STREET, San Jose City Center, San Jose (CA), United States, 95112', 7, '151.00', '118.jpg', '9.0', NULL, NULL),
(119, 'Silicon Way Inn', '331 East Weddell Drive, Sunnyvale, San Jose (CA), United States, CA 94089', 7, '69.00', '119.jpg', '7.8', NULL, NULL),
(120, 'Residence Inn Sunnyvale Silicon Valley II', '1080 Stewart Drive, Sunnyvale, San Jose (CA), United States, 94086', 7, '333.00', '120.jpg', '8.6', NULL, NULL),
(121, 'Holiday Inn Express Hotel & Suites Santa Cruz', '1410 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '184.00', '121.jpg', '8.1', NULL, NULL),
(122, 'Bay Front Inn - Downtown Santa Cruz', '325 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '485.00', '122.jpg', '6.7', NULL, NULL),
(123, 'Hilton Santa Cruz/Scotts Valley', '6001 La Madrona Drive, Scotts Valley, Scotts Valley (CA), United States, 95066', 1, '243.00', '123.jpg', '8.7', NULL, NULL),
(124, 'Quality Inn Santa Cruz', '1101 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '222.00', '124.jpg', '7.9', NULL, NULL),
(125, 'Budget Inn Santa Cruz', '110 San Lorenzo Boulevard, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '119.00', '125.jpg', '8.1', NULL, NULL),
(126, 'Ocean Echo Inn & Beach Cottages', '401 Johans Beach Drive, Twin Lakes, Santa Cruz (CA), United States, CA 95062', 1, '369.00', '126.jpg', '8.8', NULL, NULL),
(127, 'Hampton Inn Santa Cruz West', '2424 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '248.00', '127.jpg', '8.5', NULL, NULL),
(128, 'Best Western Inn', '126 Plymouth Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060-2932', 1, '259.00', '128.jpg', '7.8', NULL, NULL),
(129, 'Pacific Blue Inn', '636 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '259.00', '129.jpg', '8.8', NULL, NULL),
(130, 'Ocean Gate Inn', '111 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '130.00', '130.jpg', '6.9', NULL, NULL),
(131, 'Beachview Inn', '50 Front Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '155.00', '131.jpg', '8.9', NULL, NULL),
(132, 'Motel Santa Cruz Santa Cruz', '370 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '119.00', '132.jpg', '5.3', NULL, NULL),
(133, 'Comfort Inn Beach/Boardwalk Area', '314 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '217.00', '133.jpg', '7.7', NULL, NULL),
(134, 'Hyatt Place Santa Cruz', '407 BROADWAY AVENUE, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '299.00', '134.jpg', '9.0', NULL, NULL),
(135, 'Fairfield Inn & Suites Santa Cruz - Capitola', '1255 41st Avenue, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '135.jpg', '9.0', NULL, NULL),
(136, 'Fern River Resort', '5250 Highway 9, Felton, Felton (CA), United States, CA 95018', 1, '167.00', '136.jpg', '8.9', NULL, NULL),
(137, 'Comfort Inn Santa Cruz', '110 Plymouth St., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '137.jpg', '8.0', NULL, NULL),
(138, 'Fairfield Inn & Suites Santa Cruz', '2956 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '218.00', '138.jpg', '9.1', NULL, NULL),
(139, 'Super 8 By Wyndham Santa Cruz/Beach Boardwalk East', '338 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '407.00', '139.jpg', '7.7', NULL, NULL),
(140, 'Chaminade Resort & Spa', 'One Chaminade Lane, Live Oak, Santa Cruz (CA), United States, 95065', 1, '439.00', '140.jpg', '7.9', NULL, NULL),
(141, 'Fireside Inn By The Beach Boardwalk & Bowling', '311 2nd Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '185.00', '141.jpg', '7.2', NULL, NULL),
(142, 'Best Western Plus Capitola By-the-Sea Inn and Suites', '1435 41st Ave, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '142.jpg', '8.9', NULL, NULL),
(143, 'Rio Vista Inn & Suites Santa Cruz', '611 Third Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '179.00', '143.jpg', '8.8', NULL, NULL),
(144, 'Hotel Paradox, Autograph Collection', '611 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '314.00', '144.jpg', '9.0', NULL, NULL),
(145, 'Mission Inn', '2250 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '189.00', '145.jpg', '8.5', NULL, NULL),
(146, 'Inn at Depot Hill', '250 Monterey Avenue, Capitola, Capitola (CA), United States, 95010', 1, '340.00', '146.jpg', '10.0', NULL, NULL),
(147, 'The Inn at Pasatiempo', '555 Highway 17, Pasatiempo, Santa Cruz (CA), United States, CA 95060', 1, '239.00', '147.jpg', '8.4', NULL, NULL),
(148, 'Howard Johnson by Wyndham Santa Cruz Beach Boardwalk', '130 West Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '136.00', '148.jpg', '7.3', NULL, NULL),
(149, 'Capitola Venetian Hotel', '1500 Wharf Road, Capitola, Capitola (CA), United States, CA 95010', 1, '340.00', '149.jpg', '8.5', NULL, NULL),
(150, 'Hampton Inn Santa Cruz', '1505 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '150.jpg', '8.2', NULL, NULL);

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
(1, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 1),
(2, 'Bottega Louie', 'Bottega Louie.jpg', 1),
(3, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 1),
(4, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 2),
(5, 'Bottega Louie', 'Bottega Louie.jpg', 2),
(6, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 2),
(7, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 3),
(8, 'Bottega Louie', 'Bottega Louie.jpg', 3),
(9, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 3),
(10, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 4),
(11, 'Bottega Louie', 'Bottega Louie.jpg', 4),
(12, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 4),
(13, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 5),
(14, 'Bottega Louie', 'Bottega Louie.jpg', 5),
(15, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 5),
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
(28, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 10),
(29, 'Bottega Louie', 'Bottega Louie.jpg', 10),
(30, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 10),
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
(43, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 15),
(44, 'Bottega Louie', 'Bottega Louie.jpg', 15),
(45, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 15),
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
(61, 'Daikokuya Little Tokyo', 'Daikokuya Little Tokyo.jpg', 21),
(62, 'Bottega Louie', 'Bottega Louie.jpg', 21),
(63, 'Morrison Atwater Village', 'Morrison Atwater Village.jpg', 21),
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
(91, 'Sushi Ota', 'Sushi Ota.jpg', 31),
(92, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 31),
(93, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 31),
(94, 'Sushi Ota', 'Sushi Ota.jpg', 32),
(95, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 32),
(96, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 32),
(97, 'Sushi Ota', 'Sushi Ota.jpg', 33),
(98, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 33),
(99, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 33),
(100, 'Sushi Ota', 'Sushi Ota.jpg', 34),
(101, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 34),
(102, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 34),
(103, 'Sushi Ota', 'Sushi Ota.jpg', 35),
(104, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 35),
(105, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 35),
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
(118, 'Sushi Ota', 'Sushi Ota.jpg', 40),
(119, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 40),
(120, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 40),
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
(133, 'Sushi Ota', 'Sushi Ota.jpg', 45),
(134, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 45),
(135, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 45),
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
(148, 'Sushi Ota', 'Sushi Ota.jpg', 50),
(149, 'Snooze, an A.M. Eatery', 'Snooze, an A.M. Eatery.jpg', 50),
(150, 'Hash House A Go Go', 'Hash House A Go Go.jpg', 50),
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
(181, 'Foreign Cinema', 'Foreign Cinema.jpg', 61),
(182, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 61),
(183, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 61),
(184, 'Foreign Cinema', 'Foreign Cinema.jpg', 62),
(185, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 62),
(186, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 62),
(187, 'Foreign Cinema', 'Foreign Cinema.jpg', 63),
(188, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 63),
(189, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 63),
(190, 'Foreign Cinema', 'Foreign Cinema.jpg', 64),
(191, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 64),
(192, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 64),
(193, 'Foreign Cinema', 'Foreign Cinema.jpg', 65),
(194, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 65),
(195, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 65),
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
(208, 'Foreign Cinema', 'Foreign Cinema.jpg', 70),
(209, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 70),
(210, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 70),
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
(223, 'Foreign Cinema', 'Foreign Cinema.jpg', 75),
(224, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 75),
(225, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 75),
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
(238, 'Foreign Cinema', 'Foreign Cinema.jpg', 80),
(239, 'Mitchells Ice Cream', 'Mitchells Ice Cream.jpg', 80),
(240, 'Marufuku Ramen', 'Marufuku Ramen.jpg', 80),
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
(271, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 91),
(272, 'A Slice of New York', 'A Slice of New York.jpg', 91),
(273, 'Philz Coffee', 'Philz Coffee.jpg', 91),
(274, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 92),
(275, 'A Slice of New York', 'A Slice of New York.jpg', 92),
(276, 'Philz Coffee', 'Philz Coffee.jpg', 92),
(277, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 93),
(278, 'A Slice of New York', 'A Slice of New York.jpg', 93),
(279, 'Philz Coffee', 'Philz Coffee.jpg', 93),
(280, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 94),
(281, 'A Slice of New York', 'A Slice of New York.jpg', 94),
(282, 'Philz Coffee', 'Philz Coffee.jpg', 94),
(283, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 95),
(284, 'A Slice of New York', 'A Slice of New York.jpg', 95),
(285, 'Philz Coffee', 'Philz Coffee.jpg', 95),
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
(298, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 100),
(299, 'A Slice of New York', 'A Slice of New York.jpg', 100),
(300, 'Philz Coffee', 'Philz Coffee.jpg', 100),
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
(313, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 105),
(314, 'A Slice of New York', 'A Slice of New York.jpg', 105),
(315, 'Philz Coffee', 'Philz Coffee.jpg', 105),
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
(328, 'Gen Korean BBQ House', 'Gen Korean BBQ House.jpg', 110),
(329, 'A Slice of New York', 'A Slice of New York.jpg', 110),
(330, 'Philz Coffee', 'Philz Coffee.jpg', 110),
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
(361, 'Seabright Deli', 'Seabright Deli.jpg', 121),
(362, 'Cafe Brasil', 'Cafe Brasil.jpg', 121),
(363, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 121),
(364, 'Seabright Deli', 'Seabright Deli.jpg', 122),
(365, 'Cafe Brasil', 'Cafe Brasil.jpg', 122),
(366, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 122),
(367, 'Seabright Deli', 'Seabright Deli.jpg', 123),
(368, 'Cafe Brasil', 'Cafe Brasil.jpg', 123),
(369, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 123),
(370, 'Seabright Deli', 'Seabright Deli.jpg', 124),
(371, 'Cafe Brasil', 'Cafe Brasil.jpg', 124),
(372, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 124),
(373, 'Seabright Deli', 'Seabright Deli.jpg', 125),
(374, 'Cafe Brasil', 'Cafe Brasil.jpg', 125),
(375, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 125),
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
(388, 'Seabright Deli', 'Seabright Deli.jpg', 130),
(389, 'Cafe Brasil', 'Cafe Brasil.jpg', 130),
(390, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 130),
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
(403, 'Seabright Deli', 'Seabright Deli.jpg', 135),
(404, 'Cafe Brasil', 'Cafe Brasil.jpg', 135),
(405, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 135),
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
(418, 'Seabright Deli', 'Seabright Deli.jpg', 140),
(419, 'Cafe Brasil', 'Cafe Brasil.jpg', 140),
(420, 'Pacific Cookie Company', 'Pacific Cookie Company.jpg', 140),
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
  `password` varchar(128) NOT NULL,
  `reward_points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `username`, `password`, `reward_points`) VALUES
(1, 'user', '$2y$10$YTr/kjkrcb5gxyMoyukRbOn3cxBOLXCxHeRWgrpyWos5.nE6rBP3u', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookedhotel`
--
ALTER TABLE `bookedhotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD UNIQUE KEY `hotel_id` (`hotel_id`),
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
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
