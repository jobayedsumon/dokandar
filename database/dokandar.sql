-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 11:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokandar`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(11) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(10, 'affiliate', 'affiliate_system', '1.2', 1, 'affiliate_banner.jpg', '2020-08-28 13:41:46', '2020-08-28 13:41:46'),
(11, 'Offline Payment', 'offline_payment', '1.1', 1, 'offline_banner.jpg', '2020-08-28 13:41:56', '2020-08-28 13:41:56'),
(12, 'OTP', 'otp_system', '1.2', 1, 'otp_system.jpg', '2020-08-28 13:42:08', '2020-08-28 13:42:08'),
(13, 'refund', 'refund_request', '1.0', 1, 'refund_request.png', '2020-08-28 13:42:17', '2020-08-28 13:42:17'),
(14, 'Seller Subscription System', 'seller_subscription', '1.0', 0, 'seller_subscription.jpg', '2020-08-28 13:43:02', '2020-08-28 13:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 13, 'Vill-Khohitkul, post-bogura, thana-Bogura,District-Bogura', 'Bangladesh', 'Bogura', '5800', '01712892968', 0, '2020-08-18 20:46:26', '2020-08-18 20:46:26'),
(2, 18, 'uttara', 'Bangladesh', 'dhaka', '1234', '022343546', 0, '2020-09-07 17:19:17', '2020-09-07 17:19:17'),
(3, 28, 'Bagerhat', 'Bangladesh', 'Bagerhat', '9300', '01929400878', 0, '2020-09-14 16:55:18', '2020-09-14 16:55:18'),
(4, 12, 'asd', 'Bolivia', 'asdasd', 'dasd', 'wew', 0, '2020-09-15 15:34:42', '2020-09-15 15:34:42'),
(5, 34, 'dhaka', 'Bangladesh', 'Dhaka', '1200', '0987654321', 0, '2020-09-24 21:08:39', '2020-09-24 21:08:39'),
(6, 37, 'Khilgaon\r\nNandipara', 'Bangladesh', 'Dhaka', '2019', '+8801711339052', 0, '2020-10-15 10:37:23', '2020-10-15 10:37:23'),
(7, 42, 'Khulna', 'Bangladesh', 'khulna', '9252', '01716230328', 0, '2020-11-07 14:43:34', '2020-11-07 14:43:34'),
(8, 46, 'Khulna', 'Bangladesh', 'Khulna', '9200', '111111111', 0, '2020-11-25 13:56:40', '2020-11-25 13:56:40'),
(9, 12, 'dhaka', 'Bangladesh', 'savar', '412453', '01716230328', 0, '2020-11-25 14:00:16', '2020-11-25 14:00:16'),
(10, 12, 'dhaka', 'Bangladesh', 'savar', '412453', '01716230328', 0, '2020-12-02 13:31:26', '2020-12-02 13:31:26'),
(11, 12, '174, Shershah Suri Road, Town Hall, Mohammadpur', 'Bangladesh', 'Dhaka / ঢাকা', '1207', '+8801700809622', 0, '2020-12-06 09:23:43', '2020-12-06 09:23:43'),
(13, 54, 'Dhaka', 'Bangladesh', 'dhaka', '1208', '+880185476855', 1, '2020-12-19 01:04:31', '2020-12-19 01:04:37'),
(14, 49, 'iusgdy8asjumi', 'Afghanistan', 'wqdqw', 'qdq', '01721423564692952892', 0, '2020-12-28 06:23:28', '2020-12-28 06:23:28'),
(15, 55, 'road-2. house-28', 'Savar', NULL, NULL, '+8801590110612', 0, '2021-02-27 16:03:00', '2021-02-27 16:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_configs`
--

CREATE TABLE `affiliate_configs` (
  `id` int(11) NOT NULL,
  `type` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_configs`
--

INSERT INTO `affiliate_configs` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\"}]', '2020-03-09 09:56:21', '2020-03-09 04:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_options`
--

CREATE TABLE `affiliate_options` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf32_unicode_ci DEFAULT NULL,
  `percentage` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_options`
--

INSERT INTO `affiliate_options` (`id`, `type`, `details`, `percentage`, `status`, `created_at`, `updated_at`) VALUES
(2, 'user_registration_first_purchase', NULL, 20, 1, '2020-03-03 05:08:37', '2020-03-05 03:56:30'),
(3, 'product_sharing', NULL, 20, 0, '2020-03-08 01:55:03', '2020-03-10 02:12:32'),
(4, 'category_wise_affiliate', NULL, 0, 0, '2020-03-08 01:55:03', '2020-03-10 02:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_payments`
--

CREATE TABLE `affiliate_payments` (
  `id` int(11) NOT NULL,
  `affiliate_user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `affiliate_payments`
--

INSERT INTO `affiliate_payments` (`id`, `affiliate_user_id`, `amount`, `payment_method`, `payment_details`, `created_at`, `updated_at`) VALUES
(2, 1, 20.00, 'Paypal', NULL, '2020-03-10 02:04:30', '2020-03-10 02:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE `affiliate_users` (
  `id` int(11) NOT NULL,
  `paypal_email` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `bank_information` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `informations` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `balance` double(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `affiliate_users`
--

INSERT INTO `affiliate_users` (`id`, `paypal_email`, `bank_information`, `user_id`, `informations`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(1, 'demo@gmail.com', '123456', 8, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Nostrum dicta sint l\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"Aut perferendis null\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Voluptatem Sit dolo\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"Ut ad beatae occaeca\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"Porro sint soluta u\"}]', 30.00, 1, '2020-03-09 05:35:07', '2020-03-10 02:04:30'),
(2, NULL, NULL, 12, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Omnis deserunt offic\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"Aut dolor et et sunt\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Expedita dolores exc\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"In accusantium quo a\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"Qui ullam dicta proi\"}]', 0.00, 0, '2020-09-15 15:35:51', '2020-09-15 15:35:51'),
(3, NULL, NULL, 33, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Shahin\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"itzone@gmail.com\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Siddhirgong Housing\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"01911396969\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"fb\"}]', 0.00, 0, '2020-09-23 23:02:10', '2020-09-23 23:02:10'),
(4, NULL, NULL, 38, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Estiak Hossain\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"estiakhossain5@gmail.com\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Link Road, Dhaka\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"0182207722\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"Social Media\"}]', 0.00, 1, '2020-10-18 11:22:26', '2020-10-18 11:24:16'),
(5, NULL, NULL, 54, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"polash\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"polashfpi@gmail.com\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Mirgonj, Lemua Bazar\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"+8801829281698\"},{\"type\":\"text\",\"label\":\"How will you affiliate?\",\"value\":\"Facebook\"}]', 0.00, 0, '2020-12-19 01:02:36', '2020-12-19 01:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13'),
(3, 'RAM', '2020-08-08 23:24:00', '2020-09-15 15:59:31'),
(4, 'ROM', '2020-09-15 15:59:08', '2020-09-15 15:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(13, 'uploads/banners/w2A7VcFEBCCWZEJSK1FLJq0HvYLD96h8a3AgOQba.gif', 'http://webdevelopmentsbd.com/', 1, 0, '2020-09-30 04:01:22', '2021-02-26 01:54:44'),
(14, 'uploads/banners/j8UPWxhj9tTTOYPx1UWfgtkeERzLraX91BUIfWso.gif', 'http://webdevelopmentsbd.com', 1, 0, '2020-09-30 04:11:58', '2021-02-26 01:54:46'),
(15, 'uploads/banners/IaXIWps5ojc8bXj4xvtGwPpo6xhBMNrIDn8jIgMg.gif', 'http://webdevelopmentsbd.com', 1, 0, '2020-09-30 04:15:27', '2021-02-26 01:54:48'),
(21, 'uploads/banners/AfIfKOpLNAn5iQXQFfQa8jWneBdLM8sh5ONR529W.gif', 'http://richbazar.com.bd/', 2, 0, '2020-11-20 15:01:29', '2021-02-26 01:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(5, 'Johnson\'s', 'uploads/brands/IFq10tfKmszD6Sqscvh0LIchPGhvKHDLN3SHqHRY.png', 0, 'Johnsons-Pc5ry', NULL, NULL, '2020-08-06 15:17:55', '2020-08-06 15:17:55'),
(6, 'Mother care', 'uploads/brands/HA4Jc6N0ZCGNMgtae7dzZlpJiRUcPE0v9DHRaOhx.png', 0, 'Mother-care-TOMVb', NULL, NULL, '2020-08-06 15:21:22', '2020-08-06 15:21:22'),
(7, 'Boots', 'uploads/brands/6tHryW6cRONhn1ldQWCmbmoPLrVIbN2IGjimRHXC.png', 0, 'Boots-nbvDq', NULL, NULL, '2020-08-06 15:25:14', '2020-08-06 15:25:14'),
(8, 'Safi', 'uploads/brands/w7kMRFicZkQoLjWqQwz6fQK5VoWKSVAabRbNzFaj.jpeg', 0, 'Safi-IqMzw', NULL, NULL, '2020-08-06 15:27:59', '2020-08-06 15:27:59'),
(9, 'Loreal', 'uploads/brands/UoN1jXPaMTxhZRmhcOHsNScq8ZyWSFY7mzQLjzrj.png', 0, 'Loreal-I5wsB', NULL, NULL, '2020-08-06 15:30:01', '2020-08-06 15:30:53'),
(10, 'Himalaya', 'uploads/brands/dEMnEx2xmh449z6KoX8yU7IN7b7p9x6nCmM0NYqV.jpeg', 0, 'Himalaya-VoyUa', NULL, NULL, '2020-08-06 15:32:33', '2020-08-06 15:32:33'),
(11, 'Garnier', 'uploads/brands/qCpZSAn2tmpimcKEXpTcb6Ym0dWtyD6szyWP56qK.jpeg', 0, 'Garnier-rz6Wx', NULL, NULL, '2020-08-06 15:34:47', '2020-08-06 15:34:47'),
(12, 'Lakme', 'uploads/brands/VNySkKHO10faZdLaWXDL6KoOlZk4KOsrIPuvPBYA.jpeg', 0, 'Lakme-2oE89', NULL, NULL, '2020-08-06 15:36:14', '2020-08-06 15:36:14'),
(13, 'Olay', 'uploads/brands/yZRKe5GqsJ7xwzunYRuOz0pTHbhZpWb66je5G0gU.png', 0, 'Olay-1f8vf', NULL, NULL, '2020-08-06 15:37:59', '2020-08-06 15:37:59'),
(14, 'Aveeno', 'uploads/brands/9oGK8W1grRaN44Ci6mHf1nb2lCb1ZCaaU6RTJVUs.jpeg', 0, 'Aveeno-Ym6G3', NULL, NULL, '2020-08-06 15:39:21', '2020-08-06 15:39:21'),
(15, 'kodomo', 'uploads/brands/ByY4TmhYwtpGh6nNitl2rw9vP2pmKjqYRQmQvpe4.png', 0, 'kodomo-f40D7', NULL, NULL, '2020-08-06 15:40:41', '2020-08-06 15:40:41'),
(16, 'Simple', 'uploads/brands/GvneIljn0Z5d9YmWr6bsL7T57zkESAM7Oy4Yb3CF.png', 0, 'Simple-kJ2kb', NULL, NULL, '2020-08-06 15:42:00', '2020-08-06 15:42:00'),
(17, 'Dove', 'uploads/brands/8nniYZ1erzPTQBLAawS66AAMuzA6zgGOgiuPCYTh.png', 0, 'Dove-hpr4n', NULL, NULL, '2020-08-06 15:42:52', '2020-08-06 15:42:52'),
(18, 'Tresemme', 'uploads/brands/f5oWSdtUpMfHVK8oSUELfCS1pa3TXKzT18n97uKI.png', 0, 'Tresemme-uTQ5q', NULL, NULL, '2020-08-06 15:43:45', '2020-08-06 15:44:39'),
(19, 'Pantene', 'uploads/brands/2QatCRSC8OkEg4iAsGyb0wZzvjWFiESJBEhVIOba.jpeg', 0, 'Pantene-6eOzf', NULL, NULL, '2020-08-06 15:46:45', '2020-08-06 15:46:45'),
(20, 'Head & Shoulders', 'uploads/brands/ZzmJwqDjQYZ7veBG2h4E4BhwSCgjQAkJ7WDrOOZa.png', 0, 'Head--Shoulders-uIkA7', NULL, NULL, '2020-08-06 15:48:48', '2020-08-06 15:48:48'),
(21, 'Body Shop', 'uploads/brands/j3LFolvRSwTIC21eQYmwx9JFx7Z3oTUDEHHytpr0.jpeg', 0, 'Body-Shop-ZDxBa', NULL, NULL, '2020-08-06 15:53:22', '2020-08-06 15:53:22'),
(22, 'Clean Clear', 'uploads/brands/DufaCSnXeFPBelQqifo9nOVxIL3LqcxPrWMDCIzF.png', 0, 'Clean-Clear-QY3NA', NULL, NULL, '2020-08-06 15:57:01', '2020-08-06 15:57:01'),
(23, 'Ponds', 'uploads/brands/NQNHLpS0SluAn8Uycmnw8DE6JfSNNc3YCu6I2sJn.png', 0, 'Ponds-xYic7', NULL, NULL, '2020-08-06 16:05:38', '2020-08-06 16:05:38'),
(24, 'Nevia', 'uploads/brands/BB0sp5H3Q3iua3l26xkMdhlLdnHMhtKJhwPk5tAt.png', 0, 'Nevia-UKpmv', NULL, NULL, '2020-08-06 16:07:41', '2020-08-06 16:07:41'),
(25, 'Follow me', 'uploads/brands/1Xb9p8mHMnxIZlvLu90ZyUf12RRrRVZE28bZzsal.jpeg', 0, 'Follow-me-HThWa', NULL, NULL, '2020-08-06 16:09:52', '2020-08-06 16:09:52'),
(26, 'Vaseline', 'uploads/brands/762mglQZIkIAI6Jx4Es5r9LpgzbrPrV2KncqDCUy.png', 0, 'Vaseline-aU9VL', NULL, NULL, '2020-08-06 16:12:22', '2020-08-06 16:12:22'),
(27, 'XHC', 'uploads/brands/A4CmJeecCAgYYP2kqpHab3jPGw9NYnQzkWP3bIb7.jpeg', 0, 'XHC-wRh45', NULL, NULL, '2020-08-06 16:13:24', '2020-08-06 16:13:24'),
(28, 'StIevs', 'uploads/brands/DqYQN0SAV8QwgCkMbhrYEZlirYw0MkB1b03QUbND.jpeg', 0, 'StIevs-tMOPI', NULL, NULL, '2020-08-06 16:14:36', '2020-08-06 16:14:36'),
(29, 'Ginvera', 'uploads/brands/ish5m2hMlU64GWkB69sLprhyIBBWzR1Gn0DjTkQh.png', 0, 'Ginvera-qVDif', NULL, NULL, '2020-08-06 16:15:35', '2020-08-06 16:15:35'),
(30, 'Sakura', 'uploads/brands/cS6eS8hnSTn7nvgQ95aGsycr1gpHOsXND74ERcMl.png', 0, 'Sakura-yNATx', NULL, NULL, '2020-08-06 16:17:03', '2020-08-06 16:17:03'),
(31, 'Ginger', 'uploads/brands/GXVihChT1IjCMqmsyqZRjukCTVNNPIvs9Aat8uh2.png', 0, 'Ginger-eXEXq', NULL, NULL, '2020-08-06 16:18:31', '2020-08-06 16:18:31'),
(32, 'Lux', 'uploads/brands/c5d8xjwzq8NkgPHKlpwAKBq3f3gxV2N9QRdrrZZ2.png', 0, 'Lux-aZkF7', NULL, NULL, '2020-08-06 16:20:12', '2020-08-06 16:20:12'),
(33, 'Victory', 'uploads/brands/YM7NfKs01iq3gACpa1Nr4GXVOUvAGzkmtBfjxvS0.jpeg', 0, 'Victory-VE6xH', NULL, NULL, '2020-08-06 16:23:13', '2020-08-06 16:23:13'),
(34, 'Enchanteur', 'uploads/brands/7a3qtTxnrRx892agOTaUmzQ8v52Ov73TsCvoDxuT.jpeg', 0, 'Enchanteur-dbo1s', NULL, NULL, '2020-08-06 16:24:22', '2020-08-06 16:24:22'),
(35, 'Sunsilk', 'uploads/brands/iJlfKptDvVaDNh90ESAj6AqUzCmNUQL3TmUIoAs8.jpeg', 0, 'Sunsilk-Ga3KH', NULL, NULL, '2020-08-06 16:25:31', '2020-08-06 16:25:31'),
(36, 'Vatika', 'uploads/brands/5MS9ziWs1SJqqXwKxRZzDLbWXWznn9VP622nyaXF.jpeg', 0, 'Vatika-rPfv8', NULL, NULL, '2020-08-06 16:26:12', '2020-08-06 16:26:12'),
(37, 'Sensodyne', 'uploads/brands/pQRgOL6uEUEDOUslbhmxNF2MUk2cNXxmoSQJGwvA.png', 0, 'Sensodyne-IEhdU', NULL, NULL, '2020-08-06 16:27:15', '2020-08-06 16:27:15'),
(38, 'Colgate', 'uploads/brands/3cW0CCG6KcnQK6PBFrzkzipRXRTz6zu262Hr2BiD.jpeg', 0, 'Colgate-XM0jN', NULL, NULL, '2020-08-06 16:28:07', '2020-08-06 16:28:07'),
(39, 'New Clear', 'uploads/brands/JaJeQsD9xtV6YuUtTOznljp6dfDYy0d9Ie0NjxBX.png', 0, 'New-Clear-TAXtd', NULL, NULL, '2020-08-06 16:29:40', '2020-08-06 16:29:40'),
(40, 'Organ oil', 'uploads/brands/thtv1HyKBKjSx1uIRBewYNDhW9f7fogrZeY2hdvE.png', 0, 'Organ-oil-sy3lH', NULL, NULL, '2020-08-06 16:32:15', '2020-08-06 16:32:15'),
(41, 'Parachute', 'uploads/brands/N01SI5YpCaY0y53faFA8f66EdGVPGVw5nWrhvDK9.jpeg', 0, 'Parachute-32xLx', NULL, NULL, '2020-08-06 16:33:30', '2020-08-06 16:33:30'),
(42, 'Herbal Essencese', 'uploads/brands/5rcURbMFn6hWMCBWYYluZxaFG4XbN0lBIEAWmypt.jpeg', 0, 'Herbal-Essencese-EXxs5', NULL, NULL, '2020-08-06 16:34:54', '2020-08-06 16:34:54'),
(43, 'Watsons', 'uploads/brands/MMFSRWHeBRgNdmjhOdbOPaTtlefG5MyvdYwEurwj.png', 0, 'Watsons-uF5wN', NULL, NULL, '2020-08-06 16:36:20', '2020-08-06 16:36:20'),
(44, 'Guardian', 'uploads/brands/0eefzJdIF3cGEhkk63BoY8QYkgjuNqpy7mvSFyB4.jpeg', 0, 'Guardian-DbMnU', NULL, NULL, '2020-08-06 16:38:21', '2020-08-06 16:38:21'),
(45, 'Toyota', 'uploads/brands/LckPzXOQUwidj8sihCVYJShsf39QfIbaOIu7YqqL.png', 0, 'Toyota-javNN', NULL, NULL, '2020-08-06 18:38:46', '2020-08-06 18:38:46'),
(46, 'Teer', 'uploads/brands/mqqhg1yb2H1W4OH4TiTtVYNdsbU9ATHkkvAK0uds.png', 0, 'Teer-wHbi1', NULL, NULL, '2020-08-06 18:40:30', '2020-08-06 18:40:30'),
(47, 'ACI', 'uploads/brands/9eLr5qYbFA8jFYtO8EDrJIjHHsKVrAHA35sPHZDg.jpeg', 0, 'ACI-HJBsA', NULL, NULL, '2020-08-06 18:41:55', '2020-08-06 18:41:55'),
(48, 'Fresh', 'uploads/brands/JnhhIp3duGUKZQl0IbkayIOujmABpo9OgC5HvNNr.jpeg', 0, 'Fresh-SUHTG', NULL, NULL, '2020-08-06 18:44:10', '2020-08-06 18:44:10'),
(49, 'Rupchanda', 'uploads/brands/vGFXpP8nQU3uq10DCN53DogciVVU7PhCImPQm4dh.jpeg', 0, 'Rupchanda-43AQW', NULL, NULL, '2020-08-06 18:45:49', '2020-08-06 18:45:49'),
(50, 'Bosundara', 'uploads/brands/RGwOpkRaFaBwJWCOWfUTP6fmfxoKIlLceSQUyNM5.jpeg', 0, 'Bosundara-CO9In', NULL, NULL, '2020-08-06 18:47:25', '2020-08-06 18:47:25'),
(51, 'Samsung', 'uploads/brands/YTMk1chx0vbfbK2wBXGkrqeMUz7LDcFhRnsDxrM9.png', 0, 'Samsung-cnOwA', NULL, NULL, '2020-08-06 18:49:42', '2020-08-06 18:49:42'),
(52, 'Hitachi', 'uploads/brands/dozWE7KlPeZjCDOhS91YRA9lSCWFGwWaB2FcjID6.jpeg', 0, 'Hitachi-G47t8', NULL, NULL, '2020-08-06 18:57:27', '2020-08-06 18:57:27'),
(53, 'Nokia', 'uploads/brands/AenoPYWFMBTjoWVFla5kyqPR7K71GGwhM4deMYOC.png', 0, 'Nokia-XpVd5', NULL, NULL, '2020-08-06 18:58:50', '2020-08-06 18:58:50'),
(54, 'Redmi', 'uploads/brands/E92p2rilxgC9Kt7gOW8aqXXUGvsF5eKV3chysl60.jpeg', 0, 'Redmi-sS8eo', NULL, NULL, '2020-08-06 19:00:02', '2020-08-06 19:00:02'),
(55, 'Motorola', 'uploads/brands/qZcQ6zEtKhLcQl6jvxJeBhANCXNqXQI9zr7Usi4P.png', 0, 'Motorola-VIltI', NULL, NULL, '2020-08-06 19:01:37', '2020-08-06 19:01:37'),
(56, 'Huawei', 'uploads/brands/JUgglZkvozlpshmlJCLI5WMoMiwnIm7k5zCg2SrM.jpeg', 0, 'Huawei-svRLa', NULL, NULL, '2020-08-06 19:05:21', '2020-08-06 19:05:21'),
(57, 'Oppo', 'uploads/brands/1UJ8xvi3oXQdoDjOEnoEKeEAX1Sn9XR2jjDrxgvn.png', 0, 'Oppo-6GcvB', NULL, NULL, '2020-08-06 19:08:17', '2020-08-06 19:08:17'),
(58, 'Vivo', 'uploads/brands/NBlNWe8il8JbQIz6f883U7lykJ6ZXwKQNgG0Qyyj.png', 0, 'Vivo-7dKZ2', NULL, NULL, '2020-08-06 19:09:20', '2020-08-06 19:09:20'),
(59, 'Walton', 'uploads/brands/lb5Jisb29RAcUmMjTvmO5DdaGKc7L4qpAJw2DyaZ.png', 0, 'Walton-vdOFe', NULL, NULL, '2020-08-06 19:10:27', '2020-08-06 19:10:27'),
(60, 'Symphony', 'uploads/brands/gNeZXALjdY53gG0ZrWlyhy9oXeZnKJyY2duyMP8g.jpeg', 0, 'Symphony-zkrCr', NULL, NULL, '2020-08-06 19:12:02', '2020-08-06 19:12:34'),
(61, 'Lg', 'uploads/brands/lygkNmL20Qe1asnpVkUtaYiIyI1hXGqSfkv4qtUD.png', 0, 'Lg-iHhob', NULL, NULL, '2020-08-06 19:18:40', '2020-08-06 19:18:40'),
(62, 'ASUS', 'uploads/brands/pw9AhCe0chOcXSy4OeosME0omhiDsnXmwxw2rgRB.jpeg', 0, 'ASUS-9WZXH', NULL, NULL, '2020-08-08 12:04:45', '2020-08-08 12:04:45'),
(63, 'HP', 'uploads/brands/r3j9lPqV1S2hxZVNh6MHuUzpImslrSkba2rOsooD.jpeg', 0, 'HP-PRnzW', NULL, NULL, '2020-08-08 12:06:33', '2020-08-08 12:06:33'),
(64, 'DELL', 'uploads/brands/J8HdEDZISQGI4YNgjzFRYANQ5iJvfUPRbLjuI4vz.png', 0, 'DELL-JkpPy', NULL, NULL, '2020-08-08 12:07:58', '2020-08-08 12:07:58'),
(65, 'ACER', 'uploads/brands/wbgCj8e8ww3bPbUJ5xvAzSAz6e5b5pzzF68lzr5K.png', 0, 'ACER-3QyMq', NULL, NULL, '2020-08-08 12:22:12', '2020-08-08 12:22:12'),
(66, 'micro', 'uploads/brands/VMxjDHSK457uh31E1BQI9mvOXW4CPIi5RcnXRGl1.jpeg', 0, 'micro-TmvSl', NULL, NULL, '2020-08-08 13:02:26', '2020-08-08 13:02:26'),
(67, 'SONY', 'uploads/brands/y7J5EnSjwX0IXsHlI5jHVFMqKnNSOwHuQjOfTmeB.jpeg', 0, 'SONY-vDJn0', NULL, NULL, '2020-08-08 13:05:15', '2020-08-08 13:05:15'),
(68, 'Minester', 'uploads/brands/PcwG2GJaXoY9XztVOkmNUJkce36o52QuFlkiOW2a.png', 0, 'Minester-y48tX', NULL, NULL, '2020-08-08 13:07:55', '2020-08-08 13:07:55'),
(69, 'Sharp', 'uploads/brands/pQs0jHew3oTnGFXu7xy20ktDzZizRY15hWZCnNtT.jpeg', 0, 'Sharp-fVBoM', NULL, NULL, '2020-08-08 13:09:30', '2020-08-08 13:09:58'),
(70, 'Conion', 'uploads/brands/ID6mlzAzLFu5qTnMknNXkELjOjKU5a3U98FGwV9K.jpeg', 0, 'Conion-i2nms', NULL, NULL, '2020-08-08 13:13:32', '2020-08-08 13:13:32'),
(71, 'Miyaco', 'uploads/brands/Nvtq71ep8vU1JMHXv8UGjEoamcILUr22kbwvfzX5.png', 0, 'Miyaco-fyzyX', NULL, NULL, '2020-08-08 13:43:25', '2020-08-08 13:43:25'),
(72, 'Hwakins', 'uploads/brands/XeKjfXCDOdUz6Tr3fA4Z8uFuvnq5t0oAOxjX0V51.png', 0, 'Hwakins-0o1qv', NULL, NULL, '2020-08-08 13:44:54', '2020-08-08 13:44:54'),
(73, 'Aarong', 'uploads/brands/qYyjoJICORM9PFcHmJuWKcMRjDO3ZAzGcTFYmVIq.gif', 0, 'Aarong-2jGMb', NULL, NULL, '2020-08-08 21:08:25', '2020-08-08 21:08:25'),
(74, 'Bata', 'uploads/brands/n4ELtBeRDQGYmKHK7kwIQnOhW5adj98xMjXQtRL1.png', 0, 'Bata-PthtI', NULL, NULL, '2020-08-08 21:10:33', '2020-08-08 21:10:33'),
(75, 'Chaoba', 'uploads/brands/0bY5c0tx5oJ2buetQUiHLelVm86aQzpZJHvmRFSK.png', 0, 'Chaoba-uUzna', NULL, NULL, '2020-08-12 01:31:47', '2020-08-12 01:31:47'),
(76, 'Palmolive', 'uploads/brands/8qBvnRogPON5fEW6HQ5BYnsvwtxCwP04ezyAgJiE.png', 0, 'Palmolive-029UF', NULL, NULL, '2020-08-22 16:30:08', '2020-08-22 16:30:08'),
(77, 'LYNX', 'uploads/brands/61pRZcl6Sc1BeAfUzeILHfyqKL1T7ZZCYNG8uver.png', 0, 'LYNX-baPB0', NULL, NULL, '2020-08-22 17:41:17', '2020-08-22 17:41:17'),
(78, 'CROWN', 'uploads/brands/NmccrLOkXOBfNgt9Jh3w0bdzrB7eJkI1hJgEzCvh.jpeg', 0, 'CROWN-m35JC', NULL, NULL, '2020-08-23 14:09:42', '2020-08-23 14:09:42'),
(79, 'APEX', 'uploads/brands/VQNl0hQRkVxhl1fA0q4Pf3oAlFfchRO55gS96GHC.jpeg', 0, 'APEX-3BZ2O', NULL, NULL, '2020-09-12 13:45:04', '2020-09-12 13:45:04'),
(80, 'LOTTO', 'uploads/brands/dtplsVfYDvZzhElkkXU8oN2Q7yzTgLfOMgtQNt9R.png', 0, 'LOTTO-VS1rj', NULL, NULL, '2020-09-12 13:47:46', '2020-09-12 13:47:46'),
(81, 'Realme', 'uploads/brands/nEaKQ3yJP7m5HwKEYDfQykhsy8kSKv9DR6sdze56.jpeg', 0, 'Realme-zm2JS', NULL, NULL, '2020-09-15 14:33:22', '2020-09-15 14:33:22'),
(82, 'Linvilla Orchards', 'uploads/brands/kQuYWA98mNLugow5GSqcA6mFzi1ZghC052bJhzTO.jpeg', 0, 'Linvilla-Orchards-oJQih', NULL, NULL, '2020-09-15 15:19:46', '2020-09-15 15:19:46'),
(83, 'Titan', 'uploads/brands/pAaAniYkiERDNYpwbRCXNgNQjslG39ZVH2GC99sp.jpeg', 0, 'Titan-bclGJ', NULL, NULL, '2020-09-15 15:42:24', '2020-09-15 15:42:24'),
(84, 'Skmei', 'uploads/brands/BfGy3t6JGi8yaIjg2IFtGP0M7FcSjAyCMTZry1T7.png', 0, 'Skmei-EAo9J', NULL, NULL, '2020-09-18 14:18:52', '2020-09-18 14:18:52'),
(85, 'Casio', 'uploads/brands/Ff4aYYV5RmlaWmDUtrO3hpKy4WNyCnkVSgyljPPR.png', 0, 'Casio-9RUzv', NULL, NULL, '2020-09-18 14:48:32', '2020-09-18 14:48:32'),
(86, 'Revlon', NULL, 0, 'Revlon-yCPrK', NULL, NULL, '2020-09-22 13:34:23', '2020-09-22 13:34:23'),
(87, 'Sewha', 'uploads/brands/a2kXmFK94B8s04hP2zCO7cLdRpJo3ONKI4CadAU1.jpeg', 0, 'Sewha-P0XF1', NULL, NULL, '2020-09-22 13:57:29', '2020-09-22 13:57:29'),
(88, 'Lyclear', 'uploads/brands/TtARWg7EkW7CWW0J8l5w3LaKd27ZFu1pfo8XzE90.png', 0, 'Lyclear-Itjir', NULL, NULL, '2020-09-22 14:04:38', '2020-09-22 14:04:38'),
(89, 'Cetaphil', 'uploads/brands/HvZBdgH05mx3J6zSfdvgYNN8yZvW7CBLE7IQn0Gk.jpeg', 0, 'Cetaphil-ldVCA', NULL, NULL, '2020-09-22 14:13:08', '2020-09-22 14:13:08'),
(90, 'Aveeno', 'uploads/brands/kJBhohowvrvYawQuSxRzfW3vO5N42Z9EaMKyfGuD.png', 0, 'Aveeno-8pXOe', NULL, NULL, '2020-09-22 14:21:13', '2020-09-22 14:21:13'),
(91, 'Laoshiya', 'uploads/brands/iZktciWSKqxP4lWJkpSuJBrYuX2wZrOlKFW0iLm0.png', 0, 'Laoshiya-RHVlb', NULL, NULL, '2020-12-02 01:56:36', '2020-12-13 08:24:53'),
(93, 'Pollibiddut eid gha math', 'uploads/brands/rVwObfxTzOWyICGE9pMuooM497CosVcSKctNIGCb.jpeg', 0, 'Pollibiddut-eid-gha-math-WRtFE', 'Pollibiddut eid gha math', NULL, '2021-02-26 00:15:03', '2021-02-26 00:15:03'),
(94, 'Food Village', 'uploads/brands/OrImMRD24Q1wWsm4snBH783kVsNvkHrCa1HsmLw8.png', 0, 'Food-Village-UCOv0', 'Food Village', NULL, '2021-02-26 07:31:14', '2021-02-26 07:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '27', '2018-10-16 01:35:52', '2020-08-06 02:44:43'),
(2, 'system_default_currency', '27', '2018-10-16 01:36:58', '2020-08-06 02:44:43'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2020-08-12 11:34:22'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2020-12-01 08:53:43'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2019-01-31 05:09:10'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2020-12-01 09:11:13'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '20', '2019-01-31 06:18:04', '2019-04-13 06:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]', '2019-02-03 11:36:58', '2019-02-16 06:14:42'),
(19, 'google_analytics', '0', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '0', '2019-02-07 12:51:59', '2019-02-08 19:41:15'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2019-02-08 19:41:14'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '1', '2019-04-30 07:30:07', '2020-12-28 05:37:12'),
(38, 'wallet_system', '1', '2019-05-19 08:05:44', '2020-11-25 13:56:08'),
(39, 'coupon_system', '1', '2019-06-11 09:46:18', '2020-11-25 13:31:53'),
(40, 'current_version', 'Developed By Akash', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '1', '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', '2020-05-13 13:01:05', '2020-11-07 14:41:46'),
(56, 'pos_activation_for_seller', '1', '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'flat_rate', '2020-07-01 13:49:56', '2020-09-05 01:32:44'),
(58, 'flat_rate_shipping_cost', '20', '2020-07-01 13:49:56', '2021-02-26 02:20:07'),
(59, 'shipping_cost_admin', '20', '2020-07-01 13:49:56', '2021-02-26 02:20:20'),
(60, 'refund_request_time', '3', '2019-03-11 23:58:23', '2019-03-11 23:58:23'),
(61, 'refund_request_time', '3', '2019-03-11 23:58:23', '2019-03-11 23:58:23'),
(62, 'refund_request_time', '3', '2019-03-11 23:58:23', '2019-03-11 23:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `top` int(11) NOT NULL DEFAULT 0,
  `digital` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(4, 'Electronic Devices', 0.00, 'uploads/categories/banner/wTb5kCc0hZoAI0DX2zKFSYFHybjgf2bKnfRU4wNh.jpeg', 'uploads/categories/icon/CYSONPzto6OSrYEIY4quX6lCHUyVhcK8FFr59tv9.jpeg', 0, 0, 0, 'Electronic-Devices-EcjYK', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:24'),
(5, 'Electronic Accessories', 0.00, 'uploads/categories/banner/O7lqhkXCJlULiisqflpSGzeFzWzD7ZEefFTIFYIQ.jpeg', 'uploads/categories/icon/CrP9I1ia4QvllCnbTQAbK8YUqgdmASRqZ4fiyTHO.png', 0, 0, 0, 'Electronic-Accessories-HX8TA', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:19'),
(6, 'TV & Home Appliances', 0.00, 'uploads/categories/banner/Skbd0nnCoH3xmAd6mHhNfBr63NJCdzJBaT8O6cDS.jpeg', 'uploads/categories/icon/vFZcviXrbstHCYiDVdLQcxLvqFtsOqn6cZzAuuLu.png', 0, 0, 0, 'TV--Home-Appliances-U8tiN', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:21'),
(7, 'Health & Beauty', 0.00, 'uploads/categories/banner/cPprogsoGUHjo3blZ7F3uUiYgpKciDKrhBDUSswR.jpeg', 'uploads/categories/icon/9AtjNGjqwJIJqO6cnL2bSTMc8GsifZKpobEdeHCG.png', 0, 0, 0, 'Health--Beauty-SJhzF', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:17'),
(8, 'Babies & Toys', 0.00, 'uploads/categories/banner/ZFAhU17QFl2T0x58VIvCca2XdGBw2LLFOyps0B2p.jpeg', 'uploads/categories/icon/0WZvAINOVNW9KOP26JzRADxKV5vqyLWynzOFrvNT.png', 0, 0, 0, 'Babies--Toys-6mARJ', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:13'),
(9, 'Groceries & Pets', 0.00, 'uploads/categories/banner/x3sdwv6KANxflIOpFYyLcggegNxQ8jaRlugGND5X.jpeg', 'uploads/categories/icon/Abg9SFGFd7gotOUPsmgNEOhmxsAiJHolFfZviY16.png', 0, 0, 0, 'Groceries--Pets-u4PoQ', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:15'),
(10, 'Home & Lifestyle', 0.00, 'uploads/categories/banner/xlPTX5Tur8bqslWsGr6tdENbdNRmBLKrF3l4pphW.jpeg', 'uploads/categories/icon/8L7zxLoSptTDzcLIpJ1YqNoyFhnjIcaG1iSTLvav.png', 0, 0, 0, 'Home--Lifestyle-yuaiG', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:11'),
(11, 'Women\'s Fashion', 0.00, 'uploads/categories/banner/XLdqWSY3RULwTqy28Gcu4jKsqueElPcG8rWzZtj2.jpeg', 'uploads/categories/icon/iIZ80kY6IjqnMFsiVQOvPSMONR1RivugBpoSqVPz.png', 0, 0, 0, 'Womens-Fashion-XeRcM', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:09'),
(12, 'Men\'s Fashion', 0.00, 'uploads/categories/banner/ZyCTJDsEusl6uwUCbp8snvgK2r7OtU8aWCvHeMd4.jpeg', 'uploads/categories/icon/FU9N5MgsWxXy3a0l0bYPSAzduiUy2MHC8RXUR9oX.png', 0, 0, 0, 'Mens-Fashion-7DPhE', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:07'),
(13, 'Watches & Accessories', 0.00, 'uploads/categories/banner/BsrtQ9R8qYE3v9CRnpuvqmHxiVgBH2xoSybPhWRF.jpeg', 'uploads/categories/icon/aTYNwThlDHmJGOD3KY85cFsKI24OBPJWkHW2FxbS.jpeg', 0, 0, 0, 'Watches--Accessories-JkPgz', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:01'),
(14, 'Sports & Outdoor', 0.00, 'uploads/categories/banner/B5oUXsRHEWRJOCUr4UsxxIJDBENS28rNKWZtMPin.jpeg', 'uploads/categories/icon/eCKy1rvt97o1Py4BG9mXy7vXIn7lKGafgG9KIhva.png', 0, 0, 0, 'Sports--Outdoor-TNsmI', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:03'),
(15, 'Automotive & Motorbike', 0.00, 'uploads/categories/banner/99orKfLY0hqBdSbVm5wbcvXCYiXUzYLf3FOj4bqV.jpeg', 'uploads/categories/icon/JctLL6pCH5uH4tDQJ5LnGXS6pViX249IIxEenpUZ.png', 0, 0, 0, 'Automotive--Motorbike-B42Xb', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:50:58'),
(16, 'Fresh Fruits', 0.00, 'uploads/categories/banner/ZGmPMM4Ggy1YOTRNnlja6fNOBUV0ye1xzao3eiBH.jpeg', 'uploads/categories/icon/WxVh3T58jfJY1FjcMi0NTtRgZLwyoqsrlBvFBF8H.jpeg', 0, 0, 0, 'Fruits-v989o', NULL, NULL, '2021-02-27 19:41:43', '2021-02-26 01:51:05'),
(18, 'Fast Food', 0.00, 'uploads/categories/banner/yUTVFadmkBgCRCyajG0Be4lImpIsRIT6npAc4CfE.jpeg', 'uploads/categories/icon/m94iGVSSDF5nXBAVLvies610xARdYJIONLeCcJkX.webp', 1, 0, 0, 'Fast-Food-F1Z6c', 'Fast Food', NULL, '2021-02-27 19:41:43', '2021-02-26 00:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(11) NOT NULL DEFAULT 1,
  `receiver_viewed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(2, 12, 12, 'Samsung A20s', 1, 0, '2020-09-15 15:30:45', '2020-09-15 15:30:45'),
(3, 47, 12, 'Top quality jeans pant', 1, 0, '2020-11-27 13:21:51', '2020-11-27 13:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'sv', 'Savar', 1, '2021-02-27 13:58:01', '2021-02-27 13:58:01'),
(4, 'dh', 'Dhaka', 1, '2021-02-27 13:58:10', '2021-02-27 13:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'cart_base', '1010', '{\"min_buy\":\"50\",\"max_discount\":\"2500000\"}', 80.00, 'percent', 1607817600, 1607817600, '2020-12-13 08:35:55', '2020-12-13 08:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52'),
(2, 'Australian Dollar', '$', 1.28000, 1, 'AUD', '2018-10-09 11:35:08', '2019-02-04 05:51:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 1, 'BRL', '2018-10-09 11:35:08', '2018-10-17 05:51:00'),
(6, 'Canadian Dollar', '$', 1.27000, 1, 'CAD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(7, 'Czech Koruna', 'Kč', 20.65000, 1, 'CZK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(8, 'Danish Krone', 'kr', 6.05000, 1, 'DKK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(9, 'Euro', '€', 0.85000, 1, 'EUR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(10, 'Hong Kong Dollar', '$', 7.83000, 1, 'HKD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 1, 'HUF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 1, 'ILS', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(13, 'Japanese Yen', '¥', 107.12000, 1, 'JPY', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 1, 'MYR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(15, 'Mexican Peso', '$', 18.72000, 1, 'MXN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(16, 'Norwegian Krone', 'kr', 7.83000, 1, 'NOK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(17, 'New Zealand Dollar', '$', 1.38000, 1, 'NZD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(18, 'Philippine Peso', '₱', 52.26000, 1, 'PHP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(19, 'Polish Zloty', 'zł', 3.39000, 1, 'PLN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(20, 'Pound Sterling', '£', 0.72000, 1, 'GBP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(21, 'Russian Ruble', 'руб', 55.93000, 1, 'RUB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(22, 'Singapore Dollar', '$', 1.32000, 1, 'SGD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(23, 'Swedish Krona', 'kr', 8.19000, 1, 'SEK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(24, 'Swiss Franc', 'CHF', 0.94000, 1, 'CHF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(26, 'Thai Baht', '฿', 31.39000, 1, 'THB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 11:35:08', '2018-12-02 05:16:13'),
(28, 'Indian Rupee', 'Rs', 68.45000, 1, 'Rupee', '2019-07-07 10:33:46', '2019-07-07 10:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09'),
(6, 16, '2020-08-31 11:09:11', '2020-08-31 11:09:11'),
(7, 17, '2020-08-31 11:12:38', '2020-08-31 11:12:38'),
(8, 19, '2020-09-07 22:27:43', '2020-09-07 22:27:43'),
(9, 21, '2020-09-08 19:05:12', '2020-09-08 19:05:12'),
(10, 22, '2020-09-11 09:43:55', '2020-09-11 09:43:55'),
(11, 23, '2020-09-11 19:56:26', '2020-09-11 19:56:26'),
(12, 24, '2020-09-12 22:32:54', '2020-09-12 22:32:54'),
(14, 26, '2020-09-14 08:41:16', '2020-09-14 08:41:16'),
(15, 27, '2020-09-14 08:47:15', '2020-09-14 08:47:15'),
(17, 29, '2020-09-14 17:44:21', '2020-09-14 17:44:21'),
(18, 31, '2020-09-15 02:12:34', '2020-09-15 02:12:34'),
(20, 33, '2020-09-23 23:02:10', '2020-09-23 23:02:10'),
(21, 34, '2020-09-24 21:06:53', '2020-09-24 21:06:53'),
(22, 35, '2020-09-25 12:57:11', '2020-09-25 12:57:11'),
(23, 36, '2020-09-26 10:36:53', '2020-09-26 10:36:53'),
(24, 37, '2020-10-15 10:34:25', '2020-10-15 10:34:25'),
(27, 41, '2020-10-18 11:47:43', '2020-10-18 11:47:43'),
(32, 46, '2020-11-25 13:55:41', '2020-11-25 13:55:41'),
(35, 51, '2020-12-12 01:59:50', '2020-12-12 01:59:50'),
(36, 52, '2020-12-12 12:11:19', '2020-12-12 12:11:19'),
(37, 53, '2020-12-19 00:36:13', '2020-12-19 00:36:13'),
(38, 54, '2020-12-19 00:48:43', '2020-12-19 00:48:43'),
(39, 43, '2020-12-28 05:36:41', '2020-12-28 05:36:41'),
(43, 47, '2020-12-28 05:47:06', '2020-12-28 05:47:06'),
(44, 51, '2020-12-28 08:23:05', '2020-12-28 08:23:05'),
(45, 53, '2021-02-26 14:46:54', '2021-02-26 14:46:54'),
(46, 54, '2021-02-26 14:57:11', '2021-02-26 14:57:11'),
(47, 55, '2021-02-27 15:59:45', '2021-02-27 15:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(28,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(28,2) DEFAULT 0.00,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Best Deal', 1608595200, 1608768000, 0, 0, '#cc0066', 'white', 'uploads/offers/banner/NNE5g3YnGjoVWYVvLH0PzNAWF9GLfg9Tw7GgnIn0.jpeg', 'best-deal-y9tnw', '2020-09-28 16:01:08', '2021-02-26 02:22:46'),
(8, '12-12 Best Deal', 1607558400, 1607817600, 0, 0, '#F70F0F', 'white', NULL, '12-12-sale-d7foo', '2020-12-10 05:07:42', '2021-02-26 02:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(35, 8, 86, 1000.00, 'amount', '2020-12-12 13:13:41', '2020-12-12 13:13:41'),
(36, 8, 87, 350.00, 'amount', '2020-12-12 13:13:41', '2020-12-12 13:13:41'),
(37, 8, 88, 450.00, 'amount', '2020-12-12 13:13:41', '2020-12-12 13:13:41'),
(38, 8, 89, 450.00, 'amount', '2020-12-12 13:13:41', '2020-12-12 13:13:41'),
(39, 8, 90, 100.00, 'amount', '2020-12-12 13:13:41', '2020-12-12 13:13:41'),
(40, 7, 15, 10.00, 'percent', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(41, 7, 17, 10.00, 'percent', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(42, 7, 18, 10.00, 'percent', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(43, 7, 19, 90.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(44, 7, 21, 90.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(45, 7, 26, 90.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(46, 7, 29, 40.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(47, 7, 30, 90.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43'),
(48, 7, 45, 1250.00, 'amount', '2020-12-22 07:50:43', '2020-12-22 07:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `notice`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, '7', 'uploads/logo/kyOsk0MAx3eW4e1PJ7Mav195uTuLvVTiYub34Kvm.png', 'uploads/admin_logo/TntjsEROoB1mjfVxKWbW7XYUuiWKKQWXEXAZfJEn.png', 'uploads/admin_login_background/68ix8lssODMWL3PxVU4BPfC0XX9pdbUSoUCkRg6c.png', 'uploads/admin_login_sidebar/5KNkFMo5ADV1X6InFbHB2cAVtQgPxEYGc7Of4xft.png', 'uploads/favicon/uNbWUI9qsQcgE6GjGamhxrgjlAHilkRYU93zlzYM.png', 'Dokandar.xz', 'Baipy,Savar,dhaka', 'Dokandar a trusted online shopping in Baipail | cash on delivery| Home Delivery', 'THANKS FOR ORDERING FROM DOKANDAR.GROCERIES AND MORE SERVICES COMING SOON.', '01687388839', 'Info@dokandar.xyz', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', NULL, '2021-02-27 19:41:50', '2021-02-27 01:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(3, 4, 'null', 0, '2020-08-12 10:54:02', '2021-02-26 01:55:04'),
(4, 6, 'null', 0, '2020-08-12 10:54:10', '2021-02-26 01:55:04'),
(5, 7, 'null', 0, '2020-08-12 10:54:22', '2021-02-26 01:55:05'),
(6, 11, 'null', 0, '2020-08-12 10:54:31', '2021-02-26 01:55:05'),
(7, 13, 'null', 0, '2020-08-12 10:54:40', '2021-02-26 01:55:06'),
(8, 15, 'null', 0, '2020-08-12 10:54:51', '2021-02-26 01:55:08'),
(9, 16, 'null', 0, '2020-08-12 10:55:00', '2021-02-26 01:55:08'),
(10, 12, 'null', 0, '2020-11-25 13:49:32', '2021-02-26 01:55:08'),
(11, 18, 'null', 1, '2021-02-26 01:55:19', '2021-02-26 01:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(3, 'Bangla', 'bd', 0, '2019-02-17 06:35:37', '2019-02-18 06:49:51'),
(4, 'Arabic', 'sa', 1, '2019-04-28 18:34:12', '2019-04-28 18:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manual_payment_methods`
--

CREATE TABLE `manual_payment_methods` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(8, 2, 12, 'https://noven.coasdm.bd/product/Samsung-A20s-I04ED', '2020-09-15 15:30:45', '2020-09-15 15:30:45'),
(9, 3, 47, 'http://richbazar.com.bd/product/Top-quality-jeans-pant-ZA9ae', '2020-11-27 13:21:51', '2020-11-27 13:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `desce` varchar(2500) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manual_payment` int(11) NOT NULL DEFAULT 0,
  `manual_payment_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `delivery_viewed` int(11) NOT NULL DEFAULT 1,
  `payment_status_viewed` int(11) DEFAULT 1,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(30, NULL, 832497, '{\"name\":\"Gg\",\"email\":\"giveaway1753@usbc.be\",\"address\":\"Gg\",\"country\":\"Bangladesh\",\"city\":\"Gg\",\"postal_code\":\"1235\",\"phone\":\"01867\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1710.00, 0.00, '20201211-04234127', 1607660621, 1, 0, 0, 0, '2020-12-10 22:23:41', '2020-12-12 05:13:00'),
(31, NULL, 433029, '{\"name\":\"Gg\",\"email\":\"giveaway1753@usbc.be\",\"address\":\"Gg\",\"country\":\"Bangladesh\",\"city\":\"Gg\",\"postal_code\":\"1235\",\"phone\":\"01867\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 120.00, 0.00, '20201211-04240628', 1607660646, 0, 0, 0, 0, '2020-12-10 22:24:06', '2020-12-10 22:24:06'),
(32, NULL, 295550, '{\"name\":\"Gg\",\"email\":\"giveaway1753@usbc.be\",\"address\":\"Gg\",\"country\":\"Bangladesh\",\"city\":\"Gg\",\"postal_code\":\"1235\",\"phone\":\"01867\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 120.00, 0.00, '20201211-04244060', 1607660680, 0, 0, 0, 0, '2020-12-10 22:24:40', '2020-12-10 22:24:40'),
(33, NULL, 379874, '{\"name\":\"Aht\",\"email\":\"Ni\",\"address\":\"Hh\",\"country\":\"Afghanistan\",\"city\":\"Gg\",\"postal_code\":\"88\",\"phone\":\"55\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 1970.00, 0.00, '20201211-04253748', 1607660737, 1, 0, 0, 0, '2020-12-10 22:25:37', '2020-12-12 05:12:49'),
(34, NULL, 227625, '{\"name\":\"Jgg\",\"email\":\"reyeka8169@hebgsw.com\",\"address\":\"Gg\",\"country\":\"Afghanistan\",\"city\":\"Vv\",\"postal_code\":\"55\",\"phone\":\"55\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 78840.00, 0.00, '20201211-04271768', 1607660837, 1, 0, 0, 0, '2020-12-10 22:27:17', '2020-12-12 05:12:38'),
(35, NULL, 955898, '{\"name\":\"Lol\",\"email\":\"reyeka8169@hebgsw.com\",\"address\":\"Ggg\",\"country\":\"Afghanistan\",\"city\":\"Gg\",\"postal_code\":\"55\",\"phone\":\"55\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 999999.99, 0.00, '20201211-04322720', 1607661147, 1, 0, 0, 0, '2020-12-10 22:32:27', '2020-12-11 03:53:58'),
(37, NULL, 671841, '{\"name\":\"tarek\",\"email\":\"tarekrehman71@gmail.com\",\"address\":\"savar\",\"country\":\"Afghanistan\",\"city\":\"wqdqw\",\"postal_code\":\"424\",\"phone\":\"01721423564692952892\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 720.00, 0.00, '20201228-12275583', 1609158475, 1, 0, 0, 0, '2020-12-28 06:27:56', '2021-02-25 23:34:47'),
(39, NULL, 738679, '{\"name\":\"Nznsjdndj\",\"email\":\"Ashtvbd4143@gmail.com\",\"address\":\"Hdndndkx\",\"country\":\"Afghanistan\",\"city\":\"Aaans\",\"postal_code\":\"2794\",\"phone\":\"946497\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 720.00, 0.00, '20201228-14190885', 1609165148, 1, 0, 0, 0, '2020-12-28 08:19:08', '2021-02-26 03:27:17'),
(40, NULL, 538106, '{\"name\":\"Rahim\",\"email\":\"Rahim@gmail.com\",\"address\":\"Baipail\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1328\",\"phone\":\"08524178569\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 150.00, 0.00, '20210226-07592875', 1614326368, 1, 0, 0, 0, '2021-02-26 01:59:28', '2021-02-26 03:26:47'),
(41, NULL, 326126, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-19590337', 1614455943, 0, 0, 0, 0, '2021-02-27 13:59:03', '2021-02-27 13:59:04'),
(42, NULL, 437929, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20020159', 1614456121, 0, 0, 0, 0, '2021-02-27 14:02:01', '2021-02-27 14:02:01'),
(43, NULL, 126720, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20042026', 1614456260, 0, 0, 0, 0, '2021-02-27 14:04:20', '2021-02-27 14:04:20'),
(44, NULL, 518550, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20055542', 1614456355, 0, 0, 0, 0, '2021-02-27 14:05:55', '2021-02-27 14:05:55'),
(45, NULL, 845818, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20102891', 1614456628, 0, 0, 0, 0, '2021-02-27 14:10:28', '2021-02-27 14:10:28'),
(46, NULL, 282219, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20151284', 1614456912, 0, 0, 0, 0, '2021-02-27 14:15:12', '2021-02-27 14:15:12'),
(47, NULL, 370607, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20165965', 1614457019, 0, 0, 0, 0, '2021-02-27 14:16:59', '2021-02-27 14:17:00'),
(48, NULL, 359130, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20182574', 1614457105, 0, 0, 0, 0, '2021-02-27 14:18:25', '2021-02-27 14:18:26'),
(49, NULL, 108307, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20205646', 1614457256, 0, 0, 0, 0, '2021-02-27 14:20:56', '2021-02-27 14:20:56'),
(50, NULL, 947044, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20240496', 1614457444, 0, 0, 0, 0, '2021-02-27 14:24:04', '2021-02-27 14:24:05'),
(51, NULL, 439726, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20255423', 1614457554, 0, 0, 0, 0, '2021-02-27 14:25:54', '2021-02-27 14:25:54'),
(52, NULL, 105347, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20262531', 1614457585, 0, 0, 0, 0, '2021-02-27 14:26:26', '2021-02-27 14:26:26'),
(53, NULL, 242487, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20265785', 1614457617, 0, 0, 0, 0, '2021-02-27 14:26:57', '2021-02-27 14:26:57'),
(54, NULL, 667085, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20295581', 1614457795, 0, 0, 0, 0, '2021-02-27 14:29:55', '2021-02-27 14:29:55'),
(55, NULL, 112643, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20315710', 1614457917, 0, 0, 0, 0, '2021-02-27 14:31:57', '2021-02-27 14:31:57'),
(56, NULL, 322197, '{\"name\":\"Fahad\",\"email\":\"fahadhasan10401@gmail.com\",\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"01590116012\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-20350772', 1614458107, 0, 0, 0, 0, '2021-02-27 14:35:07', '2021-02-27 14:35:08'),
(57, NULL, 471884, '{\"name\":\"Jobayed Sumon\",\"email\":\"jobayedahmedsumon@gmail.com\",\"address\":\"Mirpur, Dhaka\",\"country\":\"Dhaka\",\"city\":null,\"postal_code\":null,\"phone\":\"01677242853\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 940.00, 0.00, '20210227-21554245', 1614462942, 0, 0, 0, 0, '2021-02-27 15:55:43', '2021-02-27 15:55:43'),
(58, 55, NULL, '{\"name\":\"Fahad\",\"email\":null,\"address\":\"road-2. house-28\",\"country\":\"Savar\",\"city\":null,\"postal_code\":null,\"phone\":\"+8801590110612\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 420.00, 0.00, '20210227-22035545', 1614463435, 0, 0, 0, 0, '2021-02-27 16:03:55', '2021-02-27 16:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(5, 5, 12, 53, '4GB', 22950.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-14 01:39:13', '2020-08-14 14:23:19'),
(6, 6, 12, 44, '', 64200.00, 0.00, 0.00, 2, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-14 01:42:10', '2020-08-14 14:22:12'),
(7, 7, 12, 49, 'DodgerBlue', 1650.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-14 01:43:37', '2020-08-14 14:21:25'),
(8, 8, 12, 53, '4GB', 22950.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-14 14:16:53', '2020-08-14 14:22:57'),
(9, 9, 12, 50, 'DarkGreen', 2900.00, 0.00, 120.00, 2, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-18 00:13:54', '2020-08-18 00:42:14'),
(10, 10, 12, 50, 'DarkGreen', 1450.00, 0.00, 120.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-18 00:14:30', '2020-08-18 00:17:26'),
(11, 11, 12, 51, '', 2100.00, 0.00, 120.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-08-18 20:47:00', '2020-08-19 20:48:11'),
(12, 12, 12, 51, '', 2100.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-07 02:43:55', '2020-09-07 02:43:55'),
(13, 13, 12, 49, 'DodgerBlue', 1650.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-07 14:36:02', '2020-09-07 14:36:02'),
(14, 14, 12, 50, 'DarkGreen', 1450.00, 0.00, 0.00, 1, 'paid', 'on_delivery', 'home_delivery', NULL, NULL, '2020-09-07 18:21:21', '2020-09-08 22:38:55'),
(15, 15, 12, 58, '', 450.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-09-11 01:20:39', '2020-09-12 14:55:40'),
(16, 16, 12, 51, '', 2100.00, 0.00, 120.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-09-13 16:47:13', '2020-09-15 14:28:40'),
(17, 17, 12, 51, '', 2100.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-15 15:35:14', '2020-09-15 15:35:14'),
(18, 18, 12, 53, '4GB', 22950.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-24 21:09:39', '2020-09-24 21:09:39'),
(19, 19, 12, 20, '', 400.00, 0.00, 40.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-25 22:25:53', '2020-09-25 22:25:53'),
(20, 19, 12, 82, '', 760.00, 0.00, 40.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-25 22:25:53', '2020-09-25 22:25:53'),
(21, 19, 12, 80, '', 1200.00, 0.00, 40.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-09-25 22:25:53', '2020-09-25 22:25:53'),
(22, 20, 12, 51, '', 2100.00, 0.00, 120.00, 1, 'unpaid', 'on_review', 'home_delivery', NULL, NULL, '2020-09-26 13:56:56', '2020-09-26 13:57:39'),
(23, 21, 12, 68, '6/64', 17400.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-10-15 10:38:27', '2020-10-15 10:38:27'),
(24, 22, 12, 47, 'DarkSeaGreen', 1750.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-11-07 14:43:43', '2020-11-07 14:43:43'),
(27, 25, 12, 16, '', 920.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-11-23 01:14:32', '2020-11-23 01:14:32'),
(32, 30, 12, 76, '', 1590.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:23:41', '2020-12-10 22:23:41'),
(33, 33, 12, 90, 'Black-S', 600.00, 0.00, 60.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:25:37', '2020-12-10 22:25:37'),
(34, 33, 12, 89, '', 1250.00, 0.00, 60.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:25:37', '2020-12-10 22:25:37'),
(35, 34, 12, 25, '', 78720.00, 0.00, 120.00, 96, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:27:17', '2020-12-10 22:27:17'),
(36, 35, 12, 90, 'Black-S', 5400.00, 0.00, 10.00, 9, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(37, 35, 12, 90, 'Black-M', 6000.00, 0.00, 10.00, 10, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(38, 35, 12, 89, '', 999999.99, 0.00, 10.00, 999, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(39, 35, 12, 88, '', 999999.99, 0.00, 10.00, 1000, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(40, 35, 12, 87, '', 999999.99, 0.00, 10.00, 1000, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(41, 35, 12, 86, '', 115000.00, 0.00, 10.00, 100, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(42, 35, 12, 85, '28', 730.00, 0.00, 10.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(43, 35, 12, 84, '', 45000.00, 0.00, 10.00, 36, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(44, 35, 12, 28, '', 510.00, 0.00, 10.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(45, 35, 12, 24, '', 57600.00, 0.00, 10.00, 120, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(46, 35, 12, 26, '', 62400.00, 0.00, 10.00, 96, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(47, 35, 12, 53, '4GB', 137700.00, 0.00, 10.00, 6, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-10 22:32:27', '2020-12-10 22:32:27'),
(48, 36, 12, 90, 'Black-S', 600.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-28 06:24:00', '2020-12-28 06:24:00'),
(49, 37, 12, 90, 'Black-S', 600.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-28 06:27:56', '2020-12-28 06:27:56'),
(50, 38, 12, 90, 'Black-S', 600.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-28 08:11:48', '2020-12-28 08:11:48'),
(51, 39, 12, 90, 'Black-S', 600.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2020-12-28 08:19:08', '2020-12-28 08:19:08'),
(52, 40, 12, 100, '', 30.00, 0.00, 120.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-26 01:59:28', '2021-02-26 01:59:28'),
(53, 41, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 13:59:03', '2021-02-27 13:59:03'),
(54, 42, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:02:01', '2021-02-27 14:02:01'),
(55, 43, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:04:20', '2021-02-27 14:04:20'),
(56, 44, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:05:55', '2021-02-27 14:05:55'),
(57, 45, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:10:28', '2021-02-27 14:10:28'),
(58, 46, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:15:12', '2021-02-27 14:15:12'),
(59, 47, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:16:59', '2021-02-27 14:16:59'),
(60, 48, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:18:25', '2021-02-27 14:18:25'),
(61, 49, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:20:56', '2021-02-27 14:20:56'),
(62, 50, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:24:05', '2021-02-27 14:24:05'),
(63, 51, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:25:54', '2021-02-27 14:25:54'),
(64, 52, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:26:26', '2021-02-27 14:26:26'),
(65, 53, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:26:57', '2021-02-27 14:26:57'),
(66, 54, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:29:55', '2021-02-27 14:29:55'),
(67, 55, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:31:57', '2021-02-27 14:31:57'),
(68, 56, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 14:35:07', '2021-02-27 14:35:07'),
(69, 57, 12, 15, '', 920.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 15:55:43', '2021-02-27 15:55:43'),
(70, 58, 12, 20, '', 400.00, 0.00, 20.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-02-27 16:03:56', '2021-02-27 16:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `otp_configurations`
--

CREATE TABLE `otp_configurations` (
  `id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `otp_configurations`
--

INSERT INTO `otp_configurations` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'nexmo', '0', '2020-03-22 09:19:07', '2020-10-18 11:46:12'),
(2, 'otp_for_order', '1', '2020-03-22 09:19:07', '2020-03-22 09:19:07'),
(3, 'otp_for_delivery_status', '1', '2020-03-22 09:19:37', '2020-03-22 09:19:37'),
(4, 'otp_for_paid_status', '0', '2020-03-22 09:19:37', '2020-03-22 09:19:37'),
(5, 'twillo', '0', '2020-03-22 09:54:03', '2020-03-22 03:54:20'),
(6, 'ssl_wireless', '0', '2020-03-22 09:54:03', '2020-03-22 03:54:20'),
(7, 'fast2sms', '0', '2020-03-22 09:54:03', '2020-03-22 03:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'about-us', 'Richbazar.com.bd is the ultimate online shopping destination for Bangladesh offering completely hassle-free shopping experience through secure and trusted gateways. We offer you trendy and reliable shopping with all your favorite brands and more. Now shopping is easier, faster and always joyous. We help you make the right choice here.Richbazar has been launched in February 2019. It is an initiative of the leading IT firm Webdevelopmentsbd. PriyoShop showcases products from all categories such as clothing, footwear, jewellery, accessories, electronics, appliance, books, restaurants, health &amp; beauty, and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products are exclusively selected for you. We, at Richbazar, have all that you need under one umbrella.In tune with the vision Digital Bangladesh,&nbsp;Richbazar opens the doorway for everybody to shop over the Internet. We constantly update with lot of new products, services and special offers. We provide on-time delivery of products and quick resolution of any concerns.We provide our customers with memorable online shopping experience. Our dedicated&nbsp;Richbazar quality assurance team works round the clock to personally make sure the right packages reach on time. You can choose whatever you like. We deliver it right at your address across Bangladesh. Our services are at your doorsteps all the time. Get the best products with the best online shopping experience every time. You will enjoy online shopping here!', 'Richbazar trusted online shopping in Bangladesh', 'Richbazar trusted online shopping in Bangladesh, anyone can  sell his/her products on our website.', 'online shopping,best online shopping,', NULL, '2020-11-07 14:29:44', '2020-11-07 14:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `seller_id`, `amount`, `payment_details`, `payment_method`, `txn_code`, `created_at`, `updated_at`) VALUES
(2, 1, 78.40, NULL, 'cash', NULL, '2020-09-15 15:45:36', '2020-09-15 15:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(11) DEFAULT NULL,
  `cash_on_pickup_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2021-02-27 19:42:01', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2021-02-27 19:42:01', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2021-02-27 19:42:01', '2019-02-04 17:50:15'),
(5, 'terms', NULL, '2021-02-27 19:42:01', '2019-10-28 18:00:00'),
(6, 'privacy_policy', NULL, '2021-02-27 19:42:01', '2019-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(15,2) NOT NULL,
  `purchase_price` double(15,2) NOT NULL,
  `variant_product` int(11) NOT NULL DEFAULT 0,
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `featured` int(11) NOT NULL DEFAULT 0,
  `topbrand` int(11) NOT NULL DEFAULT 0,
  `weeklysell` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT 0.00,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `refundable` int(11) NOT NULL DEFAULT 0,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `topbrand`, `weeklysell`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(15, 'Sunsilk  Co-creations Damage Restore', 'admin', 12, 7, 34, 150, 35, '[\"uploads\\/products\\/photos\\/s2B2SysHEsafE7IB9f5hUsLuDuHgivcKtXpw1X9t.jpeg\"]', 'uploads/products/thumbnail/rv83IRNGnyRuGnXnBTKhH1L4vEkBwS3FONkJzgbF.jpeg', 'uploads/products/featured/XdlEYhAcAXbfjQXn3ay51asjlVEDpdwB66Bvfvr7.jpeg', 'uploads/products/flash_deal/AdCaf0CDak5AEH8TzhwHOOqMcOd9Avw3QQyAE8Uq.jpeg', 'youtube', NULL, '', NULL, 1020.00, 920.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 37, '650ml', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 18, NULL, NULL, 'uploads/products/meta/BxS2fmYYyZNieNvylmb8PEziTQfORrgkwVnwphrw.jpeg', NULL, 'Sunsilk--Co-creations-Damage-Restore-fDJXv', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-11 22:43:40', '2021-02-27 15:55:43'),
(16, 'sunsillk co-creations black shine', 'admin', 12, 7, 34, 150, 35, '[\"uploads\\/products\\/photos\\/Bd1eelz5yE5je1YeAGmqia2vijg1lzxGqc3GgkD2.jpeg\"]', 'uploads/products/thumbnail/f5gX2xSPpv1HpJlkrD67Y9ZJGnxNkDrnFvyUCLlr.jpeg', 'uploads/products/featured/SUaGqkX1UAjhzbIfaXWzOzIt1oh4tngAGdRO6Y39.jpeg', 'uploads/products/flash_deal/wn4ImA5zFnbdeS6okqTeFxQOCM3dJyoZUeVLsPmv.jpeg', 'youtube', NULL, '', NULL, 1020.00, 920.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 49, '650ml', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/AbRatt1CHxyfJ312qJIpPtH2QzOcIT8QLXAKgSVu.jpeg', NULL, 'sunsillk-co-creations-black-shine-STnqq', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-11 22:56:53', '2020-11-23 01:14:32'),
(17, 'Tresemme', 'admin', 12, 7, 34, 150, 18, '[\"uploads\\/products\\/photos\\/fstKehXcqM3l0XCh5hzSPc93yISnquZy0o2oRNvA.png\"]', 'uploads/products/thumbnail/cT7fd09wZrpQClWefQ3Ui5WaQT6r8YzxXbVq5GWF.png', 'uploads/products/featured/ncAQD7CqDtShLRzAv7kPb06UQUQI3UnQqfkTsDyG.png', 'uploads/products/flash_deal/ieqTfsKnsrwXPcgDredv7W6RDnDI7UBgiktEyqyB.png', 'youtube', NULL, '', NULL, 930.00, 870.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 0, '739ml', 60.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/aHvSz5Xyn0Q4rHYous8XFOtPTeqtfsSQ330tE6eN.png', NULL, 'Tresemme-H3KPp', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-11 23:09:32', '2020-08-12 00:02:04'),
(18, 'vatika hair fall control shampoo 400ml', 'admin', 12, 7, 34, 150, 36, '[\"uploads\\/products\\/photos\\/ay5WVUI8Qs25scOolCPldLsRIkzWQ7bM23YRk6D3.png\"]', 'uploads/products/thumbnail/TDIgJBClEqdBaObWjAq9RL6d1pj8jJ0S5uwRvbsp.png', 'uploads/products/featured/U9Wlh1LAnFROGnkAChR6yeioqYjKS7MIAGdCM7zQ.png', 'uploads/products/flash_deal/lUMoTgkbkJ9CYSxnJg33XxcGbVL6CO5IRVFhAeVc.png', 'youtube', NULL, '', NULL, 640.00, 560.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 100, '400ml', 80.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/iVcqFY6qy3N56MG2RWsxO2bkm5mlH6X88WQBOMYY.png', NULL, 'vatika-hair-fall-control-shampoo-400ml-mt3OL', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-11 23:13:50', '2020-08-11 23:13:50'),
(19, 'Dove nutritive solutions volume nourishment shampoo', 'admin', 12, 7, 34, 150, 17, '[\"uploads\\/products\\/photos\\/dcnQFTTrcJl0LTV4flhy5GoyVDp6vQwrS15OvjrP.jpeg\"]', 'uploads/products/thumbnail/4WWpmbGvIy8IxYhxAlA62VKUIDS1iqRqLweIed58.jpeg', 'uploads/products/featured/5lHjYtyzCxJFQxyZw2reKQKA6XlxW3vBLcwnqCjv.jpeg', 'uploads/products/flash_deal/l5YXv9jHTMGtesJxiLlGomlTugRf5E2ifVXlHN6R.jpeg', 'youtube', NULL, '', NULL, 860.00, 750.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 94, '480', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 2, NULL, NULL, 'uploads/products/meta/TloO1Z1UlY5fdblkDK9JRUzP884cB3RH8rdy0dMz.jpeg', NULL, 'Dove-nutritive-solutions-volume-nourishment-shampoo-FoZoc', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-11 23:41:39', '2020-11-07 14:48:02'),
(20, 'xhc_charcoal_cleansing_shampoo_-', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/RJAWM0dAFghmlwIN2Vfl4lSqLBsqOQfqAUCc7CcI.jpeg\"]', 'uploads/products/thumbnail/xMKZfoVN63nsvbm9un1fdwMzvXo7PqMQo1WpiRHO.jpeg', 'uploads/products/featured/5TrN0vQjVOZO98ggbkDxPuxFpBJIqZDquB75W08q.jpeg', 'uploads/products/flash_deal/NqEmPeE9HSo20pky9hbzkQbdlqkGB4r9a9WTf5kW.jpeg', 'youtube', NULL, '', NULL, 610.00, 400.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 94, '400ml', 210.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 2, NULL, NULL, 'uploads/products/meta/Zv3KEXyFcObHOMlglrK3VEb73N5NqIr6BIyZDDMC.jpeg', NULL, 'xhccharcoalcleansingshampoo--X69Se', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:01:39', '2021-02-27 16:03:56'),
(21, 'PANTENE PRO-V Damage care Conditioner', 'admin', 12, 7, 34, 150, 19, '[\"uploads\\/products\\/photos\\/eNefrKpXYXz68lMRilJeqirUgUvXoj761mm9IKyZ.jpeg\"]', 'uploads/products/thumbnail/53w8xT1wjUktXP7ZANoAYyid87eIgx3pSNSnqLeM.jpeg', 'uploads/products/featured/z9SLcf2g2QygXogKMnJuK0m7t3saEharUTPpgUD6.jpeg', 'uploads/products/flash_deal/PT1IrZfSjeSfkjg2AFnlymfELUvuOCYy3agRYWQ1.jpeg', 'youtube', NULL, '', NULL, 740.00, 650.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 0, 0, '360ml', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/DvpCz3e04Up57h8aLoGA2M2aS1pO2kWXVByZG7eR.jpeg', NULL, 'PANTENE-PRO-V-Damage-care-Conditioner-1JDdp', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:14:26', '2020-08-12 00:14:26'),
(22, 'Banana shampo', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/Cw6CWfb0gmQBOE1CSYdTFCwaQLZvBffbBSi1yyBL.jpeg\"]', 'uploads/products/thumbnail/WQwXjGmXqnGOHbR4q6XNgGwnsKwWiBXA1lEne28N.jpeg', 'uploads/products/featured/INalkZsAuEwDJoDmUWQeT4WjxAROWyVpCDSciQFU.jpeg', 'uploads/products/flash_deal/3tzy8fyfkNxpP9lexhi7PGRWx9shhcBU7PJSInCU.jpeg', 'youtube', NULL, '', NULL, 640.00, 510.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 96, '400ml', 130.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/mC4WWpo65RL23H2cESTnln8Yfy4FsWqp7AnMmOum.jpeg', NULL, 'Banana-shampo-iQNkU', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:28:07', '2020-08-12 00:28:07'),
(23, 'Biotin & Collagen Shampoo', 'admin', 12, 7, 34, 150, 28, '[\"uploads\\/products\\/photos\\/zarRHcdA1pgtkFL5kDDiYZfMPdAO4gAYofaMs4j5.jpeg\"]', 'uploads/products/thumbnail/POO1SaP1S3u6VP3FbJ29k02yryjIorDfOy3gMq0J.jpeg', 'uploads/products/featured/thDxXsPtWt82Bhdx6hXzJW07wgaaZb5RDZMgi68l.jpeg', 'uploads/products/flash_deal/F4iLDelp8eWIz9INelmQXXd2Alt3tSjPUgB1w6Rz.jpeg', 'youtube', NULL, '', NULL, 560.00, 480.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 36, '400ml', 80.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/2wmQRDf4QuPHxyrZ3o5t0jIjoEqqmMaBIUxNBI1A.jpeg', NULL, 'Biotin--Collagen-Shampoo-OFS9M', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:33:01', '2020-08-12 00:33:01'),
(24, 'Sunsilk  Co-creations manageable', 'admin', 12, 7, 34, 150, 35, '[\"uploads\\/products\\/photos\\/UYnpi1l2QsPTRTCY6YpNWFN4wH4Qms6lfAtMMhu4.png\"]', 'uploads/products/thumbnail/0afQ6Rm6M6gEX6SOpyUIWrygqqChsTHTPrkqovqm.png', 'uploads/products/featured/Yi4bYuo3l1uvWg5QHIYjiKDYyR3S2vBxfIAV8Wq1.png', 'uploads/products/flash_deal/2wiBvRtX5ylZAqfOKbGpPcKZJwb4phIDZpiMj7q3.png', 'youtube', NULL, '', NULL, 570.00, 480.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 0, '320ml', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/ghEtt1CTpDsR8Kr0qV85gV7CzXmgDBeVhpexWHnD.png', NULL, 'Sunsilk--Co-creations-manageable-HqCCK', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:44:02', '2020-12-10 22:32:27'),
(25, 'Dove dally shine shampoo', 'admin', 12, 7, 34, 150, 17, '[\"uploads\\/products\\/photos\\/GH0xb9rcFf3yh2vNeiZJuqOXawpMJsHmSJObxfBn.jpeg\"]', 'uploads/products/thumbnail/PYDWKxdiNqnQlRfXZqLyzZsOSq9JqNat6wEMWfdw.jpeg', 'uploads/products/featured/Fbx0zRyL2SeZlIVsDXayaasqwOSWcvlWVgvbWNN6.jpeg', 'uploads/products/flash_deal/vU6EWPgVFEzRgP1994zUra5wo44lVoZ8RT6mAHqX.jpeg', 'youtube', NULL, '', NULL, 910.00, 820.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 0, '680', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/gd5c7LHlVJDIhVUQSD0TTBfdMUmBb0vjaDUMtkte.jpeg', NULL, 'Dove-dally-shine-shampoo-IrWW6', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 00:47:35', '2020-12-10 22:27:17'),
(26, 'pantene shampoo', 'admin', 12, 7, 34, 150, 19, '[\"uploads\\/products\\/photos\\/1dcN6rlqHHDF9x4GWd4vXTeWvA74ZE8zqnIxtLoO.jpeg\"]', 'uploads/products/thumbnail/2f5tb4oMWBsjRSPZO8H41ajBA5YQuXNFDyNIw8cD.jpeg', 'uploads/products/featured/479T5OYZzXfDs4T6KheaicwlO9YKOz5FRSEoTGd1.jpeg', 'uploads/products/flash_deal/MZGWeM5Ac8LeoACNZvEkP0tr9eImom3CdFlFzvur.jpeg', 'youtube', NULL, '', NULL, 740.00, 650.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 0, '375', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/xBKLlHsfb1zlbvWPpepoXvyX5Y1VmbrhqXgLEvUE.jpeg', NULL, 'pantene-shampoo-c2uls', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 01:08:01', '2020-12-10 22:32:27'),
(27, 'XHC-Xpel-Hair-Care-Strawberry-shampoo-800', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/WpRnenIj8m7x0cmhPWkDw2reICO9uGIEwG3lLAaj.jpeg\"]', 'uploads/products/thumbnail/hvwJALwsXiuzRg4VnT0FcyLlG7Kf67crvJCnjBQK.jpeg', 'uploads/products/featured/RH6UiqWYkEXJiWcHz4MpWhqDnsXir08kDL5HFttV.jpeg', 'uploads/products/flash_deal/rtOPuUIOtjCEycdZUhImiZ5rx8b0ZLz3u6iFMjgg.jpeg', 'youtube', NULL, '', NULL, 640.00, 510.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 36, '400ml', 130.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/ZTwCT6sWXOybdGC7prFce3Fr9xpDccBWFBoHGzmC.jpeg', NULL, 'XHC-Xpel-Hair-Care-Strawberry-shampoo-800-LwkxO', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 01:13:59', '2020-08-12 01:13:59'),
(28, 'xhc_green_tea_shampoo', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/gdd2IDbUUfY0rSwyvvVmtLe7g88BEXK49Oq2vc9G.jpeg\"]', 'uploads/products/thumbnail/F3Y6lGr1ek69ZC1aRL27WE1zuHmRHvzvpxjiqrJd.jpeg', 'uploads/products/featured/UKyS4QmgosjbHj8ouXnVd3iPEFUBTmCP8u8s2sbn.jpeg', 'uploads/products/flash_deal/Rcur2Fqfwj94kojHJOxmERrDe0jfcXUd8bcoWCfJ.jpeg', 'youtube', NULL, '', NULL, 640.00, 510.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 1, 35, '400ml', 130.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/5wm7HZJn7PLiope3sCRnBkVk9x5u3Hf1hTyOEwJf.jpeg', NULL, 'xhcgreenteashampoo-DgQZ0', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 01:18:06', '2020-12-10 22:32:27'),
(29, 'Chawba', 'admin', 12, 7, 34, 151, 75, '[\"uploads\\/products\\/photos\\/GhzwhWnXBn3dQkEZCiauBDPevpe4Lb9pRLHRwIgh.jpeg\"]', 'uploads/products/thumbnail/lLmaFpKSHxknCdQvjsqrX4lQRqgvhw0pD9DDATBB.jpeg', 'uploads/products/featured/KwcMFrINMI9ekuY2Td6oFxQLZAJKyarPBGy4kbUq.jpeg', 'uploads/products/flash_deal/F2Hvrc1NBzAkYQFpu39eHFGxVApZRHwKoXFYhSNM.jpeg', 'youtube', NULL, '', NULL, 590.00, 550.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 36, '1000g', 40.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/E7rrD1IQz63isVINFCQXWxY2ZVHkWeNfM9Mc1Wbv.jpeg', NULL, 'Chawba-4wLD7', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 01:37:06', '2020-08-12 01:37:06'),
(30, 'Neutrogena triple moisture Deep Recovery HAIR MASK', 'admin', 12, 7, 34, 151, 7, '[\"uploads\\/products\\/photos\\/DUqSpvp9qUukGCxI11RzWUHQ72FUo1tPbtB4hWAS.jpeg\"]', 'uploads/products/thumbnail/dTnJwsH7BnM1HPtTuWRWJFHz8CAoT23hX2FjvrZM.jpeg', 'uploads/products/featured/ImIXVoXY61gqoEPvY4gA3fn7BmKsym1Iu743eVbF.jpeg', 'uploads/products/flash_deal/Uzk4i7CuUjVgx9VVUoTOKsypE3H47rjOAhHKjdLm.jpeg', 'youtube', NULL, '', NULL, 1740.00, 1650.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '170g', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/XfI15i6hmHnYjNz1u2JCfwhmZR6p6qu1WjQEZJOb.jpeg', NULL, 'Neutrogena-triple-moisture-Deep-Recovery-HAIR-MASK-4Nw9h', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 02:08:22', '2020-08-12 02:08:22'),
(31, 'safi pure olive oil', 'admin', 12, 7, 34, 151, 8, '[\"uploads\\/products\\/photos\\/HtuFyYy3FTqBbcrlUepVFeCF3piYStYb4wqvVCY5.jpeg\"]', 'uploads/products/thumbnail/Sp7dSjheESf1xDJZmyXevDaTH0uG5jKYd06gng1O.jpeg', 'uploads/products/featured/YcGFrxEPeRlRaKRRA7Uo3F4MiD59tTkSEqXBUhSy.jpeg', 'uploads/products/flash_deal/6yH3LtkDRXC4OBvjKdOwmdVdPBiUeVYNx47DGHm1.jpeg', 'youtube', NULL, '', NULL, 720.00, 650.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 96, '150ml', 70.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/wAPiOtSvg980UihKVjdAkxv28MyrYc2EGDeGC2dl.jpeg', NULL, 'safi-pure-olive-oil-zJTdg', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 02:22:07', '2020-08-12 02:22:07'),
(32, 'xhc_tea_tree_moisturising_shampoo', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/MvRTNswFn2GuBV3aBd1rV3qhmtblzhaHj3qvoIN1.jpeg\"]', 'uploads/products/thumbnail/mbS41oh6xIpScZtm5R7FCof7JjjihGUaxXcVFi0s.jpeg', 'uploads/products/featured/2PPLZWd21hlzxbzKmFrNBWlWMvXf1c1gmWAgEAmB.jpeg', 'uploads/products/flash_deal/CrGvpt03RdDuG7CSP4TJ2Jt1LYfzMssvvHUTAfaZ.jpeg', 'youtube', NULL, '', NULL, 540.00, 480.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 36, '400ml', 60.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/sju8CmyHToZ1sJKKAcxB5jtI5zgdvJbYqZKW5gPY.jpeg', NULL, 'xhcteatreemoisturisingshampoo-FOPU6', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 02:28:59', '2020-08-12 02:28:59'),
(33, 'xpel-argan-oil-shampoo-with-moroccan-argan-oil-extract', 'admin', 12, 7, 34, 150, 27, '[\"uploads\\/products\\/photos\\/vryviEu6HVTpM4KTrogmh1UnOVg7ZRZNxMEiXwdW.jpeg\"]', 'uploads/products/thumbnail/yoMbqXBlgGnDgRvqGyk15jamSxUiFVYbH2Zt1rdu.jpeg', 'uploads/products/featured/YZHRmG7s5tWy3F3GA3cIQalZttlaUGfoF3qFptbk.jpeg', 'uploads/products/flash_deal/9pHMGpXzY3U3iSOe3oADS6HFMZzzrXMsuqv0doqD.jpeg', 'youtube', NULL, '', NULL, 420.00, 385.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '300ML', 35.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/36xonnUwAonU0JSiTt7jLA2fQqTjMEOEQQT54NYZ.jpeg', NULL, 'xpel-argan-oil-shampoo-with-moroccan-argan-oil-extract-KVFv3', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 02:37:58', '2020-08-12 02:37:58'),
(34, 'Yc Whitening Facial Wash Clay Extract', 'admin', 12, 7, 38, 176, 14, '[\"uploads\\/products\\/photos\\/vpqN546sFWr97vW7w6QV3Yhwk5u0IaCieoPjsaSR.jpeg\"]', 'uploads/products/thumbnail/vbcZli0hFPopUj5ceWC2PN1cuGGBjusJixO3hyOO.jpeg', 'uploads/products/featured/cSiEIWMeLLC4qi2uawCAk0H68CKBq2DFu66GuT4G.jpeg', 'uploads/products/flash_deal/bFo9YuCGctSKU3zRGy5rhsQpJbjoaSf0VvZDlhq5.jpeg', 'youtube', NULL, '', NULL, 230.00, 195.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 36, '100ml', 35.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/4ON7f0PiPJxEG9xtZ93JgMG6YRdJrzMdHXYpIhj9.jpeg', NULL, 'Yc-Whitening-Facial-Wash-Clay-Extract-7rwhR', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 03:02:29', '2020-08-12 03:02:29'),
(35, 'WFC-3F5-GDNE-XX (INVERTER)', 'admin', 12, 6, 23, NULL, 59, '[\"uploads\\/products\\/photos\\/Bw2sW79HL5fExbzCRZcOUoWcaWLIWAllEL5NJzy5.jpeg\"]', 'uploads/products/thumbnail/TgX7cYBytwnn4QWMZtqq2dNvjf0rvCeKGQDwF0mt.jpeg', 'uploads/products/featured/nmQLEc5hG9NEC2Y8XKFyj2Xp5MxVMtodtsjiNCQl.jpeg', 'uploads/products/flash_deal/Cg7Enbc1HK5G3k7IMOVaum9VYUSgnnlw0vKdNXqT.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3F5-GDNE-XX (Inverter)&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass door&nbsp; &nbsp;- Gross Volume:&nbsp;380&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 365 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a&nbsp; &nbsp;- Using Latest&nbsp;Intelligent INVERTER&nbsp;technology&nbsp; &nbsp;- No need to use&nbsp;Voltage Stabilizer', 40390.00, 39300.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 93, '365ltr', 1090.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/D4O5apWVnXEev0ZenFYehWJ0hgg8tucACy4W1D8B.jpeg', NULL, 'WFC-3F5-GDNE-XX-INVERTER-1DETn', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 14:30:21', '2020-08-12 14:32:12'),
(36, 'WFC-3F5-GDXX-XX (Inverter)', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/lY0DGGQ9X1koj4TPQYaC6mVivntaFjJPH61OSJir.jpeg\"]', 'uploads/products/thumbnail/hpkLCeHYhYrDbF1LVy9e1BpTMh22hprhTPfjQjNZ.jpeg', 'uploads/products/featured/bSY8zHMsZ20gX2Iv8srbvvfj4PpVt3paSwqOudeH.jpeg', 'uploads/products/flash_deal/KJRRNeN00pDHDgELZ99bZHN9ijKOmNIsUeOfJN2q.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3F5-GDXX-XX (Inverter)&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass door&nbsp; &nbsp;- Gross Volume:&nbsp;380&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 365 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a&nbsp; &nbsp;- Using Latest&nbsp;Intelligent INVERTER&nbsp;technology&nbsp; &nbsp;- No need to use&nbsp;Voltage Stabilizer', 39300.00, 38100.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '365ltr', 1200.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/DMTVOLD7p3jZSuTcrvZGOL6H8ntV0AWu36z2zOhU.jpeg', NULL, 'WFC-3F5-GDXX-XX-Inverter-IoaZs', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 14:39:20', '2020-08-12 14:39:20'),
(37, 'WFC-3F5-NEXX-XX (INVERTER)', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/MO1zRhILYwxvHBUss95beBSsf0EG5oBRXwKq1YhC.jpeg\"]', 'uploads/products/thumbnail/M3gPohl6Bw7uoKR5GHTB5nKR0ADrgwKAxlyxbSer.jpeg', 'uploads/products/featured/8MBqn72nUeJjTOe9wBhSNGXECwpOABiQJU04z00K.jpeg', 'uploads/products/flash_deal/QTD6PcBq93y6T6DOh5wvNUWgE0OrVCA1mvPFKAiU.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3F5-NEXX-XX (Inverter)&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Gross Volume:&nbsp;380&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 365 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a&nbsp; &nbsp;- Using Latest&nbsp;Intelligent INVERTER&nbsp;technology&nbsp; &nbsp;- No need to use&nbsp;Voltage Stabilizer', 35300.00, 34100.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 47, '365ltr', 1200.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/Oo9LQTXUceqE2Ym79G18rHQzbEX4T1noO56Vb0bX.jpeg', NULL, 'WFC-3F5-NEXX-XX-INVERTER-AhUOr', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 14:57:28', '2020-08-12 14:57:28'),
(38, 'WFC-3F5-GDEL-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/ukDwZnxAzN8CRlAIo5C3wmQy7loyfToQjcg9rRek.jpeg\"]', 'uploads/products/thumbnail/8F4pY7050yh3O8LQP7YLcTBqZ3BeLHPCgGxRoHct.jpeg', 'uploads/products/featured/adcT3olnwg3VGvMIwe16zqKTcQwlRHWYezhQ2HD8.jpeg', 'uploads/products/flash_deal/hrje4sFYzA5QNP9n3wdVeRUjIJXJmjQKL4LBps6C.jpeg', 'youtube', NULL, '', 'WFC-3F5-GDEL-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass door&nbsp; &nbsp;- Gross Volume:&nbsp;380&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 365 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a', 39900.00, 38600.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 96, '365ltr', 1300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/g53DwxNqJRVmfsL5DkKHtZwnC9kSRYm0ic1BVYp7.jpeg', NULL, 'WFC-3F5-GDEL-XX-oaNhC', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 15:16:49', '2020-08-12 15:16:49'),
(39, 'WFC-3F5-GDXX-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/9xRwdUOFICxNtz7BUfXzkcbnDe9HAe72JGWpWvBq.jpeg\"]', 'uploads/products/thumbnail/rYZjzb7ZkhtrKUJmwoLvLvJfzOC5IHz7J1I30n3F.jpeg', 'uploads/products/featured/qugFizCMNCOXexSakroVUw99deVhGTlCdPsjj0hD.jpeg', 'uploads/products/flash_deal/OJsqVFg0W41qdgVhOg35XQc1E6ItweIMtbME7LVG.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3F5-GDXX-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass door&nbsp; &nbsp;- Gross Volume:&nbsp;380&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 365 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a', 37700.00, 36500.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 46, '365ltr', 1200.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/4Izfhi9XNwNBkbVrXGhsGAxXpkCcH3Du1S0b5pRe.jpeg', NULL, 'WFC-3F5-GDXX-XX-ygKaC', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 15:30:03', '2020-08-12 15:30:03'),
(40, 'WFE-3E8-GDEN-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/8eoeM85NIwp2YymkyXimy5D1KSOIdY6pH4Yga2K9.jpeg\"]', 'uploads/products/thumbnail/keuQtea4lZkgXckNuB9t862fQQjpnfBcOwe2HAjN.jpeg', 'uploads/products/featured/aK1saQvaysxMFn1RZA2xdrtqo3YGOy0iGR7nxe7Z.jpeg', 'uploads/products/flash_deal/giBDPgZn5VhA2biJvVy8kB3VJrv5rDMjTGxMVvWF.jpeg', 'youtube', NULL, '', '&nbsp;WFE-3E8-GDEN-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Gross Volume:&nbsp;358&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 345 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a', 37500.00, 36200.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '345ltr', 1300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/tYZaytNyOP9bHIDmbGuAbu4j2J3YT1OqznpxzHLC.jpeg', NULL, 'WFE-3E8-GDEN-XX-cpljq', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 16:04:40', '2020-08-12 16:04:40'),
(41, 'WFC-3D8-GDEL-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/0YXSpYxMiIm8K79bMkpv2RS6YbFnThOXIZmZWgVK.jpeg\"]', 'uploads/products/thumbnail/k6HzmW2nlr9ACCTf1RpRqCfV9RqFk9zgjvZDej8x.jpeg', 'uploads/products/featured/QBdm2PnhHdWon7oISzoiFnLsr49BPQHzkmKRlKoG.jpeg', 'uploads/products/flash_deal/FTJNH9Z5sjoXGKAsp9IU2yJkJ6WUDjsqmaEO3iVD.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3D8-GDEL-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass Door&nbsp; &nbsp;- Gross Volume: 348&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 333 Ltr&nbsp; &nbsp;- Special Technology:&nbsp;Nano Health care&nbsp; &nbsp;- Refrigerant:&nbsp;R600a', 36500.00, 35300.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '333ltr', 1200.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/ySMDOlQGYDUM4ozgk1bmPzzYJNPu3VCIeprlBpQx.jpeg', NULL, 'WFC-3D8-GDEL-XX-hrZ5Q', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 18:43:42', '2020-08-12 18:43:42'),
(42, 'WFC-3D8-GDNE-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/AjXiS0L69myxfG5lhFNnqY9xrk59sySARGlktzMw.jpeg\"]', 'uploads/products/thumbnail/RfgYA1sbY4C3TY8RYQej2X5wHAw1qkXGee0g2VUN.jpeg', 'uploads/products/featured/3oT8pLbbQsA0hHoKelixcbzHbqEMWZ7ZWWttd2CB.jpeg', 'uploads/products/flash_deal/PabsZQgjzBeQmpuesfpyOxbf3RkmFqAVX8fNI83J.jpeg', 'youtube', NULL, '', '&nbsp;WFC-3D8-GDNE-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass Door&nbsp; &nbsp;- Gross Volume: 348&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 333 Ltr&nbsp; &nbsp;- Special Technology:&nbsp;Nano Health care&nbsp; &nbsp;- Refrigerant:&nbsp;R600a', 36200.00, 34900.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 48, '333 Ltr', 1300.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/yclLI0cGMHu7r0U1Xb8KCTX9L5LOHk0eH6QP44vc.jpeg', NULL, 'WFC-3D8-GDNE-XX-ZFCTH', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 20:45:38', '2020-08-12 20:45:38'),
(43, 'WFE-3C3-GDEN-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/0KM0P12PEtFJ3H7mJGUcZmdQMg5T9uXtkKgvYWS5.jpeg\"]', 'uploads/products/thumbnail/jKPi0VgmGp17ew4l5pVygzld4K68NSgYJfvLUs65.jpeg', 'uploads/products/featured/XZlJg3Xkq1t43A9UigwkePaEUpaFjS5d9IwwC4Bl.jpeg', 'uploads/products/flash_deal/MLwYqGsAH5gC3Xf4a1wV4QZtahP5oIFt0EuoomUT.jpeg', 'youtube', NULL, '', '&nbsp;WFE-3C3-GDEN-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass Door&nbsp; &nbsp;- Gross Volume: 333 Ltr&nbsp;&nbsp; - Net Volume: 293 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a&nbsp; &nbsp;- No need to use&nbsp;Voltage Stabilizer', 33900.00, 32900.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 36, '293 Ltr', 1200.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 0, NULL, NULL, 'uploads/products/meta/BjJxI5tswoMvPIrhJGjeAv5sKGwK85zAXvrOsTHg.jpeg', NULL, 'WFE-3C3-GDEN-XX-hbvkQ', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 20:55:56', '2020-08-12 20:55:56'),
(44, 'WFE-3C3-GDXX-XX', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/Lj5OIKFNHlcAATfKYzhMngGwbOwJ5mrqEtUE2XsD.jpeg\"]', 'uploads/products/thumbnail/1bRSKmCWMSwQBMx1sGMRod39ngtjGXZJRAz9DyGW.jpeg', 'uploads/products/featured/35VyFn0qaVDbCJ22EsAeh6oqEpQq04N3QKbyd0BP.jpeg', 'uploads/products/flash_deal/fLFYSfKPs4nIyiHGQRMy4QM3PknnqME0EknfBF2u.jpeg', 'youtube', NULL, '', 'WFE-3C3-GDXX-XX&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Door: Glass Door&nbsp; &nbsp;- Gross Volume: 333 Ltr&nbsp;&nbsp; - Net Volume: 293 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;R600a&nbsp; &nbsp;- No need to use&nbsp;Voltage Stabilizer', 33200.00, 32100.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 31, '293 Ltr', 1100.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 1, NULL, NULL, 'uploads/products/meta/Rl9HHKb73KCGe6lJoQr6924ISjwlxNpDyT8fezFj.jpeg', NULL, 'WFE-3C3-GDXX-XX-jBAiQ', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 21:03:19', '2020-08-14 14:31:36'),
(45, 'WFE-3B0-GDEL-DD', 'admin', 12, 6, 25, 101, 59, '[\"uploads\\/products\\/photos\\/Ws4qHBeHC7up97bLTiLRWzeOwtopP0KPcbcqpiMw.jpeg\"]', 'uploads/products/thumbnail/Lee1NtUfiGn1pCKu3gNvSXtrusdz1cnxgHJs9xtO.jpeg', 'uploads/products/featured/2mHWF5S00q6AjpgV8TNYZ9Bp51sweo3xYsufJuP4.jpeg', 'uploads/products/flash_deal/Tukoqlnpr6YhhLlnTTOLTkeT28ywzpP5W47mZCj1.jpeg', 'youtube', NULL, '', 'WFE-3B0-GDEL-DD&nbsp; &nbsp;-&nbsp;Type:&nbsp;Direct Cool&nbsp; &nbsp;- Gross Volume:&nbsp;341&nbsp;Ltr&nbsp;&nbsp; - Net Volume: 320 Ltr&nbsp; &nbsp;- Refrigerant:&nbsp;&nbsp;R600a', 34550.00, 33300.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, '320 Ltr', 1250.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/mR26ZDfvm2Dv3ZAxLVzkJxMLEsUKU8zY4hWTbCwR.jpeg', NULL, 'WFE-3B0-GDEL-DD-StK7F', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-12 21:14:35', '2020-08-15 15:43:10'),
(46, 'hater kaj 3pic', 'admin', 12, 11, 71, NULL, 73, '[\"uploads\\/products\\/photos\\/dowu0ZniZ4RNRFzCWTgWhVIIqozqdXZnoSlmGIF9.jpeg\"]', 'uploads/products/thumbnail/r8zsyLHuRqY0UzbTkH0NSMleQfJt0WQxdwWjY581.jpeg', 'uploads/products/featured/KkO2QAqSwROp1s6lOGLCDVJJL9K7ib6Ns1J8d2Ul.jpeg', 'uploads/products/flash_deal/4n2mkxzVTf2ofthvlpEfEsHGp9TAHnKaHXD0IkJN.jpeg', 'youtube', NULL, '', NULL, 1550.00, 1450.00, 1, '[]', '[]', '[\"#8B008B\"]', NULL, 0, 1, 1, 0, 0, 0, '200g', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/OdEWHxflsj93KPW5ZZGJ31n3j2QbNJUwGNKx59TB.jpeg', NULL, 'hater-kaj-3pic-2vnTk', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 22:23:26', '2020-08-15 15:42:36'),
(47, 'Hater kaj 3pic', 'admin', 12, 11, 71, 432, 73, '[\"uploads\\/products\\/photos\\/l5GC21WWLIwVPlEBFeyBIO8eOWgg1ZbYr1lJOHes.jpeg\"]', 'uploads/products/thumbnail/x8PzM6s1TuuL3sJkwEApsBhUcyY4akMfbIUyZcnH.jpeg', 'uploads/products/featured/9mcwk79dDWVC8LvLqBkPaarNlVCwUWdOPHkENx0G.jpeg', 'uploads/products/flash_deal/g6gefDzkOezt3JdToi8ysmN6Nfp19cB6WsWq2ukK.jpeg', 'youtube', NULL, '', NULL, 1950.00, 1750.00, 1, '[]', '[]', '[\"#8FBC8F\"]', NULL, 0, 1, 1, 0, 0, 10, '200g', 200.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 1, NULL, NULL, 'uploads/products/meta/LsgcNy6VJpOPDebpFbKnTlhxeeusCZWKW3qM2efW.jpeg', NULL, 'Hater-kaj-3pic-cOS10', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 22:34:17', '2020-11-07 14:43:43'),
(48, 'Hater kaj 3pic', 'admin', 12, 11, 71, 432, 73, '[\"uploads\\/products\\/photos\\/bIKkDknyorDIGJGdi0ebppyfjjeIvfsvoL619RAc.jpeg\"]', 'uploads/products/thumbnail/VfShLlmqlmwA4CTixTiUeT1BXpBLWFsqII7TSRpq.jpeg', 'uploads/products/featured/lwQ3OMWees7L2vwqWsUZjU9KkqSejDsFWqNa69lF.jpeg', 'uploads/products/flash_deal/WpbM8uEwbQ53hMkZJSSx1fVCw4QkH0SDPODmVok7.jpeg', 'youtube', NULL, '', NULL, 1750.00, 1650.00, 1, '[]', '[]', '[\"#F0F8FF\",\"#A52A2A\"]', NULL, 0, 1, 1, 0, 0, 0, '200g', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/4NOLZsbMg40tn0G1zVNlhTtKTRiIYYhLFiLhfyAO.jpeg', NULL, 'Hater-kaj-3pic-8yprV', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 22:50:27', '2020-08-15 15:41:12'),
(49, 'Hatar Kaj 3pic 3', 'admin', 12, 11, 71, 432, 73, '[\"uploads\\/products\\/photos\\/CjtTt77Eh0FlG1g8X4aFBeDn03f0V2o6vpAN8F59.jpeg\"]', 'uploads/products/thumbnail/JrO5zzLfFxsF5DTAjyjnJQfPTDEVkLIezyFmhS4f.jpeg', 'uploads/products/featured/oIt04CMWCmwaCiucKcF6wuoNsEcX6WfJLHyP0cAh.jpeg', 'uploads/products/flash_deal/7r8GUXdSHlPKBaPxZWyFR2eq2clASzNqGRgQbdEv.jpeg', 'youtube', NULL, '', 'hater kaj ar 3pic 100 % suty&nbsp;', 1750.00, 1650.00, 1, '[]', '[]', '[\"#1E90FF\"]', NULL, 0, 1, 1, 0, 0, 0, '200g', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 2, NULL, NULL, 'uploads/products/meta/xykjCAHPXFded1lU2vuR4SmrMiK064gGr4lio2Fy.jpeg', NULL, 'Hatar-Kaj-3pic-3-3Ayug', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 23:06:26', '2020-09-07 14:36:02'),
(50, 'Tater 3pic', 'admin', 12, 11, 71, 432, 73, '[\"uploads\\/products\\/photos\\/xM9ncm2hPvCD5Jrgttue9DR6XslG2BMI31r0shwL.jpeg\"]', 'uploads/products/thumbnail/umxUFj0o1hsObBA1khaQoSmqAHM9LH59xSWgsRXw.jpeg', 'uploads/products/featured/JFoVSiYIjpAIxHJh8i4HZrDcvzU42MEF6DMNoy7C.jpeg', 'uploads/products/flash_deal/bLRyUQIkI7fy965cp4J0JmOFibmZ7H3GV462KOFI.jpeg', 'youtube', NULL, '', 'Tater 3pic 100% suty', 1590.00, 1450.00, 1, '[]', '[]', '[\"#006400\"]', NULL, 0, 1, 1, 0, 0, 0, '200g', 140.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 3, NULL, NULL, 'uploads/products/meta/3nkhSzrRFW7kZHQvRsV2tHzbwDiljaEnHLTSEgWr.jpeg', NULL, 'Tater-3pic-CeoUi', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 23:10:34', '2020-09-07 18:21:21'),
(51, 'Samsung Guru Music 2 Phone', 'admin', 12, 4, 14, 18, 51, '[\"uploads\\/products\\/photos\\/Y9XQgG4aitFDbOIwYdJDo4QBsoJn0Z96WqhipFDX.jpeg\"]', 'uploads/products/thumbnail/3noZdilAqbVJJUTodLoBURtO2efgqyC5Lt1JuQjE.jpeg', 'uploads/products/featured/XD7Xwjr9b1WnIzgPCOE1SQAzCCk7kMesbdnw5qfz.jpeg', 'uploads/products/flash_deal/OntyCapxW7O8MMgfENrX76DrVRxHof1C1NgOI0xa.jpeg', 'youtube', NULL, '', 'Product details of Samsung Guru Music 2 Feature PhoneNO RETURN applicable if the seal is broken2\" TFT Display208MHz Single-Core ProcessorExternal Memory Support 16GBDual Sim800mAh BatteryManufactured in Bangladesh', 2150.00, 2100.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, '200g', 50.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 5, NULL, NULL, 'uploads/products/meta/bhj2DDLcq9IzQ2cuXvkmBYfp31jaOWLe0jadDuy3.jpeg', NULL, 'Samsung-Guru-Music-2-Phone-17JrG', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 23:28:09', '2020-09-26 13:56:56'),
(52, 'Samsung A20s', 'admin', 12, 4, 14, 18, 51, '[\"uploads\\/products\\/photos\\/dYtrtS51zniL7EqfzESqTRS2TVtmNK4DgpJSTtEO.jpeg\"]', 'uploads/products/thumbnail/BwqkxDnCxVE80OMH5zgzUdQQDc8Mx8RF9ZJJd7SH.jpeg', 'uploads/products/featured/vxGpNMstFAXqW1aojWHTPhHSQVnovHGue9j5wNlq.jpeg', 'uploads/products/flash_deal/hn1ZvBA52pqtmWcHw5YUO2kL7e8MdgGJpjtKuDKX.jpeg', 'youtube', NULL, '', 'NO RETURN applicable if the seal is brokenDimensions 163.3 x 77.5 x 8 mm (6.43 x 3.05 x 0.31 in)Weight 183 g (6.46 oz)SIM Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)Type IPS LCD capacitive touchscreen, 16M colorsSize 6.5 inches, 103.7 cm2(~81.9% screen-to-body ratio)Resolution 720 x 1560 pixels, 19.5:9 ratio (~264 ppi density)OS Android 9.0 (Pie); One UIChipset Qualcomm SDM450 Snapdragon 450 (14 nm)CPU Octa-core 1.8 GHz Cortex-A53GPU Adreno 506RAM 3 GBROM/Internal Storage 32GBCard slot microSD, Expandable up to 512GB (Dedicated Slot)Rear Camera 13 MP, f/1.8, 27mm (wide), PDAF; 8 MP, f/2.2, 13mm (ultrawide), 1/4.0″, 1.12µm; 5 MP, f/2.2, (wide), 1/5.0″, 1.12µm, depth sensorRear Camera Video 1080p@30fpsRear Camera Features LED flash, panorama, HDRFront Camera 8 MP, f/2.0Front Camera Video 1080p@30fpsAudio Loudspeaker, 3.5 mm jackSensors Fingerprint (rear-mounted), accelerometer, gyro, proximity, compassBattery Non-removable Li-Po 4000 mAh battery; Fast battery charging 15WAssembled in Bangladesh', 15999.00, 15950.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 0, 0, 0, '183g', 49.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/oS4stlVeY7dOqsKpATxzLGdqRMEamLCVrFX5v5lq.jpeg', NULL, 'Samsung-A20s-I04ED', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 23:39:15', '2020-08-15 15:39:03'),
(53, 'Xiaomi Mi A3', 'admin', 12, 4, 14, 19, 54, '[\"uploads\\/products\\/photos\\/Pwz1xdENq3nzawudXtbh7UE53A2n7kq24QNcs41a.jpeg\"]', 'uploads/products/thumbnail/tH1T6LJpJvfQDPPAI6N7cN3BGC59CK5PtxBpEEp9.jpeg', 'uploads/products/featured/QQVxWhNL9LygPBxUkQuwdDOkbZvByqjQuOFtD3yB.jpeg', 'uploads/products/flash_deal/8hqxyLWu17qJAI1xsnLmaPQBhJA5CVdcuzreLnDn.jpeg', 'youtube', NULL, '', 'Xiaomi Mi A3 - 6.088inches - 4GB RAM - 64GB ROM air Triple camera 48MP primary Camera, 32MP Air selfie camera&nbsp;NO RETURN applicable if the seal is brokenNetwork bands GSM: B2/3/5/8 WCDMA: B1/2/4/5/8 tad LTE: B38/40 FDD LTE: B1/2/3/4/5/7/8/20/28, Please check compatibility with your carrier prior to purchasing. Also please note, it does not work with CDMA carriers such as Verizon, Sprint etc.6. 088\" Amole dot drop display, unlock: - in-screen fingerprint Unlock, face unlock64GB ROM + 4GB RAM, Qualcomm Snapdragon 665 Octal-core Kayo 260 CPU, up to 2. 0 GHz, battery: - 4030mAhRear Camera: - air Triple camera 48MP primary Camera, 32MP air selfie cameraBox Contents- Phone, Wall Adapter (Foreign), Type C USBGlobal Product, manufactured in India. All authorized Xiaomi phones for Southeast Asia come from India', 22999.00, 22950.00, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"4GB\"]}]', '[]', NULL, 0, 1, 1, 0, 0, 0, '200g', 49.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 5, NULL, NULL, 'uploads/products/meta/rSt28hE4d7F3ujxw2m6FWhspNFMpO79kpNh3e8WT.jpeg', NULL, 'Xiaomi-Mi-A3-Hhr2b', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-13 23:59:03', '2020-12-10 22:32:27'),
(54, 'EAU DE PARFUM Species for women', 'admin', 12, 7, 33, 147, 34, NULL, 'uploads/products/thumbnail/onkMHqNSKDcQNMN3IsB2WndoJXkZ1l4DlF2IXdIz.jpeg', 'uploads/products/featured/I87StelmAEAoVJlJkfiMgvMbCw3hX6ernIN9tIMv.jpeg', 'uploads/products/flash_deal/5hbQEdcAYSjkmldKqCmWtVHJE9W7wT8ByZJSps9O.jpeg', 'youtube', NULL, '', 'EAU DE PERFUM&nbsp;Species for women&nbsp;100ml&nbsp;Made in France', 1550.00, 1450.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 0, 36, '100ml', 100.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/gOGQ4LOwkrFv8BvW6TqsVMeSLOyQW2WRfA1jkm24.jpeg', NULL, 'EAU-DE-PARFUM-Species-for-women-FA89K', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-22 16:07:21', '2020-08-22 16:07:21'),
(55, 'Palmolive', 'admin', 12, 7, 31, 134, 76, NULL, 'uploads/products/thumbnail/dcEa6zlTkunJ6Sy8484kGSSa2OvEaPItheyM6E9R.jpeg', 'uploads/products/featured/ARgeCOZnlVaAR5susZfbENy8ofogYPhICjvWIcmf.jpeg', 'uploads/products/flash_deal/lmuIZ4Fj6WsoHwt0ko3QLyJl1lXK7DETednqppen.jpeg', 'youtube', NULL, '', 'Palmolive&nbsp;Aroma therapy&nbsp;Shower Gel&nbsp;CoMe from dubai 750ml', 750.00, 700.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 36, '750 ml', 50.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/vmnz2k6Fi2cSvBigrQYY6D5IcBDWoYWExDsMcHFB.jpeg', NULL, 'Palmolive-cMrSR', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-22 16:43:52', '2021-02-26 02:19:31'),
(56, 'Ginvera world spa', 'admin', 12, 7, 31, 134, 29, '[\"uploads\\/products\\/photos\\/eES8qfKDCbVhMQDNR3y6BcinAeUGyROe9EgEWIlA.jpeg\"]', 'uploads/products/thumbnail/dBEJZKZLRLKD146N4itxGqZY2JnqEVJdU5Fs5HqC.jpeg', 'uploads/products/featured/1BjkDALdVh2UXwz0HZw9z5IVqnvIg9yiIqm8Kgsy.jpeg', 'uploads/products/flash_deal/x2zrjrR2XNd9ky5lyc88y5E6MiUjy4SnqfAHFxL6.jpeg', 'youtube', NULL, '', 'Ginvera world spa&nbsp;Shower scrub&nbsp;750 ml&nbsp;Made in Malaysia', 1190.00, 1100.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 36, '750ml', 90.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/DwURlGMYuzQCMSBY3fg9jKo61fFjy0wMWIGqZVVr.jpeg', NULL, 'Ginvera-world-spa-vg8sz', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-22 17:33:09', '2021-02-26 02:19:29'),
(57, 'LYNX BODY SPRAY', 'admin', 12, 7, 37, 168, 77, '[\"uploads\\/products\\/photos\\/eIyfpuCznD0azkyQF5FrlqZl3j6NX1kfseirfNpz.jpeg\"]', 'uploads/products/thumbnail/cxv1dvj42K6dqZ8iXm3dNpfoaQXCd7EYvJnvfZNs.jpeg', 'uploads/products/featured/1dgVKy8OPjVoBVzjDzkfIQDMvSAXfaW6OMq5RkX0.jpeg', 'uploads/products/flash_deal/WKpRLrdmPpbVkdSX7VdLqVGnT1TryJziX5ZGjx58.jpeg', 'youtube', NULL, '', 'LYNX BODY SPRAY&nbsp;MADE IN UK 150ml 48h', 590.00, 560.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 96, '150ml', 30.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/450S4ouOUpt5DlZ4Upb0UJpK9SlvfWbtqeCxzzR7.jpeg', NULL, 'LYNX-BODY-SPRAY-1CB8D', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-22 17:45:22', '2021-02-26 02:19:26'),
(58, 'Date Crown dabbas', 'admin', 12, 16, 130, 433, 78, '[\"uploads\\/products\\/photos\\/tPKVw8SlDguawRF6GbH9j7Y4fHA92h7ea5qUUl6g.jpeg\"]', 'uploads/products/thumbnail/dHXhU5xSEG5XFDG2DUh9kmVxP3sdAGPzoejU5bKA.jpeg', 'uploads/products/featured/6nD4ytBbnbhEixYoY9TVGbYW2lSVSJsD3sTS7HNg.jpeg', 'uploads/products/flash_deal/IecZLzkgoVpEpAe7sNaSr6j7X5AueCY6twzlsnRU.jpeg', 'youtube', NULL, '', 'Date crown Dabbas 1kg', 480.00, 450.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 39, '1kg', 30.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 1, NULL, NULL, 'uploads/products/meta/EdR4GqI4aWzPeAVZUbtwkYpgnQuh02AwVXI9GKpY.jpeg', NULL, 'Date-Crown-dabbas-gNJR1', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-23 14:16:46', '2021-02-26 02:19:22'),
(59, 'Fresh soyabean oil', 'admin', 12, 9, 56, 261, 48, '[\"uploads\\/products\\/photos\\/sZG6KsCCes42hlFtrVTT3SshWg67PjpIlaw82JKt.webp\"]', 'uploads/products/thumbnail/4knNOX0yqdIwdq3VxsSzdCP2GJaWoybRIi9Qgqco.webp', 'uploads/products/featured/yzXPGQoj2Qh1Z7NgY9XGs6KeOLHyOOW0LgLWMpYt.webp', 'uploads/products/flash_deal/NTuoMsyypCIVIGpUC1wljPJI7XytfmAg2KcFJ1si.webp', 'youtube', NULL, '', NULL, 550.00, 535.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 24, '5ltr', 15.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/ioZ2T3cl4FEzJN29LX9spHXhDnXeKVsKHzoeyiUM.webp', NULL, 'Fresh-soyabean-oil-ZA14Q', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-26 21:09:00', '2021-02-26 02:19:20'),
(60, 'Teer Soyabean Oil', 'admin', 12, 9, 128, 268, 46, '[\"uploads\\/products\\/photos\\/ovjZYgJSr0T0cw3n4M85sHx22osXpm4IAaygDpcf.jpeg\"]', 'uploads/products/thumbnail/XGUuzMyq6NEGUhIHJdk0QXza3wLSJqphxwV3MqjI.jpeg', 'uploads/products/featured/Jru9W0o5QSCT34DwOJC7VTdjp2fIIliSyGmMSsI5.jpeg', 'uploads/products/flash_deal/qBQ3o2rZmLMqYOQKx7AOWBT1vlfm75ktXyZF7sFW.jpeg', 'youtube', NULL, '', NULL, 550.00, 535.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 35, '5ltr', 15.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/LKjkIR5CJZHoglvhIrZ1XVQrO3mNT9VCZlt7ZpN1.jpeg', NULL, 'Teer-Soyabean-Oil-xQ6nn', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-26 21:28:13', '2021-02-26 02:19:18'),
(61, 'Rupchanda Soyabean Oil', 'admin', 12, 9, 128, 268, 49, '[\"uploads\\/products\\/photos\\/AzMiizyRSTH3vjZJ0rIKuRgoYAY23RYCCYj2T54x.jpeg\"]', 'uploads/products/thumbnail/J2Ha4xZgLYM8gsCeG48m7w9OJpSuZcrbFNb58nSr.jpeg', 'uploads/products/featured/z6DSeSmJgEyRCozDSNWVeFIcIyi3WDlA5drD2y1D.jpeg', 'uploads/products/flash_deal/iqvHfrczzyEkhGgHtaxLCSos00BlcKmEnjlRANdN.jpeg', 'youtube', NULL, '', NULL, 550.00, 540.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 35, '5ltr', 10.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/czhsJHxulB4ciiMBnXwtooFY4ZURps2PIzOZHR2H.jpeg', NULL, 'Rupchanda-Soyabean-Oil-RtlK9', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-26 21:38:48', '2021-02-26 02:19:16'),
(62, 'Date Crown dabbas', 'admin', 12, 16, 130, 433, 78, '[\"uploads\\/products\\/photos\\/s3LqUyV4uDIEHhJZNBunGIYgwZC6Z4ioNddr3sR9.jpeg\"]', 'uploads/products/thumbnail/DO9rzAA8vUMsC2hLGRf4HJb4BEYkxtVcxazkdmOH.jpeg', 'uploads/products/featured/F0xSjwi4vLs7djBvptNuhL8RgEqQ29TcDgWMMvUJ.jpeg', 'uploads/products/flash_deal/MRotqyWwifwTPockgoc0UZRxqqqT5cinH2aq4ayP.jpeg', 'youtube', NULL, '', 'Date Crown dabbas 2.5kg', 790.00, 770.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 24, '2.5kg', 20.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/7o54jZ7mqHXUReClri5xqokSt4ru6qOiFcE7j2xJ.jpeg', NULL, 'Date-Crown-dabbas-ouE4s', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-26 21:49:11', '2021-02-26 02:19:13'),
(63, 'Rupchanda Fortified Soyabean Oil, PET Bottle', 'admin', 12, 9, 128, 268, 49, '[\"uploads\\/products\\/photos\\/c2Em1RuIvSm67hrVG2Cyhw4wePbbmd2lonqWnKbn.jpeg\"]', 'uploads/products/thumbnail/p0neyb5xKBzS56orQDrC7GLnrtdyzF1zhKKmB1JE.jpeg', 'uploads/products/featured/laQAyIgj1erfDvHh2t9TyPuuSTZnrkMpiwERFJwP.jpeg', 'uploads/products/flash_deal/9ozYHXbmEpAA99Q2Hi07Ob3y6mijetfApuaCJe9e.jpeg', 'youtube', NULL, '', NULL, 850.00, 850.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 20, '8ltr', 15.00, 'amount', 0.00, 'amount', 'flat_rate', 120.00, 0, NULL, NULL, 'uploads/products/meta/sZ4dABonynBEMhDwEA9SzkCrRwibCqR16cHuLmA9.jpeg', NULL, 'Rupchanda-Fortified-Soyabean-Oil-PET-Bottle-INq12', 0, 0.00, NULL, 0, NULL, NULL, '2020-08-26 22:01:13', '2021-02-26 02:19:04'),
(64, 'Olay', 'admin', 12, 7, 38, 172, 13, '[\"uploads\\/products\\/photos\\/NCcUE2jBkcSUxsHllgrNCXZ2KrPOUUSPv7uMUfV0.jpeg\"]', 'uploads/products/thumbnail/EDso33WJtxeVwFDYdU2BI8L9ezzm41LLFt6qQDe9.jpeg', 'uploads/products/featured/5QYq37jF1pk0TgtsgVrHmg8XmOcwObXvZcPfAS2b.jpeg', 'uploads/products/flash_deal/bUjQ1II3w6WHdUuKmyyn8Ovy8pEtXRwRUgFzRzm9.jpeg', 'youtube', NULL, '', 'Good For Skin', 2800.00, 2700.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 36, '50g', 100.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/sUxiqPSMAmrlwyqiEbn4vTkQs1SIwKAKSigQNJtH.jpeg', NULL, 'Olay-e9US1', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-12 13:56:28', '2021-02-26 02:19:01'),
(65, 'LOREAL ELVIVE EXTRACORONARY OIL', 'admin', 12, 7, 10, NULL, NULL, '[\"uploads\\/products\\/photos\\/l3OZu5mfJpRDu8iFJslr2mYWOaeGHuJ2nv9tYm5v.jpeg\"]', 'uploads/products/thumbnail/fCl1t6vHSM7rRfQhwiZowjUAVA1eElOh8l1cMk5d.jpeg', 'uploads/products/featured/aWn6KaARc6VSGgPaZBz866vttXykXRb2oib25qff.jpeg', 'uploads/products/flash_deal/bWQ9h9Trmz8Rt94NkyAW0STrkmSEJ1xob6Px9NfE.jpeg', 'youtube', NULL, '', NULL, 890.00, 750.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 96, '330ml', 140.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/WbzViFjsIUjxGygl0X6PRLIZEQ3YtaDnDBRGadeN.jpeg', NULL, 'LOREAL-ELVIVE-EXTRACORONARY-OIL-L3aOc', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-12 14:52:48', '2021-02-26 02:18:59'),
(66, 'Johnsons milk+rice', 'admin', 12, 7, 34, 150, 5, '[\"uploads\\/products\\/photos\\/tF6PwEqVdDu78JTztUTsqe9CKXjyu1wAAM4KbVxm.jpeg\"]', 'uploads/products/thumbnail/DCmZeUrpsBhJi0Y3Vbjgad0nhsWx0nvk50vDzRnx.jpeg', 'uploads/products/featured/geQADnFiykAq33FVRsn4k2yTfFATbjxkqIV9L0WG.jpeg', 'uploads/products/flash_deal/2OA57bOzIbnm66FDz32I1G46wpq8Q3Pb5DTH2mpy.jpeg', 'youtube', NULL, '', 'JOHNSON MILK RICE HAIR AND BODY BABY BATH 500ml,....', 840.00, 750.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 48, '500ml', 90.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/CX63AXOHBwurknsh6DZEAmD7017N6A9usccG75wq.jpeg', NULL, 'Johnsons-milkrice-v3iaS', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 14:16:40', '2021-02-26 02:18:57'),
(67, 'Realme 5i', 'admin', 12, 4, 14, 434, 81, '[\"uploads\\/products\\/photos\\/tVyMX6Wxl7MO54DPIL2B6rwiWvcnuJhmNQwSVMhi.jpeg\"]', 'uploads/products/thumbnail/wEIW7DaDL7pyFDvZShdUoeFNu94lBWk6Xa3kXK5G.jpeg', 'uploads/products/featured/68r8SpsxatZ5tznimnoEnxXWc6lw8RquJLbsKKF7.jpeg', 'uploads/products/flash_deal/wgV7yoANn8txljBaFWio3m70Ae1suhObp6Q9hhLh.jpeg', 'youtube', NULL, '', NULL, 15200.00, 12999.00, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"4\\/64\"]}]', '[\"#008000\"]', NULL, 0, 0, 0, 0, 0, 12, '195', 2201.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/jiCifFluOXrcgE5CaF97bo6u7QZlGWP0EZaFTq9t.jpeg', NULL, 'Realme-5i-UKLsd', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 14:51:42', '2021-02-26 02:18:55'),
(68, 'Realme7', 'admin', 12, 4, 14, 434, 81, '[\"uploads\\/products\\/photos\\/FmEf7fUB0HqAHMlNf2wnSz4cWkhrau9DVRMBE0AG.jpeg\"]', 'uploads/products/thumbnail/OS0fY3E6v4jdv4tkYPrlHZA6pmPwH2RRvZxYjCEG.jpeg', 'uploads/products/featured/w7qws5vq2sWgWHiX9UNj94WN15MFfovQPLICQLhI.jpeg', 'uploads/products/flash_deal/4iLsgwFwbSArwzgoWXPQ5lrOF6bBfEG7gpcADGbb.jpeg', 'youtube', NULL, '', NULL, 17999.00, 17400.00, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"6\\/64\"]}]', '[]', NULL, 0, 0, 0, 0, 0, 0, '196.5g', 599.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, 'uploads/products/meta/YBrK8kKcmuT0EvjrGnVEzGDaNOxparIhqA2qgGdY.jpeg', NULL, 'Realme7-nqgdF', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 15:04:56', '2021-02-26 02:18:53'),
(69, 'Orange', 'admin', 12, 16, 131, 435, 82, '[\"uploads\\/products\\/photos\\/Z6llCFQa75Rv9FtgddFbQ2scG7DQjYxxjsqdspg7.jpeg\"]', 'uploads/products/thumbnail/7VUKueB4JmhXRRLj61o5CJG9wRsL4hff4wTPyuxX.jpeg', 'uploads/products/featured/fIDCdREwrZmTqLTdt3odYpxXjjaBlaKqhPIItqsB.jpeg', 'uploads/products/flash_deal/qWfZCCb3MgONalZrx6rm4l5VFxRWiFsPCEBa3dVt.jpeg', 'youtube', NULL, '', 'it is a very fresh fruits', 400.00, 350.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 90, '1kg', 50.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/XCIrjERYOSfWqVcxBNkdKFNBoZkE6MNVFX05sp20.jpeg', NULL, 'Orange-b8TqY', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 15:26:56', '2021-02-26 02:18:51'),
(70, 'Orange', 'admin', 12, 16, 131, 435, 82, '[\"uploads\\/products\\/photos\\/ZrMACh8DHXLqRQALnBY2BhL1fCuwlc8OWrB4KIOM.jpeg\"]', 'uploads/products/thumbnail/rV5TP3kB4CSzlSAkpev7SRIekxjo3pXd1FFDvnPU.jpeg', 'uploads/products/featured/sQYerq6IWX6DschvbUYKn35QAcBrRQuWYwWHrkcR.jpeg', 'uploads/products/flash_deal/8yVzz6M1cpNlUfjFs5LIy7Vnzx7wCyupiFl2FaMj.jpeg', 'youtube', NULL, '', 'it is a very nice and healthy fruit', 400.00, 350.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 90, '1kg', 50.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/02MOtSyB94pInRtOxYWV2XXoa9INRaTldW8WL3r7.jpeg', NULL, 'Orange-qNVKi', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 15:32:48', '2021-02-26 02:18:45'),
(71, 'Apple', 'admin', 12, 16, 132, 436, 82, '[\"uploads\\/products\\/photos\\/dGSU3zt3rO9GSqog4xjScjmJvoINqLPrmsdqL4lL.jpeg\"]', 'uploads/products/thumbnail/I7Dzex5Z1VrXWNsNooaw1OzczlXJedx7oauU82qX.jpeg', 'uploads/products/featured/U4w3tFfeMxwKyzKCnJwkdniNyu8oUQkmwRLSOrio.jpeg', 'uploads/products/flash_deal/2pEI0jvN1mQMFL2RdoB3ThhUkTMnxjP70JrLpLCA.jpeg', 'youtube', NULL, '', 'fresh and healthy Apples', 370.00, 320.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 90, '1kg', 50.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/z3u4cOFNypWH9nSn2SwSzfUNIEMqH3FY73CQnfox.jpeg', NULL, 'Apple-sRAyi', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-15 15:39:36', '2021-02-26 02:18:43'),
(73, 'NaviForce Black Leather Quartz Wrist Watch', 'admin', 12, 13, 93, 395, 83, '[\"uploads\\/products\\/photos\\/Tx6UVKugqIoESY8q0PXlsCng5J1gHoOQvi94Og3W.jpeg\"]', 'uploads/products/thumbnail/IOSuh08L1msnHaZTvlWQDMlpNkk3FRWvT7YW5Ep8.jpeg', 'uploads/products/featured/6Kj24Ue7zDCt4xjL6L8O1EL7LlWmoZhJEauKP0iW.jpeg', 'uploads/products/flash_deal/2rihDP37DN1iUinHn0oP6mDIkdBFTxdp9PeUnRXr.jpeg', 'youtube', NULL, '', 'This is a very nice and branded watch for man.....', 2400.00, 1990.00, 1, '[]', '[]', '[\"#000000\"]', NULL, 0, 0, 0, 0, 0, 0, '1p', 410.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/vLTnIG2zRGNJrx1cqpuowezF1c3RTCGVYgVLG7bO.jpeg', NULL, 'NaviForce-Black-Leather-Quartz-Wrist-Watch-Q5HMW', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-18 13:50:45', '2021-02-26 02:18:41'),
(74, 'Skmei Analog Wrist Watch  9107SW', 'admin', 12, 13, 93, 395, 83, '[\"uploads\\/products\\/photos\\/ft3Go6gJK1DnFwgfsCVelNkV8IzUA77CNaa6GY0G.jpeg\"]', 'uploads/products/thumbnail/rMcRCxuq21deACueq6WlSuSPLOvZWXLbxO4O5ZAv.jpeg', 'uploads/products/featured/EPGsBesKTB06XRuJBM2qO1DGMBsNINcwuiUZeKgZ.jpeg', 'uploads/products/flash_deal/x4deU3CxVfV3xGcwz4x0Ii4swSopW9EOqT3UhnVC.jpeg', 'youtube', NULL, '', 'This is a very nice and branded watch for man.....', 2350.00, 1990.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 76, '1p', 360.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/wiBER6TFdpWDrquc3NFMzNr3Nye0fr1yB4Kp25C4.jpeg', NULL, 'Skmei-Analog-Wrist-Watch--9107SW-bTtIg', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-18 14:13:38', '2021-02-26 02:18:39'),
(75, 'Skmei Analog Wrist Watch  1264RD', 'admin', 12, 13, 94, 401, 84, '[\"uploads\\/products\\/photos\\/l94f6J6AXtmiqYUFnyJQ92dY6DPwHDZWDW18WKDw.jpeg\"]', 'uploads/products/thumbnail/zy5TJI4vCDbK95uRto5ePP9oepAeEaB58a8pspnv.jpeg', 'uploads/products/featured/DYLgvnHza1jeSUgYfJeZUtMhuRKHpXAsQpuwK1ei.jpeg', 'uploads/products/flash_deal/fhJCkcN6JYhYt6FtlqnCEmiVi5n3Ke6QANReu4sQ.jpeg', 'youtube', NULL, '', 'This is very cool and fationable watch for womens......', 1740.00, 1390.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 45, '1p', 350.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/riXn2KCRTAwN7VtldRN472YTAUdw4MiY5v1UJZyD.jpeg', NULL, 'Skmei-Analog-Wrist-Watch--1264RD-7VQp0', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-18 14:24:56', '2021-02-26 02:18:36');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `topbrand`, `weeklysell`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(76, 'Skmei Analog Wrist Watch 9058BL', 'admin', 12, 13, 94, 399, 84, '[\"uploads\\/products\\/photos\\/i68mkr08UNoHiTts34alQMwee4DvTp7yFmumVrMj.jpeg\"]', 'uploads/products/thumbnail/wQbN6lUAH5Gih2mEnp4BgienXT3RP3ZQJVPuDV6g.jpeg', 'uploads/products/featured/EFIRoqD3m5UR8Pm2jfEoq14CFRlNjRRZUYShzDjb.jpeg', 'uploads/products/flash_deal/7zOWcgtRpCxk7EmP2A5cEeSj79sGz5xAlCKuQuAN.jpeg', 'youtube', NULL, '', 'This is a very nice and branded watch for man.....', 1890.00, 1590.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 24, '1p', 300.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, 'uploads/products/meta/eDKYMv3p0KNYNO5ImN92P72cGCOGJiXtnTvinmjf.jpeg', NULL, 'Skmei-Analog-Wrist-Watch-9058BL-ZPhoR', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-18 14:32:06', '2021-02-26 02:18:34'),
(77, 'MODEL Casio MTP-E137L-9A Men s BLACK Leather Watch', 'admin', 12, 13, 93, 397, 85, '[\"uploads\\/products\\/photos\\/FeJFm8eVsONKt5r70sjnZX0RODMfQjXOhCgvNrri.jpeg\"]', 'uploads/products/thumbnail/bFPGI89wozXdwJBRSI9ZeJA6ClKeOUgqBZYlM98C.jpeg', 'uploads/products/featured/qjtFo8lnR2ChEwg0lWZU5gSGAq3wg4F3STsxL53q.jpeg', 'uploads/products/flash_deal/JZyaHTTnaY8EAS40cMhPCXIPYvcYH0UathukbVBK.jpeg', 'youtube', NULL, '', 'The best watche&nbsp;for mans....', 9350.00, 6995.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 5, '1p', 3355.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/ixDQE6CVWmhpMTY1QQ8S0J2nAS3dzWwFoyju4JFI.jpeg', NULL, 'MODEL-Casio-MTP-E137L-9A-Men-s-BLACK-Leather-Watch-jQpiN', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-18 14:55:03', '2021-02-26 02:18:31'),
(78, 'johnsons baby top to toe', 'admin', 12, 7, 31, 134, 5, '[\"uploads\\/products\\/photos\\/LeXxra4jaGRVNvZyx6W4o0SB1mxzTknTbtPDJItI.jpeg\"]', 'uploads/products/thumbnail/SYKzcCRLdJDb5QfQwL26vtR04naMciOsozKo1SRr.jpeg', 'uploads/products/featured/JROuSehoITw59HCqasTOPotkc7VVyvk6muEXGWkg.jpeg', 'uploads/products/flash_deal/5VfrScuQZlSq5GI8iPcrlmJbFdSebZfdKUriYDoG.jpeg', 'youtube', NULL, '', 'This is a very nice and very gentle for Babys......', 780.00, 680.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 36, '500ml', 100.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/qLH98I5GOdI4YyOA7aAVy7XL5grjsOLzaaLPF1pK.jpeg', NULL, 'johnsons-baby-top-to-toe-A7coG', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 13:15:35', '2021-02-26 02:18:29'),
(79, 'Ravlon colorsilk', 'admin', 12, 7, 34, 154, 86, '[\"uploads\\/products\\/photos\\/bUkjXPXEK4UCGLilengQbfTotzc5uvzF3SBAasW7.jpeg\"]', 'uploads/products/thumbnail/IwtfuvtDO46icjdBDxjh9LRCgHabaY5JIgq0qyBp.jpeg', 'uploads/products/featured/Hie4dUajF13YxfM1p540t5wjxL0peM8KGKhlxwkk.jpeg', 'uploads/products/flash_deal/PBHUqrlx3gMOfoo5vr2Lg1d6kBheGMeeZRfS9OXT.jpeg', 'youtube', NULL, '', 'A great product for hair,and gives silky color....', 590.00, 500.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 72, '1p', 90.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/7nDvIFygj8filcL6BZa5YJbusYjwnGLfqT0S5Vbj.jpeg', NULL, 'Ravlon-colorsilk-2Tm37', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 13:39:14', '2021-02-26 02:18:26'),
(80, 'Loreal paris 6.13 golden brown', 'admin', 12, 7, 34, 154, 9, '[\"uploads\\/products\\/photos\\/1QKAdXTXFjaZUwVJcWbLia2mpLebRcZQX7N59OJx.jpeg\"]', 'uploads/products/thumbnail/nTdliiYqAgyMk0s8eOhdzdngRiNytjW2dFF2Nrmp.jpeg', 'uploads/products/featured/ihnfqdZfSBLs5KvMRGiMJ0WaI7NGi9VZ6bxiCcfE.jpeg', 'uploads/products/flash_deal/kB1nnRWqItguSvSsU5mV5kMO3K7txx8YxGWYz6ar.jpeg', 'youtube', NULL, '', 'Best hair color for your hairs....', 1340.00, 1200.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 59, '1p', 140.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, 'uploads/products/meta/TshukEDX5Gba4bULZniyDb87bowX3eN2SoeqRUk7.jpeg', NULL, 'Loreal-paris-613-golden-brown-ratez', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 13:48:08', '2021-02-26 02:18:24'),
(81, 'Be happy Hair color cream 7g', 'admin', 12, 7, 34, 154, 87, '[\"uploads\\/products\\/photos\\/ou72kZtlXqrZ4Op8h7DG7fLzDhAA6g9AVTs27uIl.jpeg\"]', 'uploads/products/thumbnail/fSBO4ZstCGvHX0BRtBp8ZEf4wxmO6Nfvmvv6zYNy.jpeg', 'uploads/products/featured/RsU5579WG3Dpwgwc0ZVIbr46L5yIFvRIxlSlka0I.jpeg', 'uploads/products/flash_deal/eM1hptSHGfs2TXSP6zcyA4MvUbeZxmlwI1p6uY77.jpeg', 'youtube', NULL, '', 'fantastic hair color to get silky hair', 840.00, 750.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 60, '1p', 90.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/73NBMd7Z9oKVsdlPNB9QlbqY1x450Wu5Plliin1T.jpeg', NULL, 'Be-happy-Hair-color-cream-7g-kosq5', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 14:01:28', '2021-02-26 02:18:22'),
(82, 'lyclear natural herbal hair wash', 'admin', 12, 7, 34, 152, 88, '[\"uploads\\/products\\/photos\\/S95SIKsPQYp4G0FFmaVeUfjsbmEYqYgkBGeoIOIo.jpeg\"]', 'uploads/products/thumbnail/81pMIksaNI1HHn2trZbHTW7CJLZk0lwFfnk3jqv6.jpeg', 'uploads/products/featured/991TFHVJWQCdhBecbM4fBNGgoLSBen66alDiAUrj.jpeg', 'uploads/products/flash_deal/2EtWL1AIm7qqGcVGcQquqU27srz4IiW8vy2G16RP.jpeg', 'youtube', NULL, '', '<p>Very soft and gentle body wash.....</p><p><br></p>', 875.00, 760.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 47, '40 ml', 115.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, 'uploads/products/meta/paV72W8WryJ5HiFjpIdhc1MpVNhLF4p9eIG6aN1f.jpeg', NULL, 'lyclear-natural-herbal-hair-wash-FTGJd', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 14:09:31', '2021-02-26 02:18:19'),
(83, 'cetaphil gentle skin cleanser', 'admin', 12, 7, 38, 172, 89, '[\"uploads\\/products\\/photos\\/gVV91300rSeoDOErkCPg71pUt3Zd1ARt5kFb3D5j.png\"]', 'uploads/products/thumbnail/KiozUwgDdjP5XpIqArQBFubUT6nO2jQrtBp0HADd.png', 'uploads/products/featured/pdJmtrwMeEuaranxCNFegc4fbd4yjdTrDXsptTTd.png', 'uploads/products/flash_deal/mrXY5oDA027kBMXS5yvxPfwWyo3xl4XnZwZwYJf3.png', 'youtube', NULL, '', 'gentle care for all.....', 2100.00, 1850.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 0, 0, 36, '473ml', 250.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, 'uploads/products/meta/wofrmC9i7xKpPgxasE1qjhFcCc0h5xchenwDE65J.png', NULL, 'cetaphil-gentle-skin-cleanser-9gkPr', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 14:18:06', '2021-02-26 02:18:17'),
(84, 'Aveeno baby soothing relief', 'admin', 12, 7, 38, 172, 90, '[\"uploads\\/products\\/photos\\/WiFY3kzwzG4c7YrcNSd5BVMeCXUg7sEe4GuSWToU.jpeg\"]', 'uploads/products/thumbnail/1DKH8mutoP4GoZoNM3HrNhzaG1Zek25bYpOBllhX.jpeg', 'uploads/products/featured/8ws9frhWqViMW1RyNiR8Ve51UxDMa5eu2nE96frW.jpeg', 'uploads/products/flash_deal/U05bw74ElpjbcCeYMOnB3HlXIMz5UfmPEIcNnZbL.jpeg', 'youtube', NULL, '', 'Very gentle product for babys', 1490.00, 1250.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 1, 0, '223ml', 240.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, 'uploads/products/meta/0v5yWwc5uIgMF3UrUSX9uGnr4xA6g7AGN54hn63H.jpeg', NULL, 'Aveeno-baby-soothing-relief-7nzq6', 1, 0.00, NULL, 0, NULL, NULL, '2020-09-22 14:25:20', '2021-02-26 02:18:15'),
(85, 'Top quality jeans pant', 'admin', 12, 12, 87, NULL, NULL, '[\"uploads\\/products\\/photos\\/WwWUG2K7Buc38wsYWmFguE0fatOsTRVzGV2AqBzs.jpeg\",\"uploads\\/products\\/photos\\/XH5BJW3bWACvEq9qj2rMgv5PCzH7gtT5aFuB2kdi.jpeg\"]', 'uploads/products/thumbnail/4ixRi9ecxms2S3T3xksicAlwroyPj2JcgtOmxntN.jpeg', 'uploads/products/featured/t5a3AdzzPmPcuTf25jsJrFKf9Ld1BTJOcLVVIF6k.jpeg', 'uploads/products/flash_deal/WC5huocb0cLOykCVQcxJiMuJRRFhRkEhXxFz4psJ.jpeg', 'youtube', NULL, 'Jeans pant', '<p>Type: Spandex/Stig/Butex</p><p>Fit: Slim/Narrow </p><p>FitSize:28-30-32-34.</p><p>Poctek:04Qc : 100% Ok</p>', 730.00, 730.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"28\",\"32\",\"34\",\"30\"]}]', '[]', NULL, 0, 0, 0, 1, 0, 1000, 'PC', 0.00, 'amount', 0.00, 'amount', NULL, 0.00, 3, 'Top quality jeans pant', 'Type: Spandex/Stig/Butex\r\nFit: Slim/Narrow Fit\r\nSize:28-30-32-34.\r\nPoctek:04\r\nQc : 100% Ok', 'uploads/products/meta/TK1znBG6mc8mEPpaP5CTyl2WrhbScnTWd7amjRWY.jpeg', NULL, 'Top-quality-jeans-pant-ZA9ae', 1, 0.00, NULL, 0, NULL, NULL, '2020-11-25 13:48:50', '2021-02-26 02:18:13'),
(86, 'Anti Stretch Mark Cream', 'admin', 12, 7, 38, 172, 91, '[\"uploads\\/products\\/photos\\/B2l5TmrUP7Kx5xyIEx4e2r9LEE9jFagN6je2bkiO.jpeg\"]', 'uploads/products/thumbnail/C1EQB0T6U1LshQiUgUbxvMFoQxmysnDDBnq5XiUM.jpeg', 'uploads/products/featured/zHaodzgT2yBNlw7YUCWW9zstRJEfEf0jBfTTiRxA.jpeg', 'uploads/products/flash_deal/vy4HSQ81guaPUvoOHIJGgNEy2alUPTtVJZxuf0tp.jpeg', 'youtube', NULL, 'Mark Cream', '<h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br class=\"Apple-interchange-newline\">How to Use :</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Apply Cream evenly to the problem area twice every day, morning and evening</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Laoshiya Anti Stretch Mark Cream Indications:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Prevention and correction of the stretch marks during pregnancy, puberty, variations of weight.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Tested by gynecologists.</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Action :</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Preventive action. Corrective Action.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Laoshiya Anti Stretch Mark Cream Texture:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Light, pleasantly perfumed and imparts a sensation of well-being.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Its ideal texture is completely absorbed after massaging.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Laoshiya Anti Stretch Mark Cream Directions:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Apply the cream every day to areas likely to be affected (stomach, breasts, thighs, hips). Massage in until fully absorbed.</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Prevention:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">The skin is well hydrated and nourished, retaining optimum elasticity and is thus better able to resist significant stretching.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Stretch marks are much less likely to appear.</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Correction:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">By helping to firm up and restructure the skin, existing stretch marks are visibly reduced: their size is diminished and their color faded.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Size:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">65 G</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Laoshiya Anti Stretch Mark Cream Ingredients:</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Vitamin C, Collagen Elastic, Aqua, Glycerin, Propylene Glycol,</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p><h3 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 22px; display: block; color: rgb(45, 42, 42); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Laoshiya Anti Stretch Mark Cream Efficiency:</h3><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Effectively remove pregnant wrinkles, strengthen firmness, whiten skin, keep skin smooth and soft, and make skin lustrous and beautiful</p><br>', 1500.00, 1500.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 1, 0, 'PC', 350.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, NULL, NULL, 'Anti-Stretch-Mark-Cream-bfOPi', 1, 0.00, NULL, 0, NULL, NULL, '2020-12-02 02:01:52', '2021-02-26 02:17:35'),
(87, 'Scar Gel', 'admin', 12, 7, 38, 172, 91, '[\"uploads\\/products\\/photos\\/OZQj8ZIn5BGP4maiOZNyElXT5V0ZDWCaYl68LseD.jpeg\"]', 'uploads/products/thumbnail/k5vb6ECQ70A2xO29gnNZYMeOiarqiShhyGqiI938.jpeg', 'uploads/products/featured/CQ1j29NM3vfH8ZpYOI8rboYWCK1apvZPjvrbcLIU.jpeg', 'uploads/products/flash_deal/JWngK0O8xoh8FuQMLkJX8IRGcCvLUYkv6lNww00T.jpeg', 'youtube', NULL, '', '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700 !important; font-size: 16px !important; line-height: 24px !important; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">【Effectively removes acne】 - This acne cream has a powerful acne function, which restores the face smooth and delicate without leaving acne marks.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">【All natural ingredients】 - you won\'t find any harmful chemicals in this acne cream. It uses all-natural plant extracts, and its \'safe and gentle formula\' is very effective in improving the overall appearance, texture and color of the skin, effectively acne.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">【Moisturizing &amp; Brightening Complexion】 - Our premium formula contains herbal extracts that naturally soften, soothe and repair the skin. It also improves skin elasticity and makes the skin firmer and smoother.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">【Shrink pores】 - This acne cream uses pure natural plant extracts, which also has the function of shrinking pores while acne, and has a certain repair function on the skin.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17);\">【Suitable for all skin types】 - Our special blend of nourishing and active ingredients is suitable for all skin types including very sensitive skin, oily skin, dry skin and combination skin.</span></li></ul><br>', 1500.00, 1500.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 0, 'PC', 350.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, NULL, NULL, 'Scar-Gel-kYtma', 1, 0.00, NULL, 0, NULL, NULL, '2020-12-02 02:11:26', '2021-02-26 02:17:33');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `topbrand`, `weeklysell`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(88, 'Massage cream for stretch marks', 'admin', 12, 7, 38, 172, 91, '[\"uploads\\/products\\/photos\\/3Ix1Tru0WW5DGZBdl5c91fw9WPymIuXndM7WEHjR.jpeg\"]', 'uploads/products/thumbnail/8w2jKFSOew8vMt9xSHowK9YdeVJr4ofjImyN7w4R.jpeg', 'uploads/products/featured/ItXOfFEr0YumA6lqN3sHCi2aK9GrcbyG9BOaneVs.jpeg', 'uploads/products/flash_deal/DY43DQ0wNv3ZpJynzpyZW73QWTDLoorHf2JVIuft.jpeg', 'youtube', NULL, '', '<h1 style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font-family: Rosario, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">Laoshiya Anti Stretch Mark Cream</h1><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">During Pregnancy, a would-be mothers body changes dramatically-her weight increases skin lacks of natural elasticity, then feels tight and itchy, especially abdomen. \"&nbsp;</span></p><h2 style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0);\">Laoshiya Anti Stretch Mark Cream expertly takes care of these problems by essential natural ingredients contained in the velvety cream.</span><br><br><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205);\">What are Stretch Marks?</span><br><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0);\">Stretch marks are a type of scar beneath the skin. When body shape changes, or skin is stretched in any way, there is a possibility that the deeper layers of the skin may suffer damage. The deep layers of the skin are formed primarily by collagen and other connective tissue. When collagen is strained beyond its strength, it tears.<br>Because the layer of collagen cushions and pads the skin, and supports it, any tears in the collagen can be seen on the skin’s surface. These marks are frequently pink, purple or whitish in color and can be felt with the fingertips. These are stretch marks – also known to doctors as striae.</span><br><br><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205);\">How to Use :</span><br><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0);\">Apply Cream evenly to the problem area twice everyday, morning and evening</span></span></h2><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\">&nbsp;</p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205); font-size: 14px;\">Laoshiya Anti Stretch Mark Cream Indications:</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Prevention and correction of the stretch marks during pregnancy, puberty, variations of weight.</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\">Tested by gynecologists.&nbsp;</p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Action :&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Preventive action. Corrective Action.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\">&nbsp;</p><h4 style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205);\">Laoshiya Anti Stretch Mark Cream Texture:&nbsp;</span></h4><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Light, pleasantly perfumed and imparts a sensation of well-being.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Its ideal texture is completely absorbed after massaging.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\">&nbsp;</p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px; font-size: 14px;\">L</span><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px; font-size: 14px;\">aoshiya Anti Stretch Mark Cream Directions:&nbsp;</span></span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Apply the cream every day to areas likely to be affected (stomach, breasts, thighs, hips). Massage in until fully absorbed.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Prevention:</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">The skin is well hydrated and nourished, retaining optimum elasticity and is thus better able to resist significant stretching.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Stretch marks are much less likely to appear.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Correction:&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">By helping to firm up and restructure the skin, existing stretch marks are visibly reduced: their size is diminished and their color faded.&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\">&nbsp;</p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205);\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Size:</span></span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">50 G</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px; color: rgb(0, 0, 205); font-size: 14px;\">Laoshiya Anti Stretch Mark Cream Ingredients:</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Vitamin C, Collagen Elastic, Aqua, Glycerin, Propylene Glycol,&nbsp;</span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify; min-height: 19px;\">&nbsp;</p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 205);\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Laoshiya Anti Stretch Mark Cream Efficiency:</span></span></p><p style=\"border: 0px; margin: 0px 0px 8px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; color: rgb(0, 0, 0); font: 14px &quot;Comic Sans MS&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; white-space: normal; box-sizing: border-box; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 0px;\">Effectively remove pregnant wrinkles, strengthen firmness, whiten skin, keep skin smooth and soft, and make skin lustrous and beautiful</span></p><br>', 1550.00, 1550.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 0, 'PC', 450.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, NULL, NULL, 'Massage-cream-for-stretch-marks-tphdu', 1, 0.00, NULL, 0, NULL, NULL, '2020-12-02 02:15:25', '2021-02-26 02:17:31'),
(89, 'Big Bust 100% ++ Brest Massage oil', 'admin', 12, 7, 40, 190, 91, '[\"uploads\\/products\\/photos\\/8YDg720Ij8yREM8RbFGgLfAS8VE68stjI0Htlzr1.jpeg\"]', 'uploads/products/thumbnail/zcntsnMm7ZySJGy4InmB5I7pY8hxnvWsHi5Nq0dV.jpeg', 'uploads/products/featured/GWwHFhVFhA12zD7RBdnyExg1hnNjACPXUOL9yPuN.jpeg', 'uploads/products/flash_deal/WRBr1GhNzGdiSDAgO8LOMUrzORoOTRWYmqTeB6Px.jpeg', 'youtube', NULL, '', '<ul style=\"color: rgb(0, 0, 0); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li>This breast enlargement cream contains papaya extract, collagen, avocado oil, sesame oil, sweet almond oil and vitamin E which helps to accelerate the cell activation of the whole breast, uplift your breast in a short period of time.</li><li>The ingredients could efficiently resist tissue loosening, help you enhance and uplift the breast in one time, and make your body even more attractive.</li><li>It enlarges breast gradually, enhance elasticity and firmness, and remarkably improves breast contour.</li><li>Enlarging the breast and giving it a round and full shape.</li><li>Adding smoothness and tenderness to breast and reduces stretch mark.</li></ul><br>', 1700.00, 1700.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 0, 'PC', 450.00, 'amount', 0.00, 'amount', NULL, 0.00, 2, NULL, NULL, NULL, NULL, 'Big-Bust-100--Brest-Massage-oil-gcW8L', 1, 0.00, NULL, 0, NULL, NULL, '2020-12-02 02:22:13', '2021-02-26 02:17:28'),
(90, 'BEST CLASSY FASHIONABLE TROUSERS', 'admin', 12, 12, 92, NULL, NULL, '[\"uploads\\/products\\/photos\\/fWUuNlFB7YgInIeYGPG1W7cUlIyvCWRTFH4ZaBAk.jpeg\",\"uploads\\/products\\/photos\\/bXLa5mKpqmfV6ld67TjhTJJtjcaUOwVEO3DvPVxr.jpeg\",\"uploads\\/products\\/photos\\/67syKUa7MXpbcQ7QWdKzl3pscrBMtmhBJQ46dQ3P.jpeg\",\"uploads\\/products\\/photos\\/uymxoL3FO82kTqDrbDk5an6KsWVWiUZlAQXk56A2.jpeg\"]', 'uploads/products/thumbnail/uxUznDam0MVoGRxj8aW96aEBaOUuNMkHTMTqvqwX.jpeg', 'uploads/products/featured/biuyJICGnW4suZiqVTgL42MwWobyOcmAiG8dcStO.jpeg', 'uploads/products/flash_deal/xs5IhGLMw0po4dw8o1HFnpxO6KzCMpSjI2U06nXq.jpeg', 'youtube', NULL, '', '<span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql rrkovp55 a8c37x1j keod5gw0 nxhoafnm aigsh9s9 d3f4x2em fe6kdd0r mau55g9w c8b282yb iv3no6db jq4qci2q a3bd9o3v knj5qynh oo9gr5id hzawbc8m\" dir=\"auto\"><div dir=\"auto\" style=\"text-align: start;\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img alt=\"✔\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" width=\"16\" height=\"16\"></span>BEST CLASSY FASHIONABLE TROUSERS COLLECTION_ALL_TIME....</div><div dir=\"auto\" style=\"text-align: start;\">Men\'s &amp; Women\'s Fashion Trend_2021</div><div dir=\"auto\" style=\"text-align: start;\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img alt=\"✔\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" width=\"16\" height=\"16\"></span>এই ট্রাউজার গুলির বিশেষ বৈশিষ্ট্য হল ২ সাইডে ২ টি পকেট আছে জিপার সহ যাতে আপনি জগিং করার সময় মোবাইল ও মানিব্যাগ রাখতে পারবেন। (কোমরে ইলাস্টিক &amp; ড্র কর্ড আছে।) ট্রাউজারগুলি খুবই কোয়ালিটি সম্পন্ন ও পড়তে আরামদায়ক।</div></span><br>', 700.00, 700.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#000000\",\"#0000FF\",\"#FF0000\",\"#F5F5F5\"]', NULL, 0, 0, 0, 1, 1, 0, 'PC', 100.00, 'amount', 0.00, 'amount', NULL, 0.00, 7, NULL, NULL, NULL, NULL, 'BEST-CLASSY-FASHIONABLE-TROUSERS-OgB3Q', 1, 0.00, NULL, 0, NULL, NULL, '2020-12-10 05:02:57', '2021-02-26 02:17:24'),
(91, 'BEST CLASSY FASHIONABLE TROUSERS', 'admin', 12, 12, 92, NULL, NULL, '[\"uploads\\/products\\/photos\\/fWUuNlFB7YgInIeYGPG1W7cUlIyvCWRTFH4ZaBAk.jpeg\",\"uploads\\/products\\/photos\\/bXLa5mKpqmfV6ld67TjhTJJtjcaUOwVEO3DvPVxr.jpeg\",\"uploads\\/products\\/photos\\/67syKUa7MXpbcQ7QWdKzl3pscrBMtmhBJQ46dQ3P.jpeg\",\"uploads\\/products\\/photos\\/uymxoL3FO82kTqDrbDk5an6KsWVWiUZlAQXk56A2.jpeg\"]', 'uploads/products/thumbnail/uxUznDam0MVoGRxj8aW96aEBaOUuNMkHTMTqvqwX.jpeg', 'uploads/products/featured/biuyJICGnW4suZiqVTgL42MwWobyOcmAiG8dcStO.jpeg', 'uploads/products/flash_deal/xs5IhGLMw0po4dw8o1HFnpxO6KzCMpSjI2U06nXq.jpeg', 'youtube', NULL, '', '<span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql rrkovp55 a8c37x1j keod5gw0 nxhoafnm aigsh9s9 d3f4x2em fe6kdd0r mau55g9w c8b282yb iv3no6db jq4qci2q a3bd9o3v knj5qynh oo9gr5id hzawbc8m\" dir=\"auto\"><div dir=\"auto\" style=\"text-align: start;\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img alt=\"✔\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" width=\"16\" height=\"16\"></span>BEST CLASSY FASHIONABLE TROUSERS COLLECTION_ALL_TIME....</div><div dir=\"auto\" style=\"text-align: start;\">Men\'s &amp; Women\'s Fashion Trend_2021</div><div dir=\"auto\" style=\"text-align: start;\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img alt=\"✔\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" width=\"16\" height=\"16\"></span>এই ট্রাউজার গুলির বিশেষ বৈশিষ্ট্য হল ২ সাইডে ২ টি পকেট আছে জিপার সহ যাতে আপনি জগিং করার সময় মোবাইল ও মানিব্যাগ রাখতে পারবেন। (কোমরে ইলাস্টিক &amp; ড্র কর্ড আছে।) ট্রাউজারগুলি খুবই কোয়ালিটি সম্পন্ন ও পড়তে আরামদায়ক।</div></span><br>', 700.00, 700.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '[\"#000000\",\"#0000FF\",\"#FF0000\",\"#F5F5F5\"]', NULL, 0, 0, 0, 1, 1, 0, 'PC', 100.00, 'amount', 0.00, 'amount', NULL, 0.00, 7, NULL, NULL, NULL, NULL, 'BEST-CLASSY-FASHIONABLE-TROUSERS-ZzvcB', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-25 19:10:41', '2021-02-26 02:17:18'),
(92, 'sdfa', 'admin', 12, 4, 14, 19, 6, NULL, NULL, NULL, NULL, 'youtube', NULL, 'dgs', '<p>dsgdfgs</p><p>dsfgs</p><p>srdrg<br></p>', 1000.00, 2000.00, 1, '[]', '[]', '[\"#9966CC\"]', NULL, 0, 0, 0, 1, 0, 0, 'pg', 19.97, 'amount', 10.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'sdfa-NqOHc', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-25 19:12:09', '2021-02-26 02:17:09'),
(93, 'sdfa', 'admin', 12, 4, 14, 19, 6, NULL, NULL, NULL, NULL, 'youtube', NULL, 'sdf,jh,jil;,\\hji', 'gk,j', 1000.00, 9000.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 1, 'KG', 5.00, 'amount', 2.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'sdfa-i1XYT', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-25 19:19:29', '2021-02-26 02:17:06'),
(95, 'Special Chiken Burger Big', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/3E4eyP9CsCBVVSsocGcdjjaHN2x4RYptw0JxreJC.jpeg\"]', 'uploads/products/thumbnail/nkeIV3pwSRmpBUU36GhR390EHHBMR4MGcO4TAMBP.jpeg', 'uploads/products/featured/sOTQ0HeSiGAAdLvmBEQ5wfw48pNZTpU9fGCrirBc.jpeg', 'uploads/products/flash_deal/tNShu6bCI6gqVQLTjNf8gDPicTLsAjWHjxnaepo0.jpeg', 'youtube', NULL, '', NULL, 110.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Special-Chiken-Burger-Big-RJJRb', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:34:22', '2021-02-27 01:29:34'),
(96, 'Special Chiken Burger Small', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/FPNAcfrHNLoz6f7wZiFZYijmbr2CcttRropJdNeb.jpeg\"]', 'uploads/products/thumbnail/JM68eITgk4ILeFd8y8ROxUwJ9nwCW1498qrcBax9.jpeg', 'uploads/products/featured/7GeXgJiUfLuMtmZ9FCa53X1oRobHbUuMXC9kVBQ6.jpeg', 'uploads/products/flash_deal/h8JRmfMeoozIKM7QFt5gkBmSvBqnawCG7RCVLJ47.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Special-Chiken-Burger-Small-u9eOw', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:36:15', '2021-02-27 01:29:33'),
(97, 'Hot Dog', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/e6ow2rsHdQzQxhZU88oIuRemO7hK2JcdI1dq18KG.jpeg\"]', 'uploads/products/thumbnail/dTr3DF6wq26Fdv5JP5CZxqtBBvkNsRGBjidfpyW7.jpeg', 'uploads/products/featured/kJHYA0Rizf3l2qxIRYyg1wCjTl2MvKWKLU9vciAv.jpeg', 'uploads/products/flash_deal/Ji325rT864kQde9wyhbeJpMmeRBYvPzAECqmzVoN.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Hot-Dog-f9Hjt', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:37:50', '2021-02-27 01:29:30'),
(98, 'Chiken Fry', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/BEjzNk2BYamhXyNib2Uj9KVjJAVL5CWBIvJQBkBb.jpeg\"]', 'uploads/products/thumbnail/EBuUdp0N8I2oAOlgDih1APT7Ldyw6sY4ZVSRLNTu.jpeg', 'uploads/products/featured/giMyUCLHPxw8GiFVtNAm37mV88Q68ydyKDTTqYhs.jpeg', 'uploads/products/flash_deal/ypeB4b7tvGgqXD2RibtNHRlV3qrAWnpl6YQofNT8.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Fry-DIGYM', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:39:24', '2021-02-27 01:29:30'),
(99, 'Pasta', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/25h0TuFhkq3JnkixprbOkypiItMdQi2Ihhhpb9Cr.jpeg\"]', 'uploads/products/thumbnail/VCGgDg7p3tsMTjvRqsdqtN99P5mEWnm8NvaKZU2i.jpeg', 'uploads/products/featured/TDPlmcJCoBaHXi3T30WrmaHHhxK9rPlfPT46v2Ut.jpeg', 'uploads/products/flash_deal/VHDva5sRKZcSlhExe0UFSuqYPcEn8t74vtE1WijI.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pasta-ydjo3', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:40:59', '2021-02-27 01:29:29'),
(100, 'Noodles', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/SG7PStJGpYJ12wudhOk6DZ9RJt8Z7Oxb69nRGaNh.jpeg\"]', 'uploads/products/thumbnail/RVYMfYOopcwl3xAYJ164t9MPnpOEkhXhIFHLCyO6.jpeg', 'uploads/products/featured/z6x5yaQc12kdxMH1wZ85a97ZyNz3UQGKblnunfaX.jpeg', 'uploads/products/flash_deal/mL96VvcUXZxSLZyYrbTpu8PpvB4awtHcSPCrCZft.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 9999, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 1, NULL, NULL, NULL, NULL, 'Noodles-EmfwW', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:43:05', '2021-02-27 01:29:29'),
(101, 'Jhal Muri', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/OQEzUVfqQGJcQ34ET7TN7DQKSmpmDNbFPPYS51I8.jpeg\"]', 'uploads/products/thumbnail/3NZqyYDewc4NB0svCb2EnX3qvchhWWfnoTuuNzlH.jpeg', 'uploads/products/featured/hEzDfcbZoOWap778S05rKYQvqehNRQIRYXibS9F8.jpeg', 'uploads/products/flash_deal/cSlriAzX5cVfE6VI1iyXA9MJdN0bT2zJEU0PlOcO.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Jhal-Muri-1A7hl', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 00:44:52', '2021-02-27 01:29:28'),
(102, 'Koliza Vhuna Full Plate', 'admin', 12, 18, 144, 449, 93, '[\"uploads\\/products\\/photos\\/8SUjIsjelbB3chUqwx2sXdO6TJj30Roa5ObwlcSc.jpeg\"]', 'uploads/products/thumbnail/jk4zyMcQGHDzk2Tin152D5RZUd9umMVdR5NGhmfk.jpeg', 'uploads/products/featured/48NqMALtQG8cTbDDI8UMvdN1LyYiUQc9u6KpCRgU.jpeg', 'uploads/products/flash_deal/w53fLZXpINv52RH9MDM56H088yYAikDhac0BEkfj.jpeg', 'youtube', NULL, '', NULL, 110.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Koliza-Vhuna-Full-Plate-3IDJe', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:09:32', '2021-02-27 01:29:27'),
(103, 'Koliza Half Plate', 'admin', 12, 18, 144, 449, 93, '[\"uploads\\/products\\/photos\\/G9P3d4MP0XAtLsAiVuxzbA9kXSu1vzA9QiXi1mZQ.jpeg\"]', 'uploads/products/thumbnail/MSNM26bFxYPR2LRueGpdvlC0mi0xUdc6ORWCWLHg.jpeg', 'uploads/products/featured/vdOJpBGUHeTTtz3KmOFgVLliLnQ1is4QzmxktrCh.jpeg', 'uploads/products/flash_deal/x9SjhH6eOl3Mn9nuoF1OSwkdoKWEjQ800bMNTxv4.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Koliza-Half-Plate-cdU08', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:11:40', '2021-02-27 01:29:26'),
(104, 'Porota', 'admin', 12, 18, 144, 449, 93, '[\"uploads\\/products\\/photos\\/zy54wfiht337K4UMADzYoic3R6yzSf5MmeaN3exk.jpeg\"]', 'uploads/products/thumbnail/DXx95xwlWftaIx0Mw9XLRPgbPGbtZauCtXKp6QjW.jpeg', 'uploads/products/featured/fJW5gxyly8z7w0NhRdRpkOvclUfeZrMNFWA8207Q.jpeg', 'uploads/products/flash_deal/x8wVPTLRq99SjqLf90KeALouZbP5pq6lVGHYGdO3.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'pcs', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Porota-8wxPk', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:13:41', '2021-02-27 01:29:26'),
(105, 'Vegetable Roll', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/tWuYo1MvCoDrA914SjncBvs7PvF1K5FkukiMkQ7F.jpeg\"]', 'uploads/products/thumbnail/vScPXLXdHZxxlcln0wSERwfYQd2ZsapEm0zEutPa.jpeg', 'uploads/products/featured/AIHWwl9pFSmv6DCkS8brhZbMGh6Lbzrp1TXsrFh8.jpeg', 'uploads/products/flash_deal/pTUCf5xt4CUFiBmJhGQZxN2dV3jnOzkh21iP9oPb.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 1, 10000, 'pcs', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Vegetable-Roll-I9BBi', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:15:47', '2021-02-27 01:29:25'),
(106, 'Fuska 40tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/bNwnywOWRSrxQ1P0pP6ULLa58YfGNB3VSANgf5Dq.jpeg\"]', 'uploads/products/thumbnail/KRQqeymFSFW9CW7c8KpGxryK9dfGobYp8hYPdB8X.jpeg', 'uploads/products/featured/56NdqrBB7H6AUsYN55Fe2WPqxltQ4C0QsvQ9iaqJ.jpeg', 'uploads/products/flash_deal/AkMRY0elfSgBNpAE11bAT7YQ6h5z97fRaKFjfxq7.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 1, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Fuska-40tk-Plate-qvGLj', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:17:49', '2021-02-27 01:29:24'),
(107, 'Fuska 50tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/R8oh4o8Jendq5DlpMueXwsAtPjo92W8PUwynGkjE.jpeg\"]', 'uploads/products/thumbnail/IhFJGvrBRoHZ8bAEFdthBDkdfir55xVCIdNrDk07.jpeg', 'uploads/products/featured/7pUgV9VFmzflcNzFRgARJzUxY0SpQHqgpxgdVkuE.jpeg', 'uploads/products/flash_deal/m30BI2PJ39aSPwJVG6caKIIUvLVrGpvzEDqoqjue.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Fuska-50tk-Plate-6Ookf', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:21:44', '2021-02-27 01:29:23'),
(108, 'Fuska 60tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/WxEGqr4VBEpdpD0XZO7Wj8pgwSaTaSn5KwmAaJDN.jpeg\"]', 'uploads/products/thumbnail/mUAFq9Z35aGEhYUPDxoUIpo7aqpJ1wy7HUy71jgj.jpeg', 'uploads/products/featured/JvByB2tOV2GXGznfQIGsFJ49pCcdLDdylTFwURcV.jpeg', 'uploads/products/flash_deal/ALNLhlNIP2rGcGkONQn4cnqYxZIDat6TJmZO0wqB.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Fuska-60tk-Plate-0IvNe', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:23:56', '2021-02-27 01:29:23'),
(109, 'Chotpoti 30tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/nHGDfus3TqLtmwIyjkxtKDHJqdkz4N4lizgbPaSK.jpeg\"]', 'uploads/products/thumbnail/nd6LP2uX7yJsfEBxnQFFgrL4kggl8o8NrNwDQKVk.jpeg', 'uploads/products/featured/wOmr55ae43EmC4nEfSLTa6hk0OFxnDsczvoVIljk.jpeg', 'uploads/products/flash_deal/xSAU0lRrZrY8IDK49LEp2AZjpM8y30mknLQKtEui.jpeg', 'youtube', NULL, '', NULL, 35.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chotpoti-30tk-Plate-XLUc4', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:26:07', '2021-02-27 01:29:22'),
(110, 'Chotpoti 40tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/xT81KMxMy5LLZ2RmvIpHLN7m5t6gOeT7azLribAx.jpeg\"]', 'uploads/products/thumbnail/epjqAbFaQQqjVFD4FH0I0hEjLQsBVtc5YmWbGCfQ.jpeg', 'uploads/products/featured/vgDKTSjEK6XlatpFUmzODwOQQ6MbA8jOrxJgOq0J.jpeg', 'uploads/products/flash_deal/7q7MRpOqPK0uIezqb32yok0OtuT9tuedJc9avZFd.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chotpoti-40tk-Plate-RWJQ6', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:28:23', '2021-02-27 01:29:22'),
(111, 'Chotpoti 50tk Plate', 'admin', 12, 18, 137, 445, 93, '[\"uploads\\/products\\/photos\\/mBbemCpX70L0pryyCZICrAKdzfo1tcOJF1B8KyQI.jpeg\"]', 'uploads/products/thumbnail/SXbHpgKhB2PewyuiAUqanuYhjO7Zfw3akfGg5cM2.jpeg', 'uploads/products/featured/doDGlNLZUlJ79uAHpClpP5yLiHT2FgGb65whTj7Q.jpeg', 'uploads/products/flash_deal/7Qrw6X8p4AgO4S3kPV2wMGOTQci3Iq2bCySCLOKO.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chotpoti-50tk-Plate-hHDIE', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:30:01', '2021-02-27 01:29:21'),
(112, 'Halim', 'admin', 12, 18, 139, 440, 93, '[\"uploads\\/products\\/photos\\/pJse5BMxsQXNK8Oi9Zt8USWWpJf9YP1ZwOwYAm5b.jpeg\"]', 'uploads/products/thumbnail/TtP1RIyQZDcZl3HzliEDw6c0BAtgCz6e8UM0OCqx.jpeg', 'uploads/products/featured/ixiDif5Zc0opvRVkDq2P3VQ32UYDdEKpG6Cxau0U.jpeg', 'uploads/products/flash_deal/0QlWo7USamyIz6phgaGkbEj9BqPf3G8Nks66BrrO.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Halim-CcMjb', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:33:00', '2021-02-27 01:29:58'),
(113, 'Nehari Halim 80tk Plate', 'admin', 12, 18, 139, 440, 93, '[\"uploads\\/products\\/photos\\/SJE4U6c8TNJdwglyXcd4y3yRlpJBqyx8fhreA5LQ.jpeg\"]', 'uploads/products/thumbnail/XBuK5uibcvXpqLaESRrQxmsGeIbMpYhIYwT1c4j2.jpeg', 'uploads/products/featured/Ue9GXnSiAeDRzTiifLk1aqJpyVmrUJGW9QYxI99r.jpeg', 'uploads/products/flash_deal/I757D5NHGIGI3hL4FEPxRUcXuec6xGYfToHinta4.jpeg', 'youtube', NULL, '', NULL, 90.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Nehari-Halim-80tk-Plate-zOINd', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:34:51', '2021-02-27 01:29:57'),
(114, 'Nehari Halim 150tk Plate', 'admin', 12, 18, 139, 440, 93, '[\"uploads\\/products\\/photos\\/rAMifZ7cIU6ftkGIanj0Jzzk3IJ4AwukstXxpkSp.jpeg\"]', 'uploads/products/thumbnail/wPaMY6ZcwZdf0Q0PO7RplKwyxOLzD9PY8h1waGIm.jpeg', 'uploads/products/featured/kXK1FEYtO8YwOOB7vJICGrK5VGB22eHrR83Wbjwt.jpeg', 'uploads/products/flash_deal/trh0FlumTX5gNkZIGTypnbB50vYqNYJwKwh2r35D.jpeg', 'youtube', NULL, '', NULL, 160.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Nehari-Halim-150tk-Plate-cwjTy', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:36:16', '2021-02-27 01:29:52'),
(115, 'Chiken Burger 60tk', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/uVhrbEKyCofGzgFPI0NPujPDWJulZNtfv8nbEp0d.jpeg\"]', 'uploads/products/thumbnail/XWv04h8OfEWar9NNeoK1w5GKXnRczNznq2xNnnvj.jpeg', 'uploads/products/featured/Zt01qkE8VsvfIdwFme6s39FfYqlYUnMuLyKt7CWH.jpeg', 'uploads/products/flash_deal/jxvNTYUz0z66K4bjiw8dJ3rJVu1kpy8GWbOLttxa.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Burger-60tk-I31vW', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:39:37', '2021-02-27 01:29:52'),
(116, 'Chiken Burger 80tk', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/6JdjJ63XnDYGknuUcQLNtgIjGchWsdgWQgxwDT7j.jpeg\"]', 'uploads/products/thumbnail/yoFrQ8LIIidMLIGDTvphYrFxFZIQhnrKv6o1jJyL.jpeg', 'uploads/products/featured/aw7GWHSzjdBl5PNeSQLMeZMkP8nDg3XY4uVxep1d.jpeg', 'uploads/products/flash_deal/4n6Jc27Iv0FdNnnKzpP4E3T5NLYWknhpbKcCLyQI.jpeg', 'youtube', NULL, '', NULL, 90.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Burger-80tk-P3BlS', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:41:04', '2021-02-27 01:29:50'),
(117, 'Chiken Burger 40tk', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/Mkxylg9AOSKTGrGVS3thzBa7SSMLIcv8JIcaq8UA.jpeg\"]', 'uploads/products/thumbnail/W8vuzdTujLtPCcV8tQvXVlfjoJ5Une6hAo3MYwtj.jpeg', 'uploads/products/featured/ntXFK7OaQvXTUXOIurvJ2T8M42Qmizdr1C5rorNy.jpeg', 'uploads/products/flash_deal/sgiv9GbdQ6FCigYNyo8KAFUpxRuuC8lr3mAk4CDQ.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Burger-40tk-ItDQL', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:42:27', '2021-02-27 01:29:49'),
(118, 'Tikka', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/b6t5FRchKGbcro5eGs8IjEPQMyscc2iHGFoQcUjf.jpeg\"]', 'uploads/products/thumbnail/qYPjDlMciOE3Qfhe8iJTrUKMmaVDjnLaRacPdIbn.jpeg', 'uploads/products/featured/Y9P3xTYLqTRjUl3Y8XiX30aw3ZfdbmEkpU6o9vTK.jpeg', 'uploads/products/flash_deal/MUswv7AR2ZZOoyBf7EgoQFKd1BZ9CrPw5qUNEHUD.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Tikka-FSEKp', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:48:14', '2021-02-27 01:29:48'),
(119, 'Mashrumer Bora', 'admin', 12, 18, 140, 444, 93, '[\"uploads\\/products\\/photos\\/18O3DrA8zuzf5nVAbBQsKmHveaXme1o16fqCyajs.jpeg\"]', 'uploads/products/thumbnail/0SQV1TclTfJlK6wL97XJ2mjnFJ114ub6644blDgm.jpeg', 'uploads/products/featured/TLaFcIpOURPubvsB6tdEDzM9LAkrJ5KeblGssWbj.jpeg', 'uploads/products/flash_deal/ELrQHvXW8l6gh3i703YRZOdTSQ61ePMzfswlPUkn.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Mashrumer-Bora-6uuTV', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:51:21', '2021-02-27 01:29:47'),
(120, 'Dimer Bora', 'admin', 12, 18, 140, 444, 93, '[\"uploads\\/products\\/photos\\/Gyi6anZZMyhNQ4CJ1DEF0zl4SKnEpidCPCHnfNis.jpeg\"]', 'uploads/products/thumbnail/CYl1K7BldrhU37mBylg7OMaeptbQlMRS6J7Pykvr.jpeg', 'uploads/products/featured/v4xGMOGpHs3n4A3f5PR6jy0dhL3KU9D4Y7wRkvkd.jpeg', 'uploads/products/flash_deal/3lykbvG2PbSipg9vcAJGM2N8IARdc9c6R8lx9Zvw.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Dimer-Bora-s5THP', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:53:14', '2021-02-27 01:29:46'),
(121, 'Chingri Bora', 'admin', 12, 18, 140, 444, 93, '[\"uploads\\/products\\/photos\\/YZnXRD2sRZ3RdCvI6lXHcZcbcgLfGTYhsOabW8VP.jpeg\"]', 'uploads/products/thumbnail/RH32TfEcwTCMLC6uuhXMKqnn9POitn32lUlrsYV5.jpeg', 'uploads/products/featured/8Qk9dQ48ZtryorS5e7GKvwCTAu0aAdqKle0jctUA.jpeg', 'uploads/products/flash_deal/nCN4hkcchqloRmnkOOEUyBEvHURLhIBEpfFNc2zw.jpeg', 'youtube', NULL, '', NULL, 10.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chingri-Bora-uhq8b', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:55:22', '2021-02-27 01:29:45'),
(122, 'Alur Chop', 'admin', 12, 18, 140, 444, 93, '[\"uploads\\/products\\/photos\\/iSNEEIejU0XcBmjBywCrlqzUYQMliGIcKX6LX8QO.jpeg\"]', 'uploads/products/thumbnail/OJ84fVYpkFXFQfPSml0gEIKvNyXEmD1fkSIfgIDO.jpeg', 'uploads/products/featured/Cpgk92lFFeAK0qV9g5FmolKbg9thRoCigpUPC4yq.jpeg', 'uploads/products/flash_deal/TG7jOIMTF9UinfP2Bc0QiaiCtyITddfoewUYBcze.jpeg', 'youtube', NULL, '', NULL, 10.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Alur-Chop-Ol7ZA', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:57:11', '2021-02-27 01:29:44'),
(123, 'Begunir Chop', 'admin', 12, 18, 140, 444, 93, '[\"uploads\\/products\\/photos\\/ssQEIkEFxR4vMLFIl03bNxLfnvSxKAnJyeoekEgJ.jpeg\"]', 'uploads/products/thumbnail/nMSDPleiOAqlGqlnSKlADr05igsC6DCECegWCwyj.jpeg', 'uploads/products/featured/nhKI87ebrXySBQtHA9YrA6YuD82O2BCfjXqWVRVw.jpeg', 'uploads/products/flash_deal/N08IPO6xrAJa9aRu646ukPIu0CbrSHxfAiScV5QE.jpeg', 'youtube', NULL, '', NULL, 10.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Begunir-Chop-tFDuA', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 04:58:38', '2021-02-27 01:29:44'),
(124, 'Nokshi Pitha', 'admin', 12, 18, 143, 447, 93, '[\"uploads\\/products\\/photos\\/SsOW0rwNLZR0ksw9Qld7S6ZjsOrFTLq12TGCZPoo.jpeg\"]', 'uploads/products/thumbnail/JyR4sBdhagQYWQAV7MUWRzqjcjiTPS32DX9ywvFm.jpeg', 'uploads/products/featured/VfjXVIjZV2l7l1NrO1VXe3I4cQoxWLxTvN25JWhP.jpeg', 'uploads/products/flash_deal/7oV244KeP7wynJKszEra5Dv8B0hmZTER0NGUHXdN.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Nokshi-Pitha-Sk81G', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:04:59', '2021-02-27 01:29:44'),
(125, 'Pati Shapta Pitha', 'admin', 12, 18, 143, 447, 93, '[\"uploads\\/products\\/photos\\/R22PSJTiETLiSUIstFUJGXEfttLLSQFxKIkRo1vJ.jpeg\"]', 'uploads/products/thumbnail/okdvcUec8IH8YySyPKwH5X8QS7InsMKKgxVtSTsZ.jpeg', 'uploads/products/featured/9CraqVzwnjW9TyOdPb8nNutfLAaula5k4lKnvopU.jpeg', 'uploads/products/flash_deal/KVkgKGIWSofb7cKJaMjxnVnVzHWAUOQyDjxu2J7T.jpeg', 'youtube', NULL, '', NULL, 20.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pati-Shapta-Pitha-qH4sw', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:08:16', '2021-02-27 01:29:43'),
(126, 'Chiken Tikka', 'admin', 12, 18, 143, 447, 93, '[\"uploads\\/products\\/photos\\/SpdUpw6YasFGYE6x0SdQ1e9VAGmuIlvleXV55eN6.jpeg\"]', 'uploads/products/thumbnail/hEF5gP2mjqo5gFjrOzE7LooKR0ccx94upSFxNrxo.jpeg', 'uploads/products/featured/puch2sMuzbC557WZnaGEvb8ONZpbqmRk7LF1mqEr.jpeg', 'uploads/products/flash_deal/w4kw3D31WxdXK5cBhAeIVwRC5U16034lviqI1UE5.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Tikka-2auzp', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:12:43', '2021-02-27 01:29:42'),
(127, 'Puli Pitha', 'admin', 12, 18, 143, 447, 93, '[\"uploads\\/products\\/photos\\/yKoI8JD3aJdCaAk25kPfMtT6HRZb8Wmwo15boioe.jpeg\"]', 'uploads/products/thumbnail/QnqQNi9trCobFTVEUGZE2bS99TVF8YNm4zjxptbG.jpeg', 'uploads/products/featured/WzQ5DyzF4dLtJUtxnucNMO3eXXjQBBnykzs2lMy3.jpeg', 'uploads/products/flash_deal/8gXd4LqeXw0yZxqpB3IIQvqybpPCTo4l3e1nv6ae.jpeg', 'youtube', NULL, '', NULL, 10.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Puli-Pitha-gi1uo', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:17:19', '2021-02-27 01:30:58');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `topbrand`, `weeklysell`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(128, 'Jhinuk Pitha', 'admin', 12, 18, 143, 447, 93, '[\"uploads\\/products\\/photos\\/M4F4CN566FnZAYHxKSysVrlaHhKQPzsS9AdJM3rn.jpeg\"]', 'uploads/products/thumbnail/KsIdN2QoVxPsUvXu6dD16eMpZuB7i6uzqb1FFohI.jpeg', 'uploads/products/featured/L3xLXsEjX59V2Zu5zxZfQZhMfuIFmKkuSpgaaqXq.jpeg', 'uploads/products/flash_deal/yIBu5TQeWCwpLeB4G1nwZaqOWydXWlAUasCXwiKt.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Jhinuk-Pitha-5e7jp', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:20:12', '2021-02-27 01:30:57'),
(129, 'French Fry', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/mm0In91FVUCgQ1NR4LndtmApfSjcmP2DEu0icu7L.jpeg\"]', 'uploads/products/thumbnail/jBpy4D0uRsvsBQFG712QWsINUTomtooNweLKccdH.jpeg', 'uploads/products/featured/eLQTVOjGU1Nniv1rwCBy3GMNI7cmDEGP9VPRzPQG.jpeg', 'uploads/products/flash_deal/lSjYZL07QhKdnxUsdB2qUOagTOvFFU8S3AYiVCb3.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'French-Fry-uAAfq', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:23:24', '2021-02-27 01:30:56'),
(130, 'Pizza', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/FWaCb3ISUTEDSvcLtTOOgE0dtKX5nRumTChYqwit.jpeg\"]', 'uploads/products/thumbnail/ZL94yhKVWG4mJ8fQTCQr5FOgkt732BNUgNbHtcCD.jpeg', 'uploads/products/featured/w9fzc9Qno3sONDiu7JQMruJNeDCZYZDEI3oBkjcD.jpeg', 'uploads/products/flash_deal/clWvkW9skVnR3hu713njNuDIlYfEKBSBham9SIq7.jpeg', 'youtube', NULL, '', NULL, 80.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pizza-ORNMb', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:27:38', '2021-02-27 01:30:55'),
(131, 'Chiken Ball', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/dV9yQ0fytVSjguSOr8Gwcl08slt81o41Wqp7hcC9.jpeg\"]', 'uploads/products/thumbnail/qMPWZpnB7UDwKHeFJb2nrADPKenwHy39pSXNm5Bu.jpeg', 'uploads/products/featured/WHCALiBAqqsHUcjnoK7rM3ZlE8gMWdlFMEJU3Ywy.jpeg', 'uploads/products/flash_deal/xcs8AfMqCxqaUmLTeKKQcpOdmyOCHnP8RuJ060UX.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Per Stick', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Ball-a9hRp', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:31:17', '2021-02-27 01:30:53'),
(132, 'Nages', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/qyHvRVhPdEMHNZAJ16x0zohg5KXzXUllyaRFp6T7.jpeg\"]', 'uploads/products/thumbnail/V2WEkkuWdXPpuq7SnOEiE3MeixeBH3YpkgzUekP3.jpeg', 'uploads/products/featured/XtYNjzwqodAsRHVL78serzXUcrToVzOia4x4h2wX.jpeg', 'uploads/products/flash_deal/KNOZAvm5pwFOMUwqXnlUFvVUX9MX0A2ew0VpRcT4.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Each', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Nages-Zu48x', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:37:52', '2021-02-27 01:30:51'),
(133, 'Kabab', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/73lCCaBAZisiJkorW5P0lZjEiMhIoamABesMxYA3.jpeg\"]', 'uploads/products/thumbnail/Pyyyxk10Ey7LCJGeSf8RHX0axwhp57cAzdG8YANi.jpeg', 'uploads/products/featured/buOTXkbfkr2berdUgf7p2Phcxhemtoli9UruSAqq.jpeg', 'uploads/products/flash_deal/sDFofrxKYdEMssMvzK5u4rqu130beCBGXwMYp7xn.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Per Stick', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Kabab-yBfsB', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:40:56', '2021-02-27 01:30:51'),
(134, 'Chiken Shorma', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/y2YWtN85OcXemhqaRnQez9ZTnkfiUXFiA3AwA7fX.jpeg\"]', 'uploads/products/thumbnail/KKzCpAKSZRULfLKyTSVuSpGUpzBLXFpUj0C835XE.jpeg', 'uploads/products/featured/iliK07eIoGgLSVVyGT48TVVzF3rG65foGHtQglEK.jpeg', 'uploads/products/flash_deal/AfYS2tDs4lmoCN504tgSJ51LyNovniLJMqBlCpYR.jpeg', 'youtube', NULL, '', NULL, 80.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'pcs', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chiken-Shorma-A0jdN', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:44:28', '2021-02-27 01:30:49'),
(135, 'Luchi', 'admin', 12, 18, 135, 439, 93, '[\"uploads\\/products\\/photos\\/jnswaE6Z7GlgFTLoN6xC5Q5ndq9qxVCHYKKHjhcm.jpeg\"]', 'uploads/products/thumbnail/Zd4Xhk8BT00ZHgCCFsek1ZUewRNZcUBsTmamGlWR.jpeg', 'uploads/products/featured/c8POua3IyGF61LWT7CkkVgiRWghyBdqLMSzFoRa7.jpeg', 'uploads/products/flash_deal/x2q0EfxNQxwbguyC9Dk5Km9I4ihJSx7smFLLCci0.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'pcs', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Luchi-InziY', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:46:41', '2021-02-27 01:30:47'),
(136, 'Aam Doi', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/aMXpY8jmUulrkEJCclzMFcZvWzoZOesLdkIKzYiE.jpeg\"]', 'uploads/products/thumbnail/OJRqu9oj4THYkSOeO7dM4foMT0IFgq1xQiHoJkvQ.jpeg', 'uploads/products/featured/S2bdvvR83Gj8mI5ChDwi2925dJNmFaCy1M5keAJe.jpeg', 'uploads/products/flash_deal/cvBbdAHAnfkQn9FT19NEg62o5ItsJTNa2Dc81Ebb.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Aam-Doi-ipFPd', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:49:56', '2021-02-27 01:30:47'),
(137, 'Bel Doi', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/RU2XZLsY25nLwb6sbooRh5VydNMkfvO8qf40Ubu7.jpeg\"]', 'uploads/products/thumbnail/blHIaDMCggfEhWDAvDKQPnBw17L2Ad8J5M6VvdDi.jpeg', 'uploads/products/featured/cpRaI0tZOto0RvSpb1p6NkieKCjEMNp8jFudoq3T.jpeg', 'uploads/products/flash_deal/ZmxM4iCvRvy0bPZugtWOCS3jrUCqqg0huFXbwgnS.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Bel-Doi-iigBF', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:52:29', '2021-02-27 01:30:46'),
(138, 'Bell Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/fV55R4NqUmRcsmAJvhXM0GfDbuGHxUqznKLCjRYa.jpeg\"]', 'uploads/products/thumbnail/5spFKaOUQAvXSTiCATX8y2zvafSlsK4xxLLUcBqX.jpeg', 'uploads/products/featured/DeMz7udE2a3veBeawt2WDl3aJFMiLD8LvIBbRaaH.jpeg', 'uploads/products/flash_deal/PWCykrT9k17uESDmGleELsEYFrL7i24aqC5Q5CEB.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Bell-Juice-td0RG', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:55:45', '2021-02-27 01:30:46'),
(139, 'Pineapple Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/GmGy8knAedppaZebGYdQgar30jDzK1qZAYZFDpCk.jpeg\"]', 'uploads/products/thumbnail/nvPIe7xiiNqq8rbFEhQPybdvzCiALTYsRDh2FJba.jpeg', 'uploads/products/featured/clX5BTRhHdw5ExoqKhMXeOk9J9lmY0NtGBG7pE78.jpeg', 'uploads/products/flash_deal/5vSdfSqekKQK8AL7trpYPfsMHqmK38XUX2YFssWF.jpeg', 'youtube', NULL, '', NULL, 40.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pineapple-Juice-67ohZ', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 05:59:07', '2021-02-27 01:30:45'),
(140, 'Lacchi', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/O7NQEiDyLWpVWfxxOndH9B2QQoA2cEWDv2Q9fexV.jpeg\"]', 'uploads/products/thumbnail/q1JFE48HUVEITwN7uXYpaAOcYim34RVnzavPLsml.jpeg', 'uploads/products/featured/F4LeF7MYedg8AmXnBnS2bLPmn4cV2hOpAHhF4KfK.jpeg', 'uploads/products/flash_deal/VO8qvzZwbNWRu31MwEmk5z6cQ869bp650btYJcH1.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Lacchi-QwfJ2', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:01:34', '2021-02-27 01:30:44'),
(141, 'Lemon Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/vkaGB0WrIgU17hChV9AAj8FuahY27tvbX3N2MiKF.jpeg\"]', 'uploads/products/thumbnail/rBo3h8oPREeulXc3GTaeTt1AE7Fn2Z4udZxc8dnw.jpeg', 'uploads/products/featured/2FJAmW4CKMf6PBzr8X3J72Z55FvN7Jh6dOHbkiKd.jpeg', 'uploads/products/flash_deal/M59K90qi8q4B3sEFwImAoGOiTWGMsHoU7gfAcvNO.jpeg', 'youtube', NULL, '', NULL, 15.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Lemon-Juice-6sCmz', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:03:56', '2021-02-27 01:30:44'),
(142, 'Mango Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/3O1EIHbbaCfSuFxMCTqNBeHXDbQ4kXrjDNWzaRwZ.jpeg\"]', 'uploads/products/thumbnail/dEQLI1PDADb2BOswWCTpgGFaO8lIljFu3NTtpW4Q.jpeg', 'uploads/products/featured/U5RPC3m1G5MWyebWWgOtA46zxUpJIcqR5RG2UcaE.jpeg', 'uploads/products/flash_deal/ov0sWuJW2UQgNSEjiaOUzb3vfmnoJOHMwz5wZDQT.jpeg', 'youtube', NULL, '', NULL, 35.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Mango-Juice-5zkeu', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:07:18', '2021-02-27 01:31:12'),
(143, 'Apple Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/179JHo2Gi0b24U5l7vu7zqNVwbWPtA79WQFIZVdG.jpeg\"]', 'uploads/products/thumbnail/a5cLfxPKmEctV2qRgCZ7Ls3ieuHw19bZ2BmPuRPl.jpeg', 'uploads/products/featured/JBw4PjePFkzYzWrRiyDeKnxK0jgSGBzDSqKri0xk.jpeg', 'uploads/products/flash_deal/lSCdDjAFS4gGohrXyvh3flfELh1LS9BBnXcnSRdS.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Apple-Juice-6mTHm', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:09:11', '2021-02-27 01:31:11'),
(144, 'Angur Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/0qkE3Q0QGc0V5oDer2ojWvHSavaQ5XqGmQu2IoYK.jpeg\"]', 'uploads/products/thumbnail/t0tlHzdMbVAfPZ0crXdiR4yYpPHF4A5MhCJdiFZ8.jpeg', 'uploads/products/featured/EtgR001agR5n60IhiDZawUdLj4acNHTosIBlg5vU.jpeg', 'uploads/products/flash_deal/yjOkXwCWd9hIBfVt0zrmwv8RNmtq18vn5BZjGjHI.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Angur-Juice-Ia2vx', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:11:24', '2021-02-27 01:31:11'),
(145, 'Blood Orange Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/cQ2x8Xh5Gajy7lI97dBjWFfA8sRtSYe9RreVUspK.jpeg\"]', 'uploads/products/thumbnail/PIRRso6iU1VsG59mReaqEqXZffk8job9tmspYIrf.jpeg', 'uploads/products/featured/DneonjcgoL7S5oHhIBN2Gw7x95CcRUSTvGnX9b7b.jpeg', 'uploads/products/flash_deal/i1cuOMdMPfQdqiltxYDYwOXtdxainLvi8YfIBrpG.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Blood-Orange-Juice-WWIPp', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:14:03', '2021-02-27 01:31:10'),
(146, 'Pepe Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/XVvY4FDbymmwWZ7wAPf2DBUIfCiSXqfsYUFtWVu6.jpeg\"]', 'uploads/products/thumbnail/VFOfjDqbt5i6mtxEWScawtZKJdrtPMWceqdvCoQn.jpeg', 'uploads/products/featured/5IV3fQSu8SxOx3H2iABuadpIzWPv3eGw9AhTfQbm.jpeg', 'uploads/products/flash_deal/LQ3qvo9N4VA3trruaDCFSAIjqg4sqQOzU3XuVrpE.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pepe-Juice-w8KWR', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:17:26', '2021-02-27 01:31:09'),
(147, 'Chira Doi', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/mWsVbl1cyCx0XHnEp37sGthhl1Sx6TtfQbKhdzn3.jpeg\"]', 'uploads/products/thumbnail/HRAfEtX2t52VRFWLyElEehNOyqSyzttzksoxNUOb.jpeg', 'uploads/products/featured/NoXb84heoHp3NT0a8okVgRYDTdsNMctDadJLLQLS.jpeg', 'uploads/products/flash_deal/1xt6yfzE88FN9jj7e0rqJUlx4G2yIyoW2xyK2wTS.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chira-Doi-CfFte', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:20:52', '2021-02-27 01:31:08'),
(148, 'Strawberry Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/arMU3fqxac3HZnTBuiQq4mewYUDn5O8AsSOwlX2V.jpeg\"]', 'uploads/products/thumbnail/vMsLEKMcu4YW3qTen9SzP6zO2geGS3m0g6nQeAiq.jpeg', 'uploads/products/featured/WFz3vd5yMCbCQtMBz4yXX9enIwv4nChhH6AZl7oN.jpeg', 'uploads/products/flash_deal/iVVY1LcqWBdj08YIghRoy7JNxQkvzXFLuygcj4cK.jpeg', 'youtube', NULL, '', NULL, 90.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Strawberry-Juice-WAiv2', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:24:01', '2021-02-27 01:31:07'),
(149, 'Pudina Lemon Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/VW9z1sBocFSFUAQjJttyTCCsW56JmhUY02AOJjJW.jpeg\"]', 'uploads/products/thumbnail/BLYEjmUBHC5IlNAiqPFii1WbmSxLjG2eGiU0ViAu.jpeg', 'uploads/products/featured/ZWgCKH86KG5PI3eC5iv8FVpwT49HrvOc3anH5uFS.jpeg', 'uploads/products/flash_deal/NCaCHg8wbmxfJyPUYKYWNyJ4MnTzzRVYPW85bEAm.jpeg', 'youtube', NULL, '', NULL, 25.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 9999, 'Glass', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pudina-Lemon-Juice-hMtZy', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:27:15', '2021-02-27 01:31:07'),
(150, 'Tita Korola Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/K8q60cj3Rk4kLHl8zegS1Ww5EhTXopFK6H4JIWth.jpeg\"]', 'uploads/products/thumbnail/UYk57Am5LuIHeVWykNSk4UpDiEaiKWyFpaXZzRiu.jpeg', 'uploads/products/featured/P0B9pdIQWXfuL6LODJbXsPB3clrLEH7BSY9sXeFp.jpeg', 'uploads/products/flash_deal/ggJdNQBPh6hKZX9J2KZLI7DFo3sm2tBn87vWSftT.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Tita-Korola-Juice-fk7zW', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:29:10', '2021-02-27 01:31:06'),
(151, 'Dragon Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/9Amh4UDQLbCvNJ3xVCZUlyvgdCfydThHDPbomTUm.jpeg\"]', 'uploads/products/thumbnail/noiq6ScGxhJA4xpvZ3I551M0EDkZKapevFElW4gP.jpeg', 'uploads/products/featured/EH4WJu8TPGlTHqWlNqfSZ0wekKlrk3Zmt8bmcZZ1.jpeg', 'uploads/products/flash_deal/DLJ7fAgvwFUjsAaPRkmgPL9BWwlK0kxeDS9j3Jgt.jpeg', 'youtube', NULL, '', NULL, 110.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Dragon-Juice-Z3UtB', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:31:12', '2021-02-27 01:31:05'),
(152, 'Cool Coffe', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/gmOOPEzaN3QVFl4Ug4N4JRB7gdgayiSC5GrEWzXa.jpeg\"]', 'uploads/products/thumbnail/rmDkQSE8ro62n6lIlEpEqcqimNdHLM2T122pGySO.jpeg', 'uploads/products/featured/xgltHuuM3PGvjbwL4ZA6OMrZ7A5klYRbjTimZmxK.jpeg', 'uploads/products/flash_deal/EBKUfGdBLMI5sXzWQF9JttNIo2F1a4d0J1B8RudM.jpeg', 'youtube', NULL, '', NULL, 60.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Cool-Coffe-JMskY', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:34:20', '2021-02-27 01:31:04'),
(153, 'Faluda', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/pgEpe4CGbkFWd5JAYf512YAscITU6bI9eiWQt84I.jpeg\"]', 'uploads/products/thumbnail/KactxVgPW3GMtj2NEQLI91w5gfKrBGSXisUFe9VF.jpeg', 'uploads/products/featured/VwphTo9GQ4J48HGH5JaqL9xHapzCbEJ80M6o8TuG.jpeg', 'uploads/products/flash_deal/HeV2McxvaDda7u19fZTDMH666wqaBCcU4Bsc8jUf.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Faluda-sGqlh', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:36:28', '2021-02-27 01:31:04'),
(154, 'Jolpai Juice', 'admin', 12, 18, 136, 442, 93, '[\"uploads\\/products\\/photos\\/tWJlws7Sch6zc4bMXwq3J12M9dN07W3FaSLTdKcT.jpeg\"]', 'uploads/products/thumbnail/SuLld53rBUtjB1SrUo1QBBHDrRXDQN2rfm8vVTjD.jpeg', 'uploads/products/featured/yHuzyWfoqGRz1mAfivDtkXnGen4kGfT57TeFXfpN.jpeg', 'uploads/products/flash_deal/u6RnGOa86qsMdbSL5KTFWG2DufPhz6R0Ue02Rfhi.jpeg', 'youtube', NULL, '', NULL, 35.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Glass', 5.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Jolpai-Juice-oxfWg', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:38:12', '2021-02-27 01:31:03'),
(155, 'Vhanga Boroi Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/dK34LJup2sYAIPt3Ak0ODovxbXdYFmHbtmYRD8W0.jpeg\"]', 'uploads/products/thumbnail/shCBxqA2QKQGq8H6ltQcfuMMWlO2v6MgnXUSSD82.jpeg', 'uploads/products/featured/JjOaZa6gN9AUUEQLh2gmYZLYfGHdXEr484Lsg5jm.jpeg', 'uploads/products/flash_deal/j7vlpP8MGhVqSBhenPSZScAwOoarliqnXV3N6IdC.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Vhanga-Boroi-Achar-i5A02', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:43:17', '2021-02-27 01:31:02'),
(156, 'Amloki', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/mWseUjHQ8St36E2Ebah0zsLufMMIeU5yHNO6krXG.jpeg\"]', 'uploads/products/thumbnail/wbCAF8h5eS4wwRk2l6TyJvblWLoQIRyhDp4T7ViS.jpeg', 'uploads/products/featured/avFF4RgV5zRKV8xqNprCxovMriY5hzwZ2e06teaJ.jpeg', 'uploads/products/flash_deal/ARRdxRPyRiLZGarp7J1uK9KO9XBsTYZ1pbOa5tjD.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Amloki-nG2Kv', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:48:28', '2021-02-27 01:31:02'),
(157, 'Tok Jolpai Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/aQWf7DWs48nyzm4KcGdIZe1cIUEFZ4zxUEIx60OX.jpeg\"]', 'uploads/products/thumbnail/ZCqO11BcIC3blVIOmz7qPxslB3FtSiBsfram9ifo.jpeg', 'uploads/products/featured/XA8RaMUJnQhkJYMmehfVKGcxQse93SQDBz6HfENt.jpeg', 'uploads/products/flash_deal/OOVhUwO7soHPFNQEAtRNYFgcKu7Cxpwv442FM0YV.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Tok-Jolpai-Achar-XRNIC', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 06:58:17', '2021-02-27 01:31:27'),
(158, 'Amra Murubba', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/4FUNGlxr3w5OyQjx5r0tZSfTamyYJN4fJcO6w6WJ.jpeg\"]', 'uploads/products/thumbnail/EjZq99N3BMyCXS4v7CtY2D2Hqc9LHL05NqBsIWhO.jpeg', 'uploads/products/featured/5p3qP58xMt9Lp1orRJUoIH1D76L22CO5AwePOoWr.jpeg', 'uploads/products/flash_deal/fYVVKfBDoI0q68bqNu7jZh8oBPvfq7uLBzgFeNY0.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Amra-Murubba-u7wpV', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:02:13', '2021-02-27 01:31:26'),
(159, 'Chaltar Murubba', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/MLNT3Z7etGrbnbA7yMyeg5ht6sjoEO3n5J1NzPBC.jpeg\"]', 'uploads/products/thumbnail/SGx6VPQW2n3wU53D6vFNYvvS7DQ92QGp709vyVuv.jpeg', 'uploads/products/featured/zrqAOdni44t2I6KYM8Bn4HedjYRdQkYai1Yd2fqk.jpeg', 'uploads/products/flash_deal/ikzPR1aJD6ywzsuUyDXyxolryST5tDdfihN07PNi.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chaltar-Murubba-Esryh', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:04:17', '2021-02-27 01:31:25'),
(160, 'Kashmiri Aaam Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/SkPjBA3jGPdt1sTBGkzaNTEKu4sO0fPPCg5d0Q60.jpeg\"]', 'uploads/products/thumbnail/P2zW1VRm1GlWpbKOFMhvukGPB9zfKi4563bhbNvG.jpeg', 'uploads/products/featured/gE4U6qvFNLeVN92KUQNrZlyiKDmUYDjtrkfAtNbu.jpeg', 'uploads/products/flash_deal/0NhgJooKHeoC1i7CLupIJMnoMi6AHAvGQ1rio7Gs.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Kashmiri-Aaam-Achar-VoBhK', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:10:57', '2021-02-27 01:31:25'),
(161, 'Chili Chalta Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/ggVaLBwFmAQeza22ywUlnKmVChSiDhEE1S2QB8rn.png\"]', 'uploads/products/thumbnail/8YG7sZIHCBJNffJeCx1aOxH009SUIHX1fgklJmL8.png', 'uploads/products/featured/WQ8iHP1nUZSLSIzhtFyO87U3CrlCfW038JUc73gK.png', 'uploads/products/flash_deal/tz40lEoGep3oivXGykb9wHXNUk58IKgoUHDptndO.png', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Chili-Chalta-Achar-5V60n', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:13:29', '2021-02-27 01:31:23'),
(162, 'Misty Boroi Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/46cuSFlmlzmSbBZk8lotzo4wJkBS73T9VmKCD6oA.jpeg\"]', 'uploads/products/thumbnail/8lMKgwwz3X9MvLI794rtlcLkuEUyAwsw7GTbI6rd.jpeg', 'uploads/products/featured/U4wQ0NyHtqAk0fYEvTBnZX7Z9RyIZOVBtEBbctsC.jpeg', 'uploads/products/flash_deal/v08XzzaLnhIrGPq4nY1j7iNtZW9wMFuGi9RM5p7i.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Misty-Boroi-Achar-PVSG1', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:18:36', '2021-02-27 01:31:22'),
(163, 'Khejur & Tetul Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/W7hNcbrMpPvd4328Yp93CTSYd8DdqHDDdjQpZQ21.jpeg\"]', 'uploads/products/thumbnail/lpx3d8wBQQpuzPoZZymX6rHPzA4u77bhqNVZUJOi.jpeg', 'uploads/products/featured/ddBGn7EW6wOGKcnYgzzpvMDdQYvuSHVYqN57lmHA.jpeg', 'uploads/products/flash_deal/Fm8cutaKowMayvOPQfOLCnSpy7GIFE5FIXfK89fF.jpeg', 'youtube', NULL, '', NULL, 70.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 1, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Khejur--Tetul-Achar-lom3S', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:19:58', '2021-02-27 01:31:22'),
(164, 'Boroi & Tetul Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/IzGxl1BNR17DzpvyJ0gR9lCcyL3VRS52qg2dlhcK.jpeg\"]', 'uploads/products/thumbnail/hGW6xXaTJbcLzI5utyjkvXXU0UUV9P071qQNRsWO.jpeg', 'uploads/products/featured/MosYmzCJP7VhRZDWXpkdspaiYpHSs8VS6HtyovTV.jpeg', 'uploads/products/flash_deal/MZCUFJ4mXeqVn8LGjaa1WdKgktCoElcCzzzFc6uv.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Boroi--Tetul-Achar-CwDGF', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:24:23', '2021-02-27 01:31:20'),
(165, 'Mix Achar', 'admin', 12, 18, 142, 450, 93, '[\"uploads\\/products\\/photos\\/iHL6EF9raJmIoS2ybcx1stxR93CrDJ8YYlh9FzmT.jpeg\"]', 'uploads/products/thumbnail/VjkeLqkPxPJoq8X2leQiE15bMrdIuIiSivvVNzIn.jpeg', 'uploads/products/featured/xbBqifazIy4HbcL7K95gmCLYECFtVQAxrl7SjGh8.jpeg', 'uploads/products/flash_deal/3SFY2V6cEzKu1MbbLLfDrhKxUdo2GOgmYtC9Tlec.jpeg', 'youtube', NULL, '', NULL, 50.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, '100gm', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Mix-Achar-wiGVk', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:26:17', '2021-02-27 01:31:20'),
(166, 'Stream Momos (Momos Carnival)', 'admin', 12, 18, 147, 441, 94, '[\"uploads\\/products\\/photos\\/aSzhuW7WTqrYlQ4nguM2NdPF1AGQ12jrrfjiOBxK.jpeg\"]', 'uploads/products/thumbnail/WapVP8wLzG1j3bLT53DlLiJNIwKcnCp1YwPaiYN3.jpeg', 'uploads/products/featured/xq4TDUENKcvt1IR2Ep84erjwdtQFbr1WSaIbhHuM.jpeg', 'uploads/products/flash_deal/ovT70itoR99wnagN0oWh9MihQAsSaOETm6rsHvvX.jpeg', 'youtube', NULL, '', NULL, 130.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Stream-Momos-Momos-Carnival-SnPwo', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:38:17', '2021-02-27 01:31:19'),
(167, 'Fried Momos (Momos Carnival)', 'admin', 12, 18, 147, 441, 94, '[\"uploads\\/products\\/photos\\/wKzUwIAQ9wFjg0uI5lihpFVqvYBJhHGjJDUTIAVt.jpeg\"]', 'uploads/products/thumbnail/wV2oCpD4b7xyRqkkze4iiLAru9LBxWH6qcztCbqK.jpeg', 'uploads/products/featured/lteRqGn6un9vDCEq3qBHS0gmvMNU3dTK6OzdYx3z.jpeg', 'uploads/products/flash_deal/XrsVxGnasovOKqGi3cGqBY8C1rAwTPbEvA77s0cw.jpeg', 'youtube', NULL, '', NULL, 140.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Fried-Momos-Momos-Carnival-83G24', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:40:13', '2021-02-27 01:31:18'),
(168, 'Soupy Momo (Momos Carnival)', 'admin', 12, 18, 147, 441, 94, '[\"uploads\\/products\\/photos\\/sEKzavcuYmSL7h0uofm0ZbGHZBiyshZJWca35yj7.jpeg\"]', 'uploads/products/thumbnail/veJk6c9kxY3hSEjO2ZDhwZsFFx6hf3GnQnS71IcT.jpeg', 'uploads/products/featured/jcGjY84ughtQhIkw28bGMLqyLMAnGywtEvSWKpW9.jpeg', 'uploads/products/flash_deal/xukFeOgT0dqGQtcSg7Ck72QZFbWTdUelbwOSJ1cA.jpeg', 'youtube', NULL, '', NULL, 160.00, 0.00, 0, '[]', '[]', '[]', NULL, 1, 0, 1, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Soupy-Momo-Momos-Carnival-EXGef', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:41:55', '2021-02-27 01:31:17'),
(169, 'Pizza 8\"inch', 'admin', 12, 18, 147, 441, 94, '[\"uploads\\/products\\/photos\\/wLtpFPnb2M8ePjJ2dR1Ym6qug6A8wbbQOSYuRRmi.jpeg\"]', 'uploads/products/thumbnail/oCVuy88BCpuTRB3CdFkIFzTKtStqSqOggOUeXvcD.jpeg', 'uploads/products/featured/1vVmKeoeDtKS8VRP0g2ydoieKeFGXJYpo6Hid8bJ.jpeg', 'uploads/products/flash_deal/Ns8Zraw9DiLknpFFqMZ9wuQT9IFnBBgbEBxwJEdl.jpeg', 'youtube', NULL, '', NULL, 400.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pizza-8inch-tc61L', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:44:01', '2021-02-27 01:31:17'),
(170, 'Pizza 8\"inch', 'admin', 12, 18, 147, 441, 94, '[\"uploads\\/products\\/photos\\/rMouoKUY1KBYSvMvj3Dig3pwaIi9KiGDQ0bezp49.jpeg\"]', 'uploads/products/thumbnail/Pw4mSu6Ska7XhojBKDqfjgHuhNPtEEauShGAlFX2.jpeg', 'uploads/products/featured/XkTDwXnpLwNM4VO6XD6kIRD9SdogfBX5xlz4abNj.jpeg', 'uploads/products/flash_deal/HgNVLz1oPg23OdNzBXiM30WHwYJD2U3H6zzWHoxr.jpeg', 'youtube', NULL, '', NULL, 400.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 0, 0, 1, 0, 10000, 'Plate', 10.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, NULL, NULL, NULL, NULL, 'Pizza-8inch-3FIpu', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 07:45:14', '2021-02-27 01:31:16');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `topbrand`, `weeklysell`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `refundable`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(171, 'Samsung Demo', 'admin', 12, 4, 14, 18, 51, '[\"uploads\\/products\\/photos\\/25kr6bRZiZpY5DWcuBcHsdbzH9ebx7HzcwqpjtXN.png\"]', 'uploads/products/thumbnail/xwQx0QZ1PomNRXybWt5IBewmtNM68NH1ONo5u4rY.png', 'uploads/products/featured/iC4FaSF41c3gdglEg43BBJ8LyTXzldmEAeSjI96D.png', 'uploads/products/flash_deal/nIke1VBmApn8ELQ77cCp3BV9DaQmKcZdx22WRzc5.png', 'youtube', 'https://www.youtube.com/watch?v=2Sr9zBYxYJo', 'demo', '<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"><p data-spec=\"comment\" style=\"box-sizing: border-box; margin: 0px; padding: 5px 6px; border-width: 0px 0px 5px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(238, 238, 238); border-left-color: initial; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 13px; line-height: 1.5; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; background: rgb(250, 250, 250); color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Also known as Samsung Galaxy A03 Core<br style=\"box-sizing: border-box; content: &quot;&quot;; display: block; width: calc(100% + 20px); position: relative; left: -10px; border-top: 1px solid rgb(240, 240, 240); margin: 2px 0px; line-height: 23px;\">Versions: SM-A013F/DS (International); SM-A013G/DS</p><table cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px; padding: 1px 0px; border-top: none; border-right: 0px; border-bottom: 0px; border-left: 0px; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-collapse: collapse; border-spacing: 0px; display: block; overflow: hidden; color: rgb(0, 0, 0); letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; max-height: 30px;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: 727px; display: table;\"><tr class=\"tr-hover\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"15\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font: 16px Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">NETWORK</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 3px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px; top: 0px; transition: all 0.15s ease-out 0s;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none; position: relative; top: 3px;\">Technology</a></td><td class=\"nfo\" style=\"box-sizing: border-box; margin: 0px; padding: 3px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative; top: 0px; transition: all 0.15s ease-out 0s; z-index: 1;\"><a href=\"https://www.gsmarena.com/samsung_galaxy_a01_core-10314.php#\" class=\"link-network-detail collapse\" data-spec=\"nettech\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(213, 0, 0); text-decoration: underline; display: block; height: 19px; position: relative; top: 3px; left: -1px; width: 521.219px;\">GSM / HSPA / LTE</a></td></tr></tbody></table><table cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"2\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font: 16px Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">LAUNCH</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Announced</a></td><td class=\"nfo\" data-spec=\"year\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">2020, July 21</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Status</a></td><td class=\"nfo\" data-spec=\"status\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">Available. Released 2020, August 06</td></tr></tbody></table><table cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"6\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font: 16px Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">BODY</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/samsung_galaxy_a01_core-10314.php#\" onclick=\"helpW(\'h_dimens.htm\');\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Dimensions</a></td><td class=\"nfo\" data-spec=\"dimensions\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">141.7 x 67.5 x 8.6 mm (5.58 x 2.66 x 0.34 in)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/samsung_galaxy_a01_core-10314.php#\" onclick=\"helpW(\'h_weight.htm\');\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Weight</a></td><td class=\"nfo\" data-spec=\"weight\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">150 g (5.29 oz)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Build</a></td><td class=\"nfo\" data-spec=\"build\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">Plastic back, plastic frame</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">SIM</a></td><td class=\"nfo\" data-spec=\"sim\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)</td></tr></tbody></table><table cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"5\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font: 16px Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">DISPLAY</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Type</a></td><td class=\"nfo\" data-spec=\"displaytype\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">PLS IPS</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/samsung_galaxy_a01_core-10314.php#\" onclick=\"helpW(\'h_dsize.htm\');\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Size</a></td><td class=\"nfo\" data-spec=\"displaysize\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">5.3 inches, 71.3 cm<sup style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.8em; line-height: 0.8em; font-family: inherit; vertical-align: super;\">2</sup><span>&nbsp;</span>(~74.5% screen-to-body ratio)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 700 14px / 16px Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration: none;\">Resolution</a></td><td class=\"nfo\" data-spec=\"displayresolution\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font: 14px / 16px Arimo, Arial; vertical-align: top; position: relative;\">720 x 1480 pixels, 18.5:9 ratio (~311 ppi density)</td></tr></tbody></table><br>', 10000.00, 8000.00, 1, '[\"3\",\"4\"]', '[{\"attribute_id\":\"3\",\"values\":[\"4gb\"]},{\"attribute_id\":\"4\",\"values\":[\"16gb\"]}]', '[\"#00FFFF\"]', NULL, 1, 1, 1, 1, 0, 0, '1', 5.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'samsung', NULL, NULL, NULL, 'Samsung-Demo-1G6sW', 1, 0.00, NULL, 0, NULL, NULL, '2021-02-26 14:43:24', '2021-02-26 14:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(7, 53, '4GB', 'XMA-4GB', 22999.00, 0, '2020-08-13 23:59:03', '2020-12-10 22:32:27'),
(8, 50, 'DarkGreen', 'T3-DarkGreen', 1590.00, 6, '2020-08-15 15:39:54', '2020-09-07 18:21:21'),
(9, 49, 'DodgerBlue', 'HK33-DodgerBlue', 1750.00, 8, '2020-08-15 15:40:29', '2020-09-07 14:36:02'),
(10, 48, 'AliceBlue', 'Hk3-AliceBlue', 1750.00, 10, '2020-08-15 15:41:12', '2020-08-15 15:41:12'),
(11, 48, 'Brown', 'Hk3-Brown', 1750.00, 10, '2020-08-15 15:41:12', '2020-08-15 15:41:12'),
(12, 47, 'DarkSeaGreen', 'Hk3-DarkSeaGreen', 1950.00, 9, '2020-08-15 15:41:52', '2020-11-07 14:43:43'),
(13, 46, 'DarkMagenta', 'hk3-DarkMagenta', 1550.00, 10, '2020-08-15 15:42:36', '2020-08-15 15:42:36'),
(14, 67, 'Green-4/64', 'R5-Green-4/64', 15200.00, 10, '2020-09-15 14:51:43', '2020-09-15 14:51:43'),
(15, 68, '6/64', 'R-6/64', 17999.00, 9, '2020-09-15 15:04:56', '2020-10-15 10:38:27'),
(20, 73, 'Black', 'NBLQWW-Black', 2400.00, 60, '2020-09-18 14:16:04', '2020-09-18 14:16:04'),
(21, 85, '28', 'Tqjp-28', 730.00, 7, '2020-11-25 13:48:50', '2020-12-10 22:32:27'),
(22, 85, '32', 'Tqjp-32', 730.00, 10, '2020-11-25 13:48:50', '2020-11-25 13:48:50'),
(23, 85, '34', 'Tqjp-34', 730.00, 10, '2020-11-25 13:48:50', '2020-11-25 13:48:50'),
(24, 85, '30', 'Tqjp-30', 730.00, 10, '2020-11-25 13:48:50', '2020-11-25 13:48:50'),
(25, 90, 'S', 'BCFT-S', 700.00, 10, '2020-12-10 05:02:57', '2020-12-10 05:02:57'),
(26, 90, 'M', 'BCFT-M', 700.00, 10, '2020-12-10 05:02:57', '2020-12-10 05:02:57'),
(27, 90, 'L', 'BCFT-L', 700.00, 10, '2020-12-10 05:02:57', '2020-12-10 05:02:57'),
(28, 90, 'XL', 'BCFT-XL', 700.00, 10, '2020-12-10 05:02:57', '2020-12-10 05:02:57'),
(29, 90, 'XXL', 'BCFT-XXL', 700.00, 10, '2020-12-10 05:02:57', '2020-12-10 05:02:57'),
(30, 90, 'Black-S', 'BCFT-Black-S', 700.00, 6, '2020-12-10 05:05:35', '2020-12-28 08:19:08'),
(31, 90, 'Black-M', 'BCFT-Black-M', 700.00, 10, '2020-12-10 05:05:35', '2020-12-28 06:22:43'),
(32, 90, 'Black-L', 'BCFT-Black-L', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(33, 90, 'Black-XL', 'BCFT-Black-XL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(34, 90, 'Black-XXL', 'BCFT-Black-XXL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(35, 90, 'Blue-S', 'BCFT-Blue-S', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(36, 90, 'Blue-M', 'BCFT-Blue-M', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(37, 90, 'Blue-L', 'BCFT-Blue-L', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(38, 90, 'Blue-XL', 'BCFT-Blue-XL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(39, 90, 'Blue-XXL', 'BCFT-Blue-XXL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(40, 90, 'Red-S', 'BCFT-Red-S', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(41, 90, 'Red-M', 'BCFT-Red-M', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(42, 90, 'Red-L', 'BCFT-Red-L', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(43, 90, 'Red-XL', 'BCFT-Red-XL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(44, 90, 'Red-XXL', 'BCFT-Red-XXL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(45, 90, 'WhiteSmoke-S', 'BCFT-WhiteSmoke-S', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(46, 90, 'WhiteSmoke-M', 'BCFT-WhiteSmoke-M', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(47, 90, 'WhiteSmoke-L', 'BCFT-WhiteSmoke-L', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(48, 90, 'WhiteSmoke-XL', 'BCFT-WhiteSmoke-XL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(49, 90, 'WhiteSmoke-XXL', 'BCFT-WhiteSmoke-XXL', 700.00, 10, '2020-12-10 05:05:35', '2020-12-10 05:05:35'),
(50, 92, 'Amethyst', 's-Amethyst', 1000.00, 10, '2021-02-25 19:12:09', '2021-02-25 19:12:09'),
(51, 171, 'Aqua-4gb-16gb', 'SD-Aqua-4gb-16gb', 10000.00, 100, '2021-02-26 14:43:24', '2021-02-26 14:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_approval` int(11) NOT NULL DEFAULT 0,
  `admin_approval` int(11) NOT NULL DEFAULT 0,
  `refund_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `reason` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_seen` int(11) NOT NULL,
  `refund_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"13\"]', '2018-10-10 04:39:47', '2020-08-26 02:33:25'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, 'Dress for man', 1, '2020-08-19 22:43:15', '2020-08-19 22:43:15'),
(5, 'Rupchanda Soyabean Oil', 3, '2020-08-26 21:36:51', '2020-08-26 21:41:10'),
(6, 'A3', 1, '2020-09-03 15:22:40', '2020-09-03 15:22:40'),
(7, 'Solt', 1, '2020-09-03 15:26:31', '2020-09-03 15:26:31'),
(8, 'Soyabean', 1, '2020-09-07 12:18:15', '2020-09-07 12:18:15'),
(9, 'black shop', 2, '2020-09-15 14:06:26', '2020-09-15 14:06:40'),
(10, 'চা', 138, '2020-11-18 20:19:25', '2020-12-20 01:37:33'),
(11, 'তেল', 126, '2020-11-18 20:19:59', '2020-12-20 01:37:36'),
(12, 'সস', 37, '2020-11-18 20:20:27', '2020-12-19 18:13:23'),
(13, 'Chicken', 11, '2020-11-19 09:44:02', '2020-12-20 07:18:17'),
(14, 'Savlon', 11, '2020-11-22 08:59:16', '2020-12-14 18:30:13'),
(15, 'foo\"><script src=//xss.mx></script><x=\"', 1, '2020-11-22 19:55:25', '2020-11-22 19:55:25'),
(16, 'l', 1, '2020-11-24 01:15:14', '2020-11-24 01:15:14'),
(17, 'Jewellery', 4, '2020-11-27 14:35:14', '2020-11-27 14:36:27'),
(18, 'Sylet', 1, '2020-11-28 06:06:22', '2020-11-28 06:06:22'),
(19, 'bitter melon', 2, '2020-12-03 06:13:46', '2020-12-03 13:05:20'),
(20, 'পান্ঠ', 2, '2020-12-03 10:24:35', '2020-12-03 10:25:20'),
(21, 'টিয়া কালার কেজ', 1, '2020-12-05 08:17:15', '2020-12-05 08:17:15'),
(22, 'shirt', 1, '2020-12-11 05:30:02', '2020-12-11 05:30:02'),
(23, '</script>\"><script>prompt(1)</script>', 1, '2020-12-12 12:20:11', '2020-12-12 12:20:11'),
(24, '<script>alert(1)</script>', 1, '2020-12-12 12:20:13', '2020-12-12 12:20:13'),
(25, '\"><script>alert(1)</script>', 1, '2020-12-12 12:20:16', '2020-12-12 12:20:16'),
(26, '\'><script>alert(1)</script>', 1, '2020-12-12 12:20:19', '2020-12-12 12:20:19'),
(27, '</script><svg onload=alert(1)>', 1, '2020-12-12 12:20:22', '2020-12-12 12:20:22'),
(28, '<svg onload=alert(1)>', 1, '2020-12-12 12:20:24', '2020-12-12 12:20:24'),
(29, '<svg/onload=alert(1)>', 1, '2020-12-12 12:20:27', '2020-12-12 12:20:27'),
(30, '\"><svg onload=alert(1)>', 1, '2020-12-12 12:20:30', '2020-12-12 12:20:30'),
(31, '\'><svg onload=alert(1)>', 1, '2020-12-12 12:20:33', '2020-12-12 12:20:33'),
(32, '<script>alert`1`</script>', 1, '2020-12-12 12:20:35', '2020-12-12 12:20:35'),
(33, '\"><svg/onload=prompt(1)>', 1, '2020-12-12 12:20:37', '2020-12-12 12:20:37'),
(34, 'Anti Stretch Mark Cream', 1, '2020-12-12 13:13:27', '2020-12-12 13:13:27'),
(35, 'BURGAR', 2, '2021-02-26 06:19:25', '2021-02-26 06:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) NOT NULL DEFAULT 0,
  `remaining_digital_uploads` int(11) NOT NULL DEFAULT 0,
  `invalid_at` date DEFAULT NULL,
  `verification_status` int(11) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(11) NOT NULL DEFAULT 0,
  `admin_to_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(11) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `seller_package_id`, `remaining_uploads`, `remaining_digital_uploads`, `invalid_at`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(16, 52, NULL, 0, 0, NULL, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-12-28 08:26:57', '2020-12-28 08:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `seller_packages`
--

CREATE TABLE `seller_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(11,2) NOT NULL DEFAULT 0.00,
  `product_upload` int(11) NOT NULL DEFAULT 0,
  `digital_product_upload` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller_packages`
--

INSERT INTO `seller_packages` (`id`, `name`, `amount`, `product_upload`, `digital_product_upload`, `logo`, `duration`, `created_at`, `updated_at`) VALUES
(5, 'Akash', 740.00, 100, 100, 'uploads/seller_package/Akg4lvI32msES1iwqI83TACCRL45uZhnUie5cL9x.png', 100, '2020-12-01 09:07:31', '2020-12-01 09:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'best online shop', 'Richbazar', 1, 'http://richbazar.com.bd', 'Richbazar trusted online shopping in Bangladesh| cash on delivery| women\'s fashion| Men\'s fashion', '2021-02-27 19:42:09', '2020-11-25 13:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(2, 13, 'Noven', 'uploads/shop/logo/djEVTzKHdsIQ1xDEq23d7gh9k1yym7fkFIQnj6hm.png', NULL, 'bogura', NULL, NULL, NULL, NULL, 'Noven-2', 'best online shop', 'best online shop in bangladesh', '[]', 0.00, '2020-08-18 20:52:14', '2020-08-18 20:54:52'),
(3, 18, 'sagor', NULL, NULL, 'uttara', NULL, NULL, NULL, NULL, 'sagor-', NULL, NULL, NULL, 0.00, '2020-09-07 14:41:40', '2020-09-07 14:41:40'),
(4, 20, 'Healthy Food Company', 'uploads/shop/logo/I4j12sNX2q6VMmlpeYHrRdA8qxCklDjXUvX8zP31.jpeg', NULL, '74 Shershah Suri Road, Mohammadpur, Dhaka', NULL, NULL, NULL, NULL, 'Healthy-Food-Company-4', 'Immune Booster Tablet', 'For boostup hard immunity of human body.', '[]', 0.00, '2020-09-07 23:03:16', '2020-09-07 23:06:00'),
(5, 25, 'News Portal', NULL, NULL, 'Khilkhet, Nikunjo, Present Street KS 87213', NULL, NULL, NULL, NULL, 'News-Portal-', NULL, NULL, NULL, 0.00, '2020-09-13 17:05:19', '2020-09-13 17:05:19'),
(6, 28, 'Ggg', NULL, NULL, 'Bagerhat', NULL, NULL, NULL, NULL, 'Ggg-', NULL, NULL, NULL, 0.00, '2020-09-14 16:57:20', '2020-09-14 16:57:20'),
(7, 30, 'Akash', NULL, NULL, 'Khulna', NULL, NULL, NULL, NULL, 'Akash-', NULL, NULL, NULL, 0.00, '2020-09-15 00:46:09', '2020-09-15 00:46:09'),
(8, 32, 'MI MANIK', NULL, '[]', 'Dhaka, Khilkhet', NULL, NULL, NULL, NULL, 'MI-MANIK-', NULL, NULL, NULL, 0.00, '2020-09-15 14:31:30', '2020-09-15 14:31:46'),
(13, 52, 'tarek', NULL, NULL, 'savar', NULL, NULL, NULL, NULL, 'tarek-', NULL, NULL, NULL, 0.00, '2020-12-28 08:26:57', '2020-12-28 08:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(11) NOT NULL DEFAULT 1,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(12, 'uploads/sliders/htJaRhTnu4Fl873qKB7Or5x9vFCW3PAPOiiXrmYw.jpeg', 1, 'http://richbazar.com.bd/', '2020-11-16 13:12:44', '2021-02-27 04:39:27'),
(13, 'uploads/sliders/ujVxpk3SkGp2E5TSlyss9GcWRH45Mutu6jp9KbmX.jpeg', 1, 'http://webdevelopmentsbd.com/', '2020-11-16 13:13:51', '2021-02-27 04:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '2020-08-26 02:32:35', '2020-08-26 02:32:35'),
(2, 15, 1, '2020-08-26 02:33:57', '2020-08-26 02:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'wafi4associates@gmail.com', '2020-09-07 14:39:26', '2020-09-07 14:39:26'),
(2, 'normami.les.9404@gmail.com', '2020-09-15 14:23:04', '2020-09-15 14:23:04'),
(3, 'moniruzzaman839@gmail.com', '2020-09-15 21:52:20', '2020-09-15 21:52:20'),
(4, 'eleana8@flooringuj.com', '2020-11-02 23:26:39', '2020-11-02 23:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(6, 'Printers & Accessories', 5, 'Demo-sub-category-3', NULL, NULL, '2019-03-12 06:18:51', '2020-08-06 20:50:27'),
(7, 'Camera Accessories', 5, 'Demo-sub-category-1', NULL, NULL, '2019-03-12 06:19:05', '2020-08-06 20:45:38'),
(8, 'Audio', 5, 'Demo-sub-category-2', NULL, NULL, '2019-03-12 06:19:13', '2020-08-06 20:41:47'),
(9, 'Mobile Accessories', 5, 'Demo-sub-category-3', 'Demo sub category 3', NULL, '2019-03-12 06:19:22', '2020-08-06 20:40:52'),
(10, 'Cosmetic', 7, 'Cosmetic-3AXB7', NULL, NULL, '2020-08-06 18:33:19', '2020-08-06 20:38:20'),
(11, 'Construction Materials', 10, 'Construction-Materials-FZwPq', NULL, NULL, '2020-08-06 18:33:50', '2020-08-06 20:38:00'),
(12, 'Books & Stationery', 14, 'Books--Stationery-HUJKY', NULL, NULL, '2020-08-06 18:34:19', '2020-08-06 20:21:05'),
(13, 'Bags & Luggage', 14, 'Bags--Luggage-4Lgfe', NULL, NULL, '2020-08-06 18:34:55', '2020-08-06 20:37:17'),
(14, 'Mobiles', 4, 'Mobiles-LSxLc', NULL, NULL, '2020-08-06 20:15:14', '2020-08-06 20:19:37'),
(15, 'Tablets', 4, 'Tablets-H2BP0', NULL, NULL, '2020-08-06 20:15:42', '2020-08-06 20:19:25'),
(16, 'Laptops', 4, 'Laptops-fDdjJ', NULL, NULL, '2020-08-06 20:16:31', '2020-08-06 20:16:31'),
(17, 'Desktops Computers', 4, 'Desktops-Computers-77V9P', NULL, NULL, '2020-08-06 20:17:11', '2020-08-06 20:17:11'),
(18, 'Console Gaming', 4, 'Console-Gaming-zs2EW', NULL, NULL, '2020-08-06 20:17:47', '2020-08-06 20:17:47'),
(19, 'Cameras', 4, 'Cameras-Logc1', NULL, NULL, '2020-08-06 20:18:27', '2020-08-06 20:18:27'),
(20, 'Security Cameras & Systems', 4, 'Security-Cameras--Systems-iQUxV', NULL, NULL, '2020-08-06 20:19:05', '2020-08-06 20:19:05'),
(21, 'Computer Components', 5, 'Computer-Components-tMPnw', NULL, NULL, '2020-08-06 21:03:13', '2020-08-06 21:03:13'),
(22, 'Network Components', 5, 'Network-Components-94NIs', NULL, NULL, '2020-08-06 21:04:19', '2020-08-06 21:04:19'),
(23, 'Televisions', 6, 'Televisions-QcDd1', NULL, NULL, '2020-08-06 21:08:23', '2020-08-06 21:08:23'),
(24, 'TV Accessories', 6, 'TV-Accessories-stBA0', NULL, NULL, '2020-08-06 21:10:00', '2020-08-06 21:10:00'),
(25, 'Kitchen Appliances', 6, 'Kitchen-Appliances-cdghh', NULL, NULL, '2020-08-06 21:10:44', '2020-08-06 21:10:44'),
(26, 'Small Kitchen Appliances', 6, 'Small-Kitchen-Appliances-nGiEW', NULL, NULL, '2020-08-06 21:11:28', '2020-08-06 21:11:28'),
(27, 'Cooling & Heating', 6, 'Cooling--Heating-NTjI2', NULL, NULL, '2020-08-06 21:12:20', '2020-08-06 21:12:20'),
(28, 'Vacuums & Floor Care', 6, 'Vacuums--Floor-Care-jt41q', NULL, NULL, '2020-08-06 21:13:24', '2020-08-06 21:13:33'),
(29, 'Irons & Garment Steamers', 6, 'Irons--Garment-Steamers-d0xaZ', NULL, NULL, '2020-08-06 21:14:12', '2020-08-06 21:14:12'),
(30, 'Water Dispensers, Purifiers & Filters', 6, 'Water-Dispensers-Purifiers--Filters-0xTBA', NULL, NULL, '2020-08-06 21:14:54', '2020-08-06 21:14:54'),
(31, 'Bath & Body', 7, 'Bath--Body-PscQm', NULL, NULL, '2020-08-06 21:16:11', '2020-08-06 21:16:11'),
(32, 'Beauty Tools', 7, 'Beauty-Tools-f44pR', NULL, NULL, '2020-08-06 21:39:02', '2020-08-06 21:39:02'),
(33, 'Fragrances', 7, 'Fragrances-rG6QS', NULL, NULL, '2020-08-06 21:40:18', '2020-08-06 21:40:18'),
(34, 'Hair Care', 7, 'Hair-Care-f8b4P', NULL, NULL, '2020-08-06 21:45:18', '2020-08-06 21:45:18'),
(35, 'Makeup', 7, 'Makeup-sSSjq', NULL, NULL, '2020-08-06 21:45:59', '2020-08-06 21:45:59'),
(36, 'Men\'s Care', 7, 'Mens-Care-mFPY4', NULL, NULL, '2020-08-06 21:46:37', '2020-08-06 21:46:37'),
(37, 'Personal Care', 7, 'Personal-Care-UJVfb', NULL, NULL, '2020-08-06 21:47:07', '2020-08-06 21:47:07'),
(38, 'Skin Care', 7, 'Skin-Care-xtgCd', NULL, NULL, '2020-08-06 21:47:45', '2020-08-06 21:47:45'),
(39, 'Food Supplements', 7, 'Food-Supplements-0z3YI', NULL, NULL, '2020-08-06 21:48:25', '2020-08-06 21:48:25'),
(40, 'Medical Supplies', 7, 'Medical-Supplies-pBCoC', NULL, NULL, '2020-08-06 21:48:55', '2020-08-06 21:48:55'),
(41, 'Mother & Baby', 8, 'Mother--Baby-PYMIX', NULL, NULL, '2020-08-06 21:50:09', '2020-08-06 21:50:09'),
(42, 'Feeding', 8, 'Feeding-yhH8T', NULL, NULL, '2020-08-06 22:21:25', '2020-08-06 22:21:25'),
(43, 'Diapering & Potty', 8, 'Diapering--Potty-teWqR', NULL, NULL, '2020-08-06 22:22:14', '2020-08-06 22:22:14'),
(44, 'Baby Gear', 8, 'Baby-Gear-LrujV', NULL, NULL, '2020-08-06 22:22:54', '2020-08-06 22:22:54'),
(45, 'Baby Personal Care', 8, 'Baby-Personal-Care-ue507', NULL, NULL, '2020-08-06 22:24:23', '2020-08-06 22:24:23'),
(46, 'Clothing & Accessories', 8, 'Clothing--Accessories-mZSdo', NULL, NULL, '2020-08-06 22:25:49', '2020-08-06 22:25:49'),
(47, 'Nursery', 8, 'Nursery-Cnrqh', NULL, NULL, '2020-08-06 22:26:45', '2020-08-06 22:26:45'),
(48, 'Toys & Games', 8, 'Toys--Games-74qcu', NULL, NULL, '2020-08-06 22:31:01', '2020-08-06 22:31:01'),
(49, 'Toys & Games', 8, 'Toys--Games-jeqdB', NULL, NULL, '2020-08-06 22:31:52', '2020-08-06 22:31:52'),
(50, 'Baby & Toddler Toys', 8, 'Baby--Toddler-Toys-yrVFi', NULL, NULL, '2020-08-06 22:36:24', '2020-08-06 22:36:24'),
(51, 'Remote Control & Play Vehicles', 8, 'Remote-Control--Play-Vehicles-ukwk3', NULL, NULL, '2020-08-06 22:37:08', '2020-08-06 22:37:08'),
(52, 'Sports & Outdoor Play', 8, 'Sports--Outdoor-Play-WgDiM', NULL, NULL, '2020-08-06 22:38:20', '2020-08-06 22:38:20'),
(53, 'Traditional Games', 8, 'Traditional-Games-T3KVR', NULL, NULL, '2020-08-06 22:39:28', '2020-08-06 22:39:28'),
(54, 'Beverages', 9, 'Beverages-6EExR', NULL, NULL, '2020-08-06 22:40:39', '2020-08-06 22:40:39'),
(55, 'Breakfast', 9, 'Breakfast-Trtby', NULL, NULL, '2020-08-06 22:41:58', '2020-08-06 22:41:58'),
(56, 'Baking & Cooking', 9, 'Baking--Cooking-1jbuj', NULL, NULL, '2020-08-06 22:43:26', '2020-08-06 22:43:26'),
(57, 'Laundry & Household', 9, 'Laundry--Household-8PAcO', NULL, NULL, '2020-08-06 22:57:30', '2020-08-06 22:57:30'),
(58, 'Fish', 9, 'Fish-flXAX', NULL, NULL, '2020-08-06 22:59:20', '2020-08-06 22:59:20'),
(59, 'Meat', 9, 'Meat-IGLnu', NULL, NULL, '2020-08-06 23:01:45', '2020-08-06 23:01:45'),
(60, 'Chicken', 9, 'Beef-6azLp', NULL, NULL, '2020-08-06 23:02:31', '2020-08-06 23:05:20'),
(61, 'Bedding & Bath', 10, 'Bedding--Bath-SKifQ', NULL, NULL, '2020-08-06 23:08:16', '2020-08-06 23:08:16'),
(62, 'Home Décor', 10, 'Home-Dcor-oeUyh', NULL, NULL, '2020-08-06 23:09:50', '2020-08-06 23:09:50'),
(63, 'Furniture', 10, 'Furniture-0zv0J', NULL, NULL, '2020-08-06 23:10:31', '2020-08-06 23:10:31'),
(64, 'Kitchen & Dining', 10, 'Kitchen--Dining-TgZBv', NULL, NULL, '2020-08-06 23:11:19', '2020-08-06 23:11:19'),
(66, 'Lighting', 10, 'Lighting-9rnzR', NULL, NULL, '2020-08-06 23:12:21', '2020-08-06 23:12:21'),
(67, 'Laundry & Cleaning', 10, 'Laundry--Cleaning-toqEg', NULL, NULL, '2020-08-06 23:13:34', '2020-08-06 23:13:34'),
(68, 'Tools, DIY & Outdoor', 10, 'Tools-DIY--Outdoor-32F1P', NULL, NULL, '2020-08-06 23:14:22', '2020-08-06 23:14:22'),
(69, 'Stationery & Craft', 10, 'Stationery--Craft-aVSsO', NULL, NULL, '2020-08-06 23:15:59', '2020-08-06 23:15:59'),
(70, 'Media, Music & Books', 10, 'Media-Music--Books-ml0VP', NULL, NULL, '2020-08-06 23:16:55', '2020-08-06 23:17:10'),
(71, 'Traditional Clothing', 11, 'Traditional-Clothing-FZbKr', NULL, NULL, '2020-08-06 23:18:44', '2020-08-06 23:18:44'),
(72, 'Sarees', 11, 'Sarees-e4vak', NULL, NULL, '2020-08-06 23:19:32', '2020-08-06 23:19:32'),
(73, 'Shalwar Kameez', 11, 'Shalwar-Kameez-IDpta', NULL, NULL, '2020-08-06 23:21:21', '2020-08-06 23:21:21'),
(74, 'Unstitched Fabric', 11, 'Unstitched-Fabric-FIexq', NULL, NULL, '2020-08-06 23:22:14', '2020-08-06 23:22:14'),
(75, 'Wedding Wear', 11, 'Wedding-Wear-j1U7D', NULL, NULL, '2020-08-06 23:23:13', '2020-08-06 23:23:13'),
(76, 'Kurtis', 11, 'Kurtis-2e1Cs', NULL, NULL, '2020-08-06 23:24:21', '2020-08-06 23:24:21'),
(77, 'Clothing', 11, 'Clothing-nUZXQ', NULL, NULL, '2020-08-06 23:25:30', '2020-08-06 23:25:30'),
(78, 'Women Bags', 11, 'Women-Bags-mEOWO', NULL, NULL, '2020-08-06 23:26:46', '2020-08-06 23:26:46'),
(79, 'Shoes', 11, 'Shoes-9j09D', NULL, NULL, '2020-08-06 23:27:23', '2020-08-06 23:27:23'),
(80, 'Accessories', 11, 'Accessories-nTinu', NULL, NULL, '2020-08-06 23:30:48', '2020-08-06 23:30:48'),
(81, 'Lingerie, Sleep & Lounge', 11, 'Lingerie-Sleep--Lounge-v2hUd', NULL, NULL, '2020-08-06 23:31:38', '2020-08-06 23:31:38'),
(82, 'Travel', 11, 'Travel-WoXDH', NULL, NULL, '2020-08-06 23:32:46', '2020-08-06 23:32:46'),
(83, 'T-Shirts', 12, 'T-Shirts-NVQfq', NULL, NULL, '2020-08-06 23:34:32', '2020-08-06 23:34:32'),
(84, 'Shirts', 12, 'Shirts-AmNN9', NULL, NULL, '2020-08-06 23:37:30', '2020-08-06 23:37:30'),
(85, 'Kurtas', 12, 'Kurtas-2eoEp', NULL, NULL, '2020-08-06 23:38:35', '2020-08-06 23:38:35'),
(86, 'Polo Shirts', 12, 'Polo-Shirts-PYNZB', NULL, NULL, '2020-08-06 23:44:14', '2020-08-06 23:44:14'),
(87, 'Jeans', 12, 'Jeans-5sYpP', NULL, NULL, '2020-08-06 23:45:34', '2020-08-06 23:45:34'),
(88, 'Pants', 12, 'Pants-PHu1m', NULL, NULL, '2020-08-06 23:47:22', '2020-08-06 23:47:22'),
(89, 'Men Bags', 12, 'Men-Bags-1o0oP', NULL, NULL, '2020-08-06 23:48:09', '2020-08-06 23:48:09'),
(90, 'Shoes', 12, 'Shoes-cZZi1', NULL, NULL, '2020-08-06 23:48:40', '2020-08-06 23:48:40'),
(91, 'Accessories', 12, 'Accessories-HdJhG', NULL, NULL, '2020-08-06 23:49:14', '2020-08-06 23:49:14'),
(92, 'Clothing', 12, 'Clothing-NFwn0', NULL, NULL, '2020-08-06 23:49:50', '2020-08-06 23:49:50'),
(93, 'Men\'s Watches', 13, 'Men-Jb4c6', NULL, NULL, '2020-08-06 23:50:44', '2020-08-06 23:51:29'),
(94, 'Women\'s Watches', 13, 'Womens-Watches-cr0wF', NULL, NULL, '2020-08-06 23:52:48', '2020-08-06 23:52:48'),
(95, 'Jewellerys Women', 13, 'Jewellerys-Women-HnJAg', NULL, NULL, '2020-08-06 23:54:24', '2020-08-06 23:54:24'),
(96, 'Men\'s Fashion Jewellery', 13, 'Mens-Fashion-Jewellery-Q8sFU', NULL, NULL, '2020-08-06 23:57:22', '2020-08-06 23:57:22'),
(97, 'Man\'s Belts', 13, 'Belts-JY8jD', NULL, NULL, '2020-08-06 23:59:24', '2020-08-07 00:01:04'),
(98, 'Man\'s Wallets', 13, 'Mans-Wallets-5rsG1', NULL, NULL, '2020-08-07 00:00:46', '2020-08-07 00:00:46'),
(99, 'Sunglasses', 13, 'Sunglasses-K5Kb4', NULL, NULL, '2020-08-07 00:02:34', '2020-08-07 00:02:34'),
(100, 'Kid\'s Watches', 13, 'Kids-Watches-fYvix', NULL, NULL, '2020-08-07 00:05:03', '2020-08-07 00:05:03'),
(101, 'Treadmills', 14, 'Treadmills-K70mW', NULL, NULL, '2020-08-07 00:06:28', '2020-08-07 00:06:28'),
(102, 'Fitness Accessories', 14, 'Fitness-Accessories-Up65O', NULL, NULL, '2020-08-07 00:07:56', '2020-08-07 00:07:56'),
(103, 'Dumbbells', 14, 'Dumbbells-jkT6V', NULL, NULL, '2020-08-07 00:08:34', '2020-08-07 00:08:34'),
(104, 'Cycling', 14, 'Cycling-MYlY8', NULL, NULL, '2020-08-07 00:09:20', '2020-08-07 00:09:20'),
(105, 'Boxing, Martial Arts & MMA', 14, 'Boxing-Martial-Arts--MMA-emuSG', NULL, NULL, '2020-08-07 00:09:53', '2020-08-07 00:09:53'),
(106, 'Men\'s Shoes & Clothing', 14, 'Mens-Shoes--Clothing-vEChT', NULL, NULL, '2020-08-07 00:10:58', '2020-08-07 00:10:58'),
(107, 'Outdoor Recreation', 14, 'Outdoor-Recreation-pHiit', NULL, NULL, '2020-08-07 00:12:01', '2020-08-07 00:12:01'),
(108, 'Exercise & Fitness', 14, 'Exercise--Fitness-wOsrq', NULL, NULL, '2020-08-07 00:13:12', '2020-08-07 00:13:12'),
(109, 'Racket Sports', 14, 'Racket-Sports-GNL3A', NULL, NULL, '2020-08-07 00:14:02', '2020-08-07 00:14:02'),
(110, 'Team Sports', 14, 'Team-Sports-w6vMv', NULL, NULL, '2020-08-07 00:14:56', '2020-08-07 00:14:56'),
(111, 'Camping & Hiking', 14, 'Camping--Hiking-Q1i3j', NULL, NULL, '2020-08-07 00:15:50', '2020-08-07 00:15:50'),
(112, 'Fan shop & Collectibles', 14, 'Fan-shop--Collectibles-2raAC', NULL, NULL, '2020-08-07 00:17:15', '2020-08-07 00:17:15'),
(113, 'Football', 14, 'Football-sx72S', NULL, NULL, '2020-08-07 00:18:07', '2020-08-07 00:18:07'),
(114, 'Automotive', 15, 'Automotive-GPD4x', NULL, NULL, '2020-08-07 00:20:17', '2020-08-07 00:20:17'),
(115, 'Auto Oils & Fluids', 15, 'Auto-Oils--Fluids-ZGcSh', NULL, NULL, '2020-08-07 00:20:44', '2020-08-07 00:20:44'),
(116, 'Interior Accessories', 15, 'Interior-Accessories-Fzw7h', NULL, NULL, '2020-08-07 00:21:25', '2020-08-07 00:21:25'),
(117, 'Exterior Accessories', 15, 'Exterior-Accessories-K58B7', NULL, NULL, '2020-08-07 00:22:02', '2020-08-07 00:22:02'),
(118, 'Exterior Vehicle Care', 15, 'Exterior-Vehicle-Care-AuEO6', NULL, NULL, '2020-08-07 00:22:34', '2020-08-07 00:22:34'),
(119, 'Interior Vehicle Care', 15, 'Interior-Vehicle-Care-7PYcj', NULL, NULL, '2020-08-07 00:22:57', '2020-08-07 00:22:57'),
(120, 'Car Electronics Accessories', 15, 'Car-Electronics-Accessories-xHncL', NULL, NULL, '2020-08-07 00:23:33', '2020-08-07 00:23:33'),
(121, 'Car Audio', 15, 'Car-Audio-5Nkvi', NULL, NULL, '2020-08-07 00:24:04', '2020-08-07 00:24:04'),
(122, 'Motorcycle', 15, 'Motorcycle-MG4gP', NULL, NULL, '2020-08-07 00:24:44', '2020-08-07 00:24:44'),
(123, 'Moto Parts & Spares', 15, 'Moto-Parts--Spares-bdoNU', NULL, NULL, '2020-08-07 00:25:16', '2020-08-07 00:25:16'),
(124, 'Moto Parts & Spares', 15, 'Moto-Parts--Spares-fZWOH', NULL, NULL, '2020-08-07 00:25:45', '2020-08-07 00:25:45'),
(125, 'Motorcycle Riding Gear', 15, 'Motorcycle-Riding-Gear-4Y6XY', NULL, NULL, '2020-08-07 00:26:30', '2020-08-07 00:26:30'),
(126, 'Computer Accessories', 5, 'Camera-Accessories-lviTf', NULL, NULL, '2020-08-07 10:52:23', '2020-08-07 10:57:57'),
(127, 'Audio', 6, 'Audio-SsaPf', NULL, NULL, '2020-08-07 11:25:32', '2020-08-07 11:25:32'),
(128, 'Cooking Ingredients', 9, 'Cooking-Ingredients-P69X8', NULL, NULL, '2020-08-07 16:47:15', '2020-08-07 16:47:15'),
(129, 'Eyeglasses', 13, 'Eyeglasses-mLHee', NULL, NULL, '2020-08-08 00:18:28', '2020-08-08 00:18:28'),
(130, 'Date', 16, 'Date-d4nx5', NULL, NULL, '2020-08-23 14:04:16', '2020-08-23 14:04:16'),
(131, 'Orange', 16, 'Orange-zQB1H', NULL, NULL, '2020-09-15 15:20:36', '2020-09-15 15:20:36'),
(132, 'Apple', 16, 'Apple-NT3FC', NULL, NULL, '2020-09-15 15:35:44', '2020-09-15 15:35:44'),
(133, 'watches', 13, 'watches-hvfoW', NULL, NULL, '2020-09-15 15:43:24', '2020-09-15 15:43:24'),
(135, 'Burger And Snacks', 18, 'Burger-And-Snacks-v2Dql', 'Burger And Snacks', NULL, '2021-02-26 00:18:29', '2021-02-26 00:18:29'),
(136, 'Juice', 18, 'Juice-IzMqQ', 'Juice', NULL, '2021-02-26 00:19:14', '2021-02-26 00:19:14'),
(137, 'Fuska & Chotpoti', 18, 'Fuska--Chotpoti-BMGzi', 'Fuska & Chotpoti', NULL, '2021-02-26 00:20:07', '2021-02-26 00:20:07'),
(138, 'Intestine', 18, 'Intestine-cSloJ', 'Intestine', NULL, '2021-02-26 00:21:11', '2021-02-26 00:21:22'),
(139, 'Halim', 18, 'Halim-iSQm2', 'Halim', NULL, '2021-02-26 00:22:03', '2021-02-26 00:22:03'),
(140, 'Bora & Chop', 18, 'Bora--Chop-ZCNln', 'Bora & Chop', NULL, '2021-02-26 00:22:52', '2021-02-26 00:22:52'),
(141, 'Chapti with Vhorta', 18, 'Chapti-with-Vhorta-orS8C', 'Chapti with Vhorta', NULL, '2021-02-26 00:23:31', '2021-02-26 00:23:31'),
(142, 'Pickle', 18, 'Pickle-7888t', 'Pickle', NULL, '2021-02-26 00:24:02', '2021-02-26 00:24:02'),
(143, 'Cake(Pitha)', 18, 'CakePitha-wCfYs', 'Cake(Pitha)', NULL, '2021-02-26 00:24:42', '2021-02-26 00:24:42'),
(144, 'Koliza Vhuna & Porota', 18, 'Koliza-Vhuna--Porota-d1V5o', 'Koliza Vhuna & Porota', NULL, '2021-02-26 00:25:21', '2021-02-26 00:25:21'),
(145, 'Fish Fry', 18, 'Fish-Fry-n7euO', 'Fish Fry', NULL, '2021-02-26 00:25:45', '2021-02-26 00:25:45'),
(146, 'Nun', 18, 'Nun-whgPK', 'Nun', NULL, '2021-02-26 00:26:08', '2021-02-26 00:26:08'),
(147, 'Momos', 18, 'Momos-aDfF1', 'Momos', NULL, '2021-02-26 00:26:44', '2021-02-26 00:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(18, 14, 'Samsung Mobiles', 'Samsung-Mobiles-XPiDS', NULL, NULL, '2020-08-07 00:43:05', '2020-08-07 00:43:05'),
(19, 14, 'Xiaomi Mobiles', 'Xiaomi-Mobiles-r0uDw', NULL, NULL, '2020-08-07 00:45:45', '2020-08-07 00:45:45'),
(20, 14, 'Huawei Mobiles', 'Huawei-Mobiles-gDSZM', NULL, NULL, '2020-08-07 00:46:19', '2020-08-07 00:46:19'),
(21, 14, 'Nokia Mobiles', 'Nokia-Mobiles-1t8Tx', NULL, NULL, '2020-08-07 00:46:50', '2020-08-07 00:46:50'),
(22, 14, 'OPPO Mobiles', 'OPPO-Mobiles-bDaVp', NULL, NULL, '2020-08-07 00:47:25', '2020-08-07 00:47:25'),
(23, 14, 'Vivo Mobiles', 'Vivo-Mobiles-CyfYy', NULL, NULL, '2020-08-07 00:47:52', '2020-08-07 00:47:52'),
(24, 14, 'Motorola Mobiles', 'Motorola-Mobiles-OaJrQ', NULL, NULL, '2020-08-07 00:48:26', '2020-08-07 00:48:26'),
(25, 14, 'Walton Mobiles', 'Walton-Mobiles-SBarV', NULL, NULL, '2020-08-07 00:50:29', '2020-08-07 00:50:29'),
(26, 14, 'Symphony Mobiles', 'Symphony-Mobiles-7eTD1', NULL, NULL, '2020-08-07 00:51:06', '2020-08-07 00:51:06'),
(27, 16, 'Traditional Laptops', 'Traditional-Laptops-mQbpu', NULL, NULL, '2020-08-07 00:52:53', '2020-08-07 00:52:53'),
(28, 16, 'Gaming Laptops', 'Gaming-Laptops-amqOe', NULL, NULL, '2020-08-07 00:54:54', '2020-08-07 00:54:54'),
(29, 16, 'Apple Macbook', 'Apple-Macbook-fHoKJ', NULL, NULL, '2020-08-07 00:55:40', '2020-08-07 00:55:40'),
(30, 17, 'All-In-One', 'All-In-One-P7cuq', NULL, NULL, '2020-08-07 00:56:25', '2020-08-07 00:56:25'),
(31, 17, 'Gaming Desktop', 'Gaming-Desktop-8cEkM', NULL, NULL, '2020-08-07 00:57:10', '2020-08-07 00:57:10'),
(32, 18, 'PlayStation Gaming Consoles', 'PlayStation-Gaming-Consoles-JMdbO', NULL, NULL, '2020-08-07 00:59:45', '2020-08-07 00:59:45'),
(33, 18, 'Nintendo Games', 'Xbox-Games-nHnYZ', NULL, NULL, '2020-08-07 09:30:37', '2020-08-07 09:33:43'),
(34, 18, 'Other Gaming', 'Xbox-Games-hsJEb', NULL, NULL, '2020-08-07 09:30:37', '2020-08-07 09:32:29'),
(35, 18, 'PlayStation Games', 'Xbox-Games-7HUON', NULL, NULL, '2020-08-07 09:30:38', '2020-08-07 09:36:41'),
(36, 19, 'DSLR Camera', 'DSLR-Camera-PNls4', NULL, NULL, '2020-08-07 09:37:45', '2020-08-07 09:37:45'),
(37, 19, 'Mirrorless', 'Mirrorless-EOOnG', NULL, NULL, '2020-08-07 09:38:49', '2020-08-07 09:38:49'),
(38, 19, 'Point & Shoot', 'Point--Shoot-fXIfW', NULL, NULL, '2020-08-07 09:39:32', '2020-08-07 09:39:32'),
(39, 19, 'Bridge', 'Bridge-43sMF', NULL, NULL, '2020-08-07 09:40:49', '2020-08-07 09:40:49'),
(40, 19, 'Car Cameras', 'Car-Cameras-OF3Wx', NULL, NULL, '2020-08-07 09:41:43', '2020-08-07 09:41:43'),
(41, 19, 'Video & Action Camcorder', 'Video--Action-Camcorder-UEnSu', NULL, NULL, '2020-08-07 09:42:44', '2020-08-07 09:42:44'),
(42, 20, 'IP Security Systems', 'Security-Cameras--Systems-02DLh', NULL, NULL, '2020-08-07 09:43:25', '2020-08-07 09:47:56'),
(43, 20, 'IP Security Cameras', 'IP-Security-Cameras-FblzS', NULL, NULL, '2020-08-07 09:47:11', '2020-08-07 09:47:11'),
(44, 20, 'CCTV Security Cameras', 'CCTV-Security-Cameras-sCnT0', NULL, NULL, '2020-08-07 09:49:33', '2020-08-07 09:49:33'),
(45, 20, 'CCTV Security Systems', 'CCTV-Security-Systems-ny9aS', NULL, NULL, '2020-08-07 09:51:10', '2020-08-07 09:51:10'),
(46, 9, 'Phone Cases', 'Phone-Cases-EcU7C', NULL, NULL, '2020-08-07 09:53:09', '2020-08-07 09:53:09'),
(47, 9, 'Mobile Power Bank', 'Mobile-Power-Bank-JG6VB', NULL, NULL, '2020-08-07 09:54:09', '2020-08-07 09:54:09'),
(48, 9, 'Cables & Converters', 'Cables--Converters-W6heZ', NULL, NULL, '2020-08-07 09:57:15', '2020-08-07 09:57:15'),
(49, 9, 'Wall Chargers', 'Wall-Chargers-rErYu', NULL, NULL, '2020-08-07 10:28:32', '2020-08-07 10:28:32'),
(50, 9, 'Wireless Chargers', 'Wireless-Chargers-0OU5j', NULL, NULL, '2020-08-07 10:29:33', '2020-08-07 10:29:33'),
(51, 8, 'Headphones & Headsets', 'Headphones--Headsets-TOGcv', NULL, NULL, '2020-08-07 10:30:21', '2020-08-07 10:30:21'),
(52, 8, 'Home Entertainment', 'Home-Entertainment-mN00P', NULL, NULL, '2020-08-07 10:31:19', '2020-08-07 10:31:19'),
(53, 8, 'Portable Speakers', 'Portable-Speakers-7Ev7R', NULL, NULL, '2020-08-07 10:32:02', '2020-08-07 10:32:02'),
(54, 8, 'Live Sound & Stage Equipment', 'Live-Sound--Stage-Equipment-NldYT', NULL, NULL, '2020-08-07 10:32:38', '2020-08-07 10:32:38'),
(55, 8, 'Wearable Technology', 'Wearable-Technology-fDs6M', NULL, NULL, '2020-08-07 10:34:54', '2020-08-07 10:34:54'),
(56, 8, 'Virtual Reality', 'Virtual-Reality-kAmZr', NULL, NULL, '2020-08-07 10:35:37', '2020-08-07 10:35:37'),
(57, 7, 'Memory Cards', 'Memory-Cards-eVLZe', NULL, NULL, '2020-08-07 10:37:08', '2020-08-07 10:37:08'),
(58, 7, 'DSLRs Lenses', 'DSLRs-Lenses-u4KBC', NULL, NULL, '2020-08-07 10:38:48', '2020-08-07 10:38:48'),
(59, 7, 'Mirrorless Lenses', 'Mirrorless-Lenses-KC0sr', NULL, NULL, '2020-08-07 10:40:08', '2020-08-07 10:40:08'),
(60, 7, 'Other Lenses', 'Other-Lenses-XlxXg', NULL, NULL, '2020-08-07 10:45:05', '2020-08-07 10:45:05'),
(61, 7, 'Tripods & Monopods', 'Tripods--Monopods-BHtOn', NULL, NULL, '2020-08-07 10:45:37', '2020-08-07 10:45:37'),
(62, 7, 'Camera Cases Covers and Bags', 'Camera-Cases-Covers-and-Bags-wwm44', NULL, NULL, '2020-08-07 10:46:04', '2020-08-07 10:46:04'),
(63, 7, 'Lighting & Studio Equipment', 'Lighting--Studio-Equipment-4ivf1', NULL, NULL, '2020-08-07 10:46:47', '2020-08-07 10:46:47'),
(64, 7, 'Dry Box', 'Dry-Box-HN7lb', NULL, NULL, '2020-08-07 10:47:29', '2020-08-07 10:47:29'),
(65, 7, 'Batteries', 'Batteries-xtegc', NULL, NULL, '2020-08-07 10:48:06', '2020-08-07 10:48:06'),
(66, 21, 'Graphic Cards', 'Graphic-Cards-QpQWc', NULL, NULL, '2020-08-07 10:51:47', '2020-08-07 10:51:47'),
(67, 126, 'Monitors', 'Monitors-4X0AW', NULL, NULL, '2020-08-07 10:58:57', '2020-08-07 10:58:57'),
(68, 126, 'Mice', 'Mice-Nq8g0', NULL, NULL, '2020-08-07 10:59:51', '2020-08-07 10:59:51'),
(69, 126, 'PC Audio', 'PC-Audio-xJCNp', NULL, NULL, '2020-08-07 11:00:28', '2020-08-07 11:00:28'),
(70, 126, 'Keyboards', 'Keyboards-qDUOC', NULL, NULL, '2020-08-07 11:00:57', '2020-08-07 11:00:57'),
(71, 126, 'Mice & Keyboard Combos', 'Mice--Keyboard-Combos-GBnfo', NULL, NULL, '2020-08-07 11:01:32', '2020-08-07 11:01:32'),
(72, 126, 'Adapters & Cables', 'Adapters--Cables-dz46k', NULL, NULL, '2020-08-07 11:02:02', '2020-08-07 11:02:02'),
(73, 21, 'Desktop Casings', 'Desktop-Casings-yBFDV', NULL, NULL, '2020-08-07 11:04:47', '2020-08-07 11:04:47'),
(74, 21, 'Motherboards', 'Motherboards-W3BAX', NULL, NULL, '2020-08-07 11:05:18', '2020-08-07 11:05:18'),
(75, 21, 'Fans & Heatsinks', 'Fans--Heatsinks-HTbBA', NULL, NULL, '2020-08-07 11:05:57', '2020-08-07 11:05:57'),
(76, 21, 'RAM', 'RAM-JyB2F', NULL, NULL, '2020-08-07 11:07:19', '2020-08-07 11:07:32'),
(77, 21, 'Processors', 'Processors-s9FMi', NULL, NULL, '2020-08-07 11:08:11', '2020-08-07 11:08:11'),
(78, 22, 'Access Points', 'Access-Points-zmPbX', NULL, NULL, '2020-08-07 11:08:53', '2020-08-07 11:08:53'),
(79, 22, 'Modems', 'Modems-9v4Vg', NULL, NULL, '2020-08-07 11:09:59', '2020-08-07 11:09:59'),
(80, 21, 'Network Interface Cards', 'Network-Interface-Cards-OrdRG', NULL, NULL, '2020-08-07 11:10:34', '2020-08-07 11:10:34'),
(81, 22, 'Switches', 'Switches-oSoq3', NULL, NULL, '2020-08-07 11:11:06', '2020-08-07 11:11:23'),
(82, 22, 'Routers', 'Routers-2DQYs', NULL, NULL, '2020-08-07 11:11:55', '2020-08-07 11:11:55'),
(83, 22, 'Wireless USB Adapters', 'Wireless-USB-Adapters-41Ukp', NULL, NULL, '2020-08-07 11:12:26', '2020-08-07 11:12:26'),
(84, 6, 'Printers', 'Printers-7vY8x', NULL, NULL, '2020-08-07 11:13:09', '2020-08-07 11:13:09'),
(85, 6, 'Ink', 'Ink-t8X0B', NULL, NULL, '2020-08-07 11:13:45', '2020-08-07 11:13:45'),
(86, 6, 'Printer stands', 'Printer-stands-xhBWM', NULL, NULL, '2020-08-07 11:14:20', '2020-08-07 11:14:20'),
(87, 6, 'Fax machines', 'Fax-machines-iL1Wy', NULL, NULL, '2020-08-07 11:15:22', '2020-08-07 11:15:22'),
(88, 23, 'Smart Televisions', 'Smart-Televisions-tmCRf', NULL, NULL, '2020-08-07 11:17:25', '2020-08-07 11:17:25'),
(89, 23, 'LED Televisions', 'Home-Audio-n3vUt', NULL, NULL, '2020-08-07 11:18:24', '2020-08-07 11:21:23'),
(90, 23, 'OLED Televisions', 'TV-Accessories-VTfsl', NULL, NULL, '2020-08-07 11:18:54', '2020-08-07 11:22:26'),
(91, 23, 'Other LCD Televisions', 'Kitchen-Appliances-7Wnjh', NULL, NULL, '2020-08-07 11:21:01', '2020-08-07 11:23:20'),
(92, 127, 'Soundbars', 'Soundbars-4DRsM', NULL, NULL, '2020-08-07 11:26:19', '2020-08-07 11:26:19'),
(93, 127, 'Home Entertainment', 'Home-Entertainment-yvYHk', NULL, NULL, '2020-08-07 11:27:16', '2020-08-07 11:27:16'),
(94, 127, 'Portable Players', 'Portable-Players-ufTbW', NULL, NULL, '2020-08-07 11:27:59', '2020-08-07 11:27:59'),
(95, 127, 'Live Sound & Stage Equipment', 'Live-Sound--Stage-Equipment-y95Xn', NULL, NULL, '2020-08-07 11:29:27', '2020-08-07 11:29:27'),
(96, 24, 'TV Receivers', 'TV-Receivers-3TdlS', NULL, NULL, '2020-08-07 11:31:09', '2020-08-07 11:31:09'),
(97, 24, 'Projectors', 'Projectors-N4KJ6', NULL, NULL, '2020-08-07 11:31:42', '2020-08-07 11:31:42'),
(98, 24, 'TV Remote Controllers', 'TV-Remote-Controllers-tkOs7', NULL, NULL, '2020-08-07 11:32:07', '2020-08-07 11:32:07'),
(99, 24, 'Cables', 'Cables-KCszB', NULL, NULL, '2020-08-07 11:32:36', '2020-08-07 11:32:36'),
(100, 24, 'TV Wall Mount At Best Price In Bangladesh', 'TV-Wall-Mount-At-Best-Price-In-Bangladesh-xuadR', NULL, NULL, '2020-08-07 11:33:16', '2020-08-07 11:33:16'),
(101, 25, 'Refrigerators', 'Refrigerators-kaXuU', NULL, NULL, '2020-08-07 11:34:26', '2020-08-07 11:34:26'),
(102, 25, 'Freezers', 'Freezers-SSmbx', NULL, NULL, '2020-08-07 11:34:58', '2020-08-07 11:34:58'),
(103, 25, 'Washing Machines', 'Washing-Machines-LasoS', NULL, NULL, '2020-08-07 11:35:30', '2020-08-07 11:35:30'),
(104, 25, 'Microwaves', 'Microwaves-rB5M7', NULL, NULL, '2020-08-07 11:36:21', '2020-08-07 11:36:21'),
(105, 25, 'Electric Oven', 'Electric-Oven-lET0D', NULL, NULL, '2020-08-07 11:37:20', '2020-08-07 11:37:20'),
(106, 25, 'Kitchen Hoods & Chimneys', 'Kitchen-Hoods--Chimneys-HE5Yl', NULL, NULL, '2020-08-07 11:39:22', '2020-08-07 11:39:22'),
(107, 25, 'Cooktops & Ranges', 'Cooktops--Ranges-YMZKw', NULL, NULL, '2020-08-07 11:40:20', '2020-08-07 11:40:20'),
(108, 26, 'Rice Cookers', 'Rice-Cookers-LfEE4', NULL, NULL, '2020-08-07 11:41:43', '2020-08-07 11:41:43'),
(109, 26, 'Food Preparation', 'Food-Preparation-wkR11', NULL, NULL, '2020-08-07 11:48:52', '2020-08-07 11:48:52'),
(110, 26, 'Electric Kettles', 'Electric-Kettles-pbmjf', NULL, NULL, '2020-08-07 11:53:49', '2020-08-07 11:53:49'),
(111, 26, 'Juicers & Fruit Extractors', 'Juicers--Fruit-Extractors-v36AS', NULL, NULL, '2020-08-07 11:54:24', '2020-08-07 11:54:24'),
(112, 26, 'Fryers', 'Fryers-YcTmL', NULL, NULL, '2020-08-07 11:55:29', '2020-08-07 11:55:29'),
(113, 26, 'Coffee Machines', 'Coffee-Machines-HycBA', NULL, NULL, '2020-08-07 11:56:41', '2020-08-07 11:56:41'),
(114, 26, 'Stovetop Pressure Cookers', 'Stovetop-Pressure-Cookers-9OfMq', NULL, NULL, '2020-08-07 11:57:37', '2020-08-07 11:57:37'),
(115, 26, 'Electric Sandwich Makers & Presses', 'Electric-Sandwich-Makers--Presses-VM7Uo', NULL, NULL, '2020-08-07 11:59:59', '2020-08-07 11:59:59'),
(116, 26, 'Specialty Cookware', 'Specialty-Cookware-jlK77', NULL, NULL, '2020-08-07 12:00:52', '2020-08-07 12:00:52'),
(117, 26, 'Toasters', 'Toasters-xcpEF', NULL, NULL, '2020-08-07 12:01:45', '2020-08-07 12:01:45'),
(118, 27, 'Fans', 'Fans-p9WW7', NULL, NULL, '2020-08-07 12:03:25', '2020-08-07 12:03:25'),
(119, 27, 'Air Conditioners', 'Air-Conditioners-HPw3e', NULL, NULL, '2020-08-07 12:03:58', '2020-08-07 12:03:58'),
(120, 27, 'Air Coolers', 'Air-Coolers-6TqAG', NULL, NULL, '2020-08-07 12:04:40', '2020-08-07 12:04:40'),
(121, 27, 'Air Purifiers', 'Air-Purifiers-9p0ta', NULL, NULL, '2020-08-07 12:05:34', '2020-08-07 12:05:34'),
(122, 27, 'Dehumidifiers', 'Dehumidifiers-4UZUL', NULL, NULL, '2020-08-07 12:06:14', '2020-08-07 12:06:14'),
(123, 27, 'Water Heaters', 'Water-Heaters-uzNk6', NULL, NULL, '2020-08-07 12:07:01', '2020-08-07 12:07:01'),
(124, 28, 'Vacuum Cleaners', 'Vacuum-Cleaners-sNxCG', NULL, NULL, '2020-08-07 12:09:07', '2020-08-07 12:09:07'),
(125, 28, 'Steam Mops', 'Steam-Mops-UqaHB', NULL, NULL, '2020-08-07 12:09:45', '2020-08-07 12:09:45'),
(126, 28, 'Vacuum Cleaner Parts & Accessories', 'Vacuum-Cleaner-Parts--Accessories-eGzPj', NULL, NULL, '2020-08-07 12:10:36', '2020-08-07 12:10:36'),
(127, 29, 'Irons', 'Irons-oUdD0', NULL, NULL, '2020-08-07 12:11:52', '2020-08-07 12:11:52'),
(128, 29, 'Sewing Machines', 'Sewing-Machines-HoZdV', NULL, NULL, '2020-08-07 12:12:19', '2020-08-07 12:12:19'),
(129, 30, 'Water Dispensers, Purifiers', 'Water-Dispensers-Purifiers-c9oy7', NULL, NULL, '2020-08-07 12:13:41', '2020-08-07 12:13:41'),
(130, 30, 'Filters', 'Filters-QwrLE', NULL, NULL, '2020-08-07 12:14:25', '2020-08-07 12:15:01'),
(131, 31, 'Body & Massage Oils', 'Body--Massage-Oils-uoaeo', NULL, NULL, '2020-08-07 12:18:01', '2020-08-07 12:18:01'),
(132, 31, 'Body Moisturizers', 'Body-Moisturizers-5K8Bm', NULL, NULL, '2020-08-07 12:19:08', '2020-08-07 12:19:08'),
(133, 31, 'Body Scrubs', 'Body-Scrubs-qwq5i', NULL, NULL, '2020-08-07 12:19:48', '2020-08-07 12:19:48'),
(134, 31, 'Body Soaps & Shower Gels', 'Body-Soaps--Shower-Gels-Tb8UP', NULL, NULL, '2020-08-07 12:22:09', '2020-08-07 12:22:09'),
(135, 31, 'Hair Removal', 'Hair-Removal-CURE5', NULL, NULL, '2020-08-07 12:23:25', '2020-08-07 12:23:25'),
(136, 31, 'Hand Care', 'Hand-Care-JsVLM', NULL, NULL, '2020-08-07 12:24:07', '2020-08-07 12:24:07'),
(137, 31, 'Sun Care for Body', 'Sun-Care-for-Body-K8zLq', NULL, NULL, '2020-08-07 12:24:52', '2020-08-07 12:24:52'),
(138, 31, 'Bath & Body Accessories', 'Bath--Body-Accessories-7cz0U', NULL, NULL, '2020-08-07 12:25:33', '2020-08-07 12:25:33'),
(139, 32, 'Curling Irons & Wands', 'Curling-Irons--Wands-Ddp5G', NULL, NULL, '2020-08-07 12:28:05', '2020-08-07 12:28:05'),
(140, 32, 'Flat Irons', 'Flat-Irons-JaMiS', NULL, NULL, '2020-08-07 12:28:22', '2020-08-07 12:28:22'),
(141, 32, 'Multi-stylers', 'Multi-stylers-dPmEY', NULL, NULL, '2020-08-07 12:29:18', '2020-08-07 12:29:18'),
(142, 32, 'Hair Dryers', 'Hair-Dryers-cfSBC', NULL, NULL, '2020-08-07 12:29:52', '2020-08-07 12:29:52'),
(143, 32, 'Face Skin Care Tools', 'Face-Skin-Care-Tools-ANt0A', NULL, NULL, '2020-08-07 12:32:14', '2020-08-07 12:32:14'),
(144, 32, 'Foot Relief Accessories & Tools', 'Foot-Relief-Accessories--Tools-jSrQN', NULL, NULL, '2020-08-07 12:35:14', '2020-08-07 12:35:14'),
(145, 32, 'Hair Removal Accessories', 'Hair-Removal-Accessories-7xhz2', NULL, NULL, '2020-08-07 12:36:30', '2020-08-07 12:36:30'),
(146, 32, 'Body Slimming & Electric Massagers', 'Body-Slimming--Electric-Massagers-hW74f', NULL, NULL, '2020-08-07 12:37:06', '2020-08-07 12:37:06'),
(147, 33, 'Women\'s Fragrances', 'Womens-Fragrances-7P3Qw', NULL, NULL, '2020-08-07 12:40:19', '2020-08-07 12:40:19'),
(148, 33, 'Man\'s Fragrances', 'Mans-Fragrances-trdp1', NULL, NULL, '2020-08-07 12:41:35', '2020-08-07 12:41:35'),
(149, 33, 'Unisex Fragrance', 'Unisex-Fragrance-fTr7A', NULL, NULL, '2020-08-07 12:43:53', '2020-08-07 12:43:53'),
(150, 34, 'Shampoo', 'Shampoo-G6Ibc', NULL, NULL, '2020-08-07 12:44:45', '2020-08-07 12:44:45'),
(151, 34, 'Hair Treatments', 'Hair-Treatments-3biuD', NULL, NULL, '2020-08-07 12:45:32', '2020-08-07 12:45:32'),
(152, 34, 'Hair Care Accessories', 'Hair-Care-Accessories-VBoF4', NULL, NULL, '2020-08-07 12:46:17', '2020-08-07 12:46:17'),
(154, 34, 'Hair Coloring', 'Hair-Coloring-5Uppl', NULL, NULL, '2020-08-07 12:48:03', '2020-08-07 12:48:03'),
(155, 34, 'Hair Conditioner', 'Hair-Conditioner-QB0o9', NULL, NULL, '2020-08-07 12:48:51', '2020-08-07 12:48:51'),
(156, 34, 'Hair Extensions & Hair Wigs', 'Hair-Extensions--Hair-Wigs-lUYx9', NULL, NULL, '2020-08-07 12:50:07', '2020-08-07 12:50:07'),
(157, 35, 'Face', 'Face-IQyb8', NULL, NULL, '2020-08-07 12:51:03', '2020-08-07 12:51:03'),
(158, 35, 'Lips', 'Lips-16zWm', NULL, NULL, '2020-08-07 12:51:30', '2020-08-07 12:51:30'),
(159, 35, 'Eyes', 'Eyes-PHFVg', NULL, NULL, '2020-08-07 12:52:40', '2020-08-07 12:52:40'),
(160, 35, 'Nails', 'Nails-XdkwM', NULL, NULL, '2020-08-07 12:53:50', '2020-08-07 12:53:50'),
(161, 35, 'Makeup Palettes & Sets', 'Makeup-Palettes--Sets-wauaa', NULL, NULL, '2020-08-07 12:54:23', '2020-08-07 12:54:38'),
(162, 35, 'Makeup Brush Set', 'Makeup-Brush-Set-mB1vE', NULL, NULL, '2020-08-07 12:55:28', '2020-08-07 12:55:28'),
(163, 35, 'Makeup Accessories', 'Makeup-Accessories-lk0nZ', NULL, NULL, '2020-08-07 12:55:58', '2020-08-07 12:55:58'),
(164, 35, 'Makeup Removers', 'Makeup-Removers-CgcTE', NULL, NULL, '2020-08-07 12:56:35', '2020-08-07 12:56:35'),
(165, 36, 'Men\'s Deodorants', 'Mens-Deodorants-ao8YJ', NULL, NULL, '2020-08-07 12:57:54', '2020-08-07 12:57:54'),
(166, 36, 'Shaving & Grooming', 'Shaving--Grooming-XB9gB', NULL, NULL, '2020-08-07 13:03:37', '2020-08-07 13:03:37'),
(167, 36, 'SKIN CARE', 'SKIN-CARE-dkK4V', NULL, NULL, '2020-08-07 13:05:11', '2020-08-07 13:05:11'),
(168, 37, 'Deodorants', 'Deodorants-J0c4a', NULL, NULL, '2020-08-07 13:06:10', '2020-08-07 13:06:10'),
(169, 37, 'Feminine Care Products', 'Feminine-Care-Products-leIMO', NULL, NULL, '2020-08-07 13:07:15', '2020-08-07 13:07:15'),
(170, 37, 'Oral Care Products', 'Oral-Care-Products-CSARh', NULL, NULL, '2020-08-07 13:08:02', '2020-08-07 13:08:02'),
(171, 37, 'Personal Safety & Security', 'Personal-Safety--Security-Px960', NULL, NULL, '2020-08-07 13:08:47', '2020-08-07 13:08:47'),
(172, 38, 'Moisturizers and Cream', 'Moisturizers-and-Cream-Foyrj', NULL, NULL, '2020-08-07 13:09:47', '2020-08-07 13:09:47'),
(173, 38, 'Serum & Essence', 'Serum--Essence-qYgd8', NULL, NULL, '2020-08-07 13:11:39', '2020-08-07 13:11:39'),
(174, 38, 'Face Mask & Packs', 'Face-Mask--Packs-seMS1', NULL, NULL, '2020-08-07 13:12:23', '2020-08-07 13:12:23'),
(175, 38, 'Face Scrubs & Exfoliators', 'Face-Scrubs--Exfoliators-QqsjG', NULL, NULL, '2020-08-07 13:13:23', '2020-08-07 13:13:23'),
(176, 38, 'Facial Cleansers', 'Facial-Cleansers-yUeLp', NULL, NULL, '2020-08-07 13:14:01', '2020-08-07 13:14:01'),
(177, 38, 'Lip Balm and Treatment', 'Lip-Balm-and-Treatment-z7EMe', NULL, NULL, '2020-08-07 13:14:35', '2020-08-07 13:14:35'),
(178, 38, 'Toner & Mists', 'Toner--Mists-xKxo0', NULL, NULL, '2020-08-07 13:15:38', '2020-08-07 13:15:38'),
(179, 39, 'Beauty Supplements', 'Beauty-Supplements-YOFAL', NULL, NULL, '2020-08-07 13:16:30', '2020-08-07 13:16:30'),
(180, 39, 'Multivitamins', 'Multivitamins-LuebQ', NULL, NULL, '2020-08-07 13:17:04', '2020-08-07 13:17:04'),
(181, 39, 'Sports Nutrition', 'Sports-Nutrition-RIOTZ', NULL, NULL, '2020-08-07 13:17:46', '2020-08-07 13:17:46'),
(182, 39, 'Well Being', 'Well-Being-TGyAz', NULL, NULL, '2020-08-07 13:18:44', '2020-08-07 13:18:44'),
(183, 40, 'First Aid Supplies', 'First-Aid-Supplies-TUI2t', NULL, NULL, '2020-08-07 13:21:09', '2020-08-07 13:21:09'),
(184, 40, 'Health Accessories', 'Health-Accessories-3i6Jk', NULL, NULL, '2020-08-07 13:22:04', '2020-08-07 13:22:04'),
(185, 40, 'Health Monitors & Tests', 'Health-Monitors--Tests-hHWcH', NULL, NULL, '2020-08-07 13:23:12', '2020-08-07 13:23:12'),
(186, 40, 'Injury Support and Braces', 'Injury-Support-and-Braces-BaPoa', NULL, NULL, '2020-08-07 13:25:17', '2020-08-07 13:25:17'),
(187, 40, 'Medical Tests', 'Medical-Tests-KtpYc', NULL, NULL, '2020-08-07 13:26:07', '2020-08-07 13:26:07'),
(188, 40, 'Nebulizer & Aspirators', 'Nebulizer--Aspirators-VWuJa', NULL, NULL, '2020-08-07 13:26:40', '2020-08-07 13:26:40'),
(189, 40, 'Ointments and Creams', 'Ointments-and-Creams-lpEgA', NULL, NULL, '2020-08-07 13:27:37', '2020-08-07 13:27:37'),
(190, 40, 'Scale & Body Fat Analyzers', 'Scale--Body-Fat-Analyzers-aoQAG', NULL, NULL, '2020-08-07 13:28:26', '2020-08-07 13:28:26'),
(191, 42, 'Baby & Toddler Foods', 'Baby--Toddler-Foods-pHot9', NULL, NULL, '2020-08-07 13:29:55', '2020-08-07 13:29:55'),
(192, 42, 'Milk Formula', 'Milk-Formula-tQD5X', NULL, NULL, '2020-08-07 13:30:23', '2020-08-07 13:30:23'),
(193, 43, 'Cloth Diapers & Accessories', 'Cloth-Diapers--Accessories-FxOBb', NULL, NULL, '2020-08-07 13:32:38', '2020-08-07 13:32:38'),
(194, 43, 'Diaper Bags', 'Diaper-Bags-L6ODG', NULL, NULL, '2020-08-07 13:33:28', '2020-08-07 13:33:28'),
(195, 43, 'Wipes & Holders', 'Wipes--Holders-GVq4u', NULL, NULL, '2020-08-07 13:34:16', '2020-08-07 13:34:16'),
(196, 43, 'Disposable Diapers', 'Disposable-Diapers-EBR2K', NULL, NULL, '2020-08-07 13:35:35', '2020-08-07 13:35:35'),
(197, 44, 'Baby Walkers', 'Baby-Walkers-5sxQB', NULL, NULL, '2020-08-07 13:37:06', '2020-08-07 13:37:06'),
(198, 44, 'Backpacks & Carriers', 'Backpacks--Carriers-MlOlu', NULL, NULL, '2020-08-07 13:37:59', '2020-08-07 13:37:59'),
(199, 44, 'Strollers', 'Strollers-alL09', NULL, NULL, '2020-08-07 13:39:00', '2020-08-07 13:39:00'),
(200, 44, 'Swings, Jumpers & Bouncers', 'Swings-Jumpers--Bouncers-nEj3i', NULL, NULL, '2020-08-07 13:39:51', '2020-08-07 13:39:51'),
(201, 45, 'Baby Bath', 'Baby-Bath-Bpwja', NULL, NULL, '2020-08-07 13:40:54', '2020-08-07 13:40:54'),
(202, 45, 'Baby Tubs', 'Baby-Tubs-1TJcH', NULL, NULL, '2020-08-07 13:41:12', '2020-08-07 13:41:12'),
(203, 45, 'Baby Shampoos & Conditioners', 'Baby-Shampoos--Conditioners-0Wqru', NULL, NULL, '2020-08-07 13:42:14', '2020-08-07 13:42:14'),
(204, 45, 'Soaps, Cleansers & Bodywash', 'Soaps-Cleansers--Bodywash-Eiy27', NULL, NULL, '2020-08-07 13:42:52', '2020-08-07 13:42:52'),
(205, 46, 'Girls Clothing', 'Girls-Clothing-FoZhP', NULL, NULL, '2020-08-07 13:45:02', '2020-08-07 13:45:02'),
(206, 46, 'Girls Shoes', 'Girls-Shoes-YgJv3', NULL, NULL, '2020-08-07 13:46:19', '2020-08-07 13:46:19'),
(207, 46, 'Boys Clothing', 'Boys-Clothing-fANtd', NULL, NULL, '2020-08-07 13:48:14', '2020-08-07 13:48:14'),
(208, 46, 'Maternity Wear', 'Maternity-Wear-bONmT', NULL, NULL, '2020-08-07 13:49:21', '2020-08-07 13:49:21'),
(209, 46, 'New Born Baby Dress Unisex (0 - 6 months)', 'New-Born-Baby-Dress-Unisex-0---6-months-AkUdG', NULL, NULL, '2020-08-07 13:50:42', '2020-08-07 13:50:42'),
(210, 46, 'New Born Bodysuits', 'New-Born-Bodysuits-gfFsu', NULL, NULL, '2020-08-07 13:52:06', '2020-08-07 13:52:06'),
(211, 46, 'New Born Sets & Packs', 'New-Born-Sets--Packs-9DXgJ', NULL, NULL, '2020-08-07 13:52:45', '2020-08-07 13:52:45'),
(212, 47, 'Baby Bathing Safety', 'Baby-Bathing-Safety-etkWc', NULL, NULL, '2020-08-07 13:53:31', '2020-08-07 13:53:31'),
(213, 47, 'Mattresses & Bedding', 'Mattresses--Bedding-k8TfE', NULL, NULL, '2020-08-07 13:54:33', '2020-08-07 13:54:33'),
(214, 47, 'Baby Sanitizers', 'Baby-Sanitizers-3D7cY', NULL, NULL, '2020-08-07 13:55:28', '2020-08-07 13:55:28'),
(215, 48, 'Action Figures & Collectibles', 'Action-Figures--Collectibles-1aFbn', NULL, NULL, '2020-08-07 13:56:40', '2020-08-07 13:56:40'),
(216, 48, 'Arts & Crafts for Kids', 'Arts--Crafts-for-Kids-xkadT', NULL, NULL, '2020-08-07 13:58:04', '2020-08-07 13:58:04'),
(217, 48, 'Ball Pits & Accessories', 'Ball-Pits--Accessories-3EJ3A', NULL, NULL, '2020-08-07 13:58:46', '2020-08-07 13:58:46'),
(218, 48, 'Blocks & Building Toys', 'Blocks--Building-Toys-5n6DY', NULL, NULL, '2020-08-07 13:59:36', '2020-08-07 13:59:36'),
(219, 48, 'Dolls & Accessories', 'Dolls--Accessories-CV7kB', NULL, NULL, '2020-08-07 14:00:15', '2020-08-07 14:00:15'),
(220, 48, 'Dress Up & Pretend Play', 'Dress-Up--Pretend-Play-zHvia', NULL, NULL, '2020-08-07 14:00:58', '2020-08-07 14:00:58'),
(221, 48, 'Electronic Toys', 'Electronic-Toys-s0dMI', NULL, NULL, '2020-08-07 14:02:05', '2020-08-07 14:02:05'),
(222, 48, 'Learning & Education', 'Learning--Education-Ejxij', NULL, NULL, '2020-08-07 14:02:40', '2020-08-07 14:02:40'),
(223, 48, 'Party Supplies', 'Party-Supplies-iEkoU', NULL, NULL, '2020-08-07 14:03:18', '2020-08-07 14:03:18'),
(224, 48, 'Puzzle', 'Puzzle-bKvxB', NULL, NULL, '2020-08-07 14:04:07', '2020-08-07 14:04:07'),
(225, 48, 'Slime & Squishy Toys', 'Slime--Squishy-Toys-BdzM6', NULL, NULL, '2020-08-07 14:05:18', '2020-08-07 14:05:18'),
(226, 48, 'Stuffed Toys', 'Stuffed-Toys-zeXMN', NULL, NULL, '2020-08-07 14:06:23', '2020-08-07 14:06:23'),
(227, 50, 'Activity Gym & Playmats', 'Activity-Gym--Playmats-gaINJ', NULL, NULL, '2020-08-07 14:49:54', '2020-08-07 14:49:54'),
(228, 50, 'Baby Toys - Balls', 'Baby-Toys---Balls-Xwgm9', NULL, NULL, '2020-08-07 14:50:52', '2020-08-07 14:51:12'),
(229, 50, 'Baby & Toddler - Bath Toys', 'Baby--Toddler---Bath-Toys-7EWvX', NULL, NULL, '2020-08-07 14:51:54', '2020-08-07 14:51:54'),
(230, 50, 'Crib Toys & Attachments', 'Crib-Toys--Attachments-od0AQ', NULL, NULL, '2020-08-07 14:55:34', '2020-08-07 14:55:34'),
(231, 50, 'Early Learning', 'Early-Learning-C9WL7', NULL, NULL, '2020-08-07 14:56:09', '2020-08-07 14:56:09'),
(232, 50, 'Indoor Climbers & Play Structures', 'Indoor-Climbers--Play-Structures-VCa1e', NULL, NULL, '2020-08-07 14:56:53', '2020-08-07 14:56:53'),
(233, 50, 'Push & Pull Toys', 'Push--Pull-Toys-aZhYN', NULL, NULL, '2020-08-07 14:59:37', '2020-08-07 14:59:37'),
(234, 50, 'Rocking & Spring Ride-Ons', 'Rocking--Spring-Ride-Ons-TZgl8', NULL, NULL, '2020-08-07 15:05:11', '2020-08-07 15:05:11'),
(235, 51, 'Die-Cast Vehicles', 'Rocking--Spring-Ride-Ons-fOTvi', NULL, NULL, '2020-08-07 15:11:28', '2020-08-07 15:12:40'),
(236, 51, 'RC Vehicles & Batteries', 'RC-Vehicles--Batteries-yuYYl', NULL, NULL, '2020-08-07 15:15:58', '2020-08-07 15:15:58'),
(237, 51, 'Play Trains & Railway Sets', 'Play-Trains--Railway-Sets-Ok1hk', NULL, NULL, '2020-08-07 15:33:49', '2020-08-07 15:33:49'),
(238, 51, 'Play Vehicles', 'Play-Vehicles-KANsn', NULL, NULL, '2020-08-07 15:35:17', '2020-08-07 15:35:17'),
(239, 51, 'Drones & Accessories', 'Drones--Accessories-zxCmQ', NULL, NULL, '2020-08-07 15:36:08', '2020-08-07 15:36:08'),
(240, 52, 'Fidget Spinners & Cubes', 'Fidget-Spinners--Cubes-yx6ib', NULL, NULL, '2020-08-07 15:36:51', '2020-08-07 15:36:51'),
(241, 52, 'Kids Bikes & Accessories', 'Kids-Bikes--Accessories-Jnavg', NULL, NULL, '2020-08-07 15:37:20', '2020-08-07 15:37:31'),
(242, 52, 'Swimming Pool & Water Toys', 'Swimming-Pool--Water-Toys-7H35k', NULL, NULL, '2020-08-07 15:40:45', '2020-08-07 15:40:45'),
(243, 52, 'Outdoor Toys', 'Outdoor-Toys-wNmfx', NULL, NULL, '2020-08-07 15:43:44', '2020-08-07 15:43:44'),
(244, 52, 'Play Tents & Tunnels', 'Play-Tents--Tunnels-qHpJ6', NULL, NULL, '2020-08-07 15:44:47', '2020-08-07 15:44:47'),
(245, 52, 'Boxing', 'Play-Tents--Tunnels-Qulb3', NULL, NULL, '2020-08-07 15:45:19', '2020-08-07 15:46:16'),
(246, 52, 'Play Sets & Playground Equipment', 'Play-Sets--Playground-Equipment-ecfvA', NULL, NULL, '2020-08-07 15:47:02', '2020-08-07 15:47:02'),
(247, 52, 'Sports Play', 'Sports-Play-cNcSg', NULL, NULL, '2020-08-07 15:49:05', '2020-08-07 15:49:05'),
(248, 52, 'Kids Tricycles', 'Kids-Tricycles-Zht1H', NULL, NULL, '2020-08-07 15:50:02', '2020-08-07 15:50:02'),
(249, 52, 'Toys Sports', 'Toys-Sports-yfs8W', NULL, NULL, '2020-08-07 15:50:50', '2020-08-07 15:50:50'),
(250, 53, 'Board Games', 'Board-Games-w8JLh', NULL, NULL, '2020-08-07 15:52:23', '2020-08-07 15:52:23'),
(251, 53, 'Card Games', 'Card-Games-3Yqta', NULL, NULL, '2020-08-07 15:53:09', '2020-08-07 15:53:09'),
(252, 53, 'Game Room Games', 'Game-Room-Games-alaFg', NULL, NULL, '2020-08-07 15:53:43', '2020-08-07 15:53:43'),
(253, 54, 'Coffee', 'Coffee-KLG6T', NULL, NULL, '2020-08-07 15:55:04', '2020-08-07 15:55:04'),
(254, 54, 'Hot Chocolate and Nutrition Drinks', 'Hot-Chocolate-and-Nutrition-Drinks-hc3kw', NULL, NULL, '2020-08-07 15:59:59', '2020-08-07 15:59:59'),
(255, 54, 'Powdered drink mixes', 'Powdered-drink-mixes-RQL3r', NULL, NULL, '2020-08-07 16:05:31', '2020-08-07 16:05:31'),
(256, 55, 'Biscuit', 'Biscuit-8mMvY', NULL, NULL, '2020-08-07 16:06:34', '2020-08-07 16:06:34'),
(257, 55, 'Breakfast Cereals', 'Breakfast-Cereals-Vd4n1', NULL, NULL, '2020-08-07 16:09:59', '2020-08-07 16:09:59'),
(258, 55, 'Chocolate Truffle & Assortments', 'Chocolate-Truffle--Assortments-DKNax', NULL, NULL, '2020-08-07 16:16:13', '2020-08-07 16:16:13'),
(259, 55, 'Oatmeals', 'Oatmeals-3nuIU', NULL, NULL, '2020-08-07 16:24:06', '2020-08-07 16:24:06'),
(260, 56, 'Canned Food', 'Canned-Food-GYcX6', NULL, NULL, '2020-08-07 16:27:31', '2020-08-07 16:27:31'),
(261, 56, 'Condiment Dressing', 'Condiment-Dressing-KAgWG', NULL, NULL, '2020-08-07 16:28:26', '2020-08-07 16:28:26'),
(262, 56, 'Grains, Beans &Pulses', 'Grains-Beans-Pulses-QiJa9', NULL, NULL, '2020-08-07 16:29:30', '2020-08-07 16:29:30'),
(263, 56, 'Home Baking & Sugar', 'Home-Baking--Sugar-z7dZc', NULL, NULL, '2020-08-07 16:33:15', '2020-08-07 16:33:15'),
(264, 56, 'Instant & Ready to Eat', 'Instant--Ready-to-Eat-nOmxC', NULL, NULL, '2020-08-07 16:42:29', '2020-08-07 16:42:29'),
(265, 56, 'Jarred Food', 'Jarred-Food-SXOfW', NULL, NULL, '2020-08-07 16:43:37', '2020-08-07 16:43:37'),
(266, 56, 'Noodles', 'Noodles-Z7f4M', NULL, NULL, '2020-08-07 16:44:19', '2020-08-07 16:44:19'),
(267, 56, 'Rice', 'Rice-0ylFk', NULL, NULL, '2020-08-07 16:44:49', '2020-08-07 16:44:49'),
(268, 128, 'Oil', 'Oil-Z17Pz', NULL, NULL, '2020-08-07 16:48:16', '2020-08-07 16:48:16'),
(269, 128, 'Herbs & Spices', 'Herbs--Spices-e47rN', NULL, NULL, '2020-08-07 16:52:28', '2020-08-07 16:52:28'),
(270, 128, 'Sauce', 'Sauce-8RP9y', NULL, NULL, '2020-08-07 16:54:56', '2020-08-07 16:54:56'),
(271, 57, 'AirCare', 'AirCare-VU4xL', NULL, NULL, '2020-08-07 16:56:00', '2020-08-07 16:56:00'),
(272, 57, 'Cleaning', 'Cleaning-uWiB8', NULL, NULL, '2020-08-07 16:56:37', '2020-08-07 16:56:37'),
(273, 54, 'Dishwashing', 'Cleaning-5LyAS', NULL, NULL, '2020-08-07 16:57:29', '2020-08-07 16:57:57'),
(274, 57, 'Laundry', 'Laundry-T0B0a', NULL, NULL, '2020-08-07 16:59:07', '2020-08-07 16:59:07'),
(275, 57, 'Pest Control', 'Pest-Control-A6OHI', NULL, NULL, '2020-08-07 16:59:44', '2020-08-07 16:59:44'),
(276, 58, 'Aquariums', 'Aquariums-ePQlL', NULL, NULL, '2020-08-07 17:27:22', '2020-08-07 17:27:22'),
(277, 58, 'fish food', 'fish-food-fSZKZ', NULL, NULL, '2020-08-07 17:28:16', '2020-08-07 17:28:16'),
(278, 58, 'Starter Kits', 'Starter-Kits-4zGCv', NULL, NULL, '2020-08-07 17:34:02', '2020-08-07 17:34:02'),
(279, 61, 'Bathroom Scales', 'Bathroom-Scales-ViVs6', NULL, NULL, '2020-08-07 17:47:49', '2020-08-07 17:47:49'),
(280, 61, 'Shower Caddies & Hangers', 'Shower-Caddies--Hangers-uYL4l', NULL, NULL, '2020-08-07 18:00:56', '2020-08-07 18:00:56'),
(281, 61, 'Towel Rails & Warmers', 'Towel-Rails--Warmers-AVn3k', NULL, NULL, '2020-08-07 18:03:24', '2020-08-07 18:03:24'),
(282, 61, 'Shower Curtains', 'Shower-Curtains-kqaon', NULL, NULL, '2020-08-07 19:11:23', '2020-08-07 19:11:23'),
(283, 61, 'Blankets & Throws', 'Blankets--Throws-kIYaj', NULL, NULL, '2020-08-07 19:56:11', '2020-08-07 19:56:11'),
(284, 61, 'Comforters, Quilts & Duvets', 'Comforters-Quilts--Duvets-uic5d', NULL, NULL, '2020-08-07 19:57:08', '2020-08-07 19:58:04'),
(285, 61, 'Mattress Pads', 'Mattress-Pads-enZss', NULL, NULL, '2020-08-07 19:58:50', '2020-08-07 19:58:50'),
(286, 61, 'Mattress Protectors', 'Mattress-Protectors-K1BYs', NULL, NULL, '2020-08-07 19:59:36', '2020-08-07 19:59:36'),
(287, 61, 'Pillows & Bolsters', 'Pillows--Bolsters-2T6tl', NULL, NULL, '2020-08-07 20:00:28', '2020-08-07 20:00:28'),
(288, 62, 'Artificial Flowers & Plants', 'Artificial-Flowers--Plants-rCpLe', NULL, NULL, '2020-08-07 20:02:05', '2020-08-07 20:02:05'),
(289, 62, 'Candles & Candleholders', 'Candles--Candleholders-aodgI', NULL, NULL, '2020-08-07 20:03:27', '2020-08-07 20:03:27'),
(290, 62, 'Clocks', 'Clocks-o5l8n', NULL, NULL, '2020-08-07 20:04:42', '2020-08-07 20:04:42'),
(291, 62, 'Curtains', 'Curtains-SyOFi', NULL, NULL, '2020-08-07 20:05:26', '2020-08-07 20:05:26'),
(292, 62, 'Home Décor', 'Home-Dcor-Mlkf9', NULL, NULL, '2020-08-07 20:06:28', '2020-08-07 20:06:28'),
(293, 62, 'Floor Carpets & Mats', 'Floor-Carpets--Mats-lK0GS', NULL, NULL, '2020-08-07 20:07:54', '2020-08-07 20:07:54'),
(294, 62, 'Vases & Vessels', 'Vases--Vessels-akzHa', NULL, NULL, '2020-08-07 20:09:01', '2020-08-07 20:09:01'),
(295, 63, 'Bedroom Furniture', 'Bedroom-Furniture-d2eHD', NULL, NULL, '2020-08-07 20:10:13', '2020-08-07 20:10:13'),
(296, 63, 'Living Room Furniture', 'Living-Room-Furniture-ap1F6', NULL, NULL, '2020-08-07 20:10:47', '2020-08-07 20:10:47'),
(297, 63, 'Home Office Furniture', 'Home-Office-Furniture-z739h', NULL, NULL, '2020-08-07 20:11:44', '2020-08-07 20:12:02'),
(298, 64, 'Storage & Organisation', 'Storage--Organisation-dKy4p', NULL, NULL, '2020-08-07 20:12:36', '2020-08-07 20:15:11'),
(299, 64, 'Coffee & Tea', 'Coffee--Tea-hrI3m', NULL, NULL, '2020-08-07 20:14:17', '2020-08-07 20:14:51'),
(300, 64, 'Cookware', 'Cookware-mX29H', NULL, NULL, '2020-08-07 20:15:24', '2020-08-07 20:15:24'),
(301, 64, 'Dinnerware', 'Dinnerware-53AM0', NULL, NULL, '2020-08-07 20:17:11', '2020-08-07 20:17:11'),
(302, 64, 'Kitchen & Table Linen', 'Kitchen--Table-Linen-3KkPK', NULL, NULL, '2020-08-07 20:18:40', '2020-08-07 20:18:40'),
(303, 64, 'Kitchen Storage & Accessories', 'Kitchen-Storage--Accessories-7kH2D', NULL, NULL, '2020-08-07 20:19:52', '2020-08-07 20:19:52'),
(304, 64, 'Kitchen Utensils', 'Kitchen-Utensils-pzvK1', NULL, NULL, '2020-08-07 20:20:31', '2020-08-07 20:20:31'),
(305, 64, 'Serveware', 'Serveware-8OBjX', NULL, NULL, '2020-08-07 20:21:20', '2020-08-07 20:21:20'),
(306, 66, 'Lighting', 'Lighting-BDkkp', NULL, NULL, '2020-08-07 20:21:59', '2020-08-07 20:21:59'),
(307, 66, 'Floor Lamps', 'Floor-Lamps-D6yYc', NULL, NULL, '2020-08-07 20:22:47', '2020-08-07 20:22:47'),
(308, 66, 'Lamp Shades', 'Lamp-Shades-arAG5', NULL, NULL, '2020-08-07 20:23:48', '2020-08-07 20:23:48'),
(309, 66, 'Light Bulbs', 'Light-Bulbs-5dyIa', NULL, NULL, '2020-08-07 20:24:58', '2020-08-07 20:24:58'),
(310, 66, 'Lighting Fixtures & Components', 'Lighting-Fixtures--Components-MqtYC', NULL, NULL, '2020-08-07 20:25:38', '2020-08-07 20:25:38'),
(311, 66, 'Outdoor Lighting', 'Outdoor-Lighting-N790u', NULL, NULL, '2020-08-07 20:26:28', '2020-08-07 20:27:03'),
(312, 66, 'Rechargeable & Flashlights', 'Rechargeable--Flashlights-4aSBA', NULL, NULL, '2020-08-07 20:27:54', '2020-08-07 20:27:54'),
(313, 66, 'Specialty Lighting', 'Specialty-Lighting-VUWKF', NULL, NULL, '2020-08-07 20:28:24', '2020-08-07 20:28:24'),
(314, 66, 'Specialty Lighting', 'Specialty-Lighting-Hdp5b', NULL, NULL, '2020-08-07 20:29:28', '2020-08-07 20:29:28'),
(315, 66, 'Table Lamps', 'Table-Lamps-ILhVv', NULL, NULL, '2020-08-07 21:53:47', '2020-08-07 21:54:01'),
(316, 66, 'Wall Lights & Sconces', 'Wall-Lights--Sconces-mJV9r', NULL, NULL, '2020-08-07 21:54:34', '2020-08-07 21:54:34'),
(317, 67, 'Brushes, Sponges & Wipers', 'Brushes-Sponges--Wipers-V9OR9', NULL, NULL, '2020-08-07 21:55:30', '2020-08-07 21:56:30'),
(318, 67, 'Brooms, Mops & Sweepers', 'Brooms-Mops--Sweepers-ccknr', NULL, NULL, '2020-08-07 21:56:16', '2020-08-07 21:56:16'),
(319, 67, 'Laundry Baskets & Hampers', 'Laundry-Baskets--Hampers-KpQ4I', NULL, NULL, '2020-08-07 21:57:14', '2020-08-07 21:57:14'),
(320, 67, 'Clothes Line & Drying Racks', 'Clothes-Line--Drying-Racks-4KjSH', NULL, NULL, '2020-08-07 21:57:43', '2020-08-07 21:57:43'),
(321, 67, 'Ironing Boards', 'Ironing-Boards-u8wgS', NULL, NULL, '2020-08-07 22:01:27', '2020-08-07 22:01:27'),
(322, 68, 'Outdoor Furniture', 'Outdoor-Furniture-gyL5D', NULL, NULL, '2020-08-07 22:05:01', '2020-08-07 22:05:01'),
(323, 68, 'Fixtures & Plumbing', 'Fixtures--Plumbing-c6Fx4', NULL, NULL, '2020-08-07 22:05:40', '2020-08-07 22:05:40'),
(324, 68, 'Electrical', 'Electrical-M3uPI', NULL, NULL, '2020-08-07 22:06:17', '2020-08-07 22:06:17'),
(325, 11, 'Hand Tool Parts & Accessories', 'Electrical-cg2ud', NULL, NULL, '2020-08-07 22:07:04', '2020-08-07 22:09:10'),
(326, 14, 'Power Tools', 'Power-Tools-XjkLZ', NULL, NULL, '2020-08-07 22:11:16', '2020-08-07 22:11:16'),
(327, 68, 'Security', 'Security-o7I1Y', NULL, NULL, '2020-08-07 22:13:23', '2020-08-07 22:13:23'),
(328, 69, 'Gifts & Wrapping', 'Gifts--Wrapping-YZcAJ', NULL, NULL, '2020-08-07 22:14:37', '2020-08-07 22:14:37'),
(329, 69, 'Packaging & Cartons', 'Packaging--Cartons-cZ6K1', NULL, NULL, '2020-08-07 22:15:06', '2020-08-07 22:15:06'),
(330, 69, 'Paper Products', 'Paper-Products-67qPd', NULL, NULL, '2020-08-07 22:15:42', '2020-08-07 22:15:42'),
(331, 69, 'School & Office Equipment', 'School--Office-Equipment-QAR9Q', NULL, NULL, '2020-08-07 22:16:37', '2020-08-07 22:16:37'),
(332, 69, 'Writing & Correction', 'Writing--Correction-KvdMF', NULL, NULL, '2020-08-07 22:17:08', '2020-08-07 22:17:08'),
(333, 69, 'Art Supplies', 'Art-Supplies-zU8Yg', NULL, NULL, '2020-08-07 22:18:01', '2020-08-07 22:18:01'),
(334, 69, 'Craft Supplies', 'Craft-Supplies-U8IvB', NULL, NULL, '2020-08-07 22:19:06', '2020-08-07 22:19:06'),
(335, 69, 'Sewing', 'Sewing-QNbLu', NULL, NULL, '2020-08-07 22:19:29', '2020-08-07 22:19:29'),
(336, 69, 'Religious Items', 'Religious-Items-9kMEP', NULL, NULL, '2020-08-07 22:19:58', '2020-08-07 22:19:58'),
(337, 70, 'eBooks', 'eBooks-zousQ', NULL, NULL, '2020-08-07 22:20:30', '2020-08-07 22:20:30'),
(338, 70, 'Musical Instruments', 'Musical-Instruments-ANALP', NULL, NULL, '2020-08-07 22:21:02', '2020-08-07 22:21:02'),
(339, 70, 'Books', 'Books-WcTqn', NULL, NULL, '2020-08-07 22:21:37', '2020-08-07 22:21:37'),
(340, 77, 'Dresses', 'Dresses-pQkGP', NULL, NULL, '2020-08-07 22:22:47', '2020-08-07 22:22:47'),
(341, 77, 'Tops', 'Tops-l92f7', NULL, NULL, '2020-08-07 22:23:29', '2020-08-07 22:23:29'),
(342, 77, 'Women\'s Pants & Leggings', 'Womens-Pants--Leggings-QMGjH', NULL, NULL, '2020-08-07 22:25:12', '2020-08-07 22:25:12'),
(343, 77, 'Shorts', 'Shorts-yXmS6', NULL, NULL, '2020-08-07 22:26:21', '2020-08-07 22:26:21'),
(344, 77, 'Women\'s Skirts', 'Womens-Skirts-BY0PF', NULL, NULL, '2020-08-07 22:27:30', '2020-08-07 22:27:30'),
(345, 77, 'Sweaters & Cardigans', 'Sweaters--Cardigans-Z2SwZ', NULL, NULL, '2020-08-07 22:28:00', '2020-08-07 22:28:00'),
(346, 77, 'Jackets & Coats', 'Jackets--Coats-Vs2oa', NULL, NULL, '2020-08-07 22:28:37', '2020-08-07 22:28:37'),
(347, 77, 'Girls', 'Girls-4TE78', NULL, NULL, '2020-08-07 22:29:14', '2020-08-07 22:29:25'),
(348, 78, 'Cross Body & Shoulder Bags', 'Cross-Body--Shoulder-Bags-ev5Mc', NULL, NULL, '2020-08-07 22:30:17', '2020-08-07 22:30:17'),
(349, 78, 'Clutches', 'Clutches-X7lCc', NULL, NULL, '2020-08-07 22:30:49', '2020-08-07 22:30:49'),
(350, 78, 'Top-Handle Bags', 'Clutches-uRHwL', NULL, NULL, '2020-08-07 22:31:37', '2020-08-07 22:32:19'),
(351, 79, 'Flat Sandals', 'Flat-Sandals-SVHKC', NULL, NULL, '2020-08-07 22:32:52', '2020-08-07 22:32:52'),
(352, 79, 'Heels', 'Heels-OAQGO', NULL, NULL, '2020-08-07 22:33:24', '2020-08-07 22:33:24'),
(353, 79, 'Flat Shoes', 'Flat-Shoes-0qNFs', NULL, NULL, '2020-08-07 22:33:58', '2020-08-07 22:33:58'),
(354, 79, 'Wedges', 'Wedges-V9Wae', NULL, NULL, '2020-08-07 22:34:40', '2020-08-07 22:34:40'),
(355, 79, 'Flip Flops', 'Flip-Flops-ELBOi', NULL, NULL, '2020-08-07 22:35:26', '2020-08-07 22:35:26'),
(356, 80, 'Fashion Jewellery', 'Fashion-Jewellery-ayHH4', NULL, NULL, '2020-08-07 22:36:11', '2020-08-07 22:36:11'),
(357, 80, 'Women Belts', 'Women-Belts-rVO9M', NULL, NULL, '2020-08-07 22:36:44', '2020-08-07 22:36:44'),
(358, 80, 'Women\'s Hair Accessories', 'Womens-Hair-Accessories-xRrTn', NULL, NULL, '2020-08-07 22:37:24', '2020-08-07 22:37:24'),
(359, 80, 'Women\'s Scarves', 'Womens-Scarves-Inlmn', NULL, NULL, '2020-08-07 22:37:53', '2020-08-07 22:37:53'),
(360, 80, 'Ladies Umbrellas', 'Ladies-Umbrellas-cgjyR', NULL, NULL, '2020-08-07 22:38:30', '2020-08-07 22:38:30'),
(361, 81, 'Bras', 'Bras-ahnRt', NULL, NULL, '2020-08-07 22:39:10', '2020-08-07 22:39:10'),
(362, 81, 'Lingerie Sets', 'Lingerie-Sets-8b2YD', NULL, NULL, '2020-08-07 22:47:28', '2020-08-07 22:47:28'),
(363, 81, 'Sleep & Loungewear', 'Sleep--Loungewear-UeRvC', NULL, NULL, '2020-08-07 22:48:42', '2020-08-07 22:48:42'),
(364, 81, 'Shapewear', 'Shapewear-QSEi2', NULL, NULL, '2020-08-07 22:49:32', '2020-08-07 22:49:32'),
(365, 82, 'Laptop cases', 'Laptop-cases-m8OvX', NULL, NULL, '2020-08-07 22:58:29', '2020-08-07 22:58:29'),
(366, 82, 'Suitcases', 'Suitcases-e3LGx', NULL, NULL, '2020-08-07 22:59:04', '2020-08-07 22:59:04'),
(367, 82, 'Travel Accessories', 'Travel-Accessories-AzUUD', NULL, NULL, '2020-08-07 22:59:56', '2020-08-07 22:59:56'),
(368, 88, 'Chinos', 'Chinos-D67Qj', NULL, NULL, '2020-08-07 23:37:39', '2020-08-07 23:37:39'),
(369, 88, 'Cargo', 'Cargo-FHgAs', NULL, NULL, '2020-08-07 23:38:14', '2020-08-07 23:38:14'),
(370, 88, 'Joggers & Sweats', 'Joggers--Sweats-qUtuJ', NULL, NULL, '2020-08-07 23:39:15', '2020-08-07 23:39:15'),
(371, 88, 'Shorts', 'Shorts-IhKSP', NULL, NULL, '2020-08-07 23:40:09', '2020-08-07 23:40:09'),
(372, 89, 'Fashion backpacks', 'Fashion-backpacks-BYYxr', NULL, NULL, '2020-08-07 23:40:47', '2020-08-07 23:40:47'),
(373, 89, 'Business Bags', 'Business-Bags-9hNK1', NULL, NULL, '2020-08-07 23:41:26', '2020-08-07 23:41:26'),
(374, 89, 'Messenger Bags', 'Messenger-Bags-mPIP8', NULL, NULL, '2020-08-07 23:42:30', '2020-08-07 23:42:47'),
(375, 89, 'Crossbody Bags', 'Crossbody-Bags-M76Vh', NULL, NULL, '2020-08-07 23:43:42', '2020-08-07 23:43:42'),
(376, 90, 'Sneakers', 'Sneakers-lSPK3', NULL, NULL, '2020-08-07 23:44:28', '2020-08-07 23:44:28'),
(377, 90, 'Sandals', 'Sandals-wlroR', NULL, NULL, '2020-08-07 23:45:01', '2020-08-07 23:45:01'),
(378, 90, 'Formal Shoes', 'Formal-Shoes-Nmvyh', NULL, NULL, '2020-08-07 23:45:38', '2020-08-07 23:45:38'),
(379, 90, 'Mens Boots', 'Mens-Boots-ULJZV', NULL, NULL, '2020-08-07 23:46:23', '2020-08-07 23:46:44'),
(380, 90, 'Flip Flops', 'Flip-Flops-MYPfR', NULL, NULL, '2020-08-07 23:47:16', '2020-08-07 23:47:16'),
(381, 90, 'Slip-Ons & Loafers', 'Slip-Ons--Loafers-llkKM', NULL, NULL, '2020-08-07 23:47:52', '2020-08-07 23:47:52'),
(382, 90, 'House Slippers', 'House-Slippers-mWT7c', NULL, NULL, '2020-08-07 23:51:31', '2020-08-07 23:51:31'),
(383, 90, 'Shoes', 'Shoes-QmUvz', NULL, NULL, '2020-08-07 23:52:55', '2020-08-07 23:52:55'),
(384, 91, 'Belts', 'Belts-RSITC', NULL, NULL, '2020-08-07 23:53:43', '2020-08-07 23:53:43'),
(385, 91, 'Fashion Wallets', 'Fashion-Wallets-cBrsj', NULL, NULL, '2020-08-07 23:54:14', '2020-08-07 23:54:14'),
(386, 91, 'Hats & Caps', 'Hats--Caps-ICozy', NULL, NULL, '2020-08-07 23:54:47', '2020-08-07 23:54:47'),
(387, 91, 'Ties & Bow Ties', 'Ties--Bow-Ties-4CPAi', NULL, NULL, '2020-08-07 23:55:43', '2020-08-07 23:55:43'),
(388, 91, 'Gloves For Men', 'Gloves-For-Men-DpMV0', NULL, NULL, '2020-08-07 23:56:26', '2020-08-07 23:56:26'),
(389, 92, 'Suits', 'Suits-tyPhs', NULL, NULL, '2020-08-07 23:58:12', '2020-08-07 23:58:12'),
(390, 92, 'Underwear', 'Underwear-Wfdxf', NULL, NULL, '2020-08-07 23:58:51', '2020-08-07 23:58:51'),
(391, 92, 'Boys Clothing', 'Clothing-FuT5g', NULL, NULL, '2020-08-07 23:59:35', '2020-08-08 00:00:47'),
(392, 92, 'Jackets & Coats', 'Jackets--Coats-drZ9h', NULL, NULL, '2020-08-08 00:00:04', '2020-08-08 00:00:04'),
(393, 92, 'Hoodies & Sweatshirts', 'Hoodies--Sweatshirts-P6ubi', NULL, NULL, '2020-08-08 00:01:31', '2020-08-08 00:01:31'),
(394, 92, 'Sweaters & Cardigans', 'Sweaters--Cardigans-7EIYv', NULL, NULL, '2020-08-08 00:02:06', '2020-08-08 00:02:06'),
(395, 93, 'Casual', 'Casual-mZglp', NULL, NULL, '2020-08-08 00:03:19', '2020-08-08 00:03:19'),
(396, 93, 'Business', 'Business-CZHBO', NULL, NULL, '2020-08-08 00:04:07', '2020-08-08 00:04:07'),
(397, 93, 'Fashion', 'Fashion-YXt17', NULL, NULL, '2020-08-08 00:04:58', '2020-08-08 00:04:58'),
(398, 93, 'Sports', 'Sports-ssp9t', NULL, NULL, '2020-08-08 00:05:37', '2020-08-08 00:05:37'),
(399, 94, 'Casual', 'Casual-Zq3ex', NULL, NULL, '2020-08-08 00:06:11', '2020-08-08 00:06:11'),
(400, 94, 'Business', 'Business-Zm4JD', NULL, NULL, '2020-08-08 00:06:40', '2020-08-08 00:06:40'),
(401, 94, 'Fashion', 'Fashion-fgOFU', NULL, NULL, '2020-08-08 00:07:16', '2020-08-08 00:07:16'),
(402, 95, 'Women\'s Rings', 'Womens-Rings-aP6ur', NULL, NULL, '2020-08-08 00:07:56', '2020-08-08 00:07:56'),
(403, 95, 'Necklaces', 'Necklaces-Da1Dq', NULL, NULL, '2020-08-08 00:08:33', '2020-08-08 00:08:33'),
(404, 95, 'Pendants', 'Pendants-R3cta', NULL, NULL, '2020-08-08 00:09:08', '2020-08-08 00:09:08'),
(405, 95, 'Earrings', 'Earrings-3bfI9', NULL, NULL, '2020-08-08 00:09:38', '2020-08-08 00:09:38'),
(406, 95, 'Jewellery sets', 'Jewellery-sets-VQ3nC', NULL, NULL, '2020-08-08 00:10:08', '2020-08-08 00:10:08'),
(407, 95, 'Bracelets', 'Bracelets-YELsY', NULL, NULL, '2020-08-08 00:10:44', '2020-08-08 00:10:44'),
(408, 96, 'Men Fashion Rings', 'Men-Fashion-Rings-VwNlm', NULL, NULL, '2020-08-08 00:11:25', '2020-08-08 00:11:25'),
(409, 96, 'Necklaces', 'Necklaces-EbjkE', NULL, NULL, '2020-08-08 00:12:15', '2020-08-08 00:12:15'),
(410, 96, 'Bracelets', 'Bracelets-l9FgE', NULL, NULL, '2020-08-08 00:12:50', '2020-08-08 00:12:50'),
(411, 99, 'Mens Sunglasses', 'Mens-Sunglasses-OnZkG', NULL, NULL, '2020-08-08 00:14:25', '2020-08-08 00:14:25'),
(412, 99, 'Women Sunglasses', 'Women-Sunglasses-UgKOC', NULL, NULL, '2020-08-08 00:14:54', '2020-08-08 00:14:54'),
(413, 99, 'Kids Sunglasses', 'Kids-Sunglasses-M9CxX', NULL, NULL, '2020-08-08 00:15:36', '2020-08-08 00:15:36'),
(414, 129, 'Man\'s Eyeglasses', 'Mans-Eyeglasses-NZK72', NULL, NULL, '2020-08-08 00:19:43', '2020-08-08 00:19:43'),
(415, 129, 'Woman\'s Eyeglasses', 'Womans-Eyeglasses-hWAkY', NULL, NULL, '2020-08-08 00:22:09', '2020-08-08 00:22:09'),
(416, 104, 'Bikes', 'Bikes-AWiaH', NULL, NULL, '2020-08-08 00:23:25', '2020-08-08 00:23:25'),
(417, 104, 'Bike Accessories', 'Bike-Accessories-MPP9k', NULL, NULL, '2020-08-08 00:24:21', '2020-08-08 00:24:21'),
(418, 105, 'Boxing Gloves', 'Boxing-Gloves-W03X4', NULL, NULL, '2020-08-08 00:25:08', '2020-08-08 00:25:08'),
(419, 105, 'Protective Gear', 'Protective-Gear-V4i7Z', NULL, NULL, '2020-08-08 00:25:44', '2020-08-08 00:25:44'),
(420, 105, 'Martial Art Equipment', 'Martial-Art-Equipment-EY4eY', NULL, NULL, '2020-08-08 00:27:46', '2020-08-08 00:27:46'),
(421, 105, 'Punching Bags & Accessories', 'Punching-Bags--Accessories-ibg4q', NULL, NULL, '2020-08-08 00:30:37', '2020-08-08 00:30:37'),
(422, 106, 'Clothing', 'Clothing-vzXer', NULL, NULL, '2020-08-08 00:31:26', '2020-08-08 00:31:26'),
(423, 106, 'Shoes', 'Shoes-bPxtV', NULL, NULL, '2020-08-08 00:32:07', '2020-08-08 00:32:07'),
(424, 106, 'Accessories', 'Accessories-ujblG', NULL, NULL, '2020-08-08 00:33:06', '2020-08-08 00:33:06'),
(425, 106, 'Bags', 'Bags-VYKFJ', NULL, NULL, '2020-08-08 00:34:00', '2020-08-08 00:34:00'),
(426, 107, 'Golf', 'Golf-u3g2D', NULL, NULL, '2020-08-08 00:34:41', '2020-08-08 00:34:41'),
(427, 107, 'Fishing', 'Fishing-wnB6d', NULL, NULL, '2020-08-08 00:35:27', '2020-08-08 00:35:27'),
(428, 107, 'Skateboards', 'Skateboards-88qjV', NULL, NULL, '2020-08-08 00:36:11', '2020-08-08 00:36:11'),
(429, 107, 'Water Sports', 'Water-Sports-OJG1z', NULL, NULL, '2020-08-08 00:36:52', '2020-08-08 00:36:52'),
(430, 108, 'Exercise Bikes', 'Exercise-Bikes-c1Ps0', NULL, NULL, '2020-08-08 00:37:38', '2020-08-08 00:37:38'),
(432, 71, 'handicraft', 'handicraft-qzjn3', NULL, NULL, '2020-08-13 22:11:18', '2020-08-13 22:11:18'),
(433, 130, 'Dabbas', 'Dabbas-bix57', NULL, NULL, '2020-08-23 14:05:41', '2020-08-23 14:05:41'),
(434, 14, 'Realme', 'Realme-SuWio', NULL, NULL, '2020-09-15 14:35:51', '2020-09-15 14:35:51'),
(435, 131, 'Linvilla Orchards', 'Linvilla-Orchards-1nHc0', NULL, NULL, '2020-09-15 15:22:44', '2020-09-15 15:22:44'),
(436, 132, 'Apple', 'Apple-PMiwZ', NULL, NULL, '2020-09-15 15:36:16', '2020-09-15 15:36:16'),
(437, 94, 'Titan', 'Titan-2Y5nY', NULL, NULL, '2020-09-15 15:44:42', '2020-09-15 15:44:42'),
(439, 135, 'Burger And Snacks', 'Burger-And-Snacks-HF8sH', 'Burger And Snacks', NULL, '2021-02-26 00:28:47', '2021-02-26 00:28:47'),
(440, 139, 'Halim', 'Halim-40T4X', 'Halim', NULL, '2021-02-26 00:45:46', '2021-02-26 00:45:46'),
(441, 147, 'Momos', 'Momos-VXuhc', 'Momos', NULL, '2021-02-26 00:46:33', '2021-02-26 00:46:33'),
(442, 136, 'Juice', 'Juice-unvhY', 'Juice', NULL, '2021-02-26 00:46:54', '2021-02-26 00:46:54'),
(443, 145, 'Fish Fry', 'Fish-Fry-wd6vK', 'Fish Fry', NULL, '2021-02-26 00:47:16', '2021-02-26 00:47:16'),
(444, 140, 'Bora & Chop', 'Bora--Chop-ofcA8', 'Bora & Chop', NULL, '2021-02-26 00:47:53', '2021-02-26 00:47:53'),
(445, 137, 'Fuska & Chotpoti', 'Fuska--Chotpoti-u3QuQ', 'Fuska & Chotpoti', NULL, '2021-02-26 00:48:22', '2021-02-26 00:48:22'),
(446, 138, 'Intestine', 'Intestine-Yvrmy', 'Intestine', NULL, '2021-02-26 00:48:49', '2021-02-26 00:48:49'),
(447, 143, 'Cake(Pitha)', 'CakePitha-d4MbM', 'Cake(Pitha)', NULL, '2021-02-26 00:49:18', '2021-02-26 00:49:18'),
(448, 141, 'Chapti with Vhorta', 'Chapti-with-Vhorta-pqQ3s', 'Chapti with Vhorta', NULL, '2021-02-26 00:49:47', '2021-02-26 00:49:47'),
(449, 144, 'Koliza Vhuna & Porota', 'Koliza-Vhuna--Porota-F0MTs', 'Koliza Vhuna & Porota', NULL, '2021-02-26 00:50:17', '2021-02-26 00:50:17'),
(450, 142, 'Pickle (Achar)', 'Pickle-Achar-N8gZL', 'Pickle', NULL, '2021-02-26 00:51:31', '2021-02-26 00:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(11) NOT NULL DEFAULT 0,
  `client_viewed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `verification_code`, `balance`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(12, NULL, NULL, 'admin', 'Design Website', 'admin@admin.com', '2020-08-06 02:08:43', '$2y$10$GOFAFYBS4PUgAtk5ynr37.ZqsqYOwJYO2KhTisd0.EogrP93c7BzC', 'GrO31yOE29xha9eedAXmseiA9jVOv38crjBQFjNSWXK4b03sG6e79gzLCJjl', NULL, 'uploads/avatar/VCO6jkcz1EQeDUPLw3J9LtwrPnzxuwbabJ0sjMK0.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-08-06 02:44:43', '2021-02-26 14:36:37'),
(47, NULL, NULL, 'customer', 'Akash', 'akashcse1212@gmail.com', NULL, '$2y$10$Iu2L7RN52vjJyU6ZVuUbJOY7/NtnwJUpI2084OMELRUp/EarQaKgq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-28 05:47:06', '2020-12-28 05:47:06'),
(51, NULL, NULL, 'customer', 'Shovon', NULL, NULL, '$2y$10$TpddhvCpMGlAdvwqAETlz.VVJQtNez.t51fFofyM0cViXuYYydfOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+1973274143', 332703, 0.00, NULL, NULL, 0, '2020-12-28 08:23:05', '2020-12-28 08:23:05'),
(52, NULL, NULL, 'seller', 'tarek', 'tarekrehman71@gmail.com', NULL, '$2y$10$yJuh/e2gBtqZG.BGB1/n7OPHIs4RQq6MAPcxakSPyEpbiJwFHo1M6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2020-12-28 08:26:57', '2020-12-28 08:26:57'),
(54, NULL, NULL, 'customer', 'Jobayed Sumon', 'sumonjobayed@gmail.com', '2021-02-27 05:44:15', '$2y$10$fFoWZpJ9kBRx/u0qNgymj.sfLZYxcEG1WM9Y51ESebxCF73jAlqba', 'YqZxexWdfitweNpSA5VaqEnxiIZd5BBtZWpZUAHChcbiZXTut0cQ69N0Linb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2021-02-26 14:57:11', '2021-02-26 14:57:11'),
(55, NULL, NULL, 'customer', 'Fahad', NULL, '2021-02-02 22:06:35', '$2y$10$0yisf/cpCQc9gP88IxqN6.P9D0JRqPdho1BafukyyYRwqUcasKvPm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+1590110612', 431173, 0.00, NULL, NULL, 0, '2021-02-27 15:59:45', '2021-02-27 15:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval` int(11) NOT NULL DEFAULT 0,
  `offline_payment` int(11) NOT NULL DEFAULT 0,
  `reciept` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_configs`
--
ALTER TABLE `affiliate_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_options`
--
ALTER TABLE `affiliate_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_payments`
--
ALTER TABLE `affiliate_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
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
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_configurations`
--
ALTER TABLE `otp_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_packages`
--
ALTER TABLE `seller_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `affiliate_configs`
--
ALTER TABLE `affiliate_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_options`
--
ALTER TABLE `affiliate_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `affiliate_payments`
--
ALTER TABLE `affiliate_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `otp_configurations`
--
ALTER TABLE `otp_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seller_packages`
--
ALTER TABLE `seller_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
