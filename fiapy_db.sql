-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 09:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiapy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `sno` int(10) NOT NULL,
  `locality` varchar(25) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  `pin` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`sno`, `locality`, `city`, `state`, `country`, `pin`) VALUES
(1, 'Helloe Road', 'Ranchi', 'Jharkhand', 'India', '834432'),
(2, 'Railway Station', 'Ranchi', 'Jahrkahnd', 'India', '832392'),
(3, 'Civil Road', 'Ranchi', 'Jharkhand', 'India', '434545'),
(4, 'Railway Station', 'Mumbai', 'Maharastra', 'India', '738229');

-- --------------------------------------------------------

--
-- Table structure for table `ordersummary`
--

CREATE TABLE `ordersummary` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordersummary`
--

INSERT INTO `ordersummary` (`order_id`, `user_id`, `total`, `customer_name`, `cart_id`, `location`) VALUES
(1, '', 0, '', 0, 'Helloe road, civil tower, ranchi, Jharkahnd - 8222');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `incart` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `cost`, `item_type`, `incart`) VALUES
(1, 'Switch/Socket', 'switch.jpg', 100.00, 'Switch/Socket', 0),
(2, 'Fan', 'switch.jpg', 299.00, 'Fan', 0),
(3, 'light', 'switch.jpg', 125.00, '', 0),
(4, 'Fuse', 'switch.jpg', 145.00, '', 0),
(5, 'wiring', 'switch.jpg', 115.00, '', 0),
(6, 'Others', 'switch.jpg', 100.00, '', 0),
(7, '', '', 0.00, 'Switches', 0),
(8, '', '', 0.00, 'Fan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL,
  `itemType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `image`, `price`, `itemType`) VALUES
