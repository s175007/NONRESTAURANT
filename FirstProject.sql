-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2020 at 05:49 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FirstProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Admin', '$2y$10$wAjhMtPHv74hLIVN761MXewkT.O2A4ddvYElbrI6Ip7fMnSw4OdyO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foodtype` int(11) NOT NULL,
  `foodnamevn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foodnamejp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `foodtype`, `foodnamevn`, `foodnamejp`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 1, 'Chả lụa', 'ベトナムのハム', 480, 'images/f4gJa3itPlSioPn0QBzmv2F6Y7o0V9CcmyqdVMw5.jpeg', 0, NULL, '2020-09-15 19:36:14'),
(13, 2, 'Mẹt bò', '牛セット', 1980, 'images/1nvwNfOGbHcFq4iVAzMXGq0dzTdRtVoo1kRANFS7.jpeg', 1, NULL, NULL),
(14, 2, 'Mẹt heo', '豚セット', 1980, 'images/vB4GJGDT5CgeL1TS4vJkpbbnsYEMFILZHle7fgTj.jpeg', 1, NULL, NULL),
(15, 10, 'Gỏi sứa', 'クラゲサラダ', 780, 'images/CHI98OGodjJvb9Ns8W9udI2XHynGfpdVLui1wb9Z.jpeg', 1, NULL, NULL),
(16, 8, 'Bún bò giò', 'ブンボー', 780, 'images/cSArAgrlVtwQS1Vaa1d1ac7TjEAj5IbYNeCx1Tnl.jpeg', 1, NULL, NULL),
(17, 8, 'Mì xào hải sản', '海鮮焼きそば', 680, 'images/fSAKTCnu4ftPtU4zY2l8UFyhhQr8T5ZJbT90VMe0.jpeg', 1, NULL, NULL),
(18, 1, 'Ốc xào sả ớt', 'タニシレモングラス', 780, 'images/GD22L88lxEWSjB9D514vYKSwlu3FC9FQufxEJtLv.jpeg', 1, NULL, NULL),
(19, 3, 'Trứng non cháy tỏi', '卵の子ニンニクソース炒め', 680, 'images/Ifsn9J7S58rlzVBTV33hq0QjXbgGamwnC5loMclh.jpeg', 1, NULL, NULL),
(20, 7, 'Sò lụa xào sả', 'アサリレモングラス炒め', 480, 'images/il1F1GhaL1OzVbuuWZOE7zZ3mVA4JWVZEMH5bGhY.jpeg', 1, NULL, NULL),
(21, 7, 'Râu mực chiên', 'げそから', 480, 'images/iLcxhVevYu7aDzxGKa1ZIkEm2Gy7Q2FAtjI8g23B.jpeg', 1, NULL, NULL),
(22, 9, 'Cơm sườn', '豚ニンニクソース炒めご飯', 780, 'images/IvS6AmSHOlmQseTVByUC5hCScGIgIlF7jmxZR9gH.jpeg', 1, NULL, NULL),
(23, 8, 'Bún thịt nướng', '焼肉ビーフン', 680, 'images/iwlYdRhn7WdrcEAncl2ZBMkN3uWP3kID2X3ESdZ2.jpeg', 1, NULL, NULL),
(24, 6, 'Đuôi heo hon', '豚テールレモングラス煮込み', 540, 'images/kaXxuu7biZMJD1jXTVtaCX8QcEfkYV5Ftz2lNJFa.jpeg', 1, NULL, NULL),
(25, 2, 'Mẹt hải sản', '海鮮セット', 1980, 'images/kfXKspSEZ4fS5xEuyIjVyBOHiAV0L7uSAYyyNH94.jpeg', 1, NULL, NULL),
(26, 6, 'Heo luộc cuốn bánh tráng', '豚肉茹でると野菜巻き', 980, 'images/klx2MnOCodY5ESZdkpu9Fw9yIY3kzTwQEnlsh2ff.jpeg', 1, NULL, NULL),
(27, 3, 'Gà luộc', '鳥茹でる', 480, 'images/KMP95GzhtjsXPMRI6gRiuxLe05x05Vj6CcqwNBR6.jpeg', 1, NULL, NULL),
(28, 1, 'Nồi trường', '豚のコブクロ', 680, 'images/KYn4GByYh4mj2e3GHGnBu3ndLQW3BXOZU2UU41QW.jpeg', 1, NULL, NULL),
(29, 4, 'Vịt hon', 'ダックレモングラス煮込み', 780, 'images/L1VeU3Fjv0ZWE5fltd2EfMV0xA5dfaT5b9d7my2g.jpeg', 1, NULL, NULL),
(30, 2, 'Mẹt gà', '鳥セット', 1980, 'images/lsJLWkX73XsU8fz44hxHQ0Z7Hm58ZTCLu3ZCdl5U.jpeg', 1, NULL, NULL),
(31, 5, 'Típ bò', '牛煮込み', 780, 'images/MxZbXkwHcFkqCnrqQe2zmjeUz0dO7MPkQvQ2D2AG.jpeg', 1, NULL, NULL),
(32, 1, 'Ốc om chuối', 'タニシバナナ煮込み', 850, 'images/o4Zc1b5ZujrhaXB8fUa78Bp50pLwzZk7exHgwFup.jpeg', 1, NULL, NULL),
(33, 6, 'Thịt heo nướng', '豚焼肉', 480, 'images/O9DgaXcvoYWdVt8Y1Fhaq4kEMIRmXb5TL5IYxPq6.jpeg', 1, NULL, NULL),
(34, 8, 'Phở gà', '鳥フォー', 680, 'images/OEvjhRv4pdYJsQBc9ieoJzrsXvq84EQKLeQvuGRC.jpeg', 1, NULL, NULL),
(35, 7, 'Tôm xóc tỏi', '海老ニンニクソース炒め', 980, 'images/qRzh4H8njNKOVQ38weT1lDZfRUqXSmJmCu6L9wEL.jpeg', 1, NULL, NULL),
(36, 5, 'Bò bóp thấu', '牛サラダ', 680, 'images/t99MTaHPL7pw50FT8aGechYG3NZniwvzslo6yHQ2.jpeg', 1, NULL, NULL),
(37, 10, 'Gỏi bò', '牛サラダ', 680, 'images/t99MTaHPL7pw50FT8aGechYG3NZniwvzslo6yHQ2.jpeg', 1, NULL, NULL),
(38, 9, 'Cơm chiên', 'チャーハン', 680, 'images/tB0XYiCXOopGtAZsBYmQ1G544yHRRgJGcX56eZRh.jpeg', 1, NULL, NULL),
(39, 12, 'Xôi trắng', 'おこわ', 200, 'images/WHe2uixyGSKX6zB78VmIPGdnFChaHpFT14Dr3Wpr.jpeg', 1, NULL, NULL),
(40, 8, 'Phở bò', '牛フォー', 680, 'images/YJ8VxRf0ij3jwfuGYTlhreeEskPJaqnjXMmPMGTw.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Các món mới', NULL, NULL),
(2, 'Mẹt', NULL, NULL),
(3, 'Gà', NULL, NULL),
(4, 'Vịt', NULL, NULL),
(5, 'Bò', NULL, NULL),
(6, 'Heo', NULL, NULL),
(7, 'Hải sản', NULL, NULL),
(8, 'Mì', NULL, NULL),
(9, 'Cơm', NULL, NULL),
(10, 'Gỏi', NULL, NULL),
(11, 'Lẫu', NULL, NULL),
(12, 'Các món khác', NULL, NULL);

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
(30, '2020_08_23_045249_create_users_table', 1),
(31, '2020_08_30_035546_create_posts_table', 1),
(32, '2020_09_05_012221_create_admins_table', 1),
(33, '2020_09_12_152806_create_foods_table', 1),
(34, '2020_09_14_115229_create_food_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Name1', 'Day la content thu1', 'text.txt', 1, NULL, NULL),
(2, 'Name2', 'Day la content thu2', 'text.txt', 2, NULL, NULL),
(3, 'Name3', 'Day la content thu3', 'text.txt', 3, NULL, NULL),
(4, 'Name4', 'Day la content thu4', 'text.txt', 4, NULL, NULL),
(5, 'Name5', 'Day la content thu5', 'text.txt', 5, NULL, NULL),
(6, 'Name6', 'Day la content thu6', 'text.txt', 6, NULL, NULL),
(7, 'Name7', 'Day la content thu7', 'text.txt', 7, NULL, NULL),
(8, 'Name8', 'Day la content thu8', 'text.txt', 8, NULL, NULL),
(9, 'Name9', 'Day la content thu9', 'text.txt', 9, NULL, NULL),
(10, 'Name10', 'Day la content thu10', 'text.txt', 10, NULL, NULL),
(11, 'Name11', 'Day la content thu11', 'text.txt', 11, NULL, NULL),
(12, 'Name12', 'Day la content thu12', 'text.txt', 12, NULL, NULL),
(13, 'Name13', 'Day la content thu13', 'text.txt', 13, NULL, NULL),
(14, 'Name14', 'Day la content thu14', 'text.txt', 14, NULL, NULL),
(15, 'Name15', 'Day la content thu15', 'text.txt', 15, NULL, NULL),
(16, 'Name16', 'Day la content thu16', 'text.txt', 16, NULL, NULL),
(17, 'Name17', 'Day la content thu17', 'text.txt', 17, NULL, NULL),
(18, 'Name18', 'Day la content thu18', 'text.txt', 18, NULL, NULL),
(19, 'Name19', 'Day la content thu19', 'text.txt', 19, NULL, NULL),
(20, 'Name20', 'Day la content thu20', 'text.txt', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(2, 'User2', '1111111', NULL, '2020-09-16 02:04:12', NULL),
(3, 'User3', '$2y$10$79lwG2lW0iCAOU13ISYydunAnTHnokdqNltYgqAlH/Cxhs5gBUZqq', NULL, NULL, NULL),
(4, 'User4', '$2y$10$KiYwy29s1F9czV3zSdtBR.dta2UxpiW/XPrMOWPm7lXQn7hROTar.', NULL, NULL, NULL),
(5, 'User5', '$2y$10$d4fnlVKs/aJFGnrfegUb0enykbnh0OM2kvNm3Qx5fwNoI3Agfd2Ue', NULL, NULL, NULL),
(6, 'User6', '$2y$10$Qae.bzLT3Bp6QtUzwQIjqOefGkKGJmoQvlI3CargBG3UJ/ZUkvnMK', NULL, NULL, NULL),
(7, 'User7', '$2y$10$pEac26.wZ8xJ42V6XrxlO.hGtYahgb/HVHdWEphmfe4ewgU2.2Iqu', NULL, NULL, NULL),
(8, 'User8', '$2y$10$5bG6LOw71.CqqzlMfVRKj.mwUdmBcWhN8jaOlQKDsYOF/FcoVIR0G', NULL, NULL, NULL),
(9, 'User9', '$2y$10$bJdSbYpa4pWek0rqKuHIouahuSo.MwWfM7ewfUahV/NmbBgqiK08S', NULL, NULL, NULL),
(10, 'User10', '$2y$10$QAvhnDxrlFywtvWSG1hGge3TcWvpUGIITgBxQME4GDe3yecUp.YWW', NULL, NULL, NULL),
(11, 'User11', '$2y$10$.I.GKToWh8sN.Y1mwzhFdOLildh8zZIQSMRkY6H.MjHV3ENQgi9W6', NULL, NULL, NULL),
(12, 'User12', '$2y$10$HHoyw.KpJuzgPW003AdOv.MEgVXPc0WJHqilwXMJNouAtVkir3QrC', NULL, NULL, NULL),
(13, 'User13', '$2y$10$FY8JXSVp59GbdcYbflcKuOawxxuZjk1N7PfCBz6.TITVkTVyL.L2e', NULL, NULL, NULL),
(14, 'User14', '$2y$10$MlgACrvKzzDb2OGYz5BVieyAM3sfTlnx/rs.Wk7Q0EqTNJHLOyxFq', NULL, NULL, NULL),
(15, 'User15', '$2y$10$PQNVTRSrc4PhWyPJjxDHAeyg27CzVK91.k3a14njZ307Xh3hm7ZIi', NULL, NULL, NULL),
(16, 'User16', '$2y$10$LMTA3I8lDIrwfeL7D409Tun26TTWKmtaDFAwsifEtjEPAC7wZhMS2', NULL, NULL, NULL),
(17, 'User17', '$2y$10$UHNRtmKq11GUwsbsWSUXJOSh5NTXdhZfoX8TWaNHeaOrPiUlr6AjO', NULL, NULL, NULL),
(18, 'User18', '$2y$10$rYREVIyQcS7dsNwpcrObfeB2v7Z5Qr6tbptSsEfCiLQ5ZUfX9oiSG', NULL, NULL, NULL),
(19, 'User19', '$2y$10$9BejP0eOiM.9aWGjTYJSM.NnDfW1mSqXu8OxuIQKxNb.SOTrtvJCq', NULL, NULL, NULL),
(20, 'User20', '$2y$10$WbjK1/XXU5EHmfCsY7Ul1OP45Vlrcuk2HRXlwZNefdoshvByRcQ.K', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
