-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 05:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6228747`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HroWZeGTzS.png', 1, '2022-01-10 04:31:19', '2022-01-10 04:31:23'),
(2, 'nke3HqmLTd.jpg', 0, '2022-01-10 04:31:31', '2022-01-10 04:31:31'),
(3, 'VJfFolpyBD.jpg', 0, '2022-01-10 04:31:44', '2022-01-10 04:31:44'),
(4, 'DSL9TJizIk.jpg', 0, '2022-01-10 04:31:52', '2022-01-10 04:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbs`
--

CREATE TABLE `herbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `herbs`
--

INSERT INTO `herbs` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ขมิ้นชัน', 'เป็นเครื่องเทศที่เป็นแหล่งของเคอร์คูมิน (Curcumin) ซึ่งเป็นสารต้านอนุมูลอิสระที่ช่วยบรรเทาอาการอักเสบ จากงานวิจัยในวารสาร Traditional and Complementary Medicine ประเทศเนเธอร์แลนด์ ปี พ.ศ. 2560 ระบุว่า สารเคอร์คูมินอาจช่วยบรรเทาอาการปวด ต้านการอักเสบ และการรับประทานขมิ้นอาจช่วยป้องกันหรือชะลอการเกิดโรคอัลไซเมอร์ได้', 'EFcYrGgpc4.jpg', '2022-01-10 04:33:08', '2022-01-10 04:33:08'),
(2, 'พริกแห้ง พริกสด พริกป่น', 'เป็นแหล่งแคปไซซิน (Capsaicin) ซึ่งอาจช่วยเพิ่มการเผาผลาญ ทำให้การไหลเวียนเลือดดีขึ้น จากงานวิจัยในวารสาร Open Heart ประเทศอังกฤษ ปี พ.ศ. 2558 ระบุว่า แคปไซซินอาจช่วยปรับปรุงสุขภาพหัวใจ เร่งการเผาผลาญ และอาจช่วยลดไขมันหน้าท้อง ลดความอยากอาหารได้', 'sOxuLZwiaF.jpg', '2022-01-10 04:34:08', '2022-01-10 04:34:08'),
(3, 'อบเชย', 'มีแคลอรี่ต่ำมาก อาจช่วยต้านการอักเสบจากสารอนุมูลอิสระและช่วยต่อสู้กับแบคทีเรีย และจากงานวิจัยในวารสาร Pharmacognosy Research ปี พ.ศ. 2558 ระบุว่า อบเชย อาจช่วยลดระดับน้ำตาลในเลือดในผู้ป่วยเบาหวานหรือมีแนวโน้มที่จะเป็นโรคนี้', 'vaTkqqYGU5.jpg', '2022-01-10 04:34:48', '2022-01-10 04:34:48'),
(4, 'กระวาน', 'มีแร่ธาตุสูง เช่น แมกนีเซียม สังกะสี อาจช่วยบรรเทาอาการท้องไส้ปั่นป่วน และจากการวิจัยในวารสาร Lipids in Health and Disease ประเทศอังกฤษ ปี พ.ศ. 2560 ระบุว่า กระวานมีสารต้านอนุมูลอิสระหลายชนิด เช่น ฟีนอล (Phenol) เควอซิทิน (Quercetin) เรสเวอราทรอล (Resveratrol) ที่อาจช่วยต้านการอักเสบ ท้องผูก ท้องเสีย อาการจุกเสียด โรคลมบ้าหมู โรคหัวใจและหลอดเลือด', 'g6hoHtR21R.jpg', '2022-01-10 04:35:29', '2022-01-10 04:35:29'),
(5, 'กระเทียม', 'เป็นแหล่งของอัลลิซิน (Allicin) ที่อาจลดโอกาสเกิดโรคหัวใจ และจากงานวิจัยในวารสาร BMC Cardiovascular Disorders ปี พ.ศ.2551 พบว่า การรับประทานกระเทียมเป็นประจำอาจช่วยลดระดับคอเลสเตอรอลและลดความดันโลหิต ซึ่งลดความเสี่ยงโรคหัวใจและหลอดเลือด', 'tNYaQr40np.jpg', '2022-01-10 04:36:04', '2022-01-10 04:36:04'),
(6, 'ขิง', 'อาจช่วยบรรเทาอาการท้องอืดและบรรเทาอาการคลื่นไส้ จากงานวิจัยในวารสาร Gastroenterology Research and Practice ปี พ.ศ. 2558 พบว่า ขิงอาจมีคุณสมบัติต้านการอักเสบและต้านอนุมูลอิสระ และอาจลดความเสี่ยงเกิดโรคมะเร็งได้', 'alDfSbvAKp.jpg', '2022-01-10 04:37:05', '2022-01-10 04:37:05'),
(7, 'สะระแหน่', 'มีฤทธิ์เย็น มีคุณสมบัติต้านเชื้อแบคทีเรีย ดีต่อสุขภาพทางเดินอาหาร สุขภาพหัวใจ หลอดเลือด และปอด โดยอาจช่วยขยายหลอดลมทำให้หายใจสะดวกขึ้นเมื่อสูดดม นอกจากนี้ สะระแหน่ยังอาจมีฤทธิ์คลายกล้ามเนื้อได้อีกด้วย', '9xw2oMaLk1.jpeg', '2022-01-10 04:37:48', '2022-01-10 04:37:48'),
(8, 'ผงยี่หร่า', 'อุดมไปด้วยธาตุเหล็ก อาจช่วยลดน้ำหนักได้ จากการศึกษาที่ถูกตีพิมพ์ในวารสารทางการแพทย์ Evidence-Based Complementary and Alternative Medicine ปี พ.ศ. 2562 และในวารสาร BMC Complementary Medicine and Therapies ปี พ.ศ.2564 พบว่า ยี่หร่ามีฟีนอลิก (Phenolic) ที่เป็นสารต้านอนุมูลอิสระ ช่วยลดน้ำหนัก ควบคุมคอเลสเตอรอล และจัดการความเครียดได้', 'olu2UBzcQc.jpg', '2022-01-10 04:38:27', '2022-01-10 04:38:27'),
(9, 'ว่านหางจระเข้', 'อาจมีฤทธ์ช่วยเร่งสมานแผล โดยเฉพาะแผลไฟไหม้น้ำร้อนลวก จากงานวิจัยในวารสาร Iranian Journal of Medical Sciences ปี พ.ศ. 2562 พบว่า ว่านหางจระเข้สามารถเร่งสมานแผลไฟไหม้ได้ เมื่อเทียบกับยาทั่วไป นอกจากนี้ ยังช่วยป้องกันรอยแดง อาการคัน และการติดเชื้อ', 'A2Pc3lVxw6.jpg', '2022-01-10 04:39:10', '2022-01-10 04:39:10'),
(10, 'ฟ้าทะลายโจร', 'อาจมีคุณสมบัติช่วยรักษาโรคหลายชนิด จากงานวิจัยในวารสาร Asian Pacific Journal of Tropical Disease ปี พ.ศ. 2557 ระบุว่า ฟ้าทะลายโจรมีสารไดเทอร์พีน (Diterpenes) สารฟลาโวนอยด์ (Flavonoids) แซนโทน (Xanthones) เป็นสารต้านอนุมูลอิสระที่อาจใช้รักษาโรคหลายชนิด เช่น มะเร็ง เบาหวาน ความดันโลหิตสูง แผลในกระเพาะ โรคเรื้อน หลอดลมอักเสบ โรคผิวหนัง ท้องอืด จุกเสียด ไข้หวัดใหญ่', 'dNVklN6zrN.jpg', '2022-01-10 04:39:48', '2022-01-10 04:39:48');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_23_145129_create_categories_table', 1),
(6, '2021_08_23_145237_create_herbs_table', 1),
(7, '2021_08_29_193155_create_contents_table', 1),
(8, '2021_11_24_205533_create_backgrounds_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$ow.vYwYW4KCxPNyYLaZgle21TULfXTPxxxJUfM5lL7zH5kgwj5SaG', 1, NULL, '2022-01-10 04:24:54', '2022-01-10 04:24:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herbs`
--
ALTER TABLE `herbs`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herbs`
--
ALTER TABLE `herbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