(1, 'Switch/Socket', 'PROD01', 'images/1.jpg', 100.00, 'Switch'),
(2, 'Fan', 'PROD02', 'images/2.jpg', 200.00, 'Switch'),
(3, 'Lights', 'PROD03', 'images/3.jpg', 300.00, ''),
(4, 'Wiring', 'PROD04', 'images/4.jpg', 400.00, ''),
(5, 'MCB', 'PROD05', 'images/5.jpg', 500.00, ''),
(6, 'Others', 'PROD06', 'images/6.jpg', 600.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `prof-registration`
--

CREATE TABLE `prof-registration` (
  `SNo` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prof-registration`
--

INSERT INTO `prof-registration` (`SNo`, `firstname`, `lastname`, `phone`, `email`, `password`) VALUES
(1, 'Rohit', 'Kumar', '8580013484', 'rohit@gmail.com', 'RohitKumar'),
(4, 'Samar', 'Kumar', '8188025476', 'samar@gmail.com', 'samarkumar'),
(6, 'Sameer', 'Kumar', '9145678765', 'sameer@gmail.com', 'sameerkumar'),
(12, 'kashish', 'kumar', '82812818', 'kashish@gmail.com', 'kashish'),
(13, 'Professional ', 'registration', '39239929', 'prof@gmail.com', 'prof'),
(14, 'prof', 'sws', '290392', 's@gmail.com', 'jjsds'),
(15, 'skks', 'dlsl', '84838', 'kdks@gamil.com', 'dsds'),
(16, 'dd', 'dkkd', '2939', 'jsjs@gmail.com', 'kskds'),
(17, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `description`) VALUES
(1, 'Electrician', 'Install, maintain, and repair electrical wiring, equipment, and fixtures.'),
(2, 'Plumber', 'Solve problem related to water-leakages etc.'),
(3, 'Carpenter', 'Solves Problem related to wood.'),
(4, 'Mechenic', 'Solves hardware related Problems'),
(5, 'Haircut/Salon', 'Cut Your hair in latest fashion designs');

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `sno` int(11) NOT NULL,
  `houseno` int(3) NOT NULL,
  `streetno` int(6) NOT NULL,
  `po` varchar(20) NOT NULL,
  `dist` varchar(25) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` int(6) NOT NULL,
  `landmark` varchar(30) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `servicetype` varchar(100) NOT NULL,
  `orderitems` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`sno`, `houseno`, `streetno`, `po`, `dist`, `state`, `pin`, `landmark`, `firstname`, `lastname`, `phoneno`, `email`, `servicetype`, `orderitems`) VALUES
(1, 23, 11, 'hello', 'hello12', 'hello', 111111, 'near me', '', '0', 0, '0', '', ''),
(7, 22, 23232, 'ds,ds', 'dkskdsk', 'dkdkskdk', 333333, 'kwdkwkdkwkdw', '', '0', 0, '0', '', ''),
(8, 1, 2, 'wdw', 'dwdw', 'dwdw', 12121, 'DWDW', 'sds', 'sds', 12, 'sw', '', ''),
(9, 333, 444, 'hsgdh', 'sjhwh', 'hshjwhj', 0, 'jsj', '', '', 0, '', '', ''),
(10, 111, 222, 'dsds', '', '', 0, '', 'Rohit', 'Kumar', 2147483647, 'rohit@gmail.com', '', ''),
(11, 0, 0, '', '', '', 0, '', 'Rohit', 'Kumar', 2147483647, 'rohit@gmail.com', '', ''),
(12, 0, 0, '', '', '', 0, '', 'Rohit', 'Kumar', 2147483647, 'rohit@gmail.com', '', ''),
(13, 22, 323, 'dkskdksD', 'wnqdwd', 'kdwkdk', 0, 'kwdkwdneqr ', 'Rohit', 'Kumar', 2147483647, 'rohit@gmail.com', '', ''),
(14, 0, 0, '', '', '', 0, '', 'Rohit', 'Kumar', 2147483647, 'rohit@gmail.com', '', ''),
(15, 0, 0, '', '', '', 0, '', 'Samar', 'Kumar', 2147483647, 'samar@gmail.com', '', ''),
(16, 0, 0, '', '', '', 0, '', 'Samar', 'Kumar', 2147483647, 'samar@gmail.com', '', ''),
(17, 0, 0, '', '', '', 0, '', '', '', 0, '', '', '[{name: \"Fan\", itemId: \"02\"},{name: \"Switch\", itemId: \"03\"}]'),
(18, 0, 0, '', '', '', 0, '', '', '', 0, '', '', '  '),
(19, 0, 0, '', '', '', 0, '', '', '', 0, '', '', '  ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `otp`) VALUES
(1, 'vishalphpyt@gmail.com', ''),
(2, 'ss.sawan888@gmail.com', '57625');

-- --------------------------------------------------------

--
-- Table structure for table `user-registration`
--

CREATE TABLE `user-registration` (
  `SNo` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user-registration`
--

INSERT INTO `user-registration` (`SNo`, `firstname`, `lastname`, `phone`, `email`, `password`) VALUES
(1, 'Rohit', 'Kumar', '8580013484', 'rohit@gmail.com', 'Rohit'),
(4, 'Samar', 'Kumar', '8188025476', 'samar@gmail.com', 'smart'),
(6, 'Sameer', 'Kumar', '9145678765', 'sameer@gmail.com', 'sameerkumar'),
(39, 'rohit', 'kumar', '8281281', 'rohit@gmail.com', 'Rohit'),
(57, 'ss', 'sks', '37e7', 'aa@gmail.com', 'kdksd'),
(58, 'hh', 'qhjhq', '54414', 'gf@gmail.com', 'sjs'),
(59, 'john', 'doe', '2929', 'j@a.com', 'skks'),
(60, 'sjjs', 'qjqj', '181', 'aAaa@gmail.com', 'kdkdkd'),
(61, 'sjj', 'ksk', '828', 'skk@gmail.com', 'kdsk'),
(62, 'dd', 'ksk', '929', 'kks@gmail.com', 'ssk'),
(63, 'dsjj', 'skd', '2828', 's@gmai.com', 'dkkd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `ordersummary`
--
ALTER TABLE `ordersummary`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`sku`);

--
-- Indexes for table `prof-registration`
--
ALTER TABLE `prof-registration`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-registration`
--
ALTER TABLE `user-registration`
  ADD PRIMARY KEY (`SNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordersummary`
--
ALTER TABLE `ordersummary`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prof-registration`
--
ALTER TABLE `prof-registration`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user-registration`
--
ALTER TABLE `user-registration`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
