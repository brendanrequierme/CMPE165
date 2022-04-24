-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 06:27 AM
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
(1, 'Beachview Inn', 'Within easy reach of Santa Cruz Beach Boardwalk', 1, '237.00', 'beachview.jpg', NULL),
(2, 'Casablanca On The Beach', '3.5-star beach hotel with restaurant, near Santa Cruz Beach Boardwalk', 1, '589.00', 'casablanca.jpg', NULL),
(3, 'Bellagio', 'Luxury hotel with 18 restaurants, near Bellagio Conservatory & Botanical Gardens', 2, '394.00', 'bellagio.jpg', NULL),
(4, 'The Paramount Hotel', '3.5-star hotel with 24-hour health club, near Washington State Convention Center', 3, '179.00', 'paramount.jpg', NULL),
(5, 'Best Western Plus South Bay Hotel LAX', '15000 Hawthorne Boulevard Lawndale, California,, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90260', 4, '140.00', '//pix8.agoda.net/hotelImages/108625/0/fb27c202359803099fd15beb43465e0c.jpg?ca=7&ce=1&s=1024x768', '7.7'),
(6, 'JW Marriott Santa Monica Le Merigot', '1740 Ocean Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '431.00', '//pix8.agoda.net/hotelImages/471/47167/47167_08091300010012091.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(7, 'Andaz West Hollywood', '8401 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 4, '272.00', '//pix8.agoda.net/hotelImages/2450480/0/a6868916137b7e801e70b6b040f1a36a.jpg?ca=7&ce=1&s=1024x768', '9.0'),
(8, 'Alhambra Hotel', '2221 W Commonwealth Ave, East Los Angeles, Los Angeles (CA), United States, 91803', 4, '92.00', '//pix8.agoda.net/hotelImages/1030535/0/f6455e3b5d5d451cb550b5ca78083716.jpg?ca=7&ce=1&s=1024x768', '8.4'),
(9, 'Hollywood Celebrity Hotel', '1775 Orchid Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '162.00', '//pix8.agoda.net/hotelImages/64646/-1/c851c3dc035ecdadfddfc7ea7c8e7f5a.jpg?ca=12&ce=1&s=1024x768', '8.8'),
(10, 'Marina del Rey Hotel', '13534 Bali Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '287.00', '//pix8.agoda.net/hotelImages/6770899/0/b862f6362bc649109cdbb070de8ebf6a.jpg?ca=8&ce=1&s=1024x768', '8.4'),
(11, 'Tommie Hollywood', '6516 W Selma Ave, Hollywood, Los Angeles (CA), United States, 90028', 4, '228.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/336141402.jpg?k=429725802a61546f0e7da106f351ad5fe81c4f26522b0c9c75a07821358fdb31&o=', '8.4'),
(12, 'The London West Hollywood at Beverly Hills', '1020 N. San Vicente Blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '459.00', '//pix8.agoda.net/hotelImages/5213114/0/24f94218136a31dec23b0e9dab9e4cb2.jpg?ca=9&ce=1&s=1024x768', '8.9'),
(13, 'Peacock Suites', '1745 South Anaheim Blvd., Anaheim, Los Angeles (CA), United States, 92805', 4, '199.00', '//pix8.agoda.net/hotelImages/4890910/0/a074d346f561086af2c168ec05f61300.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(14, '1 Hotel West Hollywood', '8490 West Sunset blvd, West Hollywood, Los Angeles (CA), United States, 90069', 4, '499.00', '//pix8.agoda.net/hotelImages/7544322/0/212e8eb0d735277e879c3c00f46d79aa.jpg?ca=22&ce=0&s=1024x768', '8.7'),
(15, 'Courtyard by Marriott Los Angeles Monterey Park', '555 North Atlantic Boulevard, East Los Angeles, Los Angeles (CA), United States, 91754', 4, '208.00', '//pix8.agoda.net/hotelImages/8250435/0/2d811b307a745ffbc35a38994358b4d0.jpg?ca=26&ce=0&s=1024x768', '8.7'),
(16, 'Thompson Hollywood', '1541 Wilcox Ave, Hollywood, Los Angeles (CA), United States, 90028-7308', 4, '293.00', '//pix8.agoda.net/hotelImages/28880289/0/487814f243dcbc66f31a6d57dad95336.jpg?ca=24&ce=0&s=1024x768', '8.4'),
(17, 'Howard Johnson by Wyndham Anaheim Hotel & Water Playground', '1380 South Harbor Blvd, Anaheim, Los Angeles (CA), United States, 92802-2310', 4, '168.00', '//pix8.agoda.net/hotelImages/2308145/0/d92ecb12a1c356851b63dfdfba614a2a.jpg?ca=9&ce=1&s=1024x768', '8.8'),
(18, 'LEXEN HOTEL - NORTH HOLLYWOOD NEAR UNIVERSAL STUDIOS', '5268 TUJUNGA AVENUE, Burbank, Los Angeles (CA), United States, 91601', 4, '229.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/231872126.jpg?k=242c0ff4b0511f7df8f9954fcc136f324a3a0db7c74e7aa2f6ce8e6b24cbb393&o=', '9.8'),
(19, 'Wyndham Santa Monica At The Pier Hotel', '120 Colorado Avenue, Santa Monica, Los Angeles (CA), United States, 90401', 4, '283.00', '//pix8.agoda.net/hotelImages/73393/0/dd5f064c10419db54a6ede00fda19c77.jpg?ca=7&ce=1&s=1024x768', '7.6'),
(20, 'JW Marriott Los Angeles L.A. LIVE', '900 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '599.00', '//pix8.agoda.net/hotelImages/4892030/0/27b4eefda6b5673963f955dcc96e0453.jpg?ca=26&ce=0&s=1024x768', '8.8'),
(21, 'Maison 140', '140 South Lasky Drive, Beverly Hills, California, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '209.00', '//pix8.agoda.net/hotelImages/46427/-1/a2090958f9355d58adc813020e7f62da.jpg?ca=18&ce=1&s=1024x768', '7.4'),
(22, 'Delta Hotels by Marriott Anaheim Garden Grove', '12021 Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92840', 4, '209.00', '//pix8.agoda.net/hotelImages/6501176/0/12b02f826e905cece214d64a14958200.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(23, 'Hilton Los Angeles Universal City Hotel', '555 Universal Hollywood Drive, Universal City, Los Angeles (CA), United States, 91608', 4, '292.00', '//pix8.agoda.net/hotelImages/170120/0/404ebfab7e6460e342941a07e04974cf.jpg?ca=7&ce=1&s=1024x768', '8.5'),
(24, 'The Ritz-Carlton, Marina del Rey', '4375 Admiralty Way, Marina Del Rey, Los Angeles (CA), United States, 90292', 4, '368.00', '//pix8.agoda.net/hotelImages/5672916/0/fb6cebc14ba0a151687c6d1f3f750d02.jpg?ca=26&ce=0&s=1024x768', '10.0'),
(25, 'Sixty Beverly Hills Hotel', '9360 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90212', 4, '359.00', '//pix8.agoda.net/hotelImages/4892021/0/6dc8a75831fb39f2c505cbe4f9415034.jpg?ca=9&ce=1&s=1024x768', '7.9'),
(26, 'Sheraton Los Angeles San Gabriel', '303 East Valley Boulevard, East Los Angeles, Los Angeles (CA), United States, 91776', 4, '197.00', '//pix8.agoda.net/hotelImages/4865872/0/25a95190ae32886240cb80d3bd601ecb.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(27, 'The Hollywood Roosevelt', '7000 Hollywood Boulevard, Hollywood, Los Angeles (CA), United States, 90028', 4, '288.00', '//pix8.agoda.net/hotelImages/413/4136/4136_14100103300022515073.jpg?ca=3&ce=1&s=1024x768', '8.6'),
(28, 'Hyatt Place At Anaheim Resort Conv', '2035 South Harbor Boulevard, Anaheim, Los Angeles (CA), United States, 92802', 4, '239.00', '//pix8.agoda.net/hotelImages/2453520/0/fbd5cf8f47b5482a87ef4ee35a5707e0.jpg?ca=0&ce=1&s=1024x768', '8.7'),
(29, 'La Quinta Inn & Suites by Wyndham LAX', '5249 W Century Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '138.00', '//pix8.agoda.net/hotelImages/907/907334/907334_17041121310052323754.jpg?ca=6&ce=1&s=1024x768', '7.7'),
(30, 'Embassy Suites Los Angeles International Airport South Hotel', '1440 E. Imperial Avenue, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90245', 4, '167.00', '//pix8.agoda.net/hotelImages/5083474/0/ae29f91d4ec5b4c0c6a69a1a427a765f.jpg?ca=23&ce=0&s=1024x768', '7.9'),
(31, 'Hotel Figueroa, an Unbound Collection by Hyatt', '939 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '279.00', '//pix8.agoda.net/hotelImages/850319/-1/00a290697e330a442c2213222d9b952e.jpg?ca=0&ce=1&s=1024x768', '8.8'),
(32, 'Kimpton Hotel Wilshire', '6317 Wilshire Boulevard, West Hollywood, Los Angeles (CA), United States, 90048', 4, '339.00', '//pix8.agoda.net/hotelImages/4877515/0/0c168de266a57cf1dc1e7daafe2cb992.jpg?ca=23&ce=0&s=1024x768', '8.1'),
(33, 'The Moment Hotel', '7370 Sunset Boulevard, Hollywood, Los Angeles (CA), United States, 90046', 4, '282.00', '//pix8.agoda.net/hotelImages/485/485351/485351_16061502400043570424.jpg?ca=6&ce=1&s=1024x768', '7.5'),
(34, 'Omni Los Angeles at California Plaza', '251 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '263.00', '//pix8.agoda.net/hotelImages/5513961/0/3baaf85c5feba5ecdaf6d2c046167670.jpg?ca=22&ce=0&s=1024x768', '8.6'),
(35, 'The Hoxton Downtown LA', '1060 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '235.00', '//pix8.agoda.net/hotelImages/20840123/-1/2f632c45df69d30e2b1ccd8a67aa7481.jpg?ca=16&ce=1&s=1024x768', '9.2'),
(36, 'Hilton Checkers Los Angeles Hotel', '535 South Grand Avenue, Downtown Los Angeles, Los Angeles (CA), United States, 90071', 4, '271.00', '//pix8.agoda.net/hotelImages/46438/0/d6310772ee50130ba243cfc4d106eda6.jpg?ca=7&ce=1&s=1024x768', '7.8'),
(37, 'Hilton Los Angeles Airport', '5711 West Century Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '181.00', '//pix8.agoda.net/hotelImages/2291036/0/6f3ad34df43a4ada14a972ef9e037c3a.jpg?ca=22&ce=0&s=1024x768', '7.8'),
(38, 'Courtyard Los Angeles L.A. LIVE', '901 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '349.00', '//pix8.agoda.net/hotelImages/5149176/0/54fc1d37093b03ba19dea8ccc4629903.jpg?ca=27&ce=0&s=1024x768', '8.8'),
(39, 'Embassy Suites by Hilton Anaheim Orange', '400 N. State College Boulevard, Anaheim, Los Angeles (CA), United States, 92868', 4, '197.00', '//pix8.agoda.net/hotelImages/2652025/0/0527e0e384442876870785615bbfedc4.jpg?ca=7&ce=1&s=1024x768', '8.5'),
(40, 'Miyako Hotel Los Angeles', '328 East 1st Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '225.00', '//pix8.agoda.net/hotelImages/6795854/0/6bf7ca30dfe531319f4910d4e49c6925.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(41, 'DoubleTree by Hilton Hotel Anaheim - Orange County', '100 The City Drive, Orange, Anaheim, Los Angeles (CA), United States, 92868', 4, '150.00', '//pix8.agoda.net/hotelImages/1334/0/01e60b5de9a1206c5ebd333f8b6e3de7.jpg?ca=7&ce=1&s=1024x768', '8.1'),
(42, 'The Westin Bonaventure Hotel and Suites', '404 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90071', 4, '399.00', '//pix8.agoda.net/hotelImages/4879802/0/c0262963fc5a36e91accf1c45d5b11db.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(43, 'Hotel Erwin', '1697 Pacific Avenue, Venice Beach, Los Angeles (CA), United States, 90291', 4, '399.00', '//pix8.agoda.net/hotelImages/229/2291962/2291962_17071403170054449643.jpg?ca=6&ce=1&s=1024x768', '8.8'),
(44, 'citizenM Los Angeles Downtown', '361 South Spring Street, Downtown Los Angeles, Los Angeles (CA), United States, CA 90013', 4, '209.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/352089258.jpg?k=45e95be03781ccb87319de0c7e776cd0bd848d244ebfb5ed92f28dca38238ac7&o=', '9.7'),
(45, 'Los Angeles Airport Marriott', '5855 West Century Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '179.00', '//pix8.agoda.net/hotelImages/4874660/0/009a51a577a925669ae93aec2e6875d8.jpg?ca=27&ce=0&s=1024x768', '8.3'),
(46, 'O Hotel', '819 South Flower Street, Downtown Los Angeles, Los Angeles (CA), United States, 90017', 4, '169.00', '//pix8.agoda.net/hotelImages/147300/0/918c4706034b817b942166dcb03b815c.jpg?ca=0&ce=1&s=1024x768', '7.9'),
(47, 'Best Western Hollywood Plaza Inn- Hollywood Walk of Fame Hotel- LA', '2011 North Highland Avenue, Hollywood, Los Angeles (CA), United States, 90068', 4, '275.00', '//pix8.agoda.net/hotelImages/644/64454/64454_16060910100043315784.jpg?ca=6&ce=1&s=1024x768', '7.6'),
(48, 'E Central Hotel Downtown Los Angeles', '1020 South Figueroa Street, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '244.00', '//pix8.agoda.net/hotelImages/6771272/0/270b82e2c4c812682e38c00ece304feb.jpg?ca=8&ce=1&s=1024x768', '8.3'),
(49, 'Huntley Santa Monica Beach', '1111 2nd Street, Santa Monica, Los Angeles (CA), United States, 90403', 4, '629.00', '//pix8.agoda.net/hotelImages/4868428/0/b1f160688e8b7cdd724808d1db8f2916.jpg?ca=9&ce=1&s=1024x768', '8.6'),
(50, 'DoubleTree by Hilton Los Angeles - Norwalk', '13111 Sycamore Drive, East Los Angeles, Los Angeles (CA), United States', 4, '161.00', '//pix8.agoda.net/hotelImages/272200/0/a25e1bc26f9a28bd6da2393f8a6256db.jpg?ca=7&ce=1&s=1024x768', '8.3'),
(51, 'The Godfrey Hotel Hollywood', '1400 Cahuenga Blvd, Hollywood, Los Angeles (CA), United States, 90028', 4, '271.00', '//pix8.agoda.net/hotelImages/636/6363439/6363439_19011206400071239592.jpg?ca=7&ce=1&s=1024x768', '8.8'),
(52, 'Hotel MDR Marina del Rey - a DoubleTree by Hilton', '13480 Maxella Avenue, Marina del Rey, California, 90292, Marina Del Rey, Los Angeles (CA), United States', 4, '269.00', '//pix8.agoda.net/hotelImages/95044/0/a39980f79a37753a4009ac82c47939e1.jpg?ca=7&ce=1&s=1024x768', '7.7'),
(53, 'Holly Crest Hotel - Los Angeles, LAX Airport', '4027 West Century Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90304', 4, '85.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/268124496.jpg?k=1a3b76d01d074586570ec8c3d9c84477662e62f92fe4b5c10058b498214ecfb6&o=', '7.5'),
(54, 'Holiday Inn Express Hollywood Walk of Fame', '1921 N. Highland Avenue, Hollywood, Los Angeles (CA), United States, 90068', 4, '319.00', '//pix8.agoda.net/hotelImages/6578045/0/572eff9c5a360fed58b3f8379ff65c65.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(55, 'Loews Hollywood Hotel', '1755 North Highland Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '251.00', '//pix8.agoda.net/hotelImages/93758/0/1a0c1e20958cd03dfeb05c0792b16df0.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(56, 'Haas Building Residences', '219 w. 7th Street, Downtown Los Angeles, Los Angeles (CA), United States, CA 90014', 4, '311.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/289146863.jpg?k=8768cd804acaf68d3c49cf5eed5c230d090977bdd1f1b3e71a3d120eed44e4a3&o=', '8.3'),
(57, 'Plaza la Reina', '10850 Lindbrook Drive, Westwood, Los Angeles (CA), United States, 90024', 4, '324.00', '//pix8.agoda.net/hotelImages/5073814/0/7159e0431e7c6df1a1949ac05b0ed80b.jpg?ca=23&ce=0&s=1024x768', '9.2'),
(58, 'Sheraton Grand Los Angeles', '711 South Hope Street, Downtown Los Angeles, Los Angeles (CA), United States, 90017', 4, '369.00', '//pix8.agoda.net/hotelImages/5666732/0/1ef9b717314f7d09d57d48ff72ee6dde.jpg?ca=26&ce=0&s=1024x768', '8.4'),
(59, 'Mondrian Los Angeles Hotel', '8440 Sunset Boulevard, West Hollywood, Los Angeles (CA), United States, 90069', 4, '305.00', '//pix8.agoda.net/hotelImages/4888147/0/6937ceace16c41283b6f30f249be02cb.jpg?ca=22&ce=0&s=1024x768', '8.2'),
(60, 'Ace Hotel Downtown Los Angeles', '929 South Broadway, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '259.00', '//pix8.agoda.net/hotelImages/12786859/0/1ae1b7493c9a240e0a304234b46cd44d.jpg?ca=23&ce=0&s=1024x768', '8.1'),
(61, 'Hotel Normandie Los Angeles', '605 South Normandie Avenue, Koreatown, Los Angeles (CA), United States, 90005', 4, '224.00', '//pix8.agoda.net/hotelImages/520414/0/ffc72dcffb6f4ab497354f5884bcdb68.jpg?ca=0&ce=1&s=1024x768', '8.2'),
(62, 'Waldorf Astoria Beverly Hills', '9850 Wilshire Boulevard, Beverly Hills, Los Angeles (CA), United States, 90210', 4, '1.00', '//pix8.agoda.net/hotelImages/2018809/0/4635ebd5480a8151f4d3cc1e4086c622.jpg?ca=7&ce=1&s=1024x768', '9.3'),
(63, 'Doubletree by Hilton Los Angeles Downtown Hotel', '120 South Los Angeles Street, Downtown Los Angeles, Los Angeles (CA), United States, 90012', 4, '220.00', '//pix8.agoda.net/hotelImages/3503/0/0d77070e2106aea154d2d2405b5f0b03.jpg?ca=7&ce=1&s=1024x768', '7.7'),
(64, 'Le Parc Suite Hotel', '733 North West Knoll Drive, West Hollywood, Los Angeles (CA), United States, 90069', 4, '319.00', '//pix8.agoda.net/hotelImages/5595256/0/efda8e7125108351179fb8756f5cfcea.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(65, 'Holiday Inn Express Los Angeles LAX Airport', '8620 Airport Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '214.00', '//pix8.agoda.net/hotelImages/6770645/0/15276c9991788a67e4bef48a62777eda.jpg?ca=23&ce=0&s=1024x768', '8.5'),
(66, 'Hilton Santa Monica Hotel & Suites', '1707 Fourth Street, Santa Monica, Los Angeles (CA), United States, 90401', 4, '405.00', '//pix8.agoda.net/hotelImages/47166/-1/6ea7376ba3d8e7854df993a2d0f1f2b5.jpg?ca=17&ce=1&s=1024x768', '8.1'),
(67, 'Glendale Express Hotel', '450 WEST PIONEER DRIVE, Glendale, Los Angeles (CA), United States, 91203', 4, '129.00', '//pix8.agoda.net/hotelImages/9827556/-1/51625e1480cbb1ea31674f135749108b.jpg?ca=9&ce=1&s=1024x768', '9.0'),
(68, 'H HotelLos AngelesCurio CollectionBy Hilton', '6151 West Century Blvd., LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '254.00', '//pix8.agoda.net/hotelImages/3632496/-1/353a48822981c41d0518195770815be1.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(69, 'Residence Inn Los Angeles L.A. LIVE', '901 West Olympic Boulevard, Downtown Los Angeles, Los Angeles (CA), United States, 90015', 4, '539.00', '//pix8.agoda.net/hotelImages/5546873/0/56ae230da6ce2b43327acc240c4b7f6a.jpg?ca=27&ce=0&s=1024x768', '9.2'),
(70, 'Santa Monica Proper Hotel', '700 Wilshire Boulevard, Santa Monica, Los Angeles (CA), United States, CA 90401', 4, '611.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/214155506.jpg?k=ead1207eaedfdadf607a5f3c9b82a8d84b81e47826d77042e2cca178f40e12f2&o=', '9.3'),
(71, 'The Beverly Hilton Hotel', '9876 Wilshire Blvd, Beverly Hills, Los Angeles (CA), United States, 90210', 4, '412.00', '//pix8.agoda.net/hotelImages/5672115/0/1a0a1d75f3017dc25c5e43e63149d867.jpg?ca=23&ce=0&s=1024x768', '8.1'),
(72, 'The Belamar Hotel Manhattan Beach, Tapestry by Hilton', '3501 N. Sepulveda Blvd., Beach Cities, Los Angeles (CA), United States, 90266', 4, '206.00', '//pix8.agoda.net/hotelImages/277/277410/277410_1211272251008720200.jpg?ca=0&ce=1&s=1024x768', '8.9'),
(73, 'Hampton Inn & Suites Anaheim Resort Convention Center', '100 W. Katella Avenue, Anaheim, Los Angeles (CA), United States, 92802', 4, '201.00', '//pix8.agoda.net/hotelImages/8545662/0/ebff8b02e83e1060a99953e707356f87.jpg?ca=17&ce=1&s=1024x768', '9.1'),
(74, 'Shore Hotel', '1515 Ocean Ave, Santa Monica, Los Angeles (CA), United States, 90401', 4, '589.00', '//pix8.agoda.net/hotelImages/4873148/0/4bb27a421a20a3a1a6d10cd1201e7020.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(75, 'Hyatt Regency Los Angeles International Airport', '6225 West Century Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '208.00', '//pix8.agoda.net/hotelImages/2285161/0/07f33d8129975eb66f89bf061b02beeb.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(76, 'Millennium Biltmore Los Angeles', '506 South Grand Avenue, Downtown Los Angeles, Los Angeles (CA), United States, 90071', 4, '219.00', '//pix8.agoda.net/hotelImages/441/44144/44144_15040223480026694229.jpg?ca=3&ce=1&s=1024x768', '7.9'),
(77, 'Kimpton Everly Hotel', '1800 Argyle Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '287.00', '//pix8.agoda.net/hotelImages/5075122/0/ae1b1d0883b0518247e1f4fdb468b7cb.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(78, 'Dream Hollywood', '6417 Selma Avenue, Hollywood, Los Angeles (CA), United States, 90028', 4, '305.00', '//pix8.agoda.net/hotelImages/6841029/0/90c84facd13084380cd32cdd864963b2.jpg?ca=22&ce=0&s=1024x768', '8.5'),
(79, 'Embassy Suites Los Angeles Glendale Hotel', '800 North Central Avenue, Glendale, Los Angeles (CA), United States, 91203', 4, '227.00', '//pix8.agoda.net/hotelImages/184001/0/6bf5423f116c22873ec742b056f4b708.jpg?ca=7&ce=1&s=1024x768', '8.2'),
(80, 'Holiday Inn Los Angeles - LAX Airport', '9901 South La Cienega Boulevard, LAX ? Los Angeles International Airport, Los Angeles (CA), United States, 90045', 4, '157.00', '//pix8.agoda.net/hotelImages/4885016/0/b18dadeb6e0c5bc3fb333285387e369a.jpg?ca=23&ce=0&s=1024x768', '7.5'),
(81, 'Hyatt Place Pasadena', '399 East Green Street, Pasadena, Los Angeles (CA), United States, 91101', 4, '233.00', '//pix8.agoda.net/hotelImages/18391885/0/a93c7289380ea189c5c53bf2278d7e8e.jpg?ca=14&ce=1&s=1024x768', '8.9'),
(82, 'LEVEL Downtown Los Angeles', '888 South Olive Street, Downtown Los Angeles, Los Angeles (CA), United States, 90014', 4, '443.00', '//pix8.agoda.net/hotelImages/965/965313/965313_16070101330044317920.jpg?ca=6&ce=1&s=1024x768', '8.3'),
(83, 'Santa Monica Motel', '2102 Lincoln Blvd, Santa Monica, Los Angeles (CA), United States, 90405', 4, '199.00', '//pix8.agoda.net/hotelImages/3363256/-1/05279acf17b77ca4eaabd9b2e227eee7.jpg?ca=21&ce=0&s=1024x768', '8.6'),
(84, 'The Dana on Mission Bay', '1710 W Mission Bay Dr., Misson Bay / Loma Heights, San Diego (CA), United States, 92109', 5, '246.00', '//pix8.agoda.net/hotelImages/6796158/0/eb24c7079a18b6bc0d0f30aa031089f7.jpg?ca=8&ce=1&s=1024x768', '8.1'),
(85, 'Andaz San Diego - a concept by Hyatt', '600 F Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '399.00', '//pix8.agoda.net/hotelImages/193/193636/193636_16101817470047876999.jpg?ca=6&ce=1&s=1024x768', '8.6'),
(86, 'Courtyard San Diego Downtown', '530 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '314.00', '//pix8.agoda.net/hotelImages/4874892/0/c0a574a2aefe1185a6e7debf512770df.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(87, 'THE US GRANT, a Luxury Collection Hotel, San Diego', '326 Broadway, San Diego City Center, San Diego (CA), United States, 92101', 5, '602.00', '//pix8.agoda.net/hotelImages/6501182/0/f40c42c055442b99d5b26134d07f7bc6.jpg?ca=27&ce=0&s=1024x768', '8.4'),
(88, 'The Westgate Hotel', '1055 2nd Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '429.00', '//pix8.agoda.net/hotelImages/2454639/0/43c7a242cab877188c57d7ad6769eaea.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(89, 'Residence Inn San Diego Downtown/Gaslamp Quarter', '356 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '949.00', '//pix8.agoda.net/hotelImages/4894635/0/36a20a272e7241123a7ca54213e2a118.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(90, 'Best Western Mission Bay', '2575 Clairemont Drive, Bay Park, San Diego (CA), United States, 92117', 5, '129.00', '//pix8.agoda.net/hotelImages/3583188/0/eb06717404056a719fc161816cf4cd25.jpg?ca=9&ce=1&s=1024x768', '7.9'),
(91, 'Kona Kai Resort & Spa, a Noble House Resort', '1551 Shelter Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92106', 5, '429.00', '//pix8.agoda.net/hotelImages/4459929/0/0259c2ec2e251dcaeee7e259de376996.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(92, 'Embassy Suites San Diego La Jolla Hotel', '4550 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92122', 5, '220.00', '//pix8.agoda.net/hotelImages/798/79816/79816_16061815180043767255.jpg?ca=6&ce=1&s=1024x768', '8.7'),
(93, 'Homewood Suites by Hilton San Diego-Del Mar - CA Hotel', '11025 Vista Sorrento Parkway, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 5, '248.00', '//pix8.agoda.net/hotelImages/79286/0/8768c46a24d55e6917d14b0cb5ae9541.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(94, 'Wyndham San Diego Bayside', '1355 North Harbor Dr., San Diego City Center, San Diego (CA), United States, 92101', 5, '288.00', '//pix8.agoda.net/hotelImages/2293368/0/b2bc435523f364c4cdff0fc6b611b5c1.jpg?ca=9&ce=1&s=1024x768', '8.0'),
(95, 'Hotel Indigo San Diego - Gaslamp Quarter', '509 9th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '409.00', '//pix8.agoda.net/hotelImages/4892804/0/108c55ac1d79600c198a8bb7aae99994.jpg?ca=28&ce=0&s=1024x768', '8.6'),
(96, 'Best Western Plus Bayside Inn', '555 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101-3414', 5, '178.00', '//pix8.agoda.net/hotelImages/2295262/0/d07a2b4b141fe3ec537530cafc70abd9.jpg?ca=10&ce=1&s=1024x768', '8.8'),
(97, 'Country Inn & Suites by Radisson, San Diego North', '5975 Lusk Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 5, '238.00', '//pix8.agoda.net/hotelImages/23223886/0/713474e952ac785763af998cd3397f5a.jpg?ca=18&ce=1&s=1024x768', '8.4'),
(98, 'Doubletree San Diego Mission Valley Hotel', '7450 Hazard Center Drive, Mission Valley East, San Diego (CA), United States, 92108', 5, '255.00', '//pix8.agoda.net/hotelImages/63097/0/fc70034c69c3c395074f524ed9b36feb.jpg?ca=7&ce=1&s=1024x768', '8.3'),
(99, 'Courtyard San Diego Gaslamp/Convention Center', '453 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '902.00', '//pix8.agoda.net/hotelImages/5149752/0/07bf9b1a9318d9019ebe68caa5393a6b.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(100, 'Holiday Inn Express San Diego Seaworld Beach Area', '4540 Mission Bay Drive, Pacific Beach, San Diego (CA), United States, 92109', 5, '180.00', '//pix8.agoda.net/hotelImages/5081064/0/e730046373d013d1dee61d7e22fd1593.jpg?ca=23&ce=0&s=1024x768', '7.6'),
(101, 'San Diego Marriott La Jolla', '4240 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92037', 5, '269.00', '//pix8.agoda.net/hotelImages/5106251/0/200f59755675a930f5a31d59e73e98d8.jpg?ca=23&ce=0&s=1024x768', '8.0'),
(102, 'Residence Inn San Diego La Jolla', '8901 Gilman Drive, La Jolla, San Diego (CA), United States, 92037', 5, '332.00', '//pix8.agoda.net/hotelImages/5446231/0/4f8b3083e4c3b696888a57d4a319cca0.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(103, 'The Westin San Diego Gaslamp Quarter', '910 Broadway Circle, San Diego City Center, San Diego (CA), United States, 92101', 5, '441.00', '//pix8.agoda.net/hotelImages/4887631/0/208ac7481c3e8652d95888649ff07e74.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(104, 'Carte Hotel San Diego Downtown, Curio Collection by Hilton', '401 W Ash Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '470.00', '//pix8.agoda.net/hotelImages/7449627/-1/cce6797650ab77cda754edbf7b876d14.jpg?ca=9&ce=1&s=1024x768', '8.7'),
(105, 'DoubleTree by Hilton San Diego - Hotel Circle', '1515 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '189.00', '//pix8.agoda.net/hotelImages/79385/0/9599c7c9667472ffdb955843b3cdd1e5.jpg?ca=0&ce=1&s=1024x768', '7.7'),
(106, 'InterContinental San Diego', '901 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 5, '449.00', '//pix8.agoda.net/hotelImages/7544956/0/90e333da6f3b681f7e79ec2e1fd581b3.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(107, 'Hampton Inn San Diego Downtown Hotel', '1531 Pacific Highway, San Diego City Center, San Diego (CA), United States, 92101', 5, '345.00', '//pix8.agoda.net/hotelImages/79392/0/fea7bb6bc3beebba4d5208f5172f823a.jpg?ca=7&ce=1&s=1024x768', '8.3'),
(108, 'Moxy San Diego Downtown/Gaslamp Quarter', '831 6th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '379.00', '//pix8.agoda.net/hotelImages/5251835/0/4ac3049b76ed93c5668806f73ce74650.jpg?ca=23&ce=0&s=1024x768', '9.8'),
(109, 'Pendry San Diego', '550 J Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '489.00', '//pix8.agoda.net/hotelImages/7543537/0/0a3909713703bfbf9bf288706345d2c9.jpg?ca=8&ce=1&s=1024x768', '9.1'),
(110, 'Catamaran Resort Hotel and Spa', '3999 Mission Boulevard, Pacific Beach, San Diego (CA), United States, 92109', 5, '389.00', '//pix8.agoda.net/hotelImages/2463231/-1/c34a8a71151c6cae4a7bfd988bbdf56b.jpg?ca=0&ce=1&s=1024x768', '8.0'),
(111, 'Kimpton Hotel Palomar San Diego', '1047 5th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '352.00', '//pix8.agoda.net/hotelImages/442/442788/442788_15090904350035791287.jpg?ca=5&ce=1&s=1024x768', '7.8'),
(112, 'DoubleTree by Hilton Hotel San Diego - Del Mar', '11915 El Camino Real, Del Mar / Carmel Valley, San Diego (CA), United States, 92130-2539', 5, '245.00', '//pix8.agoda.net/hotelImages/2290131/0/52c0082c9bfb1b2cdf3799d741789628.jpg?ca=9&ce=1&s=1024x768', '8.1'),
(113, 'Holiday Inn San Diego Bayside', '4875 North Harbor Drive, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 5, '225.00', '//pix8.agoda.net/hotelImages/4873294/0/9a17142fc0bc24cc1a04151f36bb566e.jpg?ca=23&ce=0&s=1024x768', '8.0'),
(114, 'Legacy Resort Hotel and Spa', '875 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '219.00', '//pix8.agoda.net/hotelImages/106/10670150/10670150_19111921590084192600.jpg?ca=9&ce=1&s=1024x768', '8.6'),
(115, 'Hilton Garden Inn San Diego Del Mar Hotel', '3939 Ocean Bluff Ave, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 5, '186.00', '//pix8.agoda.net/hotelImages/164/164926/164926_14032720230018884879.jpg?ca=2&ce=1&s=1024x768', '9.0'),
(116, 'Hilton Garden Inn San Diego Mission Valley Stadium', '3805 Murphy Canyon Road, Miramar / Kearny Mesa, San Diego (CA), United States, 92123', 5, '230.00', '//pix8.agoda.net/hotelImages/1618152/0/0d689449276459c0ae3ed24d2f108709.jpg?ca=7&ce=1&s=1024x768', '8.0'),
(117, 'Homewood Suites By Hilton San Diego Hotel Circle', '2201 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '398.00', '//pix8.agoda.net/hotelImages/2730996/0/70e6d492722a13139924c5551e1a066e.jpg?ca=7&ce=1&s=1024x768', '8.4'),
(118, 'The Monsaraz San Diego, Tapestry Collection by Hilton', '1451 Rosecrans Street, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 5, '293.00', '//pix8.agoda.net/hotelImages/21884968/0/eafefed6fd96f954c42f331ba0dca502.jpg?ca=17&ce=1&s=1024x768', '8.7'),
(119, 'Marriott Vacation Club Pulse, San Diego', '701 A Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '417.00', '//pix8.agoda.net/hotelImages/4867574/0/c653cfa57b7026842db90d10504d73db.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(120, 'Hilton Mission Valley Hotel', '901 Camino Del Rio South, Mission Valley East, San Diego (CA), United States, 92108', 5, '220.00', '//pix8.agoda.net/hotelImages/3322/-1/7cd0eee461740483cf40acf85e70ea05.jpg?ca=9&ce=1&s=1024x768', '7.8'),
(121, 'The Guild Hotel, San Diego, a Tribute Portfolio Hotel', '500 WEST BROADWAY, San Diego City Center, San Diego (CA), United States, 92101', 5, '376.00', '//pix8.agoda.net/hotelImages/2728346/-1/4d19279451802c99834d8ea146e3b4c8.jpg?ca=9&ce=1&s=1024x768', '8.9'),
(122, 'Paradise Point Resort & Spa', '1404 VACATION ROAD, Misson Bay / Loma Heights, San Diego (CA), United States, 92109', 5, '409.00', '//pix8.agoda.net/hotelImages/5061480/0/3c0339ab2ce5c08efb99147effa0b47d.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(123, 'Estancia La Jolla Hotel & Spa', '9700 North Torrey Pines Road, La Jolla, San Diego (CA), United States, 92037', 5, '397.00', '//pix8.agoda.net/hotelImages/7210784/0/205bdca0f0065d5ca66709d0ef58488d.jpg?ca=8&ce=1&s=1024x768', '8.6'),
(124, 'TownePlace Suites San Diego Downtown', '1445 Sixth Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '349.00', '//pix8.agoda.net/hotelImages/5106043/0/215ae1c621340168e2465c9991f02372.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(125, 'Best Western Plus Island Palms Hotel and Marina', '2051 Shelter Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92106-3105', 5, '229.00', '//pix8.agoda.net/hotelImages/92226/0/a4342e26a9ed46fb8f383761b8209960.jpg?ca=7&ce=1&s=1024x768', '8.8'),
(126, 'Hyatt Regency La Jolla At Aventine', '3777 La Jolla Village Drive, La Jolla, San Diego (CA), United States, 92122', 5, '249.00', '//pix8.agoda.net/hotelImages/464/46403/46403_17051020270052891684.jpg?ca=6&ce=1&s=1024x768', '8.4'),
(127, 'SpringHill Suites San Diego Mission Valley', '2401 Camino Del Rio North, Mission Valley East, San Diego (CA), United States, 92108', 5, '244.00', '//pix8.agoda.net/hotelImages/5485869/0/7d8fb6c57a6dff3e8486018a8f238a55.jpg?ca=23&ce=0&s=1024x768', '9.6'),
(128, 'Best Western Yacht Harbor Hotel', '5005 North Harbor Drive, Roseville-Fleet Ridge, San Diego (CA), United States, 92106', 5, '197.00', '//pix8.agoda.net/hotelImages/164/164772/164772_16051907190042469123.jpg?ca=6&ce=1&s=1024x768', '8.2'),
(129, 'Hard Rock Hotel San Diego', '207 5th Avenue, San Diego City Center, San Diego (CA), United States, 92101', 5, '469.00', '//pix8.agoda.net/hotelImages/4871387/0/d09929f2433bd4d1dead49fb8f568f1b.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(130, 'Extended Stay America Suites - San Diego - Hotel Circle', '2087 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '176.00', '//pix8.agoda.net/hotelImages/194/194166/194166_1208050132007071716.jpg?ca=0&ce=1&s=1024x768', '6.9'),
(131, 'Hilton La Jolla Torrey Pines Hotel', '10950 North Torrey Pines Road, La Jolla, San Diego (CA), United States, 92037', 5, '1245.00', '//pix8.agoda.net/hotelImages/43641/0/4269c3b01302aeaf09996aa8189c9803.jpg?ca=7&ce=1&s=1024x768', '8.0'),
(132, 'Hampton Inn & Suites San Diego Airport Liberty Station', '2211 Lee Court, San Diego Intl. Airport, San Diego (CA), United States, 92101', 5, '256.00', '//pix8.agoda.net/hotelImages/8545857/0/653dd4ebc388f1cb9533e9b403df99d0.jpg?ca=18&ce=1&s=1024x768', '9.1'),
(133, 'Hilton San Diego Airport Harbor Island Hotel', '1960 Harbor Island Drive, San Diego Intl. Airport, San Diego (CA), United States, 92101', 5, '265.00', '//pix8.agoda.net/hotelImages/794/79471/79471_16091414420046443896.jpg?ca=6&ce=1&s=1024x768', '8.4'),
(134, 'Residence Inn San Diego Downtown/Bayfront', '900 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 5, '721.00', '//pix8.agoda.net/hotelImages/5149519/0/fb8ad059231c281260af84e5395d9e7a.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(135, 'Hilton San Diego Bayfront Hotel', '1 Park Boulevard, San Diego City Center, San Diego (CA), United States, 92101', 5, '465.00', '//pix8.agoda.net/hotelImages/176208/0/c13a996b2c8e15bf87b34565845f223f.jpg?ca=8&ce=1&s=1024x768', '8.4'),
(136, 'San Diego Mission Bay Resort', '1775 East Mission Bay Drive, Misson Bay / Loma Heights, San Diego (CA), United States, 92109', 5, '379.00', '//pix8.agoda.net/hotelImages/174708/0/f13d0974a39fff56a2e5855cec3a03e7.jpg?ca=0&ce=1&s=1024x768', '7.5'),
(137, 'Handlery Hotel San Diego', '950 Hotel Circle North, Mission Valley, San Diego (CA), United States, 92108', 5, '116.00', '//pix8.agoda.net/hotelImages/643/64367/64367_1208220623007306033.jpg?ca=0&ce=1&s=1024x768', '7.3'),
(138, 'Hilton Garden Inn San Diego Downtown Bayside', '2137 Pacific Highway Suite A, San Diego City Center, San Diego (CA), United States, 92101', 5, '317.00', '//pix8.agoda.net/hotelImages/273/2731004/2731004_17092717180056865750.jpg?ca=6&ce=1&s=1024x768', '8.3'),
(139, 'Four Points by Sheraton San Diego Downtown Little Italy', '1617 1st Avenue, San Diego City Center, San Diego (CA), United States', 5, '263.00', '//pix8.agoda.net/hotelImages/4891137/0/f35d837eaeaca6064f6d9fba8be7344b.jpg?ca=23&ce=0&s=1024x768', '7.6'),
(140, 'Hampton Inn San Diego Mission Valley', '2151 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '176.00', '//pix8.agoda.net/hotelImages/64808/0/e2d4e22e2d797e8f03144dbffe133b99.jpg?ca=7&ce=1&s=1024x768', '8.7'),
(141, 'Hyatt Regency Mission Bay Spa and Marina', '1441 Quivira Road, Misson Bay / Loma Heights, San Diego (CA), United States, 92109', 5, '353.00', '//pix8.agoda.net/hotelImages/180808/-1/a383cb8779afe49fc13508a6c878525b.jpg?ca=9&ce=1&s=1024x768', '8.0'),
(142, 'Homewood Suites by Hilton San Diego Downtown Bayside', '2137 Pacific Highway Suite B, San Diego City Center, San Diego (CA), United States, 92101', 5, '347.00', '//pix8.agoda.net/hotelImages/2730997/0/3851e565961880c500bc049db0ade298.jpg?ca=7&ce=1&s=1024x768', '8.5'),
(143, 'San Diego Marriott Del Mar', '11966 El Camino Real, Del Mar / Carmel Valley, San Diego (CA), United States, 92130', 5, '331.00', '//pix8.agoda.net/hotelImages/4864127/0/c82e0011281783a02a3e951901ef88cf.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(144, 'Solamar San Diego', '435 Sixth Avenue, San Diego City Center, San Diego (CA), United States, CA 92101', 5, '404.00', '//pix8.agoda.net/hotelImages/441617/-1/3a78989b3666ef7202edf7f04035e709.jpg?ca=0&ce=1&s=1024x768', '8.5'),
(145, 'SpringHill Suites San Diego Downtown/Bayfront', '900 Bayfront Court, San Diego City Center, San Diego (CA), United States, 92101', 5, '474.00', '//pix8.agoda.net/hotelImages/2466326/0/2867a9a909d196b0f03e9955441f338e.jpg?ca=7&ce=1&s=1024x768', '9.2'),
(146, 'TownePlace Suites San Diego Central', '8650 Tech Way, Miramar / Kearny Mesa, San Diego (CA), United States, 92123', 5, '220.00', '//pix8.agoda.net/hotelImages/6165799/0/ada5777903b91887d53e49327c215265.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(147, 'Manchester Grand Hyatt San Diego', '1 Market Place, San Diego City Center, San Diego (CA), United States, 92101', 5, '649.00', '//pix8.agoda.net/hotelImages/46997/0/a3793aeb121e8d94638a83a91c57eb8f.jpg?ca=0&ce=1&s=1024x768', '8.8'),
(148, 'Holiday Inn Express Hotel & Suites Solana Beach-Del Mar', '621 South Highway 101, Solana Beach, San Diego (CA), United States, 92075', 5, '198.00', '//pix8.agoda.net/hotelImages/6021224/0/14f33efa0299e7600d9c1a79cc0187e6.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(149, 'Hilton San Diego Gaslamp Quarter Hotel', '401 K Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '609.00', '//pix8.agoda.net/hotelImages/79768/0/b9653ea6c3ffca00f71897e3106501d2.jpg?ca=7&ce=1&s=1024x768', '8.2'),
(150, 'Hotel La Jolla Curio Collection by Hilton', '7955 La Jolla Shores Drive, La Jolla, San Diego (CA), United States, 92037', 5, '243.00', '//pix8.agoda.net/hotelImages/7210508/0/fa8451403b3fcd669b5497ef7eb8934f.jpg?ca=8&ce=1&s=1024x768', '8.1'),
(151, 'Holiday Inn Express & Suites San Diego - Mission Valley', '635 Hotel Circle South, Mission Valley, San Diego (CA), United States, 92108', 5, '171.00', '//pix8.agoda.net/hotelImages/7217115/0/a39807639a4bc5eb7519279eb760030e.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(152, 'The Lafayette Hotel, Swim Club & Bungalows', '2223 El Cajon Boulevard, Mission Valley, San Diego (CA), United States, 92104', 5, '169.00', '//pix8.agoda.net/hotelImages/644/64414/64414_090116185400290071.jpg?ca=0&ce=1&s=1024x768', '8.1'),
(153, 'Doubletree Hotel San Diego Downtown', '1646 Front Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '309.00', '//pix8.agoda.net/hotelImages/64464/0/20b8b92ea234b70db970eb2b1a210628.jpg?ca=7&ce=1&s=1024x768', '7.4'),
(154, 'Hyatt House San Diego Sorrento Mesa', '10044 Pacific Mesa Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 5, '275.00', '//pix8.agoda.net/hotelImages/2286195/0/8e38d7378ecb06d2bff091806254527e.jpg?ca=28&ce=0&s=1024x768', '8.5'),
(155, 'Staypineapple at Hotel Z', '521 6th Ave, San Diego City Center, San Diego (CA), United States, 92101', 5, '445.00', '//pix8.agoda.net/hotelImages/4890518/0/20046a30b94fa0c3c8994453cfd2b44e.jpg?ca=23&ce=0&s=1024x768', '9.2'),
(156, 'Holiday Inn Express San Diego - Sorrento Valley', '5925 Lusk Boulevard, Sorrento Valley / Mira Mesa, San Diego (CA), United States, 92121', 5, '199.00', '//pix8.agoda.net/hotelImages/5666078/0/022504e63b474f00a7a84b96f13c57c0.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(157, 'Homewood Suites by Hilton San Diego Mission Valley Zoo', '445 Camino Del Rio South, Mission Valley East, San Diego (CA), United States, 92108', 5, '375.00', '//pix8.agoda.net/hotelImages/273/2730520/2730520_18011800290061132778.jpg?ca=6&ce=1&s=1024x768', '8.4'),
(158, 'Bahia Resort Hotel', '998 West Mission Bay Drive, Misson Bay / Loma Heights, San Diego (CA), United States, 92109', 5, '369.00', '//pix8.agoda.net/hotelImages/2465735/0/27f424003747e8160a7b64f43be29169.jpg?ca=7&ce=1&s=1024x768', '8.4'),
(159, 'Hotel Republic San Diego, Autograph Collection', '421 West B Street, San Diego City Center, San Diego (CA), United States, 92101', 5, '385.00', '//pix8.agoda.net/hotelImages/5104968/0/ca3a8b412af8a734040ccd0055ba81ee.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(160, 'Marriott Marquis San Diego Marina', '333 West Harbor Drive, San Diego City Center, San Diego (CA), United States, 92101', 5, '508.00', '//pix8.agoda.net/hotelImages/5061462/0/bafcb6a7d3ced52a9760021b70a40e3f.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(161, 'Holiday Inn Express San Francisco-Union Square', '235 O Farrell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '237.00', '//pix8.agoda.net/hotelImages/2547599/-1/41f616b79c133c7b8c7579f352e46587.jpg?ca=8&ce=1&s=1024x768', '7.9'),
(162, 'The Donatello', '501 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '276.00', '//pix8.agoda.net/hotelImages/5080814/0/cc54bb3ea3ebd414c7281bf1b51c92f8.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(163, 'Le M‚ridien San Francisco', '333 BATTERY STREET, San Francisco Downtown, San Francisco (CA), United States', 6, '219.00', '//pix8.agoda.net/hotelImages/470/47091/47091_15061913010030020783.jpg?ca=4&ce=1&s=1024x768', '8.8'),
(164, 'The Inn at Union Square', '440 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '260.00', '//pix8.agoda.net/hotelImages/5445557/0/5e111dcfe277b132dab737f3e2a222b1.jpg?ca=9&ce=1&s=1024x768', '9.1'),
(165, 'Staypineapple, An Elegant Hotel, Union Square', '580 Geary St, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '213.00', '//pix8.agoda.net/hotelImages/4871249/0/3c6bf5437bf1d0c673159afb911f60e7.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(166, 'Omni San Francisco Hotel', '500 California Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 6, '203.00', '//pix8.agoda.net/hotelImages/5672323/0/18c48f4cc25225edd6a74fe614f03c76.jpg?ca=9&ce=1&s=1024x768', '9.2'),
(167, 'Hyatt Centric Fishermans Wharf', '555 North Point St, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '299.00', '//pix8.agoda.net/hotelImages/2159432/0/cf5f80d48935168e89c0767a69156664.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(168, 'Hyatt Place Emeryville/San Francisco Bay Area', '5700 Bay Street, Oakland, San Francisco (CA), United States, 94608', 6, '199.00', '//pix8.agoda.net/hotelImages/2465807/0/a4751e401d1fa5b952e2f8d5b243e95f.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(169, 'Andrews Hotel', '624 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '159.00', '//pix8.agoda.net/hotelImages/4875942/0/8e1c0ce0d9d78e8b86274cfb39637774.jpg?ca=23&ce=0&s=1024x768', '8.0'),
(170, 'Hotel Abri Union Square', '127 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '191.00', '//pix8.agoda.net/hotelImages/6798252/0/b5fb614767b7dae667dd1f8defef890a.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(171, 'Extended Stay America Premier Suites - Oakland - Alameda', '1350 Marina Village Pkwy, Oakland, San Francisco (CA), United States, 94501', 6, '138.00', '//pix8.agoda.net/hotelImages/2449744/0/6eda37806a139d4e17973ba40a392ea5.jpg?ca=7&ce=1&s=1024x768', '7.2'),
(172, 'Axiom Hotel San Francisco', '28 Cyril Magnin ST, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '239.00', '//pix8.agoda.net/hotelImages/7543010/0/2ecfd46627f0252ef31b98ae9524d59a.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(173, 'Courtyard San Francisco Union Square', '761 Post Street, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '219.00', '//pix8.agoda.net/hotelImages/5073039/0/72f23f0a5a66c8279d207e9db1b2640d.jpg?ca=23&ce=0&s=1024x768', '7.8'),
(174, 'Chancellor Hotel on Union Square', '433 Powell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '182.00', '//pix8.agoda.net/hotelImages/933/93358/93358_1112221647005323060.jpg?ca=0&ce=1&s=1024x768', '9.3'),
(175, 'Oakland Airport Executive Hotel', '150 Hegenberger Road, Oakland, San Francisco (CA), United States, 94621', 6, '108.00', '//pix8.agoda.net/hotelImages/7454489/0/3c2816d7a1bad9b764c81c55c5852ee0.jpg?ca=8&ce=1&s=1024x768', '6.7'),
(176, 'Holiday Inn San Francisco - Golden Gateway', '1500 Van Ness Avenue, San Francisco Downtown, San Francisco (CA), United States, 94109', 6, '206.00', '//pix8.agoda.net/hotelImages/4866117/0/16d2103e901d1535643214e17b4262bd.jpg?ca=25&ce=0&s=1024x768', '8.0'),
(177, 'Executive Inn & Suites Oakland', '1755 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 6, '161.00', '//pix8.agoda.net/hotelImages/2461693/-1/e1bffb737e85a1511bcf092543b193fc.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(178, 'Handlery Union Square Hotel', '351 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '244.00', '//pix8.agoda.net/hotelImages/708/7089/7089_1112220534005299437.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(179, 'Hampton Inn San Francisco Downtown Convention Center', '942 Mission Street, South of Market, San Francisco (CA), United States, 94103', 6, '220.00', '//pix8.agoda.net/hotelImages/963717/0/9016fd5271ad31e63ecf1a7eaf54b23c.jpg?ca=7&ce=1&s=1024x768', '8.4'),
(180, 'Hilton Garden Inn San Francisco - Oakland Bay Bridge Hotel', '1800 Powell Street, Oakland, San Francisco (CA), United States, 94608', 6, '203.00', '//pix8.agoda.net/hotelImages/80247/0/bbedb5346a3ae758a85add3103f3a3c4.jpg?ca=0&ce=1&s=1024x768', '8.2'),
(181, 'Executive Hotel Vintage Court', '650 Bush Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '199.00', '//pix8.agoda.net/hotelImages/147689/-1/3dcf68fc336e81ad28a0b9cca32346e8.jpg?ca=8&ce=1&s=1024x768', '7.7'),
(182, 'The Pickwick Hotel', '85 Fifth Street, South of Market, San Francisco (CA), United States, 94103', 6, '155.00', '//pix8.agoda.net/hotelImages/4891860/0/94ae5bfd6b377fb88573dc1937294bbb.jpg?ca=9&ce=1&s=1024x768', '7.5'),
(183, 'The Westin St. Francis San Francisco on Union Square', '335 Powell Street , San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '206.00', '//pix8.agoda.net/hotelImages/5106615/0/25760bcf54cc1977ed08c9b25f53e7f0.jpg?ca=26&ce=0&s=1024x768', '8.3'),
(184, 'InterContinental San Francisco', '888 Howard Street, South of Market, San Francisco (CA), United States, 94103', 6, '246.00', '//pix8.agoda.net/hotelImages/4880513/0/e66c749084fb168c04612bcbac9b785c.jpg?ca=23&ce=0&s=1024x768', '8.5'),
(185, 'The Clancy Autograph Collection', '299 2nd Street, South of Market, San Francisco (CA), United States, 94105', 6, '264.00', '//pix8.agoda.net/hotelImages/21980619/0/c8ec39788abb884839bd31a19be280bf.jpg?ca=25&ce=0&s=1024x768', '8.8'),
(186, 'Pacifica Lighthouse Hotel Trademark Collection by Wyndham', '105 Rockaway Beach Ave, Pacifica, San Francisco (CA), United States, 94044', 6, '189.00', '//pix8.agoda.net/hotelImages/4862472/0/cb711a0d7354233aaa19e8ced5f10e10.jpg?ca=8&ce=1&s=1024x768', '7.9'),
(187, 'Hotel Zephyr San Francisco', '250 Beach Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '341.00', '//pix8.agoda.net/hotelImages/7542418/0/83fc7b12df72a01f38eac34a731dde04.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(188, 'Grand Hyatt at SFO', '55 South McDonnell Rd, San Francisco International Airport, San Francisco (CA), United States, 94128', 6, '289.00', '//pix8.agoda.net/hotelImages/10185025/-1/277fc39f3859c2c0b3b85e56ad218f7a.jpg?ca=9&ce=1&s=1024x768', '9.3'),
(189, 'W San Francisco', '181 3rd Street, South of Market, San Francisco (CA), United States, 94103', 6, '279.00', '//pix8.agoda.net/hotelImages/4890327/0/400ef0262fc884573b64a594f50031fe.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(190, 'Embassy Suites San Rafael Marin County Hotel', '101 Mcinnis Parkway, Marin County, San Francisco (CA), United States, 94903', 6, '194.00', '//pix8.agoda.net/hotelImages/80231/0/3fc427c4d79a9cb2b0790e75615f8ccf.jpg?ca=7&ce=1&s=1024x768', '8.2'),
(191, 'Casa Madrona Hotel and Spa', '801 Bridgeway, Marin County, San Francisco (CA), United States, 94965', 6, '416.00', '//pix8.agoda.net/hotelImages/6582647/0/e458c0392e396415e7504e27f01354cb.jpg?ca=10&ce=1&s=1024x768', '8.5'),
(192, 'Courtyard Oakland Downtown', '988 Broadway, Oakland, San Francisco (CA), United States, 94607', 6, '191.00', '//pix8.agoda.net/hotelImages/5106267/0/6f34eae3dfcf3010aa33a0fec296607e.jpg?ca=20&ce=0&s=1024x768', '8.5'),
(193, 'The Cartwright Hotel - Union Square, BW Premier Collection', '524 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '209.00', '//pix8.agoda.net/hotelImages/4886944/0/1aa7229a124ded82a6c443c0c604157e.jpg?ca=9&ce=1&s=1024x768', '8.2'),
(194, 'Hotel Emblem San Francisco, a Viceroy Urban Retreat', '562 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '203.00', '//pix8.agoda.net/hotelImages/470/47093/47093_19013004310071847957.jpg?ca=13&ce=1&s=1024x768', '9.0'),
(195, 'Inn Redwood City', '1818 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063-2111', 6, '127.00', '//pix8.agoda.net/hotelImages/94976/0/028b38e80153eff46135c554892f4652.jpg?ca=0&ce=1&s=1024x768', '7.7'),
(196, 'Club Quarters Hotel in San Francisco', '424 Clay Street, San Francisco Downtown, San Francisco (CA), United States, 94111', 6, '188.00', '//pix8.agoda.net/hotelImages/5674282/0/b50179110d477aa810e32edbdd56cdf0.jpg?ca=22&ce=0&s=1024x768', '8.3'),
(197, 'Hotel Zoe Fisherman\'s Wharf', '425 NORTH POINT STREET, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '281.00', '//pix8.agoda.net/hotelImages/4459424/0/be651bc3a73af74c86d397d01e652e35.jpg?ca=9&ce=1&s=1024x768', '8.6'),
(198, 'Hyatt House Emeryville San Francisco Bay Area', '5800 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 6, '196.00', '//pix8.agoda.net/hotelImages/284888/0/ca50f6627734870bf4b83c1520699c4c.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(199, 'Warwick San Francisco', '490 Geary Street, San Francisco Downtown, San Francisco (CA), United States, CA 94107', 6, '193.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/34520856.jpg?k=4d353403617cb419edec0e24c479ab0370356b8fca5166b9f009679fff69a7ac&o=', '8.0'),
(200, 'Hyatt Regency San Francisco', '5 Embarcadero Center, San Francisco Downtown, San Francisco (CA), United States, 94111', 6, '199.00', '//pix8.agoda.net/hotelImages/2081620/0/957014f81536193df123a15b3ae7be15.jpg?ca=0&ce=1&s=1024x768', '8.6'),
(201, 'Hilton San Francisco Union Square Hotel', '333 O\'Farrell Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '220.00', '//pix8.agoda.net/hotelImages/70514/0/5f6b6b1298011d4f0b03310b68999725.jpg?ca=7&ce=1&s=1024x768', '7.9'),
(202, 'Hotel Kabuki, part of JdV by Hyatt', '1625 POST STREET, Pacific Heights, San Francisco (CA), United States, 94115', 6, '379.00', '//pix8.agoda.net/hotelImages/4873545/0/3c058e02ac02ed83b799937790f8081c.jpg?ca=8&ce=1&s=1024x768', '8.5'),
(203, 'RIU Plaza Fisherman\'s Wharf', '2500 Mason Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '309.00', '//pix8.agoda.net/hotelImages/10568633/-1/17c0528679587e5ffe124a35434f0fc2.jpg?ca=10&ce=1&s=1024x768', '8.0');
INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `city_id`, `usd`, `image`, `rating`) VALUES
(204, 'Yotel San Francisco', '1095 Market St, South of Market, San Francisco (CA), United States, 94103', 6, '176.00', '//pix8.agoda.net/hotelImages/15963192/0/15c8b2bc61776c1b212f0345c239446f.jpg?ca=12&ce=1&s=1024x768', '8.3'),
(205, 'Infinity Hotel SF, Ascend Hotel Collection', '2322 Lombard Street, Marina District, San Francisco (CA), United States, 94123', 6, '200.00', '//pix8.agoda.net/hotelImages/147678/-1/d0fd7b2f3dd67cf54c7670e99e63dbd2.jpg?ca=23&ce=0&s=1024x768', '7.0'),
(206, 'Holiday Inn Express Hotel & Suites Fisherman\'s Wharf', '550 North Point Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '265.00', '//pix8.agoda.net/hotelImages/5150005/0/f00c7bb282e3fcd3512ddff73ad0a53f.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(207, 'Hotel Bijou, WorldHotels Crafted', '111 Mason Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '199.00', '//pix8.agoda.net/hotelImages/267302/-1/fa33915fa8d611851c16cd597cd43489.jpg?ca=7&ce=1&s=1024x768', '7.5'),
(208, 'Hilton San Francisco Financial District', '750 Kearny Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '185.00', '//pix8.agoda.net/hotelImages/564/5641/5641_16062302430043992737.jpg?ca=6&ce=1&s=1024x768', '7.6'),
(209, 'San Francisco Marriott Fisherman\'s Wharf', '1250 Columbus Avenue, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '296.00', '//pix8.agoda.net/hotelImages/5079895/0/3c64dbb61588dc9763ccf116b80a4988.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(210, 'The Westin San Francisco Airport', '1 Old Bayshore Highway, San Francisco International Airport, San Francisco (CA), United States, 94030', 6, '150.00', '//pix8.agoda.net/hotelImages/5501767/0/13168c0ad47442d99ed40b7f1c0c2eb5.jpg?ca=23&ce=0&s=1024x768', '8.4'),
(211, 'Marriott Vacation Club Pulse, San Francisco', '2620 Jones Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '229.00', '//pix8.agoda.net/hotelImages/6539798/0/4e8cc9045f7bfba5d58895e4ac8752f3.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(212, 'Comfort Inn By The Bay', '2775 Van Ness Avenue, Marina District, San Francisco (CA), United States, 94109', 6, '215.00', '//pix8.agoda.net/hotelImages/44159/0/649462add091cd2d3ac38c5df2c4974d.jpg?ca=0&ce=1&s=1024x768', '8.0'),
(213, 'Crowne Plaza Hotel Foster City-San Mateo', '1221 Chess Drive, San Francisco International Airport, San Francisco (CA), United States, 94404', 6, '151.00', '//pix8.agoda.net/hotelImages/5442570/0/7a65e11c0271418016f9e138d1807409.jpg?ca=21&ce=0&s=1024x768', '7.9'),
(214, 'Stanford Court San Francisco', '905 California Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '239.00', '//pix8.agoda.net/hotelImages/8787324/0/98151044cdcfb50017e169657394e7d2.jpg?ca=9&ce=1&s=1024x768', '8.4'),
(215, 'Hyatt Place San Francisco Downtown', '701 3rd St, South of Market, San Francisco (CA), United States, 94107', 6, '293.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/194581161.jpg?k=45099c4164e23d7a4a3393b1f5c6516b865882dad3fe1b288f85b66a04b946ec&o=', '8.3'),
(216, 'SpringHill Suites Belmont Redwood Shores', '1401 Shoreway Road, San Francisco International Airport, San Francisco (CA), United States, 94002', 6, '149.00', '//pix8.agoda.net/hotelImages/4868145/0/320f03968b47f3336657bae36f2c60e9.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(217, 'San Francisco Marriott Marquis', '780 Mission Street, South of Market, San Francisco (CA), United States, 94103', 6, '339.00', '//pix8.agoda.net/hotelImages/4863984/0/35f73d627f30246737152f899d3b1909.jpg?ca=26&ce=0&s=1024x768', '8.7'),
(218, 'The Clift Royal Sonesta Hotel', '495 Geary Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '195.00', '//pix8.agoda.net/hotelImages/1846/-1/7120a4d76b23b8eb07fdadb6df38aab2.jpg?ca=10&ce=1&s=1024x768', '8.3'),
(219, 'Four Seasons Hotel San Francisco', '757 Market Street, South of Market, San Francisco (CA), United States, 94103', 6, '493.00', '//pix8.agoda.net/hotelImages/6797081/0/7aa4f657b4a0f28b1a5e6456469d7795.jpg?ca=22&ce=0&s=1024x768', '9.6'),
(220, 'Holiday Inn Express Redwood City Central', '1836 El Camino Real, San Francisco International Airport, San Francisco (CA), United States, 94063', 6, '123.00', '//pix8.agoda.net/hotelImages/7453108/0/b60d13fb3ba0289598693b9213a34559.jpg?ca=26&ce=0&s=1024x768', '8.9'),
(221, 'Grand Hyatt San Francisco', '345 Stockton Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '199.00', '//pix8.agoda.net/hotelImages/2287807/0/d354861a86316b2d5cddbe200eae78ca.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(222, 'Four Seasons Hotel San Francisco at Embarcadero', '222 Sansome Street, San Francisco Downtown, San Francisco (CA), United States, 94104', 6, '531.00', '//pix8.agoda.net/hotelImages/195/195023/195023_1112131032005027656.jpg?ca=0&ce=1&s=1024x768', '9.1'),
(223, 'Hotel Griffon', '155 Steuart Street, South of Market, San Francisco (CA), United States, 94105', 6, '209.00', '//pix8.agoda.net/hotelImages/645/64556/64556_14022607510018467560.jpg?ca=2&ce=1&s=1024x768', '8.7'),
(224, 'DoubleTree by Hilton Hotel San Francisco Airport', '835 Airport Boulevard, San Francisco International Airport, San Francisco (CA), United States, 94010', 6, '150.00', '//pix8.agoda.net/hotelImages/470/47074/47074_17121301360060370939.jpg?ca=6&ce=1&s=1024x768', '8.2'),
(225, 'The Fairmont Heritage Place Ghirardelli Square', '900 North Point Street, Fisherman\'s Wharf, San Francisco (CA), United States, 94109', 6, '636.00', '//pix8.agoda.net/hotelImages/6601922/0/e82fb1e7b36c38b2ef40974102305e32.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(226, 'Palace Hotel, a Luxury Collection Hotel, San Francisco', '2 New Montgomery Street, South of Market, San Francisco (CA), United States, 94105', 6, '429.00', '//pix8.agoda.net/hotelImages/6561704/0/882e771b5b2eeace295261c569b941bf.jpg?ca=26&ce=0&s=1024x768', '8.6'),
(227, 'Crowne Plaza San Francisco Airport', '1177 Airport Boulevard, San Francisco International Airport, San Francisco (CA), United States, 94010', 6, '145.00', '//pix8.agoda.net/hotelImages/5443577/0/554a9400df384af1ee69618fd4c63338.jpg?ca=22&ce=0&s=1024x768', '7.7'),
(228, 'San Francisco Marriott Union Square', '480 Sutter Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '215.00', '//pix8.agoda.net/hotelImages/5061607/0/51769fff1554d771ec20ffea564d06ac.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(229, 'Oakland Marriott City Center', '1001 Broadway, Oakland, San Francisco (CA), United States, 94607', 6, '229.00', '//pix8.agoda.net/hotelImages/5106663/0/fa1d8a7911921a358d08505c117d3879.jpg?ca=20&ce=1&s=1024x768', '8.4'),
(230, 'Samesun San Francisco', '1475 Lombard Street, Marina District, San Francisco (CA), United States, 94123', 6, '59.00', '//pix8.agoda.net/hotelImages/254/25451960/25451960_210623073800102819454.jpg?ca=20&ce=1&s=1024x768', '8.8'),
(231, 'Taj Campton Place', '340 Stockton Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '285.00', '//pix8.agoda.net/hotelImages/6771279/0/0c91e7b7dbf4dae429b8de30db880528.jpg?ca=26&ce=0&s=1024x768', '8.8'),
(232, 'citizenM San Francisco Union Square', '72 Ellis Street, San Francisco Downtown, San Francisco (CA), United States, CA 94102', 6, '269.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/328622199.jpg?k=b54cb9c8949db09ebcbe5df49a414ac92baf854bef7cd0f366716e6f60b643cb&o=', '9.6'),
(233, 'DoubleTree by Hilton Hotel San Francisco Airport North', '5000 Sierra Point Parkway, San Francisco International Airport, San Francisco (CA), United States, 94005', 6, '157.00', '//pix8.agoda.net/hotelImages/43176/0/496bced1dc91be7cc9251be5e649a791.jpg?ca=7&ce=1&s=1024x768', '8.3'),
(234, 'Marin Suites Hotel', '45 Tamal Vista Boulevard, Corte Madera, Marin County, San Francisco (CA), United States, 94925', 6, '259.00', '//pix8.agoda.net/hotelImages/4883379/0/13a61cd7a33c4a695521a21488c83d01.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(235, 'JW Marriott San Francisco Union Square', '515 Mason Street, San Francisco Downtown, San Francisco (CA), United States, 94102', 6, '251.00', '//pix8.agoda.net/hotelImages/4894225/0/78810ba29ca244b9bd164612088bc59d.jpg?ca=23&ce=0&s=1024x768', '8.5'),
(236, 'Hotel Majestic', '1500 Sutter Street, Pacific Heights, San Francisco (CA), United States, 94109', 6, '149.00', '//pix8.agoda.net/hotelImages/147683/-1/ae0b0e7d832567298f1090cf457ce281.jpg?ca=9&ce=1&s=1024x768', '7.8'),
(237, 'Signature San Francisco', '259 - 7th Street, South of Market, San Francisco (CA), United States, 94103', 6, '127.00', '//pix8.agoda.net/hotelImages/8104134/0/5cd0157ae6fce7e9d7c76912d4c90d8e.jpg?ca=9&ce=1&s=1024x768', '7.6'),
(238, 'Hotel Caza Fishermans Wharf', '1300 Columbus Ave, Fisherman\'s Wharf, San Francisco (CA), United States, CA 94133', 6, '299.00', '//pix8.agoda.net/hotelImages/10913949/-1/929c1893465b2b74f4712f6661ce0bed.jpg?ca=10&ce=1&s=1024x768', '8.6'),
(239, 'Homewood Suites By Hilton Oakland Waterfront Hotel', '1103 Embarcadero, Oakland, San Francisco (CA), United States, 94606', 6, '220.00', '//pix8.agoda.net/hotelImages/792/79287/79287_16061717120043738133.jpg?ca=6&ce=1&s=1024x768', '7.9'),
(240, 'InterContinental Mark Hopkins San Francisco', '999 California Street, San Francisco Downtown, San Francisco (CA), United States, 94108', 6, '246.00', '//pix8.agoda.net/hotelImages/4863697/0/3c30438bb5db45c6344f583a9890fd2a.jpg?ca=24&ce=0&s=1024x768', '8.4'),
(241, 'The Lodge at Tiburon', '1651 Tiburon Boulevard, Marin County, San Francisco (CA), United States, 94920', 6, '409.00', '//pix8.agoda.net/hotelImages/7210689/0/4791b88a4273cf148fa7730822b8fc5f.jpg?ca=28&ce=0&s=1024x768', '8.1'),
(242, 'Sonesta Emeryville Oakland', '5555 Shellmound Street, Oakland, San Francisco (CA), United States, 94608', 6, '154.00', '//pix8.agoda.net/hotelImages/4877269/0/44dc32229bf6a3328e01067e1932b412.jpg?ca=14&ce=1&s=1024x768', '8.9'),
(243, 'Waterfront Hotel, part of JdV by Hyatt', '10 Washington Street, Oakland, San Francisco (CA), United States, 94607', 6, '273.00', '//pix8.agoda.net/hotelImages/2463531/0/5192aefdb9a6a37f0a0206ec51522491.jpg?ca=0&ce=1&s=1024x768', '8.2'),
(244, 'Kimpton Alton Hotel', '2700 Jones St, Fisherman\'s Wharf, San Francisco (CA), United States, 94133', 6, '280.00', '//pix8.agoda.net/hotelImages/28934764/0/b987478932566dbdede052acb025b1dd.jpg?ca=29&ce=0&s=1024x768', '7.7'),
(245, 'Ramada by Wyndham Sunnyvale Silicon Valley', '1217 Wildwood Avenue, Santa Clara, San Jose (CA), United States, 94089', 7, '143.00', '//pix8.agoda.net/hotelImages/4862216/0/cba6beae7c3dfc1da847a8aa0050de8f.jpg?ca=9&ce=1&s=1024x768', '7.7'),
(246, 'AC Hotel by Marriott Palo Alto', '744 San Antonio Road, Mountain View, San Jose (CA), United States, 94303', 7, '269.00', '//pix8.agoda.net/hotelImages/23040895/0/9e97ce02792171b80d1f5b17d0ae8fa4.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(247, 'Residence Inn by Marriott San Jose North/Silicon Valley', '656 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '328.00', '//pix8.agoda.net/hotelImages/7130585/0/9502b0c6541f4e7ef1efb238a15a6233.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(248, 'Hyatt Regency Santa Clara', '5101 Great America Parkway, Santa Clara, San Jose (CA), United States, 95054', 7, '220.00', '//pix8.agoda.net/hotelImages/2459014/0/e77c96f1b292e53c987a5c6be13cee27.jpg?ca=7&ce=1&s=1024x768', '8.6'),
(249, 'Sonesta ES Suites Sunnyvale', '900 Hamlin Court, Sunnyvale, San Jose (CA), United States, 94089', 7, '269.00', '//pix8.agoda.net/hotelImages/5082350/0/93720b9fbd4035e07e0a739d28cb990d.jpg?ca=10&ce=1&s=1024x768', '8.6'),
(250, 'Residence Inn San Jose Cupertino', '19429 Stevens Creek Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '247.00', '//pix8.agoda.net/hotelImages/5251743/0/25fd47506a3e3aa52d18bcd544351fe0.jpg?ca=23&ce=0&s=1024x768', '9.8'),
(251, 'The Westin Palo Alto', '675 EL CAMINO REAL, Palo Alto, San Jose (CA), United States', 7, '512.00', '//pix8.agoda.net/hotelImages/4869766/0/9d2efc3acfe6d39200f08c96eeddbdeb.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(252, 'Best Western Lanai Garden Inn and Suites', '1575 Tully Road, San Jose City Center, San Jose (CA), United States, 95122-2459', 7, '126.00', '//pix8.agoda.net/hotelImages/92242/0/60ce37d4ebad0abb0b2c4504aa965a36.jpg?ca=7&ce=1&s=1024x768', '8.1'),
(253, 'Quality Inn & Suites Silicon Valley', '2930 El Camino Real, Santa Clara, San Jose (CA), United States, 95051', 7, '90.00', '//pix8.agoda.net/hotelImages/64839/0/eb1dfbe2e98bc8b34d0fe78c12137e56.jpg?ca=0&ce=1&s=1024x768', '7.0'),
(254, 'Country Inn & Suites by Radisson, San Jose International Airport, CA', '1350 N 4th St, San Jose City Center, San Jose (CA), United States, 95112', 7, '122.00', '//pix8.agoda.net/hotelImages/23259426/0/824856e9fe067ad5c4d679659d63c3c0.jpg?ca=18&ce=1&s=1024x768', '8.4'),
(255, 'Homewood Suites by Hilton Palo Alto', '4329 El Camino Real, Mountain View, San Jose (CA), United States, 94306', 7, '225.00', '//pix8.agoda.net/hotelImages/926709/0/e016af51e54809251181025c56defac0.jpg?ca=0&ce=1&s=1024x768', '9.0'),
(256, 'Residence Inn Palo Alto Mountain View', '1854 El Camino Real West, Mountain View, San Jose (CA), United States, 94040', 7, '949.00', '//pix8.agoda.net/hotelImages/4864818/0/c88c918717b7c3b02a9522e12c7a0ba5.jpg?ca=23&ce=0&s=1024x768', '8.9'),
(257, 'Holiday Inn Express Sunnyvale - Silicon Valley', '852 West El Camino Real, Mountain View, San Jose (CA), United States, 94087', 7, '145.00', '//pix8.agoda.net/hotelImages/7217331/0/26fd6f0f8f84e28f95baff0097573b2a.jpg?ca=23&ce=0&s=1024x768', '8.9'),
(258, 'The Palo Alto Inn', '4238 El Camino Real, Mountain View, San Jose (CA), United States, CA 94306', 7, '169.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/120989969.jpg?k=87b0f177b444f6d8de559cafe8ec7726f80d37521faec78d0d2a5c85f3bd5f82&o=', '8.2'),
(259, 'Hotel Valencia Santana Row', '355 Santana Row, San Jose City Center, San Jose (CA), United States, 95128', 7, '429.00', '//pix8.agoda.net/hotelImages/7455168/0/73b7361ea47072c8995f64c5e081f162.jpg?ca=29&ce=0&s=1024x768', '8.6'),
(260, 'Crowne Plaza Cabana Hotel', '4290 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '276.00', '//pix8.agoda.net/hotelImages/5082914/0/b20fcb4a53ade53aa3167face98d3abe.jpg?ca=29&ce=0&s=1024x768', '8.3'),
(261, 'Juniper Hotel Cupertino A Curio Collection By Hilton', '10050 S. De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '341.00', '//pix8.agoda.net/hotelImages/428973/0/61c8c57c19cef12cb1b67ab74abe6369.jpg?ca=0&ce=1&s=1024x768', '8.8'),
(262, 'Comfort Inn Palo Alto', '3945 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '149.00', '//pix8.agoda.net/hotelImages/64624/0/19c6b2f43cb3c65483a92bfa97b69045.jpg?ca=0&ce=1&s=1024x768', '8.1'),
(263, 'AC Hotel by Marriott Sunnyvale Moffett Park', '1235 Bordeaux Drive, Sunnyvale, San Jose (CA), United States', 7, '212.00', '//pix8.agoda.net/hotelImages/25738778/0/49e613128e60bdddb640c8d633549f74.jpg?ca=22&ce=0&s=1024x768', '7.2'),
(264, 'Extended Stay America Premier Suites - San Jose - Airport', '55 E. Brokaw Road, San Jose City Center, San Jose (CA), United States, 95112', 7, '147.00', '//pix8.agoda.net/hotelImages/173/173317/173317_1003112101002974241.jpg?ca=0&ce=1&s=1024x768', '7.5'),
(265, 'AC Hotel by Marriott San Jose Santa Clara', '2970 Lakeside Drive, Santa Clara, San Jose (CA), United States, 95054', 7, '279.00', '//pix8.agoda.net/hotelImages/6165703/0/67a13dde34dbda92d371de77a28d69a8.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(266, 'Hampton Inn & Suites San Jose Airport, CA', '2088 North First Street, San Jose City Center, San Jose (CA), United States, 95131', 7, '152.00', '//pix8.agoda.net/hotelImages/8100766/0/7e559f0af9264fbbc3aeed776a57af1c.jpg?ca=15&ce=1&s=1024x768', '10.0'),
(267, 'Larkspur Landing Campbell - An All-Suite Hotel', '550 West Hamilton Avenue, San Jose City Center, San Jose (CA), United States, 95008', 7, '199.00', '//pix8.agoda.net/hotelImages/5667852/0/d0734504690cdd1ecec38c20f9819773.jpg?ca=23&ce=0&s=1024x768', '8.5'),
(268, 'Holiday Inn Express Hotel & Suites Santa Clara', '1700 El Camino Real, Santa Clara, San Jose (CA), United States, 95050', 7, '165.00', '//pix8.agoda.net/hotelImages/4873221/0/2b862b35cd09ec6d733fb066a56bb38f.jpg?ca=23&ce=0&s=1024x768', '8.9'),
(269, 'Hotel Zico', '200 East El Camino Real, Mountain View, San Jose (CA), United States, 94040', 7, '167.00', '//pix8.agoda.net/hotelImages/101/101555/101555_1207291051006989252.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(270, 'Best Western University Inn Santa Clara', '1655 El Camino Real, Santa Clara, San Jose (CA), United States, 95050-4158', 7, '169.00', '//pix8.agoda.net/hotelImages/2294869/0/0e4a0ee2e4143ff8f6065d110707d7ea.jpg?ca=9&ce=1&s=1024x768', '8.4'),
(271, 'Aloft Santa Clara', '510 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '168.00', '//pix8.agoda.net/hotelImages/6501299/0/f26b0997b1c72daf78662dd32dd208c9.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(272, 'Four Points by Sheraton San Jose Airport', '1471 NORTH 4TH STREET, San Jose City Center, San Jose (CA), United States, 95112', 7, '151.00', '//pix8.agoda.net/hotelImages/4881427/0/4fd4f9d4c8baaaa23256679e96717a1a.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(273, 'Silicon Way Inn', '331 East Weddell Drive, Sunnyvale, San Jose (CA), United States, CA 94089', 7, '69.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/269843483.jpg?k=920c3e9c38bb21e697456b3aca43d30ebd0c46c9a5211a97a75e1d2a7913394b&o=', '7.8'),
(274, 'Residence Inn Sunnyvale Silicon Valley II', '1080 Stewart Drive, Sunnyvale, San Jose (CA), United States, 94086', 7, '333.00', '//pix8.agoda.net/hotelImages/933/93366/93366_13061710550013273347.jpg?ca=0&ce=1&s=1024x768', '8.6'),
(275, 'Hilton Garden Inn Sunnyvale, CA', '767 N. Mathilda, Sunnyvale, San Jose (CA), United States, 94085', 7, '249.00', '//pix8.agoda.net/hotelImages/9456272/0/54f55ef604c7b2d3a831344baa1dd7d7.jpg?ca=9&ce=1&s=1024x768', '9.2'),
(276, 'Comfort Inn Sunnyvale - Silicon Valley', '940 West Weddell Drive, Sunnyvale, San Jose (CA), United States, 94089', 7, '98.00', '//pix8.agoda.net/hotelImages/64493/0/3a8c87a1430d510d7fe8f929ea15c0e4.jpg?ca=0&ce=1&s=1024x768', '7.5'),
(277, 'el PRADO', '520 Cowper Street, Palo Alto, San Jose (CA), United States, 94301', 7, '549.00', '//pix8.agoda.net/hotelImages/972/97279/97279_0809130001007866.jpg?ca=0&ce=1&s=1024x768', '9.6'),
(278, 'Hotel Fairchild', '5 Fairchild Drive , Mountain View, San Jose (CA), United States, 94043-2013', 7, '202.00', '//pix8.agoda.net/hotelImages/10557853/0/946aaac3e186af691432d58d015a6e7e.jpg?ca=23&ce=0&s=1024x768', '8.0'),
(279, 'The Westin San Jose', '302 South Market Street, San Jose City Center, San Jose (CA), United States, 95113', 7, '229.00', '//pix8.agoda.net/hotelImages/4871310/0/5bcae581e153ca46914a602ce957851b.jpg?ca=23&ce=0&s=1024x768', '8.2'),
(280, 'AC Hotel Sunnyvale Cupertino', '597 East El Camino Real, Sunnyvale, San Jose (CA), United States, 94087', 7, '229.00', '//pix8.agoda.net/hotelImages/5502957/0/ee3d9204072c847b6df7aec3b0111688.jpg?ca=23&ce=0&s=1024x768', '8.7'),
(281, 'Creekside Inn', '3400 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '425.00', '//pix8.agoda.net/hotelImages/147/147556/147556_0906101135001556163.jpg?ca=0&ce=1&s=1024x768', '9.0'),
(282, 'Holiday Inn Express And Suites San Jose Airport', '2080 N 1st Street, San Jose City Center, San Jose (CA), United States, 95131', 7, '148.00', '//pix8.agoda.net/hotelImages/6235956/-1/33e9b0662c1efd30a7a551c6f06bbab7.jpg?ca=7&ce=1&s=1024x768', '9.8'),
(283, 'Cupertino Hotel', '10889 North De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '214.00', '//pix8.agoda.net/hotelImages/17247462/0/bf8b9f4e5e23be2ca79f81eea48bc169.jpg?ca=22&ce=0&s=1024x768', '8.8'),
(284, 'Holiday Inn Express Mountain View South Palo Alto', '1561 West El Camino Real, Mountain View, San Jose (CA), United States, 94040', 7, '241.00', '//pix8.agoda.net/hotelImages/7541441/0/1182953c25c5fd2d5a4ad14e334af016.jpg?ca=23&ce=0&s=1024x768', '9.4'),
(285, 'Holiday Inn Express Hotel & Suites Santa Clara - Silicon Valley', '2455 El Camino Real, Santa Clara, San Jose (CA), United States, 95051', 7, '182.00', '//pix8.agoda.net/hotelImages/5673090/0/2c7c2e6bdc133eb0c6927afd1b2ec21b.jpg?ca=25&ce=0&s=1024x768', '8.6'),
(286, 'Hilton Garden Inn Cupertino Hotel', '10741 North Wolfe Road, Cupertino, San Jose (CA), United States, 95014', 7, '353.00', '//pix8.agoda.net/hotelImages/80314/0/fa760ffafa50e2c347a797713bc4e921.jpg?ca=7&ce=1&s=1024x768', '8.8'),
(287, 'Sonesta ES Suites San Jose - Airport', '1602 Crane Court, San Jose City Center, San Jose (CA), United States, 95112', 7, '237.00', '//pix8.agoda.net/hotelImages/20083933/0/1e90c9460057fcd10e407e047a60b2be.jpg?ca=16&ce=1&s=1024x768', '8.9'),
(288, 'Embassy Suites Santa Clara Silicon Valley Hotel', '2885 Lakeside Drive, Santa Clara, San Jose (CA), United States, 95054', 7, '256.00', '//pix8.agoda.net/hotelImages/6021223/0/40efc7bec7dcbdbee49f508a7e4f0a1f.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(289, 'Delta Hotels by Marriott Santa Clara Silicon Valley', '2151 Laurelwood Road, Santa Clara, San Jose (CA), United States, 95054', 7, '206.00', '//pix8.agoda.net/hotelImages/21981136/0/10fe37a309d71ea792faa47ec42d4f08.jpg?ca=23&ce=0&s=1024x768', '7.0'),
(290, 'Sonesta Select San Jose Airport', '1727 Technology Drive, San Jose City Center, San Jose (CA), United States, 95110', 7, '145.00', '//pix8.agoda.net/hotelImages/22438321/0/abb7f84a57521805923ac57774d04dcb.jpg?ca=20&ce=0&s=1024x768', '8.7'),
(291, 'Hotel Lucent', '727 El Camino Real, Menlo Park, San Jose (CA), United States, 94025', 7, '382.00', '//pix8.agoda.net/hotelImages/2462553/-1/0e9b1fc84a4dceffc97cfa4334c7ecbf.jpg?ca=7&ce=1&s=1024x768', '8.7'),
(292, 'Pacific Motor Inn', '455 S Second Street, San Jose City Center, San Jose (CA), United States, 95113', 7, '77.00', '//pix8.agoda.net/hotelImages/5673681/0/cd41f5b60597f6e1ef2aaa6e877db252.jpg?ca=9&ce=1&s=1024x768', '7.8'),
(293, 'Hyatt Place San Jose Airport', '82 Karina Court, San Jose City Center, San Jose (CA), United States, 95131', 7, '367.00', '//pix8.agoda.net/hotelImages/6770851/0/e38f9dc48630df036b223efd9466ab28.jpg?ca=17&ce=1&s=1024x768', '8.9'),
(294, 'Sonesta Silicon Valley - San Jose', '1820 Barber Lane, Milpitas, Milpitas (CA), United States, 95035', 7, '115.00', '//pix8.agoda.net/hotelImages/12461887/0/d81b4fdcdb631f4d86b5d558ca61b888.jpg?ca=10&ce=1&s=1024x768', '8.6'),
(295, 'DoubleTree by Hilton Campbell - Pruneyard Plaza', '1995 South Bascom Avenue, San Jose City Center, San Jose (CA), United States, 95008', 7, '330.00', '//pix8.agoda.net/hotelImages/4868468/0/8ce1aaee181b803ca580dfbe9a910499.jpg?ca=23&ce=0&s=1024x768', '8.3'),
(296, 'The Zen Hotel Palo Alto', '4164 El Camino Real, Palo Alto, San Jose (CA), United States, 94306', 7, '219.00', '//pix8.agoda.net/hotelImages/2466665/-1/833f055c350fb4316f38354edc4cbca8.jpg?ca=20&ce=1&s=1024x768', '8.9'),
(297, 'Best Western Airport Plaza Hotel', '2118 The Alameda, San Jose City Center, San Jose (CA), United States, 95126-1140', 7, '157.00', '//pix8.agoda.net/hotelImages/2308133/0/1b13b2600abc867278b4bbc1f79206d8.jpg?ca=9&ce=1&s=1024x768', '8.5'),
(298, 'Sheraton Palo Alto Hotel', '625 El Camino Real, Palo Alto, San Jose (CA), United States, 94301', 7, '494.00', '//pix8.agoda.net/hotelImages/4876477/0/cc318e25294fc18bcf9731ac6956705a.jpg?ca=23&ce=0&s=1024x768', '8.5'),
(299, 'Four Points by Sheraton San Jose Downtown', '211 S. First Street, San Jose City Center, San Jose (CA), United States, 95113', 7, '209.00', '//pix8.agoda.net/hotelImages/92256/0/4823b59632cb80e3af5c3f23400a4b25.jpg?ca=0&ce=1&s=1024x768', '8.1'),
(300, 'Larkspur Landing Sunnyvale - An All-Suite Hotel', '748 North Mathilda Avenue, Sunnyvale, San Jose (CA), United States, 94086', 7, '247.00', '//pix8.agoda.net/hotelImages/4885005/0/05810df29cd10d92da5239f97a3b37fd.jpg?ca=23&ce=0&s=1024x768', '8.6'),
(301, 'Best Western Inn Santa Clara', '4341 El Camino Real, Sunnyvale, San Jose (CA), United States, 95051-2510', 7, '149.00', '//pix8.agoda.net/hotelImages/92223/0/d31638f78ff12339ad225bda71a52c83.jpg?ca=7&ce=1&s=1024x768', '8.7'),
(302, 'Hyatt Centric Mountain View', '409 San Antonio Rd, Mountain View, San Jose (CA), United States, 94040', 7, '259.00', '//pix8.agoda.net/hotelImages/12664437/0/ae00372417de984e7a07a3da74c5d5dc.jpg?ca=10&ce=1&s=1024x768', '8.9'),
(303, 'Residence Inn San Jose Airport', '10 Skyport Drive, San Jose City Center, San Jose (CA), United States, 95110', 7, '323.00', '//pix8.agoda.net/hotelImages/2455370/0/6f429b0c71cb5fa5db8513ad23819404.jpg?ca=7&ce=1&s=1024x768', '10.0'),
(304, 'Hyatt House San Jose/Cupertino', '10380 Perimeter Rd, Cupertino, San Jose (CA), United States, 95014', 7, '548.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/203405872.jpg?k=250977a6de5e15fbc98d6533f27390cfa467e22497b53b8ec0f6c1ccaf8aba2f&o=', '9.0'),
(305, 'Hyatt House Santa Clara', '3915 Rivermark Plz, San Jose City Center, San Jose (CA), United States, 95054', 7, '309.00', '//pix8.agoda.net/hotelImages/2455472/0/95bc2f2f41416d4c3bfce327d93b59e3.jpg?ca=0&ce=1&s=1024x768', '9.1'),
(306, 'Best Western Plus Riviera', '15 El Camino Real, Menlo Park, San Jose (CA), United States, 94025-5232', 7, '309.00', '//pix8.agoda.net/hotelImages/215847/0/52dd1816554056db0ed597e09befd1f1.jpg?ca=0&ce=1&s=1024x768', '8.4'),
(307, 'Hilton Garden Inn Palo Alto', '4216 El Camino Real, Mountain View, San Jose (CA), United States, 94306', 7, '336.00', '//pix8.agoda.net/hotelImages/2547443/0/f43a7192c985b8f234d5dbcaee325d7a.jpg?ca=7&ce=1&s=1024x768', '8.8'),
(308, 'Hampton Inn & Suites Mountain View - CA Hotel', '390 Moffett Blvd., Mountain View, San Jose (CA), United States, 94043', 7, '162.00', '//pix8.agoda.net/hotelImages/80784/0/61ae8f132e67e60ba1cb1da1f8059b91.jpg?ca=7&ce=1&s=1024x768', '8.8'),
(309, 'Grand Hotel', '865 West El Camino Real, Sunnyvale, San Jose (CA), United States, 94087', 7, '184.00', '//pix8.agoda.net/hotelImages/7454684/0/ac6c4b9ed43b694e115aac511c497c99.jpg?ca=22&ce=0&s=1024x768', '8.9'),
(310, 'Aloft Mountain View', '840 East El Camino Real, Sunnyvale, San Jose (CA), United States, 94040', 7, '236.00', '//pix8.agoda.net/hotelImages/80244/-1/09cac25d1f74a7e58cc012e4ea0268ab.jpg?ca=13&ce=1&s=1024x768', '8.8'),
(311, 'Hyatt House San Jose Airport', '2105 N 1st St, San Jose City Center, San Jose (CA), United States, 95131', 7, '367.00', '//pix8.agoda.net/hotelImages/6772727/0/411b6cb6e66149cbc4ee2f5f3520ff08.jpg?ca=18&ce=1&s=1024x768', '9.2'),
(312, 'Residence Inn Palo Alto Menlo Park', '555 Glenwood Avenue, Menlo Park, San Jose (CA), United States, 94025', 7, '404.00', '//pix8.agoda.net/hotelImages/6582746/0/45d4582a1942b4e3b81513dfd42515ba.jpg?ca=23&ce=0&s=1024x768', '9.3'),
(313, 'Homewood Suites by Hilton San Jose Airport Silicon Valley', '10 West Trimble Road, San Jose City Center, San Jose (CA), United States, 95131', 7, '229.00', '//pix8.agoda.net/hotelImages/792/79225/79225_16093017220047188289.jpg?ca=6&ce=1&s=1024x768', '9.3'),
(314, 'Hotel Citrine, Palo Alto, a Tribute Portfolio Hotel', '748 San Antonio Road, Mountain View, San Jose (CA), United States, 94303', 7, '236.00', '//pix8.agoda.net/hotelImages/21979676/0/929c628650cf0f1928cee88a3b294deb.jpg?ca=24&ce=0&s=1024x768', '8.5'),
(315, 'Hyatt House San Jose Silicon Valley', '75 Headquarters Drive, San Jose City Center, San Jose (CA), United States, 95134', 7, '274.00', '//pix8.agoda.net/hotelImages/2461086/0/81dac0fd473ea8ff004c9d01b50ba553.jpg?ca=0&ce=1&s=1024x768', '8.8'),
(316, 'Larkspur Landing Milpitas - An All-Suite Hotel', '40 Ranch Drive, Milpitas, Milpitas (CA), United States, 95035', 7, '159.00', '//pix8.agoda.net/hotelImages/832/83260/83260_1011150953003300550.jpg?ca=0&ce=1&s=1024x768', '8.0'),
(317, 'DoubleTree by Hilton San Jose', '2050 Gateway Place, San Jose City Center, San Jose (CA), United States, 95110', 7, '291.00', '//pix8.agoda.net/hotelImages/75831/0/071ffe7a31ec61546abdaa0ac0a13261.jpg?ca=7&ce=1&s=1024x768', '7.2'),
(318, 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, Menlo Park, San Jose (CA), United States, 94303', 7, '960.00', '//pix8.agoda.net/hotelImages/7452273/0/ff67d9db63be78398b2b79ab0389baaa.jpg?ca=23&ce=0&s=1024x768', '9.2'),
(319, 'Hilton San Jose', '300 Almaden Boulevard, San Jose City Center, San Jose (CA), United States, 95110', 7, '327.00', '//pix8.agoda.net/hotelImages/3787/0/e356716b1fba9aa038f9987ee833403b.jpg?ca=7&ce=1&s=1024x768', '8.1'),
(320, 'Residence Inn by Marriott Sunnyvale Silicon Valley I', '750 Lakeway Drive, Santa Clara, San Jose (CA), United States, 94085', 7, '669.00', '//pix8.agoda.net/hotelImages/5106503/0/a473aa612d347705552bb1132b723df6.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(321, 'Homewood Suites by Hilton Sunnyvale-Silicon Valley, CA', '830 E. El Camino Real, Sunnyvale, San Jose (CA), United States, 669-7329600', 7, '299.00', '//pix8.agoda.net/hotelImages/25140761/0/81d70b0c7271d2ed01b781605c2e3bf3.jpg?ca=19&ce=1&s=1024x768', '8.2'),
(322, 'The Clement Palo Alto - All inclusive', '711 El Camino Real, Palo Alto, San Jose (CA), United States, 94301', 7, '1.00', '//pix8.agoda.net/hotelImages/224/22412083/22412083_21030523070095298049.jpg?ca=17&ce=1&s=1024x768', '9.7'),
(323, 'Hyatt Place San Jose Downtown', '282 Almaden Boulevard, San Jose City Center, San Jose (CA), United States, 95113', 7, '316.00', '//pix8.agoda.net/hotelImages/471/47111/47111_16120307370049385978.jpg?ca=6&ce=1&s=1024x768', '8.0'),
(324, 'Wild Palms Hotel, part of JdV by Hyatt', '910 EAST FREMONT AVENUE, Sunnyvale, San Jose (CA), United States, 94087', 7, '129.00', '//pix8.agoda.net/hotelImages/398899/0/125df8bec84cc804a61731ae00fb28bb.jpg?ca=0&ce=1&s=1024x768', '8.7'),
(325, 'Homewood Suites by Hilton San Jose North', '4315 N. First Street, San Jose City Center, San Jose (CA), United States, 95134', 7, '441.00', '//pix8.agoda.net/hotelImages/4125657/-1/ef1ced647d4566adaf075be82f3594e2.jpg?ca=8&ce=1&s=1024x768', '9.1'),
(326, 'Aloft Cupertino', '10165 North De Anza Boulevard, Cupertino, San Jose (CA), United States, 95014', 7, '371.00', '//pix8.agoda.net/hotelImages/6501194/0/32faa4e92a4c863c160d20697425eeb3.jpg?ca=23&ce=0&s=1024x768', '8.8'),
(327, 'Radisson Hotel Sunnyvale - Silicon Valley', '1300 Chesapeake Terrace, Sunnyvale, San Jose (CA), United States, 94089', 7, '220.00', '//pix8.agoda.net/hotelImages/9653313/0/f73e048be8d5fa6bf25d339a83bebadd.jpg?ca=9&ce=1&s=1024x768', '8.8'),
(328, 'SureStayPlus Hotel by Best Western San Jose Central City', '2650 Monterey Hwy, San Jose City Center, San Jose (CA), United States, 95111', 7, '110.00', '//pix8.agoda.net/hotelImages/22441401/0/c5f33953eeb33d928c3f1f41e44cebb7.jpg?ca=17&ce=1&s=1024x768', '8.3'),
(329, 'Fairfield Inn & Suites by Marriott San Jose North/Silicon Valley', '656 America Center Court, Santa Clara, San Jose (CA), United States, 95002', 7, '246.00', '//pix8.agoda.net/hotelImages/7222072/0/d3af2ee19af31852130b32e4e22cb77f.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(330, 'Private Rooms Inside Spacious Saratoga House w Large Yard & Cars Available', 'Cupertino, San Jose (CA), United States', 7, '75.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/319241986.jpg?k=35593fea97e6935087da7d30dc09aae6b629b0009597dcd16e06d63856c0f388&o=', '10.0'),
(331, 'Hilton Garden Inn San Jose / Milpitas', '30 Ranch Drive, Milpitas, Milpitas (CA), United States, 95035', 7, '159.00', '//pix8.agoda.net/hotelImages/43655/0/2f4d9d7922918d40b15e50d315828d3e.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(332, 'Element Santa Clara', '1950 Wyatt Drive, Santa Clara, San Jose (CA), United States, 95054', 7, '356.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/218982530.jpg?k=d74020fe9f392f9863bea265376a20be65cecc456ab87cfb4cc428cf08c4120e&o=', '9.6'),
(333, 'Holiday Inn Express Hotel & Suites Santa Cruz', '1410 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '184.00', '//pix8.agoda.net/hotelImages/5443191/0/ff6090fed983e630f11e77628833a9cd.jpg?ca=23&ce=0&s=1024x768', '8.1'),
(334, 'Bay Front Inn - Downtown Santa Cruz', '325 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '485.00', '//pix8.agoda.net/hotelImages/923/92311/92311_14021909020018383993.jpg?ca=2&ce=1&s=1024x768', '6.7'),
(335, 'Hilton Santa Cruz/Scotts Valley', '6001 La Madrona Drive, Scotts Valley, Scotts Valley (CA), United States, 95066', 1, '243.00', '//pix8.agoda.net/hotelImages/80365/-1/0a951f3f35ff5bb4361f16137ed9356c.jpg?ca=8&ce=1&s=1024x768', '8.7'),
(336, 'Quality Inn Santa Cruz', '1101 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '222.00', '//pix8.agoda.net/hotelImages/92827/0/53fdbdaa60145a667d16b3071997077f.jpg?ca=0&ce=1&s=1024x768', '7.9'),
(337, 'Budget Inn Santa Cruz', '110 San Lorenzo Boulevard, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '119.00', '//pix8.agoda.net/hotelImages/283/283341/283341_1208181055007226381.jpg?ca=0&ce=1&s=1024x768', '8.1'),
(338, 'Ocean Echo Inn & Beach Cottages', '401 Johans Beach Drive, Twin Lakes, Santa Cruz (CA), United States, CA 95062', 1, '369.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/17846626.jpg?k=16a74e75d6cf87d6fa818af54ec4738b771e5c9766488ff8d61e48a24e4e559a&o=', '8.8'),
(339, 'Hampton Inn Santa Cruz West', '2424 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '248.00', '//pix8.agoda.net/hotelImages/345/345356/345356_1212092346009244626.jpg?ca=0&ce=1&s=1024x768', '8.5'),
(340, 'Best Western Inn', '126 Plymouth Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060-2932', 1, '259.00', '//pix8.agoda.net/hotelImages/2293505/0/107558322105c25df05d8690acdf9b18.jpg?ca=9&ce=1&s=1024x768', '7.8'),
(341, 'Pacific Blue Inn', '636 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '259.00', '//pix8.agoda.net/hotelImages/340/340923/340923_1209170958007576629.jpg?ca=0&ce=1&s=1024x768', '8.8'),
(342, 'Ocean Gate Inn', '111 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '130.00', '//pix8.agoda.net/hotelImages/5079344/0/84b3d3c3edd271f008b9027d84b593d8.jpg?ca=9&ce=1&s=1024x768', '6.9'),
(343, 'Beachview Inn', '50 Front Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '155.00', '//pix8.agoda.net/hotelImages/201/201939/201939_1209170431007569585.jpg?ca=0&ce=1&s=1024x768', '8.9'),
(344, 'Motel Santa Cruz Santa Cruz', '370 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '119.00', '//pix8.agoda.net/hotelImages/7521659/0/ee9e0dc0a76354688a360a62d5716a01.jpg?ca=8&ce=1&s=1024x768', '5.3'),
(345, 'Comfort Inn Beach/Boardwalk Area', '314 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '217.00', '//pix8.agoda.net/hotelImages/92847/0/9ba944b7b34ba01cda9820c38ddf2739.jpg?ca=0&ce=1&s=1024x768', '7.7'),
(346, 'Hyatt Place Santa Cruz', '407 BROADWAY AVENUE, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '299.00', '//pix8.agoda.net/hotelImages/4454075/0/37a280b1db71713b36f85c0620798835.jpg?ca=7&ce=1&s=1024x768', '9.0'),
(347, 'Fairfield Inn & Suites Santa Cruz - Capitola', '1255 41st Avenue, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '//pix8.agoda.net/hotelImages/4889828/0/2bbe84099c6c88a45afd2d6353bebcff.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(348, 'Fern River Resort', '5250 Highway 9, Felton, Felton (CA), United States, CA 95018', 1, '167.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/249764136.jpg?k=d23189877ce94e1d562917eb8d08200f61251e1cce592c70347bc04575e145d2&o=', '8.9'),
(349, 'Comfort Inn Santa Cruz', '110 Plymouth St., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '//pix8.agoda.net/hotelImages/4874012/0/766b54c44c3b8b5a2d8e2c784375d5e4.jpg?ca=9&ce=1&s=1024x768', '8.0'),
(350, 'Fairfield Inn & Suites Santa Cruz', '2956 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '218.00', '//pix8.agoda.net/hotelImages/5486159/0/298be0e60008e9f56096ccf57870cca1.jpg?ca=23&ce=0&s=1024x768', '9.1'),
(351, 'Super 8 By Wyndham Santa Cruz/Beach Boardwalk East', '338 Riverside Ave., Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '407.00', '//pix8.agoda.net/hotelImages/4865544/0/79372287471f0d2a06b5aecacce19347.jpg?ca=9&ce=1&s=1024x768', '7.7'),
(352, 'Chaminade Resort & Spa', 'One Chaminade Lane, Live Oak, Santa Cruz (CA), United States, 95065', 1, '439.00', '//pix8.agoda.net/hotelImages/246/2464881/2464881_17100307100057006064.jpg?ca=6&ce=1&s=1024x768', '7.9'),
(353, 'Fireside Inn By The Beach Boardwalk & Bowling', '311 2nd Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '185.00', '//pix8.agoda.net/hotelImages/208/208759/208759_1112130700005016134.jpg?ca=0&ce=1&s=1024x768', '7.2'),
(354, 'Best Western Plus Capitola By-the-Sea Inn and Suites', '1435 41st Ave, Capitola, Capitola (CA), United States, 95010', 1, '299.00', '//pix8.agoda.net/hotelImages/3549065/0/e28f0298fb4f296781d69e8731d994d2.jpg?ca=9&ce=1&s=1024x768', '8.9'),
(355, 'Rio Vista Inn & Suites Santa Cruz', '611 Third Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '179.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/37791903.jpg?k=523b6ef2630cbfa6b009632f6920e4e0daf57a08b27782b82637f02efe32994f&o=', '8.8'),
(356, 'Hotel Paradox, Autograph Collection', '611 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '314.00', '//pix8.agoda.net/hotelImages/5485980/0/2092a5aa51c04022970ff063f0d266e9.jpg?ca=23&ce=0&s=1024x768', '9.0'),
(357, 'Mission Inn', '2250 Mission Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '189.00', '//pix8.agoda.net/hotelImages/413/413106/413106_13041107370011775743.jpg?ca=0&ce=1&s=1024x768', '8.5'),
(358, 'Inn at Depot Hill', '250 Monterey Avenue, Capitola, Capitola (CA), United States, 95010', 1, '340.00', '//pix8.agoda.net/hotelImages/4866133/0/e321709644cef1ef6ffec8302b9f4a75.jpg?ca=9&ce=1&s=1024x768', '10.0'),
(359, 'The Inn at Pasatiempo', '555 Highway 17, Pasatiempo, Santa Cruz (CA), United States, CA 95060', 1, '239.00', '//pix8.agoda.net/hotelImages/924/92496/92496_1208200748007260207.jpg?ca=0&ce=1&s=1024x768', '8.4'),
(360, 'Howard Johnson by Wyndham Santa Cruz Beach Boardwalk', '130 West Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '136.00', '//pix8.agoda.net/hotelImages/5082794/0/8b2ebf56889cabee1dc719385c60869e.jpg?ca=9&ce=1&s=1024x768', '7.3'),
(361, 'Capitola Venetian Hotel', '1500 Wharf Road, Capitola, Capitola (CA), United States, CA 95010', 1, '340.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/89053925.jpg?k=469f1e6ce807254986bc61d9466203365f3600549227fcfba27346ff6abd8ec9&o=', '8.5'),
(362, 'Hampton Inn Santa Cruz', '1505 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '229.00', '//pix8.agoda.net/hotelImages/4125730/0/9dc6a283fd26264e38e30c5aa4f47248.jpg?ca=0&ce=1&s=1024x768', '8.2'),
(363, 'The Islander Motel', '522 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '135.00', '//pix8.agoda.net/hotelImages/177/177148/177148_1112120718004967414.jpg?ca=0&ce=1&s=1024x768', '8.1'),
(364, 'Continental Inn', '414 Ocean Street , Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '159.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/33284448.jpg?k=7e758222a2d2e6fb58f5af98361a363a9f30dd02db0a16e2f86397fcca1f44a9&o=', '7.7'),
(365, 'Best Western PLUS All Suites Inn', '500 Ocean Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060-6602', 1, '229.00', '//pix8.agoda.net/hotelImages/92232/0/9b2203f12887dd2aff945f39d0cc1120.jpg?ca=7&ce=1&s=1024x768', '7.7'),
(366, 'La Quinta Inn & Suites by Wyndham Santa Cruz', '550 2nd Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '331.00', '//pix8.agoda.net/hotelImages/30542225/-1/92b1a76232706f6f5b403d0463e38815.png?ca=26&ce=0&s=1024x768', '6.8'),
(367, 'Capri Motel Santa Cruz Beach Boardwalk', '337 Riverside Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '84.00', '//pix8.agoda.net/hotelImages/202/202977/202977_1212061652009078398.jpg?ca=0&ce=1&s=1024x768', '6.8'),
(368, 'Riverside Inn & Suites', '505 Riverside Ave, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '160.00', '//pix8.agoda.net/hotelImages/4881976/0/2699cf8020cf18a52376cd3abebe5026.jpg?ca=9&ce=1&s=1024x768', '7.5'),
(369, 'Hotel Solares', 'Santa Cruz City Center, Santa Cruz (CA), United States', 1, '175.00', '//pix8.agoda.net/hotelImages/175/175108/175108_17081015030055304225.jpg?ca=6&ce=1&s=1024x768', '6.7'),
(370, 'Casablanca Inn on The Beach', '101 Main Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '389.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/285861561.jpg?k=0402dc82557977ec256f8f1a463faabee9d4ce428a726048a0441687d2721277&o=', '8.1'),
(371, 'Capitola Hotel', '210 Esplanade, Capitola, Capitola (CA), United States, CA 95010', 1, '339.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/258253733.jpg?k=f35fde31f1d732b6c0a7edec640cfff9a1ab75e9deab39c34cb86025b2066b25&o=', '9.0'),
(372, 'Torch Lite Inn at the Beach Boardwalk', '500 Riverside Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '199.00', '//pix8.agoda.net/hotelImages/925/92583/92583_1201162334005853609.jpg?ca=0&ce=1&s=1024x768', '7.4'),
(373, 'National 9 Motel', '130 Plymouth Street, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '89.00', '//pix8.agoda.net/hotelImages/105/105388/105388_1212061406009067358.jpg?ca=0&ce=1&s=1024x768', '9.3'),
(374, 'Dream Inn Santa Cruz', '175 W Cliff Dr, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '599.00', '//pix8.agoda.net/hotelImages/7455101/0/4abb17f2f823523d56013ec02ff30415.jpg?ca=8&ce=1&s=1024x768', '8.8'),
(375, 'Carousel Beach Inn', '110 Riverside Avenue , Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '129.00', '//pix8.agoda.net/hotelImages/402/402232/402232_13020122580010293224.jpg?ca=0&ce=1&s=1024x768', '8.5'),
(376, 'West Cliff Inn, A Four Sisters Inn', '174 W Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '410.00', '//pix8.agoda.net/hotelImages/159/159045/159045_1207311143007005748.jpg?ca=0&ce=1&s=1024x768', '9.3'),
(377, 'Four Points by Sheraton Santa Cruz Scotts Valley', '5030 Scotts Valley Drive, Scotts Valley, Scotts Valley (CA), United States, 95066', 1, '180.00', '//pix8.agoda.net/hotelImages/4974038/0/14778bc1c3ad9ba55774830e385b42c3.jpg?ca=7&ce=1&s=1024x768', '9.8'),
(378, 'Monarch Cove Inn', '620 El Salto Drive, Capitola, Capitola (CA), United States, CA 95010', 1, '250.00', '//q-xx.bstatic.com/xdata/images/hotel/840x460/41492594.jpg?k=0f395a0be092d1b825157eeaed94d2c7688a39a6fdde52a989d9ac59d69b4472&o=', '9.0'),
(379, 'The Babbling Brook Inn', '1025 Laurel Street, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '261.00', '//pix8.agoda.net/hotelImages/2454167/-1/58c4339366680c39a07980ac394da906.jpg?ca=0&ce=1&s=1024x768', '8.3'),
(380, 'Ocean Pacific Lodge', '301 Pacific Avenue, Santa Cruz City Center, Santa Cruz (CA), United States, 95060', 1, '209.00', '//pix8.agoda.net/hotelImages/2464604/-1/4be7ebcc7af05556f205ef70a945e86f.jpg?ca=0&ce=1&s=1024x768', '8.6'),
(381, 'Seaway Inn', '176 West Cliff Drive, Santa Cruz City Center, Santa Cruz (CA), United States, CA 95060', 1, '279.00', '//pix8.agoda.net/hotelImages/354/354935/354935_1212151521009548943.jpg?ca=0&ce=1&s=1024x768', '9.0');

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
