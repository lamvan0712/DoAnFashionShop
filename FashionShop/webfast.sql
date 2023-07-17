-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 05, 2023 lúc 04:40 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webfast`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(12, 'Admin', 'K123/14 Đỗ Thúc Tịnh, Cẩm Lệ, Đà Nẵng', 'admin@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '0778960401', 1, 2, NULL, '2022-06-12 09:55:53', '2022-06-12 09:55:53'),
(15, 'Dương Hải Nam', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'nammitslvn@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0961475653', 1, 1, NULL, '2023-06-29 19:22:18', '2023-06-29 19:22:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `level`, `created_at`, `updated_at`) VALUES
(53, 'Quần áo bé nam', 'quan-ao-be-nam', 'banner_11.jpg', '', 0, 1, 0, '2023-06-29 17:42:51', '2023-06-29 17:42:51'),
(54, 'Quần áo bé gái', 'quan-ao-be-gai', 'banner_12.jpg', '', 0, 1, 0, '2023-06-29 18:44:17', '2023-06-29 18:44:17'),
(55, 'Phụ kiện ', 'phu-kien', 'banner_3.jpg', '', 0, 1, 0, '2023-06-29 18:44:40', '2023-06-29 18:44:40'),
(58, 'Giày', 'giay', 'danhmuc.jpg', '', 0, 1, 0, '2023-06-30 05:11:10', '2023-06-30 05:11:10'),
(60, 'Váy', 'vay', '311707333-9.jpg', '', 0, 1, 0, '2023-07-01 03:14:05', '2023-07-01 03:14:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `content`, `created_at`, `update_at`) VALUES
(6, 'Phương Thảo', 'thao@gmail.com', 'really good', NULL, NULL),
(7, 'Thế Linh', 'linh@gmail.com', 'GOOD SHOP', NULL, NULL),
(8, 'Thế Linh', 'kh5@gmail.com', 'aaa', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `size`, `color`, `price`, `created_at`, `updated_at`) VALUES
(156, 100, 233, 2, '2Y', '', 400000, '2023-06-29 19:27:32', '2023-06-29 19:27:32'),
(157, 101, 234, 2, '1Y', '', 500000, '2023-06-29 19:31:45', '2023-06-29 19:31:45'),
(158, 101, 238, 1, '1Y', '', 90000, '2023-06-29 19:31:45', '2023-06-29 19:31:45'),
(159, 103, 234, 2, '2Y', '', 500000, '2023-06-29 19:35:31', '2023-06-29 19:35:31'),
(160, 103, 234, 1, '1Y', '', 250000, '2023-06-29 19:35:31', '2023-06-29 19:35:31'),
(161, 104, 233, 2, '3Y', '', 380000, '2023-06-30 02:02:26', '2023-06-30 02:02:26'),
(162, 104, 234, 1, '1Y', '', 250000, '2023-06-30 02:02:26', '2023-06-30 02:02:26'),
(163, 105, 235, 1, '2Y', '', 490000, '2023-06-30 02:02:59', '2023-06-30 02:02:59'),
(164, 106, 240, 2, '2Y', '', 380000, '2023-06-30 04:55:33', '2023-06-30 04:55:33'),
(165, 107, 241, 1, '2Y', '', 190000, '2023-06-30 05:15:38', '2023-06-30 05:15:38'),
(166, 107, 236, 3, '2Y', '', 1350000, '2023-06-30 05:15:38', '2023-06-30 05:15:38'),
(167, 108, 234, 4, '4Y', '', 1000000, '2023-06-30 14:42:43', '2023-06-30 14:42:43'),
(168, 110, 233, 1, '3Y', NULL, 190000, '2023-07-01 01:37:26', '2023-07-01 01:37:26'),
(169, 112, 243, 1, '2Y', NULL, 190000, '2023-07-01 03:19:44', '2023-07-01 03:19:44'),
(170, 112, 236, 3, '3Y', NULL, 1350000, '2023-07-01 03:19:44', '2023-07-01 03:19:44'),
(171, 113, 233, 1, '3Y', NULL, 190000, '2023-07-05 14:33:31', '2023-07-05 14:33:31'),
(172, 113, 236, 1, '3Y', NULL, 450000, '2023-07-05 14:33:31', '2023-07-05 14:33:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `status` int(10) NOT NULL DEFAULT 1,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `status`, `create_at`, `update_at`) VALUES
(233, 'Beech Cardigan, Blue Stripe', 'beech-cardigan-blue-stripe', 200000, 5, NULL, 4, 2, 53, '100% Organic Cotton ', 0, 0, 0, 30, 1, '2023-06-29 19:00:08', '2023-06-29 19:00:08'),
(234, 'Claudie Jersey Blouse, White', 'claudie-jersey-blouse-white', 250000, 0, NULL, 0, 0, 54, '100% Organic Cotton ', 0, 0, 0, 10, 1, '2023-06-29 19:02:14', '2023-06-29 19:02:14'),
(235, 'Andre 2-Piece T-Shirt and Bloomers Set, Grapefruit Pink', 'andre-2-piece-t-shirt-and-bloomers-set-grapefruit-pink', 490000, 0, NULL, 0, 0, 54, 'Main: 100% Cotton\r\nRibbed Fabric: 96% Cotton 4% Elastane', 0, 0, 0, 30, 1, '2023-06-29 19:05:23', '2023-06-29 19:05:23'),
(236, 'Organic Cotton Jersey Short-Sleeve Tee, Skating People', 'organic-cotton-jersey-short-sleeve-tee-skating-people', 450000, 0, NULL, 3, 3, 54, '94% Organic Cotton 6% Elastane', 0, 0, 0, 11, 1, '2023-06-29 19:07:04', '2023-06-29 19:07:04'),
(237, 'Organic Cotton Modal Short-Sleeve T-Shirt, Moss', 'organic-cotton-modal-short-sleeve-t-shirt-moss', 250000, 0, NULL, 0, 0, 53, '50% Organic Cotton 50% Modal', 0, 0, 0, 15, 1, '2023-06-29 19:19:01', '2023-06-29 19:19:01'),
(238, 'Artisan Embroidery Headband, Beaded Leaves', 'artisan-embroidery-headband-beaded-leaves', 90000, 0, NULL, 5, 1, 55, '100% Organic Cotton ', 0, 0, 0, 5, 1, '2023-06-29 19:21:59', '2023-06-29 19:21:59'),
(243, 'Váy bé gái', 'vay-be-gai', 200000, 5, NULL, 0, 0, 60, 'aaa', 0, 0, 0, 23, 1, '2023-07-01 03:15:01', '2023-07-01 03:15:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(59, 233, '311908024-250-1_900x.jpg', NULL, NULL),
(60, 233, '311908024-250-3_720x.jpg', NULL, NULL),
(61, 233, '311908024-250-7_720x.jpg', NULL, NULL),
(62, 234, '311703110-1_460x.jpg', NULL, NULL),
(63, 234, '311703110-3_460x.jpg', NULL, NULL),
(64, 234, '311703110-4_900x.jpg', NULL, NULL),
(65, 235, 'HAPPYOLOGY-302912119-432-21_460x.jpg', NULL, NULL),
(66, 235, 'HAPPYOLOGY-302912119-432-23_460x.jpg', NULL, NULL),
(67, 235, 'HAPPYOLOGY-302912119-432-26_460x.jpg', NULL, NULL),
(68, 236, 'printed-2-5_720x.jpg', NULL, NULL),
(69, 236, 'printed-2-6_900x.jpg', NULL, NULL),
(70, 236, 'printed-2-19_720x.jpg', NULL, NULL),
(71, 237, '98-3_f83f40f0-34b1-43eb-a62e-21bf3c837fc0_720x.jpg', NULL, NULL),
(72, 237, '98-14_720x.jpg', NULL, NULL),
(73, 237, '98-22_900x.jpg', NULL, NULL),
(74, 238, '38_900x.jpg', NULL, NULL),
(75, 238, '40_460x.jpg', NULL, NULL),
(76, 238, '41_460x.jpg', NULL, NULL),
(89, 243, '311707333-9.jpg', NULL, NULL),
(90, 243, '311707333-1.jpg', NULL, NULL),
(91, 243, '311707333-10.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rated`
--

