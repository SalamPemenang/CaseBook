-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 09:05 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `casebook`
--

CREATE TABLE `casebook` (
  `id` int(10) UNSIGNED NOT NULL,
  `kesalahan_siswa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cttn_perubahan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obrolan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_layanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_data_siswa` int(10) UNSIGNED DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casebook`
--
ALTER TABLE `casebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casebook_id_data_siswa_foreign` (`id_data_siswa`),
  ADD KEY `casebook_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casebook`
--
ALTER TABLE `casebook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casebook`
--
ALTER TABLE `casebook`
  ADD CONSTRAINT `casebook_id_data_siswa_foreign` FOREIGN KEY (`id_data_siswa`) REFERENCES `data_siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `casebook_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
