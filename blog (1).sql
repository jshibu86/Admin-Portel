-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 05:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `title`, `created_at`) VALUES
(1, 1, 'PDO Objects', '2022-04-08 06:28:52'),
(2, 1, 'PHP Course', '2022-04-08 06:28:52'),
(3, 2, 'General Data', '2022-04-08 06:28:52'),
(4, 2, 'History Details', '2022-04-08 06:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `iconImage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentnumber` varchar(191) NOT NULL,
  `departmentname` varchar(191) NOT NULL,
  `department_status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentnumber`, `departmentname`, `department_status`, `created_at`, `updated_at`) VALUES
(2, '1546', 'Human Resource', 1, '2023-11-27 17:29:55', '2023-11-27 17:29:55'),
(3, '7856', 'Developers', 1, '2023-11-27 17:31:45', '2023-11-27 17:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `departmentid` varchar(11) DEFAULT 'NA',
  `gender` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '-1=>trash,0=>disable,1=>active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `image`, `name`, `username`, `password`, `email`, `phonenumber`, `dob`, `departmentid`, `gender`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'monkey-d-luffy-one-piece-anime-5k-va-1366x768.jpg', 'Anand', 'FIN2023ANAND', '$2y$10$ELJVLAGeVnhKVkzIkPa/0eveA5km/K7AfbmnyJMhBWZIxRRxcgsHC', 'anand.ppd@gmail.com', '9003472387', '1982-05-19', '3', 'male', 'MurugaBhavan,VariyaVayal,Nattalam.', 0, '2023-07-10 06:09:13', '2023-07-10 06:09:13'),
(12, 'moon-knight-superhero-minimal-4k-vh-1366x768.jpg', 'test3', 'FIN2023TEST3', '$2y$10$mpW4v3nriHti6SWP.L8sUeJ.iklG8PaYwNdsirDmhVrYY5nLrAsnK', 'test3@gmail.com', '800390990', '2023-11-11', '2', 'male', 'jeejkfkefk', 1, '2023-11-24 07:24:34', '2023-11-24 07:24:34'),
(13, 'batman-superhero-minimal-4k-nl-1366x768.jpg', 'testa', 'FIN2023TESTA', '$2y$10$Wq/35fcq0nRMf3evr04qHOx3cg9GyffzbEtHXG.1l4aogadcgyq02', 'testa@gmail.com', '638339498', '2023-11-07', '3', 'male', 'dhfjdfhkfjkdjf', 1, '2023-11-24 14:06:37', '2023-11-24 14:06:37'),
(14, 'goat.jpg', 'test7', 'FIN2023TEST7', '$2y$10$clojVWC5CqPMinpo7xLd4OYEkBhDvnaUXWfZQWk7AJyiYfV6FeJwy', 'test7@gmail.com', '67880909', '2023-11-24', '2', 'female', 'fkdjrjrjgrlg', 1, '2023-11-28 09:27:29', '2023-11-28 09:27:29'),
(15, 'black-panther-lowpoly-minimalism-wr-3840x2400.jpg', 'goat', 'FIN2023GOAT', '$2y$10$l2pLDZyoLRkNrv7MGj71ZOY4uZeSxM0mc0GB30nEW9X5vaKMN7XXy', 'goat@gmail.com', '7890780', '2023-11-17', '3', 'male', 'hsjsjslm', 1, '2023-11-28 12:46:53', '2023-11-28 12:46:53'),
(16, 'alita-battle-angel-4k-5v-1366x768.jpg', 'ava', 'FIN2023AVA', '$2y$10$fhbS4Lkaw/KxsODUiP302.CZ.wqszZLaBre6/IFLF4H2mwp80FQ86', 'ava@gmail.com', '39840341', '2023-11-16', NULL, 'female', 'kksdkjdk', 1, '2023-11-29 13:05:34', '2023-11-29 13:05:34'),
(17, 'batman-the-golden-suit-kx-1366x768.jpg', 'Devid', 'FIN2023DEVID', '$2y$10$OG/DRJtDZbpsOZsmzS.E5euv6RDjgevelR60edatL23vKZdlxyU9W', 'devid@gmail.com', '6788398', '2023-12-15', '3', 'male', 'fkdnvkdv', 1, '2023-12-02 13:05:09', '2023-12-02 13:05:09'),
(18, 'iron-mark-85-sculpt-5k-hj-1366x768.jpg', 'Hano', 'FIN2023HANO', '$2y$10$6T/Pt5Ack.1g7tfEO1ydJeTWBZQMFzuvn1iSfXWas6dfP5C69Hl1.', 'hano@gmail.com', '7892467', '2023-12-20', '2', 'female', 'jfkfdkjkdm', 1, '2023-12-02 13:11:43', '2023-12-02 13:11:43'),
(38, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$yRsl77lETbjsOZeQgS.b7OKzdr2hOl/mdmr5iPyGAMmWqq1VZRUBC', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 11:56:06', '2023-12-04 11:56:06'),
(39, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$llDzI9PAYTNfTO9lj9rPw.NMkU3cqvQBPvFJCWyIXbdLeqaje8472', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 11:57:23', '2023-12-04 11:57:23'),
(40, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$Y1CJ/niVuH.ThnZ1CtHmc.4m8QHSbV31jfiYb0ef0bl4uU0WRdrJ.', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 11:59:03', '2023-12-04 11:59:03'),
(41, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$U4iPjTBJ0byYgyGZxcqxfuDTEklgVOz4rORZev9tc4IhXt19o4RQi', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:00:30', '2023-12-04 12:00:30'),
(42, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$PZsImoHXo8vkENy13ym0Z.mDfiD/43zkx8JFVPzhGUgnyW18SqtQ.', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:00:43', '2023-12-04 12:00:43'),
(43, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$3SW4YuR3acD.ZE3L//eFye5rU3TZXptGHC8u4sL8xNOYK1YYWWadi', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:02:13', '2023-12-04 12:02:13'),
(44, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$4U6IQwrsr6D36b/i5xqUjeeSHl1AQUs0xFNnWg4aRUxzsvjiSvSKS', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:02:48', '2023-12-04 12:02:48'),
(45, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$qjbB6Bw97nffFbpV.ceJ9uVnwXci8NWeYqHpx.OAOBobVzGwkQai6', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:03:40', '2023-12-04 12:03:40'),
(46, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$rYytfF5Hrr9C2uzEITAu4upKBtTVc4jY0mMtYD76By7ITOmOiokSa', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:04:57', '2023-12-04 12:04:57'),
(47, 'young-adult-enjoying-virtual-date.jpg', 'Jon', 'FIN2023JON', '$2y$10$O8Lhc4DZIsxbC5mpV9O6muJsE3KPJYtbiSkWhq1KoQ9jQ3//Db7l6', 'jon@gmail.com', '67880900', '2023-12-21', '3', 'male', 'nsfggfmf', 1, '2023-12-04 12:19:27', '2023-12-04 12:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

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
(4, '2020_11_22_143156_create_posts_table', 1),
(5, '2020_11_22_144100_create_roles_table', 1),
(6, '2020_11_22_144411_create_categories_table', 1),
(7, '2020_11_22_144431_create_tags_table', 1),
(8, '2020_11_22_145739_create_postcategories_table', 1),
(9, '2020_11_22_145750_create_posttags_table', 1);

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
-- Table structure for table `postcategories`
--

CREATE TABLE `postcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `post` text NOT NULL,
  `jsonData` text DEFAULT NULL,
  `postExcerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `featuredImage` varchar(255) DEFAULT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posttags`
--

CREATE TABLE `posttags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `permission` text DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `permission`, `isAdmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '[{\"resourceName\":\"Home\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app\"},{\"resourceName\":\"Users\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/users\"},{\"resourceName\":\"Roles\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/roles\"},{\"resourceName\":\"Permissions\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/permissions\"},{\"resourceName\":\"Posts\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/posts\"},{\"resourceName\":\"Add Post\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/createpost\"},{\"resourceName\":\"Categories\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/categories\"},{\"resourceName\":\"Tags\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/tags\"}]', 1, '2021-10-25 04:55:03', '2021-10-25 04:55:03'),
(2, 'Editor', '[{\"resourceName\":\"Home\",\"read\":true,\"write\":true,\"update\":true,\"delete\":false,\"name\":\"/app\"},{\"resourceName\":\"Users\",\"read\":true,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/users\"},{\"resourceName\":\"Roles\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/roles\"},{\"resourceName\":\"Permissions\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/permissions\"},{\"resourceName\":\"Posts\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/posts\"},{\"resourceName\":\"Add Post\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/createpost\"},{\"resourceName\":\"Categories\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/categories\"},{\"resourceName\":\"Tags\",\"read\":true,\"write\":true,\"update\":true,\"delete\":true,\"name\":\"/app/tags\"}]', 1, '2021-10-25 04:55:03', '2021-10-25 04:55:03'),
(3, 'User', '[{\"resourceName\":\"Home\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app\"},{\"resourceName\":\"Tags\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"app/tags\"},{\"resourceName\":\"Categories\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/categories\"},{\"resourceName\":\"Create post\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/createpost\"},{\"resourceName\":\"Posts\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/posts\"},{\"resourceName\":\"Admin users\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/users\"},{\"resourceName\":\"Roles\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/roles\"},{\"resourceName\":\"Assign Roles\",\"read\":false,\"write\":false,\"update\":false,\"delete\":false,\"name\":\"/app/permissions\"}]', 0, '2021-10-25 04:55:03', '2021-10-25 04:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL DEFAULT '1234567890',
  `password` varchar(255) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phonenumber`, `password`, `access_token`, `avatar`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'John Deo', 'jd@test.com', '1234567812', '$2y$10$tpNIMCNi9mr17c3i5O/kleLk.qsmRabyenhbLa0AxlPYp5UfhKAYm', NULL, NULL, 1, '2021-10-25 04:55:04', '2021-10-25 04:55:04'),
(2, 'Bob Smith', 'bs@test.com', '1234567890', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 2, '2021-10-25 04:55:04', '2021-10-25 04:55:04'),
(3, 'viju jk', 'jk@gmail.com', '8940664941', '$2y$10$3RXYQ1pRL3Wux5mpB8VBku9bRlOQasqj6B.yMDQEPQK.H6l5QpZSm', NULL, NULL, NULL, NULL, NULL),
(4, 'viju jk', 'jkviju@gmail.com', '1234567890', '$2y$10$EJfzHfUyRTbsWhi0xgpJK.8CnGiy3Tr5eQFOr0dZZHamWMI1J8BBG', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `postcategories`
--
ALTER TABLE `postcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcategories_post_id_foreign` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `posttags`
--
ALTER TABLE `posttags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posttags_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_rolename_unique` (`roleName`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `postcategories`
--
ALTER TABLE `postcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posttags`
--
ALTER TABLE `posttags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `postcategories`
--
ALTER TABLE `postcategories`
  ADD CONSTRAINT `postcategories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posttags`
--
ALTER TABLE `posttags`
  ADD CONSTRAINT `posttags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