CREATE TABLE `rated` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `rated` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rated`
--

INSERT INTO `rated` (`id`, `id_product`, `id_users`, `comment`, `rated`, `created_at`, `updated_at`) VALUES
(63, 233, 38, 'Good product!!', 5, '2023-06-29 19:33:30', '2023-06-29 19:33:30'),
(64, 233, 39, 'Not like image..', 3, '2023-06-29 19:34:41', '2023-06-29 19:34:41'),
(65, 238, 43, 'really cute', 5, '2023-06-30 13:49:40', '2023-06-30 13:49:40'),
(66, 236, 44, 'nice', 4, '2023-07-01 01:38:13', '2023-07-01 01:38:13'),
(67, 236, 45, 'Nice', 5, '2023-07-01 03:02:15', '2023-07-01 03:02:15'),
(68, 236, 46, 'good', 1, '2023-07-01 03:18:38', '2023-07-01 03:18:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `payment_method` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `name`, `email`, `phone`, `address`, `status`, `payment_method`, `created_at`, `updated_at`) VALUES
(100, 400000, 38, 'Dương Hải Nam', 'nammitslvn@gmail.com', '0961475653', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 0, 1, '2023-06-29 19:27:32', '2023-06-29 19:27:32'),
(101, 590000, 38, 'Dương Hải Nam', 'nammitslvn@gmail.com', '0961475653', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 0, 1, '2023-06-29 19:31:45', '2023-06-29 19:31:45'),
(103, 750000, 39, 'Dương Hải Nam', 'nammitslvn2@gmail.com', '0961475654', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 1, 1, '2023-06-29 19:35:31', '2023-06-30 01:51:01'),
(104, 630000, 40, 'Dương Hải Nam', 'kh1@gmail.com', '0961475655', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 1, 2, '2023-06-30 02:02:26', '2023-06-30 04:52:57'),
(105, 490000, 40, 'Dương Hải Nam', 'nammitslvn@gmail.com', '0961475653', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 1, 1, '2023-06-30 02:02:59', '2023-06-30 02:07:53'),
(106, 380000, 41, 'Dương Hải Nam', 'kh2@gmail.com', '0961475656', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 1, 2, '2023-06-30 04:55:33', '2023-06-30 05:12:30'),
(107, 1540000, 42, 'Dương Hải Nam', 'kh3@gmail.com', '09614756535', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 1, 2, '2023-06-30 05:15:38', '2023-06-30 13:02:55'),
(108, 1000000, 43, 'Phương Thào', 'thao@gmail.com', '0986130828', '197 Hoang Mai', 1, 1, '2023-06-30 14:42:43', '2023-07-01 03:16:04'),
(109, 0, 40, 'Dương Hải Nam', 'kh1@gmail.com', '0961475655', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 0, 1, '2023-06-30 15:56:00', '2023-06-30 15:56:00'),
(110, 190000, 44, 'Thế Linh', 'linh@gmail.com', '0987625533', 'Hải Dương', 1, 1, '2023-07-01 01:37:26', '2023-07-01 02:59:38'),
(111, 0, 45, 'Thế Linh ', 'tk5@gmail.com', '09861308285', '197 Hoang Mai', 1, 1, '2023-07-01 03:03:56', '2023-07-01 03:15:45'),
(112, 1540000, 46, 'Thế Linh', 'kh6@gmail.com', '098613082822', 'Hải Dương', 0, 1, '2023-07-01 03:19:44', '2023-07-01 03:19:44'),
(113, 640000, 43, 'Phương Thảo A', 'thao@gmail.com', '0986130828', '197 Hoang Mai', 0, 1, '2023-07-05 14:33:31', '2023-07-05 14:33:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `update_at`) VALUES
(38, 'Dương Hải Nam', 'nammitslvn@gmail.com', '0961475653', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-29 17:48:49', '2023-06-29 17:48:49'),
(39, 'Dương Hải Nam', 'nammitslvn2@gmail.com', '0961475654', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-29 19:33:53', '2023-06-29 19:33:53'),
(40, 'Dương Hải Nam', 'kh1@gmail.com', '0961475655', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-30 01:59:20', '2023-06-30 01:59:20'),
(41, 'Dương Hải Nam', 'kh2@gmail.com', '0961475656', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-30 04:53:39', '2023-06-30 04:53:39'),
(42, 'Dương Hải Nam', 'kh3@gmail.com', '09614756535', 'CT1C Chung cư thông tấn xã khu đô thị kim văn kim lũ', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-30 05:13:32', '2023-06-30 05:13:32'),
(43, 'Phương Thào', 'thao@gmail.com', '0986130828', '197 Hoang Mai', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-06-30 13:48:55', '2023-06-30 13:48:55'),
(44, 'Thế Linh', 'linh@gmail.com', '0987625533', 'Hải Dương', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-07-01 01:36:54', '2023-07-01 01:36:54'),
(45, 'Thế Linh', 'tk5@gmail.com', '09861308285', '197 Hoang Mai', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-07-01 03:00:46', '2023-07-01 03:00:46'),
(46, 'Thế Linh', 'kh6@gmail.com', '098613082822', 'Hải Dương', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, '2023-07-01 03:17:12', '2023-07-01 03:17:12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rated`
--
ALTER TABLE `rated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_users` (`id_users`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `rated`
--
ALTER TABLE `rated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `rated`
--
ALTER TABLE `rated`
  ADD CONSTRAINT `rated_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `rated_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
