-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2023 at 05:57 AM
-- Server version: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anydichk_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_day_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `event_day_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Arrival', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(2, 1, 'Meet and Greet', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(3, 1, 'Games Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(4, 2, 'Opening Ceremony', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(5, 2, 'Debate Day 1', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(6, 2, 'Comedy Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(7, 3, 'Debate Day 2', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(8, 3, 'Mini Concert', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(9, 3, 'Outdoor Movie Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(10, 4, 'Debate Day 3', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(11, 4, 'Agbaya Hangout 2.0', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(12, 4, 'Dance/Breaks Night', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(13, 5, 'Debate Day 4 (Quater finals & semi finals)', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(14, 5, 'Mini Excursion', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(15, 5, 'Talent Show', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(16, 6, 'Debate Grand Finale', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(17, 6, 'National Youth Confrence', '2022-09-28 11:59:05', '2022-09-28 11:59:05'),
(18, 7, 'Departure', '2022-09-28 11:59:05', '2022-09-28 11:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `event_days`
--

CREATE TABLE `event_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT 'cyan',
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

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

-- CREATE TABLE `migrations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `migration` varchar(255) NOT NULL,
--   `batch` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --
-- -- Dumping data for table `migrations`
-- --

-- INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
-- (14, '2014_10_12_000000_create_users_table', 1),
-- (15, '2014_10_12_100000_create_password_resets_table', 1),
-- (16, '2019_08_19_000000_create_failed_jobs_table', 1),
-- (17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
-- (18, '2022_09_24_135625_create_event_days_table', 1),
-- (19, '2022_09_24_136313_create_activities_table', 1),
-- (20, '2022_09_27_141011_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 20),
(1, 'App\\Models\\User', 21),
(1, 'App\\Models\\User', 22),
(1, 'App\\Models\\User', 23),
(1, 'App\\Models\\User', 24),
(1, 'App\\Models\\User', 25),
(1, 'App\\Models\\User', 26),
(1, 'App\\Models\\User', 27),
(1, 'App\\Models\\User', 28),
(1, 'App\\Models\\User', 29),
(1, 'App\\Models\\User', 30),
(1, 'App\\Models\\User', 31),
(1, 'App\\Models\\User', 32),
(1, 'App\\Models\\User', 33),
(1, 'App\\Models\\User', 34),
(1, 'App\\Models\\User', 35),
(1, 'App\\Models\\User', 36),
(1, 'App\\Models\\User', 37),
(1, 'App\\Models\\User', 38),
(1, 'App\\Models\\User', 39),
(1, 'App\\Models\\User', 40),
(1, 'App\\Models\\User', 41),
(1, 'App\\Models\\User', 42),
(1, 'App\\Models\\User', 43),
(1, 'App\\Models\\User', 44),
(1, 'App\\Models\\User', 45),
(1, 'App\\Models\\User', 46),
(1, 'App\\Models\\User', 47),
(1, 'App\\Models\\User', 48),
(1, 'App\\Models\\User', 49),
(1, 'App\\Models\\User', 50),
(1, 'App\\Models\\User', 51),
(1, 'App\\Models\\User', 52),
(1, 'App\\Models\\User', 53),
(1, 'App\\Models\\User', 54),
(1, 'App\\Models\\User', 55),
(1, 'App\\Models\\User', 56),
(1, 'App\\Models\\User', 57),
(1, 'App\\Models\\User', 58),
(1, 'App\\Models\\User', 59),
(1, 'App\\Models\\User', 60),
(1, 'App\\Models\\User', 61),
(1, 'App\\Models\\User', 62),
(1, 'App\\Models\\User', 63),
(1, 'App\\Models\\User', 64),
(1, 'App\\Models\\User', 65),
(1, 'App\\Models\\User', 66),
(1, 'App\\Models\\User', 67),
(1, 'App\\Models\\User', 68),
(1, 'App\\Models\\User', 69),
(1, 'App\\Models\\User', 70),
(1, 'App\\Models\\User', 71),
(1, 'App\\Models\\User', 72),
(1, 'App\\Models\\User', 73),
(1, 'App\\Models\\User', 74),
(1, 'App\\Models\\User', 75),
(1, 'App\\Models\\User', 76),
(1, 'App\\Models\\User', 77),
(1, 'App\\Models\\User', 78),
(1, 'App\\Models\\User', 79),
(1, 'App\\Models\\User', 80),
(1, 'App\\Models\\User', 81),
(1, 'App\\Models\\User', 82),
(1, 'App\\Models\\User', 83),
(1, 'App\\Models\\User', 84),
(1, 'App\\Models\\User', 85),
(1, 'App\\Models\\User', 86),
(1, 'App\\Models\\User', 87),
(1, 'App\\Models\\User', 88),
(1, 'App\\Models\\User', 89),
(1, 'App\\Models\\User', 90),
(1, 'App\\Models\\User', 91),
(1, 'App\\Models\\User', 92),
(1, 'App\\Models\\User', 93),
(1, 'App\\Models\\User', 94),
(1, 'App\\Models\\User', 95),
(1, 'App\\Models\\User', 96),
(1, 'App\\Models\\User', 97),
(1, 'App\\Models\\User', 98),
(1, 'App\\Models\\User', 99),
(1, 'App\\Models\\User', 100),
(1, 'App\\Models\\User', 101),
(1, 'App\\Models\\User', 102),
(1, 'App\\Models\\User', 103),
(1, 'App\\Models\\User', 104),
(1, 'App\\Models\\User', 105),
(1, 'App\\Models\\User', 106),
(1, 'App\\Models\\User', 107),
(1, 'App\\Models\\User', 108),
(1, 'App\\Models\\User', 109),
(1, 'App\\Models\\User', 110),
(1, 'App\\Models\\User', 111),
(1, 'App\\Models\\User', 112),
(1, 'App\\Models\\User', 113),
(1, 'App\\Models\\User', 114),
(1, 'App\\Models\\User', 115),
(1, 'App\\Models\\User', 116),
(1, 'App\\Models\\User', 117),
(1, 'App\\Models\\User', 118),
(1, 'App\\Models\\User', 119),
(1, 'App\\Models\\User', 120),
(1, 'App\\Models\\User', 121),
(1, 'App\\Models\\User', 122),
(1, 'App\\Models\\User', 123),
(1, 'App\\Models\\User', 124),
(1, 'App\\Models\\User', 125),
(1, 'App\\Models\\User', 126),
(1, 'App\\Models\\User', 127),
(1, 'App\\Models\\User', 128),
(1, 'App\\Models\\User', 129),
(1, 'App\\Models\\User', 130),
(1, 'App\\Models\\User', 131),
(1, 'App\\Models\\User', 132),
(1, 'App\\Models\\User', 133),
(1, 'App\\Models\\User', 134),
(1, 'App\\Models\\User', 135),
(1, 'App\\Models\\User', 136),
(1, 'App\\Models\\User', 137),
(1, 'App\\Models\\User', 138),
(1, 'App\\Models\\User', 139),
(1, 'App\\Models\\User', 140),
(1, 'App\\Models\\User', 141),
(1, 'App\\Models\\User', 142),
(1, 'App\\Models\\User', 143),
(1, 'App\\Models\\User', 144),
(1, 'App\\Models\\User', 145),
(1, 'App\\Models\\User', 146),
(1, 'App\\Models\\User', 147),
(1, 'App\\Models\\User', 148),
(1, 'App\\Models\\User', 149),
(1, 'App\\Models\\User', 150),
(1, 'App\\Models\\User', 151),
(1, 'App\\Models\\User', 152),
(1, 'App\\Models\\User', 153),
(1, 'App\\Models\\User', 154),
(1, 'App\\Models\\User', 155),
(1, 'App\\Models\\User', 156),
(1, 'App\\Models\\User', 157),
(1, 'App\\Models\\User', 158),
(1, 'App\\Models\\User', 159),
(1, 'App\\Models\\User', 160),
(1, 'App\\Models\\User', 161),
(1, 'App\\Models\\User', 162),
(1, 'App\\Models\\User', 163),
(1, 'App\\Models\\User', 164),
(1, 'App\\Models\\User', 165),
(1, 'App\\Models\\User', 166),
(1, 'App\\Models\\User', 167),
(1, 'App\\Models\\User', 168),
(1, 'App\\Models\\User', 169),
(1, 'App\\Models\\User', 170),
(1, 'App\\Models\\User', 171),
(1, 'App\\Models\\User', 172),
(1, 'App\\Models\\User', 173),
(1, 'App\\Models\\User', 174),
(1, 'App\\Models\\User', 175),
(1, 'App\\Models\\User', 176),
(1, 'App\\Models\\User', 177),
(1, 'App\\Models\\User', 178),
(1, 'App\\Models\\User', 179),
(1, 'App\\Models\\User', 180),
(1, 'App\\Models\\User', 181),
(1, 'App\\Models\\User', 182),
(1, 'App\\Models\\User', 183),
(1, 'App\\Models\\User', 184),
(1, 'App\\Models\\User', 185),
(1, 'App\\Models\\User', 186),
(1, 'App\\Models\\User', 187),
(1, 'App\\Models\\User', 188),
(1, 'App\\Models\\User', 189),
(1, 'App\\Models\\User', 190),
(1, 'App\\Models\\User', 191),
(1, 'App\\Models\\User', 192),
(1, 'App\\Models\\User', 193),
(1, 'App\\Models\\User', 194),
(1, 'App\\Models\\User', 195),
(1, 'App\\Models\\User', 196),
(1, 'App\\Models\\User', 197),
(1, 'App\\Models\\User', 198),
(1, 'App\\Models\\User', 199),
(1, 'App\\Models\\User', 200),
(1, 'App\\Models\\User', 201),
(1, 'App\\Models\\User', 202),
(1, 'App\\Models\\User', 203),
(1, 'App\\Models\\User', 204),
(1, 'App\\Models\\User', 205),
(1, 'App\\Models\\User', 206),
(1, 'App\\Models\\User', 207),
(1, 'App\\Models\\User', 208),
(1, 'App\\Models\\User', 209),
(1, 'App\\Models\\User', 210),
(1, 'App\\Models\\User', 211),
(1, 'App\\Models\\User', 212),
(1, 'App\\Models\\User', 213),
(1, 'App\\Models\\User', 214),
(1, 'App\\Models\\User', 215),
(1, 'App\\Models\\User', 216),
(1, 'App\\Models\\User', 217),
(1, 'App\\Models\\User', 218),
(1, 'App\\Models\\User', 219),
(1, 'App\\Models\\User', 220),
(1, 'App\\Models\\User', 221),
(1, 'App\\Models\\User', 222),
(1, 'App\\Models\\User', 223),
(1, 'App\\Models\\User', 224),
(1, 'App\\Models\\User', 225),
(1, 'App\\Models\\User', 226),
(1, 'App\\Models\\User', 227),
(1, 'App\\Models\\User', 228),
(1, 'App\\Models\\User', 229),
(1, 'App\\Models\\User', 230),
(1, 'App\\Models\\User', 231),
(1, 'App\\Models\\User', 232),
(1, 'App\\Models\\User', 233),
(1, 'App\\Models\\User', 234),
(1, 'App\\Models\\User', 235),
(1, 'App\\Models\\User', 236),
(1, 'App\\Models\\User', 237),
(1, 'App\\Models\\User', 238),
(1, 'App\\Models\\User', 239),
(1, 'App\\Models\\User', 240),
(1, 'App\\Models\\User', 241),
(1, 'App\\Models\\User', 242),
(1, 'App\\Models\\User', 243),
(1, 'App\\Models\\User', 244),
(1, 'App\\Models\\User', 245),
(1, 'App\\Models\\User', 246),
(1, 'App\\Models\\User', 247),
(1, 'App\\Models\\User', 248),
(1, 'App\\Models\\User', 249),
(1, 'App\\Models\\User', 250),
(1, 'App\\Models\\User', 251),
(1, 'App\\Models\\User', 252),
(1, 'App\\Models\\User', 253),
(1, 'App\\Models\\User', 254),
(1, 'App\\Models\\User', 255),
(1, 'App\\Models\\User', 256),
(1, 'App\\Models\\User', 257),
(1, 'App\\Models\\User', 258),
(1, 'App\\Models\\User', 259),
(1, 'App\\Models\\User', 260),
(1, 'App\\Models\\User', 261),
(1, 'App\\Models\\User', 262),
(1, 'App\\Models\\User', 263),
(1, 'App\\Models\\User', 264),
(1, 'App\\Models\\User', 265),
(1, 'App\\Models\\User', 266),
(1, 'App\\Models\\User', 267),
(1, 'App\\Models\\User', 268),
(1, 'App\\Models\\User', 269),
(1, 'App\\Models\\User', 270),
(1, 'App\\Models\\User', 271),
(1, 'App\\Models\\User', 272),
(1, 'App\\Models\\User', 273),
(1, 'App\\Models\\User', 274),
(1, 'App\\Models\\User', 275),
(1, 'App\\Models\\User', 276),
(1, 'App\\Models\\User', 277),
(1, 'App\\Models\\User', 278),
(1, 'App\\Models\\User', 279),
(1, 'App\\Models\\User', 280),
(1, 'App\\Models\\User', 281),
(1, 'App\\Models\\User', 282),
(1, 'App\\Models\\User', 283),
(1, 'App\\Models\\User', 284),
(1, 'App\\Models\\User', 285),
(1, 'App\\Models\\User', 286),
(1, 'App\\Models\\User', 287),
(1, 'App\\Models\\User', 288),
(1, 'App\\Models\\User', 289),
(1, 'App\\Models\\User', 290),
(1, 'App\\Models\\User', 291),
(1, 'App\\Models\\User', 292),
(1, 'App\\Models\\User', 293),
(1, 'App\\Models\\User', 294),
(1, 'App\\Models\\User', 295),
(1, 'App\\Models\\User', 296),
(1, 'App\\Models\\User', 297),
(1, 'App\\Models\\User', 298),
(1, 'App\\Models\\User', 299),
(1, 'App\\Models\\User', 300),
(1, 'App\\Models\\User', 301),
(1, 'App\\Models\\User', 302),
(1, 'App\\Models\\User', 303),
(1, 'App\\Models\\User', 304),
(1, 'App\\Models\\User', 305),
(1, 'App\\Models\\User', 306),
(1, 'App\\Models\\User', 307),
(1, 'App\\Models\\User', 308),
(1, 'App\\Models\\User', 309),
(1, 'App\\Models\\User', 310),
(1, 'App\\Models\\User', 311),
(1, 'App\\Models\\User', 312),
(1, 'App\\Models\\User', 313),
(1, 'App\\Models\\User', 314),
(1, 'App\\Models\\User', 315),
(1, 'App\\Models\\User', 316),
(1, 'App\\Models\\User', 317),
(1, 'App\\Models\\User', 318),
(1, 'App\\Models\\User', 319),
(1, 'App\\Models\\User', 320),
(1, 'App\\Models\\User', 321),
(1, 'App\\Models\\User', 322),
(1, 'App\\Models\\User', 323),
(1, 'App\\Models\\User', 324),
(1, 'App\\Models\\User', 325),
(1, 'App\\Models\\User', 326),
(1, 'App\\Models\\User', 327),
(1, 'App\\Models\\User', 328),
(1, 'App\\Models\\User', 329),
(1, 'App\\Models\\User', 330),
(1, 'App\\Models\\User', 331),
(1, 'App\\Models\\User', 332),
(1, 'App\\Models\\User', 333),
(1, 'App\\Models\\User', 334),
(1, 'App\\Models\\User', 335),
(1, 'App\\Models\\User', 336),
(1, 'App\\Models\\User', 337),
(1, 'App\\Models\\User', 338),
(1, 'App\\Models\\User', 339),
(1, 'App\\Models\\User', 340),
(1, 'App\\Models\\User', 341),
(1, 'App\\Models\\User', 342),
(1, 'App\\Models\\User', 343),
(1, 'App\\Models\\User', 344),
(1, 'App\\Models\\User', 345),
(1, 'App\\Models\\User', 346),
(1, 'App\\Models\\User', 347),
(1, 'App\\Models\\User', 348),
(1, 'App\\Models\\User', 349),
(1, 'App\\Models\\User', 350),
(1, 'App\\Models\\User', 351),
(1, 'App\\Models\\User', 352),
(1, 'App\\Models\\User', 353),
(1, 'App\\Models\\User', 354),
(1, 'App\\Models\\User', 355),
(1, 'App\\Models\\User', 356),
(1, 'App\\Models\\User', 357),
(1, 'App\\Models\\User', 358),
(1, 'App\\Models\\User', 359),
(1, 'App\\Models\\User', 360),
(1, 'App\\Models\\User', 361),
(1, 'App\\Models\\User', 362),
(1, 'App\\Models\\User', 363),
(1, 'App\\Models\\User', 364),
(1, 'App\\Models\\User', 365),
(1, 'App\\Models\\User', 366),
(1, 'App\\Models\\User', 367),
(1, 'App\\Models\\User', 368),
(1, 'App\\Models\\User', 369),
(1, 'App\\Models\\User', 370),
(1, 'App\\Models\\User', 371),
(1, 'App\\Models\\User', 372),
(1, 'App\\Models\\User', 373);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'download csv', 'web', '2022-09-28 11:59:20', '2022-09-28 11:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'participant', 'web', '2022-09-28 11:59:20', '2022-09-28 11:59:20'),
(2, 'admin', 'web', '2022-09-28 11:59:20', '2022-09-28 11:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Philip Nwokedi', 'philippos764@gmail.com', NULL, NULL, NULL, '2022-09-28 17:18:09', '2022-09-28 17:18:09'),
(2, 'Raymond Chuma-Onwuoku', 'raymondonwuoku@gmail.com', NULL, NULL, NULL, '2022-09-28 17:35:02', '2022-09-28 17:35:02'),
(3, 'Raymond Chuma-Onwuoku', 'raymondchumaonwuoku@gmail.com', NULL, NULL, NULL, '2022-09-28 20:33:42', '2022-09-28 20:33:42'),
(4, 'doings', 'doings124@gmail.com', NULL, NULL, NULL, '2022-09-30 15:38:20', '2022-09-30 15:38:20'),
(5, 'Nedu Ijioma', 'neduijioma@gmail.com', NULL, NULL, NULL, '2022-10-01 04:48:06', '2022-10-01 04:48:06'),
(6, 'Raymond Chuma-Onwuoku', 'unndebatesociety@gmail.com', NULL, NULL, NULL, '2022-10-01 10:18:15', '2022-10-01 10:18:15'),
(7, 'Anene Ebubechukwu Anthony', 'aneneebube115@gmail.com', NULL, NULL, NULL, '2022-10-02 02:17:00', '2022-10-02 02:17:00'),
(8, 'Egboka Victory', 'egbokavictory4@gmail.com', NULL, NULL, NULL, '2022-10-02 02:18:10', '2022-10-02 02:18:10'),
(9, 'Aniefuna Chisom Victoria', 'chisomvictoria222@gmail.comc', NULL, NULL, NULL, '2022-10-02 02:19:44', '2022-10-02 02:19:44'),
(10, 'Aniefuna Chisom Victoria', 'chisomvictoria222@gmail.com', NULL, NULL, NULL, '2022-10-02 02:19:57', '2022-10-02 02:19:57'),
(11, 'Oluwafikunayomi Odusola', 'fikunodusola@gmail.com', NULL, NULL, NULL, '2022-10-02 02:21:09', '2022-10-02 02:21:09'),
(12, 'Grace Iderima', 'gracyiderima@gmail.com', NULL, NULL, NULL, '2022-10-02 02:21:20', '2022-10-02 02:21:20'),
(13, 'Testimony Monday', 'testinonyadajesus05@gmail.com', NULL, NULL, NULL, '2022-10-02 02:22:36', '2022-10-02 02:22:36'),
(14, 'Abimbola Obayemi', 'aobayemi05@gmail.com', NULL, NULL, NULL, '2022-10-02 02:23:22', '2022-10-02 02:23:22'),
(15, 'Serg Mascot', 'mascotezeogo@gmail.com', NULL, NULL, NULL, '2022-10-02 02:25:26', '2022-10-02 02:25:26'),
(16, 'Jed', 'jederomosele@gmail.com', NULL, NULL, NULL, '2022-10-02 02:26:24', '2022-10-02 02:26:24'),
(17, 'Olisa Nwokedi', 'boscophilz@gmail.com', NULL, NULL, NULL, '2022-10-02 02:40:42', '2022-10-02 02:40:42'),
(18, 'Ifeoluwa Omoniyi Dada', 'ifedada412@gmail.com', NULL, NULL, NULL, '2022-10-02 03:21:07', '2022-10-02 03:21:07'),
(19, 'Okoye Chiemelie Kingsley', 'Chiemelieokoye311@gmail.com', NULL, NULL, NULL, '2022-10-02 03:22:23', '2022-10-02 03:22:23'),
(20, 'Sodiq Farhan A', 'farhansodiq360@gmail.com', NULL, NULL, NULL, '2022-10-02 03:23:25', '2022-10-02 03:23:25'),
(21, 'Abigail Abi', 'abi999400@gmail.com', NULL, NULL, NULL, '2022-10-02 03:39:25', '2022-10-02 03:39:25'),
(22, 'Chekwubechukwu Agwaraonye', 'agwaraonyechekwubechukwu@gmail.com', NULL, NULL, NULL, '2022-10-02 03:43:15', '2022-10-02 03:43:15'),
(23, 'Olanrewaju Aishat Omotola', 'ishaolanrewaju@gmail.com', NULL, NULL, NULL, '2022-10-02 04:26:05', '2022-10-02 04:26:05'),
(24, 'Owolabi Victor Oluwatobi', 'tobbyvictor02@gmail.com', NULL, NULL, NULL, '2022-10-02 05:45:05', '2022-10-02 05:45:05'),
(25, 'Yhsiidjdj hejejrjrh', 'hendjrjr@gmail.com', NULL, NULL, NULL, '2022-10-02 06:59:16', '2022-10-02 06:59:16'),
(26, 'Eke Favour Lucy Nma', 'ekefavour2000@gmail.com', NULL, NULL, NULL, '2022-10-02 09:07:07', '2022-10-02 09:07:07'),
(27, 'ODUBAYO, Esther Modupe.', 'modupeodubayo1@gmail.com', NULL, NULL, NULL, '2022-10-02 09:15:07', '2022-10-02 09:15:07'),
(28, 'Hassan A. Usman', 'usmanaduragbemi77@gmail.com', NULL, NULL, NULL, '2022-10-02 09:26:47', '2022-10-02 09:26:47'),
(29, 'Ibiwoye Anuoluwa Priscilla', 'priscilliaanuoluwa@gmail.com', NULL, NULL, NULL, '2022-10-02 09:58:56', '2022-10-02 09:58:56'),
(30, 'Felix, Favour Pius', 'phaveepius@gmail.com', NULL, NULL, NULL, '2022-10-02 10:01:12', '2022-10-02 10:01:12'),
(31, 'Kolawole Esther', 'profby25@gmail.com', NULL, NULL, NULL, '2022-10-02 10:18:33', '2022-10-02 10:18:33'),
(32, 'Ebri Will', 'ebriebriwill@gmail.com', NULL, NULL, NULL, '2022-10-02 10:38:54', '2022-10-02 10:38:54'),
(33, 'Sanni sofiat Ayomide', 'sannisofiat524@gmail.com', NULL, NULL, NULL, '2022-10-02 11:10:41', '2022-10-02 11:10:41'),
(34, 'Faith Oba', 'odunolaesther4u@gmail.com', NULL, NULL, NULL, '2022-10-02 11:31:01', '2022-10-02 11:31:01'),
(35, 'Abdullahi Abdulrasaq Opeyemi', 'opeyemiabdulrasaq3560@gmail.com', NULL, NULL, NULL, '2022-10-02 12:13:14', '2022-10-02 12:13:14'),
(36, 'Ozioma Chidiebere Glad', 'babychi771@gmail.com', NULL, NULL, NULL, '2022-10-02 14:03:43', '2022-10-02 14:03:43'),
(37, 'Osinuga ifeoluwa', 'osinugaifeoluwa1@gmail.com', NULL, NULL, NULL, '2022-10-02 15:02:39', '2022-10-02 15:02:39'),
(38, 'Victor Obolu', 'victorsilvester2@gmail.com', NULL, NULL, NULL, '2022-10-02 15:27:50', '2022-10-02 15:27:50'),
(39, 'Gladstone Clement', 'Gladstonebenson89@gmail.com', NULL, NULL, NULL, '2022-10-02 17:08:43', '2022-10-02 17:08:43'),
(40, 'Favour Jonathan', 'favourjonathan472@gmail.com', NULL, NULL, NULL, '2022-10-02 17:51:10', '2022-10-02 17:51:10'),
(41, 'Oyinkansola', 'ashimioyinkansola123@gmail.com', NULL, NULL, NULL, '2022-10-02 22:18:57', '2022-10-02 22:18:57'),
(42, 'Charles Emmanuel ndubuisi', 'ministrelemmy@gmail.com', NULL, NULL, NULL, '2022-10-03 00:28:14', '2022-10-03 00:28:14'),
(43, 'Okoye peculiar chidinma', 'Okoyepeculiar2002@gmail.com', NULL, NULL, NULL, '2022-10-03 00:58:49', '2022-10-03 00:58:49'),
(44, 'Ikechukwu success', 'iykesuccessful@gmail.com', NULL, NULL, NULL, '2022-10-03 01:23:44', '2022-10-03 01:23:44'),
(45, 'Miracle Gabriel', 'gamiracle3@gmail.com', NULL, NULL, NULL, '2022-10-03 01:36:44', '2022-10-03 01:36:44'),
(46, 'Ezeobi Blessing Oluchukwu', 'officialbosemean@gmail.com', NULL, NULL, NULL, '2022-10-03 03:38:27', '2022-10-03 03:38:27'),
(47, 'Franca Jonah', 'jonahfranca9@gmail.com', NULL, NULL, NULL, '2022-10-03 03:43:35', '2022-10-03 03:43:35'),
(48, 'Patrick Ordu', 'ignitiousprint@gmail.com', NULL, NULL, NULL, '2022-10-03 09:54:24', '2022-10-03 09:54:24'),
(49, 'Abdul-Qayyum Yussuf', 'abdqayyumyussuf@gmail.com', NULL, NULL, NULL, '2022-10-03 10:01:47', '2022-10-03 10:01:47'),
(50, 'Opoola Opeyemi', 'opoolaopeyemi04@gmail.com', NULL, NULL, NULL, '2022-10-03 11:38:29', '2022-10-03 11:38:29'),
(51, 'Munirat', 'muniratogere@gmail.com', NULL, NULL, NULL, '2022-10-03 12:12:37', '2022-10-03 12:12:37'),
(52, 'Emmanuel Justice', 'emmanueljustice25@gmail.com', NULL, NULL, NULL, '2022-10-03 12:20:41', '2022-10-03 12:20:41'),
(53, 'Onaemor Anita ogheneyole', 'onaemora@gmail.com', NULL, NULL, NULL, '2022-10-03 12:58:43', '2022-10-03 12:58:43'),
(54, 'Daniel Chukwuebuka', 'danielgreat2222@gmail.com', NULL, NULL, NULL, '2022-10-03 14:07:18', '2022-10-03 14:07:18'),
(55, 'Solomon Nwoba', 'nwobasolomon3@gmail.com', NULL, NULL, NULL, '2022-10-03 14:18:22', '2022-10-03 14:18:22'),
(56, 'Daniel Idowu', 'PharmD2405@gmail.com', NULL, NULL, NULL, '2022-10-03 15:28:59', '2022-10-03 15:28:59'),
(57, 'Ekundayo Timileyin', 'ekundayotimileyin032@gmail.com', NULL, NULL, NULL, '2022-10-03 15:29:00', '2022-10-03 15:29:00'),
(58, 'Godgift Nwachukwu', 'gumorousuche@gmail.com', NULL, NULL, NULL, '2022-10-03 15:34:59', '2022-10-03 15:34:59'),
(59, 'Barakat Anuoluwa Popoola', 'barakatpopoola22@gmail.com', NULL, NULL, NULL, '2022-10-03 15:50:40', '2022-10-03 15:50:40'),
(60, 'Grace Ahuoyiza okoeguale', 'graceahuoiza2019@gmail.com', NULL, NULL, NULL, '2022-10-03 15:51:12', '2022-10-03 15:51:12'),
(61, 'Theophilus favour', 'theophilusdoris1@gmail.com', NULL, NULL, NULL, '2022-10-03 15:54:15', '2022-10-03 15:54:15'),
(62, 'Ibrahim Alabi', 'ibrahimalabi19@gmail.com', NULL, NULL, NULL, '2022-10-03 15:56:46', '2022-10-03 15:56:46'),
(63, 'Oladotun Olayemi', 'ibitomilayorolayemi@gmail.com', NULL, NULL, NULL, '2022-10-03 16:02:49', '2022-10-03 16:02:49'),
(64, 'Ahmed Halima Funmilayo', 'halimafahmed@gmail.com', NULL, NULL, NULL, '2022-10-03 16:18:42', '2022-10-03 16:18:42'),
(65, 'Hussein Rafeeah Adeola', 'husseinrafeeah@gmail.com', NULL, NULL, NULL, '2022-10-03 16:20:07', '2022-10-03 16:20:07'),
(66, 'Femi Ogundeyi', 'oluwafemiogundeyi7@gmail.com', NULL, NULL, NULL, '2022-10-03 17:10:58', '2022-10-03 17:10:58'),
(67, 'Izah Fortune Ekene', 'fortuneekene65@gmail.com', NULL, NULL, NULL, '2022-10-03 17:20:51', '2022-10-03 17:20:51'),
(68, 'Olabayo Bamire Caleb', 'bamirecaleb@gmail.com', NULL, NULL, NULL, '2022-10-03 17:38:24', '2022-10-03 17:38:24'),
(69, 'Ochoche David', 'davemart347@gmail.com', NULL, NULL, NULL, '2022-10-03 17:44:03', '2022-10-03 17:44:03'),
(70, 'Omaraye Joshua Akpojishere', 'Omarayejoshua@gmail.com', NULL, NULL, NULL, '2022-10-03 18:35:03', '2022-10-03 18:35:03'),
(71, 'Michael King', 'ezemichael261@gmail.com', NULL, NULL, NULL, '2022-10-03 19:35:36', '2022-10-03 19:35:36'),
(72, 'Inegbu Nneoma Emmanuella', 'inegbunn80@gmail.com', NULL, NULL, NULL, '2022-10-03 19:58:29', '2022-10-03 19:58:29'),
(73, 'gOD', 'ezemichae0812@gmail.com', NULL, NULL, NULL, '2022-10-03 20:15:39', '2022-10-03 20:15:39'),
(74, 'Joy Chiedo', 'helenchiedo@gmail.com', NULL, NULL, NULL, '2022-10-03 22:00:05', '2022-10-03 22:00:05'),
(75, 'Bethel Akunne', 'betheljahdiakunne@gmail.com', NULL, NULL, NULL, '2022-10-03 22:12:09', '2022-10-03 22:12:09'),
(76, 'Opeyemi Akintobi', 'opeyemiakintobi2@gmail.com', NULL, NULL, NULL, '2022-10-03 22:36:09', '2022-10-03 22:36:09'),
(77, 'VICTOR EMMANUEL  JIMMY', 'emmanuelandikan99@gmail.com', NULL, NULL, NULL, '2022-10-03 22:38:43', '2022-10-03 22:38:43'),
(78, 'Thomas Okoh Godwin', 'godwinthomasokoh@gmail.com', NULL, NULL, NULL, '2022-10-03 22:52:36', '2022-10-03 22:52:36'),
(79, 'Falana', 'opeyemifalana67@gmail.com', NULL, NULL, NULL, '2022-10-03 22:58:13', '2022-10-03 22:58:13'),
(80, 'Habeeb Hqaan', 'hqhabeeb@gmail.com', NULL, NULL, NULL, '2022-10-03 23:06:19', '2022-10-03 23:06:19'),
(81, 'Ahamefule Charles', 'ahamefulec1995@gmail.com', NULL, NULL, NULL, '2022-10-03 23:08:00', '2022-10-03 23:08:00'),
(82, 'Ikegbunam Ebubechukwu Hilary', 'ikegbunamh@gmail.com', NULL, NULL, NULL, '2022-10-03 23:08:32', '2022-10-03 23:08:32'),
(83, 'Adebowale Coker', 'cokeradebowale@gmail.com', NULL, NULL, NULL, '2022-10-03 23:09:40', '2022-10-03 23:09:40'),
(84, 'Ayomide Mary Adams', 'maryayomide92@gmail.com', NULL, NULL, NULL, '2022-10-03 23:15:02', '2022-10-03 23:15:02'),
(85, 'Imanche Peace', 'imanchepeace33@gmail.com', NULL, NULL, NULL, '2022-10-03 23:25:23', '2022-10-03 23:25:23'),
(86, 'Marcelyn Ekechukwu', 'celynchucks@gmail.com', NULL, NULL, NULL, '2022-10-03 23:26:22', '2022-10-03 23:26:22'),
(87, 'Oluwayomi Kayode', 'yomikay115@gmail.com', NULL, NULL, NULL, '2022-10-03 23:35:47', '2022-10-03 23:35:47'),
(88, 'Hanif Olayiwola', 'thenfh2022@gmail.com', NULL, NULL, NULL, '2022-10-03 23:35:59', '2022-10-03 23:35:59'),
(89, 'Abiola Olaniyan', 'abiolaolaniyan500@gmail.com', NULL, NULL, NULL, '2022-10-03 23:56:55', '2022-10-03 23:56:55'),
(90, 'Vincent Korang', 'qwekubron@icloud.com', NULL, NULL, NULL, '2022-10-03 23:57:51', '2022-10-03 23:57:51'),
(91, 'Ayomide Atolagbe', 'atolagbeayomide624@gmail.com', NULL, NULL, NULL, '2022-10-04 00:03:55', '2022-10-04 00:03:55'),
(92, 'Isaac ihejirika', 'isaacihejirika42@gmail.com', NULL, NULL, NULL, '2022-10-04 00:05:36', '2022-10-04 00:05:36'),
(93, 'Akanle Jesus Abdullah', 'jesuswrites20043@gmail.com', NULL, NULL, NULL, '2022-10-04 00:13:51', '2022-10-04 00:13:51'),
(94, 'Asokere Joshua Tosin', 'asokerejosh323@gmail.com', NULL, NULL, NULL, '2022-10-04 00:15:05', '2022-10-04 00:15:05'),
(95, 'Yusuf Latifat Oluwaseun', 'latifatyusuf586@gmail.com', NULL, NULL, NULL, '2022-10-04 00:27:18', '2022-10-04 00:27:18'),
(96, 'Abidoye Deborah', 'deborahabidoye2@gmail.com', NULL, NULL, NULL, '2022-10-04 00:51:14', '2022-10-04 00:51:14'),
(97, 'Adeniji Habibat', 'Habibatfolashade49@gmail.com', NULL, NULL, NULL, '2022-10-04 00:52:04', '2022-10-04 00:52:04'),
(98, 'Adams Sarah boyi', 'adamssarahboyi@gmail.com', NULL, NULL, NULL, '2022-10-04 00:55:47', '2022-10-04 00:55:47'),
(99, 'Cosmos oyanogbezina', 'cosmosoyanx07@gmail.com', NULL, NULL, NULL, '2022-10-04 01:06:11', '2022-10-04 01:06:11'),
(100, 'AGEZEH VICTOR OGHENETEGA', 'agezehvictor2@gmail.com', NULL, NULL, NULL, '2022-10-04 01:43:57', '2022-10-04 01:43:57'),
(101, 'Yaw Boakye', 'boakyey420@gmail.com', NULL, NULL, NULL, '2022-10-04 01:47:19', '2022-10-04 01:47:19'),
(102, 'Confidence Chiedo', 'confichiedo@gmail.com', NULL, NULL, NULL, '2022-10-04 01:54:09', '2022-10-04 01:54:09'),
(103, 'Adetunji Tesleem oluwakayode', 'adetunjioluwakayode24@gmail.com', NULL, NULL, NULL, '2022-10-04 01:57:22', '2022-10-04 01:57:22'),
(104, 'Oluwafemi Ajongolo', 'emeritusphemy@gmail.com', NULL, NULL, NULL, '2022-10-04 02:30:37', '2022-10-04 02:30:37'),
(105, 'Okafor Favour', 'okaforfavour266@gmail.com', NULL, NULL, NULL, '2022-10-04 03:32:17', '2022-10-04 03:32:17'),
(106, 'Ifeanyichukwu Okonkwo', 'favourokonkwo360@gmail.com', NULL, NULL, NULL, '2022-10-04 03:39:27', '2022-10-04 03:39:27'),
(107, 'Deborah Justin Maurice', 'debbiemaurice87@gmail.com', NULL, NULL, NULL, '2022-10-04 05:53:25', '2022-10-04 05:53:25'),
(108, 'Akasionye Onyebuchi Daniel', 'onyebuchiakasionye@gmail.com', NULL, NULL, NULL, '2022-10-04 08:13:16', '2022-10-04 08:13:16'),
(109, 'Vanessa Uzoho', 'uzohostarr@gmail.com', NULL, NULL, NULL, '2022-10-04 08:52:23', '2022-10-04 08:52:23'),
(110, 'Divinefavour Chinonyerem Emmanuel', 'caystone99@gmail.com', NULL, NULL, NULL, '2022-10-04 08:55:28', '2022-10-04 08:55:28'),
(111, 'Ilem Greatfaith Ilem', 'ilemgreatfaith@gmail.com', NULL, NULL, NULL, '2022-10-04 09:27:52', '2022-10-04 09:27:52'),
(112, 'Anayochukwu marvellous', 'anayochukwumarvellous@gmail.com', NULL, NULL, NULL, '2022-10-04 11:06:11', '2022-10-04 11:06:11'),
(113, 'Nwajah Ebube', 'miletusnwajah@gmail.com', NULL, NULL, NULL, '2022-10-04 11:14:47', '2022-10-04 11:14:47'),
(114, 'Akio jonah Kikpoye', 'akiokikpoye@gmail.com', NULL, NULL, NULL, '2022-10-04 12:07:15', '2022-10-04 12:07:15'),
(115, 'Nzeako Emeka Fabian', 'fabianemekanzeako@outlook.com', NULL, NULL, NULL, '2022-10-04 12:42:19', '2022-10-04 12:42:19'),
(116, 'Boniface Nseobong', 'bonifacenseobong@gmail.com', NULL, NULL, NULL, '2022-10-04 13:53:50', '2022-10-04 13:53:50'),
(117, 'Tolulope Olafisoye', 'tolulopeolafisoye@gmail.com', NULL, NULL, NULL, '2022-10-04 15:59:59', '2022-10-04 15:59:59'),
(118, 'Okoye Alfred chidera', 'okoyechidera07@gmail.com', NULL, NULL, NULL, '2022-10-04 16:02:15', '2022-10-04 16:02:15'),
(119, 'Hannah momoh lawal', 'momohhannah030@gmail.com', NULL, NULL, NULL, '2022-10-04 16:24:06', '2022-10-04 16:24:06'),
(120, 'Oluwatobiloba Adebara', 'adebaratobi8@gmail.com', NULL, NULL, NULL, '2022-10-04 16:43:59', '2022-10-04 16:43:59'),
(121, 'Gafar Hammed Akorede', 'Erhmedorfakorede1999@gmail.com', NULL, NULL, NULL, '2022-10-04 17:27:34', '2022-10-04 17:27:34'),
(122, 'Ibrahim Abdullahi rabiu', 'ibraheemarabiu@gmail.com', NULL, NULL, NULL, '2022-10-04 17:52:19', '2022-10-04 17:52:19'),
(123, 'Enevene Ganiyat Ahuoiza', 'ganiyatenevene@gmail.com', NULL, NULL, NULL, '2022-10-04 18:18:55', '2022-10-04 18:18:55'),
(124, 'Enevene Basirat Onize', 'basiratenevene@gmail.com', NULL, NULL, NULL, '2022-10-04 18:21:23', '2022-10-04 18:21:23'),
(125, 'Ikem Victoria', 'ikemvictoria972@gmail.com', NULL, NULL, NULL, '2022-10-04 18:39:22', '2022-10-04 18:39:22'),
(126, 'Peace John-Kalio', 'peacejkay@yahoo.com', NULL, NULL, NULL, '2022-10-04 20:28:56', '2022-10-04 20:28:56'),
(127, 'Olamilekan Oderanti', 'olamilekanoderanti@gmail.com', NULL, NULL, NULL, '2022-10-04 22:04:39', '2022-10-04 22:04:39'),
(128, 'Eshabi Daniel Eshabi', 'eshabid4@gmail.com', NULL, NULL, NULL, '2022-10-04 22:06:52', '2022-10-04 22:06:52'),
(129, 'Ishola Samiat Oladimeji', 'isholasamiat654@gmail.com', NULL, NULL, NULL, '2022-10-04 22:11:48', '2022-10-04 22:11:48'),
(130, 'Deborah oluwakemi Akande', 'akandedeborahkemi@gmail.com', NULL, NULL, NULL, '2022-10-04 22:12:35', '2022-10-04 22:12:35'),
(131, 'Mariam Amani', 'amanimariam77@gmail.com', NULL, NULL, NULL, '2022-10-04 22:55:07', '2022-10-04 22:55:07'),
(132, 'Jennifer Ome', 'jenniferomespeaks@gmail.com', NULL, NULL, NULL, '2022-10-04 23:01:44', '2022-10-04 23:01:44'),
(133, 'Mike gift', 'virtualmedia41@gmail.com', NULL, NULL, NULL, '2022-10-04 23:05:00', '2022-10-04 23:05:00'),
(134, 'Ehimare Okosun', 'simpliehis@yahoo.com', NULL, NULL, NULL, '2022-10-04 23:11:09', '2022-10-04 23:11:09'),
(135, 'Joseph Ogah', 'joephoenix324@gmail.com', NULL, NULL, NULL, '2022-10-04 23:11:38', '2022-10-04 23:11:38'),
(136, 'Oluwakemisola Olaiya', 'Kendallsamuel008@gmail.com', NULL, NULL, NULL, '2022-10-04 23:16:17', '2022-10-04 23:16:17'),
(137, 'Oluchi Ezugwu', 'ezugwuoluchi74@gmail.com', NULL, NULL, NULL, '2022-10-04 23:18:57', '2022-10-04 23:18:57'),
(138, 'Jafaru Muhammad Adam', 'mameer017@gmail.com', NULL, NULL, NULL, '2022-10-04 23:34:31', '2022-10-04 23:34:31'),
(139, 'Ayafa Tonye', 'ayafatonye@gmail.com', NULL, NULL, NULL, '2022-10-04 23:34:38', '2022-10-04 23:34:38'),
(140, 'Innocent Divine', 'innocentdivinevictory802@gmail.com', NULL, NULL, NULL, '2022-10-04 23:56:18', '2022-10-04 23:56:18'),
(141, 'Abdul Haqq Buhari', 'umoruhaqq@gmail.com', NULL, NULL, NULL, '2022-10-05 00:28:08', '2022-10-05 00:28:08'),
(142, 'Al Amin Nafisah', 'npheesah@gmail.com', NULL, NULL, NULL, '2022-10-05 00:30:12', '2022-10-05 00:30:12'),
(143, 'Oladimeji Bobola', 'oladimejibobola@gmail.com', NULL, NULL, NULL, '2022-10-05 00:56:53', '2022-10-05 00:56:53'),
(144, 'Ibekwe chiamaka marycynthia', 'marycynthiaibekwe503@gmail.com', NULL, NULL, NULL, '2022-10-05 01:47:48', '2022-10-05 01:47:48'),
(145, 'Balogun David Goodluck', 'balogundavidgoodluck@gmail.com', NULL, NULL, NULL, '2022-10-05 02:25:12', '2022-10-05 02:25:12'),
(146, 'Ayinde Abiodun Bukunmi', 'ayindefeoluwa@gmail.com', NULL, NULL, NULL, '2022-10-05 02:38:21', '2022-10-05 02:38:21'),
(147, 'EZENNAIKE CHINEDU JOSIAH', 'chinedujosiah250@gmail.com', NULL, NULL, NULL, '2022-10-05 02:52:04', '2022-10-05 02:52:04'),
(148, 'Winniefred Kosi Amaechi', 'amaechiwinnie@gmail.com', NULL, NULL, NULL, '2022-10-05 04:27:14', '2022-10-05 04:27:14'),
(149, 'Sarah Stephen', 'sarah4pitsy@gmail.com', NULL, NULL, NULL, '2022-10-05 09:12:05', '2022-10-05 09:12:05'),
(150, 'Oropo Aishat Omomayowa', 'oropoaishat64@gmail.com', NULL, NULL, NULL, '2022-10-05 10:04:14', '2022-10-05 10:04:14'),
(151, 'Peculiar Orilade', 'peculiarifeoluwapo@gmail.com', NULL, NULL, NULL, '2022-10-05 10:52:14', '2022-10-05 10:52:14'),
(152, 'Ogboji Chukwuebuka', 'ogbojiebuka0@gmail.com', NULL, NULL, NULL, '2022-10-05 13:51:59', '2022-10-05 13:51:59'),
(153, 'Ezomo Success', 'ezomoosaru7@gmail.com', NULL, NULL, NULL, '2022-10-05 15:30:07', '2022-10-05 15:30:07'),
(154, 'Kemistry', 'alaokemistry190@gmail.com', NULL, NULL, NULL, '2022-10-05 16:20:19', '2022-10-05 16:20:19'),
(155, 'Prince', 'nwobiprince8@gmail.com', NULL, NULL, NULL, '2022-10-05 18:49:19', '2022-10-05 18:49:19'),
(156, 'Georgina Ijachi', 'georginaijachi94@gmail.com', NULL, NULL, NULL, '2022-10-05 18:55:14', '2022-10-05 18:55:14'),
(157, 'Iniubong Uduakobong Akpan', 'akpaniniubong04@gmail.com', NULL, NULL, NULL, '2022-10-05 20:27:56', '2022-10-05 20:27:56'),
(158, 'Smart', 'smartezeh2@gmail.com', NULL, NULL, NULL, '2022-10-05 20:47:01', '2022-10-05 20:47:01'),
(159, 'Amaizu Chisom Augustina', 'chisomaugus@gmail.com', NULL, NULL, NULL, '2022-10-05 21:27:59', '2022-10-05 21:27:59'),
(160, 'Aredunmola Caleb Jesutoba', 'aredunmolacaleb9@gmail.com', NULL, NULL, NULL, '2022-10-05 21:28:16', '2022-10-05 21:28:16'),
(161, 'Anyalebechi Trust Tobechi', 'trusttobechi@gmail.com', NULL, NULL, NULL, '2022-10-05 21:33:03', '2022-10-05 21:33:03'),
(162, 'Scholastica Okoro', 'scholasticaokoro85@gmail.com', NULL, NULL, NULL, '2022-10-05 21:35:21', '2022-10-05 21:35:21'),
(163, 'Gospel Ugomsinachi Eke', 'onlygoodnews42@gmail.com', NULL, NULL, NULL, '2022-10-05 21:42:00', '2022-10-05 21:42:00'),
(164, 'Blaise-Maranzu Goodness Ugochi', 'blaiseugochi6@gmail.com', NULL, NULL, NULL, '2022-10-05 21:46:38', '2022-10-05 21:46:38'),
(165, 'Gideon Nnamdi', 'gideonnnamdi88@gmail.com', NULL, NULL, NULL, '2022-10-05 21:56:36', '2022-10-05 21:56:36'),
(166, 'Akorede Isaiah', 'akoredeisaiah@gmail.com', NULL, NULL, NULL, '2022-10-05 22:15:04', '2022-10-05 22:15:04'),
(167, 'Joshua Kolawole', 'kolajoeayo@gmail.com', NULL, NULL, NULL, '2022-10-05 23:00:34', '2022-10-05 23:00:34'),
(168, 'Stephen Iliya', 'iliyastephen06@gmail.com', NULL, NULL, NULL, '2022-10-06 00:09:32', '2022-10-06 00:09:32'),
(169, 'Abdulrafiu Adinoyi', 'abdulrafiuadinoyi@gmail.com', NULL, NULL, NULL, '2022-10-06 00:30:48', '2022-10-06 00:30:48'),
(170, 'Ogbu Esther Ifebuchechukwu', 'arvieleonie@gmail.com', NULL, NULL, NULL, '2022-10-06 00:32:46', '2022-10-06 00:32:46'),
(171, 'Okeh Ekoche Faith', 'okehfaith157@gmail.com', NULL, NULL, NULL, '2022-10-06 01:46:38', '2022-10-06 01:46:38'),
(172, 'David David', 'davidwin2002@gmail.com', NULL, NULL, NULL, '2022-10-06 02:38:30', '2022-10-06 02:38:30'),
(173, 'Azode Blessing', 'azodeblessing0@gmail.com', NULL, NULL, NULL, '2022-10-06 04:13:47', '2022-10-06 04:13:47'),
(174, 'Suarah Sodeeq Olamilekan', 'sodeeqolamilekan2005@gmail.com', NULL, NULL, NULL, '2022-10-06 07:25:38', '2022-10-06 07:25:38'),
(175, 'Esther rabe', 'estherauta3060@gmail.com', NULL, NULL, NULL, '2022-10-06 08:52:44', '2022-10-06 08:52:44'),
(176, 'Enikanorogbon Eniola Obadare', 'eniolajoseph04@gmail.com', NULL, NULL, NULL, '2022-10-06 08:55:04', '2022-10-06 08:55:04'),
(177, 'Opeoluwa Olanipekun', 'olanipekunopeoluwa@gmail.com', NULL, NULL, NULL, '2022-10-06 10:05:10', '2022-10-06 10:05:10'),
(178, 'Chidiebere Mmuomaife', 'debbyelsie@gmail.com', NULL, NULL, NULL, '2022-10-06 10:13:57', '2022-10-06 10:13:57'),
(179, 'Abideen Oyebamiji', 'abideen77oyebamy@gmail.com', NULL, NULL, NULL, '2022-10-06 10:55:23', '2022-10-06 10:55:23'),
(180, 'Akpan Imaobong Veronica', 'imaobongveronica@gmail.com', NULL, NULL, NULL, '2022-10-06 12:14:17', '2022-10-06 12:14:17'),
(181, 'Kenny Logins', 'support@handwriti.ng', NULL, NULL, NULL, '2022-10-06 13:32:44', '2022-10-06 13:32:44'),
(182, 'Afamuefunah Rhema', 'charishines19@gmail.com', NULL, NULL, NULL, '2022-10-06 14:35:57', '2022-10-06 14:35:57'),
(183, 'Arowolo Khadijat Adejoke', 'arowolokhadijat16@gmail.com', NULL, NULL, NULL, '2022-10-06 14:58:15', '2022-10-06 14:58:15'),
(184, 'Okereke Chinasa Jane', 'janey5318@gmail.com', NULL, NULL, NULL, '2022-10-06 16:17:51', '2022-10-06 16:17:51'),
(185, 'Enebraye Festus', 'fenebraye@gmail.com', NULL, NULL, NULL, '2022-10-06 17:04:51', '2022-10-06 17:04:51'),
(186, 'Ajayi John Aduragbemi', 'ajayijohn2019@gmail.com', NULL, NULL, NULL, '2022-10-06 17:27:46', '2022-10-06 17:27:46'),
(187, 'Ogbotobo Philip Damilare', 'ogbotobophilipdamilare@gmail.com', NULL, NULL, NULL, '2022-10-06 22:52:36', '2022-10-06 22:52:36'),
(188, 'Joy Bulus', 'joybulus51@gmail.com', NULL, NULL, NULL, '2022-10-06 23:25:10', '2022-10-06 23:25:10'),
(189, 'Okafor Philomena', 'iphiie43@gmail.com', NULL, NULL, NULL, '2022-10-07 00:03:49', '2022-10-07 00:03:49'),
(190, 'Chinedum Chijioke', 'chinedum.chijioke11@gmail.com', NULL, NULL, NULL, '2022-10-07 00:06:52', '2022-10-07 00:06:52'),
(191, 'Ahmed Mariam Eboseremhen', 'classicalmariam@gmail.com', NULL, NULL, NULL, '2022-10-07 00:10:33', '2022-10-07 00:10:33'),
(192, 'Peter Deborah Favour', 'peteratijiosinimu@gmail.com', NULL, NULL, NULL, '2022-10-07 01:10:51', '2022-10-07 01:10:51'),
(193, 'Samuel Tordoo Aondona', 'aondonatordoo100@gmail.com', NULL, NULL, NULL, '2022-10-07 02:16:44', '2022-10-07 02:16:44'),
(194, 'Okoyechika Joan', 'jojocatty01@gmail.com', NULL, NULL, NULL, '2022-10-07 04:00:32', '2022-10-07 04:00:32'),
(195, 'Akintomiwa Tomilola Morakinyo', 'tomjerrymorakinyo@gmail.com', NULL, NULL, NULL, '2022-10-07 05:00:37', '2022-10-07 05:00:37'),
(196, 'Ebenezer Abiodun', 'abiodunebenezer3@gmail.com', NULL, NULL, NULL, '2022-10-07 05:06:14', '2022-10-07 05:06:14'),
(197, 'Ebiere Erebi', 'ebiereruth2018@gmail.com', NULL, NULL, NULL, '2022-10-07 08:19:30', '2022-10-07 08:19:30'),
(198, 'Abigail Omotola', 'agbogunabigail123@gmail.com', NULL, NULL, NULL, '2022-10-07 10:28:05', '2022-10-07 10:28:05'),
(199, 'Oluwaferanmi Oladepo', 'depopf89@gmail.com', NULL, NULL, NULL, '2022-10-07 11:52:48', '2022-10-07 11:52:48'),
(200, 'Ogunbiyi Oluwadamilola', 'dammyesther2000@gmail.com', NULL, NULL, NULL, '2022-10-07 12:22:41', '2022-10-07 12:22:41'),
(201, 'UKACHUKWU FAVOUR NKASIOBI', 'favvyukachukwu@gmail.com', NULL, NULL, NULL, '2022-10-07 14:28:26', '2022-10-07 14:28:26'),
(202, 'Oshoke Sule', 'oshokeasule@gmail.com', NULL, NULL, NULL, '2022-10-07 19:01:55', '2022-10-07 19:01:55'),
(203, 'Anyanwu Abundance', 'abundanceanyanwu@gmail.com', NULL, NULL, NULL, '2022-10-07 19:05:04', '2022-10-07 19:05:04'),
(204, 'David Oba', 'david.oba@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:13:33', '2022-10-07 19:13:33'),
(205, 'Adenipekun Ponmile', 'oluwaponmile.adenipekun@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:14:20', '2022-10-07 19:14:20'),
(206, 'Okonkwo Ezinne', 'favour.okonkwo@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:15:23', '2022-10-07 19:15:23'),
(207, 'Victoria Arogundade', 'victoria.arogundade@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:17:44', '2022-10-07 19:17:44'),
(208, 'Daemi George', 'george.daemi@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:18:27', '2022-10-07 19:18:27'),
(209, 'Jeremiah Nnemeka', 'jeremiah.nnaemeka@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:18:57', '2022-10-07 19:18:57'),
(210, 'Soyemi Oreoluwa', 'soyemi.oreoluwa@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:20:13', '2022-10-07 19:20:13'),
(211, 'Nifemi Oladeinde', 'oladeinde.nifemi@stu.cu.edu.ng', NULL, NULL, NULL, '2022-10-07 19:21:10', '2022-10-07 19:21:10'),
(212, 'Lena leenaod', 'lenaoritse7@gmail.com', NULL, NULL, NULL, '2022-10-07 19:33:13', '2022-10-07 19:33:13'),
(213, 'Israel Ajake', 'israelajake@gmail.com', NULL, NULL, NULL, '2022-10-07 20:13:01', '2022-10-07 20:13:01'),
(214, 'Sabatine elizabeth ogechi', 'sabatineelizabeth4@gmail.com', NULL, NULL, NULL, '2022-10-07 20:44:53', '2022-10-07 20:44:53'),
(215, 'Akinsulu odunola evelyn', 'akinsuluodunola@gmail.com', NULL, NULL, NULL, '2022-10-07 22:27:52', '2022-10-07 22:27:52'),
(216, 'Ubong Hosea Udosen', 'ubeeudosen@gmail.com', NULL, NULL, NULL, '2022-10-07 23:56:32', '2022-10-07 23:56:32'),
(217, 'Anthony Ibe', 'tonyibe88@gmail.com', NULL, NULL, NULL, '2022-10-08 00:24:33', '2022-10-08 00:24:33'),
(218, 'Ayomide Emmanuel Oyekan', 'aoyekan20@gmail.com', NULL, NULL, NULL, '2022-10-08 06:55:24', '2022-10-08 06:55:24'),
(219, 'Okeke chibuzo precious', 'itekenwanneka28@gmail.com', NULL, NULL, NULL, '2022-10-08 11:25:57', '2022-10-08 11:25:57'),
(220, 'Itseoluwa Word', 'itseoluwaword@gmail.com', NULL, NULL, NULL, '2022-10-08 11:29:24', '2022-10-08 11:29:24'),
(221, 'Afeidia Joyce Itopa', 'itopajoyceafeidia@gmail.com', NULL, NULL, NULL, '2022-10-08 20:22:52', '2022-10-08 20:22:52'),
(222, 'Fasan Aramide Favour', 'fasanaramide@gmail.com', NULL, NULL, NULL, '2022-10-08 21:33:34', '2022-10-08 21:33:34'),
(223, 'Oben Nyen Mpantor', 'obennyen6@gmail.com', NULL, NULL, NULL, '2022-10-09 00:18:13', '2022-10-09 00:18:13'),
(224, 'David emeka agbong', 'agbongdavidizzzzy@gmail.com', NULL, NULL, NULL, '2022-10-09 15:57:13', '2022-10-09 15:57:13'),
(225, 'Thurah', 'kujore2004@gmail.com', NULL, NULL, NULL, '2022-10-09 18:51:43', '2022-10-09 18:51:43'),
(226, 'Sarah Baridi Demgoi', 'sarahpius3074@gmail.com', NULL, NULL, NULL, '2022-10-09 21:40:24', '2022-10-09 21:40:24'),
(227, 'Dauda Maryam Ololade', 'daudaololademaryam@gmail.com', NULL, NULL, NULL, '2022-10-10 23:48:22', '2022-10-10 23:48:22'),
(228, 'Unique Emmanuel', 'emmanuelunique23@gmail.com', NULL, NULL, NULL, '2022-10-11 00:00:40', '2022-10-11 00:00:40'),
(229, 'Isaiah Good Eluku', 'goodiemind@gmail.com', NULL, NULL, NULL, '2022-10-11 15:24:25', '2022-10-11 15:24:25'),
(230, 'Yemi joseph', 'yemijos36@gmail.com', NULL, NULL, NULL, '2022-10-12 15:26:04', '2022-10-12 15:26:04'),
(231, 'Ezekiel Offiong', 'eaziprofiq07@gmail.com', NULL, NULL, NULL, '2022-10-12 16:00:40', '2022-10-12 16:00:40'),
(232, 'David Okon', 'okondavid484@gmail.com', NULL, NULL, NULL, '2022-10-12 16:12:12', '2022-10-12 16:12:12'),
(233, 'Obi Joy', 'obij310@gmail.com', NULL, NULL, NULL, '2022-10-12 16:30:42', '2022-10-12 16:30:42'),
(234, 'LordJude Brave', 'jaybleuz68@gmail.com', NULL, NULL, NULL, '2022-10-12 20:44:09', '2022-10-12 20:44:09'),
(235, 'Onyemachi Michael chimela', 'anointedtalkative@gmail.com', NULL, NULL, NULL, '2022-10-12 21:34:06', '2022-10-12 21:34:06'),
(236, 'Lawrence Ugochukwu Victor', 'thedesigndaddyy@gmail.com', NULL, NULL, NULL, '2022-10-12 23:28:38', '2022-10-12 23:28:38'),
(237, 'Kalu Michael', 'kalumickael@gmail.com', NULL, NULL, NULL, '2022-10-12 23:32:42', '2022-10-12 23:32:42'),
(238, 'Victoria James', 'jamesvictoria078@gmail.com', NULL, NULL, NULL, '2022-10-13 00:02:40', '2022-10-13 00:02:40'),
(239, 'Nwanganga Stephanie', 'michaelstephanie1998@gmail.com', NULL, NULL, NULL, '2022-10-13 02:11:45', '2022-10-13 02:11:45'),
(240, 'Mogaji Temitope', 'tzulihat@gmail.com', NULL, NULL, NULL, '2022-10-13 02:20:27', '2022-10-13 02:20:27'),
(241, 'Ndukwo Chika Eleanya', 'cheekah2017@gmail.com', NULL, NULL, NULL, '2022-10-13 02:59:50', '2022-10-13 02:59:50'),
(242, 'Deborah Idris', 'idriskaradeborah@gmail.com', NULL, NULL, NULL, '2022-10-13 12:30:34', '2022-10-13 12:30:34'),
(243, 'Ajibola Abdullahi', 'ajibolaabdullahi10@gmail.com', NULL, NULL, NULL, '2022-10-13 13:01:38', '2022-10-13 13:01:38'),
(244, 'Etim, Abasi-ifreke Nse', 'etimabasiifreke9@gmail.com', NULL, NULL, NULL, '2022-10-13 14:11:00', '2022-10-13 14:11:00'),
(245, 'Olugele Florence Chidinma', 'florenceolugele@gmail.com', NULL, NULL, NULL, '2022-10-13 17:29:26', '2022-10-13 17:29:26'),
(246, 'Awelewa Eniola', 'debbieawelewa@gmail.com', NULL, NULL, NULL, '2022-10-13 18:29:53', '2022-10-13 18:29:53'),
(247, 'Okongwu Deborah', 'cutebeloxxi@gmail.com', NULL, NULL, NULL, '2022-10-13 20:35:40', '2022-10-13 20:35:40'),
(248, 'George Ifeoma', 'somagforce@gmail.com', NULL, NULL, NULL, '2022-10-13 20:55:49', '2022-10-13 20:55:49'),
(249, 'Egbeolowo Mubarak', 'egbeolowomubarak@gmail.com', NULL, NULL, NULL, '2022-10-13 21:11:58', '2022-10-13 21:11:58'),
(250, 'prince uche Augustine', 'Heisaustinprince@gmail.com', NULL, NULL, NULL, '2022-10-13 21:21:46', '2022-10-13 21:21:46'),
(251, 'Nwaogu Onyekachi Lolia', 'lokachi3000@gmail.com', NULL, NULL, NULL, '2022-10-13 22:45:43', '2022-10-13 22:45:43'),
(252, 'Ukpong Precious Racheal', 'ukpongprecious2003@gmail.com', NULL, NULL, NULL, '2022-10-14 00:01:50', '2022-10-14 00:01:50'),
(253, 'Precious Racheal Ukpong', 'preciousukpong2003@gmail.com', NULL, NULL, NULL, '2022-10-14 00:02:53', '2022-10-14 00:02:53'),
(254, 'Gbenusola Oluwadamilola', 'iammhizdharmee@gmail.com', NULL, NULL, NULL, '2022-10-14 02:34:53', '2022-10-14 02:34:53'),
(255, 'Chukwuemeka Joy Ukamaka', 'chukwuemekajoy195@gmail.com', NULL, NULL, NULL, '2022-10-14 07:00:03', '2022-10-14 07:00:03'),
(256, 'Chukwuma Marvellous Glory', 'chukwumaglory739@gmail.com', NULL, NULL, NULL, '2022-10-15 08:19:27', '2022-10-15 08:19:27'),
(257, 'Miracle ONWE', 'onwemiracle2001@gmail.com', NULL, NULL, NULL, '2022-10-15 08:26:20', '2022-10-15 08:26:20'),
(258, 'Akindiran Abimbola oluwatunmise', 'akindiranabimbola123@gmail.com', NULL, NULL, NULL, '2022-10-15 09:39:47', '2022-10-15 09:39:47'),
(259, 'Isaac Ekemini John', 'isaacjohnj6619@gmail.com', NULL, NULL, NULL, '2022-10-15 15:54:48', '2022-10-15 15:54:48'),
(260, 'Jessica Ndukwe', 'joshyejessica@gmail.com', NULL, NULL, NULL, '2022-10-15 16:02:36', '2022-10-15 16:02:36'),
(261, 'Okoro Esther', 'okorooluwadarasimi33@gmail.com', NULL, NULL, NULL, '2022-10-15 16:15:06', '2022-10-15 16:15:06'),
(262, 'Ann Nze', 'nzechideraann@gmail.com', NULL, NULL, NULL, '2022-10-15 22:34:48', '2022-10-15 22:34:48'),
(263, 'Ale Adebola', 'aleadebola54@gmail.com', NULL, NULL, NULL, '2022-10-15 22:50:31', '2022-10-15 22:50:31'),
(264, 'Ayodeji koya', 'koya.moses2@gmail.com', NULL, NULL, NULL, '2022-10-15 22:58:24', '2022-10-15 22:58:24'),
(265, 'Adekola Boluwatife Adedamola', 'adekolaadedamola464@gmail.com', NULL, NULL, NULL, '2022-10-16 00:15:26', '2022-10-16 00:15:26'),
(266, 'Glory Juris', 'gloryjuris@gmail.com', NULL, NULL, NULL, '2022-10-16 00:53:54', '2022-10-16 00:53:54'),
(267, 'Chris Onwujekwe', 'chrisonwujekwe@gmail.com', NULL, NULL, NULL, '2022-10-16 01:23:51', '2022-10-16 01:23:51'),
(268, 'Uzochukwu Joshua', 'iamyolo2020@gmail.com', NULL, NULL, NULL, '2022-10-16 01:33:36', '2022-10-16 01:33:36'),
(269, 'Nwaka Favour chizaram', 'njoy2604@gmail.com', NULL, NULL, NULL, '2022-10-17 11:31:59', '2022-10-17 11:31:59'),
(270, 'GIFT SMYLAR', 'ikehgift8@gmail.com', NULL, NULL, NULL, '2022-10-17 11:56:44', '2022-10-17 11:56:44'),
(271, 'Fawole Sunday Bayo', 'Montyheis@gmail.com', NULL, NULL, NULL, '2022-10-17 12:03:34', '2022-10-17 12:03:34'),
(272, 'Ejimmadu Oluchi Precious', 'preciousoluchi824@gmail.com', NULL, NULL, NULL, '2022-10-17 12:30:38', '2022-10-17 12:30:38'),
(273, 'Okoro Hannah Ozioma', 'princessh851@gmail.com', NULL, NULL, NULL, '2022-10-17 15:28:32', '2022-10-17 15:28:32'),
(274, 'Charity Godwin', 'godwincharity443@gmail.com', NULL, NULL, NULL, '2022-10-17 15:38:03', '2022-10-17 15:38:03'),
(275, 'Iquaibom Eno-Obong', 'iquaibome@gmail.com', NULL, NULL, NULL, '2022-10-17 16:27:38', '2022-10-17 16:27:38'),
(276, 'Etiido Etim', 'miracool132@gmail.com', NULL, NULL, NULL, '2022-10-17 16:32:12', '2022-10-17 16:32:12'),
(277, 'Iquaibom Eno-Obong', 'enoobongiquaibom@gmail.com', NULL, NULL, NULL, '2022-10-17 16:34:19', '2022-10-17 16:34:19'),
(278, 'Sandra Adebola', 'sandraadebola923@gmail.com', NULL, NULL, NULL, '2022-10-17 16:58:06', '2022-10-17 16:58:06'),
(279, 'Alonge Adegbola', 'alongeadegbola@gmail.com', NULL, NULL, NULL, '2022-10-17 16:58:36', '2022-10-17 16:58:36'),
(280, 'Isaac Emmanuel', 'isaacmuse14@gmail.com', NULL, NULL, NULL, '2022-10-17 18:43:05', '2022-10-17 18:43:05'),
(281, 'Abubakar Terver', 'shaterjames803@gmail.com', NULL, NULL, NULL, '2022-10-18 11:01:45', '2022-10-18 11:01:45'),
(282, 'Chator Peace', 'chatorlawreen@gmail.com', NULL, NULL, NULL, '2022-10-19 01:33:43', '2022-10-19 01:33:43'),
(283, 'Ohaebuka Paul', 'ohaebukapaul200@gmail.com', NULL, NULL, NULL, '2022-10-19 13:01:47', '2022-10-19 13:01:47'),
(284, 'Emmanuel Buffson', 'emmanueljoseph120@gmail.com', NULL, NULL, NULL, '2022-10-20 01:53:26', '2022-10-20 01:53:26'),
(285, 'Gilbert-Dede Deborah', 'gilbertdede88@gmail.com', NULL, NULL, NULL, '2022-10-20 11:37:15', '2022-10-20 11:37:15'),
(286, 'Akinwale Christianah Temiloluwa', 'christianahakinwale2@gmail.com', NULL, NULL, NULL, '2022-10-20 18:07:09', '2022-10-20 18:07:09'),
(287, 'Chidera Ezeanwu', 'derakenneths@gmail.com', NULL, NULL, NULL, '2022-10-21 02:12:59', '2022-10-21 02:12:59'),
(288, 'Agbachukwu Great Philip', 'greatphili3@gmail.com', NULL, NULL, NULL, '2022-10-21 19:25:50', '2022-10-21 19:25:50'),
(289, 'Peace Ezekiel', 'peace754691@gmail.com', NULL, NULL, NULL, '2022-10-21 19:48:22', '2022-10-21 19:48:22'),
(290, 'Eberechi Joseph', 'nhastyemperor@gmail.com', NULL, NULL, NULL, '2022-10-21 20:44:44', '2022-10-21 20:44:44'),
(291, 'Charles Chidera', 'elujekwutecharleschidera@gmail.com', NULL, NULL, NULL, '2022-10-21 22:53:23', '2022-10-21 22:53:23'),
(292, 'Agbolade Daniel', 'agboladedanchrist@gmail.com', NULL, NULL, NULL, '2022-10-22 00:02:24', '2022-10-22 00:02:24'),
(293, 'Ukwueze Darlington Sopuruchukwu', 'sopurudarlidon@gmail.com', NULL, NULL, NULL, '2022-10-22 09:11:43', '2022-10-22 09:11:43'),
(294, 'Ajekwe Maxwell', 'ajekwemaxwell@gmail.com', NULL, NULL, NULL, '2022-10-22 09:14:07', '2022-10-22 09:14:07'),
(295, 'Abel Udoisong', 'udoisongab@gmail.com', NULL, NULL, NULL, '2022-10-22 10:00:19', '2022-10-22 10:00:19'),
(296, 'Omoniyi Bolaji', 'omoniyibolaji920@gmail.com', NULL, NULL, NULL, '2022-10-23 12:55:32', '2022-10-23 12:55:32'),
(297, 'Nwajibo Juliet', 'nwajibojulietugonna@gmail.com', NULL, NULL, NULL, '2022-10-24 13:07:19', '2022-10-24 13:07:19'),
(298, 'Komolafe Olatundun Ifeoluwa', 'ifeoluwaokomolafe@gmail.com', NULL, NULL, NULL, '2022-10-24 16:31:09', '2022-10-24 16:31:09'),
(299, 'Ezeokwuorah Peace Chioma', 'prudencepeace2003@gmail.com', NULL, NULL, NULL, '2022-10-24 16:53:56', '2022-10-24 16:53:56'),
(300, 'Elizabeth Yakubu', 'liezelyakubu@gmail.com', NULL, NULL, NULL, '2022-10-24 16:58:25', '2022-10-24 16:58:25'),
(301, 'Opah Chidiebere Placid', 'opahplacid082@gmail.com', NULL, NULL, NULL, '2022-10-24 19:01:17', '2022-10-24 19:01:17'),
(302, 'Opoola', 'toluopeopoola@gmail.com', NULL, NULL, NULL, '2022-10-24 23:54:16', '2022-10-24 23:54:16'),
(303, 'Happiness Christopher', 'starrmarvelous@gmail.com', NULL, NULL, NULL, '2022-10-25 12:59:33', '2022-10-25 12:59:33'),
(304, 'Happiness Christopher', 'chappiness46@gmail.com', NULL, NULL, NULL, '2022-10-25 13:00:43', '2022-10-25 13:00:43'),
(305, 'Edekobi Chioma', 'Chiomaedekobi2@gmail.com', NULL, NULL, NULL, '2022-10-26 01:16:51', '2022-10-26 01:16:51'),
(306, 'Onekhena Victor Ogie', 'victorioustv83@gmail.com', NULL, NULL, NULL, '2022-10-26 10:48:59', '2022-10-26 10:48:59'),
(307, 'Okechukwu Precious-Promise', 'preciousokechukwu839@gmail.com', NULL, NULL, NULL, '2022-10-26 11:42:56', '2022-10-26 11:42:56'),
(308, 'Peculiar okolo', '432peculiarokolo@gmail.com', NULL, NULL, NULL, '2022-10-26 14:11:32', '2022-10-26 14:11:32'),
(309, 'Nwosu Jennifer Chioma', 'jennifernwosu56@gmail.com', NULL, NULL, NULL, '2022-10-28 03:10:04', '2022-10-28 03:10:04'),
(310, 'Fortune Agburuga', 'egiyaagburuga@gmail.com', NULL, NULL, NULL, '2022-10-28 07:15:30', '2022-10-28 07:15:30'),
(311, 'Omonode Deborah', 'omonodedeborah3@gmail.com', NULL, NULL, NULL, '2022-10-28 18:01:25', '2022-10-28 18:01:25'),
(312, 'Agu Stephen chukwuma', 'netmoon505@gmail.com', NULL, NULL, NULL, '2022-10-29 15:05:16', '2022-10-29 15:05:16'),
(313, 'Olabayo Bamire', 'bamirebayo@gmail.com', NULL, NULL, NULL, '2022-12-02 16:39:35', '2022-12-02 16:39:35'),
(314, 'Chidera Attama', 'chideraattama3@gmail.com', NULL, NULL, NULL, '2023-01-02 20:32:52', '2023-01-02 20:32:52'),
(315, 'Johnson Ihunanya Nwosu', 'ihunanyanwosu@gmail.com', NULL, NULL, NULL, '2023-01-02 21:28:35', '2023-01-02 21:28:35'),
(316, 'Daphne Chiamaka', 'preciousamaka96@gmail.com', NULL, NULL, NULL, '2023-01-02 22:34:26', '2023-01-02 22:34:26'),
(317, 'Okeke stephen udochukwu', 'stephenudochukwu123@gmail.com', NULL, NULL, NULL, '2023-01-02 23:13:42', '2023-01-02 23:13:42'),
(318, 'Michael Tofowomo', 'michaeltofowomo@gmail.com', NULL, NULL, NULL, '2023-01-03 01:31:25', '2023-01-03 01:31:25'),
(319, 'ziyad abdulkudus', 'Abdulkudusohikere@gmail.com', NULL, NULL, NULL, '2023-01-03 01:49:31', '2023-01-03 01:49:31'),
(320, 'Michael Samson', 'samsonfamous1000@gmail.com', NULL, NULL, NULL, '2023-01-03 15:22:38', '2023-01-03 15:22:38'),
(321, 'Ezekiel Ighodaro', 'ezekielighodaro@gmail.com', NULL, NULL, NULL, '2023-01-03 15:29:44', '2023-01-03 15:29:44'),
(322, 'Survival Nakase', 'survivalnakase@gmail.com', NULL, NULL, NULL, '2023-01-03 15:33:19', '2023-01-03 15:33:19'),
(323, 'Omeje Valerie Amarachukwu', 'valerieomeje@gmail.com', NULL, NULL, NULL, '2023-01-03 15:34:02', '2023-01-03 15:34:02'),
(324, 'Collins otuoze Thomas', 'collinsotuoze@gmail.com', NULL, NULL, NULL, '2023-01-03 15:35:30', '2023-01-03 15:35:30'),
(325, 'Vïctor Ojimaojo Sule', 'sulevictor2005@gmail.com', NULL, NULL, NULL, '2023-01-03 15:53:22', '2023-01-03 15:53:22'),
(326, 'Alao oluwakemisola Blessing', 'kemiblessing67@gmail.com', NULL, NULL, NULL, '2023-01-03 16:03:21', '2023-01-03 16:03:21'),
(327, 'Major Blessing Sampson', 'blessmajor52@gmail.com', NULL, NULL, NULL, '2023-01-03 16:08:25', '2023-01-03 16:08:25'),
(328, 'Amanda Kenneth', 'ebereilozuruike@gmail.com', NULL, NULL, NULL, '2023-01-03 16:17:49', '2023-01-03 16:17:49'),
(329, 'Nwabichie innocent', 'innocentike558@gmail.com', NULL, NULL, NULL, '2023-01-03 16:35:15', '2023-01-03 16:35:15'),
(330, 'Faizah Saidu', 'faizahsaidu567@gmail.com', NULL, NULL, NULL, '2023-01-03 16:38:13', '2023-01-03 16:38:13'),
(331, 'Malik Bakare', 'olatundemalik739@gmail.com', NULL, NULL, NULL, '2023-01-03 16:42:04', '2023-01-03 16:42:04'),
(332, 'Ezeyi Favour', 'ezeyifavour@gmail.com', NULL, NULL, NULL, '2023-01-03 16:52:28', '2023-01-03 16:52:28'),
(333, 'Ejeagba Ibeabuchi', 'ibeejeagba1999@gmail.com', NULL, NULL, NULL, '2023-01-03 16:55:51', '2023-01-03 16:55:51'),
(334, 'Eme Ifeanyi', 'emeprosper4@gmail.com', NULL, NULL, NULL, '2023-01-03 17:14:54', '2023-01-03 17:14:54'),
(335, 'Victoria  Namonso Akwa', 'opaltoriah2002@gmail.com', NULL, NULL, NULL, '2023-01-03 17:33:50', '2023-01-03 17:33:50'),
(336, 'Adebayo Oluwatosin', 'adebayotomisin637@gmail.com', NULL, NULL, NULL, '2023-01-03 17:34:35', '2023-01-03 17:34:35'),
(337, 'Preachers Destine-Great', 'princedgpee@gmail.com', NULL, NULL, NULL, '2023-01-03 17:46:45', '2023-01-03 17:46:45'),
(338, 'David Onilude', 'oniludedavido@gmail.com', NULL, NULL, NULL, '2023-01-03 17:56:00', '2023-01-03 17:56:00'),
(339, 'Amazing-Grace Preachers', 'amazinggpee@gmail.com', NULL, NULL, NULL, '2023-01-03 17:58:33', '2023-01-03 17:58:33'),
(340, 'Kingdom-Giant Preachers', 'princegoldenie@gmail.com', NULL, NULL, NULL, '2023-01-03 18:03:02', '2023-01-03 18:03:02'),
(341, 'Emmanuella Nnaemeka', 'enuella722@gmail.com', NULL, NULL, NULL, '2023-01-03 18:26:34', '2023-01-03 18:26:34'),
(342, 'Mujidat Olaide Olusanya', 'mujidatolaide68@gmail.com', NULL, NULL, NULL, '2023-01-03 18:52:08', '2023-01-03 18:52:08'),
(343, 'Owolabi kafilat abidemi', 'owolabikafilata@gmail.com', NULL, NULL, NULL, '2023-01-03 19:20:49', '2023-01-03 19:20:49'),
(344, 'Victor Royalty', 'victorroyalty4@gmail.com', NULL, NULL, NULL, '2023-01-03 19:24:30', '2023-01-03 19:24:30'),
(345, 'Precious Bassey Bassey', 'preshb99@gmail.com', NULL, NULL, NULL, '2023-01-03 19:30:46', '2023-01-03 19:30:46'),
(346, 'OHA CHINONSO DAVID', 'ohachinonso7@gmail.com', NULL, NULL, NULL, '2023-01-03 19:52:10', '2023-01-03 19:52:10'),
(347, 'Segun Oladapo', 'segunadekunle1999@gmail.com', NULL, NULL, NULL, '2023-01-03 20:29:08', '2023-01-03 20:29:08'),
(348, 'Bamidele Shakiroh Adewumi', 'bamideleadewumi2002@gmail.com', NULL, NULL, NULL, '2023-01-03 20:51:17', '2023-01-03 20:51:17'),
(349, 'Nmachukwu Elochukwu', 'nmachielochukwu@gmail.com', NULL, NULL, NULL, '2023-01-03 22:26:22', '2023-01-03 22:26:22'),
(350, 'Alfred Stephanie', 'amandagold205@gmail.com', NULL, NULL, NULL, '2023-01-03 23:47:32', '2023-01-03 23:47:32'),
(351, 'Paul Mary', 'marypaul2847@gmail.com', NULL, NULL, NULL, '2023-01-04 01:11:30', '2023-01-04 01:11:30'),
(352, 'Chinenye F. Oluomachukwu', 'chiavorclaire@gmail.com', NULL, NULL, NULL, '2023-01-04 02:07:49', '2023-01-04 02:07:49'),
(353, 'Clement ibeh', 'clementibeh098@gmail.com', NULL, NULL, NULL, '2023-01-04 02:44:59', '2023-01-04 02:44:59'),
(354, 'Adedire mary', 'adediremary641@gmail.com', NULL, NULL, NULL, '2023-01-04 03:21:01', '2023-01-04 03:21:01'),
(355, 'Victoria Avechu', 'avechuvictoria@gmail.com', NULL, NULL, NULL, '2023-01-04 03:34:17', '2023-01-04 03:34:17'),
(356, 'Falade Damilola R.', 'faladeraychelle2002@gmail.com', NULL, NULL, NULL, '2023-01-04 04:51:37', '2023-01-04 04:51:37'),
(357, 'Faith Ukamaka okeke', 'itsveracalm2000@gmail.com', NULL, NULL, NULL, '2023-01-04 11:39:15', '2023-01-04 11:39:15'),
(358, 'Makata Lovelyn Eberechukwu', 'makatalovelyn@gmail.com', NULL, NULL, NULL, '2023-01-04 11:40:05', '2023-01-04 11:40:05'),
(359, 'Uche Paul', 'sagebigbite@gmail.com', NULL, NULL, NULL, '2023-01-04 14:19:51', '2023-01-04 14:19:51'),
(360, 'Olaseha Mercy', 'olasehamercy@gmail.com', NULL, NULL, NULL, '2023-01-04 14:32:10', '2023-01-04 14:32:10'),
(361, 'Onyia ogochukwu Rita', 'Onyiaogochukwu713@gmail.com', NULL, NULL, NULL, '2023-01-04 15:32:31', '2023-01-04 15:32:31'),
(362, 'Grace Amos', 'amosgrace154@gmail.com', NULL, NULL, NULL, '2023-01-04 15:44:37', '2023-01-04 15:44:37'),
(363, 'Fache Grace Ozavize', 'fachegracie1@gmail.com', NULL, NULL, NULL, '2023-01-04 16:31:07', '2023-01-04 16:31:07'),
(364, 'Jessica Ikechukwu', 'jessicaikechukwu19@gmail.com', NULL, NULL, NULL, '2023-01-04 17:10:06', '2023-01-04 17:10:06'),
(365, 'Ridwan Mutiu', 'maistroxxvi@gmail.com', NULL, NULL, NULL, '2023-01-04 19:00:13', '2023-01-04 19:00:13'),
(366, 'Jesulademi Durojaiye', 'jesulademisamuel01@gmail.com', NULL, NULL, NULL, '2023-01-04 20:11:55', '2023-01-04 20:11:55'),
(367, 'Saheed Barakat abiodun', 'saheedbarakat11@gmail.com', NULL, NULL, NULL, '2023-01-05 01:53:11', '2023-01-05 01:53:11'),
(368, 'David Onyesom', 'davidonyesom@gmail.com', NULL, NULL, NULL, '2023-01-05 12:32:22', '2023-01-05 12:32:22'),
(369, 'Ayawari Emmanuella', 'ayanuella@gmail.com', NULL, NULL, NULL, '2023-01-05 20:00:18', '2023-01-05 20:00:18'),
(370, 'Omole Omobolanle Eunice', 'omolebolanle3@gmail.com', NULL, NULL, NULL, '2023-01-06 01:59:14', '2023-01-06 01:59:14'),
(371, 'Ahmed Mariam Eboseremhen', 'bestmanmichael9@gmail.com', NULL, NULL, NULL, '2023-01-06 04:09:55', '2023-01-06 04:09:55'),
(372, 'Sobowale Tolulope Ruth', 'sobowaletoluloperuth@gmail.com', NULL, NULL, NULL, '2023-01-06 19:17:10', '2023-01-06 19:17:10'),
(373, 'Chineke Cajethan Goodluck', 'chinekecajethan@gmail.com', NULL, NULL, NULL, '2023-01-07 05:53:17', '2023-01-07 05:53:17');

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
-- Indexes for table `event_days`
--
ALTER TABLE `event_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
-- ALTER TABLE `migrations`
--   ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_days`
--
ALTER TABLE `event_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
-- ALTER TABLE `migrations`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_event_day_id_foreign` FOREIGN KEY (`event_day_id`) REFERENCES `event_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
