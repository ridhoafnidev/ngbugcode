-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2020 at 09:01 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larablog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'php', 'PHP', '2020-02-25 05:28:47', '2020-02-25 05:28:47'),
(2, 'java', 'JAVA', '2020-02-25 09:26:59', '2020-02-25 09:26:59'),
(3, 'kotlin', 'KOTLIN', '2020-02-25 09:27:06', '2020-02-25 09:27:06'),
(4, 'javascript', 'JAVASCRIPT', '2020-02-25 09:27:14', '2020-02-25 09:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ridho Afni', 'ridhoafni.dev@gmail.com', 'Mantap', 1, '2020-05-22 01:04:38', '2020-05-22 01:05:36');

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
(3, '2018_04_12_121245_create_categories_table', 1),
(4, '2018_04_12_121308_create_posts_table', 1),
(5, '2018_04_12_121318_create_comments_table', 1),
(6, '2018_04_12_121324_create_settings_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `body`, `status`, `featured`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'aplikasi-laundry-laravel-58-vuejs-spa-management-outlets', 'Aplikasi Laundry (Laravel 5.8 - Vue.js - SPA) Management Outlets', '<p>Salah satu&nbsp;<em>module</em>&nbsp;yang pertama kali akan dikerjakan adalah&nbsp;<em>module</em>&nbsp;dengan&nbsp;<em>table</em>&nbsp;yang tidak bergantung dengan&nbsp;<em>table</em>&nbsp;lainnya, maka dalam serial ke-3 ini kita akan menyelesaikan&nbsp;<em>module</em>&nbsp;<strong>management outlets</strong>, dimana pada&nbsp;<em>module</em>&nbsp;ini berfungsi untuk melakukan pendataan pada seluruh data&nbsp;<em>outlet</em>&nbsp;yang dimiliki oleh perusahaan&nbsp;<em>laundry</em>&nbsp;tersebut.</p>\r\n<p>Dalam serial kali ini kita akan bermain dengan seputaran konsep CRUD menggunakan Laravel sebagai&nbsp;<em>backend</em>&nbsp;dan Vue.js untuk meng-<em>handle</em>&nbsp;dari sisi&nbsp;<em>client</em>&nbsp;dengan bantuan&nbsp;<em>axios</em>&nbsp;untuk berkomunikasi antar keduanya.</p>', 0, '/photos/1/download.png', '2020-05-22 15:08:28', '2020-02-25 05:30:57', '2020-05-22 15:08:33'),
(2, 1, 1, 'harmoni-antara-laravel-vuejs-dan-vue-router', 'Harmoni antara Laravel, VueJS, dan Vue Router', '<p id=\"cbbb\" class=\"ip iq co ar ir b is it iu iv iw ix iy iz ja jb jc jd fc\" data-selectable-paragraph=\"\"><span class=\"r je jf jg jh ji jj jk jl jm bl\">P</span>ernah memperhatikan tidak, setiap kita berpindah halaman di Medium, <a class=\"bo de jn jo jp jq\" href=\"http://glosarium.web.id/teknologi-informasi/peramban\" target=\"_blank\" rel=\"noopener nofollow\">peramban (browser)</a> tidak memuat ulang seluruh bagian web. Namun hanya memuat sebagian dan sebutuhnya.</p>\r\n<p id=\"6b99\" class=\"ip iq co ar ir b is it iu iv iw ix iy iz ja jb jc fc\" data-selectable-paragraph=\"\">Semisal, dari halaman dashboard, kemudian kita mengklik salah satu tautan (hyperlink) artikel, maka yang akan dimuat hanya konten artikel tersebut, tanpa perlu memuat ulang header & footer.</p>\r\n<blockquote class=\"jr js jt\">\r\n<p id=\"fa36\" class=\"ip iq co ju ir b is it iu iv iw ix iy iz ja jb jc fc\" data-selectable-paragraph=\"\">Kenapa harus dibuat begitu? Untuk kenyamanan pengguna dan performa tentunya.</p>\r\n</blockquote>\r\n<p id=\"27ba\" class=\"ip iq co ar ir b is it iu iv iw ix iy iz ja jb jc fc\" data-selectable-paragraph=\"\">Di Laravel, kita bisa membuat fitur yang serupa menggunakan VueJS. Sayangnya, mengandalkan VueJS saja sepenuhnya — dengan manipulasi komponen — masih dirasa sulit untuk membuat mendekati sempurna. Oleh karenanya, kita butuh package tambahan untuk mendukung VueJS, sesuai judul, namanya Vue Router.</p>', 1, '/photos/1/1623266_1620_2.jpg', '2020-05-22 07:25:47', '2020-02-25 05:36:29', '2020-05-22 07:25:51'),
(3, 1, 3, 'belajar-pemrograman-kotlin-sintaks-dasar-kotlin', 'Belajar Pemrograman Kotlin: Sintaks Dasar Kotlin', '<p>Setelah kita menganl dan&nbsp;<a href=\"https://www.petanikode.com/pemrograman-kotlin-di-linux/\">mempersiapkan peralatan untuk pemrograman Kotlin</a>, selanjutnya kita pelajari aturan dasar penulisan sintaks Kotlin.</p>\r\n<p>Agar tidak tersesesat dalam perjalanan mempelajari kotlin&nbsp;</p>\r\n<p>Baiklah, langsung saja kita mulai&hellip;</p>\r\n<h2 id=\"struktur-program\">Struktur Program</h2>\r\n<p>Struktur program Kotlin lebih sederhana dan mudah dipahami daripada Java.</p>\r\n<p><img src=\"/photos/1/sintaks-kotlin.png\" alt=\"\" width=\"632\" height=\"287.0\" /></p>\r\n<p>&nbsp;</p>', 1, '/photos/1/kotlin.png', '2020-05-22 02:08:49', '2020-05-22 02:02:06', '2020-05-22 02:09:00'),
(4, 1, 3, 'belajar-pemrograman-kotlin-sintaks-dasar-kotlin', 'Belajar Pemrograman Kotlin: Sintaks Dasar Kotlin', '<p>Setelah kita menganl dan&nbsp;<a href=\"https://www.petanikode.com/pemrograman-kotlin-di-linux/\">mempersiapkan peralatan untuk pemrograman Kotlin</a>, selanjutnya kita pelajari aturan dasar penulisan sintaks Kotlin.</p>\r\n<p>Agar tidak tersesesat dalam perjalanan mempelajari kotlin&nbsp;</p>\r\n<p>Baiklah, langsung saja kita mulai&hellip;</p>\r\n<h2 id=\"struktur-program\">Struktur Program</h2>\r\n<p>Struktur program Kotlin lebih sederhana dan mudah dipahami daripada Java.</p>\r\n<p><img src=\"/photos/1/sintaks-kotlin.png\" alt=\"\" width=\"632\" height=\"287.0\" /></p>\r\n<p>&nbsp;</p>', 1, '/photos/1/kotlin.png', '2020-05-22 02:08:49', '2020-05-22 02:02:06', '2020-05-22 02:09:00'),
(5, 1, 3, 'belajar-pemrograman-kotlin-sintaks-dasar-kotlin', 'Belajar Pemrograman Kotlin: Sintaks Dasar Kotlin', '<p>Setelah kita menganl dan&nbsp;<a href=\"https://www.petanikode.com/pemrograman-kotlin-di-linux/\">mempersiapkan peralatan untuk pemrograman Kotlin</a>, selanjutnya kita pelajari aturan dasar penulisan sintaks Kotlin.</p>\r\n<p>Agar tidak tersesesat dalam perjalanan mempelajari kotlin&nbsp;</p>\r\n<p>Baiklah, langsung saja kita mulai&hellip;</p>\r\n<h2 id=\"struktur-program\">Struktur Program</h2>\r\n<p>Struktur program Kotlin lebih sederhana dan mudah dipahami daripada Java.</p>\r\n<p><img src=\"/photos/1/sintaks-kotlin.png\" alt=\"\" width=\"632\" height=\"287.0\" /></p>\r\n<p>&nbsp;</p>', 1, '/photos/1/kotlin.png', '2020-05-22 02:08:49', '2020-05-22 02:02:06', '2020-05-22 02:09:00'),
(6, 1, 3, 'menggunakan-markdown-render-hooks-sebagai-ganti-shortcode-pada-hugo', 'Menggunakan Markdown Render Hooks Sebagai Ganti Shortcode pada Hugo', '<p>Setelah kita menganl dan&nbsp;<a href=\"https://www.petanikode.com/pemrograman-kotlin-di-linux/\">mempersiapkan peralatan untuk pemrograman Kotlin</a>, selanjutnya kita pelajari aturan dasar penulisan sintaks Kotlin.</p>\r\n<p>Agar tidak tersesesat dalam perjalanan mempelajari kotlin&nbsp;</p>\r\n<p>Baiklah, langsung saja kita mulai&hellip;</p>\r\n<h2 id=\"struktur-program\">Struktur Program</h2>\r\n<p>Struktur program Kotlin lebih sederhana dan mudah dipahami daripada Java.</p>\r\n<p><img src=\"/photos/1/sintaks-kotlin.png\" alt=\"\" width=\"632\" height=\"287.0\" /></p>\r\n<p>&nbsp;</p>', 1, '/photos/1/vuejs.png', '2020-05-22 03:57:17', '2020-05-22 02:02:06', '2020-05-22 03:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `so_twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `so_instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `tagline`, `email`, `phone`, `address`, `so_facebook`, `so_twitter`, `so_instagram`, `created_at`, `updated_at`) VALUES
(1, 'Coding Blog', 'Happy with coding', 'kodeprojek@gmail.com', '#', '', '#', '#', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','author') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ridho Afni', 'admin', 'ridhoafni.dev@gmail.com', '$2y$10$zDzJCVw8x/B0brR2MCBhLefbvjU4pUxDbrC9/nZ1.6gyhKEomA6iu', '/photos/1/0.jpg', 'K7omIPs7qWybBzUN949XpHjkr1t1tetRmYgOyJE6XBJVCTOPRDgOgM0s7YJa', '2020-02-25 05:27:37', '2020-02-25 05:32:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
