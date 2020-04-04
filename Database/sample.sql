-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 09:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Parent_id` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Parent_id`, `Name`, `Description`, `url`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mens Wear', 'Mens Wear Category', 'mens-wear', 1, NULL, '2018-08-25 04:25:45', '2018-12-11 10:01:57'),
(2, 1, 'Casual Shirts', 'Casual Shirts', 'causal-shirts', 1, NULL, '2018-08-25 04:26:13', '2018-12-11 09:36:51'),
(3, 0, 'Mens Shoes', 'Shoes', 'mens-shoes', 1, NULL, '2018-08-25 04:26:34', '2018-08-25 09:46:12'),
(4, 3, 'casual Shoes', 'casual Shoes', 'casual-shoes', 1, NULL, '2018-08-25 04:26:51', '2018-08-25 04:26:51'),
(5, 1, 'Formal Shirts', 'Formal Shirts', 'formal-shirts', 1, NULL, '2018-08-25 08:58:58', '2018-12-11 09:37:07'),
(9, 3, 'Formal Shoes', 'Formal Shoes', 'formal-shoes', 1, NULL, '2018-08-25 09:47:04', '2018-08-25 09:47:04'),
(10, 3, 'Fleat Shoes', 'Fleat Shoes', 'fleat-shoes', 1, NULL, '2018-08-25 09:47:56', '2018-08-25 09:47:56'),
(11, 0, 'Womens Wear', 'Womens Wear', 'Women-Wear', 1, NULL, '2018-12-11 09:52:59', '2018-12-11 10:02:21'),
(12, 11, 'Casual Shirts', 'Casual Shirts', 'Casual-Shirts', 1, NULL, '2018-12-11 09:53:41', '2018-12-11 09:57:11'),
(14, 11, 'Formal Shirts', 'Formal Shirts', 'Formal-Shirts', 1, NULL, '2018-12-11 09:56:31', '2018-12-11 09:57:36'),
(15, 0, 'Women Shoes', 'Women Shoes', 'Women-Shoes', 1, NULL, '2018-12-11 09:58:02', '2018-12-11 09:58:02'),
(16, 15, 'Casual Shoes', 'Casual Shoes', 'Casual-Shoes', 1, NULL, '2018-12-11 09:58:28', '2018-12-11 09:58:28'),
(17, 15, 'Formal Shoes', 'Formal Shoes', 'Formal-Shoes', 1, NULL, '2018-12-11 09:59:05', '2018-12-11 09:59:05'),
(18, 0, 'Kids Wear', 'Kids Wear', 'Kids-Wear', 1, NULL, '2018-12-11 10:03:38', '2018-12-11 10:03:38'),
(19, 18, 'Casual Shirts', 'Casual Shirts', 'Casual-Shirts', 1, NULL, '2018-12-11 10:04:11', '2018-12-11 10:04:11'),
(21, 18, 'Formal Shirts', 'Formal Shirts', 'Formal-Shirts', 1, NULL, '2018-12-11 10:05:30', '2018-12-11 10:05:30'),
(22, 18, 'Casual Shoes', 'Casual Shoes', 'Casual-Shoes', 1, NULL, '2018-12-11 10:06:06', '2018-12-11 10:06:06'),
(23, 18, 'Formal Shoes', 'Formal Shoes', 'Formal-Shoes', 1, NULL, '2018-12-11 10:06:25', '2018-12-11 10:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AM', 'Armenia'),
(3, 'AU', 'Australia'),
(4, 'CN', 'China'),
(5, 'FN', 'France'),
(6, 'IN', 'India'),
(7, 'JP', 'Japan'),
(8, 'NP', 'Nepal');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'White Polo Casual T-Shirt', 'WPCTS001', 'White', 'White Polo Casual T-Shirts', 'Soft Wool', 700.00, '64943.jpg', '2018-12-11 08:14:34', '2018-12-11 08:14:34'),
(2, 2, 'Red Casual T-Shirts', 'RCTS002', 'Red', 'Red Casual T-Shirts', 'Soft Wool', 750.00, '15233.PNG', '2018-12-11 08:25:54', '2018-12-11 08:25:54'),
(3, 5, 'Elegant Green Formal Shirt', 'EGFS003', 'Green', 'Elegant Green Formal Shirt', 'Cotton Stuff', 1250.00, '81563.jpeg', '2018-12-11 08:41:57', '2018-12-11 08:41:57'),
(4, 5, 'White Formal T-Shirts', 'WFTS004', 'White', 'Nologo white polo t-shirt with navy collar', 'Nologo white polo t-shirt with navy collar', 800.00, '61487.jpg', '2018-12-11 08:48:24', '2018-12-11 08:48:24'),
(5, 5, 'Graphite Grey formal Shirt', 'GGFS005', 'Grey', 'Graphite grey formal Shirt', 'Plain Cotton', 1050.00, '56324.png', '2018-12-11 08:56:36', '2018-12-11 08:56:36'),
(6, 5, 'Bamboo Fiber Black Shirt', 'BFBS006', 'Black', 'Men\'s dress shirts Bamboo fiber Black shirts', 'Fiber', 1300.00, '41879.jpg', '2018-12-11 09:04:43', '2018-12-11 09:04:43'),
(7, 4, 'Mens Casual Leather Shoes', 'MCLS001', 'Black', 'New Arrival Awesome Mens Casual Leather Shoes For Men Dress Shoes Flats Shoes Pure Color Hot Sale Good Price', 'Leather Shoes', 1500.00, '16919.jpg', '2018-12-11 09:25:38', '2018-12-11 09:25:38'),
(8, 4, 'Hot Men\'s Creative Bright Face', 'BCMS002', 'Black', 'Hot Men\'s Creative Bright Face Genuine Leather Shoes Mens', 'Leather Shoes', 1250.00, '14631.jpg', '2018-12-11 09:31:51', '2018-12-11 09:31:51'),
(9, 4, 'Casual Shoes light brown J-16', 'CSLB003', 'Brown', 'Casual Shoes light brown J-16 Shoes for men', 'Soft Laather Shoes', 1150.00, '11761.jpg', '2018-12-11 09:41:31', '2018-12-11 09:41:31'),
(10, 9, 'New HandMade Leather Shoes', 'FBLS004', 'Brown', 'New HandMade Leather Shoes\r\nGood for both dress wear and casual wear. - Color: Brown. - Color: Black.', 'Leather Shoes', 1450.00, '45127.jpg', '2018-12-11 09:48:56', '2018-12-11 09:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'WPCTS001', 'Small', 700.00, 5, '2018-12-11 08:17:57', '2018-12-11 08:17:57'),
(2, 1, 'WPCTS002', 'Medium', 750.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(3, 1, 'WPCTS003', 'Large', 800.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(4, 1, 'WPCTS004', 'Extra Large', 900.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(5, 2, 'RCTS002', 'Small', 750.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(6, 2, 'RCTS003', 'Medium', 800.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(7, 2, 'RCTS004', 'Large', 850.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(8, 2, 'RCTS005', 'Extra Large', 1000.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(9, 3, 'EGFS003', 'Small', 1250.00, 5, '2018-12-11 08:43:02', '2018-12-11 08:43:02'),
(10, 3, 'EGFS004', 'Medium', 1300.00, 5, '2018-12-11 08:43:02', '2018-12-11 08:43:02'),
(11, 3, 'EGFS005', 'Large', 1350.00, 5, '2018-12-11 08:43:03', '2018-12-11 08:43:03'),
(12, 3, 'EGFS006', 'Extra Large', 1500.00, 5, '2018-12-11 08:43:03', '2018-12-11 08:43:03'),
(13, 4, 'WFTS004', 'Small', 800.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(14, 4, 'WFTS005', 'Medium', 850.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(15, 4, 'WFTS006', 'Large', 900.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(16, 4, 'WFTS007', 'Extra Large', 1000.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(17, 5, 'GGFS005', 'Small', 1050.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(18, 5, 'GGFS006', 'Medium', 1100.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(19, 5, 'GGFS007', 'Large', 1150.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(20, 5, 'GGFS008', 'Extra Large', 1200.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(21, 6, 'BFBS006', 'Small', 1300.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(22, 6, 'BFBS007', 'Medium', 1350.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(23, 6, 'BFBS008', 'Large', 1500.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(24, 6, 'BFBS009', 'Extra Large', 1600.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(25, 7, 'MCLS001', '8', 1500.00, 5, '2018-12-11 09:26:27', '2018-12-11 09:26:27'),
(26, 7, 'MCLS002', '9', 1500.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(27, 7, 'MCLS003', '10', 1500.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(28, 7, 'MCLS004', '11', 1600.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(29, 7, 'MCLS005', '12', 1700.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(30, 8, 'BCMS002', '8', 1250.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(31, 8, 'BCMS003', '9', 1300.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(32, 8, 'BCMS004', '10', 1400.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(33, 8, 'BCMS005', '11', 1500.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(34, 8, 'BCMS006', '12', 1600.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(35, 9, 'CSLB003', '8', 1150.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(36, 9, 'CSLB004', '9', 1200.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(37, 9, 'CSLB005', '10', 1250.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(38, 9, 'CSLB006', '11', 1300.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(39, 9, 'CSLB007', '12', 1400.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(40, 10, 'FBLS004', '8', 1450.00, 5, '2018-12-11 09:49:59', '2018-12-11 09:49:59'),
(41, 10, 'FBLS005', '9', 1450.00, 5, '2018-12-11 09:49:59', '2018-12-11 09:49:59'),
(42, 10, 'FBLS006', '10', 1500.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00'),
(43, 10, 'FBLS007', '11', 1600.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00'),
(44, 10, 'FBLS008', '12', 1700.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1425.jpg', '2018-12-11 13:14:59', '2018-12-11 08:14:59'),
(2, 1, '9280.jpg', '2018-12-11 13:15:14', '2018-12-11 08:15:14'),
(3, 2, '8910.PNG', '2018-12-11 13:28:06', '2018-12-11 08:28:06'),
(4, 2, '1355.PNG', '2018-12-11 13:28:19', '2018-12-11 08:28:19'),
(5, 3, '7671.jpeg', '2018-12-11 13:43:28', '2018-12-11 08:43:28'),
(6, 3, '7263.jpeg', '2018-12-11 13:43:36', '2018-12-11 08:43:36'),
(7, 4, '5924.jpg', '2018-12-11 13:48:46', '2018-12-11 08:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 'Devesh Chaudhary', 'Iglas', 'Aligarh', 'UTTAR PRADESH', 'India', '202124', '9729972895', 'devesh.chaudhary.30994@gmail.com', '$2y$10$auJCG1TXq2z28MtXM6sfO.6AOYVf2oCblptRmx90lVHyz1VBoyCZO', 1, NULL, '2020-04-01 01:58:55', '2020-04-01 02:05:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
