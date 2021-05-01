-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 10:58 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `name`, `resume`, `status`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'ahmed', 'ctsMgkRhWQD7Hhgisk3z3kSWVfSvF17IeSoObaOX.pdf', 0, 9, '2021-04-29 17:28:29', '2021-04-29 17:28:29'),
(2, 4, 'ahmed 2', 'UlI3jCjINue21kia4oQ1R4ndr355QNp8lT7B2NlS.pdf', 0, 9, '2021-04-29 17:32:34', '2021-04-29 17:32:34'),
(3, 4, 'ahmed', 'Ck5aFuAzQhXp7luGTU54qMxqJVEV3cEpB3c4LTvB.docx', 0, 9, '2021-04-29 17:42:36', '2021-04-29 17:42:36'),
(4, 4, 'ahmed', 'IPbzY5c366i2959DW2qsM9bRMFvf4YmRCvxGtSzD.pdf', 0, 9, '2021-04-29 17:45:34', '2021-04-29 17:45:34'),
(5, 2, 'ahmed', 'ANwla2QKjiCzbXNZOYFAbSRBNhtzOg7zA3uOMQi0.pdf', 0, 9, '2021-04-29 18:14:44', '2021-04-29 18:14:44');

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
(9, 'Web Developer', '<h5>Responsibilities:</h5>\r\n<p>The role is responsible for designing, coding and modifying websites, from layout to function and according to a client’s specifications. Strive to create visually appealing sites that feature user-friendly design and clear navigation.</p>\r\n<h5>Duties:</h5>\r\n<ul>\r\n<li>Regular exposure to business stakeholders and executive management, as well as the authority and scope to apply your expertise to many interesting technical problems.</li>\r\n<li>Candidate must have a strong understanding of UI, cross-browser compatibility, general web functions and standards.</li>\r\n<li>The position requires constant communication with colleagues.</li>\r\n<li>Experience in planning and delivering software platforms used across multiple products and organizational units.</li>\r\n<li>Deep expertise and hands on experience with Web Applications and programming languages such as HTML, CSS, JavaScript, JQuery and API’s.</li>\r\n<li>Deep functional knowledge or hands on design experience with Web Services (REST, SOAP, etc ..) is needed to be successful in this position.</li>\r\n<li>Strong grasp of security principles and how they apply to E-Commerce applications.</li>\r\n</ul>\r\n<h5>Skills and Qualifications:</h5>\r\n<p>JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Programming Skills, E-Commerce, Teamwork, Verbal Communication, cross-browser compatibility, Web User Interface Design (UI), Security Principles, Object-Oriented Design, Web Services (REST/SOAP), Multimedia Content Development, API’s</p>', 'JQuery, HTML5, CSS,', '2021-04-29', '2021-05-08', '2021-04-29 04:47:04', '2021-04-29 04:47:04'),
(10, 'Networking Specialist', '<p>We are looking for a Network Engineer who will be responsible for maintaining and administering our company\'s computer networks. Your primary duties will include maintenance of computer networks, hardware, software, and other related systems, performing disaster recovery operations, protecting data, software, and hardware from attacks, and replacing faulty network hardware components when necessary. You will also be working closely with the users of our network in order to identify potential issues and fix existing problems.</p><p>To be a successful candidate, you will need to have a strong understanding of network infrastructure and network hardware. You will also need to be able to implement, administer, and troubleshoot network devices including WAPs, firewalls, routers, switches, and controllers. A deep knowledge of application transport and network infrastructure protocols is highly desired.</p>\r\n\r\n<h5>Responsibilities:</h5>\r\n\r\n<ul><li>Maintaining and administering computer networks and related computing environments including systems software, applications software, hardware, and configurations.</li><li>Performing disaster recovery operations and data backups when required.</li><li>Protecting data, software, and hardware by coordinating, planning, and implementing network security measures.</li><li>Troubleshooting, diagnosing, and resolving hardware, software, and other network and system problems.</li><li>Replacing faulty network hardware components when required.</li><li>Maintaining, configuring, and monitoring virus protection software and email applications.</li><li>Monitoring network performance to determine if adjustments need to be made.</li><li>Conferring with network users about solving existing system problems.</li><li>Operating master consoles to monitor the performance of networks and computer systems.</li><li>Coordinating computer network access and use.</li><li>Designing, configuring, and testing networking software, computer hardware, and operating system software.</li></ul>\r\n\r\n<h5>Requirements:</h5>\r\n\r\n<ul><li>Bachelor degree in Information Technology related field of study with a network engineering focus.</li><li>Strong understanding of network infrastructure and network hardware.</li><li>Ability to think through problems and visualize solutions.</li><li>Ability to implement, administer, and troubleshoot network infrastructure devices, including wireless access points, firewall, routers, switches, controllers.</li><li>Knowledge of application transport and network infrastructure protocols.</li><li>Ability to create accurate network diagrams and documentation for design and planning network communication systems.</li><li>Provides specific detailed information for hardware and software selection.</li><li>Ability to quickly learn new or unfamiliar technology and products using documentation and internet resources.</li><li>Ability to work with all levels of staff within and outside of IT and outside the organization.</li><li>A self-starter able to work independently but comfortable working in a team environment.</li><li>Good analytical and problem-solving skills.</li><li>Dependable and flexible when necessary.</li><li>Network security experience.</li><li>LAN and WAN experience.</li></ul>', 'graduate, java', '2021-04-28', '2021-04-30', '2021-04-29 18:47:17', '2021-04-29 19:15:12');

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
(5, '2021_04_28_051853_create_jobs_table', 2),
(7, '2021_04_29_202958_create_applicants_table', 3);

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
(3, 2, 'Salim', 'salim@laravel.com', NULL, '$2y$10$lgBiFSru52bmWtGLCsYAYesHdhCtVEFdV908X05CE74AHef0EjItO', NULL, '2021-04-27 04:16:51', '2021-04-27 04:16:51'),
(4, 2, 'Saeed', 'hajricod@gmail.com', NULL, '$2y$10$MVSxyn6exqhfDHpXlhMiTO14aPlfe8VbMDn0RP0iHrVJrcGuf/hIu', NULL, '2021-04-29 16:39:45', '2021-04-29 16:39:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_user_id_foreign` (`user_id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`);

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
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
