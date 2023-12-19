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
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `event_day_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `event_day_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Arrival', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(2, 1, 'Meet and Greet', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(3, 2, 'Opening Ceremony', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(4, 2, 'Debate Day 1', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(5, 2, 'Games Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(6, 3, 'Debate Day 2', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(7, 3, 'Karaoke Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(8, 4, 'Debate Day 3', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(9, 4, 'Break Announcements / Talent show', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(10, 5, 'Debate Day 4 (Quater finals & semi finals)', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(11, 5, 'Mini Trip to Agulu Lake', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(12, 6, 'Youth Conference', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(13, 6, 'Open Finals', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(14, 6, 'Award Ceremony', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(15, 7, 'Departure', '2022-09-28 11:59:05', '2022-09-28 11:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_event_day_id_foreign` (`event_day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_event_day_id_foreign` FOREIGN KEY (`event_day_id`) REFERENCES `event_days` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
