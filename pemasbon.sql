-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 10:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemasbon`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','petugas') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `telpon`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$XhoV2h0zywIDQkvIsZlB2OIKUlkVhpsjLDSssMRTcq7S0zHmdI9ge', NULL, '2023-03-05 17:02:15', '2023-03-05 17:02:15', 'admin', '', 'admin'),
(2, 'petugas', 'petugas@gmail.com', NULL, '$2y$10$tjTeZApQux9/VaOJOhGzEu84QqWTILPJGfLpgd/wwgGdjrehZ0irK', NULL, '2023-03-05 17:02:50', '2023-03-05 17:02:50', 'petugas', '', 'admin'),
(3, 'masyarakat', 'masyarakat@gmail.com', NULL, '$2y$10$zy8pq.p0dRXsbeHFte3Ax.6IZtPe7GLr0u.fDEjOX4kt5uTCLear2', NULL, '2023-03-05 17:03:31', '2023-03-05 17:03:31', 'masyarakat', '', 'admin'),
(4, 'ucok', 'ucok@gmail.com', NULL, '$2y$10$cVjwJtMD5h4uSoEUEZJjt.9ZT/eMviUKtXB7szVwlO3rQc/SzA7lq', NULL, '2023-03-06 18:41:27', '2023-03-06 18:41:27', 'cucok', '3434324542', 'admin'),
(5, 'babacok', 'babacok@gmail.com', NULL, '$2y$10$.1vWPbi5TYReLhBL/dCWh.Bp3kADMUWnDdWKEp7EfvxUCMVtRT3HC', NULL, '2023-03-06 22:07:39', '2023-03-06 22:07:39', 'bacok', '12345566', 'admin'),
(6, 'bgbgb', 'bb@gmail.com', NULL, '$2y$10$NKGDE5Q8OnEHdEv1ubAgsemOOQKTmNwW6M9OBfOBAA.CuENeol/1q', NULL, '2023-03-06 22:36:44', '2023-03-06 22:36:44', 'bb', '555555', 'admin'),
(7, 'aa', 'aa@gmail.com', NULL, '$2y$10$cU/rha1OEZeASLZ3PByYNO757cWvNKf8/ACQFzu64SDIM/ys4S6iC', NULL, '2023-03-07 00:18:18', '2023-03-07 00:18:18', 'aaa', '21132', 'admin'),
(8, 'bbb', 'cc@gmail.com', NULL, '$2y$10$ag5i6d.IjdqynhZ2nvDtteuJSRvGT388oehOhWW/JiGsYRJxJl8B6', NULL, '2023-03-07 00:30:30', '2023-03-07 00:30:30', 'bbb', '1232435', 'admin'),
(9, 'uuu', 'eee@gmail.com', NULL, '$2y$10$37nN8BRvqzW5Vip7tlhE3eTGogIg01HtufLOXZzrs1qeC9L8dEEAu', NULL, '2023-03-07 07:33:25', '2023-03-07 07:35:49', 'ee', '344', 'admin');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
