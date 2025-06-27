-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 27, 2025 at 09:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsauok`
--
CREATE DATABASE IF NOT EXISTS `tsauok` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tsauok`;

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(250) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `achievement` longtext DEFAULT NULL,
  `added_by` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `heading`, `image`, `achievement`, `added_by`, `created_at`, `updated_at`) VALUES
(2, 'தை பிரீமியர் லீக் 2023 - ஆண்கள்', '1681810480.jpg', '2023 ஆம் ஆண்டிற்கான தை பிரீமியர் லீக் ஆண்களுக்கான துடுப்பாட்ட சுற்றுப்போட்டியில் முதலாவது இடத்தை <b>\"SKY FORCE\"</b> அணியினர் பெற்றுக்கொண்டனர்.', 'Sarujan', '2023-04-18 04:04:40', '2023-04-18 04:04:40'),
(3, 'தை பிரீமியர் லீக் 2023 - பெண்கள்', '1681810523.jpg', '2023 ஆம் ஆண்டிற்கான தை பிரீமியர் லீக் பெண்களுக்கான துடுப்பாட்ட சுற்றுப்போட்டியில் முதலாவது இடத்தை <b>\"SINGA PENGAL\"</b> அணியினர் பெற்றுக்கொண்டனர்.', 'Sarujan', '2023-04-18 04:05:23', '2023-04-18 04:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `added_by` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `year`, `image`, `added_by`, `created_at`, `updated_at`) VALUES
(12, 'முதலாம் வருட மாணவர்கள்', '1681816977.jpg', 'Sarujan', '2023-04-18 05:52:57', '2023-04-18 05:52:57'),
(13, 'இரண்டாம் வருட மாணவர்கள்', '1681817014.jpg', 'Sarujan', '2023-04-18 05:53:34', '2023-04-18 05:53:34'),
(14, 'மூன்றாம் வருட மாணவர்கள்', '1681817038.jpg', 'Sarujan', '2023-04-18 05:53:58', '2023-04-18 05:53:58'),
(16, 'நான்காம் வருட மாணவர்கள்', '1681817083.jpg', 'Sarujan', '2023-04-18 05:54:43', '2023-04-18 05:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `boys` int(11) DEFAULT NULL,
  `girls` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `boys`, `girls`, `total`, `color`, `created_at`, `updated_at`) VALUES
(1, 'FCMS', 17, 27, 44, 'bg-blue', '2023-01-05 09:40:09', '2024-02-21 20:41:51'),
(2, 'FCT', 12, 19, 31, 'bg-green', '2023-01-05 09:40:14', NULL),
(3, 'FOH', 5, 24, 29, 'bg-orange', '2023-01-05 09:40:19', NULL),
(4, 'FOM', 31, 15, 46, 'bg-red', '2023-01-05 09:40:24', NULL),
(5, 'FOS', 26, 6, 32, 'bg-magenta', '2023-01-05 09:40:28', NULL),
(6, 'FOSS', 15, 24, 39, 'bg-red-1', '2023-01-05 09:40:31', NULL),
(7, 'LECTURERS', 18, 25, 43, 'bg-blue-1', '2023-01-05 09:40:35', '2023-04-18 02:56:32'),
(8, 'TOTAL', 15, 19, 34, 'bg-green-1', '2023-01-05 10:00:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `lecturers`
--

DROP TABLE IF EXISTS `lecturers`;
CREATE TABLE `lecturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `district` varchar(250) NOT NULL,
  `address` longtext DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `bio` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `whatsapp` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `phone`, `designation`, `bio`, `email`, `whatsapp`, `facebook`, `linkedin`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Sanmugarasa Thanoogithan', '0768946042', 'Commitee Member', 'BSc(Hons) in Software engineering.', 'sanmugarasathaoogithan@gmail.com', '0768946042', NULL, 'https://linkedin.com', '1681818058.jpg', '2023-04-18 06:10:58', '2025-06-21 02:31:28'),
(6, 'Pirabakaran Shakiththiyan', '0776696901', '4th year Committee Member', 'BSc(Hons) in Computer Science.', 'saru.contacts@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'saki.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(7, 'Sethuppriya Puvanenthirarasa', '0765433596', 'Secretary', 'B.Sc .Hons in Speech and hearing science(Audiology)', 'sethapuvanam17@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'sethu.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(8, 'Ramachandran Sweeskaran', '0768700530', 'Vice Secretary', 'B.Sc .Hons in Software Engineering', 'sweeskaran@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'swee.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(9, 'Chankavi Thayananthan', '0743428278', 'Committee Member', 'B.Sc.Hons in Electronics and Computer Science', 'chankavithaya@gmail.com ', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'sankavi.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(10, 'Niroshan Chandrasekaran', '0768477109', 'Committee Member', 'B.Sc.Hons in Electronics and Computer Science', 'niroshanr86@gmail.com ', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'niro.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(11, 'Madhusha Joseph Wimalagaran', '0743428278', 'Magazine Editor', 'Bachelor of Engineering Technology (Hons.)', 'niroshanr86@gmail.com ', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'mathusa.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(12, 'Napithan Yoganathan', '0754206713', 'Junior Treasurer', 'Bachelor of Engineering Technology (Hons.)', 'niroshanr86@gmail.com ', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'napithan.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(13, 'Rithurshan Elankeeran', '0771092593', 'President', 'Bachelor of Engineering Technology (Hons.) Specializing in Sustainable Technology', 'niroshanr86@gmail.com ', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'Rithursan.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(14, 'Yoghanathan Savitha Harini', '0757263362', 'Vice President', 'B.Sc in Physical Science', '2harinisavitha0@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'harini.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(15, 'priyan vishvanathan', '0781614188', 'Media head', 'Bachelor of Engineering Technology (Hons.)', '2harinisavitha0@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'harini.jpg', '2025-06-22 06:10:58', '2025-06-22 06:10:58'),
(17, 'Selvanathan Rakukaran', '76 019 7184', 'Commitee member', 'BSc(Hons) in Physical Science.', 'rakukaran0624@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'raku.jpg', '2025-06-18 06:10:58', '2025-06-18 06:10:58'),
(18, 'Durkka Kumarasegaran', '76 019 7184', '4th year committee member', 'BSc(Hons) in Applied Chemistry.', 'durukumaran2000@gmail.com', 'https://whatsapp.com', 'https://facebook.com', 'https://linkedin.com', 'thurkka.jpg', '2025-06-18 06:10:58', '2025-06-18 06:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_03_070213_create_students_table', 1),
(6, '2022_10_03_070240_create_faculties_table', 1),
(7, '2022_10_03_070259_create_departments_table', 1),
(8, '2022_10_03_070315_create_courses_table', 1),
(9, '2022_10_03_070333_create_events_table', 1),
(10, '2022_10_03_070347_create_news_table', 1),
(11, '2022_10_03_070406_create_competitions_table', 1),
(12, '2022_10_03_070424_create_contactus_table', 1),
(13, '2022_10_03_070441_create_aboutus_table', 1),
(14, '2022_10_03_070456_create_settings_table', 1),
(15, '2022_10_03_070513_create_permissions_table', 1),
(16, '2022_10_03_070535_create_permissions_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(250) DEFAULT NULL,
  `notice` longtext NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `uid`, `notice`, `description`, `created_at`, `updated_at`) VALUES
(2, '1', 'தரணியெங்கும் தமிழ்  \r\nமணக்கச்செய்யும்  \r\nதைத்திருநாள் கொண்டாட்டம்.  \r\nகலாசாரமும் திறமையும்  \r\nஒன்றுசேரும் பெரும்  \r\nவிழாதனைக்காண  \r\nஉங்கள் அனைவருக்கும்  \r\nஅன்பான அழைப்பு.', 'இடம் : சைபே மைதானம்  \r\nகாலம் : 28.01.2023  \r\nநேரம் : காலை 11 மணி', '2023-04-18 04:20:17', '2023-04-18 04:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
CREATE TABLE `permissions_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(250) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `service` longtext DEFAULT NULL,
  `added_by` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `heading`, `image`, `service`, `added_by`, `created_at`, `updated_at`) VALUES
(2, 'புத்தக நன்கொடை', '1681810941.jpg', '2018/19 மாணவர் பிரிவில் கல்வி கற்று மறைந்தாலும் எம்  நினைவில் என்றும் வாழ்ந்து கொண்டிருக்கின்ற யதீஷா அவர்களின் தந்தையால் வழங்கப்பட்ட சுமார் 35,000 ரூபாய் பெறுமதி வாய்ந்த புத்தகங்கள் எமது களனி பல்கலைக்கழக தமிழ் மாணவர் ஒன்றியம் சார்பாக எமது நூலகத்திற்கு வழங்கப்பட்டது.', 'Sarujan', '2023-04-18 04:12:21', '2023-04-18 04:12:21'),
(3, 'நிவாரண கற்றல் உதவிகள்', '1681810992.jpg', 'கிளிநொச்சி மற்றும் முல்லைத்தீவு மாவட்டங்களில் ஏற்பட்ட வெள்ளப்பெருக்கின் காரணமாகப் பாதிக்கப்பட்ட எமது இரத்த உறவுகளுக்கு  களனிப் பல்கலைக் கழக தமிழ் மாணவர்கள் சார்பாக கற்றல் உபகரணங்கள் வழங்கப்பட்டது.', 'Sarujan', '2023-04-18 04:13:12', '2023-04-18 04:13:12'),
(4, 'வழிகாட்டல் கருத்தரங்கு', '1681811034.jpg', 'களனி பல்கலைக்கழக தமிழ் மாணவர் ஒன்றியத்தின் ஏற்பாட்டில்  (17/05/2022) மன்/ஆண்டாங்குளம் றோமன் கத்தோலிக்க அரசினர் தமிழ் கலவன் பாடசாலையில்  க.பொ.த சாதாரண தர மாணவர்களுக்கான கணிதம் மற்றும் விஞ்ஞான பாடங்களுக்கான வழிகாட்டல் கருத்தரங்கு நடைபெற்றது.', 'Sarujan', '2023-04-18 04:13:54', '2023-04-18 04:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `profile` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `email`, `phone`, `username`, `password`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Sarujan P', 'Super Admin', 'saru@gmail.com', '0775428041', 'sarujan', '$2y$10$63/SrYed/EEWP4ujA6MVO.ZU25MUUeCKJH2SCffEdtD7qjKYAM/ri', '1681811918.jpg', '2023-01-05 03:26:10', '2023-04-18 04:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

DROP TABLE IF EXISTS `years`;
CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(250) DEFAULT NULL,
  `boys` int(11) DEFAULT NULL,
  `girls` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `boys`, `girls`, `total`, `color`, `created_at`, `updated_at`) VALUES
(5, '1', 15, 20, 35, 'bg-green', '2023-04-17 16:21:29', NULL),
(6, '2', 10, 17, 37, 'bg-orange', '2023-04-17 16:21:33', NULL),
(7, '3', 25, 15, 40, 'bg-magenta', '2023-04-17 16:21:37', NULL),
(8, '4', 23, 32, 55, 'bg-blue', '2023-04-17 16:21:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions_roles`
--
ALTER TABLE `permissions_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions_roles`
--
ALTER TABLE `permissions_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
