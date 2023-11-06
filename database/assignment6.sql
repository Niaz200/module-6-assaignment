-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 02:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment6`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', '2023-11-06 06:40:49', '2023-11-06 06:41:41'),
(2, 'Fashion', '2023-11-06 06:40:49', '2023-11-06 06:42:05'),
(3, 'Jewellery', '2023-11-06 06:40:52', '2023-11-06 06:42:28'),
(4, 'Cosmetics', '2023-11-06 06:40:52', '2023-11-06 06:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Habib', 'habib@gmail.com', 'Rangpur', '2023-11-06 06:43:57', '2023-11-06 06:43:57'),
(2, 'Raihan', 'raihan@gmail.com', 'Cumilla', '2023-11-06 06:43:57', '2023-11-06 06:43:57'),
(3, 'nayem', 'nayem@gmail.com', 'Rangpur', '2023-11-06 06:44:00', '2023-11-06 06:44:28'),
(4, 'pia', 'pia@gmail.com', 'Cumilla', '2023-11-06 06:44:00', '2023-11-06 06:44:49'),
(5, 'apon', 'apon@gmail.com', 'Dhaka', '2023-11-06 12:35:09', '2023-11-06 12:35:09'),
(6, 'niaz', 'niaz@gmail.com', 'Dhanmondi', '2023-11-06 12:35:09', '2023-11-06 12:35:09'),
(7, 'sonia', 'sonia@gmail.com', 'Banani', '2023-11-06 12:36:25', '2023-11-06 12:36:25'),
(8, 'parvej', 'parvej@gmail.com', 'Barisal', '2023-11-06 12:36:25', '2023-11-06 12:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, '2023-11-05', 350.00, '2023-11-06 06:53:12', '2023-11-06 08:41:28'),
(2, 1, '2023-11-06', 200.00, '2023-11-06 05:53:15', '2023-11-06 05:53:15'),
(3, 3, '2023-11-06', 80.00, '2023-11-06 06:58:52', '2023-11-06 06:58:52'),
(5, 4, '2023-11-06', 150.00, '2023-11-06 08:42:21', '2023-11-06 08:42:21'),
(9, 3, '2023-11-06', 400.00, '2023-11-06 11:45:58', '2023-11-06 11:45:58'),
(11, 7, '2023-11-05', 300.00, '2023-11-06 12:38:22', '2023-11-06 12:38:22'),
(12, 5, '2023-11-06', 80.00, '2023-11-06 12:38:22', '2023-11-06 12:38:22'),
(13, 8, '2023-11-06', 600.00, '2023-11-06 12:42:12', '2023-11-06 12:42:12'),
(14, 7, '2023-11-06', 1050.00, '2023-11-06 12:42:12', '2023-11-06 12:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(11) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 350.00, '2023-11-06 06:56:19', '2023-11-06 06:56:19'),
(2, 1, 4, 1, 150.00, '2023-11-06 06:56:19', '2023-11-06 06:56:19'),
(3, 2, 2, 1, 200.00, '2023-11-06 06:56:21', '2023-11-06 06:57:35'),
(4, 3, 1, 1, 80.00, '2023-11-06 06:56:21', '2023-11-06 06:59:53'),
(5, 9, 2, 2, 200.00, '2023-11-06 11:47:07', '2023-11-06 11:47:07'),
(6, 11, 4, 2, 150.00, '2023-11-06 12:39:38', '2023-11-06 12:39:38'),
(7, 12, 1, 1, 80.00, '2023-11-06 12:39:38', '2023-11-06 12:39:38'),
(8, 13, 2, 3, 200.00, '2023-11-06 12:51:15', '2023-11-06 12:51:15'),
(9, 14, 3, 3, 350.00, '2023-11-06 12:51:15', '2023-11-06 12:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mango', 'fresh fruits', 80.00, '2023-11-06 06:46:46', '2023-11-06 06:46:46'),
(2, 2, 'T-shirt', 'nice products', 200.00, '2023-11-06 06:46:46', '2023-11-06 06:46:46'),
(3, 4, 'makeup', 'wonderful', 350.00, '2023-11-06 06:46:51', '2023-11-06 06:49:21'),
(4, 3, 'Nose pin', 'nice nose pin', 150.00, '2023-11-06 06:46:51', '2023-11-06 06:51:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
