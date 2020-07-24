-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 09:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

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
CREATE DATABASE IF NOT EXISTS `foodorder` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `foodorder`;

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
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

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
('customer1', 'customer 1', 'customer1@gmail.com', '3865843385', 'xyz', 'customer1');

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
(81, 'Masala Dosa', 50, '1 piece', 7, 'images/breakfast/1.jpg', 'ENABLE'),
(82, 'Plain Dosa', 35, '1 piece', 7, 'images/breakfast/2.jpg', 'ENABLE'),
(83, 'Idli ', 40, '4 pieces', 7, 'images/breakfast/3.jpg', 'ENABLE'),
(84, 'Mindu Wada', 40, '4 pieces', 7, 'images/breakfast/4.jpg', 'ENABLE'),
(85, 'Wada Pav ', 20, '1 piece', 7, 'images/breakfast/5.jpg', 'ENABLE'),
(86, 'Samosa', 20, '1 piece', 7, 'images/breakfast/6.jpg', 'ENABLE'),
(87, 'Uttapa  ', 60, '1/4 pieces', 7, 'images/breakfast/7.jpg', 'ENABLE'),
(88, 'Bread Sandwich', 50, '2 pieces', 7, 'images/breakfast/7.jpg', 'DISABLE'),
(89, 'Kanda Poha', 40, '1 plate ', 7, 'images/breakfast/6.jpg', 'DISABLE'),
(90, 'Sabudana Khichdi', 45, '1 plate ', 7, 'images/breakfast/10.jpg', 'ENABLE'),
(91, 'Bread Sandwich', 35, '1/2 pieces', 7, 'images/breakfast/8.jpg', 'ENABLE'),
(92, 'Kanda Poha', 40, '1 plate ', 7, 'images/breakfast/9.jpg', 'ENABLE'),
(93, 'thel', 60, '2', 7, 'images/breakfast/13.jpg', 'DISABLE'),
(94, 'Thalipeet', 60, '2 pieces', 7, 'images/breakfast/11.jpg', 'DISABLE'),
(95, 'Thalipeet', 60, '2 pieces', 7, 'images/breakfast/11.jfif', 'ENABLE'),
(96, 'Khaman Dhokla', 40, '6 pieces', 7, 'images/breakfast/12.jpg', 'DISABLE'),
(97, 'Khaman Dhokla', 50, '5 pieces', 7, 'images/breakfast/12.jfif', 'ENABLE'),
(98, 'methi Thepla', 40, '2 pieces', 7, 'images/breakfast/13.jfif', 'ENABLE'),
(99, 'Upma', 40, '1 plate', 7, 'images/breakfast/14.jpg', 'ENABLE'),
(100, 'Aloo Paratha', 50, '2 pieces', 7, 'images/breakfast/15.jpg', 'ENABLE'),
(101, 'Gobi Paratha', 50, '2 pieces', 7, 'images/breakfast/16.jpg', 'ENABLE'),
(102, 'Idli ', 40, '4 pieces', 7, 'images/breakfast/3.jpg', 'DISABLE'),
(103, 'Shahi Paneer', 70, '100 g', 7, 'images/lunch/1.jpg', 'ENABLE'),
(104, 'Matar Paneer', 60, '100 g', 7, 'images/lunch/2.jpg', 'ENABLE'),
(105, 'Veg. Pulao', 60, '100 g', 7, 'images/lunch/3.jpg', 'ENABLE'),
(106, 'Veg. Biryani', 150, '150 g', 7, 'images/lunch/5.jpg', 'ENABLE'),
(107, 'Butter Roti', 60, '3 pieces', 7, 'images/lunch/6.jpg', 'ENABLE'),
(108, 'Puri Bhaji', 60, '2 puri + 50g Bhaji', 7, 'images/lunch/7.jpg', 'ENABLE'),
(109, 'Aloo Gobi', 30, '50 g', 7, 'images/lunch/9.jpg', 'ENABLE'),
(110, 'Methi Bhaji', 30, '50 g', 7, 'images/lunch/10.jpg', 'ENABLE'),
(111, 'Baingan Bharta', 40, '50 g', 7, 'images/l', 'DISABLE'),
(112, 'Baingan Bharta', 40, '50 g', 7, 'images/lunch/11.jpg', 'ENABLE'),
(113, 'Aloo Matar Bhaji', 35, '50 g', 7, 'images/lunch/12.jpg', 'ENABLE'),
(114, 'Bhindi sabzi', 40, '50 g', 7, 'images/lunch/13.jpg', 'ENABLE'),
(115, 'Onion Pakoda', 60, '50 g', 7, 'images/lunch/14.jpg', 'ENABLE'),
(116, 'Potato Pakode', 60, '50 g', 7, 'images/lunch/15.jpg', 'ENABLE'),
(117, 'Veg. Farm Pizza', 140, '100 g', 7, 'images/junkfood/1.jpg', 'ENABLE'),
(118, 'Peppy Paneer Pizza', 165, '100 g', 7, 'images/junkfood/2.jpg', 'ENABLE'),
(119, 'Mexican Green Wave Pizza', 160, '100 g', 7, 'images/junkfood/3.jpg', 'ENABLE'),
(120, 'Veg. Extravaganza Pizza', 180, '100 g', 7, 'images/junkfood/4.jpg', 'ENABLE'),
(121, 'Veggie Paradise Pizza', 140, '100 g', 7, 'images/junkfood/5.jpg', 'ENABLE'),
(122, 'Mushroom Veggie Burger', 80, '1 piece', 7, 'images/junkfood/6.jpg', 'ENABLE'),
(123, 'Veg. Bean Burger', 65, '1 piece', 7, 'images/junkfood/7.jpg', 'ENABLE'),
(124, 'Beet Burger', 60, '1 piece', 7, 'images/junkfood/8.jpg', 'ENABLE'),
(125, 'Vegetable Veg. Burger', 70, '1 piece', 7, 'images/junkfood/9.jpg', 'ENABLE'),
(126, 'Pav Bhaji', 80, '2 pav + Bhaji', 7, 'images/junkfood/10.jpg', 'ENABLE'),
(127, 'Chowmein Noodles', 80, '100 g', 7, 'images/junkfood/11.jpg', 'ENABLE'),
(128, 'Oats Noodles', 70, '100 g', 7, 'images/junkfood/12.jpg', 'ENABLE'),
(129, 'Hakka Noodles', 80, '100 g', 7, 'images/junkfood/13.jpg', 'ENABLE'),
(130, 'Manchow Noodles', 65, '100 g', 7, 'images/junkfood/14.jpg', 'ENABLE'),
(131, 'Schezwan Noodles', 80, '100 g', 7, 'images/junkfood/15.jpg', 'ENABLE'),
(132, 'Veg. Manchow Soup', 60, '50 g', 7, 'images/junkfood/16.jpg', 'ENABLE'),
(133, 'Baby Corn Soup', 50, '50 g', 7, 'images/junkfood/17.jpg', 'ENABLE'),
(134, 'Tomato Soup', 50, '50 g', 7, 'images/junkfood/18.jpg', 'ENABLE'),
(135, 'Pasta', 70, '60 g', 7, 'images/junkfood/19.jpg', 'ENABLE'),
(136, 'Schezwan Noodles Frankie', 50, '1 piece', 7, 'images/junkfood/20.jpg', 'ENABLE'),
(137, 'Veg. Frankie', 50, '1 piece', 7, 'images/junkfood/20.jpg', 'ENABLE'),
(138, 'Aloo Veg. Frankie', 60, '1 piece', 7, 'images/junkfood/22.jpg', 'ENABLE'),
(139, 'Chinese Bhel', 40, '50 g', 7, 'images/junkfood/23.jpg', 'ENABLE'),
(140, 'Pani Puri', 35, '1 plate ', 7, 'images/junkfood/24.jpg', 'ENABLE'),
(141, 'Sev Puri', 45, '1 plate ', 7, 'images/junkfood/25.jpg', 'ENABLE'),
(142, 'Ragda Pattices', 40, '1 plate ', 7, 'images/junkfood/26.jpg', 'ENABLE'),
(143, 'Veg. Manchurian', 50, '1 plate ', 7, 'images/junkfood/27.jpg', 'ENABLE'),
(144, 'Schezwan Triple Rice', 85, '1 plate ', 7, 'images/junkfood/28.jpg', 'ENABLE'),
(145, 'Manchurian Gravy', 60, '1 plate ', 7, 'images/junkfood/29.jpg', 'ENABLE'),
(146, 'Aloo Tikki', 45, '2 pieces', 7, 'images/junkfood/30.jpg', 'ENABLE'),
(147, 'Dabeli', 50, '2 pieces', 7, 'images/junkfood/31.jpg', 'ENABLE'),
(148, 'Chaat Kachori', 50, '1 piece', 7, 'images/junkfood/32.jpg', 'ENABLE'),
(150, 'Penut Butter Chocolate', 180, '100 g', 7, 'images/dessert/1.jpg', 'ENABLE'),
(151, 'Baileys Cookies', 70, '1 piece', 7, 'images/dessert/2.jpg', 'DISABLE'),
(152, 'Baileys Coolies', 70, '1 piece', 7, 'images/dessert/3.jpg', 'ENABLE'),
(153, 'Donnat', 100, '2 pieces', 7, 'images/dessert/4.jpg', 'ENABLE'),
(154, 'Fruity Summer Dessert', 90, '1 piece', 7, 'images/dessert/5.jpg', 'ENABLE'),
(155, 'Chocolate & Strawberry Cake', 350, '150 g', 7, 'images/dessert/9.jpg', 'ENABLE'),
(156, 'Cheesecake Bar Cookie', 60, '2 pieces', 7, 'images/dessert/10.jpg', 'ENABLE'),
(157, 'Browned Butter Chocolate Cooki', 90, '4 pieces', 7, 'images/dessert/11.jpg', 'ENABLE'),
(158, 'Nutella Chocolate Tarts', 50, '1 piece', 7, 'images/dessert/12.jpg', 'ENABLE'),
(159, 'Cream Coconut Tres Leches Cake', 300, '150 g', 7, 'images/dessert/13.jpg', 'ENABLE'),
(160, 'Chocolate Cake with Lavender R', 500, '200 g', 7, 'images/dessert/14.jpg', 'ENABLE'),
(161, 'Strawberry Rhubarb Meringue Ta', 80, '1 piece', 7, 'images/dessert/15.jpg', 'ENABLE'),
(162, 'Peanut Butter Banana Cream Pie', 80, '1 piece', 7, 'images/dessert/16.jpg', 'ENABLE'),
(163, 'Dark Chocolate Frosted Cake', 450, '150 g', 7, 'images/dessert/17.jpg', 'ENABLE'),
(164, 'Chocolate Cupcakes', 70, '1 piece', 7, 'images/dessert/18.jpg', 'ENABLE'),
(165, 'Gulab Jamun', 60, '2 pieces', 7, 'images/dessert/7.jpg', 'ENABLE'),
(166, 'Gajar Halwa', 120, '50 g', 7, 'images/dessert/19.jpg', 'ENABLE'),
(167, 'Cannoli Ice Cream', 80, '1 piece', 7, 'images/icecream/1.jpg', 'ENABLE'),
(168, 'Chocolate Ice Cream', 120, '3 pieces', 7, 'images/icecream/2.jpg', 'ENABLE'),
(169, 'StrawBerry Ice Cream', 300, '100g', 7, 'images/icecream/3.jpg', 'ENABLE'),
(170, 'Coconut Ice Cream', 70, '1 piece', 7, 'images/icecream/4.jpg', 'ENABLE'),
(171, 'Brownie No-Churn Ice Cream', 400, '100 g', 7, 'images/icecream/5.jpg', 'ENABLE'),
(172, 'Unicorn Ice Cream', 400, '100 g', 7, 'images/icecream/6.jpg', 'ENABLE'),
(173, 'Mudslide No-churn Ice Cream', 80, '1 piece', 7, 'images/icecream/7.jpg', 'ENABLE'),
(174, 'Red Velvet No-Churn Ice Cream', 150, '3 pieces', 7, 'images/icecream/9.jpg', 'ENABLE'),
(175, 'Reese\'s Chocolate Ice Cream', 120, '50 g', 7, 'images/icecream/9.jpg', 'ENABLE'),
(176, 'Mason Jar Ice Cream', 100, '50 g', 7, 'images/icecream/10.jpg', 'ENABLE'),
(177, 'Cookie Monster No-Churn Ice Cr', 130, '50 g', 7, 'images/icecream/11.jpg', 'ENABLE'),
(178, 'Strawberry Vanilla Ice Cream', 100, '2 pieces', 7, 'images/icecream/12.jpg', 'ENABLE'),
(179, 'Faluda ', 120, '100 g', 7, 'images/icecream/0.jpg', 'ENABLE'),
(180, 'Masala Tea', 20, '1 cup', 7, 'images/drinks/1.jpg', 'ENABLE'),
(181, 'Milk', 30, '1 glass', 7, 'images/drinks/2.jpg', 'ENABLE'),
(182, 'Coffee', 80, '1 cup', 7, 'images/drinks/3.jpg', 'ENABLE'),
(183, 'Green Tea', 60, '1 cup', 7, 'images/drinks/4.jpg', 'ENABLE'),
(184, 'MilkShake', 80, '1 glass', 7, 'images/drinks/0.jpg', 'ENABLE'),
(185, 'Pineapple-Orange punch', 60, '1 glass', 7, 'images/drinks/5.jpg', 'ENABLE'),
(186, 'Cherry-Infused Punch', 80, '1 glass', 7, 'images/drinks/6.jpg', 'ENABLE'),
(187, 'Spiced Sangria Punch', 80, '1 glass', 7, 'images/drinks/7.jpg', 'ENABLE'),
(188, 'White Grape Spritzer', 90, '1 glass', 7, 'images/drinks/8.jpg', 'ENABLE'),
(189, 'Margarita Mocktails', 100, '1 glass', 7, 'images/drinks/9.jpg', 'ENABLE'),
(190, 'Peach Bellini Mocktails', 90, '1 glass', 7, 'images/drinks/10.jpg', 'ENABLE'),
(191, 'Blueberry Moscow Mocktails', 90, '1 glass', 7, 'images/drinks/11.jpg', 'ENABLE'),
(192, 'Sparkling', 90, '1 glass', 7, 'images/drinks/12.jpg', 'ENABLE'),
(193, 'Apple Cider Mocktail Mule', 90, '1 glass', 7, 'images/drinks/13.jpg', 'ENABLE'),
(194, 'Pomegranate Chile Mojito Mockt', 100, '1 glass', 7, 'images/drinks/14.jpg', 'ENABLE'),
(195, 'Lemon Punch', 60, '1 glass', 7, 'images/drinks/15.jpg', 'ENABLE'),
(196, 'Orange creamsicle Punch', 100, '1 glass', 7, 'images/drinks/16.jpg', 'ENABLE');

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
('Bhimraj12', 'Bhimraj Parihar', 'bhimrajparihar0@gmail.com', '8655552214', 'Room No.104,  Shivamrut App,  Near Shivsena Sakha,', 'bhimraj12@'),
('kiran', 'kiran Suryawanshi', 'kiransuryawanshi05@gmail.com', '9822420888', 'thane', 'kiran');

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
(76, 117, 'Veg. Farm Pizza', 140, 1, '2020-07-22', 'customer1', 7),
(77, 126, 'Pav Bhaji', 80, 1, '2020-07-22', 'customer1', 7),
(78, 144, 'Schezwan Triple Rice', 85, 1, '2020-07-22', 'customer1', 7),
(79, 82, 'Plain Dosa', 35, 1, '2020-07-24', 'customer1', 7),
(80, 82, 'Plain Dosa', 35, 1, '2020-07-24', 'customer1', 7),
(81, 82, 'Plain Dosa', 35, 1, '2020-07-24', 'customer1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `employee` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `time` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `employee`, `contact`, `time`, `M_ID`) VALUES


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
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
