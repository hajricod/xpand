-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 09:44 PM
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
  `resume_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords_score` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords_score`)),
  `status` tinyint(1) NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `name`, `resume`, `resume_text`, `keywords_score`, `status`, `job_id`, `created_at`, `updated_at`) VALUES
(7, 2, 'Ahmed', 'zSb7tEtb7Wj5EdFsJIC3nC2FPmCbo6O1fuAc2wfM.pdf', 'a b o u t  m e	  	 	\ntalal mohammad	 	\nfull stack web developer	 	\nobjective	 	\ndedicated and efficient full stack developer with 6+ 	years’ 	\nexperience	 in application layers, presentation layers, and 	\ndatabases. certified in both f/e and b/e technologies. \nspearheaded successful transition from lamp stack to mean \nwhich cut latency by 40% a	nd increased effectiveness of 	\ndatabase administrators by 20%. seeking to further improve \n<span style=\'background-color:yellow\'><span style=\'background-color:yellow\'>html5 and css3 skills as the future full stack developer at \natmospheric solutions.</span></span>	 	\nexperience	 	\nfull stack developer	 	\nmay 2016	–june 2019	 	\ngeneral gaming, boston, ma	 	\nkey qualifications & responsibilities	 	\n• 	developed full	-stack web applications which processed, 	\nanaly	zed, and rendered data visually.	 	\n• 	liaised with 	back	-end	 developers, front end developers, 	\nquality assurance testers, and cto as needed.	 	\n• 	managed time	-sensitive updates, including content 	\nchanges and database upgrades.	 	\n• 	planned, wrote, and debugged web applica	tions and 	\nsoftware with complete accuracy.	 	\nke	y skills	 	\n• 	google 	compute engine	 	\n• 	android and ios app development	 	\n• 	html, css, javascript, <span style=\'background-color:yellow\'>php	 	\n• 	bootstrap & angular js	 	\n• 	<span style=\'background-color:yellow\'>jquery	 	\n• 	sql databases	 	\n 	\na 	self	-taught	, design thinking 	\nfull	-stack 	web	 developer with 	\na passion for motion design.</span></span> 	 	\n 	c o n t a c t	 	 	 	\n talalmohammad@gmail.com	   	\n +968 	9788	22	53	 	\n linkedin.com/in/	talal	 	\noman, muscat	 	\n 	\n 	\n 	e d u c a t i o n	 	 	\n 	\n \nchamplain college, \nburlington, vt	 	\nbachelor of science in \nsoftware development	 	\n2011', '{\"jquery\":1,\"html\":2,\"php\":1}', 1, 9, '2021-05-02 05:07:44', '2021-05-02 05:07:44'),
(8, 2, 'Saeed AlSiyabi', 'Pu2ssOPP53RvIEYiZPCQKdhg9c5DScyRKBKjpqUm.pdf', '', '{\"graduate\":0,\" java\":0}', 0, 10, '2021-05-02 05:13:38', '2021-05-02 05:13:38'),
(9, 4, 'Nasser Alsadi', 'g6ghOsPbmVf72zeRcZZxa7xuQdu0pG8fGtk4QOik.pdf', 'a b o u t  m e	  	 	\ntalal mohammad	 	\nfull stack web developer	 	\nobjective	 	\ndedicated and efficient full stack developer with 6+ 	years’ 	\nexperience	 in application layers, presentation layers, and 	\ndatabases. certified in both f/e and b/e technologies. \nspearheaded successful transition from lamp stack to mean \nwhich cut latency by 40% a	nd increased effectiveness of 	\ndatabase administrators by 20%. seeking to further improve \n<span style=\'background-color:yellow\'><span style=\'background-color:yellow\'>html5 and css3 skills as the future full stack developer at \natmospheric solutions.</span></span>	 	\nexperience	 	\nfull stack developer	 	\nmay 2016	–june 2019	 	\ngeneral gaming, boston, ma	 	\nkey qualifications & responsibilities	 	\n• 	developed full	-stack web applications which processed, 	\nanaly	zed, and rendered data visually.	 	\n• 	liaised with 	back	-end	 developers, front end developers, 	\nquality assurance testers, and cto as needed.	 	\n• 	managed time	-sensitive updates, including content 	\nchanges and database upgrades.	 	\n• 	planned, wrote, and debugged web applica	tions and 	\nsoftware with complete accuracy.	 	\nke	y skills	 	\n• 	google 	compute engine	 	\n• 	android and ios app development	 	\n• 	html, css, javascript, <span style=\'background-color:yellow\'>php	 	\n• 	bootstrap & angular js	 	\n• 	<span style=\'background-color:yellow\'>jquery	 	\n• 	sql databases	 	\n 	\na 	self	-taught	, design thinking 	\nfull	-stack 	web	 developer with 	\na passion for motion design.</span></span> 	 	\n 	c o n t a c t	 	 	 	\n talalmohammad@gmail.com	   	\n +968 	9788	22	53	 	\n linkedin.com/in/	talal	 	\noman, muscat	 	\n 	\n 	\n 	e d u c a t i o n	 	 	\n 	\n \nchamplain college, \nburlington, vt	 	\nbachelor of science in \nsoftware development	 	\n2011', '{\"jquery\":1,\"html\":2,\"php\":1}', 1, 9, '2021-05-02 17:02:37', '2021-05-02 17:02:37'),
(10, 5, 'Hussain Sadiq', 'K2hXFMx4zj14V7hHsLFJvhU8qCQK8o6Ij0oYGw5U.pdf', 'a b o u t  m e	  	 	\ntalal mohammad	 	\nfull stack web developer	 	\nobjective	 	\ndedicated and efficient full stack developer with 6+ 	years’ 	\nexperience	 in application layers, presentation layers, and 	\ndatabases. certified in both f/e and b/e technologies. \nspearheaded successful transition from lamp stack to mean \nwhich cut latency by 40% a	nd increased effectiveness of 	\ndatabase administrators by 20%. seeking to further improve \nhtml5 and css3 skills as the future full stack developer at \natmospheric solutions.	 	\nexperience	 	\nfull stack developer	 	\nmay 2016	–june 2019	 	\ngeneral gaming, boston, ma	 	\nkey qualifications & responsibilities	 	\n• 	developed full	-stack web applications which processed, 	\nanaly	zed, and rendered data visually.	 	\n• 	liaised with 	back	-end	 developers, front end developers, 	\nquality assurance testers, and cto as needed.	 	\n• 	managed time	-sensitive updates, including content 	\nchanges and database upgrades.	 	\n• 	planned, wrote, and debugged web applica	tions and 	\nsoftware with complete accuracy.	 	\nke	y skills	 	\n• 	google 	compute engine	 	\n• 	android and ios app development	 	\n• 	html, css, javascript, php	 	\n• 	bootstrap & angular js	 	\n• 	jquery	 	\n• 	<span style=\'background-color:yellow\'>sql databases	 	\n 	\na 	self	-taught	, design thinking 	\nfull	-stack 	web	 developer with 	\na passion for motion design.</span> 	 	\n 	c o n t a c t	 	 	 	\n talalmohammad@gmail.com	   	\n +968 	9788	22	53	 	\n linkedin.com/in/	talal	 	\noman, muscat	 	\n 	\n 	\n 	e d u c a t i o n	 	 	\n 	\n \nchamplain college, \nburlington, vt	 	\nbachelor of science in \nsoftware development	 	\n2011', '{\"dba\":0,\"api\":0,\"sql\":1}', 1, 11, '2021-05-03 13:50:42', '2021-05-03 13:50:42');

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
(9, 'Web Developer', '<h5>Responsibilities:</h5>\r\n<p>The role is responsible for designing, coding and modifying websites, from layout to function and according to a client’s specifications. Strive to create visually appealing sites that feature user-friendly design and clear navigation.</p>\r\n<h5>Duties:</h5>\r\n<ul>\r\n<li>Regular exposure to business stakeholders and executive management, as well as the authority and scope to apply your expertise to many interesting technical problems.</li>\r\n<li>Candidate must have a strong understanding of UI, cross-browser compatibility, general web functions and standards.</li>\r\n<li>The position requires constant communication with colleagues.</li>\r\n<li>Experience in planning and delivering software platforms used across multiple products and organizational units.</li>\r\n<li>Deep expertise and hands on experience with Web Applications and programming languages such as HTML, CSS, JavaScript, JQuery and API’s.</li>\r\n<li>Deep functional knowledge or hands on design experience with Web Services (REST, SOAP, etc ..) is needed to be successful in this position.</li>\r\n<li>Strong grasp of security principles and how they apply to E-Commerce applications.</li>\r\n</ul>\r\n<h5>Skills and Qualifications:</h5>\r\n<p>JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Programming Skills, E-Commerce, Teamwork, Verbal Communication, cross-browser compatibility, Web User Interface Design (UI), Security Principles, Object-Oriented Design, Web Services (REST/SOAP), Multimedia Content Development, API’s</p>', 'JQuery,HTML,php', '2021-04-29', '2021-05-31', '2021-04-29 04:47:04', '2021-05-02 06:41:29'),
(10, 'Networking Engineer', '<p>We are looking for a Network Engineer who will be responsible for maintaining and administering our company\'s computer networks. Your primary duties will include maintenance of computer networks, hardware, software, and other related systems, performing disaster recovery operations, protecting data, software, and hardware from attacks, and replacing faulty network hardware components when necessary. You will also be working closely with the users of our network in order to identify potential issues and fix existing problems.</p><p>To be a successful candidate, you will need to have a strong understanding of network infrastructure and network hardware. You will also need to be able to implement, administer, and troubleshoot network devices including WAPs, firewalls, routers, switches, and controllers. A deep knowledge of application transport and network infrastructure protocols is highly desired.</p>\r\n\r\n<h5>Responsibilities:</h5>\r\n\r\n<ul><li>Maintaining and administering computer networks and related computing environments including systems software, applications software, hardware, and configurations.</li><li>Performing disaster recovery operations and data backups when required.</li><li>Protecting data, software, and hardware by coordinating, planning, and implementing network security measures.</li><li>Troubleshooting, diagnosing, and resolving hardware, software, and other network and system problems.</li><li>Replacing faulty network hardware components when required.</li><li>Maintaining, configuring, and monitoring virus protection software and email applications.</li><li>Monitoring network performance to determine if adjustments need to be made.</li><li>Conferring with network users about solving existing system problems.</li><li>Operating master consoles to monitor the performance of networks and computer systems.</li><li>Coordinating computer network access and use.</li><li>Designing, configuring, and testing networking software, computer hardware, and operating system software.</li></ul>\r\n\r\n<h5>Requirements:</h5>\r\n\r\n<ul><li>Bachelor degree in Information Technology related field of study with a network engineering focus.</li><li>Strong understanding of network infrastructure and network hardware.</li><li>Ability to think through problems and visualize solutions.</li><li>Ability to implement, administer, and troubleshoot network infrastructure devices, including wireless access points, firewall, routers, switches, controllers.</li><li>Knowledge of application transport and network infrastructure protocols.</li><li>Ability to create accurate network diagrams and documentation for design and planning network communication systems.</li><li>Provides specific detailed information for hardware and software selection.</li><li>Ability to quickly learn new or unfamiliar technology and products using documentation and internet resources.</li><li>Ability to work with all levels of staff within and outside of IT and outside the organization.</li><li>A self-starter able to work independently but comfortable working in a team environment.</li><li>Good analytical and problem-solving skills.</li><li>Dependable and flexible when necessary.</li><li>Network security experience.</li><li>LAN and WAN experience.</li></ul>', 'graduate, java', '2021-04-28', '2021-05-31', '2021-04-29 18:47:17', '2021-05-02 06:40:56'),
(11, 'Database Administrator', '<h5>Job brief</h5>\r\n<p>A professional Database Administrator (DBA) will keep the database up and running smoothly 24/7. The goal is to provide a seamless flow of information throughout the company, considering both backend data structure and frontend accessibility for end-users.</p>\r\n<h5>Responsibilities</h5>\r\n<ul>\r\n<li>Build database systems of high availability and quality depending on each end user&rsquo;s specialised role</li>\r\n<li>Design and implement database in accordance to end users information needs and views</li>\r\n<li>Define users and enable data distribution to the right user, in appropriate format and in a timely manner</li>\r\n<li>Use high-speed transaction recovery techniques and backup data</li>\r\n<li>Minimise database downtime and manage parameters to provide fast query responses</li>\r\n<li>Provide proactive and reactive data management support and training to users</li>\r\n<li>Determine, enforce and document database policies, procedures and standards</li>\r\n<li>Perform tests and evaluations regularly to ensure data security, privacy and integrity</li>\r\n<li>Monitor database performance, implement changes and apply new patches and versions when required</li>\r\n</ul>\r\n<h5>Requirements</h5>\r\n<ul>\r\n<li>Proven working experience as a Database Administrator</li>\r\n<li>Hands-on experience with database standards and end user applications</li>\r\n<li>Excellent knowledge of data backup, recovery, security, integrity and SQL</li>\r\n<li>Familiarity with database design, documentation and coding</li>\r\n<li>Previous experience with DBA case tools (frontend/backend) and third party tools</li>\r\n<li>Familiarity with programming languages API</li>\r\n<li>Problem solving skills and ability to think algorithmically</li>\r\n<li>BS degree in a computer discipline or relevant certification</li>\r\n</ul>', 'DBA,API,SQL', '2021-05-03', '2021-05-31', '2021-05-03 13:40:32', '2021-05-03 13:40:32');

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
(4, 2, 'Saeed', 'hajricod@gmail.com', NULL, '$2y$10$MVSxyn6exqhfDHpXlhMiTO14aPlfe8VbMDn0RP0iHrVJrcGuf/hIu', NULL, '2021-04-29 16:39:45', '2021-04-29 16:39:45'),
(5, 2, 'Hussain Sadiq', 'hussain@gmail.com', NULL, '$2y$10$S7h9j/sc3ariLxHGTx34OOC55yk9sIAwxaL/7uGneG9rJyhPlEtBu', NULL, '2021-05-03 13:50:14', '2021-05-03 13:50:14');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
