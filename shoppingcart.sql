-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 01:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `fullname`, `email`, `tel`, `grand_total`) VALUES
(1, '2023-08-28 18:02:03', 'สมชาย ใจดี', 'somchai@hotmail.com', '0324734973', 493.00),
(2, '2023-09-27 09:23:06', 'ฟำพด', 'ดกดก', 'กดก', 395.00),
(3, '2023-09-27 09:24:01', '', '', '', 495.00),
(4, '2023-09-27 09:33:10', 'ฟำพด', 'ghgh', 'hg', 790.00),
(5, '2023-09-28 09:52:44', '', '', '', 3625.00),
(6, '2023-09-28 10:02:14', '', '', '', 495.00),
(7, '2023-09-28 10:51:43', '', '', '', 395.00),
(8, '2023-09-28 12:26:22', '', '', '', 495.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `total` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `product_name`, `price`, `quantity`, `total`) VALUES
(1, 2, 'พิซซ่าซีฟู๊ด', 199.00, 2, 398.00),
(1, 4, 'เครื่องดื่มโค๊ก', 19.00, 5, 95.00),
(2, 18, 'แฮรี่พอตเตอร์ \r\nห้องแห่งความลับ', 395.00, 1, 395.00),
(3, 19, 'แฮรี่พอตเตอร์ \r\nนักโทษแห่งอัซคาบัน\r\n', 495.00, 1, 495.00),
(4, 18, 'แฮรี่พอตเตอร์ \r\nห้องแห่งความลับ', 395.00, 2, 790.00),
(5, 17, 'แฮรี่พอตเตอร์ \r\nศิลาอาถรรพ์', 395.00, 1, 395.00),
(5, 18, 'แฮรี่พอตเตอร์ \r\nห้องแห่งความลับ', 395.00, 5, 1975.00),
(5, 21, 'แฮรี่พอตเตอร์ \r\nภาคีนกฟินิกซ์\r\n', 895.00, 1, 895.00),
(5, 28, 'พ่อสอนลูก', 360.00, 1, 360.00),
(6, 19, 'แฮรี่พอตเตอร์ \r\nนักโทษแห่งอัซคาบัน\r\n', 495.00, 1, 495.00),
(7, 18, 'แฮรี่พอตเตอร์ \r\nห้องแห่งความลับ', 395.00, 1, 395.00),
(8, 19, 'แฮรี่พอตเตอร์ \r\nนักโทษแห่งอัซคาบัน\r\n', 495.00, 1, 495.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `profile_image` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `profile_image`, `detail`) VALUES
(17, 'แฮรี่พอตเตอร์ \r\nศิลาอาถรรพ์', 395.00, '1.png', ''),
(18, 'แฮรี่พอตเตอร์ \r\nห้องแห่งความลับ', 395.00, '2.png', ''),
(19, 'แฮรี่พอตเตอร์ \r\nนักโทษแห่งอัซคาบัน\r\n', 495.00, '3.png', ''),
(20, 'แฮรี่พอตเตอร์ \r\nถ้วยอัคนี ปกอ่อน\r\n', 695.00, '4.png', ''),
(21, 'แฮรี่พอตเตอร์ \r\nภาคีนกฟินิกซ์\r\n', 895.00, '5.png', ''),
(22, 'แฮรี่พอตเตอร์ \r\nเจ้าชายเลือดผสม\r\n', 595.00, '6.png', ''),
(23, 'แฮรี่พอตเตอร์ \r\nเครื่องรางยมทูต\r\n', 595.00, '7.png', ''),
(24, 'คณิตศาสตร์ \r\nเล่ม 1 ม.1 เล่มใหม่', 259.00, 'mat m.1.png', ''),
(25, 'คณิตศาตร์ ม.1', 189.00, 'mat.png', ''),
(26, 'ปิง ปิง เลียนแบบ', 89.00, 'ping ping.png', ''),
(27, 'ปิง ปิง เข้าใจ', 89.00, 'ping.png', ''),
(28, 'พ่อสอนลูก', 360.00, 'dad.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
