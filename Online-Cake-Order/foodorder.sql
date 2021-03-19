-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 06:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Amirul', 'amir@gmail.com', '0173258745', 'BEST CAKES SHOP', 'HII I WANT TO GIVE FEEDBACK');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('amirul', 'AMIRUL ASRAF', 'amrulasrf08@gmail.com', '0173258745', '970D KG PULAI TINGGI, BUKIT PAYONG', '030895'),
('izzah', 'izzah', 'izzah@gmail.com', '0123456789', 'Kuala Lumpur', '123');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(81, 'Carrot', 75, 'You', 7, 'images/carrot.jpg', 'DISABLE'),
(82, 'Tiramisu Cake with Caramelized', 90, 'Give your dessert table that chill factor with this light and sumptuous delight made of homemade sponge fingers soaked in coffee syrup, and the crunch of perfectly caramelized almonds, a textural wond', 7, 'images/tiramisu.jpg', 'ENABLE'),
(83, 'Carrot Cake', 75, 'You can\'t go wrong with an old fashioned carrot cake. Dense, flavorful, and made using the freshest ingredients, this carrot cake brings less guilt to indulgence.', 7, 'images/carrot.jpg', 'ENABLE'),
(84, 'Classic Chocolate Cake', 90, 'Best chocolate cake in town, so moist and rich!', 7, 'images/chocolate.jpg', 'ENABLE'),
(85, 'Orange Burnt Cheesecake', 80, 'This Orange Burnt Cheesecake is so fresh, it feels as if you are eating oranges instead of a cheesecake!', 7, 'images/burntcheesecake.jpg', 'ENABLE'),
(86, 'Red Velvet Cake', 90, 'Red Velvet cake with red hue and layers of cream cheese is the dynamite!', 7, 'images/redvelvet.jpg', 'ENABLE'),
(87, 'Rainbow Ruffle Cake Cake', 100, 'Somewhere over the rainbow of layered French Chantilly cream is a moist and flavorful vanilla cake that\'s sure to brighten up someone\'s rainy day! ', 7, 'images/rainbowruffle.jpg', 'ENABLE'),
(88, 'Blackout Chocolate Cake', 110, 'Moist and rich with dark chocolate pastry cream and buttery chocolate cookie crumble bits, this chocolate cake is to die for!', 7, 'images/blackout-chocolate.jpg', 'ENABLE'),
(89, 'Stacked Brownies', 115, 'Fudge it up with this ooey, gooey, caramel drizzled brownie, now stacked in a tower and garnished with berries for the refreshing kick!', 7, 'images/stacked-brownies.jpg', 'ENABLE'),
(90, 'Red Velvet Cake Bites', 90, 'Delectable red sponge cake bites made for the sharing and decorated to satisfy with dollops of flavorful cream cheese swirls', 7, 'images/red-velvet-bites.jpg', 'ENABLE'),
(91, 'Carrot Cake Bites', 90, 'Spread the carrot loving with these moist carrot cake bites topped with a swirl of smooth cream cheese. It is prepared with sharing in mind!', 7, 'images/carrot-cake-bites.jpg', 'ENABLE'),
(92, 'Salted Caramel Cookie Bites', 100, 'Salty nibbles made of buttermilk cake, cream cheese, salted caramel and chocolate chips, these mini bits of pleasure are just the right sized cookie bites!', 7, 'images/salted-caramel-cookie-bites.jpg', 'ENABLE'),
(93, 'Blackforest Cake Bites', 90, 'f you love fruits and chocolate, then you should try these blackforest cake bites. Moist chocolate cake topped with thick buttercream and berry.', 7, 'images/blackforest-cake-bites.jpg', 'ENABLE'),
(94, 'Baby shark', 80, 'Baby Shark Family', 7, 'images/babyshark.jpg', 'DISABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('admin', 'admin', 'admin@yahoo.com', '0123456789', 'Kuala Lumpur', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(85, 83, 'Carrot Cake', 75, 1, '2021-03-16', 'amirul', 7),
(86, 84, 'Classic Chocolate Cake', 90, 1, '2021-03-16', 'amirul', 7),
(87, 82, 'Tiramisu Cake with Caramelized', 90, 1, '2021-03-16', 'amirul', 7),
(88, 83, 'Carrot Cake', 75, 1, '2021-03-16', 'amirul', 7),
(89, 82, 'Tiramisu Cake with Caramelized', 90, 1, '2021-03-16', 'amirul', 7),
(90, 83, 'Carrot Cake', 75, 1, '2021-03-16', 'amirul', 7),
(91, 84, 'Classic Chocolate Cake', 90, 1, '2021-03-16', 'izzah', 7),
(92, 85, 'Orange Burnt Cheesecake', 80, 1, '2021-03-16', 'izzah', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'Bake My Day', 'bakemyday@gmail.com', '0124443358', 'JALAN 4/91 TAMAN SHAMELIN PERKASA, 56100, CHERAS K', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
