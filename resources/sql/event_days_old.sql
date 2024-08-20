-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2023 at 12:07 PM
-- Server version: 8.0.28
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anydc`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_days`
--

CREATE TABLE `event_days` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cyan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_days`
--

INSERT INTO `event_days` (`id`, `date`, `color`, `created_at`, `updated_at`) VALUES
(1, '2023-01-21', 'cyan', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(2, '2023-01-22', 'green-500', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(3, '2023-01-23', 'yellow', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(4, '2023-01-24', 'purple', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(5, '2023-01-25', 'green-500', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(6, '2023-01-26', 'purple', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(7, '2023-01-27', 'cyan', '2022-09-28 11:59:05', '2022-09-28 11:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_days`
--
ALTER TABLE `event_days`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_days`
--
ALTER TABLE `event_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
