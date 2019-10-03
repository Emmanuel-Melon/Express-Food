-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2019 at 02:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `balance` double NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `first_name`, `last_name`, `balance`, `address`, `phone_number`, `email`, `avatar`) VALUES
(2, 'Bojak', 'Horseman', 14.041, 'Hollywoo, Calfironia', 712345678, 'bojak.food@express.com', 'none'),
(3, 'Peter', 'Pan', 133, 'Neverland', 712345678, 'peter.food@express.com', 'none'),
(4, 'Elon', 'Musk', 1333333, 'San Francisco', 712345678, 'elon.food@express.com', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_number` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `role` varchar(256) NOT NULL,
  `rank` int(11) NOT NULL,
  `joined` date NOT NULL,
  `rating` double NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_number`, `name`, `role`, `rank`, `joined`, `rating`, `status`) VALUES
(1, 'Emmanuel Gatwech', 'Delivery', 1, '2019-09-01', 4.2, 'active'),
(2, 'Flora Johnson', 'Chef', 1, '2019-09-01', 4.4, 'active'),
(3, 'gordon ramsay', 'Delivery', 1, '2019-08-14', 4.6, 'active'),
(4, 'Lebron James', 'Delivery', 1, '2019-10-01', 4.8, 'active'),
(5, 'Lupe Fiasco', 'Chef', 1, '2019-08-26', 4.8, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `meal_type` varchar(256) NOT NULL,
  `quantity` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `prepared_By` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`meal_id`, `meal_type`, `quantity`, `menu_id`, `description`, `price`, `prepared_By`, `name`) VALUES
(3, 'Dish', 40, 1, 'Quiche is a savoury dish consisting of pastry crust filled with eggs, milk or cream, and cheese, meat, seafood or vegetables.', 46, 2, 'Quiche Lorraine'),
(5, 'Dish', 50, 1, 'Bouillabaisse is a traditional Provençal fish stew originating from the port city of Marseille. ', 50, 2, 'Bouillabaisse'),
(6, 'Dish', 50, 2, 'Chicago-style pizza is pizza prepared according to several different styles developed in Chicago. The most famous is deep-dish pizza. The pan in which it is baked gives the pizza its characteristically high edge which provides ample space for large amounts of cheese and a chunky tomato sauce.', 36, 5, 'Chicago-style pizza'),
(7, 'Dish', 50, 2, 'Soul food is a variety of cuisine originating in the Southeastern United States, and from African American culture. It has both European and Native American influences.', 37.99, 5, 'Soul food'),
(8, 'Dessert', 50, 2, 'A s\'more is a campfire treat popular in the United States, Mexico, and Canada, consisting of a marshmallow and a layer of chocolate placed between two pieces of graham cracker or cookie.', 22.45, 2, 'S’mores'),
(9, 'Dessert', 50, 1, 'Crème caramel, flan, caramel dessert, or pudim is a custard dessert with a layer of clear caramel sauce, as opposed to crème brûlée which is custard with an added hard clear caramel layer on top.', 17.99, 5, 'Crème caramel'),
(10, 'Dessert', 50, 2, 'Café liégeois is a cold dessert made from lightly sweetened coffee, coffee flavoured ice cream and chantilly cream. Refrigerate a large glass filled with the required amount of sweetened coffee, and add the ice cream and chantilly just prior to serving.', 19.45, 2, 'Café liégeois'),
(11, 'Dessert', 50, 1, 'A banana split is an ice cream-based dessert. In its traditional form it is served in a long dish called a boat. A banana is cut in half lengthwise and laid in the dish.', 17.99, 5, 'Banana Splits');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `number_of_items` int(4) NOT NULL DEFAULT '4',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `number_of_items`, `date`) VALUES
(1, 'Launch Menu', 4, '2019-09-03'),
(2, 'Second Day Menu', 4, '2019-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `item_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `order_summary_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`item_id`, `meal_id`, `order_summary_id`) VALUES
(13, 3, 1),
(14, 6, 1),
(15, 8, 1),
(16, 6, 1),
(17, 5, 2),
(18, 9, 2),
(19, 7, 2),
(20, 6, 1),
(21, 9, 1),
(22, 3, 1),
(23, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_summary`
--

CREATE TABLE `order_summary` (
  `order_summary_id` int(11) NOT NULL,
  `ordered_by` int(11) NOT NULL,
  `delivered_by` int(11) NOT NULL,
  `bill` double NOT NULL,
  `review` text NOT NULL,
  `delivered_within_20` tinyint(1) NOT NULL,
  `delivery_address` varchar(256) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delivery_dispatched` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_summary`
--

INSERT INTO `order_summary` (`order_summary_id`, `ordered_by`, `delivered_by`, `bill`, `review`, `delivered_within_20`, `delivery_address`, `createdAt`, `delivery_dispatched`) VALUES
(1, 2, 1, 0, 'Excellent service', 1, 'Hollywoo, California', '2019-10-02 11:59:48', '0000-00-00 00:00:00'),
(2, 4, 3, 0, 'I love this place', 1, 'Dallas, Texas', '2019-10-02 11:59:48', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_number`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`),
  ADD KEY `menu_id` (`menu_id`) USING BTREE,
  ADD KEY `prepared_by` (`prepared_By`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `meal_id` (`meal_id`) USING BTREE,
  ADD KEY `order_summary_id` (`order_summary_id`);

--
-- Indexes for table `order_summary`
--
ALTER TABLE `order_summary`
  ADD PRIMARY KEY (`order_summary_id`),
  ADD KEY `ordered_by` (`ordered_by`),
  ADD KEY `delivered_by` (`delivered_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_summary`
--
ALTER TABLE `order_summary`
  MODIFY `order_summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `meals_ibfk_2` FOREIGN KEY (`prepared_By`) REFERENCES `employees` (`employee_number`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`meal_id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`order_summary_id`) REFERENCES `order_summary` (`order_summary_id`);

--
-- Constraints for table `order_summary`
--
ALTER TABLE `order_summary`
  ADD CONSTRAINT `order_summary_ibfk_1` FOREIGN KEY (`ordered_by`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `order_summary_ibfk_2` FOREIGN KEY (`delivered_by`) REFERENCES `employees` (`employee_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
