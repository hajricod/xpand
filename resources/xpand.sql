-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2021 at 02:06 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpand`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admins', '2021-04-27 08:08:10', '2021-04-27 08:08:10'),
(2, 'Users', '2021-04-27 08:08:10', '2021-04-27 08:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `keywords`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 'aaaa', 'Responsibilities:\r\nThe role is responsible for designing, coding and modifying websites, from layout to function and according to a client’s specifications. Strive to create visually appealing sites that feature user-friendly design and clear navigation.\r\nDuties:\r\n•	Regular exposure to business stakeholders and executive management, as well as the authority and scope to apply your expertise to many interesting technical problems.\r\n•	Candidate must have a strong understanding of UI, cross-browser compatibility, general web functions and standards.\r\n•	The position requires constant communication with colleagues.\r\n•	Experience in planning and delivering software platforms used across multiple products and organizational units.\r\n•	Deep expertise and hands on experience with Web Applications and programming languages such as HTML, CSS, JavaScript, JQuery and API’s.\r\n•	Deep functional knowledge or hands on design experience with Web Services (REST, SOAP, etc ..) is needed to be successful in this position.\r\n•	Strong grasp of security principles and how they apply to E-Commerce applications.\r\nSkills and Qualifications:\r\nJavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Programming Skills, E-Commerce, Teamwork, Verbal Communication, cross-browser compatibility, Web User Interface Design (UI), Security Principles, Object-Oriented Design, Web Services (REST/SOAP), Multimedia Content Development, API’s.\r\n', 'ssss', '2021-04-28', '2021-04-30', '2021-04-28 02:32:44', '2021-04-28 02:32:44'),
(2, 'aaaa', 'ssafsdf', 'ssss,', '2021-04-28', '2021-06-05', '2021-04-28 02:34:10', '2021-04-28 02:34:10'),
(3, 'aaaa', 'ssafsdf', 'ssss,', '2021-04-28', '2021-06-05', '2021-04-28 02:34:41', '2021-04-28 02:34:41'),
(4, 'test', 'csacsa', 'ccc', '2021-04-28', '2021-04-30', '2021-04-28 02:40:13', '2021-04-28 02:40:13'),
(5, 'test', 'kkkk', 'kkk', '2021-04-28', '2021-05-01', '2021-04-28 03:10:24', '2021-04-28 03:10:24'),
(6, 'xcsas', 'vevqwevwq', 'wqvwqvwq', '2021-04-28', '2021-05-08', '2021-04-28 03:18:23', '2021-04-28 03:18:23'),
(7, 'test', 'csacsa', 'scvsavcsa', '2021-04-28', '2021-05-08', '2021-04-28 03:21:39', '2021-04-28 03:21:39'),
(8, 'DWQFWQF', 'FWQFWQF', 'FWQFWQ', '2021-04-28', '2021-05-08', '2021-04-28 03:26:12', '2021-04-28 03:26:12'),
(9, 'Web Developer', '<h5>Responsibilities:</h5>\r\n<p>The role is responsible for designing, coding and modifying websites, from layout to function and according to a client’s specifications. Strive to create visually appealing sites that feature user-friendly design and clear navigation.</p>\r\n<h5>Duties:</h5>\r\n<ul>\r\n<li>Regular exposure to business stakeholders and executive management, as well as the authority and scope to apply your expertise to many interesting technical problems.</li>\r\n<li>Candidate must have a strong understanding of UI, cross-browser compatibility, general web functions and standards.</li>\r\n<li>The position requires constant communication with colleagues.</li>\r\n<li>Experience in planning and delivering software platforms used across multiple products and organizational units.</li>\r\n<li>Deep expertise and hands on experience with Web Applications and programming languages such as HTML, CSS, JavaScript, JQuery and API’s.</li>\r\n<li>Deep functional knowledge or hands on design experience with Web Services (REST, SOAP, etc ..) is needed to be successful in this position.</li>\r\n<li>Strong grasp of security principles and how they apply to E-Commerce applications.</li>\r\n</ul>\r\n<h5>Skills and Qualifications:</h5>\r\n<p>JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Programming Skills, E-Commerce, Teamwork, Verbal Communication, cross-browser compatibility, Web User Interface Design (UI), Security Principles, Object-Oriented Design, Web Services (REST/SOAP), Multimedia Content Development, API’s</p>', 'JQuery, HTML5, CSS,', '2021-04-29', '2021-05-08', '2021-04-29 04:47:04', '2021-04-29 04:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_27_075323_create_groups_table', 1),
(5, '2021_04_28_051853_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 1, 'Ahmed', 'ahmedcoom@hotmail.com', NULL, '$2y$10$HBlaGHGXf3ynJ1BEAJHjyOhcmhnp09z1cpcHoDXfhm26fvnc1/nT6', NULL, '2021-04-27 04:13:40', '2021-04-27 04:13:40'),
(3, 2, 'Salim', 'salim@laravel.com', NULL, '$2y$10$lgBiFSru52bmWtGLCsYAYesHdhCtVEFdV908X05CE74AHef0EjItO', NULL, '2021-04-27 04:16:51', '2021-04-27 04:16:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
