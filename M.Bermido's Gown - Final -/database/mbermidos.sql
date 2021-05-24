-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 10:59 PM
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
-- Database: `mbermidos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'kenneth', 'zaragoza', 'kenneth@gmail.com', 'admin', 'admin123'),
(2, 'Lovelyn', 'Monda', 'lovelyn@gmail.com', 'lovelyn', 'a1Bz20ydqelm8m1wql57d35a03f7a52c5063d6e72a95e97e47'),
(3, 'jimin', 'park', 'jimin@gmail.com', 'jiminie', 'a1Bz20ydqelm8m1wqlfb45615cea1183af03479d88ad4da5cd');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Ball Gown'),
(2, 'Evening Gown'),
(3, 'Empire Gown'),
(4, 'Tea Length Gown'),
(5, 'A-Line Gown'),
(6, 'Infinity Dress'),
(7, 'Coat'),
(8, 'Slacks'),
(9, 'Barong Tagalog'),
(10, 'Filipinia'),
(11, 'Bow Tie'),
(12, 'Neck Tie');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'has logged in the system at ', '2021-05-22 23:53:03'),
(2, 1, 'has logged in the system at ', '2021-05-23 00:26:47'),
(3, 2, '(Administrator) has logged in the system at ', '2021-05-23 00:53:46'),
(4, 1, 'has logged in the system at ', '2021-05-23 01:00:12'),
(5, 1, 'has logged in the system at ', '2021-05-23 01:01:32'),
(6, 2, '(Administrator) has logged in the system at ', '2021-05-23 01:05:59'),
(7, 1, 'has logged in the system at ', '2021-05-23 01:07:23'),
(8, 2, '(Administrator) has logged in the system at ', '2021-05-23 03:06:03'),
(9, 2, '(Administrator) has logged in the system at ', '2021-05-23 03:35:39'),
(10, 2, 'added a new product 3 of Gray Infinity Dress ', '2021-05-23 03:50:04'),
(11, 2, 'added a new product 3 of Royal Blue Offshoulder Ball Gown', '2021-05-23 03:58:32'),
(12, 2, 'added a new product 3 of ken Z. Lavander Evening Gown', '2021-05-23 04:04:16'),
(13, 2, 'added a new product 3 of Green Empire gown ', '2021-05-23 04:09:11'),
(14, 2, 'added a new product 3 of White Tea length Dress', '2021-05-23 04:12:09'),
(15, 2, 'added a new product 4 of Shanara A line Gown ', '2021-05-23 04:15:07'),
(16, 2, '(Administrator) has logged in the system at ', '2021-05-23 04:17:28'),
(17, 1, 'has logged in the system at ', '2021-05-23 21:30:32'),
(18, 1, 'has logged in the system at ', '2021-05-23 22:00:36'),
(19, 2, '(Administrator) has logged in the system at ', '2021-05-23 23:53:03'),
(20, 2, 'added a new product 3 of Sky Blue A-line Gown', '2021-05-23 23:59:49'),
(21, 2, 'added a new product 4 of Sakura Pink Infinity Dress', '2021-05-24 00:04:11'),
(22, 2, 'added a new product 3 of Royal Blue Ball Gown', '2021-05-24 00:07:21'),
(23, 2, 'added a new product 3 of bow tie', '2021-05-24 00:08:23'),
(24, 2, 'added a new product 3 of Roya Blue Ball Gown', '2021-05-24 00:16:53'),
(25, 2, 'added a new product 3 of Sleeveless  Violet Evening Gown', '2021-05-24 00:20:06'),
(26, 2, 'added a new product 4 of Green Empire Gown', '2021-05-24 00:22:30'),
(27, 2, 'added a new product 4 of Simple Tea length Gown', '2021-05-24 00:24:38'),
(28, 2, 'added a new product 3 of Sky Blue A-line Gown', '2021-05-24 00:27:36'),
(29, 2, 'added a new product 5 of Sakura Infinity Dress', '2021-05-24 00:29:22'),
(30, 2, 'added a new product 3 of Red coat ', '2021-05-24 00:32:03'),
(31, 2, 'added a new product 4 of Ordinary Black Slacks', '2021-05-24 00:35:25'),
(32, 2, 'added a new product 5 of Barong Tagalog', '2021-05-24 00:59:00'),
(33, 2, 'added a new product 4 of Filipiana', '2021-05-24 01:02:30'),
(34, 2, 'added a new product 3 of Bow Tie', '2021-05-24 01:06:31'),
(35, 2, 'added a new product 3 of Neck Tie', '2021-05-24 01:09:45'),
(36, 1, 'has logged in the system at ', '2021-05-24 01:11:41'),
(37, 1, 'has logged in the system at ', '2021-05-24 01:45:03'),
(38, 1, 'has logged in the system at ', '2021-05-24 01:51:29'),
(39, 1, 'has logged in the system at ', '2021-05-24 02:25:58'),
(40, 2, '(Administrator) has logged in the system at ', '2021-05-24 03:03:50'),
(41, 2, '(Administrator) has logged in the system at ', '2021-05-24 03:10:43'),
(42, 2, '(Administrator) has logged in the system at ', '2021-05-24 03:13:25'),
(43, 1, 'has logged in the system at ', '2021-05-24 03:50:39'),
(44, 3, 'has logged in the system at ', '2021-05-24 03:53:00'),
(45, 2, '(Administrator) has logged in the system at ', '2021-05-24 04:18:14'),
(46, 3, 'has logged in the system at ', '2021-05-24 04:37:34'),
(47, 4, 'has logged in the system at ', '2021-05-24 04:39:09'),
(48, 3, 'has logged in the system at ', '2021-05-24 04:39:29'),
(49, 2, '(Administrator) has logged in the system at ', '2021-05-24 04:40:02'),
(50, 3, '(Administrator) has logged in the system at ', '2021-05-24 04:46:39'),
(51, 3, 'has logged in the system at ', '2021-05-24 04:49:04'),
(52, 6, 'has logged in the system at ', '2021-05-24 04:52:54'),
(53, 8, 'has logged in the system at ', '2021-05-24 04:57:02'),
(54, 2, '(Administrator) has logged in the system at ', '2021-05-24 04:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `middlename` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shipping_add` varchar(100) CHARACTER SET latin1 NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `totat_qty` varchar(30) CHARACTER SET latin1 NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `totat_qty`, `total`, `user_id`, `order_id`) VALUES
(25, 10, 2, '', '1300.00', 1, ''),
(26, 9, 2, '', '400.00', 3, '1'),
(27, 9, 1, '', '200.00', 3, '1'),
(28, 9, 1, '', '200.00', 3, '1'),
(29, 9, 1, '', '200.00', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prod_desc` varchar(500) CHARACTER SET latin1 NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `supplier` varchar(100) CHARACTER SET latin1 NOT NULL,
  `prod_serial` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prod_pic1` varchar(500) CHARACTER SET latin1 NOT NULL,
  `prod_pic2` varchar(500) CHARACTER SET latin1 NOT NULL,
  `prod_pic3` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(1, 'Roya Blue Ball Gown', 'A balloon beaded silk gown', 3, '500.00', '500.00', 'Ball Gown', 'L. Bermidos', '202105240001', '1620877534348.png', '1620877534348.png', '1620877534348.png'),
(2, 'Sleeveless  Violet Evening Gown', 'A violet evening gown with beads fixed belt', 3, '400.00', '400.00', 'Evening Gown', 'L. Bermidos', '202105240002', '1620877534391.png', '1620877534391.png', '1620877534391.png'),
(3, 'Green Empire Gown', 'Classic puff sleeve empire Gown ', 4, '550.00', '550.00', 'Empire Gown', 'S. Bermidos', '202105240003', '1620877534352.png', '1620877534352.png', '1620877534352.png'),
(4, 'Simple Tea length Gown', 'Creamy white in color with lace on top ', 4, '450.00', '450.00', 'Tea Length Gown', 'S. Bermidos', '202105240004', '1620878277206.png', '1620878277206.png', '1620878277206.png'),
(5, 'Sky Blue A-line Gown', 'A c-through lace on top and challis silk at the buttom ', 3, '450.00', '450.00', 'A-Line Gown', 'L. Bermidos', '202105240005', '1620877534364.png', '1620877534364.png', '1620877534364.png'),
(6, 'Sakura Infinity Dress', 'A cherry blossom inspired color infinity dress that is convertible in to too many ways', 5, '350.00', '350.00', 'Infinity Dress', 'L. Bermidos', '202105240006', '1620877534315.png', '1620877534315.png', '1620877534315.png'),
(7, 'Red coat ', 'shiny long sleeve open down black button coat', 3, '600.00', '600.00', 'Coat', 'S. Bermidos', '202105240007', '1620877534297.png', '1620877534297.png', '1620877534297.png'),
(8, 'Ordinary Black Slacks', 'Smooth blended fabric Black pants', 4, '600.00', '600.00', 'Slacks', 'S. Bermidos', '202105240008', '1620877534310.png', '1620877534310.png', '1620877534310.png'),
(9, 'Barong Tagalog', 'An embroided long-sleeved formal shirt for men and a national dress of the philippines.', 1, '200.00', '200.00', 'Barong Tagalog', 'L. Bermidos', '202105240002', '1620877534250.png', '1620877534250.png', '1620877534250.png'),
(10, 'Filipiana', 'A traditional dress worn by women in the philippines', 4, '650.00', '650.00', 'Filipinia', 'L. Bermidos', '202105240001', '1620877534280.png', '1620877534280.png', '1620877534280.png'),
(11, 'Bow Tie', 'It consist of a ribbon of fabric tied around the collar of a shirt.', 3, '100.00', '100.00', 'Bow Tie', 'L. Bermidos', '2021052440004', '1620877534227.png', '1620877534227.png', '1620877534227.png'),
(12, 'Neck Tie', 'A band of decorative  fabric worn around the neck, under the collar.', 3, '100.00', '100.00', 'Neck Tie', 'L. Bermidos', '202105240004', '1620877534258.png', '1620877534258.png', '1620877534258.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) CHARACTER SET latin1 NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `supp_address` varchar(200) CHARACTER SET latin1 NOT NULL,
  `supp_contact` varchar(50) CHARACTER SET latin1 NOT NULL,
  `supp_email` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(1, 'L. Bermidos', 'Basud Polangui Albay', '901122233', 'lbermidos@gmail.com'),
(2, 'S. Bermidos', 'Purok 2 Thailand', '44542356', 'Sbern@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prod_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `middlename` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `address` varchar(300) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin2 COLLATE latin2_hungarian_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(1, 'Kenneth', 'Rabelas', 'Zaragoza', 'Tobog Oas, Albay', 'kenneth@gmail.com', '091635882118', 'kenneth', 'a1Bz20ydqelm8m1wql7ca955bd92ca8b00548ddf36d2e79217'),
(2, 'Julino', 'Vinas', 'Arevalo', 'zone 2, thailand', 'julino@gmail.com', '091635882118', 'julinoxxx', 'a1Bz20ydqelm8m1wqld5315ce95d75ca06ad4f7d245dfbf0fd'),
(3, 'analie', 'ate', 'balang', 'singapore', 'analie@gmail.com', '0971234456', 'analia', 'abcde'),
(4, 'Kenneth', 'Rabelas', 'Zaragoza', '327 ZONE 5', 'kenneth@gmail.com', '091635882118', 'kenneth', 'zaragoza'),
(5, 'Leevan', 'C.', 'Cabauatan', 'Camalig', 'leevan@gmail.com', '091635882118', 'leevan', '12345'),
(6, 'Leevan', 'C.', 'Cabauatan', 'Camalig', 'leevan@gmail.com', '091635882118', 'leevan', 'leevan'),
(7, 'analie', 'james', 'analie', 'alnay', 'analie@gmail.com', '091635882118', 'analiee', 'ana'),
(8, 'analie', 'james', 'analie', 'alnay', 'analie@gmail.com', '091635882118', 'analiee', 'james');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
