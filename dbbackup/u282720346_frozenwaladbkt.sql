-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2025 at 06:35 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u282720346_frozenwaladbkt`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac_accounts`
--

CREATE TABLE `ac_accounts` (
  `id` int(11) NOT NULL,
  `count_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_code` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `account_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `account_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `balance` double(20,4) DEFAULT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `delete_bit` int(11) DEFAULT 0,
  `account_selection_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paymenttypes_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expense_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ac_moneydeposits`
--

CREATE TABLE `ac_moneydeposits` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `deposit_date` date DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `debit_account_id` int(11) DEFAULT NULL,
  `credit_account_id` int(11) DEFAULT NULL,
  `amount` double(20,4) DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ac_moneytransfer`
--

CREATE TABLE `ac_moneytransfer` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL,
  `transfer_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `debit_account_id` int(11) DEFAULT NULL,
  `credit_account_id` int(11) DEFAULT NULL,
  `amount` double(20,4) DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ac_transactions`
--

CREATE TABLE `ac_transactions` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `debit_account_id` int(11) DEFAULT NULL,
  `credit_account_id` int(11) DEFAULT NULL,
  `debit_amt` double(20,4) DEFAULT NULL,
  `credit_amt` double(20,4) DEFAULT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `ref_accounts_id` int(11) DEFAULT NULL COMMENT 'reference table',
  `ref_moneytransfer_id` int(11) DEFAULT NULL COMMENT 'reference table',
  `ref_moneydeposits_id` int(11) DEFAULT NULL COMMENT 'reference table',
  `ref_salespayments_id` int(11) DEFAULT NULL,
  `ref_salespaymentsreturn_id` int(11) DEFAULT NULL,
  `ref_purchasepayments_id` int(11) DEFAULT NULL,
  `ref_purchasepaymentsreturn_id` int(11) DEFAULT NULL,
  `ref_expense_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `short_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ce08188f3a3a4e0b7312fb78282784ce445fc643', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', 1746625581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363632353538313b63757272656e63797c733a333a22e282b9223b63757272656e63795f706c6163656d656e747c733a343a224c656674223b63757272656e63795f636f64657c733a333a22494e52223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a2246726f7a656e77616c61223b696e765f757365726e616d657c733a31303a2246726f7a656e77616c61223b757365725f6c6e616d657c733a343a22466f6f64223b696e765f7573657269647c733a313a2232223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2232223b726f6c655f6e616d657c733a31313a2253746f72652041646d696e223b73746f72655f69647c733a313a2232223b656d61696c7c733a32303a2261646d696e4066726f7a656e77616c612e636f6d223b6c616e67756167657c733a373a22456e676c697368223b6c616e67756167655f69647c733a313a2231223b),
('fd3b600e914f37222d639dd853feb2aa2c960c11', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', 1746625608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363632353538313b63757272656e63797c733a333a22e282b9223b63757272656e63795f706c6163656d656e747c733a343a224c656674223b63757272656e63795f636f64657c733a333a22494e52223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a2246726f7a656e77616c61223b696e765f757365726e616d657c733a31303a2246726f7a656e77616c61223b757365725f6c6e616d657c733a343a22466f6f64223b696e765f7573657269647c733a313a2232223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2232223b726f6c655f6e616d657c733a31313a2253746f72652041646d696e223b73746f72655f69647c733a313a2232223b656d61696c7c733a32303a2261646d696e4066726f7a656e77616c612e636f6d223b6c616e67756167657c733a373a22456e676c697368223b6c616e67756167655f69647c733a313a2231223b),
('ee77f9cf5d443212a3413baebc9a88c841627632', '2a02:4780:2c:3::5', 1746667173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363636373137313b63757272656e63797c733a303a22223b63757272656e63795f706c6163656d656e747c733a303a22223b63757272656e63795f636f64657c733a303a22223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a22534141532041444d494e223b),
('1f6e4780704f66f76f1b3631850c2660db860c15', '2405:201:8015:9c10:b9c4:a012:24b3:61e5', 1746685482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363638353438323b63757272656e63797c733a333a22e282b9223b63757272656e63795f706c6163656d656e747c733a343a224c656674223b63757272656e63795f636f64657c733a333a22494e52223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a2246726f7a656e77616c61223b696e765f757365726e616d657c733a31303a2246726f7a656e77616c61223b757365725f6c6e616d657c733a343a22466f6f64223b696e765f7573657269647c733a313a2232223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2232223b726f6c655f6e616d657c733a31313a2253746f72652041646d696e223b73746f72655f69647c733a313a2232223b656d61696c7c733a32303a2261646d696e4066726f7a656e77616c612e636f6d223b6c616e67756167657c733a373a22456e676c697368223b6c616e67756167655f69647c733a313a2231223b),
('dd6250961114b04f14c9c325b4b65303e029e7f8', '2405:201:8015:9c10:b9c4:a012:24b3:61e5', 1746685844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363638353834343b63757272656e63797c733a333a22e282b9223b63757272656e63795f706c6163656d656e747c733a343a224c656674223b63757272656e63795f636f64657c733a333a22494e52223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a2246726f7a656e77616c61223b696e765f757365726e616d657c733a31303a2246726f7a656e77616c61223b757365725f6c6e616d657c733a343a22466f6f64223b696e765f7573657269647c733a313a2232223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2232223b726f6c655f6e616d657c733a31313a2253746f72652041646d696e223b73746f72655f69647c733a313a2232223b656d61696c7c733a32303a2261646d696e4066726f7a656e77616c612e636f6d223b6c616e67756167657c733a373a22456e676c697368223b6c616e67756167655f69647c733a313a2231223b),
('bd241f132871a11245630aef674d327fec79335e', '2405:201:8015:9c10:b9c4:a012:24b3:61e5', 1746685846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363638353834343b63757272656e63797c733a333a22e282b9223b63757272656e63795f706c6163656d656e747c733a343a224c656674223b63757272656e63795f636f64657c733a333a22494e52223b766965775f646174657c733a31303a2264642d6d6d2d79797979223b766965775f74696d657c733a323a223132223b646563696d616c737c733a313a2232223b7174795f646563696d616c737c733a313a2232223b73746f72655f6e616d657c733a31303a2246726f7a656e77616c61223b696e765f757365726e616d657c733a31303a2246726f7a656e77616c61223b757365725f6c6e616d657c733a343a22466f6f64223b696e765f7573657269647c733a313a2232223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2232223b726f6c655f6e616d657c733a31313a2253746f72652041646d696e223b73746f72655f69647c733a313a2232223b656d61696c7c733a32303a2261646d696e4066726f7a656e77616c612e636f6d223b6c616e67756167657c733a373a22456e676c697368223b6c616e67756167655f69647c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `db_bankdetails`
--

CREATE TABLE `db_bankdetails` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `holder_name` varchar(250) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL COMMENT 'IFSC or Bank Code',
  `account_type` varchar(250) DEFAULT NULL,
  `account_number` varchar(250) DEFAULT NULL,
  `other_details` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_brands`
--

CREATE TABLE `db_brands` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `brand_code` varchar(50) DEFAULT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_brands`
--

INSERT INTO `db_brands` (`id`, `store_id`, `brand_code`, `brand_name`, `description`, `status`) VALUES
(1, 2, NULL, 'ITC', '', 1),
(2, 2, NULL, 'CC', 'CHIEF CHEF', 1),
(3, 2, NULL, 'CP', '', 1),
(4, 2, NULL, 'HUNGRITOS', '', 1),
(5, 2, NULL, 'MCCAIN', '', 1),
(6, 2, NULL, 'YUMMIEZ', '', 1),
(7, 2, NULL, 'AL-MOMOS', '', 1),
(8, 2, NULL, 'AMUL', '', 1),
(9, 2, NULL, 'MILKY MIST', '', 1),
(10, 2, NULL, 'BRITANNIA', '', 1),
(16, 2, NULL, 'ALLANA', '', 1),
(17, 2, NULL, 'APRIL 3RD FOODS', '', 1),
(18, 2, NULL, 'AMAR FOODS', '', 1),
(19, 2, NULL, 'HALDIRAM', '', 1),
(20, 2, NULL, 'CHEF CATCH', '', 1),
(21, 2, NULL, 'BLUE FRAME', '', 1),
(22, 2, NULL, 'BAIDYANATH', '', 1),
(23, 2, NULL, 'SARWAR', '', 1),
(24, 2, NULL, 'CHEF ARTS', '', 1),
(25, 2, NULL, 'MILKANA', '', 1),
(26, 2, NULL, 'FUN FOOD', '', 1),
(27, 2, NULL, 'FOOD RITE', '', 1),
(28, 2, NULL, 'CHILLFILL', '', 1),
(29, 2, NULL, 'SETH', '', 1),
(30, 2, NULL, 'ZORABIAN', '', 1),
(31, 2, NULL, 'HABIT', '', 1),
(32, 2, NULL, 'GOODRICH', '', 1),
(33, 2, NULL, 'CREMICA', '', 1),
(34, 2, NULL, 'DELICIOUS', '', 1),
(35, 2, NULL, 'DANKO', '', 1),
(36, 2, NULL, 'PANKO', '', 1),
(37, 2, NULL, 'DEL MONTE', '', 1),
(38, 2, NULL, 'EDAMAME', '', 1),
(39, 2, NULL, 'EURO GOLD', '', 1),
(40, 2, NULL, 'FRESH 2 GO', '', 1),
(41, 2, NULL, 'GO', '', 1),
(42, 2, NULL, 'FALCON (JUST CRAVE)', '', 1),
(43, 2, NULL, 'FRUT MAX', '', 1),
(44, 2, NULL, 'FERNS', '', 1),
(45, 2, NULL, 'FROST FEAST', '', 1),
(46, 2, NULL, 'FROZO', '', 1),
(47, 2, NULL, 'FROST GARDEN', '', 1),
(48, 2, NULL, 'FUNWAVE', '', 1),
(49, 2, NULL, 'GADRE', '', 1),
(50, 2, NULL, 'GOELD', '', 1),
(51, 2, NULL, 'HEALTHFULL', '', 1),
(52, 2, NULL, 'HOI', '', 1),
(53, 2, NULL, 'HYFUN', '', 1),
(54, 2, NULL, 'LONDON DAIRY', '', 1),
(55, 2, NULL, 'LOYKA', '', 1),
(56, 2, NULL, 'MEHRAN', '', 1),
(57, 2, NULL, 'SHAN', '', 1),
(58, 2, NULL, 'NANDINI', '', 1),
(59, 2, NULL, 'NEO', '', 1),
(60, 2, NULL, 'PARAS', '', 1),
(61, 2, NULL, 'PURE BERRY', '', 1),
(62, 2, NULL, 'PURE GOLD', '', 1),
(63, 2, NULL, 'PRABHAT', '', 1),
(64, 2, NULL, 'QUICK BITE', '', 1),
(65, 2, NULL, 'RICHLITE', '', 1),
(66, 2, NULL, 'ROC', '', 1),
(67, 2, NULL, 'SIRIUS FOODS', '', 1),
(68, 2, NULL, 'SILIGO', '', 1),
(69, 2, NULL, 'SHAHI PARATHA', '', 1),
(70, 2, NULL, 'SWITZ', '', 1),
(71, 2, NULL, 'TASTY FRESH', '', 1),
(72, 2, NULL, 'TASTY BITE', '', 1),
(73, 2, NULL, 'TAUCIES', '', 1),
(74, 2, NULL, 'TINGLISH', '', 1),
(75, 2, NULL, 'TRANSGREEN', '', 1),
(76, 2, NULL, 'VEEBA', '', 1),
(77, 2, NULL, 'VENKY&#039;S', '', 1),
(78, 2, NULL, 'AL MOMOS', '', 1),
(79, 2, NULL, 'BUN', '', 1),
(80, 2, NULL, 'CHEF ART', '', 1),
(81, 2, NULL, 'DELICIOUS(BARAMATI)', '', 1),
(82, 2, NULL, 'FALCON', '', 1),
(83, 2, NULL, 'HUP HUP', '', 1),
(84, 2, NULL, 'FUN FOODS', '', 1),
(85, 2, NULL, 'PURE BERYY', '', 1),
(86, 2, NULL, 'FOODRITE', '', 1),
(87, 2, NULL, 'YUMWAY', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create category Code',
  `category_code` varchar(50) DEFAULT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `store_id`, `count_id`, `category_code`, `category_name`, `description`, `company_id`, `status`, `image`) VALUES
(1, 2, 1, 'CT0001', 'FROZEN FOOD(VEG)', '', NULL, 1, ''),
(2, 2, 2, 'CT0002', 'FROZEN FOOD (NON VEG)', '', NULL, 1, ''),
(3, 2, 3, 'CT0003', 'AMBIENT', '', NULL, 1, ''),
(4, 2, 4, 'CT0004', 'SEA FOOD', '', NULL, 1, ''),
(5, 2, 5, 'CT0005', 'GENERAL', '', NULL, 1, ''),
(12, 2, 12, 'CT0012', 'test cat', '', NULL, 1, ''),
(13, 2, 13, 'CT0013', 'FROZEN FOOD(NON VEG)', '', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_chalan`
--

CREATE TABLE `db_chalan` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sales_date` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `delivered_by` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_chalan_item`
--

CREATE TABLE `db_chalan_item` (
  `id` int(11) NOT NULL,
  `chalan_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_cobpayments`
--

CREATE TABLE `db_cobpayments` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(10,2) DEFAULT NULL,
  `payment_note` mediumtext DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_company`
--

CREATE TABLE `db_company` (
  `id` double DEFAULT NULL,
  `company_code` varchar(150) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `company_website` varchar(150) DEFAULT NULL,
  `mobile` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `company_logo` text DEFAULT NULL,
  `logo` mediumtext DEFAULT NULL,
  `upi_id` varchar(50) DEFAULT NULL,
  `upi_code` text DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `gst_no` varchar(50) DEFAULT NULL,
  `vat_no` varchar(50) DEFAULT NULL,
  `pan_no` varchar(50) DEFAULT NULL,
  `bank_details` mediumtext DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `category_init` varchar(5) DEFAULT NULL,
  `item_init` varchar(5) DEFAULT NULL COMMENT 'INITAL CODE',
  `supplier_init` varchar(5) DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_init` varchar(5) DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_return_init` varchar(5) DEFAULT NULL,
  `customer_init` varchar(5) DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_init` varchar(5) DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_return_init` varchar(5) DEFAULT NULL,
  `expense_init` varchar(5) DEFAULT NULL,
  `invoice_view` int(11) DEFAULT NULL COMMENT '1=Standard,2=Indian GST',
  `status` int(11) DEFAULT NULL,
  `sms_status` int(11) DEFAULT NULL COMMENT '1=Enable 0=Disable',
  `sales_terms_and_conditions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_company`
--

INSERT INTO `db_company` (`id`, `company_code`, `company_name`, `company_website`, `mobile`, `phone`, `email`, `website`, `company_logo`, `logo`, `upi_id`, `upi_code`, `country`, `state`, `city`, `address`, `postcode`, `gst_no`, `vat_no`, `pan_no`, `bank_details`, `cid`, `category_init`, `item_init`, `supplier_init`, `purchase_init`, `purchase_return_init`, `customer_init`, `sales_init`, `sales_return_init`, `expense_init`, `invoice_view`, `status`, `sms_status`, `sales_terms_and_conditions`) VALUES
(1, '', 'Company Name', NULL, '9999999999', '', 'admin@example.com', '', 'company_logo.png', 'logo-0.png', NULL, NULL, 'India', 'Karnataka', 'Belgaum', 'Address Details', '', '', '', '', '', 1, 'CT', 'IT', 'SP', 'PU', 'PR', 'CU', 'SL', 'PR', 'EX', 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_country`
--

CREATE TABLE `db_country` (
  `id` int(11) NOT NULL,
  `country` varchar(4050) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_country`
--

INSERT INTO `db_country` (`id`, `country`, `added_on`, `status`) VALUES
(3, 'Albania', '2020-11-03', 0),
(4, 'Algeria', '2020-11-03', 0),
(5, 'Andorra', '2020-11-03', 0),
(6, 'Angola', '2020-11-03', 0),
(7, 'Antigua and Barbuda', '2020-11-03', 0),
(8, 'Argentina', '2020-11-03', 0),
(9, 'Armenia', '2020-11-03', 0),
(10, 'Australia', '2020-11-03', 0),
(11, 'Austria', '2020-11-03', 0),
(13, 'Bahamas', '2020-11-03', 0),
(14, 'Bahrain', '2020-11-03', 0),
(15, 'Bangladesh', '2020-11-03', 0),
(16, 'Barbados', '2020-11-03', 0),
(17, 'Belarus', '2020-11-03', 0),
(18, 'Belgium', '2020-11-03', 0),
(19, 'Belize', '2020-11-03', 0),
(20, 'Benin', '2020-11-03', 0),
(21, 'Bhutan', '2020-11-03', 0),
(22, 'Bolivia', '2020-11-03', 0),
(23, 'Bosnia and Herzegovina', '2020-11-03', 0),
(24, 'Botswana', '2020-11-03', 0),
(25, 'Brazil', '2020-11-03', 0),
(26, 'Brunei', '2020-11-03', 0),
(27, 'Bulgaria', '2020-11-03', 0),
(28, 'Burkina Faso', '2020-11-03', 0),
(29, 'Burma', '2020-11-03', 0),
(30, 'Burundi', '2020-11-03', 0),
(31, 'Cambodia', '2020-11-03', 0),
(32, 'Cameroon', '2020-11-03', 0),
(33, 'Canada', '2020-11-03', 0),
(34, 'Cape Verde', '2020-11-03', 0),
(35, 'Central African Republic', '2020-11-03', 0),
(36, 'Chad', '2020-11-03', 0),
(37, 'Chile', '2020-11-03', 0),
(38, 'China', '2020-11-03', 0),
(39, 'Colombia', '2020-11-03', 0),
(40, 'Comoros', '2020-11-03', 0),
(41, 'Congo', '2020-11-03', 0),
(42, 'Cook Islands', '2020-11-03', 0),
(43, 'Costa Rica', '2020-11-03', 0),
(44, 'Croatia', '2020-11-03', 0),
(45, 'Cuba', '2020-11-03', 0),
(46, 'Cyprus', '2020-11-03', 0),
(47, 'Czech Republic', '2020-11-03', 0),
(48, 'C?te d\'Ivoire', '2020-11-03', 0),
(49, 'Denmark', '2020-11-03', 0),
(50, 'Djibouti', '2020-11-03', 0),
(51, 'Dominica', '2020-11-03', 0),
(52, 'Dominican Republic', '2020-11-03', 0),
(53, 'East Timor', '2020-11-03', 0),
(54, 'Ecuador', '2020-11-03', 0),
(55, 'Egypt', '2020-11-03', 0),
(56, 'El Salvador', '2020-11-03', 0),
(57, 'Equatorial Guinea', '2020-11-03', 0),
(58, 'Eritrea', '2020-11-03', 0),
(59, 'Estonia', '2020-11-03', 0),
(60, 'Ethiopia', '2020-11-03', 0),
(61, 'Fiji', '2020-11-03', 0),
(62, 'Finland', '2020-11-03', 0),
(63, 'France', '2020-11-03', 0),
(64, 'Gabon', '2020-11-03', 0),
(65, 'Gambia', '2020-11-03', 0),
(66, 'Georgia', '2020-11-03', 0),
(67, 'Germany', '2020-11-03', 0),
(68, 'Ghana', '2020-11-03', 0),
(69, 'Greece', '2020-11-03', 0),
(70, 'Grenada', '2020-11-03', 0),
(71, 'Guatemala', '2020-11-03', 0),
(72, 'Guinea', '2020-11-03', 0),
(73, 'Guinea-Bissau', '2020-11-03', 0),
(74, 'Guyana', '2020-11-03', 0),
(75, 'Haiti', '2020-11-03', 0),
(76, 'Honduras', '2020-11-03', 0),
(77, 'Hungary', '2020-11-03', 0),
(78, 'Iceland', '2020-11-03', 0),
(79, 'India', '2020-11-03', 1),
(80, 'Indonesia', '2020-11-03', 0),
(81, 'Iran', '2020-11-03', 0),
(82, 'Iraq', '2020-11-03', 0),
(83, 'Ireland', '2020-11-03', 0),
(84, 'Israel', '2020-11-03', 0),
(85, 'Italy', '2020-11-03', 0),
(86, 'Ivory Coast', '2020-11-03', 0),
(87, 'Jamaica', '2020-11-03', 0),
(88, 'Japan', '2020-11-03', 0),
(89, 'Jordan', '2020-11-03', 0),
(90, 'Kazakhstan', '2020-11-03', 0),
(91, 'Kenya', '2020-11-03', 0),
(92, 'Kiribati', '2020-11-03', 0),
(93, 'Korea, North', '2020-11-03', 0),
(94, 'Korea, South', '2020-11-03', 0),
(95, 'Kosovo', '2020-11-03', 0),
(96, 'Kuwait', '2020-11-03', 0),
(97, 'Kyrgyzstan', '2020-11-03', 0),
(98, 'Laos', '2020-11-03', 0),
(99, 'Latvia', '2020-11-03', 0),
(100, 'Lebanon', '2020-11-03', 0),
(101, 'Lesotho', '2020-11-03', 0),
(102, 'Liberia', '2020-11-03', 0),
(103, 'Libya', '2020-11-03', 0),
(104, 'Liechtenstein', '2020-11-03', 0),
(105, 'Lithuania', '2020-11-03', 0),
(106, 'Luxembourg', '2020-11-03', 0),
(107, 'Macedonia', '2020-11-03', 0),
(108, 'Madagascar', '2020-11-03', 0),
(109, 'Malawi', '2020-11-03', 0),
(110, 'Malaysia', '2020-11-03', 0),
(111, 'Maldives', '2020-11-03', 0),
(112, 'Mali', '2020-11-03', 0),
(113, 'Malta', '2020-11-03', 0),
(114, 'Marshall Islands', '2020-11-03', 0),
(115, 'Mauritania', '2020-11-03', 0),
(116, 'Mauritius', '2020-11-03', 0),
(117, 'Mexico', '2020-11-03', 0),
(118, 'Micronesia', '2020-11-03', 0),
(119, 'Moldova', '2020-11-03', 0),
(120, 'Monaco', '2020-11-03', 0),
(121, 'Mongolia', '2020-11-03', 0),
(122, 'Montenegro', '2020-11-03', 0),
(123, 'Morocco', '2020-11-03', 0),
(124, 'Mozambique', '2020-11-03', 0),
(125, 'Myanmar / Burma', '2020-11-03', 0),
(126, 'Nagorno-Karabakh', '2020-11-03', 0),
(127, 'Namibia', '2020-11-03', 0),
(128, 'Nauru', '2020-11-03', 0),
(129, 'Nepal', '2020-11-03', 0),
(130, 'Netherlands', '2020-11-03', 0),
(131, 'New Zealand', '2020-11-03', 0),
(132, 'Nicaragua', '2020-11-03', 0),
(133, 'Niger', '2020-11-03', 0),
(134, 'Nigeria', '2020-11-03', 0),
(135, 'Niue', '2020-11-03', 0),
(136, 'Northern Cyprus', '2020-11-03', 0),
(137, 'Norway', '2020-11-03', 0),
(138, 'Oman', '2020-11-03', 0),
(139, 'Pakistan', '2020-11-03', 0),
(140, 'Palau', '2020-11-03', 0),
(141, 'Palestine', '2020-11-03', 0),
(142, 'Panama', '2020-11-03', 0),
(143, 'Papua New Guinea', '2020-11-03', 0),
(144, 'Paraguay', '2020-11-03', 1),
(145, 'Peru', '2020-11-03', 1),
(146, 'Philippines', '2020-11-03', 1),
(147, 'Poland', '2020-11-03', 1),
(148, 'Portugal', '2020-11-03', 1),
(149, 'Qatar', '2020-11-03', 1),
(150, 'Romania', '2020-11-03', 1),
(151, 'Russia', '2020-11-03', 1),
(152, 'Rwanda', '2020-11-03', 1),
(153, 'Sahrawi Arab Democratic Republic', '2020-11-03', 1),
(154, 'Saint Kitts and Nevis', '2020-11-03', 0),
(155, 'Saint Lucia', '2020-11-03', 0),
(156, 'Saint Vincent and the Grenadines', '2020-11-03', 0),
(157, 'Samoa', '2020-11-03', 0),
(158, 'San Marino', '2020-11-03', 0),
(159, 'Saudi Arabia', '2020-11-03', 0),
(160, 'Senegal', '2020-11-03', 0),
(161, 'Serbia', '2020-11-03', 0),
(162, 'Seychelles', '2020-11-03', 0),
(163, 'Sierra Leone', '2020-11-03', 0),
(164, 'Singapore', '2020-11-03', 0),
(165, 'Slovakia', '2020-11-03', 0),
(166, 'Slovenia', '2020-11-03', 0),
(167, 'Solomon Islands', '2020-11-03', 0),
(168, 'Somalia', '2020-11-03', 0),
(169, 'Somaliland', '2020-11-03', 0),
(170, 'South Africa', '2020-11-03', 0),
(171, 'South Ossetia', '2020-11-03', 0),
(172, 'Spain', '2020-11-03', 0),
(173, 'Sri Lanka', '2020-11-03', 0),
(174, 'Sudan', '2020-11-03', 0),
(175, 'Suriname', '2020-11-03', 0),
(176, 'Swaziland', '2020-11-03', 0),
(177, 'Sweden', '2020-11-03', 0),
(178, 'Switzerland', '2020-11-03', 0),
(179, 'Syria', '2020-11-03', 0),
(180, 'S?o Tom? and Pr?ncipe', '2020-11-03', 0),
(181, 'Taiwan', '2020-11-03', 0),
(182, 'Tajikistan', '2020-11-03', 0),
(183, 'Tanzania', '2020-11-03', 0),
(184, 'Thailand', '2020-11-03', 0),
(185, 'Timor-Leste / East Timor', '2020-11-03', 0),
(186, 'Togo', '2020-11-03', 0),
(187, 'Tonga', '2020-11-03', 0),
(188, 'Trinidad and Tobago', '2020-11-03', 0),
(189, 'Tunisia', '2020-11-03', 0),
(190, 'Turkey', '2020-11-03', 0),
(191, 'Turkmenistan', '2020-11-03', 0),
(192, 'Tuvalu', '2020-11-03', 0),
(193, 'Uganda', '2020-11-03', 0),
(194, 'Ukraine', '2020-11-03', 0),
(195, 'United Arab Emirates', '2020-11-03', 0),
(197, 'United States', '2020-11-03', 0),
(199, 'Uzbekistan', '2020-11-03', 0),
(200, 'Vanuatu', '2020-11-03', 0),
(202, 'Venezuela', '2020-11-03', 0),
(203, 'Vietnam', '2020-11-03', 0),
(204, 'Yemen', '2020-11-03', 0),
(205, 'Zambia', '2020-11-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_coupons`
--

CREATE TABLE `db_coupons` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `value` double(20,2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `system_name` varchar(250) DEFAULT NULL,
  `system_ip` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_currency`
--

CREATE TABLE `db_currency` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) DEFAULT NULL,
  `currency_code` varchar(20) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `symbol` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_currency`
--

INSERT INTO `db_currency` (`id`, `currency_name`, `currency_code`, `currency`, `symbol`, `status`) VALUES
(1, 'Bulgaria-Bulgarian lev(BGN)', NULL, 0xd0bbd0b2, NULL, 0),
(2, 'Switzerland \r-Swiss franc (CHF)', NULL, 0x434846, NULL, 0),
(3, 'Czechia-Czech koruna(CZK))', NULL, 0x4bc48d20, NULL, 0),
(4, 'Denmark-Danish krone(DKK)', NULL, 0x6b7220, NULL, 0),
(5, 'Euro area countries -Euro(EUR)', NULL, 0xe282ac20, NULL, 0),
(6, 'United Kingdom-Pounds sterling (GBP)', NULL, 0xc2a3, NULL, 0),
(7, 'Croatia -Croatian Kuna (HRK)', NULL, 0x6b6e, NULL, 0),
(8, 'Georgia -Georgian lari (GEL)', NULL, 0x2623383338323b, NULL, 0),
(9, 'Hungary -Hungarian forint (HUF)', NULL, 0x6674, NULL, 0),
(10, 'Norway -Norwegian krone (NOK)', NULL, 0x6b72, NULL, 0),
(11, 'Poland -Polish zloty (PLN)', NULL, 0x7ac58220, NULL, 0),
(12, 'Russia -Russian ruble (RUB)', NULL, 0x2623383338313b20, NULL, 0),
(13, 'Romania -Romanian leu (RON)', NULL, 0x6c6569, NULL, 0),
(14, 'Sweden - Swedish krona (SEK)', NULL, 0x6b72, NULL, 0),
(15, 'Turkey -Turkish lira (TRY)', NULL, 0x2623383337383b20, NULL, 0),
(16, 'Ukraine - Ukrainian hryvna  (UAH)', NULL, 0xe282b420, NULL, 0),
(17, 'UAE -Emirati dirham (AED)', NULL, 0xd8af2ed8a520, NULL, 0),
(18, 'Israel - Israeli shekel (ILS)', NULL, 0x2623383336323b20, NULL, 0),
(19, 'Kenya - Kenyan shilling(KES)', NULL, 0x4b7368, NULL, 0),
(20, 'Morocco - Moroccan dirham (MAD)', NULL, 0x2ed8af2ed98520, NULL, 0),
(21, 'Nigeria - Nigerian naira (NGN)', NULL, 0xe282a620, NULL, 0),
(22, 'South Africa -South african rand** (ZAR)', NULL, 0x52, NULL, 0),
(23, 'Brazil- Brazilian real(BRL)', NULL, 0x5224, NULL, 0),
(24, 'Canada-Canadian dollars (CAD)', NULL, 0x24, NULL, 0),
(25, 'Chile -Chilean peso (CLP)', NULL, 0x24, NULL, 0),
(26, 'Colombia -Colombian peso (COP)', NULL, 0x24, NULL, 0),
(27, 'Mexico - Mexican peso (MXN)', NULL, 0x24, NULL, 0),
(28, 'Peru -Peruvian sol(PEN)', NULL, 0x532f2e20, NULL, 0),
(29, 'USA -US dollar (USD)', NULL, 0x24, NULL, 0),
(30, 'Australia -Australian dollars (AUD)', NULL, 0x24, NULL, 0),
(31, 'Bangladesh -Bangladeshi taka (BDT) ', NULL, 0x2623323534373b20, NULL, 0),
(32, 'China - Chinese yuan (CNY)', NULL, 0x262332303830333b20, NULL, 0),
(33, 'Hong Kong - Hong Kong dollar(HKD)', NULL, 0x262333363b20, NULL, 0),
(34, 'Indonesia - Indonesian rupiah (IDR)', NULL, 0x5270, NULL, 0),
(35, 'India - Indian rupee', 'INR', 0xe282b9, '?', 1),
(36, 'Japan - Japanese yen (JPY)', NULL, 0xc2a5, NULL, 0),
(37, 'Malaysia - Malaysian ringgit (MYR)', NULL, 0x524d, NULL, 0),
(38, 'New Zealand - New Zealand dollar (NZD)', NULL, 0x24, NULL, 0),
(39, 'Philippines- Philippine peso (PHP)', NULL, 0xe282b120, NULL, 0),
(40, 'Pakistan- Pakistani rupee (PKR)', NULL, 0x527320, NULL, 0),
(41, 'Singapore - Singapore dollar (SGD)', NULL, 0x24, NULL, 0),
(42, 'South Korea - South Korean won (KRW)', NULL, 0x2623383336313b20, NULL, 0),
(43, 'Sri Lanka - Sri Lankan rupee (LKR)', NULL, 0x5273, NULL, 0),
(44, 'Thailand- Thai baht (THB)', NULL, 0x2623333634373b20, NULL, 0),
(45, 'Vietnam - Vietnamese dong', 'VND', 0xe282ab, NULL, 0),
(46, 'Bitcoin - BTC or XBT', 'BTC ', 0xe282bf, NULL, 0),
(47, 'Ripples', 'XRP', 0x585250, NULL, 0),
(48, 'Monero', 'XMR', 0xc9b1, NULL, 0),
(49, 'Litecoin', 'LTC', 0xc581, NULL, 0),
(50, 'Ethereum', 'ETH', 0xce9e, NULL, 0),
(51, 'Euro', 'EUR', 0xe282ac, NULL, 0),
(52, 'Pounds sterling', 'GBP', 0xc2a3, NULL, 0),
(53, 'US dollar', 'USD', 0x24, NULL, 0),
(54, 'Japanese yen', 'JPY', 0xc2a5, NULL, 0),
(55, 'Omani rial', 'OMR', 0xd8b12ed8b92e, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_custadvance`
--

CREATE TABLE `db_custadvance` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` double(20,4) DEFAULT NULL,
  `payment_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_customers`
--

CREATE TABLE `db_customers` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Customer Code',
  `customer_code` varchar(20) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `vatin` varchar(100) DEFAULT NULL,
  `opening_balance` double(20,4) DEFAULT NULL,
  `sales_due` double(20,4) DEFAULT NULL,
  `sales_return_due` double(20,4) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `ship_country_id` int(11) DEFAULT NULL,
  `ship_state_id` int(11) DEFAULT NULL,
  `ship_city` varchar(100) DEFAULT NULL,
  `ship_postcode` varchar(10) DEFAULT NULL,
  `ship_address` text DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(30) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `location_link` text DEFAULT NULL,
  `attachment_1` text DEFAULT NULL,
  `price_level_type` varchar(50) DEFAULT 'Increase',
  `price_level` double(20,4) DEFAULT 0.0000,
  `delete_bit` int(11) DEFAULT 0,
  `tot_advance` double(20,4) DEFAULT NULL,
  `credit_limit` double(20,4) DEFAULT -1.0000,
  `shippingaddress_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_customers`
--

INSERT INTO `db_customers` (`id`, `store_id`, `count_id`, `customer_code`, `customer_name`, `mobile`, `phone`, `email`, `gstin`, `tax_number`, `vatin`, `opening_balance`, `sales_due`, `sales_return_due`, `country_id`, `state_id`, `city`, `postcode`, `address`, `ship_country_id`, `ship_state_id`, `ship_city`, `ship_postcode`, `ship_address`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `location_link`, `attachment_1`, `price_level_type`, `price_level`, `delete_bit`, `tot_advance`, `credit_limit`, `shippingaddress_id`) VALUES
(1, 2, 1, 'CU0001', 'OWAIS PAWASKAR', '9892543476', '', 'owaispawaskar@gmail.com', '', '', NULL, 0.0000, 0.0000, NULL, 79, 65, 'Mumbai', '400102', 'jogeshwari ', NULL, NULL, NULL, NULL, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:47:52 pm', 'Frozenwala', NULL, 1, '', NULL, 'Increase', 0.0000, 0, 0.0000, -1.0000, 645);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer_coupons`
--

CREATE TABLE `db_customer_coupons` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `value` double(20,2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `system_name` varchar(250) DEFAULT NULL,
  `system_ip` varchar(250) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_customer_payments`
--

CREATE TABLE `db_customer_payments` (
  `id` int(11) NOT NULL,
  `salespayment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment` double(10,2) DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_emailtemplates`
--

CREATE TABLE `db_emailtemplates` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `key` varchar(150) DEFAULT NULL,
  `template_name` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `variables` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `undelete_bit` int(11) DEFAULT NULL,
  `admin_only` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_emailtemplates`
--

INSERT INTO `db_emailtemplates` (`id`, `store_id`, `key`, `template_name`, `content`, `variables`, `status`, `undelete_bit`, `admin_only`) VALUES
(1, 1, 'SAAS_FORGOT_PASSWORD_EMAIL', 'Site forgot password email template', 'Hi {{user_name}},\r\n\r\nyour OTP is {{email_otp}}\r\n\r\nThank you\r\n{{saas_name}}', '{{user_name}}<br>\r\n{{saas_name}}<br>\r\n{{email_otp}}<br>', 1, 1, 1),
(2, 1, 'SAAS_WELCOME_EMAIL', 'Site welcome email', 'Hi {{user_name}},\r\nYour email id {{email_id}},\r\nwelcome to our {{saas_name}},\r\n\r\nThank you', '{{user_name}}<br>\r\n{{email_id}}<br>\r\n{{saas_name}}<br>', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_expense`
--

CREATE TABLE `db_expense` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Expense Code',
  `expense_code` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `expense_for` varchar(100) DEFAULT NULL,
  `expense_amt` double(20,4) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_expense_category`
--

CREATE TABLE `db_expense_category` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `category_code` varchar(50) DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_finance`
--

CREATE TABLE `db_finance` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `finance_name` varchar(250) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_finance`
--

INSERT INTO `db_finance` (`id`, `store_id`, `finance_name`, `description`, `company_id`, `status`) VALUES
(6, 2, 'BAJAJ', 'BAJAJ FINANCE', NULL, 1),
(7, 2, 'HDFC BANK', 'HDFC BANK', NULL, 1),
(8, 2, 'ICICI', '', NULL, 1),
(9, 2, 'TVS', '', NULL, 1),
(10, 2, 'IDFC', '', NULL, 1),
(11, 2, 'BAJAJ FINSERV', '', NULL, 1),
(13, 2, 'HDB FINANCE', 'HDB FINANCE', NULL, 1),
(15, 2, 'TVS CREDIT', 'TVS FINANCE', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_fivemojo`
--

CREATE TABLE `db_fivemojo` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instance_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_hold`
--

CREATE TABLE `db_hold` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `reference_id` varchar(50) DEFAULT NULL COMMENT 'Temprary',
  `reference_no` varchar(50) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `sales_status` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,2) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,2) DEFAULT NULL,
  `discount_to_all_input` double(20,2) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,2) DEFAULT NULL,
  `subtotal` double(20,2) DEFAULT NULL,
  `round_off` double(20,2) DEFAULT NULL,
  `grand_total` double(20,4) DEFAULT NULL,
  `sales_note` text DEFAULT NULL,
  `pos` int(11) DEFAULT NULL COMMENT '1=yes 0=no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_holditems`
--

CREATE TABLE `db_holditems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `hold_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sales_qty` double(20,2) DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_instamojo`
--

CREATE TABLE `db_instamojo` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_instamojo`
--

INSERT INTO `db_instamojo` (`id`, `store_id`, `sandbox`, `api_key`, `api_token`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 1, '', '', '2021-02-22', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_instamojopayments`
--

CREATE TABLE `db_instamojopayments` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `buyer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `purpose` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `expires_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `send_sms` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'false',
  `send_email` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'false',
  `sms_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `shorturl` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `longurl` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `redirect_url` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `webhook` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `allow_repeated_payments` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'false',
  `customer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `modified_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_items`
--

CREATE TABLE `db_items` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create ITEM Code',
  `item_code` varchar(50) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `hsn` varchar(50) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `alert_qty` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `lot_number` varchar(50) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `price` double(20,4) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `purchase_price` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `profit_margin` double(20,2) DEFAULT NULL,
  `sales_price` double(20,4) DEFAULT NULL,
  `stock` double(20,2) DEFAULT NULL,
  `item_image` text DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount_type` varchar(100) DEFAULT 'Percentage',
  `discount` double(20,2) DEFAULT 0.00,
  `service_bit` int(11) DEFAULT 0,
  `seller_points` double(20,2) DEFAULT 0.00,
  `custom_barcode` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `item_group` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `child_bit` int(11) DEFAULT 0,
  `mrp` double(20,4) DEFAULT NULL,
  `piece_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_items`
--

INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(1, 2, 1, 'IT020001', 'CCP ACHARI CHICKEN SEEKH KEBAB 1 KG', 2, '', '16010000', 7, 10, 2, '', NULL, 196.4300, 15, 220.0000, 'INCLUSIVE', 109.09, 460.0000, 44.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:27:46 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', 'CHICKEN SEEKH ', 'Single', NULL, NULL, 0, 580.0000, 0),
(2, 2, 2, 'IT020002', 'CCP AFGHANI CHICKEN SEEKH KEBAB 1 KG', 2, '', '16010000', 7, 10, 2, '', NULL, 196.4300, 15, 220.0000, 'INCLUSIVE', 109.09, 460.0000, 30.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:27:46 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', 'CHICKEN SEEKH ', 'Single', NULL, NULL, 0, 580.0000, 0),
(3, 2, 3, 'IT020003', 'CCP ANGARA CHICKEN SEEKH KEBAB 1 KG', 2, '', '16010000', 7, 10, 2, '', NULL, 196.4300, 15, 220.0000, 'INCLUSIVE', 109.09, 460.0000, 30.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:27:46 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', 'CHICKEN SEEKH ', 'Single', NULL, NULL, 0, 580.0000, 0),
(4, 2, 4, 'IT020004', 'CCP BLACK PEPPER CHICKEN SEEKH KEBAB 1 KG', 2, '', '16010000', 7, 10, 2, '', NULL, 196.4300, 15, 220.0000, 'INCLUSIVE', 109.09, 460.0000, 38.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:27:46 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', 'CHICKEN SEEKH ', 'Single', NULL, NULL, 0, 580.0000, 0),
(5, 2, 5, 'IT020005', 'CCP CHICKEN CLASSIC SEEKH KEBAB 1 KG', 2, '', '16010000', 7, 10, 2, '', NULL, 196.4300, 15, 220.0000, 'Inclusive', 109.09, 460.0000, 21.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-05', '05:27:46 pm', 'Frozenwala', NULL, 1, '', 0.00, 0, 0.00, '', 'CHICKEN SEEKH ', 'Single', NULL, NULL, 0, 580.0000, 0),
(6, 2, 6, 'IT020006', 'test1', 12, '', '32232', 11, 32, 1, NULL, NULL, 100.0000, 1, 100.0000, 'Inclusive', 11.00, 111.0000, 11.00, 'uploads/items/1746529272.jpg', '2405:201:800d:893c:6d36:d9a7:b240:79b8', '2405:201:800d:893c:6d36:d9a7:b240:79b8', '2025-05-06', '04:31:10 pm', 'Frozenwala', NULL, 1, '', 0.00, 0, 0.00, '323222', '323', 'Single', NULL, NULL, 0, 111.0000, 11),
(7, 2, 7, 'IT020007', 'A3F BUTTER CHICKEN MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 140.4600, 16, 140.5800, 'INCLUSIVE', 42.27, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(8, 2, 8, 'IT020008', 'A3F CHICKEN BARBEQUE MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 130.7800, 16, 130.9000, 'Exclusive', 52.79, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(9, 2, 9, 'IT020009', 'A3F CHICKEN CHEESE KURKURE MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 173.6000, 16, 173.7200, 'Exclusive', 43.91, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(10, 2, 10, 'IT020010', 'A3F CHICKEN CHEESE MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 164.6900, 16, 164.8100, 'Exclusive', 33.49, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(11, 2, 11, 'IT020011', 'A3F CHICKEN KURKURE MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 130.2000, 16, 130.3200, 'Exclusive', 53.47, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(12, 2, 12, 'IT020012', 'A3F CHICKEN MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 121.0900, 16, 121.2100, 'Exclusive', 48.50, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(13, 2, 13, 'IT020013', 'A3F CHICKEN PEPPER BAO 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 124.5500, 16, 124.6700, 'Exclusive', 36.07, 169.6400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(14, 2, 14, 'IT020014', 'A3F CHICKEN PERI PERI BAO 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 139.5000, 16, 139.6200, 'Exclusive', 36.08, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(15, 2, 15, 'IT020015', 'A3F CHICKEN PERI PERI MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 130.7800, 16, 130.9000, 'Exclusive', 52.79, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(16, 2, 16, 'IT020016', 'A3F CHICKEN SCHEZWAN MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 130.7800, 16, 130.9000, 'Exclusive', 52.79, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(17, 2, 17, 'IT020017', 'A3F CHICKEN TIKKA BAO 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 124.5500, 16, 124.6700, 'Exclusive', 0.00, 124.5500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 124.5500, 0),
(18, 2, 18, 'IT020018', 'A3F CHICKEN TIKKA MOMOS 500 GM', 13, '', '19022010', 81, 20, 17, '', NULL, 130.7800, 16, 130.9000, 'Exclusive', 52.79, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(19, 2, 19, 'IT020019', 'A3F COCO BUN BAO 500 GM', 1, '', '19022010', 81, 20, 17, '', NULL, 139.5000, 16, 139.6200, 'Exclusive', 36.08, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(20, 2, 20, 'IT020020', 'A3F CORN &amp; CHEESE MOMOS 500 GM', 1, '', '19022010', 81, 20, 17, '', NULL, 164.6900, 16, 164.8100, 'Exclusive', 39.56, 230.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(21, 2, 21, 'IT020021', 'A3F MIX VEG KURKURE MOMOS 500 GM', 1, '', '19022010', 81, 20, 17, '', NULL, 114.7000, 16, 114.8200, 'Exclusive', 56.77, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(22, 2, 22, 'IT020022', 'A3F MIX VEG MOMOS 500 GM', 1, '', '19022010', 81, 20, 17, '', NULL, 106.5600, 16, 106.6800, 'Exclusive', 59.36, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(23, 2, 23, 'IT020023', 'A3F PANEER MOMOS 500 GM', 1, '', '19022010', 81, 20, 17, '', NULL, 135.6300, 16, 135.7500, 'Exclusive', 39.96, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(24, 2, 24, 'IT020024', 'A3F VEG SCHEZWAN MOMOS', 1, '', '19022010', 81, 20, 17, '', NULL, 116.2500, 16, 116.3700, 'Exclusive', 54.68, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(25, 2, 25, 'IT020025', 'AF FROZEN BREADED FISH FINGER 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 410.7100, 16, 410.8300, 'Exclusive', 36.31, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(26, 2, 26, 'IT020026', 'AF FROZEN BREADED FISH STRIPS 500 GM', 4, '', '16041290', 81, 20, 18, '', NULL, 220.0000, 16, 220.1200, 'Exclusive', 45.38, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 425.0000, 0),
(27, 2, 27, 'IT020027', 'AF FROZEN FISH CHEESE BALL 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 440.0000, 17, 440.1800, 'Exclusive', 40.85, 620.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 850.0000, 0),
(28, 2, 28, 'IT020028', 'AF FROZEN FISH NUGGETS', 4, '', '16041290', 81, 20, 18, '', NULL, 425.0000, 16, 425.1200, 'Exclusive', 29.38, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 800.0000, 0),
(29, 2, 29, 'IT020029', 'AF FROZEN INDIAN MACKEREL 6/8', 4, '', '3035910', 81, 20, 18, '', NULL, 145.0000, 18, 145.0500, 'Exclusive', 72.35, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(30, 2, 30, 'IT020030', 'AF FROZEN PRAWN CHEESE BALL 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 450.0000, 17, 450.1800, 'Exclusive', 37.72, 620.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 850.0000, 0),
(31, 2, 31, 'IT020031', 'AF FROZEN PRAWN SAMOSA 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 460.0000, 16, 460.1200, 'Exclusive', 30.40, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 850.0000, 0),
(32, 2, 32, 'IT020032', 'AF FROZEN PRAWN SPRING ROLLS 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 440.0000, 16, 440.1200, 'Exclusive', 36.33, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 800.0000, 0),
(33, 2, 33, 'IT020033', 'AF FROZEN S. POMFRET 100/200', 4, '', '3038950', 81, 20, 18, '', NULL, 714.2900, 18, 714.3400, 'Exclusive', 39.99, 1000.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1300.0000, 0),
(34, 2, 34, 'IT020034', 'AF FROZEN SURMAI STEAKS 10/15', 4, '', '3038940', 81, 20, 18, '', NULL, 600.0000, 18, 600.0500, 'Exclusive', 91.65, 1150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1200.0000, 0),
(35, 2, 35, 'IT020035', 'AF FROZEN SURMAI STEAKS 6/7', 4, '', '3038940', 81, 20, 18, '', NULL, 840.0000, 18, 840.0500, 'Exclusive', 36.90, 1150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1800.0000, 0),
(36, 2, 36, 'IT020036', 'AF FROZEN TANDOORI FISH FINGER 1 KG', 4, '', '16041290', 81, 20, 18, '', NULL, 430.0000, 16, 430.1200, 'Exclusive', 34.85, 580.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 800.0000, 0),
(37, 2, 37, 'IT020037', 'AL CHICKEN CHEESE KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 155.0000, NULL, 155.0000, 'Exclusive', 41.94, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(38, 2, 38, 'IT020038', 'AL CHICKEN CHEESE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 180.0000, NULL, 180.0000, 'Exclusive', 22.22, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(39, 2, 39, 'IT020039', 'AL CHICKEN CHEESY  MOMOS', 13, '', '', 81, 20, 78, '', NULL, 205.0000, NULL, 205.0000, 'Exclusive', 21.95, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(40, 2, 40, 'IT020040', 'AL CHICKEN CHEESY KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 175.0000, NULL, 175.0000, 'Exclusive', 42.86, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(41, 2, 41, 'IT020041', 'AL CHICKEN KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 126.0000, NULL, 126.0000, 'Exclusive', 50.79, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(42, 2, 42, 'IT020042', 'AL CHICKEN PERI PERI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 155.0000, NULL, 155.0000, 'Exclusive', 22.58, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(43, 2, 43, 'IT020043', 'AL CHICKEN SCHEZWAN MOMOS', 13, '', '', 81, 20, 78, '', NULL, 143.0000, NULL, 143.0000, 'Exclusive', 32.87, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(44, 2, 44, 'IT020044', 'AL CHICKEN TANDOORI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 180.0000, NULL, 180.0000, 'Exclusive', 22.22, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(45, 2, 45, 'IT020045', 'AL SIMPLE CHICKEN MINI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 105.0000, NULL, 105.0000, 'Exclusive', 42.86, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(46, 2, 46, 'IT020046', 'AL SIMPLE CHICKEN MOMOS', 13, '', '', 81, 20, 78, '', NULL, 130.0000, NULL, 130.0000, 'Exclusive', 30.77, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(47, 2, 47, 'IT020047', 'AL SIMPLE PANEER MOMOS', 1, '', '', 81, 20, 78, '', NULL, 143.0000, NULL, 143.0000, 'Exclusive', 32.87, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(48, 2, 48, 'IT020048', 'AL SIMPLE VEG MOMOS', 1, '', '', 81, 20, 78, '', NULL, 105.0000, NULL, 105.0000, 'Exclusive', 42.86, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(49, 2, 49, 'IT020049', 'AL VEG CHEESE MOMOS', 1, '', '', 81, 20, 78, '', NULL, 155.0000, NULL, 155.0000, 'Exclusive', 0.00, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(50, 2, 50, 'IT020050', 'AL VEG KURKURE MOMOS', 1, '', '', 81, 20, 78, '', NULL, 106.0000, NULL, 106.0000, 'Exclusive', 60.38, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(51, 2, 51, 'IT020051', 'ALLANA MUTTON CURRY CUT 1 KG', 13, '', '2044300', 81, 20, 16, '', NULL, 559.0000, 18, 559.0500, 'Exclusive', 23.42, 690.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 850.0000, 0),
(52, 2, 52, 'IT020052', 'ALLANA MUTTON PREMIER BONELESS 1 KG', 13, '', '2044300', 81, 20, 16, '', NULL, 809.0000, 18, 809.0500, 'Exclusive', 17.42, 950.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1150.0000, 0),
(53, 2, 53, 'IT020053', 'ALOO PARATHA 7&quot; 560 GM', 1, '', '19059090', 81, 20, 19, '', NULL, 80.0000, 17, 80.1800, 'Exclusive', 62.14, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(54, 2, 54, 'IT020054', 'ALOO PARATHA 7&quot; 560 GM', 1, '', '19059090', 81, 20, 19, '', NULL, 65.0000, 17, 65.1800, 'Exclusive', 99.45, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(55, 2, 55, 'IT020055', 'AMUL BUTTER 500 GM', 5, '', '4051000', 81, 20, 8, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 18.16, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(56, 2, 56, 'IT020056', 'AMUL BUTTER 500 GM', 5, '', '4051000', 81, 20, 8, '', NULL, 240.1800, 16, 240.3000, 'Exclusive', 18.60, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(57, 2, 57, 'IT020057', 'AMUL BUTTER 500 GM', 5, '', '4051000', 81, 20, 8, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 17.94, 295.0000, 30.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(58, 2, 58, 'IT020058', 'AMUL BUTTER 500 GM', 5, '', '4051000', 81, 20, 8, '', NULL, 249.1100, 16, 249.2300, 'Exclusive', 18.36, 295.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(59, 2, 59, 'IT020059', 'AMUL CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 8, '', NULL, 451.7900, 16, 451.9100, 'Exclusive', 17.28, 530.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 555.0000, 0),
(60, 2, 60, 'IT020060', 'AMUL CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 8, '', NULL, 455.3500, 16, 455.4700, 'Exclusive', 16.36, 530.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 555.0000, 0),
(61, 2, 61, 'IT020061', 'AMUL CHEESE CUBE(CHIP) 25 GM', 5, '', '4063000', 81, 20, 8, '', NULL, 500.0000, 16, 500.1200, 'Exclusive', 15.97, 580.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 610.0000, 0),
(62, 2, 62, 'IT020062', 'AMUL CHEESE PIZZA', 5, '', '21069099', 81, 20, 8, '', NULL, 86.1100, 17, 86.2900, 'Exclusive', 39.07, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(63, 2, 63, 'IT020063', 'AMUL CHEESE SLICE 15 GM', 5, '', '4063000', 81, 20, 8, '', NULL, 361.6100, 16, 361.7300, 'Exclusive', 16.11, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 440.0000, 0),
(64, 2, 64, 'IT020064', 'AMUL DICED MOZZARELLA 1 KG', 5, '', '4061000', 81, 20, 8, '', NULL, 404.1500, 16, 404.2700, 'Exclusive', 23.68, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 540.0000, 0),
(65, 2, 65, 'IT020065', 'AMUL FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 8, '', NULL, 232.1500, 16, 232.2700, 'Exclusive', 29.16, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(66, 2, 66, 'IT020066', 'AMUL FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 8, '', NULL, 223.2200, 16, 223.3400, 'Exclusive', 34.32, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(67, 2, 67, 'IT020067', 'AMUL FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 8, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 34.33, 300.0000, 15.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(68, 2, 68, 'IT020068', 'AMUL FRESH CREAM 1 LTR', 3, '', '4015000', 81, 20, 8, '', NULL, 203.0000, 16, 203.1200, 'Exclusive', 3.39, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 219.9900, 0),
(69, 2, 69, 'IT020069', 'AMUL INNOVITA FRENCH FRIES 2.5 KG', 1, '', '20041000', 81, 20, 8, '', NULL, 196.4500, 16, 196.5700, 'Exclusive', 27.18, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(70, 2, 70, 'IT020070', 'AMUL MOZZARELLA DICED 1 KG', 5, '', '4069000', 81, 20, 8, '', NULL, 419.6500, 16, 419.7700, 'Exclusive', 19.11, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 540.0000, 0),
(71, 2, 71, 'IT020071', 'AMUL PIZZA CHEESE MOZARELLA', 5, '', '40610', 81, 20, 8, '', NULL, 433.5600, 16, 433.6800, 'Exclusive', 17.60, 510.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 535.0000, 0),
(72, 2, 72, 'IT020072', 'AMUL PROCESSED CHEESE', 5, '', '4063000', 81, 20, 8, '', NULL, 437.5800, 16, 437.7000, 'Exclusive', 21.09, 530.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 555.0000, 0),
(73, 2, 73, 'IT020073', 'AMUL PROCESSED CHEESE 1 KG', 5, '', '4063000', 81, 20, 8, '', NULL, 437.5000, 16, 437.6200, 'Exclusive', 21.11, 530.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 555.0000, 0),
(74, 2, 74, 'IT020074', 'BASA FISH', 4, '', '3046200', 81, 20, 20, '', NULL, 175.0000, 18, 175.0500, 'Exclusive', 71.38, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(75, 2, 75, 'IT020075', 'BASA FISH', 4, '', '304', 81, 20, 20, '', NULL, 171.4300, 18, 171.4800, 'Exclusive', 74.95, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(76, 2, 76, 'IT020076', 'BASA FISH', 4, '', '304', 81, 20, 20, '', NULL, 228.5700, 18, 228.6200, 'Exclusive', 53.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(77, 2, 77, 'IT020077', 'BASA FISH 50%', 4, '', '304', 81, 20, 20, '', NULL, 190.4800, 18, 190.5300, 'Exclusive', 57.46, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(78, 2, 78, 'IT020078', 'BASA FISH 80%', 4, '', '304', 81, 20, 20, '', NULL, 238.1000, 18, 238.1500, 'Exclusive', 46.97, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(79, 2, 79, 'IT020079', 'BASA FISH FILLET', 4, '', '3046200', 81, 20, 20, '', NULL, 230.0000, 18, 230.0500, 'Exclusive', 30.41, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(80, 2, 80, 'IT020080', 'BD HONEY 1 KG', 3, '', '4090000', 82, 20, 22, '', NULL, 380.9600, 18, 381.0100, 'Exclusive', 0.00, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 475.0000, 0),
(81, 2, 81, 'IT020081', 'BF CHICKEN SAMOSA', 13, '', '16010000', 81, 20, 21, '', NULL, 300.0000, 16, 300.1200, 'Exclusive', 59.94, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(82, 2, 82, 'IT020082', 'BF CHICKEN SAMOSA', 13, '', '16010000', 81, 20, 21, '', NULL, 494.3400, 16, 494.4600, 'Exclusive', 0.00, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(83, 2, 83, 'IT020083', 'BF CHICKEN SPRING ROLL', 13, '', '16010000', 81, 20, 21, '', NULL, 467.8500, 16, 467.9700, 'Exclusive', 2.57, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(84, 2, 84, 'IT020084', 'BF CHICKEN SPRING ROLL', 13, '', '16010000', 81, 20, 21, '', NULL, 294.0000, 17, 294.1800, 'Exclusive', 63.17, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(85, 2, 85, 'IT020085', 'BF HOT ZINGER', 13, '', '16010000', 81, 20, 21, '', NULL, 278.6300, 16, 278.7500, 'Exclusive', 0.45, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 310.0000, 0),
(86, 2, 86, 'IT020086', 'BF PARATHA 320 GM', 13, '', '21069099', 81, 20, 21, '', NULL, 179.6000, 17, 179.7800, 'Exclusive', 89.12, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 370.0000, 0),
(87, 2, 87, 'IT020087', 'BLACK OLIVES SLICED 3 KG', 3, '', '20057000', 83, 20, 23, '', NULL, 675.0000, 16, 675.1200, 'Exclusive', 15.54, 780.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1100.0000, 0),
(88, 2, 88, 'IT020088', 'BLUE FLAME CHICKEN SAMOSA', 13, '', '16010000', 81, 20, 21, '', NULL, 495.9900, 16, 496.1100, 'Exclusive', 0.00, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(89, 2, 89, 'IT020089', 'BLUE FLAME CHICKEN SPRING ROLL', 13, '', '16010000', 81, 20, 21, '', NULL, 451.7100, 16, 451.8300, 'Exclusive', 6.23, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(90, 2, 90, 'IT020090', 'BRT CHEESY BLOCK 1 KG', 5, '', '4063000', 81, 20, 10, '', NULL, 373.3000, 16, 373.4200, 'Exclusive', 20.51, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(91, 2, 91, 'IT020091', 'BRT MOZZARELLA DICED 1 KG', 5, '', '4063000', 81, 20, 10, '', NULL, 388.3900, 16, 388.5100, 'Exclusive', 23.55, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 540.0000, 0),
(92, 2, 92, 'IT020092', 'BRT CHEESY SLICE 765 GM', 5, '', '4063000', 81, 20, 10, '', NULL, 290.1800, 16, 290.3000, 'Exclusive', 30.90, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(93, 2, 93, 'IT020093', 'BURGER BUN', 3, '', '', 81, 20, 79, '', NULL, 48.0000, NULL, 48.0000, 'Exclusive', 0.00, 48.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(94, 2, 94, 'IT020094', 'BURGER BUN', 3, '', '', 81, 20, 79, '', NULL, 46.0000, NULL, 46.0000, 'Exclusive', 30.43, 60.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 70.0000, 0),
(95, 2, 95, 'IT020095', 'CC ACHARI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(96, 2, 96, 'IT020096', 'CC AFGHANI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(97, 2, 97, 'IT020097', 'CC ANGARA SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(98, 2, 98, 'IT020098', 'CC BLACK PEPPER SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(99, 2, 99, 'IT020099', 'CC CHICKEN FINGER 1 KG', 13, '', '', 81, 20, 2, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 88.06, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(100, 2, 100, 'IT020100', 'CC CHICKEN NUGGETS 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 218.7500, 16, 218.8700, 'Exclusive', 50.77, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(101, 2, 101, 'IT020101', 'CC CHICKEN POPCORN 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 299.1100, 16, 299.2300, 'Exclusive', 40.36, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(102, 2, 102, 'IT020102', 'CC CHICKEN STRIP 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 299.1100, 16, 299.2300, 'Exclusive', 0.00, 299.1100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.1100, 0),
(103, 2, 103, 'IT020103', 'CC CHICKEN ZINGER BURGER 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 299.1100, 16, 299.2300, 'Exclusive', 50.39, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(104, 2, 104, 'IT020104', 'CC CLASSIC SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(105, 2, 105, 'IT020105', 'CC CRISPY CHICKEN FILLET 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 299.1100, 16, 299.2300, 'Exclusive', 50.39, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(106, 2, 106, 'IT020106', 'CC GALAUTI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(107, 2, 107, 'IT020107', 'CC HARIYALI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(108, 2, 108, 'IT020108', 'CC LUCKNOWEE SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(109, 2, 109, 'IT020109', 'CC MALAI ROLL 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 276.7900, 16, 276.9100, 'Exclusive', 55.29, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(110, 2, 110, 'IT020110', 'CC MALAI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(111, 2, 111, 'IT020111', 'CC PERI PERI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(112, 2, 112, 'IT020112', 'CC PREMIUM CHICKEN NUGGETS 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 0.0000, 16, 0.1200, 'Exclusive', 291566.67, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(113, 2, 113, 'IT020113', 'CC PREMIUM CHICKEN NUGGETS 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 56.71, 349.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0100, 0),
(114, 2, 114, 'IT020114', 'CC SCHEZWAN SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(115, 2, 115, 'IT020115', 'CC SUPER DUPER KEEMA PATTY 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 218.7500, 16, 218.8700, 'Exclusive', 59.91, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 649.9900, 0),
(116, 2, 116, 'IT020116', 'CC TANDOORI SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(117, 2, 117, 'IT020117', 'CC TURKISH SEEKH KEBAB 1 KG', 13, '', '21069099', 81, 20, 2, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 71.92, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(118, 2, 118, 'IT020118', 'CHCH ACHARI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(119, 2, 119, 'IT020119', 'CHCH AFGHANI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(120, 2, 120, 'IT020120', 'CHCH ANGARA CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(121, 2, 121, 'IT020121', 'CHCH BLACK PEPPER CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(122, 2, 122, 'IT020122', 'CHCH CHICKEN CLASSIS SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(123, 2, 123, 'IT020123', 'CHCH CHICKEN CRISPY STRIP', 13, '', '16023900', 81, 20, 2, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 77.42, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(124, 2, 124, 'IT020124', 'CHCH CHICKEN LUCKNOWI SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(125, 2, 125, 'IT020125', 'CHCH CHICKEN PERI PERI SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(126, 2, 126, 'IT020126', 'CHCH CHICKEN POPCORN', 13, '', '16023900', 81, 20, 2, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 77.42, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(127, 2, 127, 'IT020127', 'CHCH HARIYALI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(128, 2, 128, 'IT020128', 'CHCH MALAI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(129, 2, 129, 'IT020129', 'CHCH TANDOORI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(130, 2, 130, 'IT020130', 'CHCH TURKISH CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 2, '', NULL, 196.4300, 16, 196.5500, 'Exclusive', 134.04, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(131, 2, 131, 'IT020131', 'MK CHEESE DELIGHT COIN 2.5 KG', 1, '', '4063000', 81, 20, 25, '', NULL, 1010.6300, 16, 1010.7500, 'Exclusive', 38.51, 1400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1500.0000, 0),
(132, 2, 132, 'IT020132', 'MK CHEESE DELIGHT PATTY 1.2 KG', 1, '', '4063000', 81, 20, 25, '', NULL, 478.8000, 16, 478.9200, 'Exclusive', 29.46, 620.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(133, 2, 133, 'IT020133', 'CHEESY NACHO DIP 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 191.9600, 16, 192.0800, 'Exclusive', 30.15, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(134, 2, 134, 'IT020134', 'CHEESY SAUCE 500 GM', 3, '', '2103', 81, 20, 26, '', NULL, 170.6300, 16, 170.7500, 'Exclusive', 34.70, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(135, 2, 135, 'IT020135', 'CHICKEN CHEESE KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 145.0000, NULL, 145.0000, 'Exclusive', 51.72, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(136, 2, 136, 'IT020136', 'CHICKEN CHEESE KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 155.0000, NULL, 155.0000, 'Exclusive', 41.94, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(137, 2, 137, 'IT020137', 'CHICKEN CHEESE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 170.0000, NULL, 170.0000, 'Exclusive', 29.41, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(138, 2, 138, 'IT020138', 'CHICKEN CHEESY KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 165.0000, NULL, 165.0000, 'Exclusive', 51.52, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.9900, 0),
(139, 2, 139, 'IT020139', 'CHICKEN CHEESY MOMOS', 13, '', '', 81, 20, 78, '', NULL, 195.0000, NULL, 195.0000, 'Exclusive', 28.21, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(140, 2, 140, 'IT020140', 'CHICKEN KURKURE MOMOS', 13, '', '', 81, 20, 78, '', NULL, 116.0000, NULL, 116.0000, 'Exclusive', 63.79, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(141, 2, 141, 'IT020141', 'CHICKEN MINI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 95.0000, NULL, 95.0000, 'Exclusive', 57.89, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(142, 2, 142, 'IT020142', 'CHICKEN PERI PERI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 145.0000, NULL, 145.0000, 'Exclusive', 31.03, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(143, 2, 143, 'IT020143', 'CHICKEN SCHEZWAN MOMOS', 13, '', '', 81, 20, 78, '', NULL, 133.0000, NULL, 133.0000, 'Exclusive', 42.86, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(144, 2, 144, 'IT020144', 'CHICKEN TANDOORI MOMOS', 13, '', '', 81, 20, 78, '', NULL, 170.0000, NULL, 170.0000, 'Exclusive', 29.41, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(145, 2, 145, 'IT020145', 'CHICKEN TIKKA MOMOS', 13, '', '', 81, 20, 78, '', NULL, 145.0000, NULL, 145.0000, 'Exclusive', 51.72, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(146, 2, 146, 'IT020146', 'CHILLFILL FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 28, '', NULL, 209.8200, 16, 209.9400, 'Exclusive', 28.61, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(147, 2, 147, 'IT020147', 'CHILLI GARLIC SPRINKLER 500 GM', 3, '', '9109100', 81, 20, 80, '', NULL, 207.9000, 16, 208.0200, 'Exclusive', 0.00, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(148, 2, 148, 'IT020148', 'CHILLI GARLIC SPRINKLER 500 GM', 3, '', '21039040', 81, 20, 80, '', NULL, 212.2200, 16, 212.3400, 'Exclusive', 0.00, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(149, 2, 149, 'IT020149', 'CP BONELESS FRIED CHICKEN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 362.5000, 16, 362.6200, 'Exclusive', 29.61, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(150, 2, 150, 'IT020150', 'CP BONELESS FRIED CHICKEN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 345.0000, 16, 345.1200, 'Exclusive', 36.18, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(151, 2, 151, 'IT020151', 'CP BONELESS FRIED CHICKEN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 362.2500, 16, 362.3700, 'Exclusive', 29.70, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(152, 2, 152, 'IT020152', 'CP BREADED CHICKEN ROLLS', 13, '', '16010000', 81, 20, 3, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 45.39, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 605.0000, 0),
(153, 2, 153, 'IT020153', 'CP CCC BURGER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 318.0000, 16, 318.1200, 'Exclusive', 35.17, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 599.0000, 0),
(154, 2, 154, 'IT020154', 'CP CHICKEN BREAKFAST SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 3, '', NULL, 220.0000, 16, 220.1200, 'Exclusive', 59.00, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(155, 2, 155, 'IT020155', 'CP CHICKEN BURGER PATTY(COATED) 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 52.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(156, 2, 156, 'IT020156', 'CP CHICKEN COCKTAIL SAUSAGE 2&quot;1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 52.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(157, 2, 157, 'IT020157', 'CP CHICKEN FINGERS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 51.93, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(158, 2, 158, 'IT020158', 'CP CHICKEN FRANK FURTER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 240.0000, 16, 240.1200, 'Exclusive', 58.25, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(159, 2, 159, 'IT020159', 'CP CHICKEN MINI KIEV', 13, '', '16023200', 81, 20, 3, '', NULL, 309.8200, 16, 309.9400, 'Exclusive', 29.06, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(160, 2, 160, 'IT020160', 'CP CHICKEN MINI KIEVS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 309.7500, 16, 309.8700, 'Exclusive', 22.63, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(161, 2, 161, 'IT020161', 'CP CHICKEN MINI KIEV&#039;S 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 295.0000, 16, 295.1200, 'Exclusive', 28.76, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(162, 2, 162, 'IT020162', 'CP CHICKEN MOMOS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 260.0000, 16, 260.1200, 'Exclusive', 46.09, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 570.0000, 0),
(163, 2, 163, 'IT020163', 'CP CHICKEN NUGGETS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 246.7500, 16, 246.8700, 'Exclusive', 33.67, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(164, 2, 164, 'IT020164', 'CP CHICKEN SPICY DRUMSTICK 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 287.5000, 16, 287.6200, 'Exclusive', 0.00, 287.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 287.5000, 0),
(165, 2, 165, 'IT020165', 'CP CHICKEN SPICY FINGER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 258.9300, 16, 259.0500, 'Exclusive', 46.69, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(166, 2, 166, 'IT020166', 'CP CHICKEN SPICY POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 355.7800, 16, 355.9000, 'Exclusive', 32.06, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(167, 2, 167, 'IT020167', 'CP CHICKEN SPRING ROLL 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 237.6300, 16, 237.7500, 'Exclusive', 68.24, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(168, 2, 168, 'IT020168', 'CP CHICKEN SPRING ROLL 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 255.3600, 16, 255.4800, 'Exclusive', 56.57, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(169, 2, 169, 'IT020169', 'CP CHICKEN TENDER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 373.2100, 16, 373.3300, 'Exclusive', 25.89, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(170, 2, 170, 'IT020170', 'CP CHICKEN VALUE BURGER', 13, '', '16023200', 81, 20, 3, '', NULL, 183.9300, 16, 184.0500, 'Exclusive', 52.13, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(171, 2, 171, 'IT020171', 'CP CHICKEN VALUE BURGER 1  KG', 13, '', '16023200', 81, 20, 3, '', NULL, 175.0000, 16, 175.1200, 'Exclusive', 59.89, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(172, 2, 172, 'IT020172', 'CP CHICKEN VALUE BURGER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 183.7500, 16, 183.8700, 'Exclusive', 52.28, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(173, 2, 173, 'IT020173', 'CP CHILLI CHEESE COIN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 283.5000, 16, 283.6200, 'Exclusive', 33.98, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 530.0000, 0),
(174, 2, 174, 'IT020174', 'CP CHILLI CHEESE COIN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 40.68, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 530.0000, 0),
(175, 2, 175, 'IT020175', 'CP CRISPY CHICKEN PATTY 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 240.0000, 16, 240.1200, 'Exclusive', 45.76, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(176, 2, 176, 'IT020176', 'CP CRISPY CHICKEN PATTY 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 241.5000, 16, 241.6200, 'Exclusive', 53.13, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 549.0000, 0),
(177, 2, 177, 'IT020177', 'CP CRISPY CHICKEN POPCORN', 13, '', '16023200', 81, 20, 3, '', NULL, 251.7800, 16, 251.9000, 'Exclusive', 38.94, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(178, 2, 178, 'IT020178', 'CP CRISPY CHICKEN POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 252.0000, 16, 252.1200, 'Exclusive', 38.82, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(179, 2, 179, 'IT020179', 'CP CRISPY CHICKEN POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 240.0000, 16, 240.1200, 'Exclusive', 41.60, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(180, 2, 180, 'IT020180', 'CP CRISPY CHICKEN TENDER 1 KG', 13, '', '16010000', 81, 20, 3, '', NULL, 350.0000, 16, 350.1200, 'Exclusive', 34.25, 470.0200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(181, 2, 181, 'IT020181', 'CP CRISPY CHICKEN TENDER 1 KG', 13, '', '16010000', 81, 20, 3, '', NULL, 367.5000, 16, 367.6200, 'Exclusive', 27.85, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(182, 2, 182, 'IT020182', 'CP HOT &amp; CRISPY CHICKEN WINGS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 357.1400, 16, 357.2600, 'Exclusive', 25.96, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(183, 2, 183, 'IT020183', 'CP HOT CRISPY CHICKEN WINGS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 340.0000, 16, 340.1200, 'Exclusive', 32.31, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(184, 2, 184, 'IT020184', 'CP MINI KIEVS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 309.7500, 16, 309.8700, 'Exclusive', 22.63, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(185, 2, 185, 'IT020185', 'CP POPULAR BURGER PATTY 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 52.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(186, 2, 186, 'IT020186', 'CP POPULAR SAUSAGES 1 KG', 1, '', '16023200', 81, 20, 3, '', NULL, 180.0000, 16, 180.1200, 'Exclusive', 66.56, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 370.0000, 0),
(187, 2, 187, 'IT020187', 'CP POTATO KIEV&#039;S 1 KG', 1, '', '16023200', 81, 20, 3, '', NULL, 245.0000, 16, 245.1200, 'Exclusive', 42.79, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 515.0000, 0),
(188, 2, 188, 'IT020188', 'CP PREMIUM VEGETABLE SPRING ROLL 1.020 KG', 1, '', '16023200', 81, 20, 3, '', NULL, 237.6300, 16, 237.7500, 'Exclusive', 59.83, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(189, 2, 189, 'IT020189', 'CP REGULAR CHEESE CORN BITES 1 KG', 1, '', '16023200', 81, 20, 3, '', NULL, 231.0000, 16, 231.1200, 'Exclusive', 38.46, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 605.0000, 0),
(190, 2, 190, 'IT020190', 'CP SPICY CHICKEN DRUMSTICK 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 287.5000, 16, 287.6200, 'Exclusive', 42.55, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 499.0000, 0),
(191, 2, 191, 'IT020191', 'CP SPICY CHICKEN FINGER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 262.5000, 16, 262.6200, 'Exclusive', 44.70, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(192, 2, 192, 'IT020192', 'CP SPICY CHICKEN POPCORN', 13, '', '16023200', 81, 20, 3, '', NULL, 373.2100, 16, 373.3300, 'Exclusive', 25.89, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(193, 2, 193, 'IT020193', 'CP SPICY CHICKEN POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 362.5000, 16, 362.6200, 'Exclusive', 29.61, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(194, 2, 194, 'IT020194', 'CP SPICY CHICKEN POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 362.2500, 16, 362.3700, 'Exclusive', 29.70, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(195, 2, 195, 'IT020195', 'CP SPICY CHICKEN POPCORN 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 345.0000, 16, 345.1200, 'Exclusive', 36.18, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(196, 2, 196, 'IT020196', 'CP SPICY CHICKEN SAUSAGES 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 52.09, 349.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.9900, 0),
(197, 2, 197, 'IT020197', 'CP SPICY CHICKEN SNACKER', 13, '', '16023200', 81, 20, 3, '', NULL, 373.2100, 16, 373.3300, 'Exclusive', 25.89, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(198, 2, 198, 'IT020198', 'CP SPICY CHICKEN SNACKER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 345.0000, 16, 345.1200, 'Exclusive', 36.18, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(199, 2, 199, 'IT020199', 'CP SPICY CHICKEN SNACKER 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 362.2500, 16, 362.3700, 'Exclusive', 29.70, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(200, 2, 200, 'IT020200', 'CP SPICY DRUMSTICK 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 266.0000, 16, 266.1200, 'Exclusive', 54.07, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 499.0000, 0),
(201, 2, 201, 'IT020201', 'CP SPICY DRUMSTICKS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 279.3000, 16, 279.4200, 'Exclusive', 46.73, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 499.0000, 0),
(202, 2, 202, 'IT020202', 'CP SUPREME CHICKEN NUGGETS 1 KG', 13, '', '16023200', 81, 20, 3, '', NULL, 235.0000, 16, 235.1200, 'Exclusive', 40.35, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(203, 2, 203, 'IT020203', 'CP VEGETABLE CHILLI CHEESE BURGER PATTY 1 KG', 1, '', '16023200', 81, 20, 3, '', NULL, 247.0000, 16, 247.1200, 'Exclusive', 41.63, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 541.0000, 0),
(204, 2, 204, 'IT020204', 'CR TOMATO KETCH UP 900 GM(SQUEASY)', 3, '', '21032000', 81, 20, 33, '', NULL, 44.6400, 16, 44.7600, 'Exclusive', 78.73, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(205, 2, 205, 'IT020205', 'CR TOMATO SACHETS 8 GM', 3, '', '21032000', 81, 20, 33, '', NULL, 0.3600, 16, 0.4800, 'Exclusive', 0.00, 0.3600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.3600, 0),
(206, 2, 206, 'IT020206', 'CR TOMATO KETCHUP 900 GM(SQUEASY)', 3, '', '21032000', 81, 20, 33, '', NULL, 49.1000, 16, 49.2200, 'Exclusive', 62.54, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(207, 2, 207, 'IT020207', 'CR TOMATO SACHETS', 3, '', '21032000', 81, 20, 33, '', NULL, 0.4500, 16, 0.5700, 'Exclusive', 0.00, 0.4500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.4500, 0),
(208, 2, 208, 'IT020208', 'CREAMY DELITE (BOTTLE)', 3, '', '15179090', 82, 20, 32, '', NULL, 76.0000, 18, 76.0500, 'Exclusive', 18.34, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(209, 2, 209, 'IT020209', 'CREAMY DELITE(BOTTLE)', 3, '', '15179090', 82, 20, 32, '', NULL, 77.0000, 18, 77.0500, 'Exclusive', 16.81, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(210, 2, 210, 'IT020210', 'CRISPY CAJUN BREADIND MIX 1 KG', 3, '', '21039040', 81, 20, 80, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 52.87, 390.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 449.0000, 0),
(211, 2, 211, 'IT020211', 'D CHICKEN BREAKFAST SAUSAGES SUP SAVER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 244.0000, 16, 244.1200, 'Exclusive', 43.37, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 460.0000, 0),
(212, 2, 212, 'IT020212', 'D CHICKEN BREAKFAST SAUSAGES SUP SAVER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 212.0000, 16, 212.1200, 'Exclusive', 65.00, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 460.0000, 0),
(213, 2, 213, 'IT020213', 'D CHICKEN BURGER PATTY SP 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 202.0000, 16, 202.1200, 'Exclusive', 48.43, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 610.0000, 0),
(214, 2, 214, 'IT020214', 'D CHICKEN BURGER PATTY SP 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 211.0000, 16, 211.1200, 'Exclusive', 42.10, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(215, 2, 215, 'IT020215', 'D CHICKEN BURGER PATTY SP 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 209.0000, 16, 209.1200, 'Exclusive', 43.46, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 610.0000, 0),
(216, 2, 216, 'IT020216', 'D CHICKEN CHEESE GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 286.0000, 16, 286.1200, 'Exclusive', 39.80, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 565.0000, 0),
(217, 2, 217, 'IT020217', 'D CHICKEN CHEESE GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 288.0000, 16, 288.1200, 'Exclusive', 38.83, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 565.0000, 0),
(218, 2, 218, 'IT020218', 'D CHICKEN CHEESE GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 45.39, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 565.0000, 0),
(219, 2, 219, 'IT020219', 'D CHICKEN KHEEMA PARATHA 320 GM', 13, '', '16023200', 81, 20, 81, '', NULL, 189.8300, 17, 190.0100, 'Exclusive', 31.57, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(220, 2, 220, 'IT020220', 'D CHICKEN NUGGET', 13, '', '16023200', 81, 20, 81, '', NULL, 242.0000, 16, 242.1200, 'Exclusive', 23.91, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 630.0000, 0),
(221, 2, 221, 'IT020221', 'D CHICKEN NUGGET', 13, '', '16023200', 81, 20, 81, '', NULL, 244.0000, 16, 244.1200, 'Exclusive', 22.89, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(222, 2, 222, 'IT020222', 'D CHICKEN NUGGET', 13, '', '16023200', 81, 20, 81, '', NULL, 233.0000, 16, 233.1200, 'Exclusive', 28.69, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(223, 2, 223, 'IT020223', 'D CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 233.0000, 16, 233.1200, 'Exclusive', 28.69, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(224, 2, 224, 'IT020224', 'D CHICKEN POPCORN SUP SAVER', 13, '', '16010000', 81, 20, 81, '', NULL, 253.0000, 16, 253.1200, 'Exclusive', 18.52, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(225, 2, 225, 'IT020225', 'D CHICKEN POPCORN SUP SAVER 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 17.59, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(226, 2, 226, 'IT020226', 'D CHICKEN SAMOSA', 13, '', '16023200', 81, 20, 81, '', NULL, 296.0000, 17, 296.1800, 'Exclusive', 51.94, 450.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(227, 2, 227, 'IT020227', 'D CHICKEN SAMOSA', 13, '', '16023200', 81, 20, 81, '', NULL, 310.0000, 17, 310.1800, 'Exclusive', 45.08, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(228, 2, 228, 'IT020228', 'D CHICKEN SAMOSA 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 272.3200, 16, 272.4400, 'Exclusive', 65.17, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(229, 2, 229, 'IT020229', 'D CHICKEN SPRING ROLL 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 272.3200, 16, 272.4400, 'Exclusive', 65.17, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(230, 2, 230, 'IT020230', 'D CHICKEN SPRING ROLL 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 286.0000, 16, 286.1200, 'Exclusive', 57.28, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(231, 2, 231, 'IT020231', 'D CHICKEN SPRING ROLL 1 KG', 13, '', '16023200', 81, 20, 81, '', NULL, 299.0000, 16, 299.1200, 'Exclusive', 50.44, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(232, 2, 232, 'IT020232', 'D CRUNCHY MUNCHY STRIPS 1 KG', 13, '', '16010000', 81, 20, 81, '', NULL, 296.0000, 16, 296.1200, 'Exclusive', 38.46, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 760.0000, 0),
(233, 2, 233, 'IT020233', 'DANKO PAN CHOCO DATES 300 GM', 3, '', '18069020', 81, 20, 35, '', NULL, 177.9700, 17, 178.1500, 'Exclusive', 40.33, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(234, 2, 234, 'IT020234', 'AMUL DICED MOZZARELLA 1 KG', 5, '', '4069000', 81, 20, 8, '', NULL, 419.6400, 16, 419.7600, 'Exclusive', 19.12, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 540.0000, 0),
(235, 2, 235, 'IT020235', 'DM CHOCOLATE SYRUP 100 GM', 3, '', '18069040', 81, 20, 37, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 0.00, 0.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.0100, 0),
(236, 2, 236, 'IT020236', 'DM EGGLESS MAYO SPOUT 850 GM', 3, '', '21039030', 81, 20, 37, '', NULL, 111.6100, 16, 111.7300, 'Exclusive', 34.25, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(237, 2, 237, 'IT020237', 'DM OLIVE BLACK PITTED 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(238, 2, 238, 'IT020238', 'DM OLIVE BLACK SLICE 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(239, 2, 239, 'IT020239', 'DM OLIVE BLACK SLICED 235 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 32.89, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(240, 2, 240, 'IT020240', 'DM OLIVE GRE STUFFED 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(241, 2, 241, 'IT020241', 'DM OLIVE GREEN PITTED 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(242, 2, 242, 'IT020242', 'DM OLIVE GREEN SLICED 235 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 32.89, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(243, 2, 243, 'IT020243', 'DM OLIVE GREEN SLICED 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(244, 2, 244, 'IT020244', 'DM OLIVE GREEN WHOLE 450 GM', 3, '', '20057000', 82, 20, 37, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(245, 2, 245, 'IT020245', 'DM OLIVE OIL EV PET 1 LTR', 3, '', '15091000', 82, 20, 37, '', NULL, 1523.8100, 18, 1523.8600, 'Exclusive', 24.68, 1900.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 2399.0000, 0),
(246, 2, 246, 'IT020246', 'DM OLIVE OIL EV PET 250 ML', 3, '', '15091000', 82, 20, 37, '', NULL, 476.1900, 18, 476.2400, 'Exclusive', 15.49, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 749.0000, 0),
(247, 2, 247, 'IT020247', 'DM OLIVE OIL EV PET 500 ML', 3, '', '15091000', 82, 20, 37, '', NULL, 714.2900, 18, 714.3400, 'Exclusive', 25.99, 900.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1499.0000, 0),
(248, 2, 248, 'IT020248', 'DM OLIVE OIL LIGHT PET 1 LTR', 3, '', '15091000', 82, 20, 37, '', NULL, 1428.5800, 18, 1428.6300, 'Exclusive', 19.00, 1700.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 2199.0000, 0),
(249, 2, 249, 'IT020249', 'DM OLIVE OIL LIGHT PET 2 LTR', 3, '', '15091000', 82, 20, 37, '', NULL, 2476.1900, 18, 2476.2400, 'Exclusive', 20.75, 2990.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 3999.0000, 0),
(250, 2, 250, 'IT020250', 'DM OLIVE OIL LIGHT PET 500 ML', 3, '', '15091000', 82, 20, 37, '', NULL, 779.0400, 18, 779.0900, 'Exclusive', 21.94, 950.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1250.0000, 0),
(251, 2, 251, 'IT020251', 'DM OLIVE OIL PAMACE 500 ML', 3, '', '15099010', 82, 20, 37, '', NULL, 428.5800, 18, 428.6300, 'Exclusive', 28.32, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(252, 2, 252, 'IT020252', 'DM OLIVE OIL PAMACE PET 1 LTR', 3, '', '15099010', 82, 20, 37, '', NULL, 714.2900, 18, 714.3400, 'Exclusive', 18.99, 850.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1100.0000, 0),
(253, 2, 253, 'IT020253', 'DM OLIVE OIL PURE PET 1 LTR', 3, '', '15091000', 82, 20, 37, '', NULL, 1428.5800, 18, 1428.6300, 'Exclusive', 19.00, 1700.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 2159.0000, 0),
(254, 2, 254, 'IT020254', 'DM PASTA FC-CHIFFERI 400 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 58.0300, 16, 58.1500, 'Exclusive', 63.37, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(255, 2, 255, 'IT020255', 'DM PASTA FC-PENNE 400 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 58.0300, 16, 58.1500, 'Exclusive', 63.37, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(256, 2, 256, 'IT020256', 'DM PASTA FC-SPAGHETTI 500 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 58.0300, 16, 58.1500, 'Exclusive', 63.37, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(257, 2, 257, 'IT020257', 'DM PASTA FC-SPIRLI 400 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 58.0300, 16, 58.1500, 'Exclusive', 63.37, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(258, 2, 258, 'IT020258', 'DM PASTA PENNE WW 500 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 105.3600, 16, 105.4800, 'Exclusive', 42.21, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(259, 2, 259, 'IT020259', 'DM PASTA SPAGHETTI WW 500 GM', 3, '', '19021900', 81, 20, 37, '', NULL, 105.3600, 16, 105.4800, 'Exclusive', 42.21, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(260, 2, 260, 'IT020260', 'DM TOMATO KETCHUP 900 GM', 3, '', '21032000', 81, 20, 37, '', NULL, 60.7100, 16, 60.8300, 'Exclusive', 47.95, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(261, 2, 261, 'IT020261', 'EDAMAME FROZEN BOILED SOYABEANS 500 GM', 1, '', '7102900', 81, 20, 38, '', NULL, 190.0000, NULL, 190.0000, 'Exclusive', 31.58, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(262, 2, 262, 'IT020262', 'EG PITTED BLACK OLIVES 450 GM', 3, '', '20057000', 82, 20, 39, '', NULL, 120.0000, 16, 120.1200, 'Exclusive', 33.20, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(263, 2, 263, 'IT020263', 'EG PITTED GREEN OLIVES 450 GM', 3, '', '20057000', 82, 20, 39, '', NULL, 120.0000, 16, 120.1200, 'Exclusive', 33.20, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(264, 2, 264, 'IT020264', 'EG SLICED BLACK OLIVES 450 GM', 3, '', '20057000', 82, 20, 39, '', NULL, 120.0000, 16, 120.1200, 'Exclusive', 33.20, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(265, 2, 265, 'IT020265', 'EXTRA HOT AND SPICY MARINADE 1 KG', 3, '', '21039040', 81, 20, 80, '', NULL, 335.0000, 16, 335.1200, 'Exclusive', 16.38, 390.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(266, 2, 266, 'IT020266', 'EXTRA HOT AND SPICY MARINADE 1 KG', 3, '', '21039040', 81, 20, 80, '', NULL, 327.2500, 16, 327.3700, 'Exclusive', 19.13, 390.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(267, 2, 267, 'IT020267', 'F2G CHAPATI   35 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 83.8000, 18, 83.8500, 'Exclusive', 43.11, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(268, 2, 268, 'IT020268', 'F2G CHAPATI 875 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 73.7100, 18, 73.7600, 'Exclusive', 62.69, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(269, 2, 269, 'IT020269', 'F2G CHAPATI WHOLE WHEAT 30GM', 1, '', '19059090', 81, 20, 40, '', NULL, 83.0000, 18, 83.0500, 'Exclusive', 44.49, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(270, 2, 270, 'IT020270', 'F2G MALABAR PARATHA 960 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 112.8600, 18, 112.9100, 'Exclusive', 0.00, 112.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 112.8600, 0),
(271, 2, 271, 'IT020271', 'F2G PLAIN NAAN 70gm', 1, '', '19059090', 81, 20, 40, '', NULL, 40.0000, 17, 40.1800, 'Exclusive', 99.10, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 95.0000, 0),
(272, 2, 272, 'IT020272', 'F2G PLAIN TORTILLA 480 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 57.1400, 18, 57.1900, 'Exclusive', 0.00, 57.1400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 57.1400, 0),
(273, 2, 273, 'IT020273', 'F2G PLAIN TORTILLA 640 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 71.3400, 18, 71.3900, 'Exclusive', 0.00, 71.3400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 258.2400, 0),
(274, 2, 274, 'IT020274', 'F2G TANDOORI NAAN', 1, '', '', 81, 20, 40, '', NULL, 60.0000, 18, 60.0500, 'Exclusive', 33.22, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(275, 2, 275, 'IT020275', 'F2G TANDOORI PLAIN NAAN 280 GM', 1, '', '1905', 81, 20, 40, '', NULL, 39.8300, 17, 40.0100, 'Exclusive', 99.95, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 95.0000, 0),
(276, 2, 276, 'IT020276', 'F2G TORTILA MULTIGRAIN WRAP', 1, '', '19059090', 81, 20, 40, '', NULL, 104.7800, 18, 104.8300, 'Exclusive', 43.09, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(277, 2, 277, 'IT020277', 'F2G TORTILLA 10 INCH', 1, '', '19059090', 81, 20, 40, '', NULL, 81.0000, 18, 81.0500, 'Exclusive', 48.06, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(278, 2, 278, 'IT020278', 'F2G TORTILLA 8.5&quot;', 1, '', '', 81, 20, 40, '', NULL, 60.0000, 18, 60.0500, 'Exclusive', 49.88, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(279, 2, 279, 'IT020279', 'F2G TORTILLA WHOLE WHEAT WRAP', 1, '', '19059090', 81, 20, 40, '', NULL, 104.7800, 18, 104.8300, 'Exclusive', 33.55, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 189.0000, 0),
(280, 2, 280, 'IT020280', 'F2G CHAPATI 35 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 63.96, 125.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(281, 2, 281, 'IT020281', 'F2G CHAPATI 35 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 71.4300, 18, 71.4800, 'Exclusive', 67.88, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(282, 2, 282, 'IT020282', 'F2G CHAPATI 35 GM', 1, '', '', 81, 20, 40, '', NULL, 80.9500, 18, 81.0000, 'Exclusive', 48.15, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(283, 2, 283, 'IT020283', 'F2G CHAPATI 875 GM', 1, '', '19059090', 81, 20, 40, '', NULL, 71.0700, 18, 71.1200, 'Exclusive', 0.00, 71.0700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 71.0700, 0),
(284, 2, 284, 'IT020284', 'F2G G &amp; C NAAN', 1, '', '19059090', 81, 20, 40, '', NULL, 23.0000, 17, 23.1800, 'Exclusive', 547.11, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(285, 2, 285, 'IT020285', 'FF CHEESY  NACHO DIP 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 191.9600, 16, 192.0800, 'Exclusive', 40.57, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(286, 2, 286, 'IT020286', 'FF ITALIAN STYLE CHEESE DRESSING 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 151.7900, 16, 151.9100, 'Exclusive', 44.82, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(287, 2, 287, 'IT020287', 'FF ITALIAN STYLE PASTA &amp; PIZZA SAUCE 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 133.9300, 16, 134.0500, 'Exclusive', 56.66, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(288, 2, 288, 'IT020288', 'FF SALAD MAYONNAISE 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 71.4300, 16, 71.5500, 'Exclusive', 67.71, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(289, 2, 289, 'IT020289', 'FF SUPREME BROWNIE BAR CHOCO HAZELNUT 135 G', 3, '', '19059010', 81, 20, 26, '', NULL, 50.8500, 17, 51.0300, 'Exclusive', 76.37, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(290, 2, 290, 'IT020290', 'FF VEG MAYO MILD &amp; SWEET 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 89.2900, 16, 89.4100, 'Exclusive', 34.21, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(291, 2, 291, 'IT020291', 'FF VEG MAYO SMOKY PERI PERI 1 KG', 3, '', '21039030', 81, 20, 26, '', NULL, 156.2500, 16, 156.3700, 'Exclusive', 59.88, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(292, 2, 292, 'IT020292', 'FILLER CHEEZE 500 GM', 5, '', '4063000', 81, 20, 41, '', NULL, 141.7500, 16, 141.8700, 'Exclusive', 40.97, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(293, 2, 293, 'IT020293', 'FL FRENCH FRIES STRAIGHT CUT 9MM', 1, '', '20041000', 81, 20, 82, '', NULL, 205.3600, 16, 205.4800, 'Exclusive', 70.33, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(294, 2, 294, 'IT020294', 'FL LACHHA PARATHA 8&quot;(80 GM*12+1)', 1, '', '19059090', 81, 20, 82, '', NULL, 117.8200, 18, 117.8700, 'Exclusive', 0.00, 117.8200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 365.7200, 0),
(295, 2, 295, 'IT020295', 'FL LACHHA PARATHA 8&#039;80 GM', 1, '', '19059090', 81, 20, 82, '', NULL, 129.6000, 18, 129.6500, 'Exclusive', 38.84, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 384.0000, 0),
(296, 2, 296, 'IT020296', 'FL LACHHA PARATHA S', 1, '', '19059090', 81, 20, 82, '', NULL, 0.0100, 18, 0.0600, 'Exclusive', 583233.33, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(297, 2, 297, 'IT020297', 'FL MALABAR PARATHA 8&quot;', 1, '', '19059090', 81, 20, 82, '', NULL, 96.4400, 18, 96.4900, 'Exclusive', 86.55, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 380.0000, 0),
(298, 2, 298, 'IT020298', 'FL MALABAR PARATHA 8&quot;(80 GM*12+1)', 1, '', '19059090', 81, 20, 82, '', NULL, 113.4600, 18, 113.5100, 'Exclusive', 0.00, 113.4600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 113.4600, 0),
(299, 2, 299, 'IT020299', 'FL FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 82, '', NULL, 214.2900, 16, 214.4100, 'Exclusive', 39.92, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(300, 2, 300, 'IT020300', 'FL MALABAR PARATHA 6&#039;60 GM', 1, '', '19059090', 81, 20, 82, '', NULL, 93.6000, 18, 93.6500, 'Exclusive', 92.21, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(301, 2, 301, 'IT020301', 'FL MALABAR PARATHA 8&#039;80 GM', 1, '', '19059090', 81, 20, 82, '', NULL, 124.8100, 18, 124.8600, 'Exclusive', 44.16, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 372.0000, 0),
(302, 2, 302, 'IT020302', 'FM BUBBLE GUM SYRUP 750 ML', 3, '', '', 82, 20, 43, '', NULL, 109.5300, 17, 109.7100, 'Exclusive', 86.86, 205.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(303, 2, 303, 'IT020303', 'FM LEMON PUDINA FRUIT SQUASH 750 ML', 3, '', '20089919', 82, 20, 43, '', NULL, 100.6700, 16, 100.7900, 'Exclusive', 78.59, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(304, 2, 304, 'IT020304', 'FM ORANGE SYRUP 750 ML', 3, '', '21069011', 6, 20, 43, '', NULL, 81.5700, 17, 81.7500, 'Exclusive', 89.60, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(305, 2, 305, 'IT020305', 'FNS BIRYANI CURRY PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(306, 2, 306, 'IT020306', 'FNS BUTTER CHICKEN CURRY PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(307, 2, 307, 'IT020307', 'FNS DATE &amp; TAMARIND CHUTNEY 220 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(308, 2, 308, 'IT020308', 'FNS GARAM MASALA CURRY PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(309, 2, 309, 'IT020309', 'FNS GARLIC PICKLE 150 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 17.8600, 16, 17.9800, 'Exclusive', 39.04, 25.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 50.0000, 0),
(310, 2, 310, 'IT020310', 'FNS GINGER GARLIC PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(311, 2, 311, 'IT020311', 'FNS HAKKA NOODLE PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(312, 2, 312, 'IT020312', 'FNS HOT MANGO PICKLE 150 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 17.8600, 16, 17.9800, 'Exclusive', 39.04, 25.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 50.0000, 0),
(313, 2, 313, 'IT020313', 'FNS KORMA PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(314, 2, 314, 'IT020314', 'FNS LIME CHUTNEY 220 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(315, 2, 315, 'IT020315', 'FNS MIXED PICKLE 150 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 17.8600, 16, 17.9800, 'Exclusive', 39.04, 25.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 50.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(316, 2, 316, 'IT020316', 'FNS PRAWN BALICHOW 190 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 60.3600, 16, 60.4800, 'Exclusive', 40.54, 85.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 169.0000, 0),
(317, 2, 317, 'IT020317', 'FNS SWEET LIME PICKLE 150 GM', 3, '', '20019000', 6, 20, 44, '', NULL, 17.8600, 16, 17.9800, 'Exclusive', 39.04, 25.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 50.0000, 0),
(318, 2, 318, 'IT020318', 'FNS TANDOORI CURRY PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(319, 2, 319, 'IT020319', 'FNS TIKKA PASTE 190 GM', 3, '', '21039010', 6, 20, 44, '', NULL, 56.7900, 16, 56.9100, 'Exclusive', 40.57, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(320, 2, 320, 'IT020320', 'FRF CHEESE &amp; ONION SAUSAGES 1 KG', 13, '', '20041000', 81, 20, 45, '', NULL, 165.2000, 16, 165.3200, 'Exclusive', 123.81, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(321, 2, 321, 'IT020321', 'FRF CHEESE &amp; PEPPER SAUSAGES 1 KG', 13, '', '20049000', 81, 20, 45, '', NULL, 165.2000, 16, 165.3200, 'Exclusive', 123.81, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(322, 2, 322, 'IT020322', 'FRF CHEESE &amp; PEPPER SAUSAGES 500 GM', 13, '', '200041000', 81, 20, 45, '', NULL, 165.2000, 16, 165.3200, 'Exclusive', 51.22, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(323, 2, 323, 'IT020323', 'FRF CHICKEN LOLLYPOP 1 KG', 13, '', '20049000', 81, 20, 45, '', NULL, 254.5000, 16, 254.6200, 'Exclusive', 76.74, 450.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 649.9900, 0),
(324, 2, 324, 'IT020324', 'FRF CHICKEN LOLLYPOP 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 127.2500, 16, 127.3700, 'Exclusive', 0.00, 127.2500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 127.2500, 0),
(325, 2, 325, 'IT020325', 'FRF CHICKEN SHAMI KEBAB 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 116.0700, 16, 116.1900, 'Exclusive', 93.65, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(326, 2, 326, 'IT020326', 'FRF PEPPER &amp; HERB SALAMI 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 143.55, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(327, 2, 327, 'IT020327', 'FRF PEPPER &amp; HERB SALAMI 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 64.56, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(328, 2, 328, 'IT020328', 'FRF PEPPER &amp; HERB SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 143.55, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(329, 2, 329, 'IT020329', 'FRF PEPPER &amp; HERB SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 75.9000, 16, 76.0200, 'Exclusive', 143.36, 185.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 325.0000, 0),
(330, 2, 330, 'IT020330', 'FRF SPICY SALAMI 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 130.38, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(331, 2, 331, 'IT020331', 'FRF SPICY SALAMI 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 31.65, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(332, 2, 332, 'IT020332', 'FRF SPICY SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 151.8000, 16, 151.9200, 'Exclusive', 130.38, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(333, 2, 333, 'IT020333', 'FRF SPICY SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 75.9000, 16, 76.0200, 'Exclusive', 130.20, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 325.0000, 0),
(334, 2, 334, 'IT020334', 'FRF VAKUE BREAKFAST SALAMI 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 143.3300, 16, 143.4500, 'Exclusive', 39.42, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(335, 2, 335, 'IT020335', 'FRF VALUE BREAKFAST SALAMI 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 143.3300, 16, 143.4500, 'Exclusive', 143.99, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(336, 2, 336, 'IT020336', 'FRF VALUE BREAKFAST SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 45, '', NULL, 143.3300, 16, 143.4500, 'Exclusive', 143.99, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(337, 2, 337, 'IT020337', 'FRF VALUE BREAKFAST SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 45, '', NULL, 143.3300, 16, 143.4500, 'Exclusive', 39.42, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(338, 2, 338, 'IT020338', 'FROZEN GREEN PEAS', 1, '', '', 81, 20, 47, '', NULL, 75.0000, NULL, 75.0000, 'Exclusive', 60.00, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(339, 2, 339, 'IT020339', 'FROZEN GREEN PEAS', 1, '', '', 81, 20, 47, '', NULL, 110.0000, NULL, 110.0000, 'Exclusive', 0.00, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(340, 2, 340, 'IT020340', 'FROZEN SWEET CORN', 1, '', '', 81, 20, 46, '', NULL, 70.0000, NULL, 70.0000, 'Exclusive', 71.43, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(341, 2, 341, 'IT020341', 'FROZEN SWEET CORN 1 KG', 1, '', '', 81, 20, 46, '', NULL, 70.0000, 18, 70.0500, 'Exclusive', 0.00, 70.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 70.0000, 0),
(342, 2, 342, 'IT020342', 'FUNWAVE FRENCH FRIES 9 MM', 1, '', '20041000', 81, 20, 48, '', NULL, 209.8300, 16, 209.9500, 'Exclusive', 28.60, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(343, 2, 343, 'IT020343', 'FUNWAVE FRENCH FRIES 9 MM', 1, '', '20041000', 81, 20, 48, '', NULL, 205.3600, 16, 205.4800, 'Exclusive', 31.40, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(344, 2, 344, 'IT020344', 'G FISH BURGER PATTY 1 KG', 4, '', '1604', 81, 20, 49, '', NULL, 443.8800, 16, 444.0000, 'Exclusive', 35.14, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(345, 2, 345, 'IT020345', 'G FISH FILLET 2.5 KG(BONELESS &amp; SKINLESS)', 4, '', '3046200', 81, 20, 49, '', NULL, 562.5100, 18, 562.5600, 'Exclusive', 33.32, 750.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1300.0000, 0),
(346, 2, 346, 'IT020346', 'G FISH FILLETS 2.5 KG', 4, '', '3046200', 81, 20, 49, '', NULL, 592.5000, 18, 592.5500, 'Exclusive', 26.57, 750.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1300.0000, 0),
(347, 2, 347, 'IT020347', 'G FISH FILLETS 5 KG(BONELESS &amp; SKINLESS)', 4, '', '3046200', 81, 20, 49, '', NULL, 1225.0000, 18, 1225.0500, 'Exclusive', 55.10, 1900.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 3250.0000, 0),
(348, 2, 348, 'IT020348', 'G FISH FINGER 1 KG', 4, '', '1604', 81, 20, 49, '', NULL, 463.7500, 16, 463.8700, 'Exclusive', 33.66, 620.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(349, 2, 349, 'IT020349', 'G FISH LOLLIPOP CHATPATA 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 375.0000, 16, 375.1200, 'Exclusive', 38.62, 520.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(350, 2, 350, 'IT020350', 'G FISH POPCORN 1 KG', 4, '', '1604', 81, 20, 49, '', NULL, 364.3800, 16, 364.5000, 'Exclusive', 37.17, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(351, 2, 351, 'IT020351', 'G FISH SEEKH KEBAB 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 406.2500, 16, 406.3700, 'Exclusive', 35.34, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(352, 2, 352, 'IT020352', 'G FROZEN PRAWNS 31/40 1 KG', 4, '', '3061790', 81, 20, 49, '', NULL, 405.0000, 18, 405.0500, 'Exclusive', 48.13, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 900.0000, 0),
(353, 2, 353, 'IT020353', 'G FROZEN PRAWNS PDTO 16/20 1 KG', 4, '', '3061790', 81, 20, 49, '', NULL, 495.0000, 18, 495.0500, 'Exclusive', 41.40, 700.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1200.0000, 0),
(354, 2, 354, 'IT020354', 'G FROZEN PRAWNS PDTO 21/25 1 KG', 4, '', '3061790', 81, 20, 49, '', NULL, 450.0300, 18, 450.0800, 'Exclusive', 0.00, 450.0300, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0300, 0),
(355, 2, 355, 'IT020355', 'G JUMBO SEER FISH STEAK 1 KG', 4, '', '3038940', 81, 20, 49, '', NULL, 900.0100, 18, 900.0600, 'Exclusive', 0.00, 900.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 900.0100, 0),
(356, 2, 356, 'IT020356', 'G JUMBO SEER FISH STEAK(10/15)1 KG', 4, '', '3038940', 81, 20, 49, '', NULL, 645.0000, 18, 645.0500, 'Exclusive', 78.28, 1150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1500.0000, 0),
(357, 2, 357, 'IT020357', 'G JUMBO SEER FISH STEAK(8/9) 1 KG', 4, '', '3038940', 81, 20, 49, '', NULL, 900.0100, 18, 900.0600, 'Exclusive', 38.88, 1250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1650.0000, 0),
(358, 2, 358, 'IT020358', 'G MASALA MACKEREL 95 GM', 4, '', '16042000', 81, 20, 49, '', NULL, 53.1300, 16, 53.2500, 'Exclusive', 40.85, 75.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 85.0000, 0),
(359, 2, 359, 'IT020359', 'G SEAFOOD PLATTER 400 GM', 4, '', '16042000', 81, 20, 49, '', NULL, 184.3800, 16, 184.5000, 'Exclusive', 46.34, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(360, 2, 360, 'IT020360', 'G SPICY FISH FINGER 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 437.5000, 16, 437.6200, 'Exclusive', 37.11, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(361, 2, 361, 'IT020361', 'G SURIMI CRAB CLAW AMRITSARI 1000 G', 4, '', '16042000', 81, 20, 49, '', NULL, 375.0000, 16, 375.1200, 'Exclusive', 38.62, 520.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(362, 2, 362, 'IT020362', 'G SURIMI FISH FINGERS 1000 GM', 4, '', '16042000', 81, 20, 49, '', NULL, 437.5000, 16, 437.6200, 'Exclusive', 41.68, 620.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(363, 2, 363, 'IT020363', 'G SURIMI FISH FRIES 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 312.5000, 16, 312.6200, 'Exclusive', 31.15, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(364, 2, 364, 'IT020364', 'G SURIMI FISH POPCORN 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 343.7500, 16, 343.8700, 'Exclusive', 39.59, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(365, 2, 365, 'IT020365', 'G SURIMI JUMBO FISH POPUPS 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 343.7500, 16, 343.8700, 'Exclusive', 48.31, 510.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(366, 2, 366, 'IT020366', 'G SURIMI LOBSTER BITE 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 343.7500, 16, 343.8700, 'Exclusive', 39.59, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(367, 2, 367, 'IT020367', 'G SURIMI PRAWN LOLLIPOP 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 406.2500, 16, 406.3700, 'Exclusive', 35.34, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(368, 2, 368, 'IT020368', 'G SURIMI SHRIMP TRIANGLES 250 GM', 4, '', '16042000', 81, 20, 49, '', NULL, 159.3800, 16, 159.5000, 'Exclusive', 44.20, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(369, 2, 369, 'IT020369', 'G TILAPIA BURGER PATTY 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 418.7500, 16, 418.8700, 'Exclusive', 38.47, 580.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(370, 2, 370, 'IT020370', 'G TILAPIA FISH FINGERS 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 437.5000, 16, 437.6200, 'Exclusive', 37.11, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(371, 2, 371, 'IT020371', 'G SURIMI JUMBO FISH POPUPS 1 KG', 4, '', '16042000', 81, 20, 49, '', NULL, 343.7500, 16, 343.8700, 'Exclusive', 39.59, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(372, 2, 372, 'IT020372', 'GO CHEESE SLICE', 5, '', '4062000', 81, 20, 41, '', NULL, 121.3400, 16, 121.4600, 'Exclusive', 23.50, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(373, 2, 373, 'IT020373', 'GO CHEESE SLICE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 77.1100, 16, 77.2300, 'Exclusive', 23.01, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(374, 2, 374, 'IT020374', 'GO CHEESE SLICE 408 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 228.9600, 16, 229.0800, 'Exclusive', 0.00, 149.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(375, 2, 375, 'IT020375', 'GO CHEESE SUPER CUP GARLIC', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(376, 2, 376, 'IT020376', 'GO CHEESE SUPER CUP JALAPENO 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(377, 2, 377, 'IT020377', 'GO CHEESE SUPER CUP OLIVE HERBS 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(378, 2, 378, 'IT020378', 'GO CHEESE SUPER CUP PLAIN 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(379, 2, 379, 'IT020379', 'GO CHEESE SUPER CUP SMOKED PAPRIKA 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(380, 2, 380, 'IT020380', 'GO CHEESE SUPER FOUR PAPER', 5, '', '4062000', 81, 20, 41, '', NULL, 93.3500, 16, 93.4700, 'Exclusive', 6.99, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(381, 2, 381, 'IT020381', 'GO CUBE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 62.9000, 16, 63.0200, 'Exclusive', 22.98, 77.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(382, 2, 382, 'IT020382', 'GO FILLER CHEESE 0.500 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 156.2500, 16, 156.3700, 'Exclusive', 155.80, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(383, 2, 383, 'IT020383', 'GO FOUR CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 81.1600, 16, 81.2800, 'Exclusive', 47.64, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(384, 2, 384, 'IT020384', 'GO FOUR CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 121.7500, 16, 121.8700, 'Exclusive', 0.00, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(385, 2, 385, 'IT020385', 'GO FOUR CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 115.4100, 16, 115.5300, 'Exclusive', 3.87, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(386, 2, 386, 'IT020386', 'GO MOZZARELLA BLEND 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 125.8000, 16, 125.9200, 'Exclusive', 0.00, 77.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(387, 2, 387, 'IT020387', 'GO MOZZARELLA CHEESE BLEND 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 93.9300, 16, 94.0500, 'Exclusive', 0.00, 77.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(388, 2, 388, 'IT020388', 'GO MOZZARELLA CHEESE DICED 500 GM', 5, '', '40620000', 81, 20, 41, '', NULL, 263.9500, 16, 264.0700, 'Exclusive', 0.00, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 340.0000, 0),
(389, 2, 389, 'IT020389', 'GO MOZZARELLA PIZZA BLEND CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 83.8700, 16, 83.9900, 'Exclusive', 0.00, 77.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(390, 2, 390, 'IT020390', 'GO MOZZARELLA PIZZA BLEND200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 119.2500, 16, 119.3700, 'Exclusive', 0.00, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(391, 2, 391, 'IT020391', 'GO PIZZA CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 75.1000, 16, 75.2200, 'Exclusive', 26.30, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(392, 2, 392, 'IT020392', 'GO PIZZA CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 71.0200, 16, 71.1400, 'Exclusive', 26.51, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(393, 2, 393, 'IT020393', 'GO PIZZA CHEESE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 75.0800, 16, 75.2000, 'Exclusive', 23.01, 92.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(394, 2, 394, 'IT020394', 'GO PREMIUM GHEE 1 LTR', 3, '', '4059020', 81, 20, 41, '', NULL, 652.3000, 16, 652.4200, 'Exclusive', 14.96, 750.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 789.0000, 0),
(395, 2, 395, 'IT020395', 'GO PROCESS CHEESE 200 GM HIGH MELT', 5, '', '4062000', 81, 20, 41, '', NULL, 75.0800, 16, 75.2000, 'Exclusive', 26.33, 95.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(396, 2, 396, 'IT020396', 'GO PROCESS CHEESE CUBE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 109.4000, 16, 109.5200, 'Exclusive', 0.00, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(397, 2, 397, 'IT020397', 'GO PROCESSED CHEESE CUBE 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 125.8100, 16, 125.9300, 'Exclusive', 0.00, 77.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(398, 2, 398, 'IT020398', 'GO SPREAD TUB PLAIN 200 GM', 5, '', '4062000', 81, 20, 41, '', NULL, 62.2200, 16, 62.3400, 'Exclusive', 60.41, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(399, 2, 399, 'IT020399', 'GOLD SCHEZWAN SPRING ROLL', 1, '', '20049000', 81, 20, 50, '', NULL, 129.5000, 16, 129.6200, 'Exclusive', 85.16, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 475.0000, 0),
(400, 2, 400, 'IT020400', 'GOLD VEG SPRING ROLL', 1, '', '20049000', 81, 20, 50, '', NULL, 100.8000, 16, 100.9200, 'Exclusive', 98.18, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(401, 2, 401, 'IT020401', 'HABIT BLACK OLIVE SLICE 3 KG', 3, '', '20057000', 81, 20, 31, '', NULL, 648.0000, 16, 648.1200, 'Exclusive', 20.35, 780.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1100.0000, 0),
(402, 2, 402, 'IT020402', 'HAL ALOO KULCHA', 1, '', '20041000', 81, 20, 19, '', NULL, 57.6200, 17, 57.8000, 'Exclusive', 194.12, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(403, 2, 403, 'IT020403', 'HAL ALOO PARATHA 1.2 KG', 1, '', '21069099', 81, 20, 19, '', NULL, 172.0300, 17, 172.2100, 'Exclusive', 45.17, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(404, 2, 404, 'IT020404', 'HAL ALOO PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 91.8000, 17, 91.9800, 'Exclusive', 41.34, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(405, 2, 405, 'IT020405', 'HAL ALOO PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 67.1100, 17, 67.2900, 'Exclusive', 78.33, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(406, 2, 406, 'IT020406', 'HAL ALOO PARATHA SMPL', 1, '', '21069099', 81, 20, 19, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 68321.05, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(407, 2, 407, 'IT020407', 'HAL ALOO TIKKI', 1, '', '21069099', 81, 20, 19, '', NULL, 67.4500, 17, 67.6300, 'Exclusive', 194.25, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(408, 2, 408, 'IT020408', 'HAL ALOO TIKKI 420 GM', 1, '', '20041000', 81, 20, 19, '', NULL, 101.0100, 17, 101.1900, 'Exclusive', 77.88, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(409, 2, 409, 'IT020409', 'HAL CHEESE ONION PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 142.3700, 16, 142.4900, 'Exclusive', 33.34, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(410, 2, 410, 'IT020410', 'HAL CHILLI CHEESE BALL 360 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 81.3500, 17, 81.5300, 'Exclusive', 2846.15, 2402.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(411, 2, 411, 'IT020411', 'HAL CHILLI PANEER WRAP', 1, '', '21069090', 81, 20, 19, '', NULL, 37.2800, 17, 37.4600, 'Exclusive', 193.65, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(412, 2, 412, 'IT020412', 'HAL DAHI KEBAB 360 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 67.4500, 17, 67.6300, 'Exclusive', 194.25, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(413, 2, 413, 'IT020413', 'HAL DAL MAKHNI 283 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 108.3300, 17, 108.5100, 'Exclusive', 19.80, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(414, 2, 414, 'IT020414', 'HAL DUM BIRYANI 200 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 72.9500, 17, 73.1300, 'Exclusive', 62.72, 119.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 119.0000, 0),
(415, 2, 415, 'IT020415', 'HAL GOBI PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 54.1600, 17, 54.3400, 'Exclusive', 212.85, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(416, 2, 416, 'IT020416', 'HAL GOBI PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 120.0500, 17, 120.2300, 'Exclusive', 24.76, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(417, 2, 417, 'IT020417', 'HAL HOME STYLE PARATHA', 1, '', '21069099', 81, 20, 19, '', NULL, 44.0600, 17, 44.2400, 'Exclusive', 193.85, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(418, 2, 418, 'IT020418', 'HAL HOME STYLE PARATHA 360 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 91.8000, 17, 91.9800, 'Exclusive', 30.46, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(419, 2, 419, 'IT020419', 'HAL MALABARI PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 91.8000, 17, 91.9800, 'Exclusive', 41.34, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(420, 2, 420, 'IT020420', 'HAL MALABARI PARATHA SMPL', 1, '', '21069099', 81, 20, 19, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 0.00, 0.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.0100, 0),
(421, 2, 421, 'IT020421', 'HAL MIX VEG PARATHA', 1, '', '21069099', 81, 20, 19, '', NULL, 50.9700, 17, 51.1500, 'Exclusive', 154.15, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(422, 2, 422, 'IT020422', 'HAL MIX VEG PARATHA', 1, '', '21069099', 81, 20, 19, '', NULL, 50.9700, 17, 51.1500, 'Exclusive', 183.48, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(423, 2, 423, 'IT020423', 'HAL MIX VEG PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 112.9900, 17, 113.1700, 'Exclusive', 28.13, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(424, 2, 424, 'IT020424', 'HAL MIX VEG WRAP 156 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 35.7100, 16, 35.8300, 'Exclusive', 179.10, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(425, 2, 425, 'IT020425', 'HAL MUTTER PANEER 300 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 104.8100, 16, 104.9300, 'Exclusive', 28.66, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(426, 2, 426, 'IT020426', 'HAL ONION PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 50.8400, 17, 51.0200, 'Exclusive', 194.00, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(427, 2, 427, 'IT020427', 'HAL PALAK PANEER 300 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 104.8100, 16, 104.9300, 'Exclusive', 28.66, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(428, 2, 428, 'IT020428', 'HAL PANEER PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 148.3000, 17, 148.4800, 'Exclusive', 27.96, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(429, 2, 429, 'IT020429', 'HAL PUNJABI SAMOSA', 1, '', '21069099', 81, 20, 19, '', NULL, 63.4000, 17, 63.5800, 'Exclusive', 183.11, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(430, 2, 430, 'IT020430', 'HAL RAJMA RASEELA 300 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 70.8000, 17, 70.9800, 'Exclusive', 67.65, 119.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 119.0000, 0),
(431, 2, 431, 'IT020431', 'HAL RASMALAI 500 GM', 5, '', '21069099', 81, 20, 19, '', NULL, 163.8000, 18, 163.8500, 'Exclusive', 19.01, 195.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 215.0000, 0),
(432, 2, 432, 'IT020432', 'HAL TANDOORI NAAN GARLIC 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 120.0500, 17, 120.2300, 'Exclusive', 24.76, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(433, 2, 433, 'IT020433', 'HAL TANDOORI PANEER PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 67.7900, 17, 67.9700, 'Exclusive', 194.25, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(434, 2, 434, 'IT020434', 'HAL TANDOORI PLAIN NAAN', 1, '', '21069099', 81, 20, 19, '', NULL, 50.9700, 17, 51.1500, 'Exclusive', 183.48, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(435, 2, 435, 'IT020435', 'HAL TANDOORI PLAIN NAAN 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 112.9900, 17, 113.1700, 'Exclusive', 28.13, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(436, 2, 436, 'IT020436', 'HAL VEG CHEESE POPPERS', 1, '', '21069099', 81, 20, 19, '', NULL, 72.8800, 17, 73.0600, 'Exclusive', 194.28, 215.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 215.0000, 0),
(437, 2, 437, 'IT020437', 'HEAL BLACK KISMISH 200 GM', 3, '', '8062010', 81, 20, 51, '', NULL, 214.2900, 18, 214.3400, 'Exclusive', 0.00, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(438, 2, 438, 'IT020438', 'HEAL BLUEBERRY 150 GM', 3, '', '20060000', 81, 20, 51, '', NULL, 491.0700, 16, 491.1900, 'Exclusive', 0.00, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(439, 2, 439, 'IT020439', 'HEAL CHIA SEED 200 GM', 3, '', '12079990', 81, 20, 51, '', NULL, 284.7600, 18, 284.8100, 'Exclusive', 0.00, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(440, 2, 440, 'IT020440', 'HEAL CRANBERRY 200 GM', 3, '', '20089300', 81, 20, 51, '', NULL, 312.5000, 16, 312.6200, 'Exclusive', 0.00, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(441, 2, 441, 'IT020441', 'HEAL DATES 200 GM', 3, '', '8041020', 81, 20, 51, '', NULL, 133.9300, 16, 134.0500, 'Exclusive', 0.00, 115.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(442, 2, 442, 'IT020442', 'HEAL FIG 200 GM', 3, '', '8042090', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(443, 2, 443, 'IT020443', 'HEAL HAPPY BREAKFAST 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(444, 2, 444, 'IT020444', 'HEAL KALMI DATES 200 GM', 3, '', '8041020', 81, 20, 51, '', NULL, 266.9600, 16, 267.0800, 'Exclusive', 0.00, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(445, 2, 445, 'IT020445', 'HEAL MIX BERRYS 200 GM', 3, '', '20089300', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(446, 2, 446, 'IT020446', 'HEAL MIX NUTS 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(447, 2, 447, 'IT020447', 'HEAL ROASTED ALMOND 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(448, 2, 448, 'IT020448', 'HEAL ROASTED SALTED CASHEW 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 401.7900, 16, 401.9100, 'Exclusive', 0.00, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(449, 2, 449, 'IT020449', 'HEAL SALTED PARTY MIX 200 GM', 3, '', '8025100', 81, 20, 51, '', NULL, 357.1400, 16, 357.2600, 'Exclusive', 0.00, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(450, 2, 450, 'IT020450', 'HEAL TROPICAL MIX 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(451, 2, 451, 'IT020451', 'HEAL WOMEN&#039;S HEALTH MIX 200 GM', 3, '', '20081910', 81, 20, 51, '', NULL, 356.2500, 16, 356.3700, 'Exclusive', 0.00, 299.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 399.0000, 0),
(452, 2, 452, 'IT020452', 'HOI MOMO SAUCE', 3, '', '21039090', 81, 20, 52, '', NULL, 117.2600, 16, 117.3800, 'Exclusive', 53.35, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(453, 2, 453, 'IT020453', 'HOI MOMO SAUCE- CLASSIC GREEN', 3, '', '21039020', 81, 20, 52, '', NULL, 117.2600, 16, 117.3800, 'Exclusive', 53.35, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(454, 2, 454, 'IT020454', 'HOT CHILLI FLAKES SACHET 8 GM', 3, '', '9109100', 81, 20, 80, '', NULL, 142.5300, 18, 142.5800, 'Exclusive', 26.24, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(455, 2, 455, 'IT020455', 'HOT CHILLI FLAKES SACHET 8 GM', 3, '', '9109100', 81, 20, 80, '', NULL, 142.8500, 18, 142.9000, 'Exclusive', 25.96, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(456, 2, 456, 'IT020456', 'HOT CHILLI FLAKES SACHET 8 GM', 3, '', '9109100', 81, 20, 80, '', NULL, 145.1500, 18, 145.2000, 'Exclusive', 23.97, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(457, 2, 457, 'IT020457', 'HUN ALOO POPCORN 400 G', 1, '', '20049000', 81, 20, 4, '', NULL, 97.1000, 16, 97.2200, 'Exclusive', 33.72, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(458, 2, 458, 'IT020458', 'HUN ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 185.4000, 16, 185.5200, 'Exclusive', 72.49, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(459, 2, 459, 'IT020459', 'HUN ALOO TIKKI SLIDER 350 G', 1, '', '20049000', 81, 20, 4, '', NULL, 80.3600, 16, 80.4800, 'Exclusive', 80.17, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(460, 2, 460, 'IT020460', 'HUN BLJ ALOO TIKKI 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 157.1400, 16, 157.2600, 'Exclusive', 103.48, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(461, 2, 461, 'IT020461', 'HUN BLJ ALOO TIKKI 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 166.9600, 16, 167.0800, 'Exclusive', 91.53, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(462, 2, 462, 'IT020462', 'HUN CHEESE CORN CHALK 250 G SAMPLE', 1, '', '20049000', 81, 20, 4, '', NULL, 0.0000, NULL, 0.0000, 'Exclusive', 0.00, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(463, 2, 463, 'IT020463', 'HUN CHEESE CORN CHALKS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 458.0400, 16, 458.1600, 'Exclusive', 30.96, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(464, 2, 464, 'IT020464', 'HUN CHEESE CORN CHALKS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 408.0000, 16, 408.1200, 'Exclusive', 47.02, 600.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1000.0000, 0),
(465, 2, 465, 'IT020465', 'HUN CHEESE CORN CHALKS 250 G', 1, '', '20049000', 81, 20, 4, '', NULL, 167.4100, 16, 167.5300, 'Exclusive', 34.30, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(466, 2, 466, 'IT020466', 'HUN CHEESE CORN NUGGETS 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 358.0000, 16, 358.1200, 'Exclusive', 39.62, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(467, 2, 467, 'IT020467', 'HUN CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 195.9300, 16, 196.0500, 'Exclusive', 63.22, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(468, 2, 468, 'IT020468', 'HUN CLASSIC HERBED SLIDER 350 G', 1, '', '20049000', 81, 20, 4, '', NULL, 80.3600, 16, 80.4800, 'Exclusive', 36.68, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(469, 2, 469, 'IT020469', 'HUN CORN CHEESE BURSTZ 250 G', 1, '', '20049000', 81, 20, 4, '', NULL, 167.4100, 16, 167.5300, 'Exclusive', 34.30, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(470, 2, 470, 'IT020470', 'HUN CRINKLE CUT 11 MM FRENCH FRIES 2.0 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 56.72, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0),
(471, 2, 471, 'IT020471', 'HUN CRINKLE CUT 11 MM FRENCH FRIES 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 56.72, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0),
(472, 2, 472, 'IT020472', 'HUN CRINKLE CUT FF 2 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 200.0000, 16, 200.1200, 'Exclusive', 74.90, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(473, 2, 473, 'IT020473', 'HUN CRINKLE CUT FF 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 59.92, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(474, 2, 474, 'IT020474', 'HUN CRINKLE CUT FRENCH FRIES 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 27.22, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0),
(475, 2, 475, 'IT020475', 'HUN CRINKLE CUT FRENCH FRIES 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 334.8200, 16, 334.9400, 'Exclusive', 19.42, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0),
(476, 2, 476, 'IT020476', 'HUN CRISPY VEGGIE FINGER 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 130.3600, 16, 130.4800, 'Exclusive', 106.93, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(477, 2, 477, 'IT020477', 'HUN CRISPY VEGGIE FINGERS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 141.0700, 16, 141.1900, 'Exclusive', 91.23, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(478, 2, 478, 'IT020478', 'HUN CRISPY VEGGIE FINGERS 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 135.3000, 16, 135.4200, 'Exclusive', 99.38, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(479, 2, 479, 'IT020479', 'HUN FF 9MM GOLD 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 302.5000, 16, 302.6200, 'Exclusive', 22.27, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(480, 2, 480, 'IT020480', 'HUN FIERY FRIES 9 MM 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 218.7600, 16, 218.8800, 'Exclusive', 37.06, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(481, 2, 481, 'IT020481', 'HUN FRENCH FRIES (6 MM) 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 29.17, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 420.0000, 0),
(482, 2, 482, 'IT020482', 'HUN FRENCH FRIES (9MM) 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 29.16, 299.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 599.9900, 0),
(483, 2, 483, 'IT020483', 'HUN FRENCH FRIES 1 KG 9 MM', 1, '', '20041000', 81, 20, 4, '', NULL, 125.0000, 16, 125.1200, 'Exclusive', 35.87, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(484, 2, 484, 'IT020484', 'HUN FRENCH FRIES 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 26.73, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(485, 2, 485, 'IT020485', 'HUN FRENCH FRIES 9 MM 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 115.5000, 16, 115.6200, 'Exclusive', 47.03, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(486, 2, 486, 'IT020486', 'HUN FRENCH FRIES 9MM 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 26.73, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(487, 2, 487, 'IT020487', 'HUN FRENCH FRIES CLASSIC 400 G', 1, '', '20041000', 81, 20, 4, '', NULL, 66.9600, 16, 67.0800, 'Exclusive', 34.17, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(488, 2, 488, 'IT020488', 'HUN FRENCH FRIES PERI PERI 400 G', 1, '', '20041000', 81, 20, 4, '', NULL, 80.3600, 16, 80.4800, 'Exclusive', 36.68, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(489, 2, 489, 'IT020489', 'HUN GIGGLES 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 172.3200, 16, 172.4400, 'Exclusive', 44.98, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(490, 2, 490, 'IT020490', 'HUN GIGGLES 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 158.0000, 16, 158.1200, 'Exclusive', 58.11, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(491, 2, 491, 'IT020491', 'HUN HERB POTATO PATTY 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 166.9600, 16, 167.0800, 'Exclusive', 91.53, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(492, 2, 492, 'IT020492', 'HUN HERBED POTATO PATTY 1.5 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 169.9500, 16, 170.0700, 'Exclusive', 88.16, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(493, 2, 493, 'IT020493', 'HUN HERBED POTATO WEDGES', 1, '', '20049000', 81, 20, 4, '', NULL, 358.9300, 16, 359.0500, 'Exclusive', 39.26, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(494, 2, 494, 'IT020494', 'HUN HERBED POTATO WEDGES', 1, '', '20049000', 81, 20, 4, '', NULL, 366.0700, 16, 366.1900, 'Exclusive', 36.54, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(495, 2, 495, 'IT020495', 'HUN HERBED POTATO WEDGES 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 364.6000, 16, 364.7200, 'Exclusive', 37.09, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(496, 2, 496, 'IT020496', 'HUN IBJ CHILLY GARLIC POTATO SHOTS 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 192.8600, 16, 192.9800, 'Exclusive', 65.82, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(497, 2, 497, 'IT020497', 'HUN IBJ CHILLY GARLIC POTATO SHOTS 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 209.8200, 16, 209.9400, 'Exclusive', 52.42, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(498, 2, 498, 'IT020498', 'HUN IBJ GIGGIES(SMILES) 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 174.1100, 16, 174.2300, 'Exclusive', 43.49, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(499, 2, 499, 'IT020499', 'HUN IBJ ROASTIES (HASH BROWN) 1.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 175.0000, 16, 175.1200, 'Exclusive', 82.73, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(500, 2, 500, 'IT020500', 'HUN JUMBO VEGGIE DECKER 1.2 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 162.7200, 16, 162.8400, 'Exclusive', 59.67, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(501, 2, 501, 'IT020501', 'HUN KIDS VEGIE SLIDER 350 G', 1, '', '20049000', 81, 20, 4, '', NULL, 110.4900, 16, 110.6100, 'Exclusive', 35.61, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(502, 2, 502, 'IT020502', 'HUN POTATO CHEESE SHOTS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 308.0400, 16, 308.1600, 'Exclusive', 36.29, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(503, 2, 503, 'IT020503', 'HUN POTATO CHEESE SHOTS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 315.1800, 16, 315.3000, 'Exclusive', 33.21, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(504, 2, 504, 'IT020504', 'HUN POTATO CHEESE SHOTS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 325.8900, 16, 326.0100, 'Exclusive', 28.83, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(505, 2, 505, 'IT020505', 'HUN POTATO CHEESE SHOTS 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 288.0000, 16, 288.1200, 'Exclusive', 45.77, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(506, 2, 506, 'IT020506', 'HUN POTATO CHEESE SHOTS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 315.1800, 16, 315.3000, 'Exclusive', 33.21, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(507, 2, 507, 'IT020507', 'HUN POTATO MOJJOS 400 G', 1, '', '20041000', 81, 20, 4, '', NULL, 97.1000, 16, 97.2200, 'Exclusive', 33.72, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(508, 2, 508, 'IT020508', 'HUN POTATO POPCORN 1 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 193.7500, 16, 193.8700, 'Exclusive', 54.74, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(509, 2, 509, 'IT020509', 'HUN POTATO POPCORN 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 168.0000, 16, 168.1200, 'Exclusive', 78.44, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(510, 2, 510, 'IT020510', 'HUN POTATO SCOOPS 1 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 161.2200, 16, 161.3400, 'Exclusive', 54.95, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(511, 2, 511, 'IT020511', 'HUN PREMIUM EVERLAST FRIES 9 MM', 1, '', '20041000', 81, 20, 4, '', NULL, 330.0000, 16, 330.1200, 'Exclusive', 21.17, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(512, 2, 512, 'IT020512', 'HUN PREMIUM FF 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 261.2500, 16, 261.3700, 'Exclusive', 14.78, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(513, 2, 513, 'IT020513', 'HUN PREMIUM FF 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 261.2500, 16, 261.3700, 'Exclusive', 14.78, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(514, 2, 514, 'IT020514', 'HUN PREMIUM SKIN ON FRIES 11 MM 2.5 KG', 1, '', '20041000', 81, 20, 4, '', NULL, 317.2300, 16, 317.3500, 'Exclusive', 16.59, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(515, 2, 515, 'IT020515', 'HUN PREMIUM VEGGIE DECKER 1.2 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 162.7200, 16, 162.8400, 'Exclusive', 0.00, 162.7200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 162.7200, 0),
(516, 2, 516, 'IT020516', 'HUN PREMIUM VEGGIE DECKER BURGER PATTY', 1, '', '20049000', 81, 20, 4, '', NULL, 141.0700, 16, 141.1900, 'Exclusive', 84.15, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(517, 2, 517, 'IT020517', 'HUN PREMIUM VEGGIE DECKER BURGER PATTY 1.200 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 147.3200, 16, 147.4400, 'Exclusive', 76.34, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(518, 2, 518, 'IT020518', 'HUN PREMIUM VEGGIE DECKER(BURGER PATTY)', 1, '', '20049000', 81, 20, 4, '', NULL, 159.8200, 16, 159.9400, 'Exclusive', 62.56, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(519, 2, 519, 'IT020519', 'HUN RETAIL PACK SAMPLE', 1, '', '20049000', 81, 20, 4, '', NULL, 0.2800, 16, 0.4000, 'Exclusive', 150.00, 1.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1.0000, 0),
(520, 2, 520, 'IT020520', 'HUN ROASTIES HASH BROWN 1.5 KG', 1, '', '20049000', 81, 20, 4, '', NULL, 178.2000, 16, 178.3200, 'Exclusive', 79.45, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(521, 2, 521, 'IT020521', 'HUP HUP FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 83, '', NULL, 214.2900, 16, 214.4100, 'Exclusive', 39.92, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(522, 2, 522, 'IT020522', 'HYF ALOO TIKKI 400 GM', 1, '', '20049000', 81, 20, 53, '', NULL, 48.2100, 16, 48.3300, 'Exclusive', 148.29, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(523, 2, 523, 'IT020523', 'HYF BURGER PATTY 360 GM', 1, '', '20049000', 81, 20, 53, '', NULL, 53.5700, 16, 53.6900, 'Exclusive', 30.38, 70.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(524, 2, 524, 'IT020524', 'HYF CHILLI GARLIC POPPER 400 G', 1, '', '20049000', 81, 20, 53, '', NULL, 56.2500, 16, 56.3700, 'Exclusive', 148.36, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(525, 2, 525, 'IT020525', 'HYF CRINKLE FRIES 400 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 57.1400, 16, 57.2600, 'Exclusive', 135.77, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(526, 2, 526, 'IT020526', 'HYF CRINKLE FRIES 400 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 56.9100, 16, 57.0300, 'Exclusive', 136.72, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(527, 2, 527, 'IT020527', 'HYF FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 53, '', NULL, 102.6700, 16, 102.7900, 'Exclusive', 55.66, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(528, 2, 528, 'IT020528', 'HYF FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 53, '', NULL, 98.2100, 16, 98.3300, 'Exclusive', 62.72, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(529, 2, 529, 'IT020529', 'HYF FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 53, '', NULL, 115.1700, 16, 115.2900, 'Exclusive', 0.00, 115.1700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.1700, 0),
(530, 2, 530, 'IT020530', 'HYF FRENCH FRIES 9 MM', 1, '', '20049000', 81, 20, 53, '', NULL, 223.2200, 16, 223.3400, 'Exclusive', 34.32, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(531, 2, 531, 'IT020531', 'HYF GARDEN FRESH PIZZA 190 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 118.6400, 17, 118.8200, 'Exclusive', 47.28, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(532, 2, 532, 'IT020532', 'HYF GARDEN FRESH PIZZA 190 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 92005.26, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(533, 2, 533, 'IT020533', 'HYF GARDEN FRESH PIZZA 190 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 134.9200, 16, 135.0400, 'Exclusive', 47.36, 198.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 198.9900, 0),
(534, 2, 534, 'IT020534', 'HYF GARDEN FRESH PIZZA S', 1, '', '19059090', 81, 20, 53, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 104636.84, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(535, 2, 535, 'IT020535', 'HYF MARGHERITA PIZZA 250 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 134.9200, 17, 135.1000, 'Exclusive', 47.30, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(536, 2, 536, 'IT020536', 'HYF MARGHERITA PIZZA 250 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 104636.84, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(537, 2, 537, 'IT020537', 'HYF POTATOBETS 400 GM', 1, '', '20049000', 81, 20, 53, '', NULL, 92.8600, 16, 92.9800, 'Exclusive', 39.82, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(538, 2, 538, 'IT020538', 'HYF POTATOBETS 400 GM', 1, '', '20049000', 81, 20, 53, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 99900.00, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(539, 2, 539, 'IT020539', 'HYF TANDOORI PANEER PIZZA 260 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 104636.84, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(540, 2, 540, 'IT020540', 'HYF TANDOORI PANEER PIZZA 260 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 134.9200, 17, 135.1000, 'Exclusive', 47.30, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(541, 2, 541, 'IT020541', 'HYF VEG PARADISE PIZZA 240 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 0.0100, 17, 0.1900, 'Exclusive', 104636.84, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(542, 2, 542, 'IT020542', 'HYF VEG PARADISE PIZZA 240 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 134.9200, 17, 135.1000, 'Exclusive', 47.30, 199.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 199.0000, 0),
(543, 2, 543, 'IT020543', 'HYF VEG STIX 425 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 85.7100, 16, 85.8300, 'Exclusive', 39.81, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(544, 2, 544, 'IT020544', 'HYF VEG STIX 425 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 92207.69, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(545, 2, 545, 'IT020545', 'HYF VEG STIX 425 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 117.8600, 16, 117.9800, 'Exclusive', 39.85, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(546, 2, 546, 'IT020546', 'HYF VEG STIX 425 GM', 1, '', '20041000', 81, 20, 53, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 126823.08, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(547, 2, 547, 'IT020547', 'HYF VEG STIX 425 GM', 1, '', '19059090', 81, 20, 53, '', NULL, 62.5000, 16, 62.6200, 'Exclusive', 163.49, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(548, 2, 548, 'IT020548', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 226.8000, 16, 226.9200, 'Exclusive', 41.02, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(549, 2, 549, 'IT020549', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 220.5000, 16, 220.6200, 'Exclusive', 0.00, 220.5000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.5000, 0),
(550, 2, 550, 'IT020550', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 223.0000, 16, 223.1200, 'Exclusive', 43.42, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(551, 2, 551, 'IT020551', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 210.0000, 16, 210.1200, 'Exclusive', 52.29, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(552, 2, 552, 'IT020552', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 222.0000, 16, 222.1200, 'Exclusive', 44.07, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(553, 2, 553, 'IT020553', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 199.5000, 16, 199.6200, 'Exclusive', 60.30, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(554, 2, 554, 'IT020554', 'ITC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(555, 2, 555, 'IT020555', 'ITC ALOO TIKKI 480 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 19.33, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(556, 2, 556, 'IT020556', 'ITC BARBEQUE CHICKEN WINGS 0.360 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 293.8900, 16, 294.0100, 'Exclusive', 25.85, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 395.0000, 0),
(557, 2, 557, 'IT020557', 'ITC BARBEQUE WINGS 360 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 240.9900, 16, 241.1100, 'Exclusive', 47.24, 355.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 395.0000, 0),
(558, 2, 558, 'IT020558', 'ITC BATATA VADA 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 125.0000, 16, 125.1200, 'Exclusive', 99.81, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(559, 2, 559, 'IT020559', 'ITC BATATA VADA 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 130.0000, 16, 130.1200, 'Exclusive', 92.13, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(560, 2, 560, 'IT020560', 'ITC BATATA VADA 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 138.0000, 16, 138.1200, 'Exclusive', 81.00, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(561, 2, 561, 'IT020561', 'ITC BATATA VADA 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 140.0000, 16, 140.1200, 'Exclusive', 78.42, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(562, 2, 562, 'IT020562', 'ITC BATATA VADA 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 139.0000, 16, 139.1200, 'Exclusive', 79.70, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(563, 2, 563, 'IT020563', 'ITC BREADED CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 380.2500, 16, 380.3700, 'Exclusive', 26.19, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(564, 2, 564, 'IT020564', 'ITC BREADED CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 373.0000, 16, 373.1200, 'Exclusive', 28.64, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(565, 2, 565, 'IT020565', 'ITC BREADED CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 390.0000, 16, 390.1200, 'Exclusive', 23.04, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(566, 2, 566, 'IT020566', 'ITC BREAST STRIP 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 228.7900, 16, 228.9100, 'Exclusive', 48.53, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(567, 2, 567, 'IT020567', 'ITC CHEESE &amp; JALAPENO POPPER 0.500 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 234.3800, 16, 234.5000, 'Exclusive', 0.00, 234.3800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 234.3800, 0),
(568, 2, 568, 'IT020568', 'ITC CHEESE &amp; JALAPENO POPPER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 37.19, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(569, 2, 569, 'IT020569', 'ITC CHEESE &amp; JALAPENO POPPER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 245.0000, 16, 245.1200, 'Exclusive', 42.79, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(570, 2, 570, 'IT020570', 'ITC CHEESE CORN TRIANGLE 320 G', 1, '', '20049000', 81, 20, 1, '', NULL, 145.0800, 16, 145.2000, 'Exclusive', 23.97, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 195.0000, 0),
(571, 2, 571, 'IT020571', 'ITC CHEESE CORN TRIANGLES 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 39.93, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(572, 2, 572, 'IT020572', 'ITC CHEESY CORN TRIANGLE 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 268.0000, 16, 268.1200, 'Exclusive', 30.54, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(573, 2, 573, 'IT020573', 'ITC CHEESY CORN TRIANGLE 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 277.0000, 16, 277.1200, 'Exclusive', 26.30, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(574, 2, 574, 'IT020574', 'ITC CHEESY CORN TRIANGLE 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 39.93, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(575, 2, 575, 'IT020575', 'ITC CHEESY CORN TRIANGLE 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 265.0000, 16, 265.1200, 'Exclusive', 32.02, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(576, 2, 576, 'IT020576', 'ITC CHEESY CORN TRIANGLES', 1, '', '20049000', 81, 20, 1, '', NULL, 118.9700, 16, 119.0900, 'Exclusive', 46.95, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 195.0000, 0),
(577, 2, 577, 'IT020577', 'ITC CHEESY CORN TRIANGLES 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 266.0000, 16, 266.1200, 'Exclusive', 31.52, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(578, 2, 578, 'IT020578', 'ITC CHEESY CORN TRIANGLES 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 240.0000, 16, 240.1200, 'Exclusive', 45.76, 349.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(579, 2, 579, 'IT020579', 'ITC CHEESY PIZZA FINGERS 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 245.0000, 16, 245.1200, 'Exclusive', 42.79, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(580, 2, 580, 'IT020580', 'ITC CHEESY PIZZA FINGERS 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 37.19, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(581, 2, 581, 'IT020581', 'ITC CHEESY PIZZA FINGERS 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 267.7500, 16, 267.8700, 'Exclusive', 30.66, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(582, 2, 582, 'IT020582', 'ITC CHEEZY CORN TRIANGLE 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 262.5000, 16, 262.6200, 'Exclusive', 33.27, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(583, 2, 583, 'IT020583', 'ITC CHICKEN BREAST STRIP 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 352.0000, 16, 352.1200, 'Exclusive', 22.12, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(584, 2, 584, 'IT020584', 'ITC CHICKEN BREAST STRIP 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 369.0000, 16, 369.1200, 'Exclusive', 16.49, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(585, 2, 585, 'IT020585', 'ITC CHICKEN BREAST STRIP 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 349.6500, 16, 349.7700, 'Exclusive', 22.94, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(586, 2, 586, 'IT020586', 'ITC CHICKEN BREAST STRIP 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 325.0000, 16, 325.1200, 'Exclusive', 32.26, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(587, 2, 587, 'IT020587', 'ITC CHICKEN BREAST STRIP 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 349.0000, 16, 349.1200, 'Exclusive', 23.17, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(588, 2, 588, 'IT020588', 'ITC CHICKEN BREAST STRIP 1KG', 13, '', '16010000', 81, 20, 1, '', NULL, 347.0000, 16, 347.1200, 'Exclusive', 23.88, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(589, 2, 589, 'IT020589', 'ITC CHICKEN BREAST STRIP 500 G', 13, '', '16010000', 81, 20, 1, '', NULL, 279.0100, 16, 279.1300, 'Exclusive', 25.39, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(590, 2, 590, 'IT020590', 'ITC CHICKEN BREAST STRIPS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 333.0000, 16, 333.1200, 'Exclusive', 29.08, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(591, 2, 591, 'IT020591', 'ITC CHICKEN BREAST STRIPS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 348.2100, 16, 348.3300, 'Exclusive', 23.45, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 805.0000, 0),
(592, 2, 592, 'IT020592', 'ITC CHICKEN BURGER 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 409.5000, 16, 409.6200, 'Exclusive', 31.83, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 975.0000, 0),
(593, 2, 593, 'IT020593', 'ITC CHICKEN BURGER PATTY 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 423.0000, 16, 423.1200, 'Exclusive', 27.62, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(594, 2, 594, 'IT020594', 'ITC CHICKEN BURGER PATTY 540 G', 13, '', '16010000', 81, 20, 1, '', NULL, 238.9500, 16, 239.0700, 'Exclusive', 25.49, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(595, 2, 595, 'IT020595', 'ITC CHICKEN BURGER PATTY 540 GM', 13, '', '', 81, 20, 1, '', NULL, 238.0900, 16, 238.2100, 'Exclusive', 0.00, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(596, 2, 596, 'IT020596', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 408.0300, 16, 408.1500, 'Exclusive', 32.30, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(597, 2, 597, 'IT020597', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 421.0000, 16, 421.1200, 'Exclusive', 0.00, 421.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(598, 2, 598, 'IT020598', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 382.5000, 16, 382.6200, 'Exclusive', 41.13, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(599, 2, 599, 'IT020599', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 412.0000, 16, 412.1200, 'Exclusive', 31.03, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(600, 2, 600, 'IT020600', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 390.0000, 16, 390.1200, 'Exclusive', 38.42, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(601, 2, 601, 'IT020601', 'ITC CHICKEN BURGER PATTY REG 1.5 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 431.0000, 16, 431.1200, 'Exclusive', 25.26, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1075.0000, 0),
(602, 2, 602, 'IT020602', 'ITC CHICKEN BURGER PATTY SP 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 345.0000, 16, 345.1200, 'Exclusive', 1.41, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(603, 2, 603, 'IT020603', 'ITC CHICKEN BURGER PATTY SP 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 330.0000, 16, 330.1200, 'Exclusive', 36.31, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(604, 2, 604, 'IT020604', 'ITC CHICKEN BURGER PATTY SP 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 312.0000, 16, 312.1200, 'Exclusive', 12.14, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(605, 2, 605, 'IT020605', 'ITC CHICKEN BURGER PATTY SP 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 339.0000, 16, 339.1200, 'Exclusive', 3.21, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(606, 2, 606, 'IT020606', 'ITC CHICKEN BURGER PATTY SP 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 306.0000, 16, 306.1200, 'Exclusive', 47.00, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(607, 2, 607, 'IT020607', 'ITC CHICKEN CHILLI GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 277.0000, 16, 277.1200, 'Exclusive', 51.56, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(608, 2, 608, 'IT020608', 'ITC CHICKEN CHILLI GARLIC FINGERS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 55.49, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(609, 2, 609, 'IT020609', 'ITC CHICKEN CUTLET  PATTY 1KG', 13, '', '16010000', 81, 20, 1, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 47.93, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(610, 2, 610, 'IT020610', 'ITC CHICKEN CUTLET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 277.0000, 16, 277.1200, 'Exclusive', 26.30, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(611, 2, 611, 'IT020611', 'ITC CHICKEN CUTLET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 265.0000, 16, 265.1200, 'Exclusive', 32.02, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(612, 2, 612, 'IT020612', 'ITC CHICKEN CUTLET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 272.0000, 16, 272.1200, 'Exclusive', 35.97, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(613, 2, 613, 'IT020613', 'ITC CHICKEN CUTLET PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 245.0000, 16, 245.1200, 'Exclusive', 50.95, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(614, 2, 614, 'IT020614', 'ITC CHICKEN DESI STYLE PATTY 330 G', 13, '', '20049000', 81, 20, 1, '', NULL, 141.3600, 16, 141.4800, 'Exclusive', 20.16, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(615, 2, 615, 'IT020615', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 328.0000, 16, 328.1200, 'Exclusive', 31.05, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(616, 2, 616, 'IT020616', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 326.0000, 16, 326.1200, 'Exclusive', 31.85, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(617, 2, 617, 'IT020617', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 318.1500, 16, 318.2700, 'Exclusive', 35.11, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(618, 2, 618, 'IT020618', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 320.0000, 16, 320.1200, 'Exclusive', 34.32, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(619, 2, 619, 'IT020619', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 336.0000, 16, 336.1200, 'Exclusive', 27.93, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(620, 2, 620, 'IT020620', 'ITC CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 316.0700, 16, 316.1900, 'Exclusive', 35.99, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(621, 2, 621, 'IT020621', 'ITC CHICKEN FRIES 280 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 115.9200, 16, 116.0400, 'Exclusive', 46.50, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(622, 2, 622, 'IT020622', 'ITC CHICKEN GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 293.0000, 16, 293.1200, 'Exclusive', 36.46, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(623, 2, 623, 'IT020623', 'ITC CHICKEN GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 307.0000, 16, 307.1200, 'Exclusive', 30.24, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(624, 2, 624, 'IT020624', 'ITC CHICKEN GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 290.8500, 16, 290.9700, 'Exclusive', 37.47, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(625, 2, 625, 'IT020625', 'ITC CHICKEN GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 297.0000, 16, 297.1200, 'Exclusive', 34.63, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(626, 2, 626, 'IT020626', 'ITC CHICKEN GARLIC FINGER 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 299.0000, 16, 299.1200, 'Exclusive', 33.73, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(627, 2, 627, 'IT020627', 'ITC CHICKEN GARLIC FINGER 500 G', 13, '', '16010000', 81, 20, 1, '', NULL, 219.5000, 16, 219.6200, 'Exclusive', 18.39, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(628, 2, 628, 'IT020628', 'ITC CHICKEN GRILL PATTY 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 332.4000, 16, 332.5200, 'Exclusive', 44.35, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(629, 2, 629, 'IT020629', 'ITC CHICKEN GRILL PATTY 1.2 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 324.0000, 16, 324.1200, 'Exclusive', 48.09, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(630, 2, 630, 'IT020630', 'ITC CHICKEN KIEV 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 48.08, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(631, 2, 631, 'IT020631', 'ITC CHICKEN KIEV 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 283.0000, 16, 283.1200, 'Exclusive', 41.28, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(632, 2, 632, 'IT020632', 'ITC CHICKEN KIEV 500 G', 13, '', '16010000', 81, 20, 1, '', NULL, 135.0000, 16, 135.1200, 'Exclusive', 62.82, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(633, 2, 633, 'IT020633', 'ITC CHICKEN KIEV 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 148.0000, 16, 148.1200, 'Exclusive', 48.53, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(634, 2, 634, 'IT020634', 'ITC CHICKEN KIEV 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 145.4300, 16, 145.5500, 'Exclusive', 51.15, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(635, 2, 635, 'IT020635', 'ITC CHICKEN KIEV 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 147.0000, 16, 147.1200, 'Exclusive', 49.54, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(636, 2, 636, 'IT020636', 'ITC CHICKEN NUGGET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 22.17, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(637, 2, 637, 'IT020637', 'ITC CHICKEN NUGGET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 19.95, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(638, 2, 638, 'IT020638', 'ITC CHICKEN NUGGETS', 13, '', '20049000', 81, 20, 1, '', NULL, 241.8100, 16, 241.9300, 'Exclusive', 36.40, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(639, 2, 639, 'IT020639', 'ITC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 277.0000, 16, 277.1200, 'Exclusive', 19.08, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(640, 2, 640, 'IT020640', 'ITC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 267.7500, 16, 267.8700, 'Exclusive', 23.19, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(641, 2, 641, 'IT020641', 'ITC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 283.0000, 16, 283.1200, 'Exclusive', 16.56, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(642, 2, 642, 'IT020642', 'ITC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 283.0000, 16, 283.1200, 'Exclusive', 16.56, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(643, 2, 643, 'IT020643', 'ITC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 266.0700, 16, 266.1900, 'Exclusive', 23.97, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(644, 2, 644, 'IT020644', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 271.4300, 16, 271.5500, 'Exclusive', 28.89, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(645, 2, 645, 'IT020645', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 260.0000, 16, 260.1200, 'Exclusive', 34.55, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(646, 2, 646, 'IT020646', 'ITC CHICKEN POPCORN 1 KG', 13, '', '160100000', 81, 20, 1, '', NULL, 288.0000, 16, 288.1200, 'Exclusive', 21.48, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(647, 2, 647, 'IT020647', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 273.0000, 16, 273.1200, 'Exclusive', 28.15, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(648, 2, 648, 'IT020648', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 273.0000, 16, 273.1200, 'Exclusive', 28.15, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(649, 2, 649, 'IT020649', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 27.22, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(650, 2, 650, 'IT020650', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 283.0000, 16, 283.1200, 'Exclusive', 23.62, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(651, 2, 651, 'IT020651', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 281.0000, 16, 281.1200, 'Exclusive', 28.06, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(652, 2, 652, 'IT020652', 'ITC CHICKEN POPCORN 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 41.11, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(653, 2, 653, 'IT020653', 'ITC CHICKEN POPCORN 500 G', 13, '', '16010000', 81, 20, 1, '', NULL, 235.7100, 16, 235.8300, 'Exclusive', 52.65, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(654, 2, 654, 'IT020654', 'ITC CHICKEN POPCORN 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 201.3300, 16, 201.4500, 'Exclusive', 24.10, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(655, 2, 655, 'IT020655', 'ITC CHICKEN POPCORN 500 GM', 13, '', '', 81, 20, 1, '', NULL, 245.5300, 16, 245.6500, 'Exclusive', 22.12, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(656, 2, 656, 'IT020656', 'ITC CHICKEN SEEKH KABAB 1KG', 13, '', '16010000', 81, 20, 1, '', NULL, 302.0000, 16, 302.1200, 'Exclusive', 48.95, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(657, 2, 657, 'IT020657', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 334.0000, 16, 334.1200, 'Exclusive', 31.69, 440.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(658, 2, 658, 'IT020658', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 319.0000, 16, 319.1200, 'Exclusive', 41.01, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(659, 2, 659, 'IT020659', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 317.1000, 16, 317.2200, 'Exclusive', 41.86, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(660, 2, 660, 'IT020660', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 295.0000, 16, 295.1200, 'Exclusive', 52.48, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(661, 2, 661, 'IT020661', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 325.0000, 16, 325.1200, 'Exclusive', 38.41, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(662, 2, 662, 'IT020662', 'ITC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 327.0000, 16, 327.1200, 'Exclusive', 37.56, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 770.0000, 0),
(663, 2, 663, 'IT020663', 'ITC CHICKEN SEEKH KEBAB 500 G', 13, '', '16010000', 81, 20, 1, '', NULL, 271.5700, 16, 271.6900, 'Exclusive', 25.14, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 365.0000, 0),
(664, 2, 664, 'IT020664', 'ITC CHICKEN SHAMI KEBAB 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 305.0000, 16, 305.1200, 'Exclusive', 40.93, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(665, 2, 665, 'IT020665', 'ITC CHICKEN SPICY GRILL PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 309.8200, 16, 309.9400, 'Exclusive', 38.74, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(666, 2, 666, 'IT020666', 'ITC CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 370.2900, 16, 370.4100, 'Exclusive', 29.59, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(667, 2, 667, 'IT020667', 'ITC CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 223.0000, 16, 223.1200, 'Exclusive', 43.42, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(668, 2, 668, 'IT020668', 'ITC CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 233.0000, 16, 233.1200, 'Exclusive', 37.27, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(669, 2, 669, 'IT020669', 'ITC CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 210.0000, 16, 210.1200, 'Exclusive', 52.29, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(670, 2, 670, 'IT020670', 'ITC CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 220.0000, 16, 220.1200, 'Exclusive', 45.38, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(671, 2, 671, 'IT020671', 'ITC CHILLI GARLIC POTATO SHOTS 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 199.5000, 16, 199.6200, 'Exclusive', 60.30, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(672, 2, 672, 'IT020672', 'ITC CHILLI GARLIC POTATO SHOTS 420 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 19.33, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(673, 2, 673, 'IT020673', 'ITC CHK NUGGETS+CHK POPCORN COMBO', 13, '', '', 81, 20, 1, '', NULL, 241.8100, 16, 241.9300, 'Exclusive', 19.87, 290.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 325.0000, 0),
(674, 2, 674, 'IT020674', 'ITC CLASSIC PANEER PATTY 1.024 KG', 1, '', '21069099', 81, 20, 1, '', NULL, 337.9200, 17, 338.1000, 'Exclusive', 65.63, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(675, 2, 675, 'IT020675', 'ITC COATED SPICY CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 352.6500, 16, 352.7700, 'Exclusive', 36.07, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(676, 2, 676, 'IT020676', 'ITC COATED SPICY CHICKEN WINGS 1.043 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 344.3000, 16, 344.4200, 'Exclusive', 39.36, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(677, 2, 677, 'IT020677', 'ITC CRISPY CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 296.0000, 16, 296.1200, 'Exclusive', 45.21, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(678, 2, 678, 'IT020678', 'ITC CRISPY CHICKEN FRIES 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 303.0000, 16, 303.1200, 'Exclusive', 41.86, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(679, 2, 679, 'IT020679', 'ITC CRISPY CHICKEN FRIES 280 G', 13, '', '16010000', 81, 20, 1, '', NULL, 141.3600, 16, 141.4800, 'Exclusive', 20.16, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(680, 2, 680, 'IT020680', 'ITC CRISPY FRENCH FRIES 420 GM', 1, '', '20041000', 81, 20, 1, '', NULL, 73.2100, 16, 73.3300, 'Exclusive', 50.01, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(681, 2, 681, 'IT020681', 'ITC CRISPY FRENCH FRIES 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 287.5000, 16, 287.6200, 'Exclusive', 21.69, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(682, 2, 682, 'IT020682', 'ITC CRISPY FRENCH FRIES 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 27.22, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(683, 2, 683, 'IT020683', 'ITC CRISPY FRENCH FRIES 9 MM', 1, '', '20041000', 81, 20, 1, '', NULL, 301.8800, 16, 302.0000, 'Exclusive', 15.89, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(684, 2, 684, 'IT020684', 'ITC CRISPY FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 287.5000, 16, 287.6200, 'Exclusive', 21.69, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(685, 2, 685, 'IT020685', 'ITC CRISPY FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 275.0000, 16, 275.1200, 'Exclusive', 27.22, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(686, 2, 686, 'IT020686', 'ITC CRISPY ONION RING 250 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 111.6000, 16, 111.7200, 'Exclusive', 20.84, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(687, 2, 687, 'IT020687', 'ITC CRISPY ONION RING 250 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 91.5200, 16, 91.6400, 'Exclusive', 47.32, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(688, 2, 688, 'IT020688', 'ITC CRISPY SPICY CHICKEN 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 319.9500, 16, 320.0700, 'Exclusive', 28.10, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 430.0000, 0),
(689, 2, 689, 'IT020689', 'ITC CRUNCHY CHICKEN NUGGET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 255.0000, 16, 255.1200, 'Exclusive', 33.27, 339.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 714.9900, 0),
(690, 2, 690, 'IT020690', 'ITC CRUNCHY CHICKEN NUGGET 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 35.93, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 715.0000, 0),
(691, 2, 691, 'IT020691', 'ITC DESI STYLE CHICKEN PATTY', 13, '', '16010000', 81, 20, 1, '', NULL, 115.9200, 16, 116.0400, 'Exclusive', 46.50, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(692, 2, 692, 'IT020692', 'ITC FALAFEL KEBAB 1 KG', 13, '', '20049000', 81, 20, 1, '', NULL, 221.0000, 16, 221.1200, 'Exclusive', 49.24, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(693, 2, 693, 'IT020693', 'ITC FALAFEL KEBAB 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 231.0000, 16, 231.1200, 'Exclusive', 51.44, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(694, 2, 694, 'IT020694', 'ITC FALAFEL KEBAB 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 219.0000, 16, 219.1200, 'Exclusive', 59.73, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(695, 2, 695, 'IT020695', 'ITC FALAFEL KEBAB 230 G', 13, '', '20049000', 81, 20, 1, '', NULL, 111.6000, 16, 111.7200, 'Exclusive', 25.31, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(696, 2, 696, 'IT020696', 'ITC FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 200.8900, 16, 201.0100, 'Exclusive', 24.37, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 270.0000, 0),
(697, 2, 697, 'IT020697', 'ITC FRENCH FRIES 420 G', 1, '', '20049000', 81, 20, 1, '', NULL, 89.2800, 16, 89.4000, 'Exclusive', 23.04, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(698, 2, 698, 'IT020698', 'ITC FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 290.0000, 16, 290.1200, 'Exclusive', 20.64, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(699, 2, 699, 'IT020699', 'ITC FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 370.0000, 16, 370.1200, 'Exclusive', 0.00, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(700, 2, 700, 'IT020700', 'ITC FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 1, '', NULL, 304.0000, 16, 304.1200, 'Exclusive', 0.00, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(701, 2, 701, 'IT020701', 'ITC GRILLED CHICKEN WINGS 360 G', 13, '', '16010000', 81, 20, 1, '', NULL, 293.8900, 16, 294.0100, 'Exclusive', 25.85, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 395.0000, 0),
(702, 2, 702, 'IT020702', 'ITC HARA BHARA KEBAB 210 GM', 1, '', '', 81, 20, 1, '', NULL, 111.6000, 16, 111.7200, 'Exclusive', 20.84, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(703, 2, 703, 'IT020703', 'ITC HARA BHARA KEBAB 230 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 91.5100, 16, 91.6300, 'Exclusive', 47.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(704, 2, 704, 'IT020704', 'ITC HASH BROWN PATTY 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 183.0000, 16, 183.1200, 'Exclusive', 74.75, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(705, 2, 705, 'IT020705', 'ITC HB CHILLI POTATO PATTY 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 199.5000, 16, 199.6200, 'Exclusive', 75.33, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(706, 2, 706, 'IT020706', 'ITC HB CHILLI POTATO PATTY 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 190.5000, 16, 190.6200, 'Exclusive', 83.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(707, 2, 707, 'IT020707', 'ITC HERB CHILLI PATTY 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 211.0000, 16, 211.1200, 'Exclusive', 65.78, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(708, 2, 708, 'IT020708', 'ITC HERB CHILLY PATTY 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 210.0000, 16, 210.1200, 'Exclusive', 66.57, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(709, 2, 709, 'IT020709', 'ITC HOT AND SPICY CHICKEN PATTY 1.05 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 426.0000, 16, 426.1200, 'Exclusive', 31.42, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(710, 2, 710, 'IT020710', 'ITC HOT AND SPICY CHICKEN PATTY 1.050 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 409.5000, 16, 409.6200, 'Exclusive', 36.71, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(711, 2, 711, 'IT020711', 'ITC HOT AND SPICY CHICKEN PATTY 1.05KG', 13, '', '16010000', 81, 20, 1, '', NULL, 432.0000, 16, 432.1200, 'Exclusive', 29.59, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(712, 2, 712, 'IT020712', 'ITC HOT AND SPICY CHICKEN PATTY 1050 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 399.0000, 16, 399.1200, 'Exclusive', 40.31, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(713, 2, 713, 'IT020713', 'ITC JALAPENO POPPER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 272.0000, 16, 272.1200, 'Exclusive', 28.62, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(714, 2, 714, 'IT020714', 'ITC JALAPENO POPPER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 274.0000, 16, 274.1200, 'Exclusive', 27.68, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(715, 2, 715, 'IT020715', 'ITC JALAPENO POPPER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 29.57, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(716, 2, 716, 'IT020716', 'ITC LEBANESE FALAFEL KEBAB 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 199.0000, 16, 199.1200, 'Exclusive', 75.77, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(717, 2, 717, 'IT020717', 'ITC LEBANESE FALAFEL KEBAB 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 208.0000, 16, 208.1200, 'Exclusive', 68.17, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(718, 2, 718, 'IT020718', 'ITC NUGGET 500 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 150.0000, 16, 150.1200, 'Exclusive', 33.23, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(719, 2, 719, 'IT020719', 'ITC NUGGETS+POPCORN 550 GM', 13, '', '16010000', 81, 20, 1, '', NULL, 198.2800, 16, 198.4000, 'Exclusive', 0.00, 198.2800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 198.2800, 0),
(720, 2, 720, 'IT020720', 'ITC PANEER PATTY 1.02 KG', 1, '', '21069090', 81, 20, 1, '', NULL, 414.0000, 17, 414.1800, 'Exclusive', 35.21, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(721, 2, 721, 'IT020721', 'ITC PANEER PATTY 1.02 KG', 1, '', '21069090', 81, 20, 1, '', NULL, 412.0000, 17, 412.1800, 'Exclusive', 35.86, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(722, 2, 722, 'IT020722', 'ITC PANEER PATTY 1.02 KG', 1, '', '21069099', 81, 20, 1, '', NULL, 409.0000, 17, 409.1800, 'Exclusive', 36.86, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(723, 2, 723, 'IT020723', 'ITC PANEER PATTY SQUARE 1.02 KG', 1, '', '21069099', 81, 20, 1, '', NULL, 372.3000, 17, 372.4800, 'Exclusive', 50.34, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(724, 2, 724, 'IT020724', 'ITC PANEER PATTY SQUARE 1.02 KG', 1, '', '21069099', 81, 20, 1, '', NULL, 387.6000, 17, 387.7800, 'Exclusive', 44.41, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 825.0000, 0),
(725, 2, 725, 'IT020725', 'ITC PIZZA CHEESE FINGER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 29.57, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(726, 2, 726, 'IT020726', 'ITC PIZZA CHEESE FINGER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 273.0000, 16, 273.1200, 'Exclusive', 28.15, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(727, 2, 727, 'IT020727', 'ITC PIZZA CHEESE FINGER 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 271.0000, 16, 271.1200, 'Exclusive', 29.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(728, 2, 728, 'IT020728', 'ITC PIZZA CHEESE STICKS 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 254.8100, 16, 254.9300, 'Exclusive', 37.29, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 525.0000, 0),
(729, 2, 729, 'IT020729', 'ITC PIZZA POCKET 0.988 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 270.0000, 16, 270.1200, 'Exclusive', 29.57, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(730, 2, 730, 'IT020730', 'ITC PIZZA POCKET 0.988 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 268.0000, 16, 268.1200, 'Exclusive', 30.54, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(731, 2, 731, 'IT020731', 'ITC PIZZA POCKET 0.988 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 283.0000, 16, 283.1200, 'Exclusive', 23.62, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(732, 2, 732, 'IT020732', 'ITC PIZZA POCKET 340 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 145.0800, 16, 145.2000, 'Exclusive', 23.97, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 195.0000, 0),
(733, 2, 733, 'IT020733', 'ITC POTATO KIEV 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 235.0000, 16, 235.1200, 'Exclusive', 48.86, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(734, 2, 734, 'IT020734', 'ITC POTATO KIEV 500 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 117.5000, 16, 117.6200, 'Exclusive', 87.04, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(735, 2, 735, 'IT020735', 'ITC PRAWNS JUMBO 200 GM', 4, '', '', 81, 20, 1, '', NULL, 277.7700, 18, 277.8200, 'Exclusive', 13.38, 315.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(736, 2, 736, 'IT020736', 'ITC PRAWNS LARGE 200 GM', 4, '', '', 81, 20, 1, '', NULL, 218.2500, 16, 218.3700, 'Exclusive', 14.48, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(737, 2, 737, 'IT020737', 'ITC PRAWNS MEDIUM 200 GM', 4, '', '', 81, 20, 1, '', NULL, 190.4700, 18, 190.5200, 'Exclusive', 12.85, 215.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(738, 2, 738, 'IT020738', 'ITC PREMIUM CHICKEN BURGER PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 352.0000, 16, 352.1200, 'Exclusive', 30.64, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(739, 2, 739, 'IT020739', 'ITC PREMIUM CHICKEN BURGER PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 369.0000, 16, 369.1200, 'Exclusive', 24.62, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(740, 2, 740, 'IT020740', 'ITC PREMIUM CHICKEN PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 333.0000, 16, 333.1200, 'Exclusive', 38.09, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(741, 2, 741, 'IT020741', 'ITC PREMIUM CHICKEN PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 325.0000, 16, 325.1200, 'Exclusive', 41.49, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(742, 2, 742, 'IT020742', 'ITC PUNJABI SAMOSA 0.4 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 81.6000, 16, 81.7200, 'Exclusive', 71.32, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(743, 2, 743, 'IT020743', 'ITC PUNJABI SAMOSA 300 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 91.5200, 16, 91.6400, 'Exclusive', 47.32, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(744, 2, 744, 'IT020744', 'ITC PUNJABI SAMOSA 400 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 84.0000, 16, 84.1200, 'Exclusive', 66.43, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(745, 2, 745, 'IT020745', 'ITC PUNJABI SAMOSA 400 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 92.0000, 16, 92.1200, 'Exclusive', 51.98, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(746, 2, 746, 'IT020746', 'ITC SABUDANA ALOO TIKKI 0.320 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 111.6000, 16, 111.7200, 'Exclusive', 20.84, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(747, 2, 747, 'IT020747', 'ITC SPICY CHICKEN GRILL PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 290.0000, 16, 290.1200, 'Exclusive', 48.21, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(748, 2, 748, 'IT020748', 'ITC SPICY CHICKEN GRILL PATTY 1 KG', 13, '', '16010000', 81, 20, 1, '', NULL, 297.0000, 16, 297.1200, 'Exclusive', 44.72, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(749, 2, 749, 'IT020749', 'ITC SPICY GRILL PATTY 520 G', 13, '', '16010000', 81, 20, 1, '', NULL, 279.0100, 16, 279.1300, 'Exclusive', 23.60, 345.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(750, 2, 750, 'IT020750', 'ITC VEG ALPHABYTES 495 G', 1, '', '20049000', 81, 20, 1, '', NULL, 122.7600, 16, 122.8800, 'Exclusive', 13.93, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(751, 2, 751, 'IT020751', 'ITC VEG BURGER PATTY 0.430 GM', 1, '', '16010000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 24.30, 125.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(752, 2, 752, 'IT020752', 'ITC VEG BURGER PATTY 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 140.0000, 16, 140.1200, 'Exclusive', 78.42, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(753, 2, 753, 'IT020753', 'ITC VEG BURGER PATTY 430 G', 1, '', '16010000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 24.30, 125.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(754, 2, 754, 'IT020754', 'ITC VEG BURGER PATTY 430 G', 1, '', '16010000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 24.30, 125.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.0000, 0),
(755, 2, 755, 'IT020755', 'ITC VEG BURGER PATTY 430 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 82.3600, 16, 82.4800, 'Exclusive', 45.49, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(756, 2, 756, 'IT020756', 'ITC VEG BURGER PATTY 540 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 152.5200, 16, 152.6400, 'Exclusive', 47.41, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(757, 2, 757, 'IT020757', 'ITC VEG BURGER PATTY REG 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 145.0000, 16, 145.1200, 'Exclusive', 72.27, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(758, 2, 758, 'IT020758', 'ITC VEG BURGER PATTY REG 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 145.0000, 16, 145.1200, 'Exclusive', 72.27, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(759, 2, 759, 'IT020759', 'ITC VEG BURGER PATTY REGULAR 1 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 154.0000, 16, 154.1200, 'Exclusive', 62.21, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(760, 2, 760, 'IT020760', 'ITC VEG BURGER PATTY SP 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 39.06, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(761, 2, 761, 'IT020761', 'ITC VEG BURGER PATTY SP 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 216.0000, 16, 216.1200, 'Exclusive', 48.07, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(762, 2, 762, 'IT020762', 'ITC VEG BURGER PATTY SP 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 229.0000, 16, 229.1200, 'Exclusive', 9.11, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(763, 2, 763, 'IT020763', 'ITC VEG BURGER PATTY SUPER 1.5 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 207.0000, 16, 207.1200, 'Exclusive', 54.50, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(764, 2, 764, 'IT020764', 'ITC VEG JALAPENO POPPER 500 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 192.1900, 16, 192.3100, 'Exclusive', 48.20, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 315.0000, 0),
(765, 2, 765, 'IT020765', 'ITC VEG POTATO SHOTS 420 G', 1, '', '20049000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 19.33, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(766, 2, 766, 'IT020766', 'ITC VEG POTATO SHOTS 500 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 134.2200, 16, 134.3400, 'Exclusive', 48.88, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.0000, 0),
(767, 2, 767, 'IT020767', 'ITC VEG POTATO SHOTS 500 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 171.1300, 16, 171.2500, 'Exclusive', 22.63, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(768, 2, 768, 'IT020768', 'ITC VEG PUNJABI SAMOSA 300 GM', 1, '', '20049000', 81, 20, 1, '', NULL, 111.6000, 16, 111.7200, 'Exclusive', 20.84, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(769, 2, 769, 'IT020769', 'ITC VEGGIE PIZZA POCKET 0.988 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 251.8100, 16, 251.9300, 'Exclusive', 0.00, 241.9300, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 241.9300, 0),
(770, 2, 770, 'IT020770', 'ITC VEGGIE PIZZA POCKET 0.988 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 251.9400, 16, 252.0600, 'Exclusive', 38.86, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(771, 2, 771, 'IT020771', 'ITC VEGGIE PIZZA POCKET 0.988 KG', 1, '', '20049000', 81, 20, 1, '', NULL, 242.0600, 16, 242.1800, 'Exclusive', 0.00, 242.0600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 242.0600, 0),
(772, 2, 772, 'IT020772', 'ITC VEGGIE PIZZA POCKETS', 1, '', '20049000', 81, 20, 1, '', NULL, 118.9700, 16, 119.0900, 'Exclusive', 46.95, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 195.0000, 0),
(773, 2, 773, 'IT020773', 'G JUS LIKE AMRTSARI CLAW', 4, '', '1604', 81, 20, 49, '', NULL, 397.5000, 16, 397.6200, 'Exclusive', 30.78, 520.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(774, 2, 774, 'IT020774', 'LD ALMOND STICK NEW 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(775, 2, 775, 'IT020775', 'LD BELGIAN CHOCOLATE STICK NEW 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(776, 2, 776, 'IT020776', 'LD BERRY&#039;S N CREAM NEW 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(777, 2, 777, 'IT020777', 'LD CHOCOLATE ALMOND STICK LITE N 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(778, 2, 778, 'IT020778', 'LD CHOCOLATE BROWNIE DELIGHT TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(779, 2, 779, 'IT020779', 'LD CHOCOLATE LITE TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(780, 2, 780, 'IT020780', 'LD COOKIES &amp; CREAM TUB 1 LTR', 5, '', '21069099', 6, 20, 54, '', NULL, 603.8100, 17, 603.9900, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(781, 2, 781, 'IT020781', 'LD COOKIES &amp; CREAM TUB NEW 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(782, 2, 782, 'IT020782', 'LD DOUBLE CHOCOLATE NEW 1 LTR', 5, '', '21069099', 6, 20, 54, '', NULL, 603.8100, 17, 603.9900, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(783, 2, 783, 'IT020783', 'LD DOUBLE CHOCOLATE NEW 500ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(784, 2, 784, 'IT020784', 'LD FIG WALNUT TUB 500 ML', 5, '', '21050000', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(785, 2, 785, 'IT020785', 'LD HAZEL NUT STICK NEW 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(786, 2, 786, 'IT020786', 'LD HAZEL NUT TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(787, 2, 787, 'IT020787', 'LD KULFI TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(788, 2, 788, 'IT020788', 'LD MANGO SORBET STICK 100 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(789, 2, 789, 'IT020789', 'LD MANGO SORBET TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(790, 2, 790, 'IT020790', 'LD MOCHA ALMOND FUDGE 1 LTR', 5, '', '', 6, 20, 54, '', NULL, 603.8100, 17, 603.9900, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(791, 2, 791, 'IT020791', 'LD PRALINE &amp; CREAM TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(792, 2, 792, 'IT020792', 'LD PREMIUM VANILLA  1 LTR', 5, '', '21069099', 6, 20, 54, '', NULL, 603.8100, 17, 603.9900, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(793, 2, 793, 'IT020793', 'LD PREMIUM VANILLA TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(794, 2, 794, 'IT020794', 'LD RASPBERRY SORBET STICK NEW 100 ML', 5, '', '21050000', 6, 20, 54, '', NULL, 95.3400, 17, 95.5200, 'Exclusive', 41.33, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(795, 2, 795, 'IT020795', 'LD SIMPLY STRAWBERRY LD 1 LTR', 5, '', '21069099', 6, 20, 54, '', NULL, 603.8000, 17, 603.9800, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(796, 2, 796, 'IT020796', 'LD SIMPLY STRAWBERRY TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(797, 2, 797, 'IT020797', 'LD STRAWBERRY CHEESE CAKE TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(798, 2, 798, 'IT020798', 'LD TIRAMISU NEW 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(799, 2, 799, 'IT020799', 'LD TIRAMISU TUB 1 LTR', 5, '', '21069099', 6, 20, 54, '', NULL, 603.8200, 17, 604.0000, 'Exclusive', 41.56, 855.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(800, 2, 800, 'IT020800', 'LD VANILLA KITE TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(801, 2, 801, 'IT020801', 'LD YOGHURT BERRY DELIGHT TUB 500 ML', 5, '', '21069099', 6, 20, 54, '', NULL, 317.8000, 17, 317.9800, 'Exclusive', 41.52, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(802, 2, 802, 'IT020802', 'LOYKA ALMOND BRITTLES DATES 100 GM', 3, '', '18069020', 81, 20, 55, '', NULL, 121.1900, 17, 121.3700, 'Exclusive', 56.55, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.0000, 0),
(803, 2, 803, 'IT020803', 'LOYKA CHOCO DATES 48 GM', 3, '', '18069020', 81, 20, 55, '', NULL, 44.0700, 17, 44.2500, 'Exclusive', 58.19, 70.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 80.0000, 0),
(804, 2, 804, 'IT020804', 'MAYONNAISE VEG DELIGHT', 3, '', '21039030', 81, 20, 84, '', NULL, 62.5000, 16, 62.6200, 'Exclusive', 91.63, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(805, 2, 805, 'IT020805', 'MC FRENCH FRIES 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 107.1400, 16, 107.2600, 'Exclusive', 226.31, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(806, 2, 806, 'IT020806', 'MCC ALOO TIKKI 1.5 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 216.0700, 16, 216.1900, 'Exclusive', 0.00, 216.0700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(807, 2, 807, 'IT020807', 'MCC ALOO TIKKI 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 65.1100, 16, 65.2300, 'Exclusive', 68.63, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 125.0000, 0),
(808, 2, 808, 'IT020808', 'MCC ALOO TIKKI 480 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 77.1300, 16, 77.2500, 'Exclusive', 55.34, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 133.0000, 0),
(809, 2, 809, 'IT020809', 'MCC ALOO TIKKI 480 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 75.1600, 16, 75.2800, 'Exclusive', 21.08, 91.1500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 101.0200, 0),
(810, 2, 810, 'IT020810', 'MCC CHEESE TRIANGLE CORN 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 160.7100, 17, 160.8900, 'Exclusive', 36.74, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(811, 2, 811, 'IT020811', 'MCC CHEESE TRIANGLE JALAPENO 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 160.7100, 17, 160.8900, 'Exclusive', 36.74, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(812, 2, 812, 'IT020812', 'MCC CHEESE TRIANGLE JALAPENO 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 161.5300, 17, 161.7100, 'Exclusive', 36.05, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(813, 2, 813, 'IT020813', 'MCC CHEESE TRIANGLE PIZZA  540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 160.7100, 17, 160.8900, 'Exclusive', 36.74, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(814, 2, 814, 'IT020814', 'MCC CHEESE TRIANGLE PIZZA  540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 160.7100, 17, 160.8900, 'Exclusive', 36.74, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(815, 2, 815, 'IT020815', 'MCC CHEESE TRIANGLE PIZZA 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 170.4000, 17, 170.5800, 'Exclusive', 28.97, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(816, 2, 816, 'IT020816', 'MCC CHEESE TRIANGLE PIZZA 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 161.5300, 17, 161.7100, 'Exclusive', 36.05, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(817, 2, 817, 'IT020817', 'MCC CHEESE TRIANGLES CORN 540 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 161.5200, 17, 161.7000, 'Exclusive', 0.00, 161.5200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 161.5200, 0),
(818, 2, 818, 'IT020818', 'MCC CHEESY PIZZA FINGERS 250 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 134.0000, 17, 134.1800, 'Exclusive', 25.70, 168.6700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 189.7600, 0),
(819, 2, 819, 'IT020819', 'MCC CHEESY PIZZA FINGERS 250 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 118.2100, 17, 118.3900, 'Exclusive', 0.00, 118.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 118.2100, 0),
(820, 2, 820, 'IT020820', 'MCC CHEESY PIZZA FINGERS 250 GM', 1, '', '21069099', 81, 20, 5, '', NULL, 141.9400, 17, 142.1200, 'Exclusive', 40.73, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(821, 2, 821, 'IT020821', 'MCC CHILLI CHEESY NUGGETS 250 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 89.5800, 16, 89.7000, 'Exclusive', 61.65, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(822, 2, 822, 'IT020822', 'MCC CHILLI CHEESY NUGGETS 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 161.8400, 16, 161.9600, 'Exclusive', 0.00, 161.8400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 161.8400, 0),
(823, 2, 823, 'IT020823', 'MCC CHILLI CHEESY NUGGETS 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 169.4400, 16, 169.5600, 'Exclusive', 21.64, 206.2600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 227.7400, 0),
(824, 2, 824, 'IT020824', 'MCC CHILLI GARLIC POTATO BITES 200 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 22.3000, 16, 22.4200, 'Exclusive', 56.11, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 49.0000, 0),
(825, 2, 825, 'IT020825', 'MCC CHILLI GARLIC POTATO BITES 200 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 0.0200, 16, 0.1400, 'Exclusive', 34900.00, 49.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 49.0000, 0),
(826, 2, 826, 'IT020826', 'MCC CHILLI GARLIC POTATO BITES 420 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 88.1700, 16, 88.2900, 'Exclusive', 64.23, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 158.0000, 0),
(827, 2, 827, 'IT020827', 'MCC CHILLI GARLIC POTATO BITES 504 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 99.9900, 16, 100.1100, 'Exclusive', 49.84, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(828, 2, 828, 'IT020828', 'MCC CHILLI GARLIC POTATO BITES 504 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 97.5400, 16, 97.6600, 'Exclusive', 22.04, 119.1800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 131.1000, 0),
(829, 2, 829, 'IT020829', 'MCC CHILLI GARLIC POTATO POPS 1.5 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 27.94, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(830, 2, 830, 'IT020830', 'MCC CRINCLE CUT FRIES 11 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 312.5000, 16, 312.6200, 'Exclusive', 27.95, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 480.0000, 0),
(831, 2, 831, 'IT020831', 'MCC CRISPONS 1 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 196.4200, 16, 196.5400, 'Exclusive', 42.46, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(832, 2, 832, 'IT020832', 'MCC FAVORITA FRENCH FRIES 6 MM 3 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(833, 2, 833, 'IT020833', 'MCC FAVORITA FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 232.1500, 16, 232.2700, 'Exclusive', 29.16, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(834, 2, 834, 'IT020834', 'MCC FAVORITA FRENCH FRIES 9 MM 3 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(835, 2, 835, 'IT020835', 'MCC FF PEPPER CRUNCH 420 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 89.5800, 16, 89.7000, 'Exclusive', 61.65, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(836, 2, 836, 'IT020836', 'MCC FRENCH FRIES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 194.7100, 16, 194.8300, 'Exclusive', 64.25, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 355.0000, 0),
(837, 2, 837, 'IT020837', 'MCC FRENCH FRIES 420 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 72.3500, 16, 72.4700, 'Exclusive', 58.69, 115.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 125.0000, 0),
(838, 2, 838, 'IT020838', 'MCC FRENCH FRIES 525 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 70.4900, 16, 70.6100, 'Exclusive', 18.09, 83.3800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 94.7500, 0),
(839, 2, 839, 'IT020839', 'MCC FRENCH FRIES 6 MM REG 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 276.7900, 16, 276.9100, 'Exclusive', 26.39, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(840, 2, 840, 'IT020840', 'MCC FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(841, 2, 841, 'IT020841', 'MCC FRENCH FRIES 9 MM REG 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 276.7900, 16, 276.9100, 'Exclusive', 26.39, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(842, 2, 842, 'IT020842', 'MCC FRENCH FRIES 9 MM REGULAR 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 133.9300, 16, 134.0500, 'Exclusive', 161.10, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(843, 2, 843, 'IT020843', 'MCC FRENCH FRIES REGULAR 6 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8500, 16, 267.9700, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(844, 2, 844, 'IT020844', 'MCC FRENCH FRIES REGULAR 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8500, 16, 267.9700, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(845, 2, 845, 'IT020845', 'MCC HERB CHILLI POTATO PATTY 1.5 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 224.3500, 16, 224.4700, 'Exclusive', 42.56, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(846, 2, 846, 'IT020846', 'MCC MASALA FRIES 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 43.93, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(847, 2, 847, 'IT020847', 'MCC MASALA FRIES 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 43.93, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(848, 2, 848, 'IT020848', 'MCC MASALA FRIES 420 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 82.6200, 16, 82.7400, 'Exclusive', 22.70, 101.5200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 111.0500, 0),
(849, 2, 849, 'IT020849', 'MCC POPULAR VEG BURGER PATTY 1.2 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 184.8500, 16, 184.9700, 'Exclusive', 45.97, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(850, 2, 850, 'IT020850', 'MCC POPULAR VEG BURGER PATTY 1.2 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 187.5000, 16, 187.6200, 'Exclusive', 43.91, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 290.0000, 0),
(851, 2, 851, 'IT020851', 'MCC POTATO CHEESE SHOTS 250 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 80.2500, 16, 80.3700, 'Exclusive', 61.64, 129.9100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 143.3500, 0),
(852, 2, 852, 'IT020852', 'MCC POTATO CHEESE SHOTS 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 152.5200, 16, 152.6400, 'Exclusive', 0.00, 152.5200, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 152.5200, 0),
(853, 2, 853, 'IT020853', 'MCC POTATO CHEESE SHOTZ 1 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 375.5500, 16, 375.6700, 'Exclusive', 11.80, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(854, 2, 854, 'IT020854', 'MCC POTATO CHEESE SHOTZ 1 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 366.1000, 16, 366.2200, 'Exclusive', 14.69, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(855, 2, 855, 'IT020855', 'MCC POTATO CHEESE SHOTZ 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 169.4400, 16, 169.5600, 'Exclusive', 21.64, 206.2600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 227.7600, 0),
(856, 2, 856, 'IT020856', 'MCC ROSTI ROUND 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 222.6800, 16, 222.8000, 'Exclusive', 57.09, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(857, 2, 857, 'IT020857', 'MCC ROSTI ROUNDS 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 241.9600, 16, 242.0800, 'Exclusive', 44.58, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(858, 2, 858, 'IT020858', 'MCC ROSTI ROUNDS 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 256.1500, 16, 256.2700, 'Exclusive', 36.57, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(859, 2, 859, 'IT020859', 'MCC SAVORY WEDGES 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 412.1000, 16, 412.2200, 'Exclusive', 21.29, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(860, 2, 860, 'IT020860', 'MCC SAVOURY WEDGES 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 394.6500, 16, 394.7700, 'Exclusive', 26.66, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(861, 2, 861, 'IT020861', 'MCC SMILES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 226.1600, 16, 226.2800, 'Exclusive', 0.00, 226.1600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 226.1600, 0),
(862, 2, 862, 'IT020862', 'MCC SMILES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 231.8400, 16, 231.9600, 'Exclusive', 18.72, 275.3800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 326.1100, 0),
(863, 2, 863, 'IT020863', 'MCC SMILES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 226.1800, 16, 226.3000, 'Exclusive', 59.08, 360.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(864, 2, 864, 'IT020864', 'MCC SMILES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 231.8400, 16, 231.9600, 'Exclusive', 68.13, 390.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 430.0000, 0),
(865, 2, 865, 'IT020865', 'MCC SMILES 1.25 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 240.7600, 16, 240.8800, 'Exclusive', 61.91, 390.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 430.0000, 0),
(866, 2, 866, 'IT020866', 'MCC SMILES 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 272.3200, 16, 272.4400, 'Exclusive', 39.48, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(867, 2, 867, 'IT020867', 'MCC SMILES 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 278.8900, 16, 279.0100, 'Exclusive', 36.20, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(868, 2, 868, 'IT020868', 'MCC SMILES 1.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 282.6200, 16, 282.7400, 'Exclusive', 34.40, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(869, 2, 869, 'IT020869', 'MCC SMILES 415 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 82.5800, 16, 82.7000, 'Exclusive', 0.00, 82.5800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 82.5800, 0),
(870, 2, 870, 'IT020870', 'MCC SMILES 415 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 75.7900, 16, 75.9100, 'Exclusive', 64.67, 125.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(871, 2, 871, 'IT020871', 'MCC SMILES 750 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 154.6000, 16, 154.7200, 'Exclusive', 55.12, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 265.0000, 0),
(872, 2, 872, 'IT020872', 'MCC SMILES 750 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 145.6700, 16, 145.7900, 'Exclusive', 14.03, 166.2400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 184.7100, 0),
(873, 2, 873, 'IT020873', 'MCC SMILES 750 GM', 1, '', '16010000', 81, 20, 5, '', NULL, 148.2100, 16, 148.3300, 'Exclusive', 0.00, 148.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 148.2100, 0),
(874, 2, 874, 'IT020874', 'MCC SUPER VEG BURGER PATTY 1.2 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 195.8500, 16, 195.9700, 'Exclusive', 42.88, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(875, 2, 875, 'IT020875', 'MCC SUPER WEDGES 400 GM', 1, '', '20041000', 81, 20, 5, '', NULL, 86.0800, 16, 86.2000, 'Exclusive', 62.41, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(876, 2, 876, 'IT020876', 'MCC SURE CRISP COATED FRIES 9 MM 3 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 475.8900, 16, 476.0100, 'Exclusive', 36.55, 650.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(877, 2, 877, 'IT020877', 'MCC V CRISPERS 2 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 345.5300, 16, 345.6500, 'Exclusive', 44.65, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(878, 2, 878, 'IT020878', 'MCC VEGGIE BURGER PATTY 360 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 78.3900, 16, 78.5100, 'Exclusive', 65.58, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 144.0000, 0),
(879, 2, 879, 'IT020879', 'MCC VEGGIE BURGER PATTY 360 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 87.0500, 16, 87.1700, 'Exclusive', 20.80, 105.3000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 117.0000, 0),
(880, 2, 880, 'IT020880', 'MCC VEGGIE FINGER 1 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 184.7500, 16, 184.8700, 'Exclusive', 62.28, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(881, 2, 881, 'IT020881', 'MCC VEGGIE FINGER 1 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 186.0000, 16, 186.1200, 'Exclusive', 0.00, 186.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(882, 2, 882, 'IT020882', 'MCC VEGGIE FINGER 400 GM', 1, '', '20049000', 81, 20, 5, '', NULL, 74.3200, 16, 74.4400, 'Exclusive', 21.99, 90.8100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 99.8900, 0),
(883, 2, 883, 'IT020883', 'MCC VEGGIE NUGGETS 1 KG', 1, '', '20049000', 81, 20, 5, '', NULL, 220.5500, 16, 220.6700, 'Exclusive', 35.95, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(884, 2, 884, 'IT020884', 'MCC. FRENCH FRIES 9 MM 2.5 KG', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8500, 16, 267.9700, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(885, 2, 885, 'IT020885', 'MCC. FRENCH FRIES REG 2.5 KG 6 MM', 1, '', '20041000', 81, 20, 5, '', NULL, 267.8500, 16, 267.9700, 'Exclusive', 30.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(886, 2, 886, 'IT020886', 'MEHRAN BADAM KHEER MIX', 3, '', '19049000', 81, 20, 56, '', NULL, 88.9800, 17, 89.1600, 'Exclusive', 45.81, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(887, 2, 887, 'IT020887', 'MEHRAN BIRYANI MASALA 65 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(888, 2, 888, 'IT020888', 'MEHRAN BOMBAY BIRYANI MASALA 65 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(889, 2, 889, 'IT020889', 'MEHRAN BOMBAY DAL GOSHT MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(890, 2, 890, 'IT020890', 'MEHRAN CHAPLI KEBAB MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(891, 2, 891, 'IT020891', 'MEHRAN CHICKEN ANGARA MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(892, 2, 892, 'IT020892', 'MEHRAN CHICKEN BROAST FRY 125 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 95.2400, 18, 95.2900, 'Exclusive', 20.68, 115.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 125.0000, 0),
(893, 2, 893, 'IT020893', 'MEHRAN CHICKEN MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 0.00, 63.8100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 63.8100, 0),
(894, 2, 894, 'IT020894', 'MEHRAN CHICKEN TIKKA BIRYANI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(895, 2, 895, 'IT020895', 'MEHRAN CHICKEN TIKKA MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(896, 2, 896, 'IT020896', 'MEHRAN CHICKEN WHITE QORMA MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(897, 2, 897, 'IT020897', 'MEHRAN HALEEM DANEDAR', 3, '', '9109100', 81, 20, 56, '', NULL, 133.3300, 18, 133.3800, 'Exclusive', 27.46, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(898, 2, 898, 'IT020898', 'MEHRAN HALEEM MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(899, 2, 899, 'IT020899', 'MEHRAN HYDERABADI BIRYANI MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(900, 2, 900, 'IT020900', 'MEHRAN KHEER MIX', 3, '', '19049000', 81, 20, 56, '', NULL, 88.9800, 17, 89.1600, 'Exclusive', 45.81, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(901, 2, 901, 'IT020901', 'MEHRAN MALEY CHICKEN BIRYANI', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(902, 2, 902, 'IT020902', 'MEHRAN MEAT MASALA 100 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(903, 2, 903, 'IT020903', 'MEHRAN MUTTON BIRYANI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(904, 2, 904, 'IT020904', 'MEHRAN NIHARI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(905, 2, 905, 'IT020905', 'MEHRAN PISTACHIO KHEER MIX', 3, '', '19049000', 81, 20, 56, '', NULL, 88.9800, 17, 89.1600, 'Exclusive', 45.81, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(906, 2, 906, 'IT020906', 'MEHRAN PULLAO BIRYANI MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(907, 2, 907, 'IT020907', 'MEHRAN PUNJABI YAKHNI PULLAO MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(908, 2, 908, 'IT020908', 'MEHRAN QEEMA MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(909, 2, 909, 'IT020909', 'MEHRAN QORMA MASALA 50 GM', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(910, 2, 910, 'IT020910', 'MEHRAN SHAMI KABAB MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(911, 2, 911, 'IT020911', 'MEHRAN SHEER KHURMA MIX', 3, '', '19049000', 81, 20, 56, '', NULL, 88.9800, 17, 89.1600, 'Exclusive', 45.81, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(912, 2, 912, 'IT020912', 'MEHRAN SINDHI BIRYANI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(913, 2, 913, 'IT020913', 'MEHRAN TANDOORI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 9.61, 70.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(914, 2, 914, 'IT020914', 'MEHRAN WHITE BIRYANI MASALA', 3, '', '9109100', 81, 20, 56, '', NULL, 63.8100, 18, 63.8600, 'Exclusive', 25.27, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(915, 2, 915, 'IT020915', 'MEHRAN ZAFRAN KHEER MIX', 3, '', '19049000', 81, 20, 56, '', NULL, 88.9800, 17, 89.1600, 'Exclusive', 45.81, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(916, 2, 916, 'IT020916', 'HAL MIX VEG PARATHA 7&quot; 560 GM', 1, '', '19059090', 81, 20, 19, '', NULL, 115.0000, 17, 115.1800, 'Exclusive', 12.87, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(917, 2, 917, 'IT020917', 'MM CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 9, '', NULL, 397.3200, 16, 397.4400, 'Exclusive', 20.77, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(918, 2, 918, 'IT020918', 'MM CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 9, '', NULL, 401.7900, 16, 401.9100, 'Exclusive', 19.43, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(919, 2, 919, 'IT020919', 'MM CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 9, '', NULL, 392.8600, 16, 392.9800, 'Exclusive', 22.14, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 599.0000, 0),
(920, 2, 920, 'IT020920', 'MM CHEESE CUBE 200 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 82.7200, 16, 82.8400, 'Exclusive', 44.86, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(921, 2, 921, 'IT020921', 'MM CHEESE SLICE 0.765 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 308.0400, 16, 308.1600, 'Exclusive', 33.05, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(922, 2, 922, 'IT020922', 'MM CHEESE SLICE 200 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 75.1300, 16, 75.2500, 'Exclusive', 32.89, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(923, 2, 923, 'IT020923', 'MM CHEESE SLICE 200 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 68.3100, 16, 68.4300, 'Exclusive', 46.13, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(924, 2, 924, 'IT020924', 'MM CHEESE SLICE 200 GM', 5, '', '463000', 81, 20, 9, '', NULL, 136.6100, 16, 136.7300, 'Exclusive', 0.00, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(925, 2, 925, 'IT020925', 'MM CHEESE SLICE 765 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 303.5700, 16, 303.6900, 'Exclusive', 35.01, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(926, 2, 926, 'IT020926', 'MM CHEESE SLICE 765 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 312.5000, 16, 312.6200, 'Exclusive', 31.15, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(927, 2, 927, 'IT020927', 'MM DARK CHOCOLATE 80 GM', 5, '', '18061000', 81, 20, 9, '', NULL, 83.9000, 17, 84.0800, 'Exclusive', 0.00, 55.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(928, 2, 928, 'IT020928', 'MM DARK DELIGHT 13 GM', 5, '', '18061000', 81, 20, 9, '', NULL, 152.5400, 17, 152.7200, 'Exclusive', 0.00, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(929, 2, 929, 'IT020929', 'MM FILLER CHEESE 500 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 147.3200, 16, 147.4400, 'Exclusive', 35.65, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(930, 2, 930, 'IT020930', 'MM GHEE 1L(PILLOW POUCH)', 3, '', '4059020', 81, 20, 9, '', NULL, 491.0700, 16, 491.1900, 'Exclusive', 20.12, 590.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 749.0000, 0),
(931, 2, 931, 'IT020931', 'MM GHEE 1L(PILLOW POUCH)', 3, '', '4059020', 81, 20, 9, '', NULL, 468.7500, 16, 468.8700, 'Exclusive', 25.83, 590.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 729.0000, 0),
(932, 2, 932, 'IT020932', 'MM GHEE 1L(PILLOW POUCH)', 3, '', '4059020', 81, 20, 9, '', NULL, 477.6800, 16, 477.8000, 'Exclusive', 23.48, 590.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 729.0000, 0),
(933, 2, 933, 'IT020933', 'MM GHEE 1LTR(PET JAR)', 3, '', '4059020', 81, 20, 9, '', NULL, 508.9300, 16, 509.0500, 'Exclusive', 33.58, 680.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 759.0000, 0),
(934, 2, 934, 'IT020934', 'MM GHEE 200 ML (PET JAR)', 3, '', '4059020', 81, 20, 9, '', NULL, 107.1400, 16, 107.2600, 'Exclusive', 21.20, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 159.0000, 0),
(935, 2, 935, 'IT020935', 'MM GHEE 500 ML(PILLOW POUCH)', 3, '', '4059020', 81, 20, 9, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 36.82, 330.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 365.0000, 0),
(936, 2, 936, 'IT020936', 'MM GHEE 500 ML(PILLOW POUCH)', 3, '', '4059020', 81, 20, 9, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 26.88, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(937, 2, 937, 'IT020937', 'MM GREEK YOGHURT 100 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 30.4800, 18, 30.5300, 'Exclusive', 0.00, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(938, 2, 938, 'IT020938', 'MM GREEK YOGHURT 100 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 32.3800, 18, 32.4300, 'Exclusive', 0.00, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(939, 2, 939, 'IT020939', 'MM GREEK YOGHURT 700 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 182.1400, 18, 182.1900, 'Exclusive', 9.78, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(940, 2, 940, 'IT020940', 'MM GREEK YOGHURT HONEY AND FIG-100 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 32.3800, 18, 32.4300, 'Exclusive', 23.34, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(941, 2, 941, 'IT020941', 'MM MISHTI DOI 100 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 23.8100, 18, 23.8600, 'Exclusive', 46.69, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 35.0000, 0),
(942, 2, 942, 'IT020942', 'MM MISHTI DOI 200 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 38.1000, 18, 38.1500, 'Exclusive', 31.06, 50.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 55.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(943, 2, 943, 'IT020943', 'MM MOZARELLA DICED 200 GM', 5, '', '4061010', 81, 20, 9, '', NULL, 75.1300, 16, 75.2500, 'Exclusive', 32.89, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(944, 2, 944, 'IT020944', 'MM MOZZARELLA DICED 1 KG', 5, '', '4061010', 81, 20, 9, '', NULL, 383.9300, 16, 384.0500, 'Exclusive', 30.19, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 645.0000, 0),
(945, 2, 945, 'IT020945', 'MM MOZZARELLA DICED 1 KG', 5, '', '4061010', 81, 20, 9, '', NULL, 392.8600, 16, 392.9800, 'Exclusive', 27.23, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(946, 2, 946, 'IT020946', 'MM MOZZARELLA DICED 1 KG', 5, '', '4061010', 81, 20, 9, '', NULL, 388.3900, 16, 388.5100, 'Exclusive', 28.70, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 645.0000, 0),
(947, 2, 947, 'IT020947', 'MM MOZZARELLA DICED 200 GM', 5, '', '4061010', 81, 20, 9, '', NULL, 80.3600, 16, 80.4800, 'Exclusive', 23.01, 99.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(948, 2, 948, 'IT020948', 'MM MOZZARELLA DICED 200 GM', 5, '', '4061010', 81, 20, 9, '', NULL, 107.1400, 16, 107.2600, 'Exclusive', 11.88, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(949, 2, 949, 'IT020949', 'MM PIZZA CHEESE BLOCK 200 GM', 5, '', '4063000', 81, 20, 9, '', NULL, 82.7200, 16, 82.8400, 'Exclusive', 32.79, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 140.0000, 0),
(950, 2, 950, 'IT020950', 'MM SET CURD 1 KG', 5, '', '4031000', 81, 20, 9, '', NULL, 82.9900, 18, 83.0400, 'Exclusive', 19.22, 99.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(951, 2, 951, 'IT020951', 'MM SET CURD 1 KG', 5, '', '4031000', 81, 20, 9, '', NULL, 84.8600, 18, 84.9100, 'Exclusive', 17.77, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(952, 2, 952, 'IT020952', 'MM SET CURD 1 KG BUCKET', 5, '', '4031000', 81, 20, 9, '', NULL, 85.7100, 18, 85.7600, 'Exclusive', 16.60, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(953, 2, 953, 'IT020953', 'MM SET CURD 400 GM', 5, '', '40631000', 81, 20, 9, '', NULL, 54.4800, 18, 54.5300, 'Exclusive', 19.20, 65.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 65.0000, 0),
(954, 2, 954, 'IT020954', 'MM SET CURD 400 GM', 5, '', '4031000', 81, 20, 9, '', NULL, 50.2900, 18, 50.3400, 'Exclusive', 19.19, 60.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 60.0000, 0),
(955, 2, 955, 'IT020955', 'MM SET CURD BUCKET 1 KG', 5, '', '4031000', 81, 20, 9, '', NULL, 90.4800, 18, 90.5300, 'Exclusive', 10.46, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(956, 2, 956, 'IT020956', 'MM SHRIKHAND BADAM PISTA 400 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 80.1400, NULL, 80.1400, 'Exclusive', 24.78, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(957, 2, 957, 'IT020957', 'MM SHRIKHAND ELLACHI 400 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 80.1400, 18, 80.1900, 'Exclusive', 23.46, 99.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(958, 2, 958, 'IT020958', 'MM SKYR HIGH PROTEIN PLAIN YOGHURT 100 GM', 5, '', '4039090', 81, 20, 9, '', NULL, 48.5700, 18, 48.6200, 'Exclusive', 23.41, 60.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 60.0000, 0),
(959, 2, 959, 'IT020959', 'MM SOFT CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 9, '', NULL, 392.8600, 16, 392.9800, 'Exclusive', 22.14, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(960, 2, 960, 'IT020960', 'MM SWEETEND CONDENSED MILK 395 GM', 3, '', '4029920', 82, 20, 9, '', NULL, 98.2100, 16, 98.3300, 'Exclusive', 32.21, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(961, 2, 961, 'IT020961', 'MM SWEETEND CONDENSED MILK 395 GM', 3, '', '4029920', 82, 20, 9, '', NULL, 110.0400, 16, 110.1600, 'Exclusive', 18.01, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(962, 2, 962, 'IT020962', 'MM SWEETEND CONDENSED MILK 395 GM', 3, '', '4029920', 82, 20, 9, '', NULL, 75.1300, 16, 75.2500, 'Exclusive', 72.76, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(963, 2, 963, 'IT020963', 'MM TABLE BUTTER 100 GM', 5, '', '4051000', 81, 20, 9, '', NULL, 44.2000, 16, 44.3200, 'Exclusive', 24.10, 55.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 68.0000, 0),
(964, 2, 964, 'IT020964', 'MM TABLE BUTTER 500 GM', 5, '', '4051000', 81, 20, 9, '', NULL, 222.7700, 16, 222.8900, 'Exclusive', 16.65, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(965, 2, 965, 'IT020965', 'MM TABLE BUTTER 500 GM', 5, '', '4051000', 81, 20, 9, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 16.25, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 355.0000, 0),
(966, 2, 966, 'IT020966', 'MM UHT BUTTERSCOTCH MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 26.7900, 16, 26.9100, 'Exclusive', 48.64, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(967, 2, 967, 'IT020967', 'MM UHT BUTTERSCOTCH MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 25.0000, 16, 25.1200, 'Exclusive', 59.24, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(968, 2, 968, 'IT020968', 'MM UHT CHOCOLATE MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 26.7900, 16, 26.9100, 'Exclusive', 48.64, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(969, 2, 969, 'IT020969', 'MM UHT CHOCOLATE MILKSHATE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 25.0000, 16, 25.1200, 'Exclusive', 59.24, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(970, 2, 970, 'IT020970', 'MM UHT COFFEE MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 26.7900, 16, 26.9100, 'Exclusive', 67.22, 45.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 45.0000, 0),
(971, 2, 971, 'IT020971', 'MM UHT CREAM 1 LTR', 5, '', '4015000', 6, 20, 9, '', NULL, 237.6000, NULL, 237.6000, 'Exclusive', 1.01, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 270.0000, 0),
(972, 2, 972, 'IT020972', 'MM UHT CREAM 1 LTR', 5, '', '4015000', 6, 20, 9, '', NULL, 195.0000, NULL, 195.0000, 'Exclusive', 23.08, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 270.0000, 0),
(973, 2, 973, 'IT020973', 'MM UHT LASSI BLUEBERRY 200 ML', 5, '', '4039090', 6, 20, 9, '', NULL, 25.7100, 18, 25.7600, 'Exclusive', 35.87, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 35.0000, 0),
(974, 2, 974, 'IT020974', 'MM UHT SPICE BUTTER  MILK 200 ML', 5, '', '4039010', 6, 20, 9, '', NULL, 11.4300, 18, 11.4800, 'Exclusive', 74.22, 20.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 20.0000, 0),
(975, 2, 975, 'IT020975', 'MM UHT SPICED BUTTER MILK 200 ML', 5, '', '4039010', 6, 20, 9, '', NULL, 12.3800, 18, 12.4300, 'Exclusive', 60.90, 20.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 20.0000, 0),
(976, 2, 976, 'IT020976', 'MM UHT STRAWBERRY MILKSHAKE', 5, '', '22029930', 6, 20, 9, '', NULL, 25.0000, 16, 25.1200, 'Exclusive', 59.24, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(977, 2, 977, 'IT020977', 'MM UHT STRAWBERRY MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 26.7900, 16, 26.9100, 'Exclusive', 48.64, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(978, 2, 978, 'IT020978', 'MM UHT VANILLA MILKSHAKE 220 ML', 5, '', '22029930', 6, 20, 9, '', NULL, 26.7900, 16, 26.9100, 'Exclusive', 48.64, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(979, 2, 979, 'IT020979', 'MM YOGHURT BLUEBERRY 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 23.8100, 18, 23.8600, 'Exclusive', 25.73, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(980, 2, 980, 'IT020980', 'MM YOGHURT BLUEBERRY 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 24.2900, 18, 24.3400, 'Exclusive', 23.25, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(981, 2, 981, 'IT020981', 'MM YOGHURT MANGO 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 24.2900, 18, 24.3400, 'Exclusive', 23.25, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(982, 2, 982, 'IT020982', 'MM YOGHURT MANGO 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 23.8100, 18, 23.8600, 'Exclusive', 25.73, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(983, 2, 983, 'IT020983', 'MM YOGHURT STRAWBERRY 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 23.8100, 18, 23.8600, 'Exclusive', 25.73, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(984, 2, 984, 'IT020984', 'MM YOGHURT STRAWBERRY 100 GM', 5, '', '4039090', 6, 20, 9, '', NULL, 24.2900, 18, 24.3400, 'Exclusive', 23.25, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 30.0000, 0),
(985, 2, 985, 'IT020985', 'MOZZARELLA PIZZA DICED 1 KG', 5, '', '4063000', 81, 20, 9, '', NULL, 360.0000, 16, 360.1200, 'Exclusive', 11.07, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(986, 2, 986, 'IT020986', 'NANDINI GHEE 1 LTR', 5, '', '4059090', 81, 20, 58, '', NULL, 510.0000, 16, 510.1200, 'Exclusive', 7.82, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 630.0000, 0),
(987, 2, 987, 'IT020987', 'NANDINI MOZARELLA CHEESE DICES 1 KG', 5, '', '4063000', 81, 20, 58, '', NULL, 362.0000, 16, 362.1200, 'Exclusive', 13.22, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 445.0000, 0),
(988, 2, 988, 'IT020988', 'NANDINI MOZARELLA CHEESE DICES 1 KG', 5, '', '4063000', 81, 20, 58, '', NULL, 350.0000, 16, 350.1200, 'Exclusive', 17.10, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 445.0000, 0),
(989, 2, 989, 'IT020989', 'NANDINI PROCESSED CHEESE BLOCK 1 KG', 5, '', '4063000', 81, 20, 58, '', NULL, 395.0000, 16, 395.1200, 'Exclusive', 18.95, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(990, 2, 990, 'IT020990', 'NEO RED PEPRICA 3 KG', 3, '', '20019000', 81, 20, 59, '', NULL, 334.8000, 16, 334.9200, 'Exclusive', 19.43, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(991, 2, 991, 'IT020991', 'NEO SLICE JALAPENO 3 KG', 3, '', '20019000', 81, 20, 59, '', NULL, 232.2000, 16, 232.3200, 'Exclusive', 24.83, 290.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(992, 2, 992, 'IT020992', 'OREGANO SPICE SPRINKLER 500 GM', 3, '', '21039040', 81, 20, 80, '', NULL, 230.0000, 16, 230.1200, 'Exclusive', 73.82, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 449.0000, 0),
(993, 2, 993, 'IT020993', 'OREGANO SPICE SPRINKLER SACHET 8 GM', 3, '', '9109100', 81, 20, 80, '', NULL, 142.5600, 16, 142.6800, 'Exclusive', 26.16, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(994, 2, 994, 'IT020994', 'OREGANO SPICE SPRINKLER SACHET 8 GM', 3, '', '21039040', 81, 20, 80, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 25.89, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(995, 2, 995, 'IT020995', 'OREGANO SPICE SPRINKLER SACHET 8 GM', 3, '', '21039040', 81, 20, 80, '', NULL, 145.1500, 16, 145.2700, 'Exclusive', 23.91, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(996, 2, 996, 'IT020996', 'HAL PANEER PARATHA 400 GM', 1, '', '21069099', 81, 20, 19, '', NULL, 160.0000, 17, 160.1800, 'Exclusive', 0.00, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(997, 2, 997, 'IT020997', 'PANKO BREAD CRUMBS', 3, '', '19054000', 81, 20, 36, '', NULL, 108.0000, 18, 108.0500, 'Exclusive', 29.57, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 243.0000, 0),
(998, 2, 998, 'IT020998', 'PARAS BLEND MOZZARELLA DICE 1 KG', 5, '', '4069000', 81, 20, 60, '', NULL, 379.4600, 16, 379.5800, 'Exclusive', 23.82, 470.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 620.0000, 0),
(999, 2, 999, 'IT020999', 'PARAS MOZZARELLA DICE 1 KG', 5, '', '4069000', 81, 20, 60, '', NULL, 366.0700, 16, 366.1900, 'Exclusive', 22.89, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 620.0000, 0),
(1000, 2, 1000, 'IT021000', 'PB ALPHONSO MANGO SYRUP 750 ML', 3, '', '20089911', 82, 20, 85, '', NULL, 200.8900, 16, 201.0100, 'Exclusive', 1.98, 205.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1001, 2, 1001, 'IT021001', 'PB Alphonso Mango Syrup 750ml ', 3, '', ' 20089911\n', 82, 20, 85, '', NULL, 140.6300, 16, 140.7500, 'Exclusive', 42.10, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1002, 2, 1002, 'IT021002', 'PB APPLE FRUIT BUTTERSCOTCH CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1003, 2, 1003, 'IT021003', 'PB BLACK CURRENT FRUIT CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1004, 2, 1004, 'IT021004', 'PB BLUE BERRY FRUIT CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.16, 255.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 285.0000, 0),
(1005, 2, 1005, 'IT021005', 'PB Blue Curacao Syrup 750ml', 3, '', ' 20089912\n', 82, 20, 85, '', NULL, 159.3800, 16, 159.5000, 'Exclusive', 44.20, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1006, 2, 1006, 'IT021006', 'PB BLUE CURACCAO SYRUP 750 ML', 3, '', '20089912', 82, 20, 85, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1007, 2, 1007, 'IT021007', 'PB Chocolate Sauce 1250gm ', 3, '', '18061000', 82, 20, 85, '', NULL, 189.8300, 17, 190.0100, 'Exclusive', 52.62, 290.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1008, 2, 1008, 'IT021008', 'PB CHOCOLATE SAUCE 250 GM', 3, '', '18061000', 82, 20, 85, '', NULL, 50.4200, 17, 50.6000, 'Exclusive', 58.10, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1009, 2, 1009, 'IT021009', 'PB Chocolate Sauce 650gm ', 3, '', '18061000', 82, 20, 85, '', NULL, 97.8800, 17, 98.0600, 'Exclusive', 52.97, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1010, 2, 1010, 'IT021010', 'PB FALSA SYRUP 750 ML', 3, '', '20089994', 82, 20, 85, '', NULL, 109.3800, 16, 109.5000, 'Exclusive', 50.68, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1011, 2, 1011, 'IT021011', 'PB FALSA SYRUP 750 ML', 3, '', '20089994', 82, 20, 85, '', NULL, 156.2500, 16, 156.3700, 'Exclusive', 2.32, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1012, 2, 1012, 'IT021012', 'PB GINGER &amp; LIME SYRUP 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 200.8900, 16, 201.0100, 'Exclusive', 1.98, 205.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1013, 2, 1013, 'IT021013', 'PB GINGER &amp; LIME SYRUP 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 140.6300, 16, 140.7500, 'Exclusive', 77.62, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1014, 2, 1014, 'IT021014', 'PB GREEN APPLE FRUIT CRUSH 750 ML', 3, '', '20089993', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 0.00, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1015, 2, 1015, 'IT021015', 'PB JEERA MASALA SODA SYRUP 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 200.8900, 16, 201.0100, 'Exclusive', 0.00, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1016, 2, 1016, 'IT021016', 'PB KALA KHATTA SYRUP 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 151.7900, 16, 151.9100, 'Exclusive', 2.03, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1017, 2, 1017, 'IT021017', 'PB Kala Khatta Syrup 750ml', 3, '', '20089919', 82, 20, 85, '', NULL, 106.2500, 16, 106.3700, 'Exclusive', 0.00, 106.2500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 106.2500, 0),
(1018, 2, 1018, 'IT021018', 'PB KESAR SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 204.6600, 17, 204.8400, 'Exclusive', 0.00, 204.6600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 204.6600, 0),
(1019, 2, 1019, 'IT021019', 'PB KESAR SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 292.3700, 17, 292.5500, 'Exclusive', 5.96, 310.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 345.0000, 0),
(1020, 2, 1020, 'IT021020', 'PB KHUS SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 139.8300, 16, 139.9500, 'Exclusive', 7.18, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1021, 2, 1021, 'IT021021', 'PB KIWI CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.16, 255.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 285.0000, 0),
(1022, 2, 1022, 'IT021022', 'PB KOKUM SYRUP 1 LTR', 3, '', '20089919', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 84.66, 305.2400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 342.2400, 0),
(1023, 2, 1023, 'IT021023', 'PB Kokum Syrup 1 Ltr', 3, '', '20089919', 82, 20, 85, '', NULL, 115.6300, 16, 115.7500, 'Exclusive', 42.55, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1024, 2, 1024, 'IT021024', 'PB KOKUM SYRUP 500 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 89.2900, 16, 89.4100, 'Exclusive', 11.84, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(1025, 2, 1025, 'IT021025', 'PB Kokum Syrup 500ml ', 3, '', '20089919', 82, 20, 85, '', NULL, 62.5000, 16, 62.6200, 'Exclusive', 43.72, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(1026, 2, 1026, 'IT021026', 'PB LEMON ICE TEA SYRUP 750 ML', 3, '', '20089912', 82, 20, 85, '', NULL, 160.7100, 16, 160.8300, 'Exclusive', 0.00, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1027, 2, 1027, 'IT021027', 'PB Lime Mock Syrup 750ml', 3, '', ' 20089912\n', 82, 20, 85, '', NULL, 159.3800, 16, 159.5000, 'Exclusive', 44.20, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1028, 2, 1028, 'IT021028', 'PB LITCHI CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.00, 254.4600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 254.4600, 0),
(1029, 2, 1029, 'IT021029', 'PB MULBERRY CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.16, 255.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 285.0000, 0),
(1030, 2, 1030, 'IT021030', 'PB NATURAL JAMUN JUICE 1000 ML', 3, '', '20089994', 82, 20, 85, '', NULL, 281.2500, 16, 281.3700, 'Exclusive', 1.29, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 315.0000, 0),
(1031, 2, 1031, 'IT021031', 'PB NATURAL JAMUN JUICE 300 ML', 3, '', '20089994', 82, 20, 85, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 0.00, 142.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 142.8600, 0),
(1032, 2, 1032, 'IT021032', 'PB ORANGE FRUIT CRUSH 750 ML', 3, '', '20089913', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 0.00, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1033, 2, 1033, 'IT021033', 'PB ORANGE SYRUP 750 ML', 3, '', '20089913', 82, 20, 85, '', NULL, 156.2500, 16, 156.3700, 'Exclusive', 0.00, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1034, 2, 1034, 'IT021034', 'PB Orange Syrup 750ml', 3, '', ' 20089913', 82, 20, 85, '', NULL, 109.3800, 16, 109.5000, 'Exclusive', 46.12, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1035, 2, 1035, 'IT021035', 'PB PAAN CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1036, 2, 1036, 'IT021036', 'PB PEACH &amp; APRICOT FRUIT CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 191.9600, 16, 192.0800, 'Exclusive', 1.52, 195.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 215.0000, 0),
(1037, 2, 1037, 'IT021037', 'PB Peach &amp; Tea Syrup 750ml', 3, '', '20089919', 82, 20, 85, '', NULL, 112.5000, 16, 112.6200, 'Exclusive', 42.07, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1038, 2, 1038, 'IT021038', 'PB PEACH ICE TEA SYRUP 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 160.7100, 16, 160.8300, 'Exclusive', 0.00, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1039, 2, 1039, 'IT021039', 'PB PINEAPPLE FRUIT CRUSH 750 ML', 3, '', '20089914', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1040, 2, 1040, 'IT021040', 'PB PINEAPPLE SYRUP 750 ML', 3, '', '20089914', 82, 20, 85, '', NULL, 156.2500, 16, 156.3700, 'Exclusive', 0.00, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1041, 2, 1041, 'IT021041', 'PB Pineapple Syrup 750ml', 3, '', ' 20089914\n', 82, 20, 85, '', NULL, 109.3800, 16, 109.5000, 'Exclusive', 41.55, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1042, 2, 1042, 'IT021042', 'PB PINK GUAVA CRUSH 750 ML', 3, '', '20089994', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1043, 2, 1043, 'IT021043', 'PB RASPBERRY FRUIT CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.16, 255.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 285.0000, 0),
(1044, 2, 1044, 'IT021044', 'PB ROSE SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 139.8300, 16, 139.9500, 'Exclusive', 7.18, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1045, 2, 1045, 'IT021045', 'PB ROSE SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 97.8800, 16, 98.0000, 'Exclusive', 53.06, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1046, 2, 1046, 'IT021046', 'PB Rose Syrup 750ml', 3, '', '21069011', 82, 20, 85, '', NULL, 97.8800, 17, 98.0600, 'Exclusive', 52.97, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1047, 2, 1047, 'IT021047', 'PB STRAWBERRY FRUIT CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 165.1800, 16, 165.3000, 'Exclusive', 2.84, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1048, 2, 1048, 'IT021048', 'PB STRAWBERRY JUICE 1000 ML', 3, '', '4821', 82, 20, 85, '', NULL, 281.2500, 16, 281.3700, 'Exclusive', 1.29, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 315.0000, 0),
(1049, 2, 1049, 'IT021049', 'PB STRAWBERRY JUICE 300 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 1.41, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(1050, 2, 1050, 'IT021050', 'PB STRAWBERRY WHOLE CRUSH 750 ML', 3, '', '20089919', 82, 20, 85, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1051, 2, 1051, 'IT021051', 'PB THREE BERRY JAM 400 GM', 3, '', '20071000', 82, 20, 85, '', NULL, 191.9600, 16, 192.0800, 'Exclusive', 1.52, 195.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 215.0000, 0),
(1052, 2, 1052, 'IT021052', 'PB WHITE ROSE SYRUP 750 ML', 3, '', '21069011', 82, 20, 85, '', NULL, 190.6800, 17, 190.8600, 'Exclusive', 7.41, 205.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1053, 2, 1053, 'IT021053', 'PB White Rose Syrup 750ml', 3, '', '21069011', 82, 20, 85, '', NULL, 133.4700, 17, 133.6500, 'Exclusive', 53.39, 205.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1054, 2, 1054, 'IT021054', 'PERI PERI MARINADE 1 KG', 3, '', '21039040', 81, 20, 80, '', NULL, 387.0000, 16, 387.1200, 'Exclusive', 0.00, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 430.0000, 0),
(1055, 2, 1055, 'IT021055', 'PG BUFFALO GHEE 500 ML', 3, '', '405', 82, 20, 62, '', NULL, 558.0400, 16, 558.1600, 'Exclusive', 0.00, 550.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 695.0000, 0),
(1056, 2, 1056, 'IT021056', 'PG COW GHEE 500 ML', 3, '', '405', 82, 20, 62, '', NULL, 535.7100, 16, 535.8300, 'Exclusive', 0.00, 500.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 625.0000, 0),
(1057, 2, 1057, 'IT021057', 'PG CREAM CHEESE 250 GM', 3, '', '4063000', 82, 20, 62, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1058, 2, 1058, 'IT021058', 'PG GARLIC &amp; HERB CHEESE 250 GM', 3, '', '4061000', 82, 20, 62, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.00, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1059, 2, 1059, 'IT021059', 'PG GELLA HONEY 280 GM', 3, '', '4090000', 82, 20, 62, '', NULL, 285.7100, 18, 285.7600, 'Exclusive', 0.00, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1060, 2, 1060, 'IT021060', 'PG GULKAND 100 GM', 3, '', '20060000', 82, 20, 62, '', NULL, 191.9600, 16, 192.0800, 'Exclusive', 0.00, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1061, 2, 1061, 'IT021061', 'PG JAMUN PESERVE JAM 350 ML(SUGAR FREE)', 3, '', '20071000', 82, 20, 62, '', NULL, 263.3900, 16, 263.5100, 'Exclusive', 0.57, 265.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(1062, 2, 1062, 'IT021062', 'PG NATURAL HONEY 1 KG', 3, '', '4090000', 82, 20, 62, '', NULL, 814.2900, 18, 814.3400, 'Exclusive', 0.00, 780.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 855.0000, 0),
(1063, 2, 1063, 'IT021063', 'PG NATURAL HONEY 500GM', 3, '', '4090000', 82, 20, 62, '', NULL, 404.7600, 18, 404.8100, 'Exclusive', 0.00, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 425.0000, 0),
(1064, 2, 1064, 'IT021064', 'PG PEPPER JACK CHEESE 250 GM', 3, '', '4061000', 82, 20, 62, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1065, 2, 1065, 'IT021065', 'PG PERI PERI CHEESE SPREAD', 3, '', '4061000', 82, 20, 62, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1066, 2, 1066, 'IT021066', 'PG SMOKED CHEDDAR CHEESE 250 GM', 3, '', '4061000', 82, 20, 62, '', NULL, 227.6800, 16, 227.8000, 'Exclusive', 0.97, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1067, 2, 1067, 'IT021067', 'PG WILD FLOWER HONEY 500 GM', 3, '', '40690000', 82, 20, 62, '', NULL, 471.4300, 18, 471.4800, 'Exclusive', 0.00, 445.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 495.0000, 0),
(1068, 2, 1068, 'IT021068', 'PIRI PIRI SPRINKLER 250 GM', 3, '', '9109100', 81, 20, 20, '', NULL, 114.4000, 18, 114.4500, 'Exclusive', 31.06, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(1069, 2, 1069, 'IT021069', 'PIRI PIRI SPRINKLER 250 GM', 3, '', '9109100', 81, 20, 20, '', NULL, 118.8000, 18, 118.8500, 'Exclusive', 26.21, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(1070, 2, 1070, 'IT021070', 'PIRI PIRI SPRINKLER 250 GM', 3, '', '9109100', 81, 20, 20, '', NULL, 116.4800, 18, 116.5300, 'Exclusive', 54.47, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(1071, 2, 1071, 'IT021071', 'PRABHAT PIZZA TOPPING DICED 1 KG', 5, '', '4061000', 81, 20, 63, '', NULL, 325.0000, 16, 325.1200, 'Exclusive', 23.03, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1072, 2, 1072, 'IT021072', 'PRABHAT QUALITA PROCESSED CHEESE 1 KG', 5, '', '4061000', 81, 20, 63, '', NULL, 265.0000, 16, 265.1200, 'Exclusive', 32.02, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1073, 2, 1073, 'IT021073', 'PREMIUM VEGGIE DECKER (BURGER PATTY) 1.2 KG', 5, '', '20049000', 81, 20, 4, '', NULL, 147.3200, 16, 147.4400, 'Exclusive', 76.34, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1074, 2, 1074, 'IT021074', 'QB CHICKEN AFGHANI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 276.7800, 16, 276.9000, 'Exclusive', 0.00, 276.7800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 276.7800, 0),
(1075, 2, 1075, 'IT021075', 'QB CHICKEN CHEESE ROLL 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 294.6400, 16, 294.7600, 'Exclusive', 42.49, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1076, 2, 1076, 'IT021076', 'QB CHICKEN CHEESE ROLL 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 285.7200, 16, 285.8400, 'Exclusive', 46.94, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1077, 2, 1077, 'IT021077', 'QB CHICKEN LOLLYPOP 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 339.2800, 16, 339.4000, 'Exclusive', 32.59, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1078, 2, 1078, 'IT021078', 'QB CHICKEN LOLLYPOP 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 312.5000, 16, 312.6200, 'Exclusive', 43.94, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1079, 2, 1079, 'IT021079', 'QB CHICKEN LUCKNOWI SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 267.8500, 16, 267.9700, 'Exclusive', 56.73, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1080, 2, 1080, 'IT021080', 'QB CHICKEN SALAMI 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 56.30, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1081, 2, 1081, 'IT021081', 'QB CHICKEN SALAMI 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 59.30, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1082, 2, 1082, 'IT021082', 'QB CHICKEN SALAMI BLACK PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 0.00, 241.0700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 241.0700, 0),
(1083, 2, 1083, 'IT021083', 'QB CHICKEN SALAMI BLACK PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 56.30, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 590.0000, 0),
(1084, 2, 1084, 'IT021084', 'QB CHICKEN SALAMI SPICY 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 53.41, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 590.0000, 0),
(1085, 2, 1085, 'IT021085', 'QB CHICKEN SALAMI SPICY 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 236.6000, 16, 236.7200, 'Exclusive', 56.30, 370.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 590.0000, 0),
(1086, 2, 1086, 'IT021086', 'QB CHICKEN SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 209.8200, 16, 209.9400, 'Exclusive', 66.71, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1087, 2, 1087, 'IT021087', 'QB CHICKEN SAUSAGES BLACK PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 236.6100, 16, 236.7300, 'Exclusive', 60.52, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 590.0000, 0),
(1088, 2, 1088, 'IT021088', 'QB CHICKEN SAUSAGES BLACK PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 0.00, 241.0700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 241.0700, 0),
(1089, 2, 1089, 'IT021089', 'QB CHICKEN SAUSAGES CHEESE &amp; PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 254.4600, 16, 254.5800, 'Exclusive', 0.00, 254.4600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(1090, 2, 1090, 'IT021090', 'QB CHICKEN SAUSAGES CHEESE &amp; PEPPER 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 258.9300, 16, 259.0500, 'Exclusive', 0.00, 258.9300, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 258.9300, 0),
(1091, 2, 1091, 'IT021091', 'QB CHICKEN SEEKH HARIYALI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 276.7800, 16, 276.9000, 'Exclusive', 51.68, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1092, 2, 1092, 'IT021092', 'QB CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 56.73, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 660.0000, 0),
(1093, 2, 1093, 'IT021093', 'QB CHICKEN SEEKH MALAI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 285.7200, 16, 285.8400, 'Exclusive', 53.93, 440.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1094, 2, 1094, 'IT021094', 'QB CHICKEN SHAMI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 64.19, 440.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 660.0000, 0),
(1095, 2, 1095, 'IT021095', 'QB CHICKEN SHAMI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 276.7800, 16, 276.9000, 'Exclusive', 58.90, 440.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 660.0000, 0),
(1096, 2, 1096, 'IT021096', 'QB CHICKEN SPICY SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 45.11, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1097, 2, 1097, 'IT021097', 'QB CHICKEN SPICY SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 276.8000, 16, 276.9200, 'Exclusive', 51.67, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1098, 2, 1098, 'IT021098', 'QB LUCKNOWI SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 276.7800, 16, 276.9000, 'Exclusive', 51.68, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(1099, 2, 1099, 'IT021099', 'QB MUTTON SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 482.1400, 16, 482.2600, 'Exclusive', 34.78, 650.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(1100, 2, 1100, 'IT021100', 'QB MUTTON SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 491.0700, 16, 491.1900, 'Exclusive', 32.33, 650.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 980.0000, 0),
(1101, 2, 1101, 'IT021101', 'QB MUTTON SHAMI KEBAB 1 KG', 13, '', '16010000', 81, 20, 64, '', NULL, 491.0700, 16, 491.1900, 'Exclusive', 32.33, 650.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 980.0000, 0),
(1102, 2, 1102, 'IT021102', 'RICHLITE TABLE SPREAD 500 GM', 5, '', '15171021', 81, 20, 65, '', NULL, 74.0000, 18, 74.0500, 'Exclusive', 21.54, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(1103, 2, 1103, 'IT021103', 'RICHLITE TABLE SPREAD 500 GM', 5, '', '15171021', 81, 20, 65, '', NULL, 60.0000, 18, 60.0500, 'Exclusive', 49.88, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(1104, 2, 1104, 'IT021104', 'ROC CHICKEN ANGARA SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 243.0000, 16, 243.1200, 'Exclusive', 43.96, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1105, 2, 1105, 'IT021105', 'ROC CHICKEN ANGARA SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 252.0000, 16, 252.1200, 'Exclusive', 38.82, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1106, 2, 1106, 'IT021106', 'ROC CHICKEN BURGER PATTY 1 KG', 13, '', '16021000', 81, 20, 66, '', NULL, 185.0000, 16, 185.1200, 'Exclusive', 62.06, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1107, 2, 1107, 'IT021107', 'ROC CHICKEN CHEESE FINGER 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 264.0000, 16, 264.1200, 'Exclusive', 51.45, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 695.0000, 0),
(1108, 2, 1108, 'IT021108', 'ROC CHICKEN CHEESE NUGGETS 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 258.0000, 16, 258.1200, 'Exclusive', 47.22, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 695.0000, 0),
(1109, 2, 1109, 'IT021109', 'ROC CHICKEN CHEESE NUGGETS 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 260.0000, 16, 260.1200, 'Exclusive', 46.09, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1110, 2, 1110, 'IT021110', 'ROC CHICKEN CHEESE SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 251.0000, 16, 251.1200, 'Exclusive', 67.25, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(1111, 2, 1111, 'IT021111', 'ROC CHICKEN CHEESE SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 248.0000, 16, 248.1200, 'Exclusive', 69.27, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 670.0000, 0),
(1112, 2, 1112, 'IT021112', 'ROC CHICKEN FRANKFURTERS (SMOKED) 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 238.0000, 16, 238.1200, 'Exclusive', 59.58, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 675.0000, 0),
(1113, 2, 1113, 'IT021113', 'ROC CHICKEN FRIED STRIPS 1 KG', 13, '', '16021000', 81, 20, 66, '', NULL, 304.0000, 16, 304.1200, 'Exclusive', 38.10, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1114, 2, 1114, 'IT021114', 'ROC CHICKEN MINI KIEVES 1 KG', 13, '', '2071200', 81, 20, 66, '', NULL, 265.0000, 16, 265.1200, 'Exclusive', 50.88, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1115, 2, 1115, 'IT021115', 'ROC CHICKEN MINI KIEVS 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 253.0000, 16, 253.1200, 'Exclusive', 50.13, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1116, 2, 1116, 'IT021116', 'ROC CHICKEN MINI KIEVS 1 KG', 13, '', '2071200', 81, 20, 66, '', NULL, 282.0000, 16, 282.1200, 'Exclusive', 34.69, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 680.0000, 0),
(1117, 2, 1117, 'IT021117', 'ROC CHICKEN NUGGETS 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 210.0000, 16, 210.1200, 'Exclusive', 42.78, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1118, 2, 1118, 'IT021118', 'ROC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 238.0000, 16, 238.1200, 'Exclusive', 46.98, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1119, 2, 1119, 'IT021119', 'ROC CHICKEN SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 221.9600, 16, 222.0800, 'Exclusive', 57.60, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1120, 2, 1120, 'IT021120', 'ROC CHICKEN TURKISH SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 243.0000, 16, 243.1200, 'Exclusive', 43.96, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1121, 2, 1121, 'IT021121', 'ROC CHICKEN TURKISH SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 252.0000, 16, 252.1200, 'Exclusive', 38.82, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1122, 2, 1122, 'IT021122', 'ROC MUTTON SEEKH KEBAB 1 KG', 13, '', '16010000', 81, 20, 66, '', NULL, 382.0000, 16, 382.1200, 'Exclusive', 51.78, 580.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 950.0000, 0),
(1123, 2, 1123, 'IT021123', 'ROC VEGETABLE MINI KIEVS 1 KG', 1, '', '19049000', 81, 20, 66, '', NULL, 235.0000, 16, 235.1200, 'Exclusive', 48.86, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(1124, 2, 1124, 'IT021124', 'S ACHARI SEEKH KEBAB 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 320.3500, 16, 320.4700, 'Exclusive', 43.54, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1125, 2, 1125, 'IT021125', 'S AFGHANI MUTTON SEEKH KEBAB 250 G', 13, '', '16029000', 81, 20, 29, '', NULL, 170.3600, 16, 170.4800, 'Exclusive', 40.78, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 265.0000, 0),
(1126, 2, 1126, 'IT021126', 'S BREAKFAST SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 251.4600, 16, 251.5800, 'Exclusive', 51.05, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1127, 2, 1127, 'IT021127', 'S CHEESE &amp; JALAPENO SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 289.3500, 16, 289.4700, 'Exclusive', 45.09, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1128, 2, 1128, 'IT021128', 'S CHEESE &amp; ONION SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 289.3500, 16, 289.4700, 'Exclusive', 45.09, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1129, 2, 1129, 'IT021129', 'S CHICKEN BURGER PATTIES 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 275.5700, 16, 275.6900, 'Exclusive', 48.72, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1130, 2, 1130, 'IT021130', 'S CHICKEN COCKTAIL SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 261.7900, 16, 261.9100, 'Exclusive', 52.72, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1131, 2, 1131, 'IT021131', 'S CHICKEN LOLLIPOPS 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 365.1300, 16, 365.2500, 'Exclusive', 39.63, 510.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1132, 2, 1132, 'IT021132', 'S CHICKEN MALAI TIKKA (MARINATED) 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 385.8000, 16, 385.9200, 'Exclusive', 39.93, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(1133, 2, 1133, 'IT021133', 'S CHICKEN PAPRIKA SPICED SALAMI 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 275.5700, 16, 275.6900, 'Exclusive', 48.72, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1134, 2, 1134, 'IT021134', 'S CHICKEN PLAIN SALAMI 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 265.2400, 16, 265.3600, 'Exclusive', 50.74, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1135, 2, 1135, 'IT021135', 'S CHICKEN SEEKH KEBAB 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 310.0200, 16, 310.1400, 'Exclusive', 48.32, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 585.0000, 0),
(1136, 2, 1136, 'IT021136', 'S CHICKEN TANDOORI TIKKA (MARINATED) 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 385.8000, 16, 385.9200, 'Exclusive', 39.93, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(1137, 2, 1137, 'IT021137', 'S CLASSIC ENGLISH CHICKEN SALAMI 250 G', 13, '', '16010000', 81, 20, 29, '', NULL, 93.2100, 16, 93.3300, 'Exclusive', 39.29, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(1138, 2, 1138, 'IT021138', 'S COCKTAIL SAUSAGE', 13, '', '16010000', 81, 20, 29, '', NULL, 214.9500, 16, 215.0700, 'Exclusive', 85.99, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(1139, 2, 1139, 'IT021139', 'S ENGLISH BREAKFAST CHICKEN SAUSAGES 250 G', 13, '', '16010000', 81, 20, 29, '', NULL, 93.2100, 16, 93.3300, 'Exclusive', 39.29, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(1140, 2, 1140, 'IT021140', 'S GOLDEN AMERICANO CHICKEN NUGGETS 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 296.2400, 16, 296.3600, 'Exclusive', 34.97, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1141, 2, 1141, 'IT021141', 'S GOLDEN AMERICANO CHICKEN NUGGETS 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 102.8600, 16, 102.9800, 'Exclusive', 40.80, 145.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(1142, 2, 1142, 'IT021142', 'S HERB &amp; OLIVE SALAMI 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 285.9100, 16, 286.0300, 'Exclusive', 50.34, 430.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0100, 0),
(1143, 2, 1143, 'IT021143', 'S ITALIAN HERB &amp; OLIVE SALAMI 250 G', 13, '', '16010000', 81, 20, 29, '', NULL, 99.6400, 16, 99.7600, 'Exclusive', 0.00, 99.6400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 99.6400, 0),
(1144, 2, 1144, 'IT021144', 'S ITALIAN HERB SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 275.5700, 16, 275.6900, 'Exclusive', 48.72, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1145, 2, 1145, 'IT021145', 'S LUCKNOWI CHICKEN SEEKH KEBAB 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 320.3500, 16, 320.4700, 'Exclusive', 43.54, 459.9900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0200, 0),
(1146, 2, 1146, 'IT021146', 'S LUCKNOWI CHICKEN SEEKH KEBAB 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 106.0700, 16, 106.1900, 'Exclusive', 41.26, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1147, 2, 1147, 'IT021147', 'S MEXICANO GARLIC CHICKEN TENDERS 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 99.6400, 16, 99.7600, 'Exclusive', 40.34, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 155.0000, 0),
(1148, 2, 1148, 'IT021148', 'S MUTTON SEEKH KEBAB 1 KG', 13, '', '16029000', 81, 20, 29, '', NULL, 630.3700, 16, 630.4900, 'Exclusive', 31.64, 830.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 1100.0000, 0),
(1149, 2, 1149, 'IT021149', 'S PAHADI TIKKA MARINATED 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 385.8000, 16, 385.9200, 'Exclusive', 39.93, 540.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 560.0000, 0),
(1150, 2, 1150, 'IT021150', 'S PAPRIKA SPICED SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 265.2400, 16, 265.3600, 'Exclusive', 50.74, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1151, 2, 1151, 'IT021151', 'S PESHAWARI CHICKEN TIKKA 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 451.2500, 16, 451.3700, 'Exclusive', 24.07, 560.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 800.0000, 0),
(1152, 2, 1152, 'IT021152', 'S PESHAWARI CHICKEN TIKKA 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 131.7900, 16, 131.9100, 'Exclusive', 40.25, 185.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 205.0000, 0),
(1153, 2, 1153, 'IT021153', 'S PHILLY CHEESY CHICKEN POCKETS 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 344.4700, 16, 344.5900, 'Exclusive', 42.20, 490.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1154, 2, 1154, 'IT021154', 'S PHILLY CHEESY CHICKEN POCKETS 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 109.2900, 16, 109.4100, 'Exclusive', 105.65, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1155, 2, 1155, 'IT021155', 'S RESHMI SEEKH KEBAB 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 320.3500, 16, 320.4700, 'Exclusive', 43.54, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1156, 2, 1156, 'IT021156', 'S SEEKH KEBAB', 13, '', '16010000', 81, 20, 29, '', NULL, 275.5700, 16, 275.6900, 'Exclusive', 45.09, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(1157, 2, 1157, 'IT021157', 'S SICHUAN SPICED CHICKEN LOLLIPOPS 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 118.9300, 16, 119.0500, 'Exclusive', 42.80, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1158, 2, 1158, 'IT021158', 'S SMOKED SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 289.3500, 16, 289.4700, 'Exclusive', 41.64, 410.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1159, 2, 1159, 'IT021159', 'S SPANISH CHICKEN CHORIZO SAUSAGES 1 KG', 13, '', '16010000', 81, 20, 29, '', NULL, 275.5700, 16, 275.6900, 'Exclusive', 52.35, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1160, 2, 1160, 'IT021160', 'S SPANISH CHICKEN CHORIZO SAUSAGES 250 G', 13, '', '16010000', 81, 20, 29, '', NULL, 96.4300, 16, 96.5500, 'Exclusive', 39.82, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1161, 2, 1161, 'IT021161', 'S TURKISH SPICED CHICKEN KEBAB 1 KG', 13, '', '16023200', 81, 20, 29, '', NULL, 320.3500, 16, 320.4700, 'Exclusive', 43.54, 460.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1162, 2, 1162, 'IT021162', 'S TURKISH SPICED CHICKEN KEBAB 250 G', 13, '', '16023200', 81, 20, 29, '', NULL, 106.0700, 16, 106.1900, 'Exclusive', 41.26, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1163, 2, 1163, 'IT021163', 'SCHEZWAN CHUTNEY 1 KG', 3, '', '21032000', 81, 20, 27, '', NULL, 102.6800, 16, 102.8000, 'Exclusive', 75.10, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1164, 2, 1164, 'IT021164', 'SF CHICKEN SAMOSA 1 KG', 13, '', '16010000', 81, 20, 67, '', NULL, 339.2900, 16, 339.4100, 'Exclusive', 41.42, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 520.0000, 0),
(1165, 2, 1165, 'IT021165', 'SF CHICKEN SAMOSA 1 KG', 13, '', '', 81, 20, 67, '', NULL, 392.0000, 16, 392.1200, 'Exclusive', 22.41, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 580.0000, 0),
(1166, 2, 1166, 'IT021166', 'SF CHICKEN SPRING ROLL1 KG', 13, '', '', 81, 20, 67, '', NULL, 328.5700, 16, 328.6900, 'Exclusive', 0.00, 328.5700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 328.5700, 0),
(1167, 2, 1167, 'IT021167', 'SF VEG SAMOSA 1 KG', 1, '', '', 81, 20, 67, '', NULL, 280.0000, 16, 280.1200, 'Exclusive', 35.66, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(1168, 2, 1168, 'IT021168', 'SF VEG SPRING ROLL 1 KG', 1, '', '', 81, 20, 67, '', NULL, 280.0000, 16, 280.1200, 'Exclusive', 35.66, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 470.0000, 0),
(1169, 2, 1169, 'IT021169', 'SHAHI PURI', 1, '', '', 81, 20, 69, '', NULL, 85.0000, NULL, 85.0000, 'Exclusive', 29.41, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1170, 2, 1170, 'IT021170', 'SHAN ACHAR GUSHT', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1171, 2, 1171, 'IT021171', 'SHAN ACHAR GUSHT MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1172, 2, 1172, 'IT021172', 'SHAN BIRYANI MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1173, 2, 1173, 'IT021173', 'SHAN BIRYANI MASALA 60 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1174, 2, 1174, 'IT021174', 'SHAN BOMBAY BIRYANI', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1175, 2, 1175, 'IT021175', 'SHAN BOMBAY BIRYANI 60 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1176, 2, 1176, 'IT021176', 'SHAN BUTTER CHICKEN MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1177, 2, 1177, 'IT021177', 'SHAN BUTTER CHICKEN MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1178, 2, 1178, 'IT021178', 'SHAN CHAAT MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1179, 2, 1179, 'IT021179', 'SHAN CHICKEN MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1180, 2, 1180, 'IT021180', 'SHAN CHICKEN MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1181, 2, 1181, 'IT021181', 'SHAN CHICKEN TIKKA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1182, 2, 1182, 'IT021182', 'SHAN CHICKEN TIKKA MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1183, 2, 1183, 'IT021183', 'SHAN FRIED FISH MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1184, 2, 1184, 'IT021184', 'SHAN HALEEM MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1185, 2, 1185, 'IT021185', 'SHAN KARAHI', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1186, 2, 1186, 'IT021186', 'SHAN KORMA MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1187, 2, 1187, 'IT021187', 'SHAN MALAI CHICKEN BIRYANI MASALA 60 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1188, 2, 1188, 'IT021188', 'SHAN MALAY CHICKEN BIRYANI MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1189, 2, 1189, 'IT021189', 'SHAN MEAT MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1190, 2, 1190, 'IT021190', 'SHAN MEAT MASALA 100 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1191, 2, 1191, 'IT021191', 'SHAN NIHARI MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1192, 2, 1192, 'IT021192', 'SHAN NIHARI MASALA 60 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1193, 2, 1193, 'IT021193', 'SHAN PAYA MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(1194, 2, 1194, 'IT021194', 'SHAN PILAU BIRYANI', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1195, 2, 1195, 'IT021195', 'SHAN PILAU BIRYANI MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1196, 2, 1196, 'IT021196', 'SHAN SEEKH KEBAB', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1197, 2, 1197, 'IT021197', 'SHAN SEEKH KEBAB MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1198, 2, 1198, 'IT021198', 'SHAN SINDHI BIRYANI MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1199, 2, 1199, 'IT021199', 'SHAN SINDHI BIRYANI MASALA 60 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1200, 2, 1200, 'IT021200', 'SHAN TANDOORI MASALA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1201, 2, 1201, 'IT021201', 'SHAN TANDOORI MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 76.1900, 18, 76.2400, 'Exclusive', 31.16, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1202, 2, 1202, 'IT021202', 'SHAN TIKKA', 3, '', '9109100', 81, 20, 57, '', NULL, 74.2900, 18, 74.3400, 'Exclusive', 34.52, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1203, 2, 1203, 'IT021203', 'SHAN TIKKA MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 64.7600, 18, 64.8100, 'Exclusive', 23.44, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 90.0000, 0),
(1204, 2, 1204, 'IT021204', 'SHAN ZAFRANI GARAM MASALA 50 GM', 3, '', '9109100', 81, 20, 57, '', NULL, 85.7100, 18, 85.7600, 'Exclusive', 22.43, 105.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 115.0000, 0),
(1205, 2, 1205, 'IT021205', 'SIL COIN PIZZA BASE', 3, '', '', 81, 20, 68, '', NULL, 31.0000, 18, 31.0500, 'Exclusive', 38.49, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1206, 2, 1206, 'IT021206', 'SIL COIN PIZZA BASE 150 GM', 3, '', '', 81, 20, 68, '', NULL, 28.8000, 18, 28.8500, 'Exclusive', 49.05, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1207, 2, 1207, 'IT021207', 'SIL FRENCH LOAF', 3, '', '', 81, 20, 68, '', NULL, 32.0000, NULL, 32.0000, 'Exclusive', 25.00, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 45.0000, 0),
(1208, 2, 1208, 'IT021208', 'SIL HERB PIZZA BASE', 3, '', '', 81, 20, 68, '', NULL, 24.0000, 18, 24.0500, 'Exclusive', 45.53, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1209, 2, 1209, 'IT021209', 'SIL KULCHA MASALA', 3, '', '', 81, 20, 68, '', NULL, 24.0000, NULL, 24.0000, 'Exclusive', 45.83, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1210, 2, 1210, 'IT021210', 'SIL LOAF HERB', 3, '', '', 81, 20, 68, '', NULL, 30.0000, NULL, 30.0000, 'Exclusive', 16.67, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1211, 2, 1211, 'IT021211', 'SIL LOAF HERB', 3, '', '', 81, 20, 68, '', NULL, 32.0000, NULL, 32.0000, 'Exclusive', 9.38, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1212, 2, 1212, 'IT021212', 'SIL LOAF-GARLIC 200 GM', 3, '', '19059090', 81, 20, 68, '', NULL, 32.5000, NULL, 32.5000, 'Exclusive', 38.46, 45.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 50.0000, 0),
(1213, 2, 1213, 'IT021213', 'SIL LONG ROLL HOTDOG BUN', 3, '', '', 81, 20, 68, '', NULL, 24.0000, NULL, 24.0000, 'Exclusive', 45.83, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1214, 2, 1214, 'IT021214', 'SIL MINI BURGER BUN', 3, '', '', 81, 20, 68, '', NULL, 24.0000, NULL, 24.0000, 'Exclusive', 45.83, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1215, 2, 1215, 'IT021215', 'SIL MINI PIZZA', 3, '', '', 81, 20, 68, '', NULL, 38.0000, NULL, 38.0000, 'Exclusive', 5.26, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 45.0000, 0),
(1216, 2, 1216, 'IT021216', 'SIL MULTI GRAIN LOAF', 3, '', '', 81, 20, 68, '', NULL, 32.0000, NULL, 32.0000, 'Exclusive', 25.00, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 45.0000, 0),
(1217, 2, 1217, 'IT021217', 'SIL PITA BREAD', 3, '', '', 81, 20, 68, '', NULL, 24.0000, NULL, 24.0000, 'Exclusive', 45.83, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1218, 2, 1218, 'IT021218', 'SIL PIZZA BASE', 3, '', '', 81, 20, 68, '', NULL, 23.0000, 18, 23.0500, 'Exclusive', 30.15, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 35.0000, 0),
(1219, 2, 1219, 'IT021219', 'SIL PIZZA BASE100 GM', 3, '', '', 81, 20, 68, '', NULL, 21.0000, 18, 21.0500, 'Exclusive', 42.52, 30.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 35.0000, 0),
(1220, 2, 1220, 'IT021220', 'SIL PIZZA-COIN PIZZA BASE 150 GM', 3, '', '19054000', 81, 20, 68, '', NULL, 31.2000, 18, 31.2500, 'Exclusive', 37.60, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1221, 2, 1221, 'IT021221', 'SIL PIZZA-PIZZA BASE 100 GM', 3, '', '19054000', 81, 20, 68, '', NULL, 23.0000, 18, 23.0500, 'Exclusive', 0.00, 23.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 23.0000, 0),
(1222, 2, 1222, 'IT021222', 'SIL PIZZA-WHOLE WHEAT PIZZA 100 GM', 3, '', '19054000', 81, 20, 68, '', NULL, 26.0000, 18, 26.0500, 'Exclusive', 34.36, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1223, 2, 1223, 'IT021223', 'SIL SLICE 7 GRAIN 400 GM', 3, '', '', 81, 20, 68, '', NULL, 39.0000, NULL, 39.0000, 'Exclusive', 53.85, 60.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 65.0000, 0),
(1224, 2, 1224, 'IT021224', 'SIL SLICE 7 GRAIN 400 GM', 3, '', '', 81, 20, 68, '', NULL, 39.0000, NULL, 39.0000, 'Exclusive', 53.85, 60.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 65.0000, 0),
(1225, 2, 1225, 'IT021225', 'SIL SLICE CLASSIC MILK BREAD 400 GM', 3, '', '', 81, 20, 68, '', NULL, 27.0000, NULL, 27.0000, 'Exclusive', 48.15, 40.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 45.0000, 0),
(1226, 2, 1226, 'IT021226', 'SIL SLICE WHOLE WHEAT BREAD 400 GM', 3, '', '', 81, 20, 68, '', NULL, 33.0000, NULL, 33.0000, 'Exclusive', 51.52, 50.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 55.0000, 0),
(1227, 2, 1227, 'IT021227', 'SIL SLICE-7 GRAIN 400 GM', 3, '', '19059090', 81, 20, 68, '', NULL, 42.0000, NULL, 42.0000, 'Exclusive', 0.00, 42.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 42.0000, 0),
(1228, 2, 1228, 'IT021228', 'SIL SLICE-CLASSIC MILK BREAD 400 GM', 3, '', '19059090', 81, 20, 68, '', NULL, 29.0000, NULL, 29.0000, 'Exclusive', 36.76, 39.6600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 44.6200, 0),
(1229, 2, 1229, 'IT021229', 'SIL SLICE-TRIANGLE BREAD 300 GM', 3, '', '19059090', 81, 20, 68, '', NULL, 31.2000, NULL, 31.2000, 'Exclusive', 37.82, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1230, 2, 1230, 'IT021230', 'SIL SLICE-WHOLE WHEAT BREAD 400 GM', 3, '', '19059090', 81, 20, 68, '', NULL, 36.0000, NULL, 36.0000, 'Exclusive', 39.86, 50.3500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 55.3900, 0),
(1231, 2, 1231, 'IT021231', 'SIL TRIANGLE BREAD', 3, '', '', 81, 20, 68, '', NULL, 26.0000, NULL, 26.0000, 'Exclusive', 65.38, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1232, 2, 1232, 'IT021232', 'SIL TRIANGLE BREAD 300 GM', 3, '', '', 81, 20, 68, '', NULL, 28.8000, NULL, 28.8000, 'Exclusive', 49.31, 43.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 48.0000, 0),
(1233, 2, 1233, 'IT021233', 'SIL WHOLE WHEAT PIZZA BASE 100 GM', 3, '', '', 81, 20, 68, '', NULL, 24.0000, 18, 24.0500, 'Exclusive', 45.53, 35.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 40.0000, 0),
(1234, 2, 1234, 'IT021234', 'SIMPLE CHICKEN MOMOS 25 PCS', 1, '', '', 81, 20, 78, '', NULL, 120.0000, NULL, 120.0000, 'Exclusive', 41.67, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1235, 2, 1235, 'IT021235', 'SIMPLE PANEER MOMOS', 1, '', '', 81, 20, 78, '', NULL, 133.0000, NULL, 133.0000, 'Exclusive', 42.86, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1236, 2, 1236, 'IT021236', 'SIMPLE VEG MOMOS', 1, '', '', 81, 20, 78, '', NULL, 95.0000, NULL, 95.0000, 'Exclusive', 57.89, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1237, 2, 1237, 'IT021237', 'SP MAIDA', 1, '', '', 81, 20, 69, '', NULL, 80.0000, NULL, 80.0000, 'Exclusive', 25.00, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1238, 2, 1238, 'IT021238', 'SP WHEAT', 1, '', '', 81, 20, 69, '', NULL, 85.0000, NULL, 85.0000, 'Exclusive', 0.00, 85.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 85.0000, 0),
(1239, 2, 1239, 'IT021239', 'SWZ MINI SAMOSA PATTI 250 GM', 5, '', '19012000', 81, 20, 70, '', NULL, 47.6200, 18, 47.6700, 'Exclusive', 15.38, 55.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 60.0000, 0),
(1240, 2, 1240, 'IT021240', 'SWZ SAMOSA PATTI 250 GM', 5, '', '19012000', 81, 20, 70, '', NULL, 47.6200, 18, 47.6700, 'Exclusive', 15.38, 55.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 60.0000, 0),
(1241, 2, 1241, 'IT021241', 'SWZ SAMOSA PATTI 250 GM', 5, '', '19019000', 81, 20, 70, '', NULL, 49.0500, 16, 49.1700, 'Exclusive', 11.86, 55.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 60.0000, 0),
(1242, 2, 1242, 'IT021242', 'SWZ SAMOSA PATTI 3*10', 5, '', '19012000', 81, 20, 70, '', NULL, 69.5300, 18, 69.5800, 'Exclusive', 29.35, 90.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1243, 2, 1243, 'IT021243', 'SWZ SAMOSA PATTI 500 GM', 5, '', '19012000', 81, 20, 70, '', NULL, 95.2400, 18, 95.2900, 'Exclusive', 10.19, 105.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(1244, 2, 1244, 'IT021244', 'SWZ SAMOSA PATTI 500 GM', 5, '', '19019000', 81, 20, 70, '', NULL, 96.8600, 18, 96.9100, 'Exclusive', 8.35, 105.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(1245, 2, 1245, 'IT021245', 'SWZ SPRING ROLL 6/6 275 GM', 5, '', '19012000', 81, 20, 70, '', NULL, 99.2000, 18, 99.2500, 'Exclusive', 10.83, 110.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 125.0000, 0),
(1246, 2, 1246, 'IT021246', 'SWZ SPRING ROLL 8/8 275 GM', 5, '', '19012000', 81, 20, 70, '', NULL, 95.2400, 16, 95.3600, 'Exclusive', 10.11, 105.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(1247, 2, 1247, 'IT021247', 'TF ROLL', 1, '', '20041000', 81, 20, 71, '', NULL, 398.5700, 16, 398.6900, 'Exclusive', 12.87, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(1248, 2, 1248, 'IT021248', 'TF VEG SAMOSA', 1, '', '20041000', 81, 20, 71, '', NULL, 398.5700, 16, 398.6900, 'Exclusive', 12.87, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(1249, 2, 1249, 'IT021249', 'TAUCIES CHICKEN SAMOSA 1 KG', 13, '', '16010000', 81, 20, 73, '', NULL, 283.0400, 16, 283.1600, 'Exclusive', 0.00, 283.0400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 283.0400, 0),
(1250, 2, 1250, 'IT021250', 'TAUCIES CHICKEN SPRING ROLL 1 KG', 13, '', '16010000', 81, 20, 73, '', NULL, 272.3200, 16, 272.4400, 'Exclusive', 46.82, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 480.0000, 0),
(1251, 2, 1251, 'IT021251', 'TB BATATA VADA SHOTS 1.23 KG(52 PCS)', 1, '', '20041000', 81, 20, 72, '', NULL, 156.0000, 16, 156.1200, 'Exclusive', 60.13, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1252, 2, 1252, 'IT021252', 'TB BOMBAY ALOO VADA 1.23 KG', 1, '', '21069090', 81, 20, 72, '', NULL, 161.1300, 16, 161.2500, 'Exclusive', 55.04, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1253, 2, 1253, 'IT021253', 'TB CHEESE CHILLI BURST', 1, '', '20049000', 81, 20, 72, '', NULL, 292.0000, 16, 292.1200, 'Exclusive', 43.78, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1254, 2, 1254, 'IT021254', 'TB CHEESE CHILLY PATTY 1.08 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 289.4400, 16, 289.5600, 'Exclusive', 45.05, 420.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1255, 2, 1255, 'IT021255', 'TB CHEESE CORN POPS 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 200.0000, 16, 200.1200, 'Exclusive', 59.90, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(1256, 2, 1256, 'IT021256', 'TB CHILLI GARLIC POTATO SHOTS 1 KG(95 PCS)', 1, '', '20049000', 81, 20, 72, '', NULL, 148.0000, 16, 148.1200, 'Exclusive', 68.78, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1257, 2, 1257, 'IT021257', 'TB CRISPY ONION RING 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 188.0000, 16, 188.1200, 'Exclusive', 70.10, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(1258, 2, 1258, 'IT021258', 'TB CRUNCHY FUSION PATTY 1.050 KG', 1, '', '21069099', 81, 20, 72, '', NULL, 140.7000, 17, 140.8800, 'Exclusive', 148.44, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 450.0000, 0),
(1259, 2, 1259, 'IT021259', 'TB HARA BHARA KEBAB 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 182.0000, 16, 182.1200, 'Exclusive', 75.71, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 335.0000, 0),
(1260, 2, 1260, 'IT021260', 'TB NEW SEASONED MOZARELLA STICK 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 335.0000, 16, 335.1200, 'Exclusive', 46.22, 490.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 600.0000, 0),
(1261, 2, 1261, 'IT021261', 'TB PANEER DOUBLE DECKER ITALIAN PATTY 0.9 KG(10 PCS)', 1, '', '21069099', 81, 20, 72, '', NULL, 368.1000, 17, 368.2800, 'Exclusive', 43.91, 530.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 650.0000, 0),
(1262, 2, 1262, 'IT021262', 'TB PREMIUM VEGGIE PATTY 0.960 GM', 1, '', '20049000', 81, 20, 72, '', NULL, 127.6800, 16, 127.8000, 'Exclusive', 95.62, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 270.0000, 0),
(1263, 2, 1263, 'IT021263', 'TB SPICY FALAFEL SHOTS 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 161.0000, 16, 161.1200, 'Exclusive', 24.13, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.0000, 0),
(1264, 2, 1264, 'IT021264', 'TB SPICY PANEER PATTY 1.02KG(12 PCS)', 1, '', '21069099', 81, 20, 72, '', NULL, 353.9400, 17, 354.1200, 'Exclusive', 0.00, 353.9400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 353.9400, 0),
(1265, 2, 1265, 'IT021265', 'TB TASTY BURGER PATTY', 1, '', '20049000', 81, 20, 72, '', NULL, 180.0000, 16, 180.1200, 'Exclusive', 38.80, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(1266, 2, 1266, 'IT021266', 'TB TASTY BURGER PATTY 1.440 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 180.0000, 16, 180.1200, 'Exclusive', 38.80, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(1267, 2, 1267, 'IT021267', 'TB TASTY VEG FINGERS 1 KG', 1, '', '20049000', 81, 20, 72, '', NULL, 153.0000, 16, 153.1200, 'Exclusive', 56.74, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1268, 2, 1268, 'IT021268', 'TF ROLL 1 KG', 1, '', '20041000', 81, 20, 71, '', NULL, 397.2400, 16, 397.3600, 'Exclusive', 13.25, 450.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(1269, 2, 1269, 'IT021269', 'TF VEG SAMOSA 1 KG', 1, '', '20041000', 81, 20, 71, '', NULL, 397.2400, 16, 397.3600, 'Exclusive', 20.80, 480.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(1270, 2, 1270, 'IT021270', 'TIN ADANA SEEKH KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 0.00, 267.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 267.8600, 0),
(1271, 2, 1271, 'IT021271', 'TIN CHICKEN AMERICAN BURGER', 13, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 34.33, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 585.0000, 0),
(1272, 2, 1272, 'IT021272', 'TIN CHICKEN CHEESE &amp; ONION SAUSAGE', 13, '', '16010000', 81, 20, 74, '', NULL, 241.0700, 16, 241.1900, 'Exclusive', 53.45, 370.1100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.1800, 0),
(1273, 2, 1273, 'IT021273', 'TIN CHICKEN CHEESE BALL', 13, '', '16010000', 81, 20, 74, '', NULL, 285.7100, 16, 285.8300, 'Exclusive', 0.00, 285.7100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 800.0000, 0),
(1274, 2, 1274, 'IT021274', 'TIN CHICKEN CHEESE SEEKH KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 303.5700, 16, 303.6900, 'Exclusive', 31.71, 400.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 750.0000, 0),
(1275, 2, 1275, 'IT021275', 'TIN CHICKEN CUTLET', 13, '', '16010000', 81, 20, 74, '', NULL, 285.7100, 16, 285.8300, 'Exclusive', 22.45, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1276, 2, 1276, 'IT021276', 'TIN CHICKEN FILLETS', 13, '', '16010000', 81, 20, 74, '', NULL, 294.6400, 16, 294.7600, 'Exclusive', 0.00, 294.6400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 294.6400, 0),
(1277, 2, 1277, 'IT021277', 'TIN CHICKEN ITALIAN SALAMI', 13, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1278, 2, 1278, 'IT021278', 'TIN CHICKEN KULFI KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 250.0000, 16, 250.1200, 'Exclusive', 51.93, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 630.0000, 0),
(1279, 2, 1279, 'IT021279', 'TIN CHICKEN NUGGETS', 13, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1280, 2, 1280, 'IT021280', 'TIN CHICKEN POCKET', 13, '', '16010000', 81, 20, 74, '', NULL, 294.6400, 16, 294.7600, 'Exclusive', 0.00, 294.6400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 294.6400, 0),
(1281, 2, 1281, 'IT021281', 'TIN CHICKEN POPCORN', 13, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1282, 2, 1282, 'IT021282', 'TIN CHICKEN SALAMI', 13, '', '16010000', 81, 20, 74, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 0.00, 232.1400, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 232.1400, 0),
(1283, 2, 1283, 'IT021283', 'TIN CHICKEN SAMOSA', 13, '', '16010000', 81, 20, 74, '', NULL, 285.7100, 16, 285.8300, 'Exclusive', 0.00, 285.7100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 285.7100, 0),
(1284, 2, 1284, 'IT021284', 'TIN CHICKEN SHAMI KABAB', 13, '', '16010000', 81, 20, 74, '', NULL, 285.7100, 16, 285.8300, 'Exclusive', 22.45, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1285, 2, 1285, 'IT021285', 'TIN CHICKEN SILICAN CHEESE KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 303.5700, 16, 303.6900, 'Exclusive', 0.00, 303.5700, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 303.5700, 0),
(1286, 2, 1286, 'IT021286', 'TIN CHICKEN SPICY SAUSAGES', 13, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 56.72, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1287, 2, 1287, 'IT021287', 'TIN CHICKEN SPICY SAUSAGES', 13, '', '16010000', 81, 20, 74, '', NULL, 232.1400, 16, 232.2600, 'Exclusive', 50.69, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1288, 2, 1288, 'IT021288', 'TIN CHICKEN SPICY SEEKH KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 0.00, 267.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 267.8600, 0),
(1289, 2, 1289, 'IT021289', 'TIN CHICKEN SPRING ROLL', 13, '', '16010000', 81, 20, 74, '', NULL, 285.7100, 16, 285.8300, 'Exclusive', 42.49, 407.2800, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 630.3000, 0),
(1290, 2, 1290, 'IT021290', 'TIN GARLIC NAAN', 1, '', '16010000', 81, 20, 74, '', NULL, 175.0000, NULL, 175.0000, 'Exclusive', 42.86, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1291, 2, 1291, 'IT021291', 'TIN HERBAL SEEKH KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 0.00, 267.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 267.8600, 0),
(1292, 2, 1292, 'IT021292', 'TIN KULFI KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 267.8600, 16, 267.9800, 'Exclusive', 0.00, 267.8600, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 267.8600, 0),
(1293, 2, 1293, 'IT021293', 'TIN MALABAR PARATHA', 1, '', '16010000', 81, 20, 74, '', NULL, 57.0000, NULL, 57.0000, 'Exclusive', 75.44, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(1294, 2, 1294, 'IT021294', 'TIN MALABAR PARATHA', 1, '', '16010000', 81, 20, 74, '', NULL, 59.0000, NULL, 59.0000, 'Exclusive', 69.49, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 120.0000, 0),
(1295, 2, 1295, 'IT021295', 'TIN MUTTON SEEKH KEBAB', 13, '', '16010000', 81, 20, 74, '', NULL, 531.2500, 16, 531.3700, 'Exclusive', 31.73, 700.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 900.0000, 0),
(1296, 2, 1296, 'IT021296', 'TIN PLAIN NAAN', 1, '', '', 81, 20, 74, '', NULL, 175.0000, NULL, 175.0000, 'Exclusive', 25.71, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 595.0000, 0),
(1297, 2, 1297, 'IT021297', 'TIN PLAIN SAUSAGES', 13, '', '16010000', 81, 20, 74, '', NULL, 205.3500, 16, 205.4700, 'Exclusive', 0.00, 205.3500, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 205.3500, 0),
(1298, 2, 1298, 'IT021298', 'TIN VEG SAMOSA', 1, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1299, 2, 1299, 'IT021299', 'TIN VEG SPRING ROLL', 1, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1300, 2, 1300, 'IT021300', 'TIN VEG SPRING ROLL', 1, '', '16010000', 81, 20, 74, '', NULL, 223.2100, 16, 223.3300, 'Exclusive', 0.00, 223.2100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 223.2100, 0),
(1301, 2, 1301, 'IT021301', 'FR TOMATO KETCHUP 850 GM SP', 3, '', '210320000', 81, 20, 86, '', NULL, 55.6600, 16, 55.7800, 'Exclusive', 43.42, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(1302, 2, 1302, 'IT021302', 'CR TOMATO KETCHUP 900 GM', 3, '', '21032000', 81, 20, 33, '', NULL, 49.1000, 16, 49.2200, 'Exclusive', 62.54, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1303, 2, 1303, 'IT021303', 'CR TOMATO KETCHUP SACHETS 8 GM', 3, '', '21032000', 81, 20, 33, '', NULL, 40.1700, 16, 40.2900, 'Exclusive', 98.56, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1304, 2, 1304, 'IT021304', 'CR TOMATO SACHETS 8 GM', 3, '', '21032000', 81, 20, 33, '', NULL, 0.5400, 16, 0.6600, 'Exclusive', 10506.06, 70.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(1305, 2, 1305, 'IT021305', 'FR TOMATO SAUCE 5 KG', 3, '', '21032000', 83, 20, 86, '', NULL, 190.9300, 16, 191.0500, 'Exclusive', 41.32, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1306, 2, 1306, 'IT021306', 'TSG ALOO PARATHA 1 KG', 1, '', '21069099', 81, 20, 75, '', NULL, 144.8400, 16, 144.9600, 'Exclusive', 72.46, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 299.0000, 0),
(1307, 2, 1307, 'IT021307', 'TSG VEG CHEESE JALAPENO 1 KG', 1, '', '21069099', 81, 20, 75, '', NULL, 216.9200, 16, 217.0400, 'Exclusive', 61.26, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 425.0000, 0),
(1308, 2, 1308, 'IT021308', 'TSG VEG PATTI SAMOSA MINI 1 KG', 1, '', '21069099', 81, 20, 75, '', NULL, 238.1900, 16, 238.3100, 'Exclusive', 59.46, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 425.0000, 0),
(1309, 2, 1309, 'IT021309', 'TSG VEG SPRING ROLL 1 KG', 1, '', '21069099', 81, 20, 75, '', NULL, 252.5100, 16, 252.6300, 'Exclusive', 50.42, 380.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 425.0000, 0),
(1310, 2, 1310, 'IT021310', 'VBA BBQ SAUCE 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 142.1700, 16, 142.2900, 'Exclusive', 47.59, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1311, 2, 1311, 'IT021311', 'VBA CHEESE &amp; JALAPENO DIP', 3, '', '21039030', 81, 20, 76, '', NULL, 150.4900, 16, 150.6100, 'Exclusive', 46.07, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1312, 2, 1312, 'IT021312', 'VBA CHEESE &amp; JALAPENO DIP 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 146.3700, 16, 146.4900, 'Exclusive', 50.18, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1313, 2, 1313, 'IT021313', 'VBA CHEESY SPREAD &amp; DIP 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 216.1600, 16, 216.2800, 'Exclusive', 24.84, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(1314, 2, 1314, 'IT021314', 'VBA CHEESY SPREAD &amp;DIP  1KG', 3, '', '21039030', 81, 20, 76, '', NULL, 216.6600, 16, 216.7800, 'Exclusive', 24.55, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(1315, 2, 1315, 'IT021315', 'VBA CHIPOTLE STYLE DRESSING 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 189.9400, 16, 190.0600, 'Exclusive', 31.54, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1316, 2, 1316, 'IT021316', 'VBA GARLIC CHILLI SPREAD 1 KG', 3, '', '21039020', 81, 20, 76, '', NULL, 140.0800, 16, 140.2000, 'Exclusive', 64.05, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1317, 2, 1317, 'IT021317', 'VBA GARLIC MAYO', 3, '', '21039030', 81, 20, 76, '', NULL, 161.7800, 16, 161.9000, 'Exclusive', 48.24, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(1318, 2, 1318, 'IT021318', 'VBA GARLIC MAYO CHEF CHOICE', 3, '', '21039030', 81, 20, 76, '', NULL, 123.3000, 16, 123.4200, 'Exclusive', 94.46, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(1319, 2, 1319, 'IT021319', 'VBA GARLIC MAYO CHEF CHOICE', 3, '', '21039030', 81, 20, 76, '', NULL, 156.6400, 16, 156.7600, 'Exclusive', 53.10, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(1320, 2, 1320, 'IT021320', 'VBA HARSIHA DRESSING', 3, '', '21039040', 81, 20, 76, '', NULL, 206.7200, 16, 206.8400, 'Exclusive', 30.54, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(1321, 2, 1321, 'IT021321', 'VBA HONEY MUSTARD 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 185.7300, 16, 185.8500, 'Exclusive', 34.52, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1322, 2, 1322, 'IT021322', 'VBA MAKHNI GRAVY 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 183.6400, 16, 183.7600, 'Exclusive', 36.05, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1323, 2, 1323, 'IT021323', 'VBA MAYONNAISE PROFESSION 1KG', 3, '', '21039030', 81, 20, 76, '', NULL, 101.7800, 16, 101.9000, 'Exclusive', 37.39, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(1324, 2, 1324, 'IT021324', 'VBA PASTA PIZZA SAUCE 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 158.7100, 16, 158.8300, 'Exclusive', 32.22, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1325, 2, 1325, 'IT021325', 'VBA PERI PERI MAYONNAISE 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 193.0700, 16, 193.1900, 'Exclusive', 29.41, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1326, 2, 1326, 'IT021326', 'VBA PIZZA TOPPING 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 147.9600, 16, 148.0800, 'Exclusive', 48.57, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(1327, 2, 1327, 'IT021327', 'VBA SWEET CHILLI SAUCE 1 KG', 3, '', '21039020', 81, 20, 76, '', NULL, 132.1700, 16, 132.2900, 'Exclusive', 43.62, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(1328, 2, 1328, 'IT021328', 'VBA TANDOORI MAYO 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 194.1200, 16, 194.2400, 'Exclusive', 28.71, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1329, 2, 1329, 'IT021329', 'VBA THOUSAND ISLAND DRESSING 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 163.1700, 16, 163.2900, 'Exclusive', 34.73, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1330, 2, 1330, 'IT021330', 'VBA WHITE CHEESE DRESSING 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 161.0700, 16, 161.1900, 'Exclusive', 36.48, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1331, 2, 1331, 'IT021331', 'VEEBA BBQ SAUCE 1 KG', 3, '', '21039090', 81, 20, 76, '', NULL, 144.9300, 16, 145.0500, 'Exclusive', 44.78, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1332, 2, 1332, 'IT021332', 'VEEBA CHEESE &amp; JALAPENO DIP 1 KG', 3, '', '21039090', 81, 20, 76, '', NULL, 149.2100, 16, 149.3300, 'Exclusive', 47.32, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1333, 2, 1333, 'IT021333', 'VEEBA CHEESY SPREAD AND DIP 1 KG', 3, '', '21039090', 81, 20, 76, '', NULL, 220.3600, 16, 220.4800, 'Exclusive', 22.46, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(1334, 2, 1334, 'IT021334', 'VEEBA CHIPOTLE STYLE DRESSING 1 KG', 3, '', '21039090', 81, 20, 76, '', NULL, 193.6300, 16, 193.7500, 'Exclusive', 29.03, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1335, 2, 1335, 'IT021335', 'VEEBA GARLIC CHILLI SPREAD 1 KG', 3, '', '21039020', 81, 20, 76, '', NULL, 142.8000, 16, 142.9200, 'Exclusive', 60.93, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1336, 2, 1336, 'IT021336', 'VEEBA GARLIC MAYO CHEF CHOICE 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 159.6800, 16, 159.8000, 'Exclusive', 50.19, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(1337, 2, 1337, 'IT021337', 'VEEBA HARISHA DRESSING', 3, '', '21039030', 81, 20, 76, '', NULL, 210.7300, 16, 210.8500, 'Exclusive', 28.05, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 330.0000, 0),
(1338, 2, 1338, 'IT021338', 'VEEBA MAKHNI GRAVY', 3, '', '21039030', 81, 20, 76, '', NULL, 187.2000, 16, 187.3200, 'Exclusive', 33.46, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1339, 2, 1339, 'IT021339', 'VEEBA MAYONNAISE PROFESSION 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 103.7600, 16, 103.8800, 'Exclusive', 34.77, 140.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 160.0000, 0),
(1340, 2, 1340, 'IT021340', 'VEEBA PASTA PIZZA SAUCE 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 161.7900, 16, 161.9100, 'Exclusive', 29.70, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1341, 2, 1341, 'IT021341', 'VEEBA PERI PERI MAYONNAISE 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 196.8100, 16, 196.9300, 'Exclusive', 26.95, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1342, 2, 1342, 'IT021342', 'VEEBA PIZZA TOPPING 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 150.8400, 16, 150.9600, 'Exclusive', 39.11, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(1343, 2, 1343, 'IT021343', 'VEEBA TANDOORI MAYONNAISE 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 197.8900, 16, 198.0100, 'Exclusive', 26.26, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1344, 2, 1344, 'IT021344', 'VEEBA TASTY PIXEL MAYONNAISE 1 KG', 3, '', '21032000', 81, 20, 76, '', NULL, 62.5000, 16, 62.6200, 'Exclusive', 91.63, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1345, 2, 1345, 'IT021345', 'VEEBA TASTY PIXEL TOMATO SACHET 8 GM', 3, '', '21039030', 81, 20, 76, '', NULL, 0.4400, 16, 0.5600, 'Exclusive', 14185.71, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(1346, 2, 1346, 'IT021346', 'VEEBA TASTY PIXEL TOMATO SACHET 8 GM', 3, '', '21032000', 81, 20, 76, '', NULL, 0.5600, 16, 0.6800, 'Exclusive', 11664.71, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 100.0000, 0),
(1347, 2, 1347, 'IT021347', 'VEEBA THOUSAND ISLAND DRESSING 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 166.3300, 16, 166.4500, 'Exclusive', 32.17, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1348, 2, 1348, 'IT021348', 'VEEBA TOMATO KETCHUP 900 GM', 3, '', '', 81, 20, 76, '', NULL, 44.6000, 16, 44.7200, 'Exclusive', 78.89, 80.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 130.0000, 0),
(1349, 2, 1349, 'IT021349', 'VEEBA WHITE CHEESE DRESSING 1 KG', 3, '', '21039030', 81, 20, 76, '', NULL, 164.1900, 16, 164.3100, 'Exclusive', 33.89, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 260.0000, 0),
(1350, 2, 1350, 'IT021350', 'VEG CHEESE MOMOS', 1, '', '', 81, 20, 78, '', NULL, 145.0000, NULL, 145.0000, 'Exclusive', 31.03, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1351, 2, 1351, 'IT021351', 'VEG KURKURE MOMOS', 1, '', '', 81, 20, 78, '', NULL, 96.0000, NULL, 96.0000, 'Exclusive', 77.08, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1352, 2, 1352, 'IT021352', 'VEG POTATO SHOTS 420 G', 1, '', '20049000', 81, 20, 1, '', NULL, 100.4400, 16, 100.5600, 'Exclusive', 19.33, 120.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 135.0000, 0),
(1353, 2, 1353, 'IT021353', 'VEN BUTTER CHICKEN 250 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 132.6200, 16, 132.7400, 'Exclusive', 32.59, 176.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 195.0000, 0),
(1354, 2, 1354, 'IT021354', 'VEN BUTTER CHICKEN DHABA STYLE 250 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 149.6200, 16, 149.7400, 'Exclusive', 32.23, 198.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.0000, 0),
(1355, 2, 1355, 'IT021355', 'VEN CHICKEN ACHARI TIKKA 300 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 187.0200, 16, 187.1400, 'Exclusive', 32.52, 248.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1356, 2, 1356, 'IT021356', 'VEN CHICKEN AND CHEESE NUGGETS 500 G', 13, '', '16023200', 81, 20, 77, '', NULL, 241.4300, 16, 241.5500, 'Exclusive', 32.48, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 355.0000, 0),
(1357, 2, 1357, 'IT021357', 'VEN CHICKEN AND CHEESE NUGGETS 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 241.4300, 16, 241.5500, 'Exclusive', 32.48, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 355.0000, 0),
(1358, 2, 1358, 'IT021358', 'VEN CHICKEN BREAKFAST SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 180.2200, 16, 180.3400, 'Exclusive', 32.53, 239.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 265.0000, 0),
(1359, 2, 1359, 'IT021359', 'VEN CHICKEN BURGER PATTY 1.5 KG', 13, '', '16023200', 81, 20, 77, '', NULL, 475.0000, 16, 475.1200, 'Exclusive', 0.00, 437.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 486.0000, 0),
(1360, 2, 1360, 'IT021360', 'VEN CHICKEN BURGER PATTY 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 207.4300, 16, 207.5500, 'Exclusive', 32.50, 275.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 305.0000, 0),
(1361, 2, 1361, 'IT021361', 'VEN CHICKEN CHEESE AND ONION SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 258.4300, 16, 258.5500, 'Exclusive', 0.00, 252.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1362, 2, 1362, 'IT021362', 'VEN CHICKEN COCKTAIL SAUSAGES 500 G', 13, '', '16010000', 81, 20, 77, '', NULL, 261.8300, 16, 261.9500, 'Exclusive', 33.61, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 385.0000, 0),
(1363, 2, 1363, 'IT021363', 'VEN CHICKEN CUTLETS 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 227.8300, 16, 227.9500, 'Exclusive', 32.49, 302.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 335.0000, 0),
(1364, 2, 1364, 'IT021364', 'VEN CHICKEN FINGERS 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 227.8300, 16, 227.9500, 'Exclusive', 32.49, 302.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 335.0000, 0),
(1365, 2, 1365, 'IT021365', 'VEN CHICKEN FRANKS 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 255.0300, 16, 255.1500, 'Exclusive', 32.47, 338.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(1366, 2, 1366, 'IT021366', 'VEN CHICKEN HAM 200 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 122.4200, 16, 122.5400, 'Exclusive', 32.20, 162.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1367, 2, 1367, 'IT021367', 'VEN CHICKEN HARIYALI KABAB 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 255.0300, 16, 255.1500, 'Exclusive', 32.47, 338.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(1368, 2, 1368, 'IT021368', 'VEN CHICKEN HARIYALI TIKKA 300 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 190.4300, 16, 190.5500, 'Exclusive', 32.25, 252.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0100, 0),
(1369, 2, 1369, 'IT021369', 'VEN CHICKEN HOTDOG SAUSAGES 400 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 163.2200, 16, 163.3400, 'Exclusive', 32.24, 216.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 240.0000, 0),
(1370, 2, 1370, 'IT021370', 'VEN CHICKEN KHEEMA 250 G', 13, '', '16023200', 81, 20, 77, '', NULL, 136.0200, 16, 136.1400, 'Exclusive', 32.22, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1371, 2, 1371, 'IT021371', 'VEN CHICKEN MEAT BALLS 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 227.8300, 16, 227.9500, 'Exclusive', 31.61, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 335.0000, 0),
(1372, 2, 1372, 'IT021372', 'VEN CHICKEN NUGGET 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 234.6300, 16, 234.7500, 'Exclusive', 32.48, 311.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 345.0000, 0),
(1373, 2, 1373, 'IT021373', 'VEN CHICKEN NUGGETS 1.5 KG', 13, '', '16023200', 81, 20, 77, '', NULL, 495.0000, 16, 495.1200, 'Exclusive', 31.28, 650.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 700.0000, 0),
(1374, 2, 1374, 'IT021374', 'VEN CHICKEN NUGGETS 1.5 KG', 13, '', '16023200', 81, 20, 77, '', NULL, 495.0000, 16, 495.1200, 'Exclusive', 39.16, 689.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 765.0000, 0),
(1375, 2, 1375, 'IT021375', 'VEN CHICKEN PLAIN KHEEMA 250 GM', 13, '', '2071400', 81, 20, 77, '', NULL, 126.9500, 16, 127.0700, 'Exclusive', 25.91, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1376, 2, 1376, 'IT021376', 'VEN CHICKEN POPS 1.5 KG', 13, '', '16023200', 81, 20, 77, '', NULL, 495.0000, 16, 495.1200, 'Exclusive', 0.00, 459.0100, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 510.0000, 0),
(1377, 2, 1377, 'IT021377', 'VEN CHICKEN POPS 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 217.6300, 16, 217.7500, 'Exclusive', 32.26, 288.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1378, 2, 1378, 'IT021378', 'VEN CHICKEN SALAMI ROLL 250 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 112.2100, 16, 112.3300, 'Exclusive', 33.54, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1379, 2, 1379, 'IT021379', 'VEN CHICKEN SAMOSAS 200 G', 13, '', '16023200', 81, 20, 77, '', NULL, 122.4200, 16, 122.5400, 'Exclusive', 32.20, 162.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1380, 2, 1380, 'IT021380', 'VEN CHICKEN SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 255.0300, 16, 255.1500, 'Exclusive', 33.25, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 375.0000, 0),
(1381, 2, 1381, 'IT021381', 'VEN CHICKEN SEEKH KABAB 500 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 241.4300, 16, 241.5500, 'Exclusive', 32.48, 320.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 355.0000, 0),
(1382, 2, 1382, 'IT021382', 'VEN CHICKEN TANDOORI TIKKA 300 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 190.4300, 16, 190.5500, 'Exclusive', 32.25, 252.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 280.0000, 0),
(1383, 2, 1383, 'IT021383', 'VEN CHICKEN VALUE SAUSAGES 1.5 KG', 13, '', '16010000', 81, 20, 77, '', NULL, 390.0000, 16, 390.1200, 'Exclusive', 0.00, 365.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 406.0000, 0),
(1384, 2, 1384, 'IT021384', 'VEN CHICKEN VIENNA SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 234.6300, 16, 234.7500, 'Exclusive', 32.48, 311.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 345.0000, 0),
(1385, 2, 1385, 'IT021385', 'VEN COCKTAIL SAUSAGES 500 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 261.8300, 16, 261.9500, 'Exclusive', 32.47, 347.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 385.0000, 0),
(1386, 2, 1386, 'IT021386', 'VEN CRISPY CHICKEN BURGER PATTY 900 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 261.8300, 16, 261.9500, 'Exclusive', 32.47, 347.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 385.0000, 0),
(1387, 2, 1387, 'IT021387', 'VEN CRISPY CHICKEN TENDERS 10 PCS', 13, '', '16023200', 81, 20, 77, '', NULL, 268.6400, 16, 268.7600, 'Exclusive', 32.46, 356.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 395.0000, 0),
(1388, 2, 1388, 'IT021388', 'VEN GARLIC PEPPER GRILLED CHICKEN', 13, '', '16023200', 81, 20, 77, '', NULL, 374.0500, 16, 374.1700, 'Exclusive', 30.96, 490.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 550.0000, 0),
(1389, 2, 1389, 'IT021389', 'VEN MOM&#039;S CHICKEN BIRYANI 350 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 149.6200, 16, 149.7400, 'Exclusive', 32.23, 198.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 220.0000, 0),
(1390, 2, 1390, 'IT021390', 'VEN MUGHLAI CHICKEN BIRYANI 350 G', 13, '', '16023200', 81, 20, 77, '', NULL, 136.0200, 16, 136.1400, 'Exclusive', 32.22, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1391, 2, 1391, 'IT021391', 'VEN MURG MALAI TIKKA 300 GM', 13, '', '16023200', 81, 20, 77, '', NULL, 204.0300, 16, 204.1500, 'Exclusive', 32.26, 270.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1392, 2, 1392, 'IT021392', 'VEN MURG MASALA 200 G', 13, '', '16023200', 81, 20, 77, '', NULL, 112.2100, 16, 112.3300, 'Exclusive', 32.64, 149.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 165.0000, 0),
(1393, 2, 1393, 'IT021393', 'VEN SLICED MEXICAN CHICKEN SALAMI 200 GM', 13, '', '16010000', 81, 20, 77, '', NULL, 98.6100, 16, 98.7300, 'Exclusive', 32.69, 131.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 145.0000, 0),
(1394, 2, 1394, 'IT021394', 'VEN SPICY AND CRISPY CHICKEN WINGS 10 N', 13, '', '16023200', 81, 20, 77, '', NULL, 197.2300, 16, 197.3500, 'Exclusive', 32.25, 261.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 290.0000, 0),
(1395, 2, 1395, 'IT021395', 'VEN SPICY AND CRISPY CHICKEN WINGS 10 PCS', 13, '', '16023200', 81, 20, 77, '', NULL, 197.2300, 16, 197.3500, 'Exclusive', 31.75, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 290.0000, 0),
(1396, 2, 1396, 'IT021396', 'YUM CHEESE CORN NUGGET 400 GM', 1, '', '20049000', 81, 20, 6, '', NULL, 174.1100, 16, 174.2300, 'Exclusive', 26.27, 220.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1397, 2, 1397, 'IT021397', 'YUM CHEESE CORN NUGGET 400 GM', 1, '', '', 81, 20, 6, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 192207.69, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1398, 2, 1398, 'IT021398', 'YUM CHICKEN &amp; CHEESE NUGGET 325 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 191.5200, 16, 191.6400, 'Exclusive', 25.23, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1399, 2, 1399, 'IT021399', 'YUM CHICKEN AFGHANI SEEKH KEBAB 360 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 191.5200, 16, 191.6400, 'Exclusive', 25.23, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1400, 2, 1400, 'IT021400', 'YUM CHICKEN BREAKFAST SALAMI 250 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 132.3200, 16, 132.4400, 'Exclusive', 28.36, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(1401, 2, 1401, 'IT021401', 'YUM CHICKEN BURGER 500 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 222.8600, 16, 222.9800, 'Exclusive', 25.57, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 320.0000, 0),
(1402, 2, 1402, 'IT021402', 'YUM CHICKEN CHEESE &amp; ONION SAUSAGES 250 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 139.2900, 16, 139.4100, 'Exclusive', 25.53, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1403, 2, 1403, 'IT021403', 'YUM CHICKEN CHILLI SAUSAGES 250 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 132.3200, 16, 132.4400, 'Exclusive', 28.36, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(1404, 2, 1404, 'IT021404', 'YUM CHICKEN GARLIC FINGER 400 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 191.5200, 16, 191.6400, 'Exclusive', 25.23, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1405, 2, 1405, 'IT021405', 'YUM CHICKEN NUGGET 500 GM', 13, '', '1601000', 81, 20, 6, '', NULL, 243.7500, 16, 243.8700, 'Exclusive', 27.12, 310.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(1406, 2, 1406, 'IT021406', 'YUM CHICKEN NUGGET 750 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 341.2500, 16, 341.3700, 'Exclusive', 25.96, 430.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 490.0000, 0),
(1407, 2, 1407, 'IT021407', 'YUM CHICKEN PARTY PACK 600 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 278.5700, 16, 278.6900, 'Exclusive', 25.59, 350.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1408, 2, 1408, 'IT021408', 'YUM CHICKEN PARTY PACK 600 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 272976.92, 355.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 400.0000, 0),
(1409, 2, 1409, 'IT021409', 'YUM CHICKEN PEPPER SALAMI 250 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 132.3200, 16, 132.4400, 'Exclusive', 28.36, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(1410, 2, 1410, 'IT021410', 'YUM CHICKEN PEPPER SAUSAGES 250 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 132.3200, 16, 132.4400, 'Exclusive', 28.36, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0);
INSERT INTO `db_items` (`id`, `store_id`, `count_id`, `item_code`, `item_name`, `category_id`, `sku`, `hsn`, `unit_id`, `alert_qty`, `brand_id`, `lot_number`, `expire_date`, `price`, `tax_id`, `purchase_price`, `tax_type`, `profit_margin`, `sales_price`, `stock`, `item_image`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`, `discount_type`, `discount`, `service_bit`, `seller_points`, `custom_barcode`, `description`, `item_group`, `parent_id`, `variant_id`, `child_bit`, `mrp`, `piece_count`) VALUES
(1411, 2, 1411, 'IT021411', 'YUM CHICKEN POPCORN 400 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 200.6200, 16, 200.7400, 'Exclusive', 19.56, 240.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1412, 2, 1412, 'IT021412', 'YUM CHICKEN PUNJABI TIKKA 360 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 226.3400, 16, 226.4600, 'Exclusive', 25.85, 285.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 325.0000, 0),
(1413, 2, 1413, 'IT021413', 'YUM CRISPY TANDOORI PANEER NUGGET 300 GM', 1, '', '20049000', 81, 20, 6, '', NULL, 156.7000, 16, 156.8200, 'Exclusive', 27.53, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1414, 2, 1414, 'IT021414', 'YUM CRISPY TANDOORI PANEER NUGGET 300 GM', 1, '', '', 81, 20, 6, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 172976.92, 225.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 225.0000, 0),
(1415, 2, 1415, 'IT021415', 'YUM FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 6, '', NULL, 182.3700, 16, 182.4900, 'Exclusive', 36.99, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1416, 2, 1416, 'IT021416', 'YUM FRENCH FRIES 1 KG', 1, '', '20041000', 81, 20, 6, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 0.00, 0.1000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1417, 2, 1417, 'IT021417', 'YUM LUCKNOWI SEEKH KEBAB 400 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 219.3800, 16, 219.5000, 'Exclusive', 27.56, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 315.0000, 0),
(1418, 2, 1418, 'IT021418', 'YUM MILLET PATTY 370 GM', 1, '', '', 81, 20, 6, '', NULL, 125.3600, 16, 125.4800, 'Exclusive', 43.45, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1419, 2, 1419, 'IT021419', 'YUM MILLET PATTY 370 GM', 1, '', '', 81, 20, 6, '', NULL, 0.0100, 16, 0.1300, 'Exclusive', 138361.54, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1420, 2, 1420, 'IT021420', 'YUM MIXED VEGETABLE 500 GM', 1, '', '7109000', 81, 20, 6, '', NULL, 85.8000, NULL, 85.8000, 'Exclusive', 16.55, 100.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 110.0000, 0),
(1421, 2, 1421, 'IT021421', 'YUM NEW TANDOORI CHICKEN NUGGET 400 GM', 13, '', '16010000', 81, 20, 6, '', NULL, 201.9600, 16, 202.0800, 'Exclusive', 26.19, 255.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 290.0000, 0),
(1422, 2, 1422, 'IT021422', 'YUM PANEER POPS 360 GM', 1, '', '21069099', 81, 20, 6, '', NULL, 205.4500, 17, 205.6300, 'Exclusive', 26.44, 260.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 295.0000, 0),
(1423, 2, 1423, 'IT021423', 'YUM VEG MASALA NUGGET 400 GM', 1, '', '20049000', 81, 20, 6, '', NULL, 139.2900, 16, 139.4100, 'Exclusive', 25.53, 175.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1424, 2, 1424, 'IT021424', 'YUM VEG PARTY PACK 600 GM', 1, '', '20049000', 81, 20, 6, '', NULL, 240.2700, 16, 240.3900, 'Exclusive', 26.88, 305.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 345.0000, 0),
(1425, 2, 1425, 'IT021425', 'YUMWAY FRENCH FRIES 2.5 KG', 1, '', '', 81, 20, 87, '', NULL, 214.2900, 16, 214.4100, 'Exclusive', 0.00, 214.2900, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 214.2900, 0),
(1426, 2, 1426, 'IT021426', 'YUMWAY FRENCH FRIES 9 MM', 1, '', '20041000', 81, 20, 87, '', NULL, 245.0000, 16, 245.1200, 'Exclusive', 1.99, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1427, 2, 1427, 'IT021427', 'YUMWAY FRENCH FRIES 9 MM 2..5 KG', 1, '', '20041000', 81, 20, 87, '', NULL, 218.7500, 16, 218.8700, 'Exclusive', 14.22, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1428, 2, 1428, 'IT021428', 'YUMWAY FRENCH FRIES SAMPLE', 1, '', '20041000', 81, 20, 87, '', NULL, 0.0000, NULL, 0.0000, 'Exclusive', 0.00, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 500.0000, 0),
(1429, 2, 1429, 'IT021429', 'Z CHICKEN BAIDA ROTI 300 G', 13, '', '16010000', 81, 20, 30, '', NULL, 178.5800, 16, 178.7000, 'Exclusive', 28.71, 230.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 250.0000, 0),
(1430, 2, 1430, 'IT021430', 'Z CHICKEN BREAST BONELESS 450 G', 13, '', '2071300', 81, 20, 30, '', NULL, 220.0000, NULL, 220.0000, 'Exclusive', 13.64, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 275.0000, 0),
(1431, 2, 1431, 'IT021431', 'Z CHICKEN CHEESE N ONION SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 128.5800, 16, 128.7000, 'Exclusive', 28.21, 165.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 180.0000, 0),
(1432, 2, 1432, 'IT021432', 'Z CHICKEN COCKTAIL BARBEQUE SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1433, 2, 1433, 'IT021433', 'Z CHICKEN COCKTAIL PEPPER SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1434, 2, 1434, 'IT021434', 'Z CHICKEN DRUMSTICK W/O SKIN 500 G', 13, '', '7021300', 81, 20, 30, '', NULL, 212.0000, NULL, 212.0000, 'Exclusive', 17.92, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 265.0000, 0),
(1435, 2, 1435, 'IT021435', 'Z CHICKEN HALF PRE-CUT W/O SKIN 500 G', 13, '', '2071300', 81, 20, 30, '', NULL, 140.0000, NULL, 140.0000, 'Exclusive', 14.29, 160.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 175.0000, 0),
(1436, 2, 1436, 'IT021436', 'Z CHICKEN KHEEMA PARATHAS 300 G', 13, '', '16010000', 81, 20, 30, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 25.89, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1437, 2, 1437, 'IT021437', 'Z CHICKEN LAHORI TIKKA 250 G', 13, '', '16023900', 81, 20, 30, '', NULL, 107.1500, 16, 107.2700, 'Exclusive', 21.19, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1438, 2, 1438, 'IT021438', 'Z CHICKEN LAHORI TIKKA 500 G', 13, '', '160423900', 81, 20, 30, '', NULL, 214.3000, 16, 214.4200, 'Exclusive', 30.58, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1439, 2, 1439, 'IT021439', 'Z CHICKEN LOLLYPOPS 250 GM', 13, '', '16010000', 81, 20, 30, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 25.89, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1440, 2, 1440, 'IT021440', 'Z CHICKEN MALAI TIKKA 250 G', 13, '', '16023900', 81, 20, 30, '', NULL, 107.1500, 16, 107.2700, 'Exclusive', 21.19, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1441, 2, 1441, 'IT021441', 'Z CHICKEN MALAI TIKKA 500 G', 13, '', '16023900', 81, 20, 30, '', NULL, 214.3000, 16, 214.4200, 'Exclusive', 0.00, 214.3000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1442, 2, 1442, 'IT021442', 'Z CHICKEN MINCE 450 G', 13, '', '2071300', 81, 20, 30, '', NULL, 204.0000, NULL, 204.0000, 'Exclusive', 22.55, 250.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 255.0000, 0),
(1443, 2, 1443, 'IT021443', 'Z CHICKEN NUGGETS 250 GM', 13, '', '16010000', 81, 20, 30, '', NULL, 132.1500, 16, 132.2700, 'Exclusive', 28.52, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1444, 2, 1444, 'IT021444', 'Z CHICKEN PAHADI TIKKA 250 G', 13, '', '16023900', 81, 20, 30, '', NULL, 107.1500, 16, 107.2700, 'Exclusive', 21.19, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1445, 2, 1445, 'IT021445', 'Z CHICKEN PAHADI TIKKA 500 G', 13, '', '16023900', 81, 20, 30, '', NULL, 214.3000, 16, 214.4200, 'Exclusive', 30.58, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1446, 2, 1446, 'IT021446', 'Z CHICKEN RESHMI TIKKA 250 G', 13, '', '16023900', 81, 20, 30, '', NULL, 107.1500, 16, 107.2700, 'Exclusive', 21.19, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1447, 2, 1447, 'IT021447', 'Z CHICKEN RESHMI TIKKA 500 G', 13, '', '16023900', 81, 20, 30, '', NULL, 214.3000, 16, 214.4200, 'Exclusive', 30.58, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1448, 2, 1448, 'IT021448', 'Z CHICKEN SALAMI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1449, 2, 1449, 'IT021449', 'Z CHICKEN SAMOSA 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 25.89, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1450, 2, 1450, 'IT021450', 'Z CHICKEN SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 23.41, 150.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1451, 2, 1451, 'IT021451', 'Z CHICKEN SEEKH KEBAB 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 135.7200, 16, 135.8400, 'Exclusive', 25.15, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(1452, 2, 1452, 'IT021452', 'Z CHICKEN SHAMI KEBAB 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 132.1500, 16, 132.2700, 'Exclusive', 28.52, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 185.0000, 0),
(1453, 2, 1453, 'IT021453', 'Z CHICKEN SMOKED HAM 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 157.1500, 16, 157.2700, 'Exclusive', 27.17, 200.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 205.0000, 0),
(1454, 2, 1454, 'IT021454', 'Z CHICKEN SPICY SALAMI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 0.0000, 16, 0.1200, 'Exclusive', 129066.67, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 0.0000, 0),
(1455, 2, 1455, 'IT021455', 'Z CHICKEN SPICY SALAMI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1456, 2, 1456, 'IT021456', 'Z CHICKEN SPICY SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1457, 2, 1457, 'IT021457', 'Z CHICKEN TANDOORI TIKKA 250 G', 13, '', '16023900', 81, 20, 30, '', NULL, 107.1500, 16, 107.2700, 'Exclusive', 21.19, 130.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1458, 2, 1458, 'IT021458', 'Z CHICKEN TANDOORI TIKKA 250 GM', 13, '', '16023900', 81, 20, 30, '', NULL, 0.0000, 16, 0.1200, 'Exclusive', 112400.00, 135.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 150.0000, 0),
(1459, 2, 1459, 'IT021459', 'Z CHICKEN TANDOORI TIKKA 500 G', 13, '', '16023900', 81, 20, 30, '', NULL, 214.3000, 16, 214.4200, 'Exclusive', 30.58, 280.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 300.0000, 0),
(1460, 2, 1460, 'IT021460', 'Z CHICKEN WHOLE PRE-CUT W/O SKIN 900 G', 13, '', '2071300', 81, 20, 30, '', NULL, 236.0000, NULL, 236.0000, 'Exclusive', 27.12, 300.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 350.0000, 0),
(1461, 2, 1461, 'IT021461', 'Z CHICKEN COCKTAIL BARBEQUE SAUSAGES SAMPLE', 13, '', '16010000', 81, 20, 30, '', NULL, 0.0000, NULL, 0.0000, 'Exclusive', 0.00, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1462, 2, 1462, 'IT021462', 'Z CHICKEN FRANK FURTERS 500 G', 13, '', '16010000', 81, 20, 30, '', NULL, 257.1600, 16, 257.2800, 'Exclusive', 32.15, 340.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 360.0000, 0),
(1463, 2, 1463, 'IT021463', 'Z CHICKEN LOLLYPOPS 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 142.8600, 16, 142.9800, 'Exclusive', 25.89, 180.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 200.0000, 0),
(1464, 2, 1464, 'IT021464', 'Z CHICKEN N CHEESE JALAPENO SAUSAGES 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 150.0100, 16, 150.1300, 'Exclusive', 26.56, 190.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 210.0000, 0),
(1465, 2, 1465, 'IT021465', 'Z CHICKEN N CHEESE SPICY SALAMI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 121.4300, 16, 121.5500, 'Exclusive', 27.52, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1466, 2, 1466, 'IT021466', 'Z CHICKEN OLIVE SALAMI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 135.7200, 16, 135.8400, 'Exclusive', 25.15, 170.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 190.0000, 0),
(1467, 2, 1467, 'IT021467', 'Z CHICKEN PEPPERONI 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 164.2900, 16, 164.4100, 'Exclusive', 27.73, 210.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 230.0000, 0),
(1468, 2, 1468, 'IT021468', 'Z CHICKEN SAUSAGES 250 G SAMPLE', 13, '', '16010000', 81, 20, 30, '', NULL, 0.0000, NULL, 0.0000, 'Exclusive', 0.00, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0),
(1469, 2, 1469, 'IT021469', 'Z CHICKEN SPICY SALAMI SAMPLE 250 G', 13, '', '16010000', 81, 20, 30, '', NULL, 0.0000, NULL, 0.0000, 'Exclusive', 0.00, 155.0000, 0.00, NULL, '43.248.69.81', '43.248.69.81', '2025-05-06', '05:47:24 pm', 'Frozenwala', NULL, 1, '0', 0.00, 0, 0.00, '0', '0', 'Single', NULL, NULL, 0, 170.0000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_item_serials`
--

CREATE TABLE `db_item_serials` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `serial_no` varchar(155) NOT NULL,
  `added_date` date DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_languages`
--

CREATE TABLE `db_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_languages`
--

INSERT INTO `db_languages` (`id`, `language`, `status`) VALUES
(1, 'English', 1),
(2, 'Russian', 1),
(3, 'Spanish', 1),
(4, 'Arabic', 1),
(5, 'Bangla', 1),
(6, 'French', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_package`
--

CREATE TABLE `db_package` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `package_type` varchar(50) DEFAULT NULL,
  `package_code` varchar(20) DEFAULT NULL,
  `package_name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `monthly_price` double(20,2) DEFAULT NULL,
  `annual_price` double(20,2) DEFAULT NULL,
  `trial_days` int(11) DEFAULT NULL,
  `max_users` int(11) DEFAULT NULL,
  `max_items` int(11) DEFAULT NULL,
  `max_invoices` int(11) DEFAULT NULL,
  `max_warehouses` int(11) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(30) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `plan_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_paymenttypes`
--

CREATE TABLE `db_paymenttypes` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_paymenttypes`
--

INSERT INTO `db_paymenttypes` (`id`, `store_id`, `payment_type`, `status`) VALUES
(36, 2, 'CASH', 1),
(37, 2, 'CHEQUE', 1),
(38, 2, 'NEFT', 1),
(39, 2, 'ONLINE UPI', 1),
(40, 2, 'IMPS', 1),
(41, 2, 'RTGS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_paypal`
--

CREATE TABLE `db_paypal` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_paypal`
--

INSERT INTO `db_paypal` (`id`, `store_id`, `sandbox`, `email`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 1, '', '2021-02-22', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_paypalpaylog`
--

CREATE TABLE `db_paypalpaylog` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payer_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_permissions`
--

CREATE TABLE `db_permissions` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permissions` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_permissions`
--

INSERT INTO `db_permissions` (`id`, `store_id`, `role_id`, `permissions`) VALUES
(4414, 1, 17, 'items_add'),
(4415, 1, 17, 'items_edit'),
(4416, 1, 17, 'items_delete'),
(4417, 1, 17, 'items_view'),
(4418, 1, 17, 'import_items'),
(4419, 1, 17, 'brand_add'),
(4420, 1, 17, 'brand_edit'),
(4421, 1, 17, 'brand_delete'),
(4422, 1, 17, 'brand_view'),
(4423, 1, 17, 'customers_add'),
(4424, 1, 17, 'customers_edit'),
(4425, 1, 17, 'customers_delete'),
(4426, 1, 17, 'customers_view'),
(4427, 1, 17, 'sales_add'),
(4428, 1, 17, 'sales_edit'),
(4429, 1, 17, 'sales_delete'),
(4430, 1, 17, 'sales_view'),
(4431, 1, 17, 'sales_payment_view'),
(4432, 1, 17, 'sales_payment_add'),
(4433, 1, 17, 'sales_payment_delete'),
(4434, 1, 17, 'sales_report'),
(4435, 1, 17, 'sales_payments_report'),
(4436, 1, 17, 'items_category_add'),
(4437, 1, 17, 'items_category_edit'),
(4438, 1, 17, 'items_category_delete'),
(4439, 1, 17, 'items_category_view'),
(4440, 1, 17, 'print_labels'),
(4441, 1, 17, 'dashboard_view'),
(4442, 1, 17, 'dashboard_info_box_1'),
(4443, 1, 17, 'dashboard_info_box_2'),
(4444, 1, 17, 'dashboard_pur_sal_chart'),
(4445, 1, 17, 'dashboard_recent_items'),
(4446, 1, 17, 'dashboard_stock_alert'),
(4447, 1, 17, 'dashboard_trending_items_chart'),
(4448, 1, 17, 'sales_return_add'),
(4449, 1, 17, 'sales_return_edit'),
(4450, 1, 17, 'sales_return_delete'),
(4451, 1, 17, 'sales_return_view'),
(4452, 1, 17, 'sales_return_report'),
(4453, 1, 17, 'sales_return_payment_view'),
(4454, 1, 17, 'sales_return_payment_add'),
(4455, 1, 17, 'sales_return_payment_delete'),
(4456, 1, 17, 'payment_types_add'),
(4457, 1, 17, 'payment_types_edit'),
(4458, 1, 17, 'payment_types_delete'),
(4459, 1, 17, 'payment_types_view'),
(4460, 1, 17, 'import_customers'),
(4461, 1, 17, 'stock_transfer_add'),
(4462, 1, 17, 'stock_transfer_edit'),
(4463, 1, 17, 'stock_transfer_delete'),
(4464, 1, 17, 'stock_transfer_view'),
(4465, 1, 17, 'seller_points_report'),
(4466, 1, 17, 'services_add'),
(4467, 1, 17, 'services_edit'),
(4468, 1, 17, 'services_delete'),
(4469, 1, 17, 'services_view'),
(4470, 1, 17, 'import_services'),
(4471, 1, 17, 'stock_adjustment_add'),
(4472, 1, 17, 'stock_adjustment_edit'),
(4473, 1, 17, 'stock_adjustment_delete'),
(4474, 1, 17, 'stock_adjustment_view'),
(4475, 1, 17, 'variant_add'),
(4476, 1, 17, 'variant_edit'),
(4477, 1, 17, 'variant_delete'),
(4478, 1, 17, 'variant_view'),
(4479, 1, 17, 'accounts_add'),
(4480, 1, 17, 'accounts_edit'),
(4481, 1, 17, 'accounts_delete'),
(4482, 1, 17, 'accounts_view'),
(4483, 1, 17, 'money_transfer_add'),
(4484, 1, 17, 'money_transfer_edit'),
(4485, 1, 17, 'money_transfer_delete'),
(4486, 1, 17, 'money_transfer_view'),
(4487, 1, 17, 'money_deposit_add'),
(4488, 1, 17, 'money_deposit_edit'),
(4489, 1, 17, 'money_deposit_delete'),
(4490, 1, 17, 'money_deposit_view'),
(4491, 1, 17, 'sales_tax_report'),
(4492, 1, 18, 'tax_add'),
(4493, 1, 18, 'tax_edit'),
(4494, 1, 18, 'tax_delete'),
(4495, 1, 18, 'tax_view'),
(4496, 1, 18, 'units_add'),
(4497, 1, 18, 'units_edit'),
(4498, 1, 18, 'units_delete'),
(4499, 1, 18, 'units_view'),
(4500, 1, 18, 'items_add'),
(4501, 1, 18, 'items_edit'),
(4502, 1, 18, 'items_delete'),
(4503, 1, 18, 'items_view'),
(4504, 1, 18, 'import_items'),
(4505, 1, 18, 'brand_add'),
(4506, 1, 18, 'brand_edit'),
(4507, 1, 18, 'brand_delete'),
(4508, 1, 18, 'brand_view'),
(4509, 1, 18, 'suppliers_add'),
(4510, 1, 18, 'suppliers_edit'),
(4511, 1, 18, 'suppliers_delete'),
(4512, 1, 18, 'suppliers_view'),
(4513, 1, 18, 'purchase_add'),
(4514, 1, 18, 'purchase_edit'),
(4515, 1, 18, 'purchase_delete'),
(4516, 1, 18, 'purchase_view'),
(4517, 1, 18, 'purchase_report'),
(4518, 1, 18, 'purchase_payments_report'),
(4519, 1, 18, 'items_category_add'),
(4520, 1, 18, 'items_category_edit'),
(4521, 1, 18, 'items_category_delete'),
(4522, 1, 18, 'items_category_view'),
(4523, 1, 18, 'print_labels'),
(4524, 1, 18, 'dashboard_view'),
(4525, 1, 18, 'dashboard_info_box_1'),
(4526, 1, 18, 'dashboard_info_box_2'),
(4527, 1, 18, 'dashboard_pur_sal_chart'),
(4528, 1, 18, 'dashboard_recent_items'),
(4529, 1, 18, 'dashboard_stock_alert'),
(4530, 1, 18, 'dashboard_trending_items_chart'),
(4531, 1, 18, 'purchase_return_add'),
(4532, 1, 18, 'purchase_return_edit'),
(4533, 1, 18, 'purchase_return_delete'),
(4534, 1, 18, 'purchase_return_view'),
(4535, 1, 18, 'purchase_return_report'),
(4536, 1, 18, 'purchase_return_payment_view'),
(4537, 1, 18, 'purchase_return_payment_add'),
(4538, 1, 18, 'purchase_return_payment_delete'),
(4539, 1, 18, 'purchase_payment_view'),
(4540, 1, 18, 'purchase_payment_add'),
(4541, 1, 18, 'purchase_payment_delete'),
(4542, 1, 18, 'payment_types_add'),
(4543, 1, 18, 'payment_types_edit'),
(4544, 1, 18, 'payment_types_delete'),
(4545, 1, 18, 'payment_types_view'),
(4546, 1, 18, 'import_suppliers'),
(4547, 1, 18, 'stock_transfer_add'),
(4548, 1, 18, 'stock_transfer_edit'),
(4549, 1, 18, 'stock_transfer_delete'),
(4550, 1, 18, 'stock_transfer_view'),
(4551, 1, 18, 'warehouse_add'),
(4552, 1, 18, 'warehouse_edit'),
(4553, 1, 18, 'warehouse_delete'),
(4554, 1, 18, 'warehouse_view'),
(4555, 1, 18, 'services_add'),
(4556, 1, 18, 'services_edit'),
(4557, 1, 18, 'services_delete'),
(4558, 1, 18, 'services_view'),
(4559, 1, 18, 'import_services'),
(4560, 1, 18, 'stock_adjustment_add'),
(4561, 1, 18, 'stock_adjustment_edit'),
(4562, 1, 18, 'stock_adjustment_delete'),
(4563, 1, 18, 'stock_adjustment_view'),
(4564, 1, 18, 'variant_add'),
(4565, 1, 18, 'variant_edit'),
(4566, 1, 18, 'variant_delete'),
(4567, 1, 18, 'variant_view'),
(4568, 1, 18, 'accounts_add'),
(4569, 1, 18, 'accounts_edit'),
(4570, 1, 18, 'accounts_delete'),
(4571, 1, 18, 'accounts_view'),
(4572, 1, 18, 'money_transfer_add'),
(4573, 1, 18, 'money_transfer_edit'),
(4574, 1, 18, 'money_transfer_delete'),
(4575, 1, 18, 'money_transfer_view'),
(4576, 1, 18, 'money_deposit_add'),
(4577, 1, 18, 'money_deposit_edit'),
(4578, 1, 18, 'money_deposit_delete'),
(4579, 1, 18, 'money_deposit_view'),
(4580, 1, 18, 'purchase_tax_report'),
(5818, 1, 2, 'users_add'),
(5819, 1, 2, 'users_edit'),
(5820, 1, 2, 'users_delete'),
(5821, 1, 2, 'users_view'),
(5822, 1, 2, 'tax_add'),
(5823, 1, 2, 'tax_edit'),
(5824, 1, 2, 'tax_delete'),
(5825, 1, 2, 'tax_view'),
(5826, 1, 2, 'store_edit'),
(5827, 1, 2, 'units_add'),
(5828, 1, 2, 'units_edit'),
(5829, 1, 2, 'units_delete'),
(5830, 1, 2, 'units_view'),
(5831, 1, 2, 'roles_add'),
(5832, 1, 2, 'roles_edit'),
(5833, 1, 2, 'roles_delete'),
(5834, 1, 2, 'roles_view'),
(5835, 1, 2, 'expense_add'),
(5836, 1, 2, 'expense_edit'),
(5837, 1, 2, 'expense_delete'),
(5838, 1, 2, 'expense_view'),
(5839, 1, 2, 'items_add'),
(5840, 1, 2, 'items_edit'),
(5841, 1, 2, 'items_delete'),
(5842, 1, 2, 'items_view'),
(5843, 1, 2, 'import_items'),
(5844, 1, 2, 'brand_add'),
(5845, 1, 2, 'brand_edit'),
(5846, 1, 2, 'brand_delete'),
(5847, 1, 2, 'brand_view'),
(5848, 1, 2, 'suppliers_add'),
(5849, 1, 2, 'suppliers_edit'),
(5850, 1, 2, 'suppliers_delete'),
(5851, 1, 2, 'suppliers_view'),
(5852, 1, 2, 'customers_add'),
(5853, 1, 2, 'customers_edit'),
(5854, 1, 2, 'customers_delete'),
(5855, 1, 2, 'customers_view'),
(5856, 1, 2, 'purchase_add'),
(5857, 1, 2, 'purchase_edit'),
(5858, 1, 2, 'purchase_delete'),
(5859, 1, 2, 'purchase_view'),
(5860, 1, 2, 'sales_add'),
(5861, 1, 2, 'sales_edit'),
(5862, 1, 2, 'sales_delete'),
(5863, 1, 2, 'sales_view'),
(5864, 1, 2, 'sales_payment_view'),
(5865, 1, 2, 'sales_payment_add'),
(5866, 1, 2, 'sales_payment_delete'),
(5867, 1, 2, 'sales_report'),
(5868, 1, 2, 'purchase_report'),
(5869, 1, 2, 'expense_report'),
(5870, 1, 2, 'profit_report'),
(5871, 1, 2, 'stock_report'),
(5872, 1, 2, 'item_sales_report'),
(5873, 1, 2, 'purchase_payments_report'),
(5874, 1, 2, 'sales_payments_report'),
(5875, 1, 2, 'items_category_add'),
(5876, 1, 2, 'items_category_edit'),
(5877, 1, 2, 'items_category_delete'),
(5878, 1, 2, 'items_category_view'),
(5879, 1, 2, 'print_labels'),
(5880, 1, 2, 'expense_category_add'),
(5881, 1, 2, 'expense_category_edit'),
(5882, 1, 2, 'expense_category_delete'),
(5883, 1, 2, 'expense_category_view'),
(5884, 1, 2, 'dashboard_view'),
(5885, 1, 2, 'dashboard_info_box_1'),
(5886, 1, 2, 'dashboard_info_box_2'),
(5887, 1, 2, 'dashboard_pur_sal_chart'),
(5888, 1, 2, 'dashboard_recent_items'),
(5889, 1, 2, 'dashboard_stock_alert'),
(5890, 1, 2, 'dashboard_trending_items_chart'),
(5891, 1, 2, 'send_sms'),
(5892, 1, 2, 'sms_template_edit'),
(5893, 1, 2, 'sms_template_view'),
(5894, 1, 2, 'sms_api_view'),
(5895, 1, 2, 'sms_api_edit'),
(5896, 1, 2, 'purchase_return_add'),
(5897, 1, 2, 'purchase_return_edit'),
(5898, 1, 2, 'purchase_return_delete'),
(5899, 1, 2, 'purchase_return_view'),
(5900, 1, 2, 'purchase_return_report'),
(5901, 1, 2, 'sales_return_add'),
(5902, 1, 2, 'sales_return_edit'),
(5903, 1, 2, 'sales_return_delete'),
(5904, 1, 2, 'sales_return_view'),
(5905, 1, 2, 'sales_return_report'),
(5906, 1, 2, 'sales_return_payment_view'),
(5907, 1, 2, 'sales_return_payment_add'),
(5908, 1, 2, 'sales_return_payment_delete'),
(5909, 1, 2, 'purchase_return_payment_view'),
(5910, 1, 2, 'purchase_return_payment_add'),
(5911, 1, 2, 'purchase_return_payment_delete'),
(5912, 1, 2, 'purchase_payment_view'),
(5913, 1, 2, 'purchase_payment_add'),
(5914, 1, 2, 'purchase_payment_delete'),
(5915, 1, 2, 'payment_types_add'),
(5916, 1, 2, 'payment_types_edit'),
(5917, 1, 2, 'payment_types_delete'),
(5918, 1, 2, 'payment_types_view'),
(5919, 1, 2, 'import_customers'),
(5920, 1, 2, 'import_suppliers'),
(5921, 1, 2, 'stock_transfer_add'),
(5922, 1, 2, 'stock_transfer_edit'),
(5923, 1, 2, 'stock_transfer_delete'),
(5924, 1, 2, 'stock_transfer_view'),
(5925, 1, 2, 'warehouse_add'),
(5926, 1, 2, 'warehouse_edit'),
(5927, 1, 2, 'warehouse_delete'),
(5928, 1, 2, 'warehouse_view'),
(5929, 1, 2, 'supplier_items_report'),
(5930, 1, 2, 'seller_points_report'),
(5931, 1, 2, 'services_add'),
(5932, 1, 2, 'services_edit'),
(5933, 1, 2, 'services_delete'),
(5934, 1, 2, 'services_view'),
(5935, 1, 2, 'quotation_add'),
(5936, 1, 2, 'quotation_edit'),
(5937, 1, 2, 'quotation_delete'),
(5938, 1, 2, 'quotation_view'),
(5939, 1, 2, 'import_services'),
(5940, 1, 2, 'stock_adjustment_add'),
(5941, 1, 2, 'stock_adjustment_edit'),
(5942, 1, 2, 'stock_adjustment_delete'),
(5943, 1, 2, 'stock_adjustment_view'),
(5944, 1, 2, 'variant_add'),
(5945, 1, 2, 'variant_edit'),
(5946, 1, 2, 'variant_delete'),
(5947, 1, 2, 'variant_view'),
(5948, 1, 2, 'accounts_add'),
(5949, 1, 2, 'accounts_edit'),
(5950, 1, 2, 'accounts_delete'),
(5951, 1, 2, 'accounts_view'),
(5952, 1, 2, 'money_transfer_add'),
(5953, 1, 2, 'money_transfer_edit'),
(5954, 1, 2, 'money_transfer_delete'),
(5955, 1, 2, 'money_transfer_view'),
(5956, 1, 2, 'money_deposit_add'),
(5957, 1, 2, 'money_deposit_edit'),
(5958, 1, 2, 'money_deposit_delete'),
(5959, 1, 2, 'money_deposit_view'),
(5960, 1, 2, 'sales_tax_report'),
(5961, 1, 2, 'purchase_tax_report'),
(5962, 1, 2, 'cash_transactions'),
(5963, 1, 2, 'show_all_users_sales_invoices'),
(5964, 1, 2, 'show_all_users_sales_return_invoices'),
(5965, 1, 2, 'show_all_users_purchase_invoices'),
(5966, 1, 2, 'show_all_users_purchase_return_invoices'),
(5967, 1, 2, 'show_all_users_expenses'),
(5968, 1, 2, 'show_all_users_quotations'),
(5969, 1, 2, 'subscription'),
(5970, 1, 2, 'smtp_settings'),
(5971, 1, 2, 'send_email'),
(5972, 1, 2, 'sms_settings'),
(5973, 1, 2, 'email_template_edit'),
(5974, 1, 2, 'email_template_view'),
(5975, 1, 2, 'cust_adv_payments_add'),
(5976, 1, 2, 'cust_adv_payments_edit'),
(5977, 1, 2, 'cust_adv_payments_delete'),
(5978, 1, 2, 'cust_adv_payments_view'),
(5999, 2, 28, 'cust_adv_payments_add'),
(6000, 2, 28, 'cust_adv_payments_edit'),
(6001, 2, 28, 'cust_adv_payments_delete'),
(6002, 2, 28, 'cust_adv_payments_view'),
(6011, 2, 29, 'users_add'),
(6012, 2, 29, 'users_edit'),
(6013, 2, 29, 'users_delete'),
(6014, 2, 29, 'users_view'),
(6015, 2, 29, 'tax_add'),
(6016, 2, 29, 'tax_edit'),
(6017, 2, 29, 'tax_delete'),
(6018, 2, 29, 'tax_view'),
(6019, 2, 29, 'store_edit'),
(6020, 2, 29, 'units_add'),
(6021, 2, 29, 'units_edit'),
(6022, 2, 29, 'units_delete'),
(6023, 2, 29, 'units_view'),
(6024, 2, 29, 'roles_add'),
(6025, 2, 29, 'roles_edit'),
(6026, 2, 29, 'roles_delete'),
(6027, 2, 29, 'roles_view'),
(6028, 2, 29, 'expense_add'),
(6029, 2, 29, 'expense_edit'),
(6030, 2, 29, 'expense_delete'),
(6031, 2, 29, 'expense_view'),
(6032, 2, 29, 'items_add'),
(6033, 2, 29, 'items_edit'),
(6034, 2, 29, 'items_delete'),
(6035, 2, 29, 'items_view'),
(6036, 2, 29, 'import_items'),
(6037, 2, 29, 'brand_add'),
(6038, 2, 29, 'brand_edit'),
(6039, 2, 29, 'brand_delete'),
(6040, 2, 29, 'brand_view'),
(6041, 2, 29, 'suppliers_add'),
(6042, 2, 29, 'suppliers_edit'),
(6043, 2, 29, 'suppliers_delete'),
(6044, 2, 29, 'suppliers_view'),
(6045, 2, 29, 'customers_add'),
(6046, 2, 29, 'customers_edit'),
(6047, 2, 29, 'customers_delete'),
(6048, 2, 29, 'customers_view'),
(6049, 2, 29, 'purchase_add'),
(6050, 2, 29, 'purchase_edit'),
(6051, 2, 29, 'purchase_delete'),
(6052, 2, 29, 'purchase_view'),
(6053, 2, 29, 'sales_add'),
(6054, 2, 29, 'sales_edit'),
(6055, 2, 29, 'sales_delete'),
(6056, 2, 29, 'sales_view'),
(6057, 2, 29, 'sales_payment_view'),
(6058, 2, 29, 'sales_payment_add'),
(6059, 2, 29, 'sales_payment_delete'),
(6060, 2, 29, 'sales_report'),
(6061, 2, 29, 'purchase_report'),
(6062, 2, 29, 'expense_report'),
(6063, 2, 29, 'profit_report'),
(6064, 2, 29, 'stock_report'),
(6065, 2, 29, 'item_sales_report'),
(6066, 2, 29, 'purchase_payments_report'),
(6067, 2, 29, 'sales_payments_report'),
(6068, 2, 29, 'items_category_add'),
(6069, 2, 29, 'items_category_edit'),
(6070, 2, 29, 'items_category_delete'),
(6071, 2, 29, 'items_category_view'),
(6072, 2, 29, 'print_labels'),
(6073, 2, 29, 'expense_category_add'),
(6074, 2, 29, 'expense_category_edit'),
(6075, 2, 29, 'expense_category_delete'),
(6076, 2, 29, 'expense_category_view'),
(6077, 2, 29, 'dashboard_view'),
(6078, 2, 29, 'dashboard_info_box_1'),
(6079, 2, 29, 'dashboard_info_box_2'),
(6080, 2, 29, 'dashboard_pur_sal_chart'),
(6081, 2, 29, 'dashboard_recent_items'),
(6082, 2, 29, 'dashboard_stock_alert'),
(6083, 2, 29, 'dashboard_trending_items_chart'),
(6084, 2, 29, 'send_sms'),
(6085, 2, 29, 'sms_template_edit'),
(6086, 2, 29, 'sms_template_view'),
(6087, 2, 29, 'sms_api_view'),
(6088, 2, 29, 'sms_api_edit'),
(6089, 2, 29, 'purchase_return_add'),
(6090, 2, 29, 'purchase_return_edit'),
(6091, 2, 29, 'purchase_return_delete'),
(6092, 2, 29, 'purchase_return_view'),
(6093, 2, 29, 'purchase_return_report'),
(6094, 2, 29, 'sales_return_add'),
(6095, 2, 29, 'sales_return_edit'),
(6096, 2, 29, 'sales_return_delete'),
(6097, 2, 29, 'sales_return_view'),
(6098, 2, 29, 'sales_return_report'),
(6099, 2, 29, 'sales_return_payment_view'),
(6100, 2, 29, 'sales_return_payment_add'),
(6101, 2, 29, 'sales_return_payment_delete'),
(6102, 2, 29, 'purchase_return_payment_view'),
(6103, 2, 29, 'purchase_return_payment_add'),
(6104, 2, 29, 'purchase_return_payment_delete'),
(6105, 2, 29, 'purchase_payment_view'),
(6106, 2, 29, 'purchase_payment_add'),
(6107, 2, 29, 'purchase_payment_delete'),
(6108, 2, 29, 'payment_types_add'),
(6109, 2, 29, 'payment_types_edit'),
(6110, 2, 29, 'payment_types_delete'),
(6111, 2, 29, 'payment_types_view'),
(6112, 2, 29, 'import_customers'),
(6113, 2, 29, 'import_suppliers'),
(6114, 2, 29, 'stock_transfer_add'),
(6115, 2, 29, 'stock_transfer_edit'),
(6116, 2, 29, 'stock_transfer_delete'),
(6117, 2, 29, 'stock_transfer_view'),
(6118, 2, 29, 'warehouse_add'),
(6119, 2, 29, 'warehouse_edit'),
(6120, 2, 29, 'warehouse_delete'),
(6121, 2, 29, 'warehouse_view'),
(6122, 2, 29, 'supplier_items_report'),
(6123, 2, 29, 'seller_points_report'),
(6124, 2, 29, 'services_add'),
(6125, 2, 29, 'services_edit'),
(6126, 2, 29, 'services_delete'),
(6127, 2, 29, 'services_view'),
(6128, 2, 29, 'quotation_add'),
(6129, 2, 29, 'quotation_edit'),
(6130, 2, 29, 'quotation_delete'),
(6131, 2, 29, 'quotation_view'),
(6132, 2, 29, 'import_services'),
(6133, 2, 29, 'stock_adjustment_add'),
(6134, 2, 29, 'stock_adjustment_edit'),
(6135, 2, 29, 'stock_adjustment_delete'),
(6136, 2, 29, 'stock_adjustment_view'),
(6137, 2, 29, 'variant_add'),
(6138, 2, 29, 'variant_edit'),
(6139, 2, 29, 'variant_delete'),
(6140, 2, 29, 'variant_view'),
(6141, 2, 29, 'accounts_add'),
(6142, 2, 29, 'accounts_edit'),
(6143, 2, 29, 'accounts_delete'),
(6144, 2, 29, 'accounts_view'),
(6145, 2, 29, 'money_transfer_add'),
(6146, 2, 29, 'money_transfer_edit'),
(6147, 2, 29, 'money_transfer_delete'),
(6148, 2, 29, 'money_transfer_view'),
(6149, 2, 29, 'money_deposit_add'),
(6150, 2, 29, 'money_deposit_edit'),
(6151, 2, 29, 'money_deposit_delete'),
(6152, 2, 29, 'money_deposit_view'),
(6153, 2, 29, 'sales_tax_report'),
(6154, 2, 29, 'purchase_tax_report'),
(6155, 2, 29, 'cash_transactions'),
(6156, 2, 29, 'show_all_users_sales_invoices'),
(6157, 2, 29, 'show_all_users_sales_return_invoices'),
(6158, 2, 29, 'show_all_users_purchase_invoices'),
(6159, 2, 29, 'show_all_users_purchase_return_invoices'),
(6160, 2, 29, 'show_all_users_expenses'),
(6161, 2, 29, 'show_all_users_quotations'),
(6162, 2, 29, 'smtp_settings'),
(6163, 2, 29, 'send_email'),
(6164, 2, 29, 'sms_settings'),
(6165, 2, 29, 'email_template_edit'),
(6166, 2, 29, 'email_template_view'),
(6167, 2, 29, 'cust_adv_payments_add'),
(6168, 2, 29, 'cust_adv_payments_edit'),
(6169, 2, 29, 'cust_adv_payments_delete'),
(6170, 2, 29, 'cust_adv_payments_view'),
(6179, 1, 2, 'gstr_1_report'),
(6180, 1, 2, 'gstr_2_report'),
(6181, 1, 2, 'delivery_sheet_report'),
(6182, 1, 2, 'load_sheet_report'),
(6183, 1, 2, 'show_purchase_price'),
(6184, 1, 2, 'customer_orders_report'),
(6185, 1, 2, 'discountCouponAdd'),
(6186, 1, 2, 'discountCouponEdit'),
(6187, 1, 2, 'discountCouponDelete'),
(6188, 1, 2, 'discountCouponView'),
(6189, 2, 2, 'sales_gst_report'),
(6190, 2, 2, 'purchase_gst_report'),
(6191, 2, 2, 'subscription'),
(6192, 1, 2, 'customerCouponAdd'),
(6193, 1, 2, 'customerCouponEdit'),
(6194, 1, 2, 'customerCouponDelete'),
(6195, 1, 2, 'customerCouponView'),
(6196, 1, 2, 'return_items_report'),
(6197, 1, 2, 'help_link'),
(6215, 2, 2, 'recent_sales_invoice_list');

-- --------------------------------------------------------

--
-- Table structure for table `db_purchase`
--

CREATE TABLE `db_purchase` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Purchase Code',
  `purchase_code` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_status` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,4) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,4) DEFAULT NULL,
  `discount_to_all_input` double(20,4) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,4) DEFAULT NULL,
  `subtotal` double(20,4) DEFAULT NULL COMMENT 'Purchased qty',
  `round_off` double(20,4) DEFAULT NULL COMMENT 'Pending Qty',
  `grand_total` double(20,4) DEFAULT NULL,
  `purchase_note` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `paid_amount` double(20,4) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `return_bit` int(11) DEFAULT NULL COMMENT 'Purchase return raised'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_purchase`
--

INSERT INTO `db_purchase` (`id`, `store_id`, `warehouse_id`, `count_id`, `purchase_code`, `reference_no`, `purchase_date`, `purchase_status`, `supplier_id`, `other_charges_input`, `other_charges_tax_id`, `other_charges_amt`, `discount_to_all_input`, `discount_to_all_type`, `tot_discount_to_all_amt`, `subtotal`, `round_off`, `grand_total`, `purchase_note`, `payment_status`, `paid_amount`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `company_id`, `status`, `return_bit`) VALUES
(1, 2, 2, 1, 'PU0001', 'REF#1234', '2025-05-06', 'Received', 164, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 1271.1800, -0.1800, 1271.0000, '', 'Paid', 1271.0000, '2025-05-06', '12:38:03 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, 1, NULL),
(2, 2, 2, 2, 'PU0002', 'REF#1234', '2025-05-06', 'Received', 164, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 1271.1800, -0.1800, 1271.0000, '', 'Paid', 1271.0000, '2025-05-06', '12:39:47 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, 1, NULL),
(3, 2, 2, 3, 'PU0003', 'REF#1234', '2025-05-06', 'Received', 164, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 1271.1800, -0.1800, 1271.0000, '', 'Paid', 1271.0000, '2025-05-06', '12:40:10 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, 1, NULL),
(4, 2, 2, 4, 'PU0004', 'REF#1234', '2025-05-06', 'Received', 164, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 1271.1800, -0.1800, 1271.0000, '', 'Paid', 1271.0000, '2025-05-06', '12:40:37 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, 1, NULL),
(5, 2, 2, 5, 'PU0005', 'REF#1234', '2025-05-07', 'Received', 164, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 970.9300, 0.0700, 971.0000, 'test', 'Paid', 971.0000, '2025-05-07', '11:13:54 am', 'Frozenwala', '2405:201:8015:9c10:5535:9a29:1ded:5582', '2405:201:8015:9c10:5535:9a29:1ded:5582', NULL, 1, NULL),
(6, 2, 2, 6, 'PU0006', 'A/1385/25-26', '2025-05-02', 'Received', 164, 1301.7800, NULL, 1301.7800, NULL, 'in_percentage', NULL, 10848.1500, 0.0700, 12150.0000, '', 'Paid', 12150.0000, '2025-05-07', '01:35:17 pm', 'Frozenwala', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_purchaseitems`
--

CREATE TABLE `db_purchaseitems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `purchase_status` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `purchase_qty` double(20,2) DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL,
  `profit_margin_per` double(20,4) DEFAULT NULL,
  `unit_sales_price` double(20,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_purchaseitems`
--

INSERT INTO `db_purchaseitems` (`id`, `store_id`, `purchase_id`, `purchase_status`, `item_id`, `serial_no`, `purchase_qty`, `price_per_unit`, `tax_type`, `tax_id`, `tax_amt`, `discount_type`, `discount_input`, `discount_amt`, `unit_total_cost`, `total_cost`, `profit_margin_per`, `unit_sales_price`, `status`, `description`) VALUES
(3525, 2, 1, 'Received', 1, '', 4.00, 196.4300, 'Inclusive', 15, 149.8800, 'Percentage', 0.0000, 0.0000, 196.4300, 785.7200, NULL, NULL, 1, ''),
(3526, 2, 1, 'Received', 4, '', 2.00, 196.4300, 'INCLUSIVE', 15, 92.6000, 'Percentage', 0.0000, 0.0000, 242.7300, 485.4600, NULL, NULL, 1, ''),
(3527, 2, 2, 'Received', 1, NULL, 4.00, 196.4300, 'Inclusive', 15, 149.8800, 'Percentage', 0.0000, 0.0000, 196.4300, 785.7200, NULL, NULL, 1, ''),
(3528, 2, 2, 'Received', 4, NULL, 2.00, 196.4300, 'INCLUSIVE', 15, 92.6000, 'Percentage', 0.0000, 0.0000, 242.7300, 485.4600, NULL, NULL, 1, ''),
(3529, 2, 3, 'Received', 1, NULL, 4.00, 196.4300, 'Inclusive', 15, 149.8800, 'Percentage', 0.0000, 0.0000, 196.4300, 785.7200, NULL, NULL, 1, ''),
(3530, 2, 3, 'Received', 4, NULL, 2.00, 196.4300, 'INCLUSIVE', 15, 92.6000, 'Percentage', 0.0000, 0.0000, 242.7300, 485.4600, NULL, NULL, 1, ''),
(3531, 2, 4, 'Received', 1, NULL, 4.00, 196.4300, 'Inclusive', 15, 149.8800, 'Percentage', 0.0000, 0.0000, 196.4300, 785.7200, NULL, NULL, 1, ''),
(3532, 2, 4, 'Received', 4, NULL, 2.00, 196.4300, 'INCLUSIVE', 15, 92.6000, 'Percentage', 0.0000, 0.0000, 242.7300, 485.4600, NULL, NULL, 1, ''),
(3533, 2, 5, 'Received', 1, NULL, 4.00, 196.4300, 'INCLUSIVE', 15, 185.2100, 'Percentage', 0.0000, 0.0000, 242.7300, 970.9300, NULL, NULL, 1, ''),
(3534, 2, 6, 'Received', 67, NULL, 15.00, 223.2100, 'Inclusive', 19, 189.5200, 'Percentage', 0.0000, 0.0000, 223.2100, 3348.1500, NULL, NULL, 1, ''),
(3535, 2, 6, 'Received', 57, NULL, 30.00, 250.0000, 'Inclusive', 19, 424.5300, 'Percentage', 0.0000, 0.0000, 250.0000, 7500.0000, NULL, NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_purchaseitemsreturn`
--

CREATE TABLE `db_purchaseitemsreturn` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `return_status` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `return_qty` double(20,2) DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL,
  `profit_margin_per` double(20,4) DEFAULT NULL,
  `unit_sales_price` double(20,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_purchasepayments`
--

CREATE TABLE `db_purchasepayments` (
  `id` int(11) NOT NULL,
  `count_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(20,4) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `short_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_purchasepayments`
--

INSERT INTO `db_purchasepayments` (`id`, `count_id`, `payment_code`, `store_id`, `purchase_id`, `payment_date`, `payment_type`, `payment`, `payment_note`, `system_ip`, `system_name`, `created_time`, `created_date`, `created_by`, `status`, `account_id`, `supplier_id`, `short_code`) VALUES
(1101, 1, 'PP0001', 2, 1, '2025-05-06', 'CASH', 1271.0000, 'Tet', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '12:38:03', '2025-05-06', 'Frozenwala', 1, NULL, 164, NULL),
(1102, 2, 'PP0002', 2, 2, '2025-05-06', 'CASH', 1271.0000, 'Test', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '12:39:47', '2025-05-06', 'Frozenwala', 1, NULL, 164, NULL),
(1103, 3, 'PP0003', 2, 3, '2025-05-06', 'CASH', 1271.0000, 'Test', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '12:40:10', '2025-05-06', 'Frozenwala', 1, NULL, 164, NULL),
(1104, 4, 'PP0004', 2, 4, '2025-05-06', 'CASH', 1271.0000, 'Test', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '12:40:37', '2025-05-06', 'Frozenwala', 1, NULL, 164, NULL),
(1105, 5, 'PP0005', 2, 5, '2025-05-07', 'CASH', 971.0000, 'test', '2405:201:8015:9c10:5535:9a29:1ded:5582', '2405:201:8015:9c10:5535:9a29:1ded:5582', '11:13:54', '2025-05-07', 'Frozenwala', 1, NULL, 164, NULL),
(1106, 6, 'PP0006', 2, 6, '2025-05-02', 'CASH', 12150.0000, 'Paid', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', '2405:201:8015:9c10:2db2:59ac:5d92:b8a8', '01:35:17', '2025-05-07', 'Frozenwala', 1, NULL, 164, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_purchasepaymentsreturn`
--

CREATE TABLE `db_purchasepaymentsreturn` (
  `id` int(11) NOT NULL,
  `count_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(20,4) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `short_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_purchasereturn`
--

CREATE TABLE `db_purchasereturn` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Purchase Return Code',
  `warehouse_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_code` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_status` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,4) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,4) DEFAULT NULL,
  `discount_to_all_input` double(20,4) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,4) DEFAULT NULL,
  `subtotal` double(20,4) DEFAULT NULL COMMENT 'Purchased qty',
  `round_off` double(20,4) DEFAULT NULL COMMENT 'Pending Qty',
  `grand_total` double(20,4) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `paid_amount` double(20,4) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_quotation`
--

CREATE TABLE `db_quotation` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create quotation Code',
  `quotation_code` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `quotation_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `quotation_status` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,4) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,4) DEFAULT NULL,
  `discount_to_all_input` double(20,4) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,4) DEFAULT NULL,
  `subtotal` double(20,4) DEFAULT NULL,
  `round_off` double(20,4) DEFAULT NULL,
  `grand_total` double(20,4) DEFAULT NULL,
  `quotation_note` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `paid_amount` double(20,4) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL COMMENT '1=yes 0=no',
  `status` int(11) DEFAULT NULL,
  `return_bit` int(11) DEFAULT NULL COMMENT 'quotation return raised',
  `customer_previous_due` double(20,4) DEFAULT NULL,
  `customer_total_due` double(20,4) DEFAULT NULL,
  `sales_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_quotationitems`
--

CREATE TABLE `db_quotationitems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `quotation_status` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quotation_qty` double(20,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `seller_points` double(20,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_roles`
--

CREATE TABLE `db_roles` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_roles`
--

INSERT INTO `db_roles` (`id`, `store_id`, `role_name`, `description`, `status`) VALUES
(1, 1, 'Admin', 'All Rights Permitted.', 1),
(2, 1, 'Store Admin', 'Note: Apply this role for New Store Admin. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_sales`
--

CREATE TABLE `db_sales` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `init_code` varchar(100) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Sales Code',
  `sales_code` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `sales_status` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,2) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,2) DEFAULT NULL,
  `discount_to_all_input` double(20,2) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,2) DEFAULT NULL,
  `subtotal` double(20,2) DEFAULT NULL,
  `round_off` double(20,2) DEFAULT NULL,
  `grand_total` double(20,4) DEFAULT NULL,
  `sales_note` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `paid_amount` double(20,4) DEFAULT NULL,
  `add_interest` enum('YES','NO') DEFAULT 'NO',
  `interest_percent` double(4,2) DEFAULT 0.00,
  `interest_update` datetime DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL COMMENT '1=yes 0=no',
  `status` int(11) DEFAULT NULL,
  `return_bit` int(11) DEFAULT NULL COMMENT 'sales return raised',
  `customer_previous_due` double(20,2) DEFAULT NULL,
  `customer_total_due` double(20,2) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_amt` double(20,2) DEFAULT 0.00,
  `invoice_terms` text DEFAULT NULL,
  `finance_id` int(11) DEFAULT NULL,
  `finance_amount` double(11,2) DEFAULT NULL,
  `total_emi_month` int(11) DEFAULT NULL,
  `emi_per_month` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_sales`
--

INSERT INTO `db_sales` (`id`, `store_id`, `warehouse_id`, `init_code`, `count_id`, `sales_code`, `reference_no`, `sales_date`, `due_date`, `sales_status`, `customer_id`, `other_charges_input`, `other_charges_tax_id`, `other_charges_amt`, `discount_to_all_input`, `discount_to_all_type`, `tot_discount_to_all_amt`, `subtotal`, `round_off`, `grand_total`, `sales_note`, `payment_status`, `paid_amount`, `add_interest`, `interest_percent`, `interest_update`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `company_id`, `pos`, `status`, `return_bit`, `customer_previous_due`, `customer_total_due`, `quotation_id`, `coupon_id`, `coupon_amt`, `invoice_terms`, `finance_id`, `finance_amount`, `total_emi_month`, `emi_per_month`) VALUES
(1, 2, 2, 'JE', 1, 'JE1', '', '2025-05-06', NULL, 'Final', 1, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 2300.00, NULL, 2780.1000, '', 'Paid', 2780.1000, 'NO', 0.00, NULL, '2025-05-06', '01:03:16 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.00, '* Delivery received after full Satisfaction. Goods once sold cannot be taken back or exchanged.\r\n* For any type of complaint, please contact the manufacturer. * Dealer is not Iiable for any complaint after delivery. Warranty is given by manufacturer only.\r\n* Cheque return charge Rs.200/- besides legal liability. * All disputes subject to Kolkata Jurisdiction. No Tax Payable on Reverse Charge', NULL, NULL, NULL, NULL),
(2, 2, 2, 'JE', 1, 'JE1', '', '2025-05-06', NULL, 'Final', 1, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 2300.00, NULL, 2780.1000, '', 'Paid', 2780.1000, 'NO', 0.00, NULL, '2025-05-06', '01:04:14 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.00, '* Delivery received after full Satisfaction. Goods once sold cannot be taken back or exchanged.\r\n* For any type of complaint, please contact the manufacturer. * Dealer is not Iiable for any complaint after delivery. Warranty is given by manufacturer only.\r\n* Cheque return charge Rs.200/- besides legal liability. * All disputes subject to Kolkata Jurisdiction. No Tax Payable on Reverse Charge', NULL, NULL, NULL, NULL),
(3, 2, 2, 'JE', 1, 'JE1', '', '2025-05-06', NULL, 'Final', 1, NULL, NULL, NULL, NULL, 'in_percentage', NULL, 2300.00, NULL, 2780.1000, '', 'Paid', 2780.1000, 'NO', 0.00, NULL, '2025-05-06', '01:05:53 pm', 'Frozenwala', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.00, '* Delivery received after full Satisfaction. Goods once sold cannot be taken back or exchanged.\r\n* For any type of complaint, please contact the manufacturer. * Dealer is not Iiable for any complaint after delivery. Warranty is given by manufacturer only.\r\n* Cheque return charge Rs.200/- besides legal liability. * All disputes subject to Kolkata Jurisdiction. No Tax Payable on Reverse Charge', NULL, 0.00, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `db_salesitems`
--

CREATE TABLE `db_salesitems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `sales_status` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sales_qty` double(20,2) DEFAULT NULL,
  `serial_no` longtext DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `seller_points` double(20,2) DEFAULT 0.00,
  `purchase_price` double(20,3) DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_salesitems`
--

INSERT INTO `db_salesitems` (`id`, `store_id`, `sales_id`, `sales_status`, `item_id`, `description`, `sales_qty`, `serial_no`, `price_per_unit`, `tax_type`, `tax_id`, `tax_amt`, `discount_type`, `discount_input`, `discount_amt`, `unit_total_cost`, `total_cost`, `status`, `seller_points`, `purchase_price`) VALUES
(15697, 2, 1, 'Final', 1, '', 2.00, NULL, 460.0000, 'INCLUSIVE', 15, 216.8600, '0', NULL, 0.0000, 460.0000, 1136.8600, 1, 0.00, 220.000),
(15698, 2, 1, 'Final', 5, '', 3.00, NULL, 460.0000, 'Inclusive', 15, 263.2400, '', NULL, 0.0000, 460.0000, 1380.0000, 1, 0.00, 220.000),
(15699, 2, 2, 'Final', 1, '', 2.00, NULL, 460.0000, 'INCLUSIVE', 15, 216.8600, '0', NULL, 0.0000, 460.0000, 1136.8600, 1, 0.00, 220.000),
(15700, 2, 2, 'Final', 5, '', 3.00, NULL, 460.0000, 'Inclusive', 15, 263.2400, '', NULL, 0.0000, 460.0000, 1380.0000, 1, 0.00, 220.000),
(15701, 2, 3, 'Final', 1, '', 2.00, NULL, 460.0000, 'INCLUSIVE', 15, 216.8600, '0', NULL, 0.0000, 460.0000, 1136.8600, 1, 0.00, 220.000),
(15702, 2, 3, 'Final', 5, '', 3.00, NULL, 460.0000, 'Inclusive', 15, 263.2400, '', NULL, 0.0000, 460.0000, 1380.0000, 1, 0.00, 220.000);

-- --------------------------------------------------------

--
-- Table structure for table `db_salesitemsreturn`
--

CREATE TABLE `db_salesitemsreturn` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `return_status` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `return_qty` double(20,2) DEFAULT NULL,
  `price_per_unit` double(20,4) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_amt` double(20,4) DEFAULT NULL,
  `discount_input` double(20,4) DEFAULT NULL,
  `discount_amt` double(20,4) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `unit_total_cost` double(20,4) DEFAULT NULL,
  `total_cost` double(20,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `purchase_price` double(20,3) DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_salespayments`
--

CREATE TABLE `db_salespayments` (
  `id` int(11) NOT NULL,
  `count_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(20,4) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `change_return` double(20,4) DEFAULT NULL COMMENT 'Refunding the greater amount',
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `short_code` varchar(50) DEFAULT NULL,
  `advance_adjusted` double(20,4) DEFAULT NULL,
  `cheque_number` varchar(100) DEFAULT NULL,
  `cheque_period` int(11) DEFAULT NULL,
  `cheque_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_salespayments`
--

INSERT INTO `db_salespayments` (`id`, `count_id`, `payment_code`, `store_id`, `sales_id`, `payment_date`, `payment_type`, `payment`, `payment_note`, `change_return`, `system_ip`, `system_name`, `created_time`, `created_date`, `created_by`, `status`, `account_id`, `customer_id`, `short_code`, `advance_adjusted`, `cheque_number`, `cheque_period`, `cheque_status`) VALUES
(1044, 1, 'SP0001', 2, 1, '2025-05-06', 'CASH', 2780.1000, 'Test', NULL, '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '01:03:16 pm', '2025-05-06', 'Frozenwala', 1, NULL, 1, NULL, 0.0000, '', 0, 'Pending'),
(1045, 2, 'SP0002', 2, 2, '2025-05-06', 'CASH', 2780.1000, 'Test', NULL, '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '01:04:14 pm', '2025-05-06', 'Frozenwala', 1, NULL, 1, NULL, 0.0000, '', 0, 'Pending'),
(1046, 3, 'SP0003', 2, 3, '2025-05-06', 'CASH', 2780.1000, 'Test', NULL, '2405:201:8015:9c10:2555:3ada:aa5a:6604', '2405:201:8015:9c10:2555:3ada:aa5a:6604', '01:05:53 pm', '2025-05-06', 'Frozenwala', 1, NULL, 1, NULL, 0.0000, '', 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `db_salespaymentsreturn`
--

CREATE TABLE `db_salespaymentsreturn` (
  `id` int(11) NOT NULL,
  `count_id` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(20,4) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `change_return` double(20,4) DEFAULT NULL COMMENT 'Refunding the greater amount',
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `short_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_salesreturn`
--

CREATE TABLE `db_salesreturn` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create Sales Return Code',
  `sales_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `return_code` varchar(50) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_status` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `other_charges_input` double(20,4) DEFAULT NULL,
  `other_charges_tax_id` int(11) DEFAULT NULL,
  `other_charges_amt` double(20,4) DEFAULT NULL,
  `discount_to_all_input` double(20,4) DEFAULT NULL,
  `discount_to_all_type` varchar(50) DEFAULT NULL,
  `tot_discount_to_all_amt` double(20,4) DEFAULT NULL,
  `subtotal` double(20,4) DEFAULT NULL,
  `round_off` double(20,4) DEFAULT NULL,
  `grand_total` double(20,4) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `paid_amount` double(20,4) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL COMMENT '1=yes 0=no',
  `status` int(11) DEFAULT NULL,
  `return_bit` int(11) DEFAULT NULL COMMENT 'Return raised or not 1 or null',
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_amt` double(20,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_shippingaddress`
--

CREATE TABLE `db_shippingaddress` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `invoice_sales_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `postcode` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `location_link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_shippingaddress`
--

INSERT INTO `db_shippingaddress` (`id`, `store_id`, `country_id`, `invoice_sales_id`, `state_id`, `city`, `postcode`, `address`, `status`, `customer_id`, `location_link`) VALUES
(645, 2, 0, NULL, 0, '', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_sitesettings`
--

CREATE TABLE `db_sitesettings` (
  `id` int(11) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `logo` mediumtext DEFAULT NULL COMMENT 'path',
  `machine_id` text DEFAULT NULL,
  `domain` text DEFAULT NULL,
  `unique_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_sitesettings`
--

INSERT INTO `db_sitesettings` (`id`, `version`, `site_name`, `logo`, `machine_id`, `domain`, `unique_code`) VALUES
(1, '2.9', 'Frozenwala', '/uploads/site/bg.png', '1', 'pointofsale.ozonepos.com', '4kcd2s8v9axrpm6gy1foh7tlqij5nw');

-- --------------------------------------------------------

--
-- Table structure for table `db_smsapi`
--

CREATE TABLE `db_smsapi` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `info` varchar(150) DEFAULT NULL,
  `key` varchar(600) DEFAULT NULL,
  `key_value` varchar(600) DEFAULT NULL,
  `delete_bit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_smsapi`
--

INSERT INTO `db_smsapi` (`id`, `store_id`, `info`, `key`, `key_value`, `delete_bit`) VALUES
(26, 2, 'url', 'weblink', 'http://example.com/sendmessage', NULL),
(27, 2, 'mobile', 'mobiles', '', NULL),
(28, 2, 'message', 'message', '', NULL),
(29, 1, 'url', 'weblink', 'https://www.example.com/api/mt/SendSMS?', NULL),
(30, 1, 'mobile', 'mobiles', '', NULL),
(31, 1, 'message', 'message', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_smstemplates`
--

CREATE TABLE `db_smstemplates` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `template_name` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `variables` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `undelete_bit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_smstemplates`
--

INSERT INTO `db_smstemplates` (`id`, `store_id`, `template_name`, `content`, `variables`, `status`, `undelete_bit`) VALUES
(1, 1, 'GREETING TO CUSTOMER ON SALES', 'Hi {{customer_name}},\r\nYour sales Id is {{sales_id}},\r\nSales Date {{sales_date}},\r\nTotal amount  {{sales_amount}},\r\nYou have paid  {{paid_amt}},\r\nand due amount is  {{due_amt}}\r\nThank you Visit Again', '{{customer_name}}<br>                          \r\n{{sales_id}}<br>\r\n{{sales_date}}<br>\r\n{{sales_amount}}<br>\r\n{{paid_amt}}<br>\r\n{{due_amt}}<br>\r\n{{store_name}}<br>\r\n{{store_mobile}}<br>\r\n{{store_address}}<br>\r\n{{store_website}}<br>\r\n{{store_email}}<br>\r\n', 1, 1),
(2, 1, 'GREETING TO CUSTOMER ON SALES RETURN', 'Hi {{customer_name}},\r\nYour sales return Id is {{return_id}},\r\nReturn Date {{return_date}},\r\nTotal amount  {{return_amount}},\r\nWe paid  {{paid_amt}},\r\nand due amount is  {{due_amt}}\r\nThank you Visit Again', '{{customer_name}}<br>                          \r\n{{return_id}}<br>\r\n{{return_date}}<br>\r\n{{return_amount}}<br>\r\n{{paid_amt}}<br>\r\n{{due_amt}}<br>\r\n{{company_name}}<br>\r\n{{company_mobile}}<br>\r\n{{company_address}}<br>\r\n{{company_website}}<br>\r\n{{company_email}}<br>', 1, 1),
(12, 2, 'GREETING TO CUSTOMER ON SALES', 'Hi {{customer_name}},\r\nYour sales Id is {{sales_id}},\r\nSales Date {{sales_date}},\r\nTotal amount  {{sales_amount}},\r\nYou have paid  {{paid_amt}},\r\nand due amount is  {{due_amt}}\r\nThank you Visit Again', '{{customer_name}}                          \r\n{{sales_id}}\r\n{{sales_date}}\r\n{{sales_amount}}\r\n{{paid_amt}}\r\n{{due_amt}}\r\n{{store_name}}\r\n{{store_mobile}}\r\n{{store_address}}\r\n{{store_website}}\r\n{{store_email}}\r\n', 1, 1),
(13, 2, 'GREETING TO CUSTOMER ON SALES RETURN', 'Hi {{customer_name}},\r\nYour sales return Id is {{return_id}},\r\nReturn Date {{return_date}},\r\nTotal amount  {{return_amount}},\r\nWe paid  {{paid_amt}},\r\nand due amount is  {{due_amt}}\r\nThank you Visit Again', '{{customer_name}}                          \r\n{{return_id}}\r\n{{return_date}}\r\n{{return_amount}}\r\n{{paid_amt}}\r\n{{due_amt}}\r\n{{company_name}}\r\n{{company_mobile}}\r\n{{company_address}}\r\n{{company_website}}\r\n{{company_email}}\r\n', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_sobpayments`
--

CREATE TABLE `db_sobpayments` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `payment` double(10,2) DEFAULT NULL,
  `payment_note` mediumtext DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_states`
--

CREATE TABLE `db_states` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `state` varchar(4050) DEFAULT NULL,
  `country_code` varchar(15) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_states`
--

INSERT INTO `db_states` (`id`, `store_id`, `state_code`, `state`, `country_code`, `country_id`, `country`, `added_on`, `company_id`, `status`) VALUES
(23, 1, 'ST0001', 'Karnataka', 'CNT0001', NULL, 'India', '2017-07-10', 1, 1),
(24, 1, 'ST0024', 'Maharashtra', 'CNT0001', NULL, 'India', '2018-04-13', 1, 1),
(25, 2, 'ST0025', 'Andhra Pradesh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(26, 1, 'ST0026', 'Arunachal Pradesh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(27, 1, 'ST0027', 'Assam', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(28, 1, 'ST0028', 'Bihar', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(29, 1, 'ST0029', 'Chhattisgarh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(30, 1, 'ST0030', 'Goa', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(31, 1, 'ST0031', 'Gujarat', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(32, 1, 'ST0032', 'Haryana', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(33, 1, 'ST0033', 'Himachal Pradesh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(34, 1, 'ST0034', 'Jammu and Kashmir', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(35, 1, 'ST0035', 'Jharkhand', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(36, 1, 'ST0036', 'Kerala', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(37, 1, 'ST0037', 'Madhya Pradesh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(38, 1, 'ST0038', 'Manipur', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(39, 1, 'ST0039', 'Meghalaya', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(40, 1, 'ST0040', 'Mizoram', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(41, 1, 'ST0041', 'Nagaland', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(42, 1, 'ST0042', 'Odisha', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(43, 1, 'ST0043', 'Punjab', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(44, 1, 'ST0044', 'Rajasthan', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(45, 1, 'ST0045', 'Sikkim', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(46, 1, 'ST0046', 'Tamil Nadu', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(47, 1, 'ST0047', 'Telangana', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(48, 1, 'ST0048', 'Tripura', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(49, 1, 'ST0049', 'Uttar Pradesh', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(50, 1, 'ST0050', 'Uttarakhand', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(51, 1, 'ST0051', 'West Bengal', 'CNT0001', NULL, 'India', '2018-11-02', NULL, 1),
(52, 1, NULL, 'New York', NULL, NULL, 'USA', NULL, NULL, 0),
(53, 1, NULL, 'Delhi', NULL, NULL, 'India', NULL, NULL, 1),
(63, 2, NULL, 'Karnataka', NULL, 79, 'India', NULL, NULL, 1),
(64, 2, NULL, 'Chandigarh', NULL, NULL, 'India', NULL, NULL, 1),
(65, 2, NULL, 'Maharashtra', NULL, 79, 'INDIA', NULL, NULL, 1),
(66, 2, NULL, 'Gujarat', NULL, 79, 'INDIA', NULL, NULL, 1),
(67, 2, NULL, 'West Bengal', NULL, 79, 'INDIA', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_stockadjustment`
--

CREATE TABLE `db_stockadjustment` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `adjustment_date` date DEFAULT NULL,
  `adjustment_note` mediumtext DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_stockadjustment`
--

INSERT INTO `db_stockadjustment` (`id`, `store_id`, `warehouse_id`, `reference_no`, `adjustment_date`, `adjustment_note`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `status`) VALUES
(692, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '02:03:51 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(695, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '04:49:06 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(696, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '04:49:06 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(697, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '04:49:06 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(698, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '04:49:06 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(699, 2, 2, NULL, '2025-05-04', NULL, '2025-05-04', '04:49:06 pm', 'Frozenwala', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', '2405:201:8015:9c10:a9ed:b48a:5646:1aae', 1),
(700, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '12:10:21 pm', 'Frozenwala', '2405:201:8015:9c10:8c67:42df:6167:6565', '2405:201:8015:9c10:8c67:42df:6167:6565', 1),
(701, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '12:12:10 pm', 'Frozenwala', '2405:201:8015:9c10:8c67:42df:6167:6565', '2405:201:8015:9c10:8c67:42df:6167:6565', 1),
(702, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:06:36 pm', 'Frozenwala', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', 1),
(703, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:06:36 pm', 'Frozenwala', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', 1),
(704, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:06:36 pm', 'Frozenwala', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', 1),
(705, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:06:36 pm', 'Frozenwala', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', 1),
(706, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:06:36 pm', 'Frozenwala', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', '2405:201:8015:9c10:2dc9:7949:1cd2:5e53', 1),
(707, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:27:46 pm', 'Frozenwala', '43.248.69.81', '43.248.69.81', 1),
(708, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:27:46 pm', 'Frozenwala', '43.248.69.81', '43.248.69.81', 1),
(709, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:27:46 pm', 'Frozenwala', '43.248.69.81', '43.248.69.81', 1),
(710, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:27:46 pm', 'Frozenwala', '43.248.69.81', '43.248.69.81', 1),
(711, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '05:27:46 pm', 'Frozenwala', '43.248.69.81', '43.248.69.81', 1),
(714, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:10:03 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(715, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:10:37 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(716, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:19:13 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(717, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:22:36 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(718, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:22:36 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(719, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:22:36 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(720, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:22:36 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(721, 2, 2, NULL, '2025-05-05', NULL, '2025-05-05', '07:22:36 pm', 'Frozenwala', '2405:201:8015:9c10:5d99:41c0:217d:9bad', '2405:201:8015:9c10:5d99:41c0:217d:9bad', 1),
(723, 2, 2, NULL, '2025-05-06', NULL, '2025-05-06', '04:31:10 pm', 'Frozenwala', '2405:201:800d:893c:6d36:d9a7:b240:79b8', '2405:201:800d:893c:6d36:d9a7:b240:79b8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_stockadjustmentitems`
--

CREATE TABLE `db_stockadjustmentitems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `adjustment_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `adjustment_qty` double(20,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `piece_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_stockadjustmentitems`
--

INSERT INTO `db_stockadjustmentitems` (`id`, `store_id`, `warehouse_id`, `adjustment_id`, `item_id`, `adjustment_qty`, `status`, `description`, `piece_count`) VALUES
(60, 2, 2, 692, 509, 100.00, 1, NULL, 1),
(61, 2, 2, 695, 512, 10.00, 1, NULL, 1),
(62, 2, 2, 696, 513, 10.00, 1, NULL, 1),
(63, 2, 2, 697, 514, 10.00, 1, NULL, 1),
(64, 2, 2, 698, 515, 10.00, 1, NULL, 1),
(65, 2, 2, 699, 516, 10.00, 1, NULL, 1),
(66, 2, 2, 700, 517, 10.00, 1, NULL, 1),
(67, 2, 2, 701, 518, 11.00, 1, NULL, 1),
(73, 2, 2, 707, 1, 30.00, 1, NULL, 1),
(74, 2, 2, 708, 2, 30.00, 1, NULL, 1),
(75, 2, 2, 709, 3, 30.00, 1, NULL, 1),
(76, 2, 2, 710, 4, 30.00, 1, NULL, 1),
(77, 2, 2, 711, 5, 30.00, 1, NULL, 1),
(89, 2, 2, 723, 6, 11.00, 1, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `db_stockentry`
--

CREATE TABLE `db_stockentry` (
  `id` int(11) NOT NULL,
  `entry_date` date DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_stocktransfer`
--

CREATE TABLE `db_stocktransfer` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL COMMENT 'from store',
  `to_store_id` int(11) DEFAULT NULL COMMENT 'to store transfer',
  `warehouse_from` int(11) DEFAULT NULL,
  `warehouse_to` int(11) DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_stocktransferitems`
--

CREATE TABLE `db_stocktransferitems` (
  `id` int(11) NOT NULL,
  `stocktransfer_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL COMMENT 'from store',
  `to_store_id` int(11) DEFAULT NULL COMMENT 'to store',
  `warehouse_from` int(11) DEFAULT NULL COMMENT 'warehouse ids',
  `warehouse_to` int(11) DEFAULT NULL COMMENT 'warehouse ids',
  `item_id` int(11) DEFAULT NULL,
  `transfer_qty` double(20,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_store`
--

CREATE TABLE `db_store` (
  `id` int(11) NOT NULL,
  `store_code` varchar(150) DEFAULT NULL,
  `store_name` varchar(150) DEFAULT NULL,
  `store_website` varchar(150) DEFAULT NULL,
  `mobile` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `store_logo` text DEFAULT NULL,
  `logo` mediumtext DEFAULT NULL,
  `upi_id` varchar(50) DEFAULT NULL,
  `upi_code` text DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `gst_no` varchar(50) DEFAULT NULL,
  `vat_no` varchar(50) DEFAULT NULL,
  `pan_no` varchar(50) DEFAULT NULL,
  `bank_details` mediumtext DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `category_init` varchar(50) DEFAULT NULL,
  `item_init` varchar(50) DEFAULT NULL COMMENT 'INITAL CODE',
  `supplier_init` varchar(50) DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_init` varchar(50) DEFAULT NULL COMMENT 'INITAL CODE',
  `purchase_return_init` varchar(50) DEFAULT NULL,
  `customer_init` varchar(50) DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_init` varchar(50) DEFAULT NULL COMMENT 'INITAL CODE',
  `sales_return_init` varchar(50) DEFAULT NULL,
  `expense_init` varchar(50) DEFAULT NULL,
  `accounts_init` varchar(50) DEFAULT NULL,
  `journal_init` varchar(50) DEFAULT NULL,
  `cust_advance_init` varchar(50) DEFAULT NULL,
  `invoice_view` int(11) DEFAULT NULL COMMENT '1=Standard,2=Indian GST',
  `sms_status` int(11) DEFAULT NULL COMMENT '1=Enable 0=Disable',
  `status` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_placement` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `time_format` int(11) DEFAULT NULL,
  `sales_discount` double(20,4) DEFAULT NULL,
  `currencysymbol_id` int(11) DEFAULT NULL,
  `regno_key` varchar(50) DEFAULT NULL,
  `fav_icon` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `change_return` int(11) DEFAULT NULL,
  `sales_invoice_format_id` int(11) DEFAULT NULL,
  `pos_invoice_format_id` int(11) DEFAULT NULL,
  `sales_invoice_footer_text` text DEFAULT NULL,
  `round_off` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `quotation_init` varchar(50) DEFAULT NULL,
  `decimals` int(11) DEFAULT 2,
  `money_transfer_init` varchar(50) DEFAULT NULL,
  `sales_payment_init` varchar(50) DEFAULT NULL,
  `sales_return_payment_init` varchar(50) DEFAULT NULL,
  `purchase_payment_init` varchar(50) DEFAULT NULL,
  `purchase_return_payment_init` varchar(50) DEFAULT NULL,
  `expense_payment_init` varchar(50) DEFAULT NULL,
  `current_subscriptionlist_id` int(11) DEFAULT 0,
  `smtp_host` varchar(250) DEFAULT NULL,
  `smtp_port` varchar(250) DEFAULT NULL,
  `smtp_user` varchar(250) DEFAULT NULL,
  `smtp_pass` varchar(250) DEFAULT NULL,
  `smtp_status` int(11) DEFAULT 0,
  `sms_url` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `mrp_column` int(11) DEFAULT 0,
  `invoice_terms` text DEFAULT NULL,
  `previous_balance_bit` int(11) DEFAULT 1 COMMENT '1=Show, 0=Hide - Shows on sales invoice',
  `qty_decimals` int(11) DEFAULT 2,
  `t_and_c_status` int(11) DEFAULT 1 COMMENT '1=Show, 0=Hide - Shows on sales invoice',
  `t_and_c_status_pos` int(11) DEFAULT 1,
  `number_to_words` varchar(250) DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_store`
--

INSERT INTO `db_store` (`id`, `store_code`, `store_name`, `store_website`, `mobile`, `phone`, `email`, `website`, `store_logo`, `logo`, `upi_id`, `upi_code`, `country`, `state`, `city`, `address`, `postcode`, `gst_no`, `vat_no`, `pan_no`, `bank_details`, `cid`, `category_init`, `item_init`, `supplier_init`, `purchase_init`, `purchase_return_init`, `customer_init`, `sales_init`, `sales_return_init`, `expense_init`, `accounts_init`, `journal_init`, `cust_advance_init`, `invoice_view`, `sms_status`, `status`, `language_id`, `currency_id`, `currency_placement`, `timezone`, `date_format`, `time_format`, `sales_discount`, `currencysymbol_id`, `regno_key`, `fav_icon`, `purchase_code`, `change_return`, `sales_invoice_format_id`, `pos_invoice_format_id`, `sales_invoice_footer_text`, `round_off`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `quotation_init`, `decimals`, `money_transfer_init`, `sales_payment_init`, `sales_return_payment_init`, `purchase_payment_init`, `purchase_return_payment_init`, `expense_payment_init`, `current_subscriptionlist_id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `smtp_status`, `sms_url`, `user_id`, `mrp_column`, `invoice_terms`, `previous_balance_bit`, `qty_decimals`, `t_and_c_status`, `t_and_c_status_pos`, `number_to_words`) VALUES
(1, 'ST0001', 'SAAS ADMIN', '', '+919999999999', '', 'admin@gmail.com', 'www.siancesoftware.com', 'uploads/store/company_logo.png', NULL, NULL, NULL, 'India', 'Karnataka', 'Bengalore', 'Gandhi Road', '', '', '', '', '', NULL, 'CT/01/', 'IT01', 'SU/01/', 'PU/2020/01', 'PR/2020/01/', 'CU/01/', 'SL/2020/01/', 'SR/2020/01/', 'EX/2020/01/', 'AC/01/', 'JE', 'ADV', 1, 0, 1, 1, 35, 'Left', 'Asia/Kolkata\r\n', 'dd-mm-yyyy', 12, 0.0000, NULL, NULL, NULL, NULL, 1, 3, 1, 'Its Footer, You can change it from Store Settings.', 0, NULL, NULL, NULL, NULL, NULL, 'QT/2020/01/', 2, 'MT/01/', 'SP/2020/01/', 'SRP/2020/01/', 'PP/2020/01/', 'PRP/2020/01/', 'XP/2020/01/', 26, 'ssl://smtp.gmail.com', '465', 'salmanpathanindia@gmail.com', '9632563672', 1, 'http://sms.proware.in/api/sendhttp.php?authkey=248050Asbku6K75bf27efc&amp;mobiles={{MOBILE}}&amp;message={{MESSAGE}}&amp;sender=WBMGIC&amp;route=4', 0, 0, NULL, 1, 2, 1, 1, 'Default'),
(2, 'ST0002', 'Frozenwala', 'www.frozenwala.com', '8100098024', '', 'contact@frozenwala.com', 'www.frozenwala.com', 'uploads/store/bg.png', NULL, NULL, NULL, 'India', 'Maharashtra', 'Mumbai', 'Mumbai', '', '', '', '', '', NULL, 'CT', 'IT02', 'SU', 'PU', 'PR', 'CU', 'FW', 'SR', 'EX', 'AC', NULL, 'ADV', 1, 2, 1, 1, 35, 'Left', 'Asia/Kolkata\r\n', 'dd-mm-yyyy', 12, 0.0000, NULL, NULL, NULL, NULL, 1, 4, 2, 'This is footer text. It is in Store Management.', 1, '2021-02-12', '05:53:37 pm', '', '127.0.0.1', 'LAPTOP-I5OUIM4R', 'QT', 2, 'MT', 'SP', 'SRP', 'PP', 'PRP', 'XP', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '* Delivery received after full Satisfaction. Goods once sold cannot be taken back or exchanged.\n* For any type of complaint, please contact the manufacturer. * Dealer is not Iiable for any complaint after delivery. Warranty is given by manufacturer only.\n* Cheque return charge Rs.200/- besides legal liability. * All disputes subject to Kolkata Jurisdiction. No Tax Payable on Reverse Charge', 1, 2, 1, 1, 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `db_stripe`
--

CREATE TABLE `db_stripe` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `sandbox` int(11) DEFAULT NULL,
  `publishable_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_stripepayments`
--

CREATE TABLE `db_stripepayments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `buyer_email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `paid_amount` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `txn_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_status` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_subscription`
--

CREATE TABLE `db_subscription` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `payment_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `package_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `package_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subscription_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `trial_days` int(11) DEFAULT NULL,
  `max_users` int(11) DEFAULT NULL,
  `max_warehouses` int(11) DEFAULT NULL,
  `max_items` int(11) DEFAULT NULL,
  `max_invoices` int(11) DEFAULT NULL,
  `payment_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txn_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_gross` double(10,2) DEFAULT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payer_email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `package_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_type` varchar(250) DEFAULT NULL COMMENT 'manual subscription only',
  `package_count` int(11) DEFAULT NULL COMMENT 'manual subscription only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_subscription`
--

INSERT INTO `db_subscription` (`id`, `store_id`, `payment_id`, `package_id`, `package_type`, `package_name`, `description`, `subscription_date`, `expire_date`, `trial_days`, `max_users`, `max_warehouses`, `max_items`, `max_invoices`, `payment_by`, `txn_id`, `payment_gross`, `currency_code`, `payer_email`, `payment_status`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `package_status`, `payment_type`, `package_count`) VALUES
(1, 2, '', 1, 'Free', 'Free', '', '2023-09-23', '2034-09-23', 10, 2, 2, 20, 20, 'Manual', '', 0.00, '', 'super@example.com', 'success', '2023-09-23', '06:07:05 pm', 'Admin', '2405:201:8015:98b1:d8fa:cd49:2171:bd3f', '2405:201:8015:98b1:d8fa:cd49:2171:bd3f', NULL, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `db_suppliers`
--

CREATE TABLE `db_suppliers` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL COMMENT 'Use to create supplier Code',
  `supplier_code` varchar(20) DEFAULT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `vatin` varchar(100) DEFAULT NULL,
  `opening_balance` double(20,4) DEFAULT NULL,
  `purchase_due` double(20,4) DEFAULT NULL,
  `purchase_return_due` double(20,4) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(30) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_suppliers`
--

INSERT INTO `db_suppliers` (`id`, `store_id`, `count_id`, `supplier_code`, `supplier_name`, `mobile`, `phone`, `email`, `gstin`, `tax_number`, `vatin`, `opening_balance`, `purchase_due`, `purchase_return_due`, `country_id`, `state_id`, `city`, `postcode`, `address`, `system_ip`, `system_name`, `created_date`, `created_time`, `created_by`, `company_id`, `status`) VALUES
(164, 2, 1, 'SU0001', 'VISHAL SALES CORPORATION', '9892578527', '', 'vsc_jayesh@yahoo.co.in', '27ADWPG9379H1ZN', '', NULL, 0.0000, 0.0000, NULL, 79, 65, NULL, '400064', 'PATEL BAUG,MARVE ROAD,OFFICE - C/6,AMIDDHARA CHS LTD.,MAMLATDARWADI ROAD NO.4,MALAD WEST,', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(165, 2, 2, 'SU0002', 'FOODTECH INDIA', '9082699936', '', 'foodtechindia@yahoo.com', '27COYPS0394M1ZS', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400103', 'GROUND FLOOR,K/4,CHURCHILL COMPOUND,IC COLONY ROAD,ST.THOMAS CHURCH MARG,BORIVALI WEST,', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(166, 2, 3, 'SU0003', 'CUPS N CONES', '9821207525', '', 'cupsncones.rm@gmail.com', '27AAEPM1662N1ZE', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400104', '72/580,MOTILAL NAGAR NO.1,NEAR SIDDHARTH HOSPITAL,OPP SAMSUNG SERVICE CENTRE, GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(167, 2, 4, 'SU0004', 'SAI GLOBAL SERVICES', '8291298980', '', 'saiglobalservices@gmail.com', '27ABNFS8941G1ZL', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400086', '401,HILL VIEW IND.ESTATE,L.B.S.MARG,NEAR R-CITY MALL,AMRYT NAGAR,GHATKOPAR WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(168, 2, 5, 'SU0005', 'TINGLISH', '9326988711', '', '', '27AAXPF5695B1ZA', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '', 'D-29/13,M.I.D.C.TURBHE,OPP.TAJ VIVANTA NAVI MUMBAI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(169, 2, 6, 'SU0006', 'TASTY BITE EATABLES LIMITED', '123456789', '', '', '27AAACT2317A1ZZ', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '412203', 'C/O VASANT COLD & IQF GAT NO.372,AT POST KHUTBAV,TALUKA DAUND DISTRICT PUNE', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(170, 2, 7, 'SU0007', 'AA ENTERPRISES', '9167451441', '', 'aaenterprisesmumbai@gmail.com', '27AWTPP2063M1ZS', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400068', 'SHOP NO.2,SHASHI THAKUR COMPOUND, OPP.RBI QUARTERS,KANDERPADA,DAHISAR(W)', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(171, 2, 8, 'SU0008', 'CRIS & DAN FOODS LLP', '8767827413', '', 'crisndanfoods@gmail.com', '27AAHFC5986A1ZE', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400059', 'L.T.28/33.VIJAY NAGAR, MAROL MAROSHI ROAD, ANDHERI(EAST).', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(172, 2, 9, 'SU0009', 'VIJAY DISTRIBUTORS', '9167236405', '', 'vg_vijaydistributors@yahoo.com', '27ACGPG0711L1ZU', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400064', '5/6 PUSHPAK BUILDING NO.3, KHETAN ESTATE MARWADI CHAWL, S.V.ROAD MALAD WEST, OPP MALAD MTNL', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(173, 2, 10, 'SU0010', 'WESTERN MARKETING', '9322255199', '', 'accounts@westernmarketing.net', '27AACFW8773G1ZO', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400063', 'B/12, SHREYAS INDL ESTATE, OFF W.E.HIGHWAY, JAICOACH, JOGESHWARI(EAST)', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(174, 2, 11, 'SU0011', 'ELITE ENTERPRISE', '9820244638', '', 'elite.enter@yahoo.com', '27ANDPN5255G1ZX', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', 'UNIT NO.34,SARVODAYA INDUSTRIAL ESTATE, OPP. PAPER BOX,OFF. MAHAKALI CAVES ROAD, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(175, 2, 12, 'SU0012', 'G K ENTERPRISES', '8080776628', '', 'gkent930@gmail.com', '27AALFG9235E1Z8', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400070', '92B-1A, VISARIA SADAN, OPP. ANJUMAN SCHOOL, BELGRAMI ROAD, KURLA WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(176, 2, 13, 'SU0013', 'NOBLE MARKETING', '9930822537', '', '', '27BSXPS9318H1ZR', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400104', '169/1349, MOTILAL NAGAR NO.1, GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(177, 2, 14, 'SU0014', 'MAHAVIR MARKETING', '9867301748', '', 'narendrakoradia@yahoo.co.in', '27AJWPK6652K1ZD', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400097', 'SHOP 1/7, THE MALAD CO-OP HSG SOCIETY, PODDAR ROAD,MALAD EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(178, 2, 15, 'SU0015', 'UNIAIR REFRIGERATION CORPORATION', '1234567890', '', 'uniairref@gmail.com', '27AAAFU1018J1ZD', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400058', 'PLOT NO.10, GROUND FLOOR KAILASHPATI, BUILDING VEERA DESAI ROAD, ANDHERI-WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(179, 2, 16, 'SU0016', 'ITC LIMITED', '112345678', '', '', '27AAACI5950L1ZA', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '410208', 'FACT. ADD- VIRGINIA HOUSE,37,J.L.NEHRU ROAD, KOLKATA-7000071                                                                    PLOT NO.-T3/2, MIDC, TALOJA-PANVEL, RAIGAD', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(180, 2, 17, 'SU0017', 'RAKESH R. TRADERS', '11223344', '', 'rs553547@gmail.com', '27AGWPP1465C1Z3', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', '14, BASTAW CHAWL, SHANTI NAGAR, MAHAKALI CAVES ROAD, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(181, 2, 18, 'SU0018', 'HONEY FOODS', '11111111', '', '', '27DOVPD0119L1Z9', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400069', 'SHOP NO 1, SIDHANT COMPLEX, OFF OLD NAGARDAS ROAD, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(182, 2, 19, 'SU0019', 'HALAL FOODS', '8879967756', '', '', '', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400088', '1ST FLOOR, ROYAL PALACE HALL, PAILIPADA, TROMBAY', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(183, 2, 20, 'SU0020', 'NARAYAN SALES CORPORATION', '2226878015', '', 'nescorp@gmail.com', '27AOWPS9274E1Z0', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', 'DAMJI SHAMJI IND. PREMISES CO-OP SOCIETY LTD. 1ST FLOOR, 103, NEAR BMW SERVICE CENTRE,28, MAHAL INDL ESTATE, MAHAKALI ROAD, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(184, 2, 21, 'SU0021', 'TJUK TRADE NETWORKS PVT. LTD.', '2267877777', '', 'sales@tjuk.in', '27AACCT0200E1Z3', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400043', ' HEAD OFF- PLOT NO.55,HINDUSTAN BIOLOGICALS, NEAR BMC WARD OFFICE, WOMAN PATIL MARG,NEXT TO DEONAR WEIGH BRIDGE,OFF GHATKOPAR-MANKHURD LINK ROAD', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(185, 2, 22, 'SU0022', 'ZORABIAN', '1111111111', '', 'zorabianfoods@gmail.com', '27AAAFZ5877G1ZO', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400054', 'G-9, C-WING, PIONEER HERITAGE RESIDENCY 1, SANTACRUZ(W)', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(186, 2, 23, 'SU0023', 'SETHWALA FOODS LIMITED', '9833433854', '', 'mk.sethwala@gmail.com', '27AAICS9356G', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '401606', 'SETHWALA ESTATE, BEHIND HOTEL NILGIRI, N H 8,VILLAGE VADOLI,TAL-TALASARI,DIST-PALGHAR', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(187, 2, 24, 'SU0024', 'QUICK BITE MARKETING', '', '', '', '27BHGPC3333L1ZF', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400104', '10/71 MOTILAL NAGAR 3, M G ROAD, GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(188, 2, 25, 'SU0025', 'MAA KALI AGENCY', '9702099287', '', 'maakali17agency@gmail.com', '27AKFPB3371A1ZS', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', '6TH FLOOR.A11,ROOM NO 56,SHAHID BHAGAT CHS LTD, BINDRA COMPLEX', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(189, 2, 26, 'SU0026', 'FRESHERO AGRO PVT LTD', '9930362234', '', 'info@fresheragro.in', '27AADCF5427G1ZP', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400068', 'SHOP NO.12 & 13, DEV AASHISH BUILDING,OPP.BHARUCHA DAIRY. NEAR DAHISAR STATION ROAD, DAHISAE EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(190, 2, 27, 'SU0027', 'CPF(INDIA)  PRIVATE LIMITED', '1111222233', '', '', '27AAACC4209Q1ZG', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '410208', 'PANVEL-TALOJA INDUSTRIAL AREA,PLOT NO M-8 TALOJA MIDC,NAVI MUMBAI RAIGAD', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(191, 2, 28, 'SU0028', 'GADRE MARINE EXPORT PVT LTD', '1212121212', '', 'indiasales@gadremarine.com', '27AABCG4138R1Z5', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '415639', 'PLOT NO.FP-1, MIDC(MIRJOLE BLOCK),', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(192, 2, 29, 'SU0029', 'VENKYS INDIA LIMITED', '22872418', '', '', '27AAACW1300L1ZK', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400021', '153-C,MITTAL TOWER, NARIMAN POINT', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(193, 2, 30, 'SU0030', 'ABHINANDAN DISTRIBUTORS', '9820068535', '', 'hiren_gada@gmail.com', '27AANFA6218M1Z2', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '40007', '6/17,BLDG NO.13AB,SAMHITA COMMERCIAL COMPLEX,OFF A.K ROAD,SAKINAKA, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(194, 2, 31, 'SU0031', 'SWAPNA ENTERPRISE', '8689848815', '', 'swapnaenterprise16@gmail.com', '27GHAPS4183R1ZE', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', 'BINDRA COMPLEX,BUILDING NO 11/A, ROOM NO. 56, MAHAKALI CAVES ROAD, ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(195, 2, 32, 'SU0032', 'A A SERVICES', '9819102316', '', 'aaservicesmumbai@gmail.com', '27APQPK4573F2ZH', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400068', 'SHOP NO.1,SHASHI THAKUR COMPOUND, B.P.ROAD,OPP RBI QUARTER, DAHISAR WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(196, 2, 33, 'SU0033', 'SHREE DATTA TRAY TRADING CO', '9930970208', '', 'sdtco1976@gmail.com', '27AFPPB2892F1ZB', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '401107', 'DIAMOND PRINCE CITY CHSL,FLAT NO.003,NEAR MIG COMPLEX,OFF MIRA BHAYANDAR ROAD,MIRA ROAD EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(197, 2, 34, 'SU0034', 'ANJANI ENTERPRISE', '8490841851', '', 'anjanient22@gmail.com', '24CLIPM0295C1ZB', '', NULL, 0.0000, NULL, NULL, 79, 66, NULL, '380016', 'B29, CITY CENTER,PREM DARWAJA ROAD,NEAR ARARWA BRIDGE, IDDGA CIRCLE ASARWA', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(198, 2, 35, 'SU0035', 'DISHA AGRO AND FOODS PRIVATE LIMITED', '9923042387', '', '', '27AAHCD8474D1ZG', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '', 'DINDORI_701, MHCG1074, MHCG1074, TRIMBAKESHWAR RANGE', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(199, 2, 36, 'SU0036', 'VAISHALI ENTERPRISES', '9150089452', '', '', '27ESYPB3514G1ZK', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '4000060', 'SHOP NO.2,GROUND FLOOR,SHITLA DEVI CHSL,JANTA COLONY,JOGESHWARI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(200, 2, 37, 'SU0037', 'S.S.V DISTRIBUTORS INDIA PVT. LTD.', '2200000000', '', 'orderdesk@ssvdistributors.com', '27AAXCS9818A1ZT', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '4000037', 'C-031,ANTOPHILL WAREHOUSING CO. LTD.,BARKAT ALI DARGAH RD,ANTOPHILL', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(201, 2, 38, 'SU0038', 'PARADISE APIARY FARM', '224245242', '', 'pureberrys@gmail.com', '27ACTPM6953H1ZW', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '412805', 'MUMBAI NODAL DIVISION-1, MH005, VN0501, RANGE-I', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(202, 2, 39, 'SU0039', 'JAIN DUGDHALAY', '9820934107', '', 'jain.corporation@yahoo.com', '27AIZPG6478P1ZY', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400066', 'SHOP NO.8,THE WINDSOR,NEAR NG SUNCITY, THAKUR VILLAGE,KANDIVALI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(203, 2, 40, 'SU0040', 'CHIC AGENCIES', '9820054655', '', 'sales@chicagencies.com', '27AAHPP7371G1ZD', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '4000062', '7, UDYOG NAGAR. GALA NO 17, NEAR KAMAT CLUB, S V ROAD,GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(204, 2, 41, 'SU0041', 'DUKS FOODS', '2211112222', '', 'duksfoods@gmail.com', '27AAVFD2819D1ZB', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '421302', 'HARI HAR COMPLEX,BULDING A14,GALA 19,DAPODA VILLEGE,NEAR INDIAN OIL PETROL PUMP,MANKOLI NAKA,BHIWANDI,THANE', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(205, 2, 42, 'SU0042', 'EMPIRE FOODS', '66555453', '', 'sales@empirefoods.co.in', '27AAACE2757R2Z2', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400013', 'EMPIRE COMPLEX,414,SENAPATI BAPAT MARG,LOWER PAREL', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(206, 2, 43, 'SU0043', 'ARIHANT ENTERPRISES', '9137399476', '', 'arihantenterprises448@gmail.com', '27BAIPJ7361J1ZC', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400067', 'SHOP NO 115(2),SAIDHAM NAGAR,OPP. SARASWATI HOSPITAL,KANDIVALI(W)', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(207, 2, 44, 'SU0044', 'ASHISH ENTERPRISES', '9987164831', '', 'ashishenterprises.ap@gmail.com', '27DDPPP9380H1ZP', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '401107', 'GALA NO.B2,BHARAT COMPOUND,OPP DODIA PETROL PUMP,NR DHARAS DHABA,KASHMIR MIRA ROAD', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(208, 2, 45, 'SU0045', 'AMIT VIRA & CO.', '2223725699', '', 'amitvira.av@gmail.com', '27AABPV4721A1Z1', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400003', 'BARIA BLDG PINJARI STR,CROWFORD MKT', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(209, 2, 46, 'SU0046', 'GENEX MARKETING', '1122121212', '', 'sales@genexmarketing.co.in', '27AVFPS8618E1Z9', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '4000072', 'GROUND FLOOR,UNIT NO.02,C WING,TEX CENTRE PREMISES CO-OP SOCIETY LTD.,CHANDIVALI ANDHERI ROAD,SAKIVIHAR,SAKINAKA ANDHERI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(210, 2, 47, 'SU0047', 'DZYRIS FROZEN FOODS PVT. LTD.', '9930973001', '', 'accounts@dzyris.in', '27AAJCD8219Q1ZW', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '401208', 'SHOP NO.8,ARIHANT INDUSTRIAL ESTATE,KAMAN BHIWANDI ROAD,MORI GAON,', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(211, 2, 48, 'SU0048', 'OWAIZ ENTERPRISES', '8080698515', '', '', '27KFDPS0575C1ZA', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400069', 'MOGRA PADA,NIKUNJ', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(212, 2, 49, 'SU0049', 'PERCOCTUM FOODS PVT LTD', '223334444', '', 'opulencefood@gmail.com', '27AANCP8460F1Z0', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400064', '3040 RUSTOMJEE EAZE ZONE, GMLR, NEAR GOREGAON MTNL, MALAD WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(213, 2, 50, 'SU0050', 'AIBANI TRADING', '9920634998', '', 'yasinaibani03@gmail.com', '27AUEPA0063D1ZD', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400058', '507 ASHIYANA SRA C H S BEHIND FISH MARKET S V ROAD ANDHERI WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(214, 2, 51, 'SU0051', 'APRIL3RD FOODS PRIVATE LIMITED', '1236547810', '', 'accounts@april3rdfoods.com', '29AAYCA6430H1Z6', '', NULL, 0.0000, NULL, NULL, 79, 63, NULL, '560100', 'UNIWORD BLG NEELADRI NAGAR PHASE 1 ELECTRINIK CITY', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(215, 2, 52, 'SU0052', 'AUGUST ASSORTMENTS PVT LTD', '2222222222', '', 'contactus@augustassortments.com', '27AASCA3355K1Z7', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400710', 'A-175,TTC INDUSTRIAL AREA,MIDC VILLAGE KHAIRANE ROAD,KOPARKHAIRANE,THANE', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(216, 2, 53, 'SU0053', 'AMAR FOOD PRODUCTS', '123456788', '', 'porbandar@hiravati.com', '24AAYFA9425B2ZC', '', NULL, 0.0000, NULL, NULL, 79, 66, NULL, '360575', 'JAWAR NAKA PORBANDAR', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(217, 2, 54, 'SU0054', 'M/S.SHREE SAI AGENCY', '7208555456', '', 'shreesaiagency1947@gmail.com', '27ADDFS6163Q1ZC', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400057', 'SHOP:-5&6, SADANAND RD,OPP. SAI BABA TEMPLE, VILE PARLE EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(218, 2, 55, 'SU0055', 'WOLDKO TRADING', '9988661099', '', 'woldkotrading@gmail.com', '27BADPV3088D1ZI', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400102', 'FLAT NO.31,BLDG. NO.02,VISHAL CHS OSHIWARA PARK,OSHIWARA LINK RD,JOGESHWARI W', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(219, 2, 56, 'SU0056', 'OPULENCE FOODS', '1234567888', '', 'opulencefood@gmail.com', '', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400104', 'G 2031 RUSTOMJEE EAZE ZONE,NEAR GOREGAON MTNL,GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(220, 2, 57, 'SU0057', 'BEST MARKETING', '9819235440', '', '', '27AFTPK6826J1ZR', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '', 'SIDDHIVINAYAK CHAWL, ROOM NO 3,NEAR HANUMAN NAGAR,HANJAR NAGAR RD,PUMP HOUSE ,ANDHERI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(221, 2, 58, 'SU0058', 'SAI MARKETING', '9324206327', '', 'saimarketinga1@gmail.com', '27ALGPD5253P1ZR', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400010', 'PLOT NO.71,MANOHAR BLDG H.K.MARG,MAZGAON', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(222, 2, 59, 'SU0059', 'SAYAJI FOODS PRIVATE LIMITED', '68313131', '', 'sales@sayajifoods.com', '27AAFCB9987P1ZJ', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400701', 'R-701 PART, TTC INDUSTRIAL AREA MIDC,REBALE,NAVI MUMBAI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(223, 2, 60, 'SU0060', 'TOSHNIWAL TRADERS', '1234567777', '', '', '27AANFM9844R1Z2', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400060', 'B-6,HEMA INDUSTRIAL ESTATE,SARVODAYA NAGAR,NR.MEGHWADI POLICE STATION, JOGESHWARI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(224, 2, 61, 'SU0061', 'NASEEB ENTERPRISES', '1234123400', '', 'naseebenterprises.bhiwandi@gmail.com', '27AAMFN0933H1Z7', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '421302', 'A14/19,GR FLOOR,HARIHAR CORP,DAPODA VILLAGE BHIWANDI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(225, 2, 62, 'SU0062', 'SUBHRA VICTUS SOLUTIONS', '2242669925', '', 'subhravictussolutions@gmail.com', '27ACYPJ0718N2ZX', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400101', 'B-34,SHREE BALAJI INDL ESTATE,HANUMAN NAGAR,AKURLI ROAD,KANDIVALI EAST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(226, 2, 63, 'SU0063', 'J.P. ENTERPRISES', '9867188035', '', 'dinesh.jp26@rediffmill.com', '27AFUPK9760Q1Z5', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400104', '19/156,GRD FLOOR,UNNAT NAGAR ,MG ROAD, GOREGAON WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(227, 2, 64, 'SU0064', 'ISCON BALAJI FOODS PVT LTD', '1122450', '', '', '27SSCCI8381H1ZA', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '410208', 'C-09/09 WETSERN SUPER FRESH CORPORATION NEXT TO JAY CONTAINER', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(228, 2, 65, 'SU0065', 'SHREE ASHAPURA AGENCY', '9869767327', '', 'mayur_nbhanushali@yahoo.com', '27AJZPB8903F1ZW', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400093', 'GALA NO 41,DAMJI SHAMJI INDS ESTATE MAHAKALI ROAD,ANDHERI E', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(229, 2, 66, 'SU0066', 'VAIBHAV PROCESSES FOOD', '1231231230', '', 'jainm2820@gmail.com', '27AAEPJ2904J1ZU', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '', 'SHANTI SAGAR,CO-OP HOUSING SOCIETY,A-19,1ST FLOOR,5TH ROAD,KHAR WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(230, 2, 67, 'SU0067', 'METRO CASH AND CARRY INDIA LTD.', '1023456789', '', '', '27AACCM4684P1ZR', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400066', 'COM BDG NO5,CTS S.NO.163 A & 165,DATTAPADA RD,VILLAGE MAGATHANE,BORIVALI E', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(231, 2, 68, 'SU0068', 'M/S. MULTIPRODUCTS CORPORATION', '2220812285', '', 'multiproductscorporation@gmail.com', '27AAVFM3835G1ZU', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400078', '105 P.N.KOTHARI INDUSTRIAL ESTATE, L.B.S.ROAD,BHANDUP WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(232, 2, 69, 'SU0069', 'HOLY-LAND MARKETING PVT. LTD.', '2241310440', '', '', '27AAACH1632E1Z3', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '421302', 'GALA NO 119-122,AC UNIT,SHREE RAJLAXMI COMPLEX,KALHER,BHIWANDI,DIST.THANE-421302', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(233, 2, 70, 'SU0070', 'KNOWLEDGE FOODS PVT.LTD.', '100001000', '', '', '27AAGCK6449J1Z2', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '410201', 'SR.NO.15/2,VILLAGE SALOKH TARFE WAREDI,POST-KALAMB,TAL-KARJAT,DIST-RAIGAD', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(234, 2, 71, 'SU0071', 'STAR IMPEX', '9833658479', '', 'info@starimpex.net', '27AESFS6470C1ZM', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400003', 'GROUND FLOOR,SHOP NO 3,ZOHRA MANZIL,KHOZA STREET,X LANE,NULL BAZAR,MUMBAI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(235, 2, 72, 'SU0072', 'MONOMOZO', '9819891463', '', 'monomozobandra@gmail.com', '27AALPF6235H1ZO', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400050', 'SHOP NO 14 NEW JALDARSHAN CHIMBAI RD BANDRA W', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(236, 2, 73, 'SU0073', 'SKYLINE TRADING COMPANY', '9773391034', '', '', '27AAXPF5695B1ZA', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400705', 'D29/13,TTC INDUSTRIAL AREA, MIDC,TURBHE,NAVI MUMBAI', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(237, 2, 74, 'SU0074', 'MARS INTERNATIONAL', '9322133838', '', 'marsinternational1407@gmail.com', '27ACAFM9113C1ZK', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '421302', 'BLDG.NO.C-11,GALA NO.38,GR FLOOR,H NO.914,BHUMI WORLD INDUSTRIAL PARK,PIMPLAS BHIWANDI, THANE', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(238, 2, 75, 'SU0075', 'SHAHI PARATHA', '7021932237', '', 'khanahmed.ak2000@gmail.com', '', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '', 'mumbai', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(239, 2, 76, 'SU0076', 'KD FUTURE SOLUTIONS', '9322231273', '', '', '27AARFK1716E1ZC', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400050', 'SHOP NO 6 SANTADEEP CHS LTD . T.PS III BANDRA WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1),
(240, 2, 77, 'SU0077', 'JONOR FOODS', '9987690805', '', '', '', '', NULL, 0.0000, NULL, NULL, 79, 65, NULL, '400058', '81-C GILBERT HILLOPP GIT DARSHAN  NEAR BHAWANCOLLEGE ANDHERI -WEST', '43.248.69.81', '43.248.69.81', '2025-05-05', '04:58:45 pm', 'Frozenwala', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_supplier_payments`
--

CREATE TABLE `db_supplier_payments` (
  `id` int(11) NOT NULL,
  `purchasepayment_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment` double(10,2) DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_tax`
--

CREATE TABLE `db_tax` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `tax_name` varchar(50) DEFAULT NULL,
  `tax` double(20,4) DEFAULT NULL,
  `group_bit` int(11) DEFAULT NULL COMMENT '1=Yes, 0=No',
  `subtax_ids` varchar(10) DEFAULT NULL COMMENT 'Tax groups IDs',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_tax`
--

INSERT INTO `db_tax` (`id`, `store_id`, `tax_name`, `tax`, `group_bit`, `subtax_ids`, `status`) VALUES
(1, 2, 'GSTR18', 18.0000, NULL, NULL, 1),
(6, 2, 'GSTR5', 5.0000, NULL, NULL, 1),
(7, 2, 'GSTR12', 12.0000, NULL, NULL, 1),
(14, 2, 'Tax 5%', 5.0000, NULL, NULL, 1),
(15, 2, '12%', 23.5716, NULL, NULL, 1),
(16, 2, '12', 16.8552, NULL, NULL, 1),
(17, 2, '18', 79.2000, NULL, NULL, 1),
(18, 2, '5', 7.2500, NULL, NULL, 1),
(19, 2, 'GST6', 6.0000, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_timezone`
--

CREATE TABLE `db_timezone` (
  `id` int(11) NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_timezone`
--

INSERT INTO `db_timezone` (`id`, `timezone`, `status`) VALUES
(1, 'Africa/Abidjan\r', 1),
(2, 'Africa/Accra\r', 1),
(3, 'Africa/Addis_Ababa\r', 1),
(4, 'Africa/Algiers\r', 1),
(5, 'Africa/Asmara\r', 1),
(6, 'Africa/Asmera\r', 1),
(7, 'Africa/Bamako\r', 1),
(8, 'Africa/Bangui\r', 1),
(9, 'Africa/Banjul\r', 1),
(10, 'Africa/Bissau\r', 1),
(11, 'Africa/Blantyre\r', 1),
(12, 'Africa/Brazzaville\r', 1),
(13, 'Africa/Bujumbura\r', 1),
(14, 'Africa/Cairo\r', 1),
(15, 'Africa/Casablanca\r', 1),
(16, 'Africa/Ceuta\r', 1),
(17, 'Africa/Conakry\r', 1),
(18, 'Africa/Dakar\r', 1),
(19, 'Africa/Dar_es_Salaam\r', 1),
(20, 'Africa/Djibouti\r', 1),
(21, 'Africa/Douala\r', 1),
(22, 'Africa/El_Aaiun\r', 1),
(23, 'Africa/Freetown\r', 1),
(24, 'Africa/Gaborone\r', 1),
(25, 'Africa/Harare\r', 1),
(26, 'Africa/Johannesburg\r', 1),
(27, 'Africa/Juba\r', 1),
(28, 'Africa/Kampala\r', 1),
(29, 'Africa/Khartoum\r', 1),
(30, 'Africa/Kigali\r', 1),
(31, 'Africa/Kinshasa\r', 1),
(32, 'Africa/Lagos\r', 1),
(33, 'Africa/Libreville\r', 1),
(34, 'Africa/Lome\r', 1),
(35, 'Africa/Luanda\r', 1),
(36, 'Africa/Lubumbashi\r', 1),
(37, 'Africa/Lusaka\r', 1),
(38, 'Africa/Malabo\r', 1),
(39, 'Africa/Maputo\r', 1),
(40, 'Africa/Maseru\r', 1),
(41, 'Africa/Mbabane\r', 1),
(42, 'Africa/Mogadishu\r', 1),
(43, 'Africa/Monrovia\r', 1),
(44, 'Africa/Nairobi\r', 1),
(45, 'Africa/Ndjamena\r', 1),
(46, 'Africa/Niamey\r', 1),
(47, 'Africa/Nouakchott\r', 1),
(48, 'Africa/Ouagadougou\r', 1),
(49, 'Africa/Porto-Novo\r', 1),
(50, 'Africa/Sao_Tome\r', 1),
(51, 'Africa/Timbuktu\r', 1),
(52, 'Africa/Tripoli\r', 1),
(53, 'Africa/Tunis\r', 1),
(54, 'Africa/Windhoek\r', 1),
(55, 'AKST9AKDT\r', 1),
(56, 'America/Adak\r', 1),
(57, 'America/Anchorage\r', 1),
(58, 'America/Anguilla\r', 1),
(59, 'America/Antigua\r', 1),
(60, 'America/Araguaina\r', 1),
(61, 'America/Argentina/Buenos_Aires\r', 1),
(62, 'America/Argentina/Catamarca\r', 1),
(63, 'America/Argentina/ComodRivadavia\r', 1),
(64, 'America/Argentina/Cordoba\r', 1),
(65, 'America/Argentina/Jujuy\r', 1),
(66, 'America/Argentina/La_Rioja\r', 1),
(67, 'America/Argentina/Mendoza\r', 1),
(68, 'America/Argentina/Rio_Gallegos\r', 1),
(69, 'America/Argentina/Salta\r', 1),
(70, 'America/Argentina/San_Juan\r', 1),
(71, 'America/Argentina/San_Luis\r', 1),
(72, 'America/Argentina/Tucuman\r', 1),
(73, 'America/Argentina/Ushuaia\r', 1),
(74, 'America/Aruba\r', 1),
(75, 'America/Asuncion\r', 1),
(76, 'America/Atikokan\r', 1),
(77, 'America/Atka\r', 1),
(78, 'America/Bahia\r', 1),
(79, 'America/Bahia_Banderas\r', 1),
(80, 'America/Barbados\r', 1),
(81, 'America/Belem\r', 1),
(82, 'America/Belize\r', 1),
(83, 'America/Blanc-Sablon\r', 1),
(84, 'America/Boa_Vista\r', 1),
(85, 'America/Bogota\r', 1),
(86, 'America/Boise\r', 1),
(87, 'America/Buenos_Aires\r', 1),
(88, 'America/Cambridge_Bay\r', 1),
(89, 'America/Campo_Grande\r', 1),
(90, 'America/Cancun\r', 1),
(91, 'America/Caracas\r', 1),
(92, 'America/Catamarca\r', 1),
(93, 'America/Cayenne\r', 1),
(94, 'America/Cayman\r', 1),
(95, 'America/Chicago\r', 1),
(96, 'America/Chihuahua\r', 1),
(97, 'America/Coral_Harbour\r', 1),
(98, 'America/Cordoba\r', 1),
(99, 'America/Costa_Rica\r', 1),
(100, 'America/Creston\r', 1),
(101, 'America/Cuiaba\r', 1),
(102, 'America/Curacao\r', 1),
(103, 'America/Danmarkshavn\r', 1),
(104, 'America/Dawson\r', 1),
(105, 'America/Dawson_Creek\r', 1),
(106, 'America/Denver\r', 1),
(107, 'America/Detroit\r', 1),
(108, 'America/Dominica\r', 1),
(109, 'America/Edmonton\r', 1),
(110, 'America/Eirunepe\r', 1),
(111, 'America/El_Salvador\r', 1),
(112, 'America/Ensenada\r', 1),
(113, 'America/Fort_Wayne\r', 1),
(114, 'America/Fortaleza\r', 1),
(115, 'America/Glace_Bay\r', 1),
(116, 'America/Godthab\r', 1),
(117, 'America/Goose_Bay\r', 1),
(118, 'America/Grand_Turk\r', 1),
(119, 'America/Grenada\r', 1),
(120, 'America/Guadeloupe\r', 1),
(121, 'America/Guatemala\r', 1),
(122, 'America/Guayaquil\r', 1),
(123, 'America/Guyana\r', 1),
(124, 'America/Halifax\r', 1),
(125, 'America/Havana\r', 1),
(126, 'America/Hermosillo\r', 1),
(127, 'America/Indiana/Indianapolis\r', 1),
(128, 'America/Indiana/Knox\r', 1),
(129, 'America/Indiana/Marengo\r', 1),
(130, 'America/Indiana/Petersburg\r', 1),
(131, 'America/Indiana/Tell_City\r', 1),
(132, 'America/Indiana/Vevay\r', 1),
(133, 'America/Indiana/Vincennes\r', 1),
(134, 'America/Indiana/Winamac\r', 1),
(135, 'America/Indianapolis\r', 1),
(136, 'America/Inuvik\r', 1),
(137, 'America/Iqaluit\r', 1),
(138, 'America/Jamaica\r', 1),
(139, 'America/Jujuy\r', 1),
(140, 'America/Juneau\r', 1),
(141, 'America/Kentucky/Louisville\r', 1),
(142, 'America/Kentucky/Monticello\r', 1),
(143, 'America/Knox_IN\r', 1),
(144, 'America/Kralendijk\r', 1),
(145, 'America/La_Paz\r', 1),
(146, 'America/Lima\r', 1),
(147, 'America/Los_Angeles\r', 1),
(148, 'America/Louisville\r', 1),
(149, 'America/Lower_Princes\r', 1),
(150, 'America/Maceio\r', 1),
(151, 'America/Managua\r', 1),
(152, 'America/Manaus\r', 1),
(153, 'America/Marigot\r', 1),
(154, 'America/Martinique\r', 1),
(155, 'America/Matamoros\r', 1),
(156, 'America/Mazatlan\r', 1),
(157, 'America/Mendoza\r', 1),
(158, 'America/Menominee\r', 1),
(159, 'America/Merida\r', 1),
(160, 'America/Metlakatla\r', 1),
(161, 'America/Mexico_City\r', 1),
(162, 'America/Miquelon\r', 1),
(163, 'America/Moncton\r', 1),
(164, 'America/Monterrey\r', 1),
(165, 'America/Montevideo\r', 1),
(166, 'America/Montreal\r', 1),
(167, 'America/Montserrat\r', 1),
(168, 'America/Nassau\r', 1),
(169, 'America/New_York\r', 1),
(170, 'America/Nipigon\r', 1),
(171, 'America/Nome\r', 1),
(172, 'America/Noronha\r', 1),
(173, 'America/North_Dakota/Beulah\r', 1),
(174, 'America/North_Dakota/Center\r', 1),
(175, 'America/North_Dakota/New_Salem\r', 1),
(176, 'America/Ojinaga\r', 1),
(177, 'America/Panama\r', 1),
(178, 'America/Pangnirtung\r', 1),
(179, 'America/Paramaribo\r', 1),
(180, 'America/Phoenix\r', 1),
(181, 'America/Port_of_Spain\r', 1),
(182, 'America/Port-au-Prince\r', 1),
(183, 'America/Porto_Acre\r', 1),
(184, 'America/Porto_Velho\r', 1),
(185, 'America/Puerto_Rico\r', 1),
(186, 'America/Rainy_River\r', 1),
(187, 'America/Rankin_Inlet\r', 1),
(188, 'America/Recife\r', 1),
(189, 'America/Regina\r', 1),
(190, 'America/Resolute\r', 1),
(191, 'America/Rio_Branco\r', 1),
(192, 'America/Rosario\r', 1),
(193, 'America/Santa_Isabel\r', 1),
(194, 'America/Santarem\r', 1),
(195, 'America/Santiago\r', 1),
(196, 'America/Santo_Domingo\r', 1),
(197, 'America/Sao_Paulo\r', 1),
(198, 'America/Scoresbysund\r', 1),
(199, 'America/Shiprock\r', 1),
(200, 'America/Sitka\r', 1),
(201, 'America/St_Barthelemy\r', 1),
(202, 'America/St_Johns\r', 1),
(203, 'America/St_Kitts\r', 1),
(204, 'America/St_Lucia\r', 1),
(205, 'America/St_Thomas\r', 1),
(206, 'America/St_Vincent\r', 1),
(207, 'America/Swift_Current\r', 1),
(208, 'America/Tegucigalpa\r', 1),
(209, 'America/Thule\r', 1),
(210, 'America/Thunder_Bay\r', 1),
(211, 'America/Tijuana\r', 1),
(212, 'America/Toronto\r', 1),
(213, 'America/Tortola\r', 1),
(214, 'America/Vancouver\r', 1),
(215, 'America/Virgin\r', 1),
(216, 'America/Whitehorse\r', 1),
(217, 'America/Winnipeg\r', 1),
(218, 'America/Yakutat\r', 1),
(219, 'America/Yellowknife\r', 1),
(220, 'Antarctica/Casey\r', 1),
(221, 'Antarctica/Davis\r', 1),
(222, 'Antarctica/DumontDUrville\r', 1),
(223, 'Antarctica/Macquarie\r', 1),
(224, 'Antarctica/Mawson\r', 1),
(225, 'Antarctica/McMurdo\r', 1),
(226, 'Antarctica/Palmer\r', 1),
(227, 'Antarctica/Rothera\r', 1),
(228, 'Antarctica/South_Pole\r', 1),
(229, 'Antarctica/Syowa\r', 1),
(230, 'Antarctica/Vostok\r', 1),
(231, 'Arctic/Longyearbyen\r', 1),
(232, 'Asia/Aden\r', 1),
(233, 'Asia/Almaty\r', 1),
(234, 'Asia/Amman\r', 1),
(235, 'Asia/Anadyr\r', 1),
(236, 'Asia/Aqtau\r', 1),
(237, 'Asia/Aqtobe\r', 1),
(238, 'Asia/Ashgabat\r', 1),
(239, 'Asia/Ashkhabad\r', 1),
(240, 'Asia/Baghdad\r', 1),
(241, 'Asia/Bahrain\r', 1),
(242, 'Asia/Baku\r', 1),
(243, 'Asia/Bangkok\r', 1),
(244, 'Asia/Beirut\r', 1),
(245, 'Asia/Bishkek\r', 1),
(246, 'Asia/Brunei\r', 1),
(247, 'Asia/Calcutta\r', 1),
(248, 'Asia/Choibalsan\r', 1),
(249, 'Asia/Chongqing\r', 1),
(250, 'Asia/Chungking\r', 1),
(251, 'Asia/Colombo\r', 1),
(252, 'Asia/Dacca\r', 1),
(253, 'Asia/Damascus\r', 1),
(254, 'Asia/Dhaka\r', 1),
(255, 'Asia/Dili\r', 1),
(256, 'Asia/Dubai\r', 1),
(257, 'Asia/Dushanbe\r', 1),
(258, 'Asia/Gaza\r', 1),
(259, 'Asia/Harbin\r', 1),
(260, 'Asia/Hebron\r', 1),
(261, 'Asia/Ho_Chi_Minh\r', 1),
(262, 'Asia/Hong_Kong\r', 1),
(263, 'Asia/Hovd\r', 1),
(264, 'Asia/Irkutsk\r', 1),
(265, 'Asia/Istanbul\r', 1),
(266, 'Asia/Jakarta\r', 1),
(267, 'Asia/Jayapura\r', 1),
(268, 'Asia/Jerusalem\r', 1),
(269, 'Asia/Kabul\r', 1),
(270, 'Asia/Kamchatka\r', 1),
(271, 'Asia/Karachi\r', 1),
(272, 'Asia/Kashgar\r', 1),
(273, 'Asia/Kathmandu\r', 1),
(274, 'Asia/Katmandu\r', 1),
(275, 'Asia/Kolkata\r', 1),
(276, 'Asia/Krasnoyarsk\r', 1),
(277, 'Asia/Kuala_Lumpur\r', 1),
(278, 'Asia/Kuching\r', 1),
(279, 'Asia/Kuwait\r', 1),
(280, 'Asia/Macao\r', 1),
(281, 'Asia/Macau\r', 1),
(282, 'Asia/Magadan\r', 1),
(283, 'Asia/Makassar\r', 1),
(284, 'Asia/Manila\r', 1),
(285, 'Asia/Muscat\r', 1),
(286, 'Asia/Nicosia\r', 1),
(287, 'Asia/Novokuznetsk\r', 1),
(288, 'Asia/Novosibirsk\r', 1),
(289, 'Asia/Omsk\r', 1),
(290, 'Asia/Oral\r', 1),
(291, 'Asia/Phnom_Penh\r', 1),
(292, 'Asia/Pontianak\r', 1),
(293, 'Asia/Pyongyang\r', 1),
(294, 'Asia/Qatar\r', 1),
(295, 'Asia/Qyzylorda\r', 1),
(296, 'Asia/Rangoon\r', 1),
(297, 'Asia/Riyadh\r', 1),
(298, 'Asia/Saigon\r', 1),
(299, 'Asia/Sakhalin\r', 1),
(300, 'Asia/Samarkand\r', 1),
(301, 'Asia/Seoul\r', 1),
(302, 'Asia/Shanghai\r', 1),
(303, 'Asia/Singapore\r', 1),
(304, 'Asia/Taipei\r', 1),
(305, 'Asia/Tashkent\r', 1),
(306, 'Asia/Tbilisi\r', 1),
(307, 'Asia/Tehran\r', 1),
(308, 'Asia/Tel_Aviv\r', 1),
(309, 'Asia/Thimbu\r', 1),
(310, 'Asia/Thimphu\r', 1),
(311, 'Asia/Tokyo\r', 1),
(312, 'Asia/Ujung_Pandang\r', 1),
(313, 'Asia/Ulaanbaatar\r', 1),
(314, 'Asia/Ulan_Bator\r', 1),
(315, 'Asia/Urumqi\r', 1),
(316, 'Asia/Vientiane\r', 1),
(317, 'Asia/Vladivostok\r', 1),
(318, 'Asia/Yakutsk\r', 1),
(319, 'Asia/Yekaterinburg\r', 1),
(320, 'Asia/Yerevan\r', 1),
(321, 'Atlantic/Azores\r', 1),
(322, 'Atlantic/Bermuda\r', 1),
(323, 'Atlantic/Canary\r', 1),
(324, 'Atlantic/Cape_Verde\r', 1),
(325, 'Atlantic/Faeroe\r', 1),
(326, 'Atlantic/Faroe\r', 1),
(327, 'Atlantic/Jan_Mayen\r', 1),
(328, 'Atlantic/Madeira\r', 1),
(329, 'Atlantic/Reykjavik\r', 1),
(330, 'Atlantic/South_Georgia\r', 1),
(331, 'Atlantic/St_Helena\r', 1),
(332, 'Atlantic/Stanley\r', 1),
(333, 'Australia/ACT\r', 1),
(334, 'Australia/Adelaide\r', 1),
(335, 'Australia/Brisbane\r', 1),
(336, 'Australia/Broken_Hill\r', 1),
(337, 'Australia/Canberra\r', 1),
(338, 'Australia/Currie\r', 1),
(339, 'Australia/Darwin\r', 1),
(340, 'Australia/Eucla\r', 1),
(341, 'Australia/Hobart\r', 1),
(342, 'Australia/LHI\r', 1),
(343, 'Australia/Lindeman\r', 1),
(344, 'Australia/Lord_Howe\r', 1),
(345, 'Australia/Melbourne\r', 1),
(346, 'Australia/North\r', 1),
(347, 'Australia/NSW\r', 1),
(348, 'Australia/Perth\r', 1),
(349, 'Australia/Queensland\r', 1),
(350, 'Australia/South\r', 1),
(351, 'Australia/Sydney\r', 1),
(352, 'Australia/Tasmania\r', 1),
(353, 'Australia/Victoria\r', 1),
(354, 'Australia/West\r', 1),
(355, 'Australia/Yancowinna\r', 1),
(356, 'Brazil/Acre\r', 1),
(357, 'Brazil/DeNoronha\r', 1),
(358, 'Brazil/East\r', 1),
(359, 'Brazil/West\r', 1),
(360, 'Canada/Atlantic\r', 1),
(361, 'Canada/Central\r', 1),
(362, 'Canada/Eastern\r', 1),
(363, 'Canada/East-Saskatchewan\r', 1),
(364, 'Canada/Mountain\r', 1),
(365, 'Canada/Newfoundland\r', 1),
(366, 'Canada/Pacific\r', 1),
(367, 'Canada/Saskatchewan\r', 1),
(368, 'Canada/Yukon\r', 1),
(369, 'CET\r', 1),
(370, 'Chile/Continental\r', 1),
(371, 'Chile/EasterIsland\r', 1),
(372, 'CST6CDT\r', 1),
(373, 'Cuba\r', 1),
(374, 'EET\r', 1),
(375, 'Egypt\r', 1),
(376, 'Eire\r', 1),
(377, 'EST\r', 1),
(378, 'EST5EDT\r', 1),
(379, 'Etc./GMT\r', 1),
(380, 'Etc./GMT+0\r', 1),
(381, 'Etc./UCT\r', 1),
(382, 'Etc./Universal\r', 1),
(383, 'Etc./UTC\r', 1),
(384, 'Etc./Zulu\r', 1),
(385, 'Europe/Amsterdam\r', 1),
(386, 'Europe/Andorra\r', 1),
(387, 'Europe/Athens\r', 1),
(388, 'Europe/Belfast\r', 1),
(389, 'Europe/Belgrade\r', 1),
(390, 'Europe/Berlin\r', 1),
(391, 'Europe/Bratislava\r', 1),
(392, 'Europe/Brussels\r', 1),
(393, 'Europe/Bucharest\r', 1),
(394, 'Europe/Budapest\r', 1),
(395, 'Europe/Chisinau\r', 1),
(396, 'Europe/Copenhagen\r', 1),
(397, 'Europe/Dublin\r', 1),
(398, 'Europe/Gibraltar\r', 1),
(399, 'Europe/Guernsey\r', 1),
(400, 'Europe/Helsinki\r', 1),
(401, 'Europe/Isle_of_Man\r', 1),
(402, 'Europe/Istanbul\r', 1),
(403, 'Europe/Jersey\r', 1),
(404, 'Europe/Kaliningrad\r', 1),
(405, 'Europe/Kiev\r', 1),
(406, 'Europe/Lisbon\r', 1),
(407, 'Europe/Ljubljana\r', 1),
(408, 'Europe/London\r', 1),
(409, 'Europe/Luxembourg\r', 1),
(410, 'Europe/Madrid\r', 1),
(411, 'Europe/Malta\r', 1),
(412, 'Europe/Mariehamn\r', 1),
(413, 'Europe/Minsk\r', 1),
(414, 'Europe/Monaco\r', 1),
(415, 'Europe/Moscow\r', 1),
(416, 'Europe/Nicosia\r', 1),
(417, 'Europe/Oslo\r', 1),
(418, 'Europe/Paris\r', 1),
(419, 'Europe/Podgorica\r', 1),
(420, 'Europe/Prague\r', 1),
(421, 'Europe/Riga\r', 1),
(422, 'Europe/Rome\r', 1),
(423, 'Europe/Samara\r', 1),
(424, 'Europe/San_Marino\r', 1),
(425, 'Europe/Sarajevo\r', 1),
(426, 'Europe/Simferopol\r', 1),
(427, 'Europe/Skopje\r', 1),
(428, 'Europe/Sofia\r', 1),
(429, 'Europe/Stockholm\r', 1),
(430, 'Europe/Tallinn\r', 1),
(431, 'Europe/Tirane\r', 1),
(432, 'Europe/Tiraspol\r', 1),
(433, 'Europe/Uzhgorod\r', 1),
(434, 'Europe/Vaduz\r', 1),
(435, 'Europe/Vatican\r', 1),
(436, 'Europe/Vienna\r', 1),
(437, 'Europe/Vilnius\r', 1),
(438, 'Europe/Volgograd\r', 1),
(439, 'Europe/Warsaw\r', 1),
(440, 'Europe/Zagreb\r', 1),
(441, 'Europe/Zaporozhye\r', 1),
(442, 'Europe/Zurich\r', 1),
(443, 'GB\r', 1),
(444, 'GB-Eire\r', 1),
(445, 'GMT\r', 1),
(446, 'GMT+0\r', 1),
(447, 'GMT0\r', 1),
(448, 'GMT-0\r', 1),
(449, 'Greenwich\r', 1),
(450, 'Hong Kong\r', 1),
(451, 'HST\r', 1),
(452, 'Iceland\r', 1),
(453, 'Indian/Antananarivo\r', 1),
(454, 'Indian/Chagos\r', 1),
(455, 'Indian/Christmas\r', 1),
(456, 'Indian/Cocos\r', 1),
(457, 'Indian/Comoro\r', 1),
(458, 'Indian/Kerguelen\r', 1),
(459, 'Indian/Mahe\r', 1),
(460, 'Indian/Maldives\r', 1),
(461, 'Indian/Mauritius\r', 1),
(462, 'Indian/Mayotte\r', 1),
(463, 'Indian/Reunion\r', 1),
(464, 'Iran\r', 1),
(465, 'Israel\r', 1),
(466, 'Jamaica\r', 1),
(467, 'Japan\r', 1),
(468, 'JST-9\r', 1),
(469, 'Kwajalein\r', 1),
(470, 'Libya\r', 1),
(471, 'MET\r', 1),
(472, 'Mexico/BajaNorte\r', 1),
(473, 'Mexico/BajaSur\r', 1),
(474, 'Mexico/General\r', 1),
(475, 'MST\r', 1),
(476, 'MST7MDT\r', 1),
(477, 'Navajo\r', 1),
(478, 'NZ\r', 1),
(479, 'NZ-CHAT\r', 1),
(480, 'Pacific/Apia\r', 1),
(481, 'Pacific/Auckland\r', 1),
(482, 'Pacific/Chatham\r', 1),
(483, 'Pacific/Chuuk\r', 1),
(484, 'Pacific/Easter\r', 1),
(485, 'Pacific/Efate\r', 1),
(486, 'Pacific/Enderbury\r', 1),
(487, 'Pacific/Fakaofo\r', 1),
(488, 'Pacific/Fiji\r', 1),
(489, 'Pacific/Funafuti\r', 1),
(490, 'Pacific/Galapagos\r', 1),
(491, 'Pacific/Gambier\r', 1),
(492, 'Pacific/Guadalcanal\r', 1),
(493, 'Pacific/Guam\r', 1),
(494, 'Pacific/Honolulu\r', 1),
(495, 'Pacific/Johnston\r', 1),
(496, 'Pacific/Kiritimati\r', 1),
(497, 'Pacific/Kosrae\r', 1),
(498, 'Pacific/Kwajalein\r', 1),
(499, 'Pacific/Majuro\r', 1),
(500, 'Pacific/Marquesas\r', 1),
(501, 'Pacific/Midway\r', 1),
(502, 'Pacific/Nauru\r', 1),
(503, 'Pacific/Niue\r', 1),
(504, 'Pacific/Norfolk\r', 1),
(505, 'Pacific/Noumea\r', 1),
(506, 'Pacific/Pago_Pago\r', 1),
(507, 'Pacific/Palau\r', 1),
(508, 'Pacific/Pitcairn\r', 1),
(509, 'Pacific/Pohnpei\r', 1),
(510, 'Pacific/Ponape\r', 1),
(511, 'Pacific/Port_Moresby\r', 1),
(512, 'Pacific/Rarotonga\r', 1),
(513, 'Pacific/Saipan\r', 1),
(514, 'Pacific/Samoa\r', 1),
(515, 'Pacific/Tahiti\r', 1),
(516, 'Pacific/Tarawa\r', 1),
(517, 'Pacific/Tongatapu\r', 1),
(518, 'Pacific/Truk\r', 1),
(519, 'Pacific/Wake\r', 1),
(520, 'Pacific/Wallis\r', 1),
(521, 'Pacific/Yap\r', 1),
(522, 'Poland\r', 1),
(523, 'Portugal\r', 1),
(524, 'PRC\r', 1),
(525, 'PST8PDT\r', 1),
(526, 'ROC\r', 1),
(527, 'ROK\r', 1),
(528, 'Singapore\r', 1),
(529, 'Turkey\r', 1),
(530, 'UCT\r', 1),
(531, 'Universal\r', 1),
(532, 'US/Alaska\r', 1),
(533, 'US/Aleutian\r', 1),
(534, 'US/Arizona\r', 1),
(535, 'US/Central\r', 1),
(536, 'US/Eastern\r', 1),
(537, 'US/East-Indiana\r', 1),
(538, 'US/Hawaii\r', 1),
(539, 'US/Indiana-Starke\r', 1),
(540, 'US/Michigan\r', 1),
(541, 'US/Mountain\r', 1),
(542, 'US/Pacific\r', 1),
(543, 'US/Pacific-New\r', 1),
(544, 'US/Samoa\r', 1),
(545, 'UTC\r', 1),
(546, 'WET\r', 1),
(547, 'W-SU\r', 1),
(548, 'Zulu\r', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_twilio`
--

CREATE TABLE `db_twilio` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `account_sid` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auth_token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twilio_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_twilio`
--

INSERT INTO `db_twilio` (`id`, `store_id`, `account_sid`, `auth_token`, `twilio_phone`, `status`) VALUES
(1, 1, '', '', '', 0),
(3, 2, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_units`
--

CREATE TABLE `db_units` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_units`
--

INSERT INTO `db_units` (`id`, `store_id`, `unit_name`, `description`, `company_id`, `status`) VALUES
(6, 2, 'PCS', '', NULL, 1),
(7, 2, 'BOX', 'BOX', NULL, 1),
(8, 2, '27ADWPG9379H1ZN', '', NULL, 1),
(9, 2, '27COYPS0394M1ZS', '', NULL, 1),
(10, 2, '27AAEPM1662N1ZE', '', NULL, 1),
(11, 2, '27ABNFS8941G1ZL', '', NULL, 1),
(12, 2, '27AAXPF5695B1ZA', '', NULL, 1),
(13, 2, '27AAACT2317A1ZZ', '', NULL, 1),
(14, 2, '27AWTPP2063M1ZS', '', NULL, 1),
(15, 2, '27AAHFC5986A1ZE', '', NULL, 1),
(16, 2, '27ACGPG0711L1ZU', '', NULL, 1),
(17, 2, '27AACFW8773G1ZO', '', NULL, 1),
(18, 2, '27ANDPN5255G1ZX', '', NULL, 1),
(19, 2, '27AALFG9235E1Z8', '', NULL, 1),
(20, 2, '27BSXPS9318H1ZR', '', NULL, 1),
(21, 2, '27AJWPK6652K1ZD', '', NULL, 1),
(22, 2, '27AAAFU1018J1ZD', '', NULL, 1),
(23, 2, '27AAACI5950L1ZA', '', NULL, 1),
(24, 2, '27AGWPP1465C1Z3', '', NULL, 1),
(25, 2, '27DOVPD0119L1Z9', '', NULL, 1),
(26, 2, '27AOWPS9274E1Z0', '', NULL, 1),
(27, 2, '27AACCT0200E1Z3', '', NULL, 1),
(28, 2, '27AAAFZ5877G1ZO', '', NULL, 1),
(29, 2, '27AAICS9356G', '', NULL, 1),
(30, 2, '27BHGPC3333L1ZF', '', NULL, 1),
(31, 2, '27AKFPB3371A1ZS', '', NULL, 1),
(32, 2, '27AADCF5427G1ZP', '', NULL, 1),
(33, 2, '27AAACC4209Q1ZG', '', NULL, 1),
(34, 2, '27AABCG4138R1Z5', '', NULL, 1),
(35, 2, '27AAACW1300L1ZK', '', NULL, 1),
(36, 2, '27AANFA6218M1Z2', '', NULL, 1),
(37, 2, '27GHAPS4183R1ZE', '', NULL, 1),
(38, 2, '27APQPK4573F2ZH', '', NULL, 1),
(39, 2, '27AFPPB2892F1ZB', '', NULL, 1),
(40, 2, '24CLIPM0295C1ZB', '', NULL, 1),
(41, 2, '27AAHCD8474D1ZG', '', NULL, 1),
(42, 2, '27ESYPB3514G1ZK', '', NULL, 1),
(43, 2, '27AAXCS9818A1ZT', '', NULL, 1),
(44, 2, '27ACTPM6953H1ZW', '', NULL, 1),
(45, 2, '27AIZPG6478P1ZY', '', NULL, 1),
(46, 2, '27AAHPP7371G1ZD', '', NULL, 1),
(47, 2, '27AAVFD2819D1ZB', '', NULL, 1),
(48, 2, '27AAACE2757R2Z2', '', NULL, 1),
(49, 2, '27BAIPJ7361J1ZC', '', NULL, 1),
(50, 2, '27DDPPP9380H1ZP', '', NULL, 1),
(51, 2, '27AABPV4721A1Z1', '', NULL, 1),
(52, 2, '27AVFPS8618E1Z9', '', NULL, 1),
(53, 2, '27AAJCD8219Q1ZW', '', NULL, 1),
(54, 2, '27KFDPS0575C1ZA', '', NULL, 1),
(55, 2, '27AANCP8460F1Z0', '', NULL, 1),
(56, 2, '27AUEPA0063D1ZD', '', NULL, 1),
(57, 2, '29AAYCA6430H1Z6', '', NULL, 1),
(58, 2, '27AASCA3355K1Z7', '', NULL, 1),
(59, 2, '24AAYFA9425B2ZC', '', NULL, 1),
(60, 2, '27ADDFS6163Q1ZC', '', NULL, 1),
(61, 2, '27BADPV3088D1ZI', '', NULL, 1),
(62, 2, '27AFTPK6826J1ZR', '', NULL, 1),
(63, 2, '27ALGPD5253P1ZR', '', NULL, 1),
(64, 2, '27AAFCB9987P1ZJ', '', NULL, 1),
(65, 2, '27AANFM9844R1Z2', '', NULL, 1),
(66, 2, '27AAMFN0933H1Z7', '', NULL, 1),
(67, 2, '27ACYPJ0718N2ZX', '', NULL, 1),
(68, 2, '27AFUPK9760Q1Z5', '', NULL, 1),
(69, 2, '27SSCCI8381H1ZA', '', NULL, 1),
(70, 2, '27AJZPB8903F1ZW', '', NULL, 1),
(71, 2, '27AAEPJ2904J1ZU', '', NULL, 1),
(72, 2, '27AACCM4684P1ZR', '', NULL, 1),
(73, 2, '27AAVFM3835G1ZU', '', NULL, 1),
(74, 2, '27AAACH1632E1Z3', '', NULL, 1),
(75, 2, '27AAGCK6449J1Z2', '', NULL, 1),
(76, 2, '27AESFS6470C1ZM', '', NULL, 1),
(77, 2, '27AALPF6235H1ZO', '', NULL, 1),
(78, 2, '27ACAFM9113C1ZK', '', NULL, 1),
(79, 2, '27AARFK1716E1ZC', '', NULL, 1),
(80, 2, 'PIECES', '', NULL, 1),
(81, 2, 'PAC', '', NULL, 1),
(82, 2, 'BTL', '', NULL, 1),
(83, 2, 'CAN', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `password` blob DEFAULT NULL,
  `member_of` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `photo` blob DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` blob DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `profile_picture` text DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(100) DEFAULT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `status` double DEFAULT NULL,
  `creater_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`id`, `store_id`, `username`, `first_name`, `last_name`, `password`, `member_of`, `firstname`, `lastname`, `mobile`, `email`, `photo`, `gender`, `dob`, `country`, `state`, `city`, `address`, `postcode`, `role_name`, `role_id`, `profile_picture`, `created_date`, `created_time`, `created_by`, `system_ip`, `system_name`, `status`, `creater_id`, `updater_id`, `updated_at`) VALUES
(1, 1, 'Admin', 'Super', 'Power', 0x6531306164633339343962613539616262653536653035376632306638383365, '', NULL, NULL, '', 'super@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'uploads/users/admin.png', '2018-11-27', '::1', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 2, 'Frozenwala', 'Frozen', 'Food', 0x6531306164633339343962613539616262653536653035376632306638383365, NULL, NULL, NULL, '', 'admin@frozenwala.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'uploads/users/bg.png', '2021-02-12', '05:53:37 pm', '', '127.0.0.1', 'LAPTOP-I5OUIM4R', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_userswarehouses`
--

CREATE TABLE `db_userswarehouses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_variants`
--

CREATE TABLE `db_variants` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `variant_code` varchar(50) DEFAULT NULL,
  `variant_name` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_warehouse`
--

CREATE TABLE `db_warehouse` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_type` varchar(50) DEFAULT NULL,
  `warehouse_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_warehouse`
--

INSERT INTO `db_warehouse` (`id`, `store_id`, `warehouse_type`, `warehouse_name`, `mobile`, `email`, `status`, `created_date`) VALUES
(2, 2, 'System', 'Frozen Warehouse', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_warehouseitems`
--

CREATE TABLE `db_warehouseitems` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `available_qty` double(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_warehouseitems`
--

INSERT INTO `db_warehouseitems` (`id`, `store_id`, `warehouse_id`, `item_id`, `available_qty`) VALUES
(1211, 2, 2, 2, 30.00),
(1212, 2, 2, 3, 30.00),
(1213, 2, 2, 4, 38.00),
(1214, 2, 2, 5, 21.00),
(1215, 2, 2, 6, 11.00),
(1216, 2, 2, 509, 100.00),
(1217, 2, 2, 512, 10.00),
(1218, 2, 2, 513, 10.00),
(1219, 2, 2, 514, 10.00),
(1220, 2, 2, 515, 10.00),
(1221, 2, 2, 516, 10.00),
(1222, 2, 2, 517, 10.00),
(1223, 2, 2, 518, 11.00),
(1224, 2, 2, 1, 44.00),
(1225, 2, 2, 57, 30.00),
(1226, 2, 2, 67, 15.00);

-- --------------------------------------------------------

--
-- Table structure for table `ecomApp_stock`
--

CREATE TABLE `ecomApp_stock` (
  `id` int(11) NOT NULL,
  `openingstock` int(11) NOT NULL,
  `item_id_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT 0,
  `piece_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `ecomApp_stock`
--

INSERT INTO `ecomApp_stock` (`id`, `openingstock`, `item_id_id`, `created_at`, `updated_at`, `flag`, `piece_count`) VALUES
(9, 100, 509, '2025-05-04 14:03:53', '2025-05-04 14:03:53', 1, 1),
(10, 10, 517, '2025-05-05 12:10:24', '2025-05-05 12:10:24', 1, 1),
(11, 11, 518, '2025-05-05 12:12:12', '2025-05-05 12:12:12', 1, 1),
(12, 0, 5, '2025-05-05 17:33:24', '2025-05-05 17:33:24', 1, 0),
(14, 11, 6, '2025-05-06 16:31:13', '2025-05-06 16:31:13', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `temp_holdinvoice`
--

CREATE TABLE `temp_holdinvoice` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `reference_id` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `item_price` double(10,2) DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `system_ip` varchar(50) DEFAULT NULL,
  `system_name` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_accounts`
--
ALTER TABLE `ac_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `paymenttypes_id` (`paymenttypes_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `expense_id` (`expense_id`);

--
-- Indexes for table `ac_moneydeposits`
--
ALTER TABLE `ac_moneydeposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_account_id` (`debit_account_id`),
  ADD KEY `to_account_id` (`credit_account_id`),
  ADD KEY `db_moneydeposits_ibfk_3` (`store_id`);

--
-- Indexes for table `ac_moneytransfer`
--
ALTER TABLE `ac_moneytransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_account_id` (`debit_account_id`),
  ADD KEY `to_account_id` (`credit_account_id`),
  ADD KEY `db_moneytransfer_ibfk_3` (`store_id`);

--
-- Indexes for table `ac_transactions`
--
ALTER TABLE `ac_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_id` (`transaction_type`),
  ADD KEY `account_id` (`debit_account_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `ac_accounts_id` (`ref_accounts_id`),
  ADD KEY `ac_moneytransfer_id` (`ref_moneytransfer_id`),
  ADD KEY `ac_moneydeposits_id` (`ref_moneydeposits_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `ref_salespayments_id` (`ref_salespayments_id`),
  ADD KEY `ref_purchasepayments_id` (`ref_purchasepayments_id`),
  ADD KEY `ref_purchasepaymentsreturn_id` (`ref_purchasepaymentsreturn_id`),
  ADD KEY `ac_transactions_ibfk_9` (`ref_salespaymentsreturn_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `ref_expense_id` (`ref_expense_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `db_bankdetails`
--
ALTER TABLE `db_bankdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_brands`
--
ALTER TABLE `db_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_chalan`
--
ALTER TABLE `db_chalan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_chalan_item`
--
ALTER TABLE `db_chalan_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_cobpayments`
--
ALTER TABLE `db_cobpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_country`
--
ALTER TABLE `db_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_coupons`
--
ALTER TABLE `db_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_currency`
--
ALTER TABLE `db_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_custadvance`
--
ALTER TABLE `db_custadvance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_customers`
--
ALTER TABLE `db_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_customer_coupons`
--
ALTER TABLE `db_customer_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `db_customer_payments`
--
ALTER TABLE `db_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `salespayment_id` (`salespayment_id`);

--
-- Indexes for table `db_emailtemplates`
--
ALTER TABLE `db_emailtemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_expense`
--
ALTER TABLE `db_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `db_expense_category`
--
ALTER TABLE `db_expense_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_finance`
--
ALTER TABLE `db_finance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_fivemojo`
--
ALTER TABLE `db_fivemojo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_hold`
--
ALTER TABLE `db_hold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `db_holditems`
--
ALTER TABLE `db_holditems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `sales_id` (`hold_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `db_instamojo`
--
ALTER TABLE `db_instamojo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_instamojopayments`
--
ALTER TABLE `db_instamojopayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_items`
--
ALTER TABLE `db_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_item_serials`
--
ALTER TABLE `db_item_serials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`,`serial_no`);

--
-- Indexes for table `db_languages`
--
ALTER TABLE `db_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_package`
--
ALTER TABLE `db_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_paymenttypes`
--
ALTER TABLE `db_paymenttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_paypal`
--
ALTER TABLE `db_paypal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_paypalpaylog`
--
ALTER TABLE `db_paypalpaylog`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `db_permissions`
--
ALTER TABLE `db_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_purchase`
--
ALTER TABLE `db_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `db_purchaseitems`
--
ALTER TABLE `db_purchaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `db_purchaseitemsreturn`
--
ALTER TABLE `db_purchaseitemsreturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `db_purchasepayments`
--
ALTER TABLE `db_purchasepayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `db_purchasepaymentsreturn`
--
ALTER TABLE `db_purchasepaymentsreturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `db_purchasereturn`
--
ALTER TABLE `db_purchasereturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `db_quotation`
--
ALTER TABLE `db_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `db_quotationitems`
--
ALTER TABLE `db_quotationitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `quotation_id` (`quotation_id`);

--
-- Indexes for table `db_roles`
--
ALTER TABLE `db_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_sales`
--
ALTER TABLE `db_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `db_salesitems`
--
ALTER TABLE `db_salesitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `sales_id` (`sales_id`);

--
-- Indexes for table `db_salesitemsreturn`
--
ALTER TABLE `db_salesitemsreturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `return_id` (`return_id`);

--
-- Indexes for table `db_salespayments`
--
ALTER TABLE `db_salespayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `db_salespaymentsreturn`
--
ALTER TABLE `db_salespaymentsreturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `db_salespaymentsreturn_ibfk_3` (`customer_id`);

--
-- Indexes for table `db_salesreturn`
--
ALTER TABLE `db_salesreturn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `db_shippingaddress`
--
ALTER TABLE `db_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `db_sitesettings`
--
ALTER TABLE `db_sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_smsapi`
--
ALTER TABLE `db_smsapi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_smstemplates`
--
ALTER TABLE `db_smstemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_sobpayments`
--
ALTER TABLE `db_sobpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_states`
--
ALTER TABLE `db_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_stockadjustment`
--
ALTER TABLE `db_stockadjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_stockadjustmentitems`
--
ALTER TABLE `db_stockadjustmentitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`adjustment_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `db_stockentry`
--
ALTER TABLE `db_stockentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_stocktransfer`
--
ALTER TABLE `db_stocktransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `warehouse_id` (`warehouse_from`),
  ADD KEY `warehouse_to` (`warehouse_to`),
  ADD KEY `db_stocktransfer_ibfk_4` (`to_store_id`);

--
-- Indexes for table `db_stocktransferitems`
--
ALTER TABLE `db_stocktransferitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `warehouse_from` (`warehouse_from`),
  ADD KEY `warehouse_to` (`warehouse_to`),
  ADD KEY `stocktranfer_id` (`stocktransfer_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `db_stocktransferitems_ibfk_6` (`to_store_id`);

--
-- Indexes for table `db_store`
--
ALTER TABLE `db_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_stripe`
--
ALTER TABLE `db_stripe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_stripepayments`
--
ALTER TABLE `db_stripepayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_subscription`
--
ALTER TABLE `db_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_suppliers`
--
ALTER TABLE `db_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_supplier_payments`
--
ALTER TABLE `db_supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `purchasepayment_id` (`purchasepayment_id`);

--
-- Indexes for table `db_tax`
--
ALTER TABLE `db_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_timezone`
--
ALTER TABLE `db_timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_twilio`
--
ALTER TABLE `db_twilio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_units`
--
ALTER TABLE `db_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_userswarehouses`
--
ALTER TABLE `db_userswarehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `db_variants`
--
ALTER TABLE `db_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_warehouse`
--
ALTER TABLE `db_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `db_warehouseitems`
--
ALTER TABLE `db_warehouseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ecomApp_stock`
--
ALTER TABLE `ecomApp_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id_id` (`item_id_id`);

--
-- Indexes for table `temp_holdinvoice`
--
ALTER TABLE `temp_holdinvoice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_accounts`
--
ALTER TABLE `ac_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ac_moneydeposits`
--
ALTER TABLE `ac_moneydeposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ac_moneytransfer`
--
ALTER TABLE `ac_moneytransfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ac_transactions`
--
ALTER TABLE `ac_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_bankdetails`
--
ALTER TABLE `db_bankdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_brands`
--
ALTER TABLE `db_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_chalan`
--
ALTER TABLE `db_chalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_chalan_item`
--
ALTER TABLE `db_chalan_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_cobpayments`
--
ALTER TABLE `db_cobpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_country`
--
ALTER TABLE `db_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `db_coupons`
--
ALTER TABLE `db_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_currency`
--
ALTER TABLE `db_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `db_custadvance`
--
ALTER TABLE `db_custadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_customers`
--
ALTER TABLE `db_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_customer_coupons`
--
ALTER TABLE `db_customer_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_customer_payments`
--
ALTER TABLE `db_customer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_emailtemplates`
--
ALTER TABLE `db_emailtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_expense`
--
ALTER TABLE `db_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `db_expense_category`
--
ALTER TABLE `db_expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_finance`
--
ALTER TABLE `db_finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `db_fivemojo`
--
ALTER TABLE `db_fivemojo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_hold`
--
ALTER TABLE `db_hold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_holditems`
--
ALTER TABLE `db_holditems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_instamojo`
--
ALTER TABLE `db_instamojo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_instamojopayments`
--
ALTER TABLE `db_instamojopayments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_items`
--
ALTER TABLE `db_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1470;

--
-- AUTO_INCREMENT for table `db_item_serials`
--
ALTER TABLE `db_item_serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `db_languages`
--
ALTER TABLE `db_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_package`
--
ALTER TABLE `db_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_paymenttypes`
--
ALTER TABLE `db_paymenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `db_paypal`
--
ALTER TABLE `db_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_paypalpaylog`
--
ALTER TABLE `db_paypalpaylog`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_permissions`
--
ALTER TABLE `db_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6216;

--
-- AUTO_INCREMENT for table `db_purchase`
--
ALTER TABLE `db_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_purchaseitems`
--
ALTER TABLE `db_purchaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3536;

--
-- AUTO_INCREMENT for table `db_purchaseitemsreturn`
--
ALTER TABLE `db_purchaseitemsreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_purchasepayments`
--
ALTER TABLE `db_purchasepayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1107;

--
-- AUTO_INCREMENT for table `db_purchasepaymentsreturn`
--
ALTER TABLE `db_purchasepaymentsreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_purchasereturn`
--
ALTER TABLE `db_purchasereturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_quotation`
--
ALTER TABLE `db_quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_quotationitems`
--
ALTER TABLE `db_quotationitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `db_roles`
--
ALTER TABLE `db_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_sales`
--
ALTER TABLE `db_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_salesitems`
--
ALTER TABLE `db_salesitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15703;

--
-- AUTO_INCREMENT for table `db_salesitemsreturn`
--
ALTER TABLE `db_salesitemsreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_salespayments`
--
ALTER TABLE `db_salespayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `db_salespaymentsreturn`
--
ALTER TABLE `db_salespaymentsreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_salesreturn`
--
ALTER TABLE `db_salesreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `db_shippingaddress`
--
ALTER TABLE `db_shippingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT for table `db_sitesettings`
--
ALTER TABLE `db_sitesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_smsapi`
--
ALTER TABLE `db_smsapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `db_smstemplates`
--
ALTER TABLE `db_smstemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_sobpayments`
--
ALTER TABLE `db_sobpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_states`
--
ALTER TABLE `db_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `db_stockadjustment`
--
ALTER TABLE `db_stockadjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;

--
-- AUTO_INCREMENT for table `db_stockadjustmentitems`
--
ALTER TABLE `db_stockadjustmentitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `db_stockentry`
--
ALTER TABLE `db_stockentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_stocktransfer`
--
ALTER TABLE `db_stocktransfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_stocktransferitems`
--
ALTER TABLE `db_stocktransferitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_store`
--
ALTER TABLE `db_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_stripe`
--
ALTER TABLE `db_stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_stripepayments`
--
ALTER TABLE `db_stripepayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_subscription`
--
ALTER TABLE `db_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_suppliers`
--
ALTER TABLE `db_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `db_supplier_payments`
--
ALTER TABLE `db_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_tax`
--
ALTER TABLE `db_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_timezone`
--
ALTER TABLE `db_timezone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `db_twilio`
--
ALTER TABLE `db_twilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_units`
--
ALTER TABLE `db_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_userswarehouses`
--
ALTER TABLE `db_userswarehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_variants`
--
ALTER TABLE `db_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_warehouse`
--
ALTER TABLE `db_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_warehouseitems`
--
ALTER TABLE `db_warehouseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1228;

--
-- AUTO_INCREMENT for table `ecomApp_stock`
--
ALTER TABLE `ecomApp_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `temp_holdinvoice`
--
ALTER TABLE `temp_holdinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac_accounts`
--
ALTER TABLE `ac_accounts`
  ADD CONSTRAINT `ac_accounts_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_accounts_ibfk_2` FOREIGN KEY (`paymenttypes_id`) REFERENCES `db_paymenttypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_accounts_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_accounts_ibfk_4` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_accounts_ibfk_5` FOREIGN KEY (`expense_id`) REFERENCES `db_expense` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ac_moneydeposits`
--
ALTER TABLE `ac_moneydeposits`
  ADD CONSTRAINT `ac_moneydeposits_ibfk_1` FOREIGN KEY (`debit_account_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_moneydeposits_ibfk_2` FOREIGN KEY (`credit_account_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_moneydeposits_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ac_moneytransfer`
--
ALTER TABLE `ac_moneytransfer`
  ADD CONSTRAINT `ac_moneytransfer_ibfk_1` FOREIGN KEY (`debit_account_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_moneytransfer_ibfk_2` FOREIGN KEY (`credit_account_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_moneytransfer_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ac_transactions`
--
ALTER TABLE `ac_transactions`
  ADD CONSTRAINT `ac_transactions_ibfk_10` FOREIGN KEY (`ref_purchasepayments_id`) REFERENCES `db_purchasepayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_11` FOREIGN KEY (`ref_purchasepaymentsreturn_id`) REFERENCES `db_purchasepaymentsreturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_12` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_13` FOREIGN KEY (`ref_expense_id`) REFERENCES `db_expense` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_4` FOREIGN KEY (`ref_accounts_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_5` FOREIGN KEY (`ref_moneytransfer_id`) REFERENCES `ac_moneytransfer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_6` FOREIGN KEY (`ref_moneydeposits_id`) REFERENCES `ac_moneydeposits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_7` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_8` FOREIGN KEY (`ref_salespayments_id`) REFERENCES `db_salespayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_transactions_ibfk_9` FOREIGN KEY (`ref_salespaymentsreturn_id`) REFERENCES `db_salespaymentsreturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_bankdetails`
--
ALTER TABLE `db_bankdetails`
  ADD CONSTRAINT `db_bankdetails_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `db_brands`
--
ALTER TABLE `db_brands`
  ADD CONSTRAINT `db_brands_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_brands_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_category`
--
ALTER TABLE `db_category`
  ADD CONSTRAINT `db_category_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_coupons`
--
ALTER TABLE `db_coupons`
  ADD CONSTRAINT `db_coupons_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_coupons_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_custadvance`
--
ALTER TABLE `db_custadvance`
  ADD CONSTRAINT `db_custadvance_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_custadvance_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_customers`
--
ALTER TABLE `db_customers`
  ADD CONSTRAINT `db_customers_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_customer_coupons`
--
ALTER TABLE `db_customer_coupons`
  ADD CONSTRAINT `db_customer_coupons_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_customer_coupons_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_customer_coupons_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_customer_coupons_ibfk_4` FOREIGN KEY (`coupon_id`) REFERENCES `db_coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_customer_payments`
--
ALTER TABLE `db_customer_payments`
  ADD CONSTRAINT `db_customer_payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_customer_payments_ibfk_2` FOREIGN KEY (`salespayment_id`) REFERENCES `db_salespayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_emailtemplates`
--
ALTER TABLE `db_emailtemplates`
  ADD CONSTRAINT `db_emailtemplates_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_expense`
--
ALTER TABLE `db_expense`
  ADD CONSTRAINT `db_expense_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_expense_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `ac_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_expense_category`
--
ALTER TABLE `db_expense_category`
  ADD CONSTRAINT `db_expense_category_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_fivemojo`
--
ALTER TABLE `db_fivemojo`
  ADD CONSTRAINT `db_fivemojo_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_hold`
--
ALTER TABLE `db_hold`
  ADD CONSTRAINT `db_hold_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_hold_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_hold_ibfk_3` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_holditems`
--
ALTER TABLE `db_holditems`
  ADD CONSTRAINT `db_holditems_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_holditems_ibfk_2` FOREIGN KEY (`hold_id`) REFERENCES `db_hold` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_holditems_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_instamojo`
--
ALTER TABLE `db_instamojo`
  ADD CONSTRAINT `db_instamojo_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_items`
--
ALTER TABLE `db_items`
  ADD CONSTRAINT `db_items_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_package`
--
ALTER TABLE `db_package`
  ADD CONSTRAINT `db_package_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_paymenttypes`
--
ALTER TABLE `db_paymenttypes`
  ADD CONSTRAINT `db_paymenttypes_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_paypal`
--
ALTER TABLE `db_paypal`
  ADD CONSTRAINT `db_paypal_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_permissions`
--
ALTER TABLE `db_permissions`
  ADD CONSTRAINT `db_permissions_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchase`
--
ALTER TABLE `db_purchase`
  ADD CONSTRAINT `db_purchase_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchase_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchaseitems`
--
ALTER TABLE `db_purchaseitems`
  ADD CONSTRAINT `db_purchaseitems_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `db_purchase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchaseitemsreturn`
--
ALTER TABLE `db_purchaseitemsreturn`
  ADD CONSTRAINT `db_purchaseitemsreturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchaseitemsreturn_ibfk_2` FOREIGN KEY (`return_id`) REFERENCES `db_purchasereturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchasepayments`
--
ALTER TABLE `db_purchasepayments`
  ADD CONSTRAINT `db_purchasepayments_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchasepayments_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `db_purchase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchasepayments_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchasepaymentsreturn`
--
ALTER TABLE `db_purchasepaymentsreturn`
  ADD CONSTRAINT `db_purchasepaymentsreturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchasepaymentsreturn_ibfk_2` FOREIGN KEY (`return_id`) REFERENCES `db_purchasereturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchasepaymentsreturn_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_purchasereturn`
--
ALTER TABLE `db_purchasereturn`
  ADD CONSTRAINT `db_purchasereturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_purchasereturn_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `db_purchase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_quotation`
--
ALTER TABLE `db_quotation`
  ADD CONSTRAINT `db_quotation_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_quotation_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_quotation_ibfk_3` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_quotationitems`
--
ALTER TABLE `db_quotationitems`
  ADD CONSTRAINT `db_quotationitems_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_quotationitems_ibfk_2` FOREIGN KEY (`quotation_id`) REFERENCES `db_quotation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_roles`
--
ALTER TABLE `db_roles`
  ADD CONSTRAINT `db_roles_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_sales`
--
ALTER TABLE `db_sales`
  ADD CONSTRAINT `db_sales_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_sales_ibfk_3` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_sales_ibfk_4` FOREIGN KEY (`coupon_id`) REFERENCES `db_customer_coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_salesitems`
--
ALTER TABLE `db_salesitems`
  ADD CONSTRAINT `db_salesitems_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salesitems_ibfk_2` FOREIGN KEY (`sales_id`) REFERENCES `db_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_salesitemsreturn`
--
ALTER TABLE `db_salesitemsreturn`
  ADD CONSTRAINT `db_salesitemsreturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salesitemsreturn_ibfk_2` FOREIGN KEY (`return_id`) REFERENCES `db_salesreturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_salespayments`
--
ALTER TABLE `db_salespayments`
  ADD CONSTRAINT `db_salespayments_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salespayments_ibfk_2` FOREIGN KEY (`sales_id`) REFERENCES `db_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salespayments_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_salespaymentsreturn`
--
ALTER TABLE `db_salespaymentsreturn`
  ADD CONSTRAINT `db_salespaymentsreturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salespaymentsreturn_ibfk_2` FOREIGN KEY (`return_id`) REFERENCES `db_salesreturn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salespaymentsreturn_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_salesreturn`
--
ALTER TABLE `db_salesreturn`
  ADD CONSTRAINT `db_salesreturn_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salesreturn_ibfk_2` FOREIGN KEY (`sales_id`) REFERENCES `db_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_salesreturn_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `db_customer_coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_shippingaddress`
--
ALTER TABLE `db_shippingaddress`
  ADD CONSTRAINT `db_shippingaddress_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `db_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_shippingaddress_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_smsapi`
--
ALTER TABLE `db_smsapi`
  ADD CONSTRAINT `db_smsapi_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_smstemplates`
--
ALTER TABLE `db_smstemplates`
  ADD CONSTRAINT `db_smstemplates_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_states`
--
ALTER TABLE `db_states`
  ADD CONSTRAINT `db_states_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_stockadjustment`
--
ALTER TABLE `db_stockadjustment`
  ADD CONSTRAINT `db_stockadjustment_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_stockadjustmentitems`
--
ALTER TABLE `db_stockadjustmentitems`
  ADD CONSTRAINT `db_stockadjustmentitems_ibfk_1` FOREIGN KEY (`adjustment_id`) REFERENCES `db_stockadjustment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stockadjustmentitems_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stockadjustmentitems_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stockadjustmentitems_ibfk_4` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_stocktransfer`
--
ALTER TABLE `db_stocktransfer`
  ADD CONSTRAINT `db_stocktransfer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransfer_ibfk_2` FOREIGN KEY (`warehouse_from`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransfer_ibfk_3` FOREIGN KEY (`warehouse_to`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransfer_ibfk_4` FOREIGN KEY (`to_store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_stocktransferitems`
--
ALTER TABLE `db_stocktransferitems`
  ADD CONSTRAINT `db_stocktransferitems_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransferitems_ibfk_2` FOREIGN KEY (`warehouse_from`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransferitems_ibfk_3` FOREIGN KEY (`warehouse_to`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransferitems_ibfk_4` FOREIGN KEY (`stocktransfer_id`) REFERENCES `db_stocktransfer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransferitems_ibfk_5` FOREIGN KEY (`item_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_stocktransferitems_ibfk_6` FOREIGN KEY (`to_store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_stripe`
--
ALTER TABLE `db_stripe`
  ADD CONSTRAINT `db_stripe_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_suppliers`
--
ALTER TABLE `db_suppliers`
  ADD CONSTRAINT `db_suppliers_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_supplier_payments`
--
ALTER TABLE `db_supplier_payments`
  ADD CONSTRAINT `db_supplier_payments_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `db_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_supplier_payments_ibfk_2` FOREIGN KEY (`purchasepayment_id`) REFERENCES `db_purchasepayments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_tax`
--
ALTER TABLE `db_tax`
  ADD CONSTRAINT `db_tax_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_twilio`
--
ALTER TABLE `db_twilio`
  ADD CONSTRAINT `db_twilio_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_units`
--
ALTER TABLE `db_units`
  ADD CONSTRAINT `db_units_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_users`
--
ALTER TABLE `db_users`
  ADD CONSTRAINT `db_users_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_userswarehouses`
--
ALTER TABLE `db_userswarehouses`
  ADD CONSTRAINT `db_userswarehouses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `db_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_userswarehouses_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_variants`
--
ALTER TABLE `db_variants`
  ADD CONSTRAINT `db_variants_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_variants_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_warehouse`
--
ALTER TABLE `db_warehouse`
  ADD CONSTRAINT `db_warehouse_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `db_warehouseitems`
--
ALTER TABLE `db_warehouseitems`
  ADD CONSTRAINT `db_warehouseitems_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `db_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_warehouseitems_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `db_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_warehouseitems_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ecomApp_stock`
--
ALTER TABLE `ecomApp_stock`
  ADD CONSTRAINT `ecomApp_stock_ibfk_1` FOREIGN KEY (`item_id_id`) REFERENCES `db_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
