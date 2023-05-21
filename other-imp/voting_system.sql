-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2023 at 10:48 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `batch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `Election_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `Election_id` bigint(20) UNSIGNED NOT NULL,
  `Batch_Id` bigint(20) UNSIGNED NOT NULL,
  `Department_id` bigint(20) UNSIGNED NOT NULL,
  `Society_id` bigint(20) UNSIGNED NOT NULL,
  `Category_id` bigint(20) UNSIGNED NOT NULL,
  `Election_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Starting_dateTime` datetime NOT NULL,
  `Ending_dateTime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2023_05_15_055453_create_departments_table', 1),
(2, '2023_05_15_060700_create_batches_table', 2),
(3, '2023_05_15_060812_create_categories_table', 3),
(4, '2023_05_15_062157_create_voters_table', 4),
(5, '2023_05_15_085121_create_societies_table', 5),
(6, '2023_05_15_085418_create_society_voters_table', 6),
(7, '2023_05_15_090003_create_elections_table', 7),
(8, '2023_05_15_092708_create_candidates_table', 8),
(9, '2023_05_15_093327_create_votings_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `societies`
--

CREATE TABLE `societies` (
  `socity_id` bigint(20) UNSIGNED NOT NULL,
  `socity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `society_voters`
--

CREATE TABLE `society_voters` (
  `Society_id` bigint(20) UNSIGNED NOT NULL,
  `Voter_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `Index_Number` bigint(20) UNSIGNED NOT NULL,
  `Department_id` bigint(20) UNSIGNED NOT NULL,
  `Batch_Id` bigint(20) UNSIGNED NOT NULL,
  `NIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Full_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `Voting_id` bigint(20) UNSIGNED NOT NULL,
  `Election_id` bigint(20) UNSIGNED NOT NULL,
  `Candidate_Id` bigint(20) UNSIGNED NOT NULL,
  `Voter_Id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Choice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `candidates_election_id_foreign` (`Election_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`Election_id`),
  ADD KEY `elections_batch_id_foreign` (`Batch_Id`),
  ADD KEY `elections_department_id_foreign` (`Department_id`),
  ADD KEY `elections_society_id_foreign` (`Society_id`),
  ADD KEY `elections_category_id_foreign` (`Category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `societies`
--
ALTER TABLE `societies`
  ADD PRIMARY KEY (`socity_id`);

--
-- Indexes for table `society_voters`
--
ALTER TABLE `society_voters`
  ADD KEY `society_voters_society_id_foreign` (`Society_id`),
  ADD KEY `society_voters_voter_id_foreign` (`Voter_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`Index_Number`),
  ADD KEY `voters_department_id_foreign` (`Department_id`),
  ADD KEY `voters_batch_id_foreign` (`Batch_Id`);

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`Voting_id`),
  ADD KEY `votings_election_id_foreign` (`Election_id`),
  ADD KEY `votings_candidate_id_foreign` (`Candidate_Id`),
  ADD KEY `votings_voter_id_foreign` (`Voter_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `Election_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `societies`
--
ALTER TABLE `societies`
  MODIFY `socity_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `Index_Number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `Voting_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_election_id_foreign` FOREIGN KEY (`Election_id`) REFERENCES `elections` (`Election_id`);

--
-- Constraints for table `elections`
--
ALTER TABLE `elections`
  ADD CONSTRAINT `elections_batch_id_foreign` FOREIGN KEY (`Batch_Id`) REFERENCES `batches` (`batch_id`),
  ADD CONSTRAINT `elections_category_id_foreign` FOREIGN KEY (`Category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `elections_department_id_foreign` FOREIGN KEY (`Department_id`) REFERENCES `departments` (`department_id`),
  ADD CONSTRAINT `elections_society_id_foreign` FOREIGN KEY (`Society_id`) REFERENCES `societies` (`socity_id`);

--
-- Constraints for table `society_voters`
--
ALTER TABLE `society_voters`
  ADD CONSTRAINT `society_voters_society_id_foreign` FOREIGN KEY (`Society_id`) REFERENCES `societies` (`socity_id`),
  ADD CONSTRAINT `society_voters_voter_id_foreign` FOREIGN KEY (`Voter_id`) REFERENCES `voters` (`Index_Number`);

--
-- Constraints for table `voters`
--
ALTER TABLE `voters`
  ADD CONSTRAINT `voters_batch_id_foreign` FOREIGN KEY (`Batch_Id`) REFERENCES `batches` (`batch_id`),
  ADD CONSTRAINT `voters_department_id_foreign` FOREIGN KEY (`Department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `votings`
--
ALTER TABLE `votings`
  ADD CONSTRAINT `votings_candidate_id_foreign` FOREIGN KEY (`Candidate_Id`) REFERENCES `candidates` (`candidate_id`),
  ADD CONSTRAINT `votings_election_id_foreign` FOREIGN KEY (`Election_id`) REFERENCES `elections` (`Election_id`),
  ADD CONSTRAINT `votings_voter_id_foreign` FOREIGN KEY (`Voter_Id`) REFERENCES `voters` (`Index_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
