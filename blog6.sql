-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2020 at 06:21 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog6`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_10_195854_create_posts_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2020_02_11_124804_create_tasks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('49df5aabc98c600341aad41f93f50a523d47639004f567f2bd88543781e5dc856ae0e330dd17ebd5', 4, 3, 'token', '[]', 0, '2020-02-11 08:07:44', '2020-02-11 08:07:44', '2021-02-11 13:07:44'),
('820f34e646f3176230608a0678972bc5a0405754f16a261026bb01decc44bfdd7337873b20d49ae0', 3, 3, 'token', '[]', 0, '2020-02-11 09:11:34', '2020-02-11 09:11:34', '2021-02-11 14:11:34'),
('af5d478f06ccdce3d6003ee9c19ec40f0e8c51ad0d4e37ea68bd698bdc2b2270b3a30e218b66ce22', 3, 3, 'token', '[]', 0, '2020-02-11 15:21:18', '2020-02-11 15:21:18', '2021-02-11 20:21:18'),
('69d1c8d4cdb4af75b76486432ac4dff95081866ff70641f2bcb72b0a6264c1ae494bfafd65b25594', 3, 3, 'token', '[]', 0, '2020-02-12 08:33:10', '2020-02-12 08:33:10', '2021-02-12 13:33:10'),
('f4e4688c947dc614dacb2ae6bff7c8ece9886a02712bb29087036c306316e1d13cac266f1bfc25d7', 3, 3, 'token', '[]', 0, '2020-02-12 08:34:17', '2020-02-12 08:34:17', '2021-02-12 13:34:17'),
('390a3153b8d80207245556115017490e1a04431f55986ba78beef0149785282364c14ac7a685c1d1', 3, 3, 'token', '[]', 0, '2020-02-12 08:34:20', '2020-02-12 08:34:20', '2021-02-12 13:34:20'),
('d4b914bf166a5eddec48f04bfc2a95a2f96872d09671d92a84f05f8f28d5f33f3f7be43d1c540864', 3, 3, 'token', '[]', 0, '2020-02-12 08:36:11', '2020-02-12 08:36:11', '2021-02-12 13:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qIKc6sLqjl4hVJHlnecIErT8BH4bimUZ2y3IxRDt', 'http://localhost', 1, 0, 0, '2020-02-10 15:24:09', '2020-02-10 15:24:09'),
(2, NULL, 'Laravel Password Grant Client', 'xXHHxQ7mBiYUqCLMFNjB39Dk6B8wN78djY4z9Kze', 'http://localhost', 0, 1, 0, '2020-02-10 15:24:09', '2020-02-10 15:24:09'),
(3, NULL, 'Laravel Personal Access Client', '0Eltv1bBcCh6JlprshBYT8H6se5xpg6l5ncItSzS', 'http://localhost', 1, 0, 0, '2020-02-11 07:51:26', '2020-02-11 07:51:26'),
(4, NULL, 'Laravel Password Grant Client', 'dU2nb7MiQg086J0pUlgqz8WbVshnzpdZY3c9ZVl0', 'http://localhost', 0, 1, 0, '2020-02-11 07:51:26', '2020-02-11 07:51:26'),
(5, 3, 'Blogger', 'WVPJ9x9zKb5Z3oOXzLRP0Tf7v1jnemt6adY4HmNv', 'http://127.0.0.1:8000/', 0, 0, 0, '2020-02-11 09:15:43', '2020-02-11 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-10 15:24:09', '2020-02-10 15:24:09'),
(2, 3, '2020-02-11 07:51:26', '2020-02-11 07:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(3, 'Quos quae vero sit vitae.', 'Quis velit quibusdam consequatur reprehenderit aut dignissimos nihil. Molestiae qui pariatur consequatur et quae facilis.', '2020-02-10 15:19:43', '2020-02-10 15:19:43'),
(5, 'Et quod est quo amet.', 'Non quisquam eum optio maxime sed sequi. Nam delectus ut aliquam numquam magni suscipit quia. Tenetur modi vel sit ex ut saepe dolores.', '2020-02-10 15:19:43', '2020-02-10 15:19:43'),
(46, 'Accusamus fugiat quo cum id.', 'Unde repudiandae cum ex necessitatibus natus. Est itaque commodi minima ipsa est. Sed sint aliquam eos aut necessitatibus enim iusto. Excepturi ad iusto nam deserunt cupiditate non officiis. Eveniet sunt magnam optio. Sed fuga enim alias qui sint amet.', '2020-02-10 15:19:43', '2020-02-10 15:19:43'),
(48, 'Consequatur id est beatae.', 'Voluptatem nobis quidem libero quia et. Autem magni accusantium aliquid accusamus voluptate est. Vitae est at quod perspiciatis labore delectus. Dignissimos laboriosam dolore labore ea cum.', '2020-02-10 15:19:43', '2020-02-10 15:19:43'),
(49, 'Nihil qui dolores aliquam.', 'Pariatur aut perferendis vero illum ipsa tempore. Optio dignissimos facere mollitia consequatur et. Ut beatae non autem modi totam porro recusandae tenetur. Dolore culpa ducimus repudiandae rem non.', '2020-02-10 15:19:43', '2020-02-10 15:19:43'),
(50, 'Rem qui et sed vero magnam.', 'Et et reiciendis inventore et aliquid voluptatum. Error corporis numquam rem quam reiciendis repudiandae eos. Est aut cumque quis molestias ut corporis. Impedit eveniet magni eum qui ducimus sint.', '2020-02-10 15:19:43', '2020-02-10 15:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_title`, `category`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Task 1', 'Category 1', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:08', '2020-02-11 08:56:08'),
(2, 'Task 2', 'Category 1', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:22', '2020-02-11 08:56:22'),
(3, 'Task 3', 'Category 1', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:25', '2020-02-11 08:56:25'),
(4, 'Task 4', 'Category 1', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:28', '2020-02-11 08:56:28'),
(5, 'Task 5', 'Category 1', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:31', '2020-02-11 08:56:31'),
(6, 'Task 6', 'Category 2', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:40', '2020-02-11 08:56:40'),
(7, 'Task7', 'Category 2', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:43', '2020-02-11 08:56:43'),
(8, 'Task8', 'Category 2', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:45', '2020-02-11 08:56:45'),
(10, 'Task 10', 'Category 2', 'Sed et ea odio dolor dolorem est id amet. Consequuntur sint laborum qui culpa quia.', 4, '2020-02-11 08:56:55', '2020-02-11 08:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'alpha', 'alpha@datum.com', NULL, '$2y$10$GrSPrj8zNpm22oi49fLEF.eKtcZLLVXiFJz6Q6/4THn3JVeKT/TjW', NULL, '2020-02-11 07:33:01', '2020-02-11 07:33:01'),
(3, 'Umer', 'umer@dt.com', NULL, '$2y$10$oYqkryN5IFIHPu5fluRYoOOhc6oTdyV37o.EmpjxmJK0TEWnjOEL6', NULL, '2020-02-11 08:05:55', '2020-02-11 08:05:55'),
(4, 'administrator', 'administrator@dt.com', NULL, '$2y$10$6i4Bhp6pDxpP98qTWk6yVOZcTswEyymP0qAM6M3CljAG8WgNAiAt.', NULL, '2020-02-11 08:06:25', '2020-02-11 08:13:54'),
(5, 'User', 'user@dt.com', NULL, '$2y$10$A8saQ9AGOXkKLmVn/PELQu99PA8IOIyEmxc4HAo/P9VfSzKDt5IuC', NULL, '2020-02-11 12:45:30', '2020-02-11 12:45:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
