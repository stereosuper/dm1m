-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2018 at 11:04 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dm1m`
--

-- --------------------------------------------------------

--
-- Table structure for table `_commentmeta`
--

CREATE TABLE `_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_comments`
--

CREATE TABLE `_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_ewwwio_images`
--

CREATE TABLE `_ewwwio_images` (
  `id` int(14) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `level` int(5) UNSIGNED DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `updates` int(5) UNSIGNED DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1970-12-31 23:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_ewwwio_images`
--

INSERT INTO `_ewwwio_images` (`id`, `attachment_id`, `gallery`, `resize`, `path`, `converted`, `results`, `image_size`, `orig_size`, `backup`, `level`, `pending`, `updates`, `updated`, `trace`) VALUES
(1, 29, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image1.png', '', 'Reduced by 12,4% (497,4 KB)', 3587784, 4097160, '', NULL, 0, 1, '2018-02-20 13:42:05', NULL),
(2, 29, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image1-150x150.png', '', 'Reduced by 1,3% (603,0 B)', 44333, 44936, '', NULL, 0, 1, '2018-02-20 13:42:05', NULL),
(3, 29, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image1-300x169.png', '', 'Reduced by 1,7% (1,6 KB)', 93279, 94920, '', NULL, 0, 1, '2018-02-20 13:42:06', NULL),
(4, 29, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image1-768x432.png', '', 'Reduced by 2,0% (11,0 KB)', 545248, 556462, '', NULL, 0, 1, '2018-02-20 13:42:09', NULL),
(5, 29, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image1-1024x576.png', '', 'Reduced by 2,3% (21,4 KB)', 930694, 952615, '', NULL, 0, 1, '2018-02-20 13:42:16', NULL),
(6, 30, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2.png', '', 'Reduced by 13,0% (545,4 KB)', 3747340, 4305784, '', NULL, 0, 1, '2018-02-20 13:42:40', NULL),
(7, 30, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2-150x150.png', '', 'Reduced by 2,1% (647,0 B)', 30890, 31537, '', NULL, 0, 1, '2018-02-20 13:42:40', NULL),
(8, 30, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2-286x300.png', '', 'Reduced by 3,9% (4,1 KB)', 102080, 106274, '', NULL, 0, 1, '2018-02-20 13:42:41', NULL),
(9, 30, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2-768x805.png', '', 'Reduced by 3,7% (24,9 KB)', 663784, 689326, '', NULL, 0, 1, '2018-02-20 13:42:46', NULL),
(10, 30, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2-977x1024.png', '', 'Reduced by 4,4% (47,6 KB)', 1052398, 1101103, '', NULL, 0, 1, '2018-02-20 13:42:57', NULL),
(11, 71, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_carre.png', '', 'Reduced by 21,5% (477,2 KB)', 1783534, 2272144, '', NULL, 0, 1, '2018-02-23 13:29:45', NULL),
(12, 71, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_carre-150x150.png', '', 'Reduced by 12,6% (5,5 KB)', 39077, 44687, '', NULL, 0, 1, '2018-02-23 13:29:46', NULL),
(13, 71, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_carre-300x300.png', '', 'Reduced by 13,1% (20,9 KB)', 141123, 162478, '', NULL, 0, 1, '2018-02-23 13:29:46', NULL),
(14, 71, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_carre-768x768.png', '', 'Reduced by 13,9% (126,3 KB)', 799223, 928581, '', NULL, 0, 1, '2018-02-23 13:29:50', NULL),
(15, 71, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_carre-1024x1024.png', '', 'Reduced by 14,4% (207,3 KB)', 1266416, 1478672, '', NULL, 0, 1, '2018-02-23 13:29:58', NULL),
(16, 72, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_vert.png', '', 'Reduced by 19,9% (236,9 KB)', 975210, 1217783, '', NULL, 0, 1, '2018-02-23 13:30:04', NULL),
(17, 72, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_vert-150x150.png', '', 'Reduced by 13,2% (5,3 KB)', 35467, 40866, '', NULL, 0, 1, '2018-02-23 13:30:04', NULL),
(18, 72, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_vert-150x300.png', '', 'Reduced by 12,7% (10,5 KB)', 73937, 84733, '', NULL, 0, 1, '2018-02-23 13:30:05', NULL),
(19, 72, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_vert-512x1024.png', '', 'Reduced by 13,7% (109,1 KB)', 704067, 815772, '', NULL, 0, 1, '2018-02-23 13:30:08', NULL),
(20, 73, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_hor.png', '', 'Reduced by 11,6% (132,5 KB)', 1034072, 1169703, '', NULL, 0, 1, '2018-02-23 13:30:16', NULL),
(21, 73, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_hor-150x150.png', '', 'Reduced by 12,8% (5,5 KB)', 38446, 44078, '', NULL, 0, 1, '2018-02-23 13:30:16', NULL),
(22, 73, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_hor-300x150.png', '', 'Reduced by 1,6% (1,3 KB)', 83366, 84733, '', NULL, 0, 1, '2018-02-23 13:30:17', NULL),
(23, 73, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_hor-768x384.png', '', 'Reduced by 2,4% (11,3 KB)', 465326, 476864, '', NULL, 0, 1, '2018-02-23 13:30:20', NULL),
(24, 73, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/1_rect_hor-1024x512.png', '', 'Reduced by 2,7% (20,4 KB)', 748160, 769085, '', NULL, 0, 1, '2018-02-23 13:30:26', NULL),
(25, 76, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_carre.png', '', 'Reduced by 23,5% (335,1 KB)', 1118017, 1461191, '', NULL, 0, 1, '2018-02-23 13:32:03', NULL),
(26, 76, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_carre-150x150.png', '', 'Reduced by 13,1% (4,0 KB)', 27401, 31546, '', NULL, 0, 1, '2018-02-23 13:32:03', NULL),
(27, 76, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_carre-300x300.png', '', 'Reduced by 14,4% (15,9 KB)', 96570, 112874, '', NULL, 0, 1, '2018-02-23 13:32:03', NULL),
(28, 76, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_carre-768x768.png', '', 'Reduced by 15,0% (97,5 KB)', 564518, 664378, '', NULL, 0, 1, '2018-02-23 13:32:08', NULL),
(29, 76, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_carre-1024x1024.png', '', 'Reduced by 14,1% (131,2 KB)', 817763, 952109, '', NULL, 0, 1, '2018-02-23 13:32:12', NULL),
(30, 77, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_vert.png', '', 'Reduced by 23,2% (177,0 KB)', 600101, 781308, '', NULL, 0, 1, '2018-02-23 13:32:17', NULL),
(31, 77, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_vert-150x150.png', '', 'Reduced by 12,8% (4,5 KB)', 31169, 35753, '', NULL, 0, 1, '2018-02-23 13:32:17', NULL),
(32, 77, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_vert-150x300.png', '', 'Reduced by 13,7% (8,1 KB)', 52239, 60535, '', NULL, 0, 1, '2018-02-23 13:32:18', NULL),
(33, 77, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_vert-512x1024.png', '', 'Reduced by 14,1% (69,9 KB)', 437816, 509400, '', NULL, 0, 1, '2018-02-23 13:32:19', NULL),
(34, 78, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_hor.png', '', 'Reduced by 11,6% (108,9 KB)', 852580, 964080, '', NULL, 0, 1, '2018-02-23 13:32:34', NULL),
(35, 78, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_hor-150x150.png', '', 'Reduced by 12,2% (5,9 KB)', 43331, 49343, '', NULL, 0, 1, '2018-02-23 13:32:34', NULL),
(36, 78, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_hor-300x150.png', '', 'Reduced by 1,7% (1,2 KB)', 72515, 73749, '', NULL, 0, 1, '2018-02-23 13:32:35', NULL),
(37, 78, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_hor-768x384.png', '', 'Reduced by 2,9% (12,0 KB)', 407159, 419485, '', NULL, 0, 1, '2018-02-23 13:32:38', NULL),
(38, 78, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/2_rect_hor-1024x512.png', '', 'Reduced by 1,8% (11,1 KB)', 628569, 639918, '', NULL, 0, 1, '2018-02-23 13:32:42', NULL),
(39, 102, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/img.png', '', 'Reduced by 43,5% (111,6 KB)', 148460, 262689, '', NULL, 0, 1, '2018-02-27 15:09:40', NULL),
(40, 102, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/img-150x150.png', '', 'Reduced by 46,8% (10,5 KB)', 12213, 22949, '', NULL, 0, 1, '2018-02-27 15:09:40', NULL),
(41, 102, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/img-300x300.png', '', 'Reduced by 44,1% (36,3 KB)', 47026, 84197, '', NULL, 0, 1, '2018-02-27 15:09:41', NULL),
(42, 103, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/cover.png', '', 'Reduced by 9,9% (499,2 KB)', 4650331, 5161494, '', NULL, 0, 1, '2018-02-27 15:11:05', NULL),
(43, 103, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/cover-150x150.png', '', 'Reduced by 0,1% (72,0 B)', 54702, 54774, '', NULL, 0, 1, '2018-02-27 15:11:05', NULL),
(44, 103, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/cover-300x169.png', '', 'Reduced by 0,1% (186,0 B)', 125950, 126136, '', NULL, 0, 1, '2018-02-27 15:11:06', NULL),
(45, 103, 'media', 'medium_large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/cover-768x432.png', '', 'Reduced by 0,2% (1,6 KB)', 762720, 764317, '', NULL, 0, 1, '2018-02-27 15:11:07', NULL),
(46, 103, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/cover-1024x576.png', '', 'Reduced by 0,3% (3,7 KB)', 1284683, 1288503, '', NULL, 0, 1, '2018-02-27 15:11:09', NULL),
(47, 109, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-12x.png', '', 'Reduced by 5,8% (955,0 B)', 15625, 16580, '', NULL, 0, 1, '2018-02-28 13:00:24', NULL),
(48, 109, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-12x-150x150.png', '', 'Reduced by 27,3% (5,0 KB)', 13602, 18719, '', NULL, 0, 1, '2018-02-28 13:00:24', NULL),
(49, 109, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-12x-248x300.png', '', 'Reduced by 34,4% (17,0 KB)', 33265, 50720, '', NULL, 0, 1, '2018-02-28 13:00:25', NULL),
(50, 110, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-22x.png', '', 'Reduced by 5,3% (863,0 B)', 15332, 16195, '', NULL, 0, 1, '2018-02-28 13:00:35', NULL),
(51, 110, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-22x-150x150.png', '', 'Reduced by 20,5% (3,6 KB)', 14283, 17960, '', NULL, 0, 1, '2018-02-28 13:00:36', NULL),
(52, 110, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-22x-249x300.png', '', 'Reduced by 32,5% (15,9 KB)', 33825, 50094, '', NULL, 0, 1, '2018-02-28 13:00:37', NULL),
(53, 111, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-32x.png', '', 'Reduced by 5,1% (819,0 B)', 15265, 16084, '', NULL, 0, 1, '2018-02-28 13:00:41', NULL),
(54, 111, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-32x-150x150.png', '', 'Reduced by 18,4% (3,0 KB)', 13569, 16637, '', NULL, 0, 1, '2018-02-28 13:00:42', NULL),
(55, 111, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-32x-248x300.png', '', 'Reduced by 32,1% (14,9 KB)', 32241, 47451, '', NULL, 0, 1, '2018-02-28 13:00:43', NULL),
(56, 112, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-42x.png', '', 'Reduced by 5,9% (939,0 B)', 15112, 16051, '', NULL, 0, 1, '2018-02-28 13:00:53', NULL),
(57, 112, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-42x-150x150.png', '', 'Reduced by 22,9% (4,5 KB)', 15431, 20005, '', NULL, 0, 1, '2018-02-28 13:00:54', NULL),
(58, 112, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-42x-249x300.png', '', 'Reduced by 37,0% (18,6 KB)', 32304, 51306, '', NULL, 0, 1, '2018-02-28 13:00:55', NULL),
(59, 113, 'media', 'full', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-52x.png', '', 'Reduced by 4,1% (7,4 KB)', 178873, 186426, '', NULL, 0, 1, '2018-02-28 13:01:09', NULL),
(60, 113, 'media', 'thumbnail', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-52x-150x150.png', '', 'Reduced by 1,1% (428,0 B)', 39915, 40343, '', NULL, 0, 1, '2018-02-28 13:01:09', NULL),
(61, 113, 'media', 'medium', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/methodo-52x-248x300.png', '', 'Reduced by 1,6% (1,6 KB)', 106346, 108032, '', NULL, 0, 1, '2018-02-28 13:01:09', NULL),
(64, 134, 'media', 'full', '/Users/albanmezino/Documents/www/stereosuper/dm1m/dest/wp-content/uploads/2018/03/logo-horizontal.png', '', 'Reduced by 45,4% (4,5 KB)', 5581, 10222, '', NULL, 0, 1, '2018-03-09 14:24:13', NULL),
(65, 134, 'media', 'thumbnail', '/Users/albanmezino/Documents/www/stereosuper/dm1m/dest/wp-content/uploads/2018/03/logo-horizontal-150x150.png', '', 'Reduced by 21,4% (1,8 KB)', 6876, 8752, '', NULL, 0, 1, '2018-03-09 14:24:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_links`
--

CREATE TABLE `_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_options`
--

CREATE TABLE `_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_options`
--

INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Design Moi Un Mouton', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'clement@stereosuper.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:47:\"clean-image-filenames/clean-image-filenames.php\";i:2;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dm1m', 'yes'),
(41, 'stylesheet', 'dm1m', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:30:\"ewww_image_optimizer_uninstall\";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '8', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, '_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:7:{i:1521491426;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521509133;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521509505;a:1:{s:27:\"secupress_cleanup_leftovers\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521552489;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521553679;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521556958;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519133133;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(112, 'current_theme', 'dm1m', 'yes'),
(113, 'theme_switched', '', 'yes'),
(114, 'theme_mods_dm1m', 'a:2:{s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'WPLANG', 'fr_FR', 'yes'),
(145, 'new_admin_email', 'clement@stereosuper.fr', 'yes'),
(148, 'clean_image_filenames_mime_types', 'images', 'yes'),
(151, 'clean_image_filenames_plugin_version', '1.2', 'yes'),
(152, 'acf_version', '5.6.8', 'yes'),
(154, 'secupress_active_submodule_ask-old-password', 'users-login', 'no'),
(155, 'secupress_users-login_settings', 'a:7:{s:33:\"login-protection_nonlogintimeslot\";a:4:{s:9:\"from_hour\";i:19;s:11:\"from_minute\";i:0;s:7:\"to_hour\";i:8;s:9:\"to_minute\";i:0;}s:9:\"sanitized\";i:1;s:32:\"login-protection_number_attempts\";i:10;s:25:\"login-protection_time_ban\";i:5;s:21:\"move-login_slug-login\";s:0:\"\";s:24:\"move-login_slug-register\";s:8:\"register\";s:23:\"move-login_login-access\";s:0:\"\";}', 'no'),
(156, 'secupress_firewall_settings', 'a:7:{s:28:\"bbq-headers_user-agents-list\";s:3433:\"ADSARobot, ah-ha, aktuelles, almaden, amzn_assoc, Anarchie, ASPSeek, ASSORT, ATHENS, Atomz, attach, autoemailspider, BackWeb, Bandit, BatchFTP, bdfetch, big.brother, BlackWidow, bmclient, Boston Project, Bot mailto:craftbot@yahoo.com, BravoBrian SpiderEngine MarcoPolo, Buddy, Bullseye, bumblebee, capture, CherryPicker, ChinaClaw, CICC, clipping, Collector, Copier, Crescent, Crescent Internet ToolPak, Custo, cyberalert, DA$, Deweb, diagem, Digger, Digimarc, DIIbot, DISCo, DISCoFinder, DISCo Pump, Download Demon, Downloader, Download Wonder, Drip, DSurf15a, DTS.Agent, EasyDL, eCatch, ecollector, efp@gmx.net, EirGrabber, EmailCollector, Email Extractor, EmailSiphon, EmailWolf, Express WebPictures, ExtractorPro, EyeNetIE, fastlwspider, FavOrg, Favorites Sweeper, FEZhead, FileHound, FlashGet WebWasher, FlickBot, fluffy, FrontPage, GalaxyBot, Gecko/2009032609 Firefox, Generic, Getleft, GetRight, GetSmart, GetWeb!, GetWebPage, gigabaz, Girafabot, Go!Zilla, Go-Ahead-Got-It, GornKer, gotit, Grabber, GrabNet, Grafula, Green Research, grub-client, Harvest, hhjhj@yahoo, hloader, HMView, HomePageSearch, httpdown, http generic, HTTrack, httrack, ia_archiver, IBM_Planetwide, imagefetch, Image Stripper, Image Sucker, IncyWincy, Indy*Library, Indy Library, informant, Ingelin, InterGET, InternetLinkagent, Internet Ninja, InternetSeer.com, Iria, Irvine, JBH*agent, JetCar, JOC, JOC Web Spider, JustView, KWebGet, Lachesis, larbin, LeechFTP, LexiBot, lftp, libwww, likse, Link*Sleuth, LINKS ARoMATIZED, LinkWalker, LWP, lwp-trivial, Mac Finder, Mag-Net, Magnet, Mass Downloader, MCspider, Memo, Microsoft.URL, MIDown tool, Mirror, Missigua Locator, Mister PiX, MMMtoCrawl/UrlDispatcherLLL, Mozilla*MSIECrawler, Mozilla.*Indy, Mozilla.*NEWT, MSFrontPage, MS FrontPage*, MSIECrawler, MSProxy, multithreaddb, nationaldirectory, Navroad, NearSite, NetAnts, NetCarta, NetMechanic, netprospector, NetResearchServer, NetSpider, Net Vampire, NetZIP, NetZip Downloader, NetZippy, NEWT, NICErsPRO, Ninja, NPBot, Octopus, Offline Explorer, Offline Navigator, OpaL, Openfind, OpenTextSiteCrawler, PackRat, PageGrabber, Papa Foto, pavuk, pcBrowser, PersonaPilot, PingALink, Pockey, psbot, PSurf, puf, Pump, PushSite, QRVA, RealDownload, Reaper, Recorder, ReGet, replacer, RepoMonkey, Robozilla, Rover, RPT-HTTPClient, Rsync, Scooter, SearchExpress, searchhippo, searchterms.it, Second Street Research, Seeker, Shai, Siphon, sitecheck, sitecheck.internetseer.com, SiteSnagger, SlySearch, SmartDownload, snagger, Snake, SpaceBison, Spegla, SpiderBot, sproose, SqWorm, Stripper, Sucker, SuperBot, SuperHTTP, Surfbot, SurfWalker, Szukacz, tAkeOut, tarspider, Teleport Pro, Templeton, TrueRobot, TV33_Mercator, UIowaCrawler, URLSpiderPro, URL_Spider_Pro, UtilMind, Vacuum, vagabondo, vayala, visibilitygap, VoidEYE, vspider, w3mir, web.by.mail, WebAuto, WebBandit, Webclipping, webcollage, webcollector, WebCopier, webcraft@bea, Web Data Extractor, webdevil, webdownloader, Web Downloader, Webdup, WebEMailExtrac, WebFetch, WebGo IS, WebHook, Web Image Collector, Webinator, WebLeacher, WEBMASTERS, WebMiner, WebMirror, webmole, WebReaper, WebSauger, Website, Website eXtractor, Website Quester, WebSnake, Webster, WebStripper, Web Sucker, websucker, webvac, webwalk, webweasel, WebWhacker, WebZIP, Wget, Whacker, whizbang, WhosTalking, Widow, WISEbot, WUMPUS, Wweb, WWWOFFLE, x-Tractor, Xenu, XGET, Zeus, Zeus.*Webster, ^Mozilla$, ^Xaldon WebSpider\";s:33:\"bbq-url-content_bad-contents-list\";s:291:\"%%30%30, %00, ../, .ini, 127.0.0.1, AND%201=, AND+1=, AND 1=, base64_decode, base64_encode, etc/passwd, eval(, GLOBALS[, information_schema, input_file, javascript:, REQUEST[, UNION%20ALL%20SELECT, UNION%20SELECT, UNION+ALL+SELECT, UNION+SELECT, UNION ALL SELECT, UNION SELECT, wp-config.php\";s:9:\"sanitized\";i:1;s:25:\"bruteforce_request_number\";i:9;s:19:\"bruteforce_time_ban\";i:5;s:22:\"geoip-system_countries\";a:0:{}s:17:\"geoip-system_type\";s:2:\"-1\";}', 'no'),
(160, 'ewww_image_optimizer_disable_pngout', '1', 'no'),
(161, 'ewww_image_optimizer_optipng_level', '2', 'no'),
(162, 'ewww_image_optimizer_pngout_level', '2', 'no'),
(163, 'ewww_image_optimizer_jpegtran_copy', '1', 'no'),
(164, 'ewww_image_optimizer_jpg_level', '10', 'no'),
(165, 'ewww_image_optimizer_png_level', '10', 'no'),
(166, 'ewww_image_optimizer_gif_level', '10', 'no'),
(167, 'ewww_image_optimizer_pdf_level', '0', 'no'),
(168, 'exactdn_all_the_things', '1', 'no'),
(169, 'ewww_image_optimizer_version', '411.0', 'yes'),
(170, 'secupress_settings', 'a:3:{s:7:\"version\";s:5:\"1.3.3\";s:8:\"hash_key\";s:64:\"GVRAJDUDRPYLNIQ5IGJASRQHRGS6YLIVQIPWS7WCSYU4KELPFQCH2XKLRJHODCDJ\";s:12:\"install_time\";i:1519133507;}', 'no'),
(171, 'ewww_image_optimizer_background_optimization', '1', 'yes'),
(173, 'ewww_image_optimizer_tracking_notice', '1', 'yes'),
(176, '_site_transient_secupress_active_submodules', 'a:1:{s:11:\"users-login\";a:1:{i:0;s:16:\"ask-old-password\";}}', 'no'),
(184, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(193, 'category_children', 'a:0:{}', 'yes'),
(199, 'wp_ewwwio_media_optimize_batch_a', '', 'no'),
(207, 'wp_ewwwio_media_optimize_batch_b', '', 'no'),
(215, 'options_projects_link', '8', 'no'),
(216, '_options_projects_link', 'field_5a8c47599ab06', 'no'),
(261, 'options_footer_title', 'Design-moi un mouton !', 'no'),
(262, '_options_footer_title', 'field_5a8d7dc688d1a', 'no'),
(263, 'options_footer_address', '', 'no'),
(264, '_options_footer_address', 'field_5a8d7f4288d1b', 'no'),
(265, 'options_footer_mail', 'dm1m@dm1m.fr', 'no'),
(266, '_options_footer_mail', 'field_5a8d7f5c88d1c', 'no'),
(267, 'options_footer_contact', 'a:3:{s:5:\"title\";s:16:\"Contactez-nous !\";s:3:\"url\";s:29:\"mailto:clement@stereosuper.fr\";s:6:\"target\";s:0:\"\";}', 'no'),
(268, '_options_footer_contact', 'field_5a8d80e146660', 'no'),
(269, 'options_fb_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.facebook.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(270, '_options_fb_link', 'field_5a8d8462bff4b', 'no'),
(284, 'options_footer_address_footer_street', '6 Rue de St-Domingue', 'no'),
(285, '_options_footer_address_footer_street', 'field_5a8d9b5c5d638', 'no'),
(286, 'options_footer_address_footer_cp', '44200', 'no'),
(287, '_options_footer_address_footer_cp', 'field_5a8d9b7b5d639', 'no'),
(288, 'options_footer_address_footer_city', 'Nantes', 'no'),
(289, '_options_footer_address_footer_city', 'field_5a8d9b8c5d63a', 'no'),
(290, 'options_footer_phone', '02 51 10 27 30', 'no'),
(291, '_options_footer_phone', 'field_5a8d9bc85d63b', 'no'),
(671, 'options_vertical_logo', '', 'no'),
(672, '_options_vertical_logo', 'field_5aa2a45a28547', 'no'),
(673, 'options_horizontal_logo', '', 'no'),
(674, '_options_horizontal_logo', 'field_5aa2a4bc8b243', 'no'),
(681, 'options_logo', '134', 'no'),
(682, '_options_logo', 'field_5aa2a45a28547', 'no'),
(731, '_site_transient_timeout_browser_231067d56394223babc9d7439bc32e9f', '1521639025', 'no'),
(732, '_site_transient_browser_231067d56394223babc9d7439bc32e9f', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.0.3\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(748, 'options_agency_link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:30:\"http://localhost/notre-agence/\";s:6:\"target\";s:0:\"\";}', 'no'),
(749, '_options_agency_link', 'field_5aa92471d7030', 'no'),
(753, 'options_agency_label', 'En savoir\r\nplus', 'no'),
(754, '_options_agency_label', 'field_5aa946434a4c7', 'no'),
(818, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521470537;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-10 09:52:11\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(819, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521470577;s:7:\"checked\";a:1:{s:4:\"dm1m\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(823, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1521510881', 'no');
INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(824, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Mar 2018 13:41:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"QbY7ne2k1eGv7f/RPyxWxnkngB8\";s:13:\"last-modified\";s:29:\"Mon, 19 Mar 2018 13:49:29 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 19 Mar 2018 13:54:41 GMT\";s:7:\"expires\";s:29:\"Mon, 19 Mar 2018 13:54:41 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:104:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,35\"\";}}s:5:\"build\";s:14:\"20180305131103\";}', 'no');
INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(825, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1521510881', 'no'),
(826, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1521467681', 'no'),
(827, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1521510881', 'no'),
(828, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Que peut faire pour moi Thivinfo?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/f5E-i8pBMNQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.thivinfo.com/service-web/que-peut-faire-pour-moi-thiverval-informatique/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Mar 2018 17:55:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:761:\"\n		        Création de site Internet Thivinfo intervient dans la création du site internet de votre activité. Je mettrais en place une solution simple d&#8217;utilisation pour votre gestion quotidienne. Cette solution basée sur le CMS WordPress répondra parfaitement à votre besoin. Site Vitrine (Restaurant, Agence Immobilière&#8230;) Site Institutionnel (Mairie, collectivité locale, PME&#8230;) Site Magazine (Association, Blog&#8230;) Site e-commerce Solution simple à l&#8217;utilisation. Maintenance de votre site WordPress En tant que développeur WordPress, je suis apte a prendre en charge la maintenance quotidienne de votre site déjà créé. Ne perdez plus de temps à mettre à jour votre installation, rechercher les bugs ou…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:831:\"Création de site Internet Thivinfo intervient dans la création du site internet de votre activité. Je mettrais en place une solution simple d&#8217;utilisation pour votre gestion quotidienne. Cette solution basée sur le CMS WordPress répondra parfaitement à votre besoin. Site Vitrine (Restaurant, Agence Immobilière&#8230;) Site Institutionnel (Mairie, collectivité locale, PME&#8230;) Site Magazine (Association, Blog&#8230;) Site e-commerce Solution simple à l&#8217;utilisation. Maintenance de votre site WordPress En tant que développeur WordPress, je suis apte a prendre en charge la maintenance quotidienne de votre site déjà créé. Ne perdez plus de temps à mettre à jour votre installation, rechercher les bugs ou…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/f5E-i8pBMNQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.thivinfo.com/service-web/que-peut-faire-pour-moi-thiverval-informatique/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"Découvrir Gutenberg dès maintenant\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Gj9zaRvIhz8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://dfarnier.fr/decouvrir-gutenberg/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Mar 2018 08:21:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:351:\"\n		        \"Gutenberg\" est le nom du nouvel éditeur d\'article de WordPress. Il fonctionne avec des blocs (de textes, d\'images...) que l\'on positionne dans la page éditée.\nUne extension permet de se familiariser avec son mode de fonctionnement.\nCet article Découvrir Gutenberg dès maintenant est apparu en premier sur Débuter WordPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Daniel Farnier\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:561:\"<p>\"Gutenberg\" est le nom du nouvel éditeur d\'article de WordPress. Il fonctionne avec des blocs (de textes, d\'images...) que l\'on positionne dans la page éditée.</p>\n<p>Une extension permet de se familiariser avec son mode de fonctionnement.</p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://dfarnier.fr/decouvrir-gutenberg/\">Découvrir Gutenberg dès maintenant</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://dfarnier.fr\">Débuter WordPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Gj9zaRvIhz8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://dfarnier.fr/decouvrir-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Salon WPNDIGITAL : Site web et billetterie ouverts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/6Yg672d_xDo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.wpnormandie.fr/salon-wpndigital-site-web-et-billetterie-ouverts/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Mar 2018 07:31:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:375:\"\n		        Les choses s’accélèrent autour du salon WPNDigital. En effet, le site internet a ouvert vendredi dernier et avec la billetterie. Pour rappel WPNDigital est le premier salon en France à aborder les trois thématiques suivantes dans un même événement : le Web, le digital, WordPress. Il se déroulera le 2 juin 2018 au centre de congrès [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:445:\"Les choses s’accélèrent autour du salon WPNDigital. En effet, le site internet a ouvert vendredi dernier et avec la billetterie. Pour rappel WPNDigital est le premier salon en France à aborder les trois thématiques suivantes dans un même événement : le Web, le digital, WordPress. Il se déroulera le 2 juin 2018 au centre de congrès [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/6Yg672d_xDo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.wpnormandie.fr/salon-wpndigital-site-web-et-billetterie-ouverts/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Forcer la désindexation de pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://feedproxy.google.com/~r/wpfr/~3/T6D3Pa-pD9E/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 11:35:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"\n		        Pour désindexer une page, une simple restriction 403 ne résout pas le problème, il faut forcer un code 410.\nCet article Forcer la désindexation de pages est apparu en premier sur Be API Tech blog.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3341:\"<header class=\"hkb-article__header\">\n<p class=\"hkb-article__title\">Si un environnement de dev/qualif/preprod est indexé par les moteurs de recherche, une simple restriction (403) ne résoud le problème que partiellement.</p>\n</header>\n<div class=\"hkb-article__content\">\n<p>En effet, les robots ne pourront plus accéder aux pages mais elles resteront dans l’index (donc interrogées régulièrement).</p>\n<p><span id=\"more-483\"></span></p>\n<h2 class=\"hkb-article__title\">Renvoyer des 410 afin de désindexer des pages</h2>\n<p>Pour indiquer aux moteurs de recherche que ces pages sont à désindexer, le moyen le plus rapide c’est de renvoyer des 410. Ce code indique qu’une ressource qui était disponible auparavant ne l’est plus actuellement.</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-bash code-embed-pre\"><code class=\"language-bash code-embed-code\">RewriteEngine On\nRewriteCond %{HTTP_USER_AGENT} Googlebot [OR]\nRewriteCond %{HTTP_USER_AGENT} AdsBot-Google [OR]\nRewriteCond %{HTTP_USER_AGENT} msnbot [OR]\nRewriteCond %{HTTP_USER_AGENT} AltaVista [OR]\nRewriteCond %{HTTP_USER_AGENT} Slurp\nRewriteRule . - [G,L]</code></pre> <div class=\"code-embed-infos\"> <a href=\"https://github.com/BeAPI/bea-sample/blob/master/.htaccess-410\" title=\"Afficher .htaccess-410\" target=\"_blank\" class=\"code-embed-name\">.htaccess-410</a> <a href=\"https://raw.github.com/BeAPI/bea-sample/master/.htaccess-410\" title=\"Back to .htaccess-410\" class=\"code-embed-raw\" target=\"_blank\">affichage brut</a> </div> </div>\n<p>Pour cibler des pages en particulier, suivre l’exemple ci-dessous.</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-bash code-embed-pre\"><code class=\"language-bash code-embed-code\">RewriteRule ^/wp-content/uploads/2017/01/CV_RF-Continue.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2017/01/CV.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2017/01/LM.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2016/11/lettre_motivation_XT.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2016/07/201606-CV-FR-v1.pdf$ - [G,NC]</code></pre> <div class=\"code-embed-infos\"> <a href=\"https://github.com/BeAPI/bea-sample/blob/master/.htaccess-410-precise\" title=\"Afficher .htaccess-410-precise\" target=\"_blank\" class=\"code-embed-name\">.htaccess-410-precise</a> <a href=\"https://raw.github.com/BeAPI/bea-sample/master/.htaccess-410-precise\" title=\"Back to .htaccess-410-precise\" class=\"code-embed-raw\" target=\"_blank\">affichage brut</a> </div> </div>\n<h2>Conclusion</h2>\n<header class=\"hkb-article__header\">\n<p class=\"hkb-article__title\">Une simple restriction 403 ne résout pas le problème, il faut forcer un code 410.</p>\n</header>\n<p><em>Bonus :</em> Plusieurs tests internes démontrent qu’au bout de 2 semaines, les URLs commencent à disparaître du moteur de recherche contre 6 mois environ quand du 403 est renvoyé !</p>\n<p>Enjoy !</p>\n</div>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p><!--more--></p>\n<p>Cet article <a rel=\"nofollow\" href=\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\">Forcer la désindexation de pages</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://blog.beapi.fr\">Be API Tech blog</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/T6D3Pa-pD9E\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Simplifiez le développement de vos thèmes avec Gulp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/NB6bUjJZEfY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 09:45:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:514:\"\n		        Cet article fait suite à ma conférence au WordCamp Paris 2018, ou je faisais une démonstration de l&#8217;utilisation de Gulp dans un thème WordPress, qui permet de compiler les fichiers CSS, JS, les compresser, recharger automatiquement le navigateur et bien d&#8217;autres encore. Démonstration. WordCamp Paris 2018 Cette année le WordCamp Paris s&#8217;est déroulé le 9 [&#8230;]\nCet article Simplifiez le développement de vos thèmes avec Gulp est apparu en premier sur GeekPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Geekpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:732:\"<p>Cet article fait suite à ma conférence au WordCamp Paris 2018, ou je faisais une démonstration de l&#8217;utilisation de Gulp dans un thème WordPress, qui permet de compiler les fichiers CSS, JS, les compresser, recharger automatiquement le navigateur et bien d&#8217;autres encore. Démonstration. WordCamp Paris 2018 Cette année le WordCamp Paris s&#8217;est déroulé le 9 [&#8230;]</p>\n<p>Cet article <a rel=\"nofollow\" href=\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\">Simplifiez le développement de vos thèmes avec Gulp</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://www.geekpress.fr\">GeekPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/NB6bUjJZEfY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"10 outils pour vous faciliter la vie avec WordPress !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/VBsH2q4ApFw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 07:30:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:564:\"\n		        Je parie qu’on tombera d’accord si je vous dis que la vie est déjà assez compliquée comme ça. Pour commencer, elle est beaucoup trop courte et n’offre pas assez de temps pour faire tout ce qu’on a envie de faire… ce qui inclut votre liste d’objectifs sur WordPress. Et c’est pourquoi quelques outils bien conçus [&#8230;]\n\nL’article 10 outils pour vous faciliter la vie avec WordPress ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1433:\"<p><img width=\"1800\" height=\"1200\" src=\"https://wpformation.com/wp-content/uploads/2018/02/10-outils-pour-faciliter-WordPress.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"10 outils pour faciliter WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Je parie qu’on tombera d’accord si je vous dis que la vie est déjà assez compliquée comme ça. Pour commencer, elle est beaucoup trop courte et n’offre pas assez de temps pour faire tout ce qu’on a envie de faire… ce qui inclut votre liste d’objectifs sur WordPress. Et c’est pourquoi quelques outils bien conçus [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\">10 outils pour vous faciliter la vie avec WordPress !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/VBsH2q4ApFw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Les 19 plugins WordPress à tester et à adopter en 2018 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/KforpBSDymg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpformation.com/19-plugins-wordpress-2018/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 13:45:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:617:\"\n		        Que ferait-on sans plugins ? Les utilisateurs de WordPress le savent bien : les plugins permettent d&#8217;ajouter des fonctionnalités afin d&#8217;obtenir un site web plus abouti et qui correspond mieux à leurs attentes. Sur le répertoire officiel des plugins de WordPress, il y a un nombre incroyable d&#8217;extensions mises à votre disposition, certaines se ressemblent, [&#8230;]\n\nL’article Les 19 plugins WordPress à tester et à adopter en 2018 ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1460:\"<p><img width=\"1920\" height=\"1080\" src=\"https://wpformation.com/wp-content/uploads/2018/02/19-plugins-WordPress-2018.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"19-plugins-WordPress-2018\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Que ferait-on sans plugins ? Les utilisateurs de WordPress le savent bien : les plugins permettent d&#8217;ajouter des fonctionnalités afin d&#8217;obtenir un site web plus abouti et qui correspond mieux à leurs attentes. Sur le répertoire officiel des plugins de WordPress, il y a un nombre incroyable d&#8217;extensions mises à votre disposition, certaines se ressemblent, [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/19-plugins-wordpress-2018/\">Les 19 plugins WordPress à tester et à adopter en 2018 !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/KforpBSDymg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpformation.com/19-plugins-wordpress-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Les 9 meilleures extensions pour installer Google Maps sur WordPress facilement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/26o6KrHOSss/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"https://wpmarmite.com/google-maps-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=google-maps-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 09:36:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"\n		        \nUn fantôme tapi dans le château d’Édimbourg, un cimetière d’avions aux États-Unis ou encore une étoile satanique : voilà ce qu’auraient un jour aperçu certains utilisateurs de Google Maps, en...\nL’article Les 9 meilleures extensions pour installer Google Maps sur WordPress facilement est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:744:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2018/03/google-maps-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Un fantôme tapi dans le château d’Édimbourg, un cimetière d’avions aux États-Unis ou encore une étoile satanique : voilà ce qu’auraient un jour aperçu certains utilisateurs de Google Maps, en...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/google-maps-wordpress/\">Les 9 meilleures extensions pour installer Google Maps sur WordPress facilement</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/26o6KrHOSss\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"https://wpmarmite.com/google-maps-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=google-maps-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"hpl+cmqIrZ1NWD1+G0dv2okX2kg\";s:13:\"last-modified\";s:29:\"Mon, 19 Mar 2018 13:34:27 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 19 Mar 2018 13:54:41 GMT\";s:7:\"expires\";s:29:\"Mon, 19 Mar 2018 13:54:41 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:104:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,35\"\";}}s:5:\"build\";s:14:\"20180305131103\";}', 'no'),
(829, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1521510881', 'no'),
(830, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1521467681', 'no'),
(831, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1521510881', 'no'),
(832, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\'>Résultats des élections du bureau 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/f5E-i8pBMNQ/\'>Que peut faire pour moi Thivinfo?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Gj9zaRvIhz8/\'>Découvrir Gutenberg dès maintenant</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/6Yg672d_xDo/\'>Salon WPNDIGITAL : Site web et billetterie ouverts</a></li></ul></div>', 'no'),
(833, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1521510881', 'no'),
(834, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(835, '_transient_timeout_plugin_slugs', '1521556958', 'no'),
(836, '_transient_plugin_slugs', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:47:\"clean-image-filenames/clean-image-filenames.php\";i:2;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:3;s:23:\"secupress/secupress.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(838, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1521481252', 'no'),
(839, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4440;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2653;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2544;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2410;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1860;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1639;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1633;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1447;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1384;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1380;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1380;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1304;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1280;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1187;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1088;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1055;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1014;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:994;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:872;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:866;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:823;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:797;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:792;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:699;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:689;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:683;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:672;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:654;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:636;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:632;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:611;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:610;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:599;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:599;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:588;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:585;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:585;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:558;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:531;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:519;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:514;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:491;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:486;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:486;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:478;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:471;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:465;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:462;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:453;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:451;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:435;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:427;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:419;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:412;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:397;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:384;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:379;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:361;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:354;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:350;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:342;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:336;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:334;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:329;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:326;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:318;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:311;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:302;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:292;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:290;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:289;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:288;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:286;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:285;}}', 'no'),
(841, '_site_transient_timeout_theme_roots', '1521472344', 'no'),
(842, '_site_transient_theme_roots', 'a:1:{s:4:\"dm1m\";s:7:\"/themes\";}', 'no'),
(844, 'wpseo', 'a:18:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"7.0.3\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1521470557;}', 'yes'),
(845, 'wpseo_titles', 'a:64:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(846, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"ff5230548ddd8d2a21d38c52dee4a33f\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(847, 'wpseo_flush_rewrite', '1', 'yes'),
(848, '_transient_timeout_wpseo_link_table_inaccessible', '1553006558', 'no'),
(849, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(850, '_transient_timeout_wpseo_meta_table_inaccessible', '1553006558', 'no'),
(851, '_transient_wpseo_meta_table_inaccessible', '0', 'no');
INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(853, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521470571;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.6.9\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.1.1\";s:7:\"updated\";s:19:\"2018-03-08 08:09:40\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/ewww-image-optimizer/4.1.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"secupress\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.3.3\";s:7:\"updated\";s:19:\"2017-10-01 10:12:29\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/secupress/1.3.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"7.0.3\";s:7:\"updated\";s:19:\"2018-03-06 14:23:59\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/7.0.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:47:\"clean-image-filenames/clean-image-filenames.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/clean-image-filenames\";s:4:\"slug\";s:21:\"clean-image-filenames\";s:6:\"plugin\";s:47:\"clean-image-filenames/clean-image-filenames.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/clean-image-filenames/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/clean-image-filenames.1.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/clean-image-filenames/assets/icon-256x256.png?rev=1001365\";s:7:\"default\";s:74:\"https://ps.w.org/clean-image-filenames/assets/icon-256x256.png?rev=1001365\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/clean-image-filenames/assets/banner-1544x500.png?rev=1001368\";s:2:\"1x\";s:76:\"https://ps.w.org/clean-image-filenames/assets/banner-772x250.png?rev=1001368\";s:7:\"default\";s:77:\"https://ps.w.org/clean-image-filenames/assets/banner-1544x500.png?rev=1001368\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/ewww-image-optimizer\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:6:\"plugin\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/ewww-image-optimizer/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/ewww-image-optimizer.4.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-128x128.png?rev=1582276\";s:2:\"2x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";s:7:\"default\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";s:2:\"1x\";s:75:\"https://ps.w.org/ewww-image-optimizer/assets/banner-772x250.jpg?rev=1582276\";s:7:\"default\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"secupress/secupress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/secupress\";s:4:\"slug\";s:9:\"secupress\";s:6:\"plugin\";s:23:\"secupress/secupress.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/secupress/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/secupress.1.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:62:\"https://ps.w.org/secupress/assets/icon-128x128.png?rev=1677548\";s:2:\"2x\";s:62:\"https://ps.w.org/secupress/assets/icon-256x256.png?rev=1677548\";s:7:\"default\";s:62:\"https://ps.w.org/secupress/assets/icon-256x256.png?rev=1677548\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/secupress/assets/banner-1544x500.png?rev=1677677\";s:2:\"1x\";s:64:\"https://ps.w.org/secupress/assets/banner-772x250.png?rev=1677677\";s:7:\"default\";s:65:\"https://ps.w.org/secupress/assets/banner-1544x500.png?rev=1677677\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"7.0.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.7.0.3.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1834347\";s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1834347\";s:7:\"default\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1834347\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112\";s:7:\"default\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112\";s:7:\"default\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";}}}}', 'no'),
(854, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(855, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(856, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(857, '_transient_timeout_ewww_image_optimizer_images_reoptimized', '1521475098', 'no'),
(858, '_transient_ewww_image_optimizer_images_reoptimized', 'zero', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `_postmeta`
--

CREATE TABLE `_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_postmeta`
--

INSERT INTO `_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', '//localhost:3000/'),
(10, 4, '_menu_item_orphaned', '1519134448'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1519134448'),
(20, 6, '_edit_last', '1'),
(21, 6, '_edit_lock', '1520006898:1'),
(22, 6, '_wp_page_template', 'default'),
(23, 8, '_edit_last', '1'),
(24, 8, '_wp_page_template', 'default'),
(25, 8, '_edit_lock', '1519210606:1'),
(26, 10, '_edit_last', '1'),
(27, 10, '_edit_lock', '1521469315:1'),
(28, 10, '_wp_page_template', 'about.php'),
(29, 12, '_menu_item_type', 'custom'),
(30, 12, '_menu_item_menu_item_parent', '0'),
(31, 12, '_menu_item_object_id', '12'),
(32, 12, '_menu_item_object', 'custom'),
(33, 12, '_menu_item_target', ''),
(34, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 12, '_menu_item_xfn', ''),
(36, 12, '_menu_item_url', '//localhost:3000/'),
(37, 12, '_menu_item_orphaned', '1519134772'),
(38, 13, '_menu_item_type', 'post_type'),
(39, 13, '_menu_item_menu_item_parent', '0'),
(40, 13, '_menu_item_object_id', '8'),
(41, 13, '_menu_item_object', 'page'),
(42, 13, '_menu_item_target', ''),
(43, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 13, '_menu_item_xfn', ''),
(45, 13, '_menu_item_url', ''),
(46, 13, '_menu_item_orphaned', '1519134772'),
(47, 14, '_menu_item_type', 'post_type'),
(48, 14, '_menu_item_menu_item_parent', '0'),
(49, 14, '_menu_item_object_id', '10'),
(50, 14, '_menu_item_object', 'page'),
(51, 14, '_menu_item_target', ''),
(52, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 14, '_menu_item_xfn', ''),
(54, 14, '_menu_item_url', ''),
(55, 14, '_menu_item_orphaned', '1519134772'),
(56, 15, '_menu_item_type', 'post_type'),
(57, 15, '_menu_item_menu_item_parent', '0'),
(58, 15, '_menu_item_object_id', '6'),
(59, 15, '_menu_item_object', 'page'),
(60, 15, '_menu_item_target', ''),
(61, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 15, '_menu_item_xfn', ''),
(63, 15, '_menu_item_url', ''),
(64, 15, '_menu_item_orphaned', '1519134772'),
(65, 16, '_menu_item_type', 'post_type'),
(66, 16, '_menu_item_menu_item_parent', '0'),
(67, 16, '_menu_item_object_id', '2'),
(68, 16, '_menu_item_object', 'page'),
(69, 16, '_menu_item_target', ''),
(70, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 16, '_menu_item_xfn', ''),
(72, 16, '_menu_item_url', ''),
(73, 16, '_menu_item_orphaned', '1519134772'),
(74, 17, '_menu_item_type', 'post_type'),
(75, 17, '_menu_item_menu_item_parent', '0'),
(76, 17, '_menu_item_object_id', '10'),
(77, 17, '_menu_item_object', 'page'),
(78, 17, '_menu_item_target', ''),
(79, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 17, '_menu_item_xfn', ''),
(81, 17, '_menu_item_url', ''),
(83, 18, '_menu_item_type', 'post_type'),
(84, 18, '_menu_item_menu_item_parent', '0'),
(85, 18, '_menu_item_object_id', '8'),
(86, 18, '_menu_item_object', 'page'),
(87, 18, '_menu_item_target', ''),
(88, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 18, '_menu_item_xfn', ''),
(90, 18, '_menu_item_url', ''),
(92, 19, '_menu_item_type', 'post_type'),
(93, 19, '_menu_item_menu_item_parent', '0'),
(94, 19, '_menu_item_object_id', '6'),
(95, 19, '_menu_item_object', 'page'),
(96, 19, '_menu_item_target', ''),
(97, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 19, '_menu_item_xfn', ''),
(99, 19, '_menu_item_url', ''),
(114, 22, '_edit_last', '1'),
(115, 22, '_edit_lock', '1521469157:1'),
(118, 24, '_edit_last', '1'),
(119, 24, '_edit_lock', '1519403206:1'),
(122, 22, 'subtitle', 'Wolverine'),
(123, 22, '_subtitle', 'field_5a8c2d541333d'),
(132, 29, '_wp_attached_file', '2018/02/image1.png'),
(133, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2163;s:6:\"height\";i:1217;s:4:\"file\";s:18:\"2018/02/image1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"image1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 30, '_wp_attached_file', '2018/02/image2.png'),
(135, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2161;s:6:\"height\";i:2265;s:4:\"file\";s:18:\"2018/02/image2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image2-286x300.png\";s:5:\"width\";i:286;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image2-768x805.png\";s:5:\"width\";i:768;s:6:\"height\";i:805;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"image2-977x1024.png\";s:5:\"width\";i:977;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 22, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(139, 22, '_galerie', 'field_5a8c307449d5c'),
(150, 33, '_edit_last', '1'),
(151, 33, '_edit_lock', '1521469182:1'),
(154, 33, 'subtitle', 'uploads'),
(155, 33, '_subtitle', 'field_5a8c2d541333d'),
(156, 33, 'galerie', ''),
(157, 33, '_galerie', 'field_5a8c307449d5c'),
(158, 34, 'subtitle', 'uploads'),
(159, 34, '_subtitle', 'field_5a8c2d541333d'),
(160, 34, 'galerie', ''),
(161, 34, '_galerie', 'field_5a8c307449d5c'),
(162, 36, '_edit_last', '1'),
(163, 36, '_edit_lock', '1519223784:1'),
(164, 22, '_thumbnail_id', '30'),
(172, 38, '_edit_last', '1'),
(173, 38, '_edit_lock', '1519376755:1'),
(174, 8, 'content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(175, 8, '_content', 'field_5a8d48ed968f5'),
(176, 40, 'content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(177, 40, '_content', 'field_5a8d48ed968f5'),
(178, 8, 'projects_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(179, 8, '_projects_text', 'field_5a8d48ed968f5'),
(180, 41, 'content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(181, 41, '_content', 'field_5a8d48ed968f5'),
(182, 41, 'projects_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(183, 41, '_projects_text', 'field_5a8d48ed968f5'),
(184, 8, 'services_0_service', 'Packaging'),
(185, 8, '_services_0_service', 'field_5a8d4b7cbc91b'),
(186, 8, 'services_1_service', 'Identité'),
(187, 8, '_services_1_service', 'field_5a8d4b7cbc91b'),
(188, 8, 'services_2_service', 'Édition'),
(189, 8, '_services_2_service', 'field_5a8d4b7cbc91b'),
(190, 8, 'services', '3'),
(191, 8, '_services', 'field_5a8d4b40bc91a'),
(192, 44, 'content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(193, 44, '_content', 'field_5a8d48ed968f5'),
(194, 44, 'projects_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,\r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(195, 44, '_projects_text', 'field_5a8d48ed968f5'),
(196, 44, 'services_0_service', 'Packaging'),
(197, 44, '_services_0_service', 'field_5a8d4b7cbc91b'),
(198, 44, 'services_1_service', 'Identité'),
(199, 44, '_services_1_service', 'field_5a8d4b7cbc91b'),
(200, 44, 'services_2_service', 'Édition'),
(201, 44, '_services_2_service', 'field_5a8d4b7cbc91b'),
(202, 44, 'services', '3'),
(203, 44, '_services', 'field_5a8d4b40bc91a'),
(240, 49, '_edit_last', '1'),
(241, 49, '_edit_lock', '1521034703:1'),
(244, 33, 'grid_size', 'big-square'),
(245, 33, '_grid_size', 'field_5a8d9003f5d8e'),
(246, 57, 'subtitle', 'uploads'),
(247, 57, '_subtitle', 'field_5a8c2d541333d'),
(248, 57, 'galerie', ''),
(249, 57, '_galerie', 'field_5a8c307449d5c'),
(250, 57, 'grid_size', 'big-square'),
(251, 57, '_grid_size', 'field_5a8d9003f5d8e'),
(254, 22, 'grid_size', 'h-rect'),
(255, 22, '_grid_size', 'field_5a8d9003f5d8e'),
(278, 66, '_menu_item_type', 'post_type'),
(279, 66, '_menu_item_menu_item_parent', '0'),
(280, 66, '_menu_item_object_id', '10'),
(281, 66, '_menu_item_object', 'page'),
(282, 66, '_menu_item_target', ''),
(283, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 66, '_menu_item_xfn', ''),
(285, 66, '_menu_item_url', ''),
(287, 71, '_wp_attached_file', '2018/02/1_carre.png'),
(288, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1060;s:6:\"height\";i:1060;s:4:\"file\";s:19:\"2018/02/1_carre.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1_carre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1_carre-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"1_carre-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"1_carre-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 72, '_wp_attached_file', '2018/02/1_rect_vert.png'),
(290, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:1060;s:4:\"file\";s:23:\"2018/02/1_rect_vert.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"1_rect_vert-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"1_rect_vert-150x300.png\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"1_rect_vert-512x1024.png\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(291, 73, '_wp_attached_file', '2018/02/1_rect_hor.png'),
(292, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1060;s:6:\"height\";i:530;s:4:\"file\";s:22:\"2018/02/1_rect_hor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1_rect_hor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1_rect_hor-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"1_rect_hor-768x384.png\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"1_rect_hor-1024x512.png\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(295, 33, 'grid_img_square', '71'),
(296, 33, '_grid_img_square', 'field_5a8fe04329263'),
(297, 33, 'grid_img_v-rect', '72'),
(298, 33, '_grid_img_v-rect', 'field_5a8fe08029264'),
(299, 33, 'grid_img_h-rect', '73'),
(300, 33, '_grid_img_h-rect', 'field_5a8fe09029265'),
(301, 33, 'grid_img', ''),
(302, 33, '_grid_img', 'field_5a8fdfe829262'),
(303, 74, 'subtitle', 'uploads'),
(304, 74, '_subtitle', 'field_5a8c2d541333d'),
(305, 74, 'galerie', ''),
(306, 74, '_galerie', 'field_5a8c307449d5c'),
(307, 74, 'grid_size', 'big-square'),
(308, 74, '_grid_size', 'field_5a8d9003f5d8e'),
(309, 74, 'grid_img_square', '71'),
(310, 74, '_grid_img_square', 'field_5a8fe04329263'),
(311, 74, 'grid_img_v-rect', '72'),
(312, 74, '_grid_img_v-rect', 'field_5a8fe08029264'),
(313, 74, 'grid_img_h-rect', '73'),
(314, 74, '_grid_img_h-rect', 'field_5a8fe09029265'),
(315, 74, 'grid_img', ''),
(316, 74, '_grid_img', 'field_5a8fdfe829262'),
(317, 33, '_thumbnail_id', '71'),
(322, 22, 'grid_img_square', '76'),
(323, 22, '_grid_img_square', 'field_5a8fe04329263'),
(324, 22, 'grid_img_v-rect', '77'),
(325, 22, '_grid_img_v-rect', 'field_5a8fe08029264'),
(326, 22, 'grid_img_h-rect', '78'),
(327, 22, '_grid_img_h-rect', 'field_5a8fe09029265'),
(328, 22, 'grid_img', ''),
(329, 22, '_grid_img', 'field_5a8fdfe829262'),
(344, 76, '_wp_attached_file', '2018/02/2_carre.png'),
(345, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1060;s:6:\"height\";i:1060;s:4:\"file\";s:19:\"2018/02/2_carre.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"2_carre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"2_carre-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"2_carre-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"2_carre-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 77, '_wp_attached_file', '2018/02/2_rect_vert.png'),
(347, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:1060;s:4:\"file\";s:23:\"2018/02/2_rect_vert.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"2_rect_vert-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"2_rect_vert-150x300.png\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"2_rect_vert-512x1024.png\";s:5:\"width\";i:512;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 78, '_wp_attached_file', '2018/02/2_rect_hor.png'),
(349, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1060;s:6:\"height\";i:530;s:4:\"file\";s:22:\"2018/02/2_rect_hor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2_rect_hor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2_rect_hor-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"2_rect_hor-768x384.png\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"2_rect_hor-1024x512.png\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 79, 'subtitle', 'Wolverine'),
(353, 79, '_subtitle', 'field_5a8c2d541333d'),
(354, 79, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(355, 79, '_galerie', 'field_5a8c307449d5c'),
(356, 79, 'grid_size', 'h-rect'),
(357, 79, '_grid_size', 'field_5a8d9003f5d8e'),
(358, 79, 'grid_img_square', '76'),
(359, 79, '_grid_img_square', 'field_5a8fe04329263'),
(360, 79, 'grid_img_v-rect', '77'),
(361, 79, '_grid_img_v-rect', 'field_5a8fe08029264'),
(362, 79, 'grid_img_h-rect', '78'),
(363, 79, '_grid_img_h-rect', 'field_5a8fe09029265'),
(364, 79, 'grid_img', ''),
(365, 79, '_grid_img', 'field_5a8fdfe829262'),
(366, 82, '_edit_last', '1'),
(367, 82, '_edit_lock', '1521034314:1'),
(368, 102, '_wp_attached_file', '2018/02/img.png'),
(369, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:534;s:6:\"height\";i:534;s:4:\"file\";s:15:\"2018/02/img.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 103, '_wp_attached_file', '2018/02/cover.png'),
(371, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2163;s:6:\"height\";i:1217;s:4:\"file\";s:17:\"2018/02/cover.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cover-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cover-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cover-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"cover-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 10, 'title', 'Design-moi un mouton'),
(373, 10, '_title', 'field_5a957d9e4e2cf'),
(374, 10, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(375, 10, '_intro', 'field_5a957dd54e2d0'),
(376, 10, 'expertise_title', 'Notre expertise'),
(377, 10, '_expertise_title', 'field_5a957e4c6080e'),
(378, 10, 'expertise_clouds_0_cloud_title', 'Packaging'),
(379, 10, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(380, 10, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(381, 10, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(382, 10, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(383, 10, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(384, 10, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(385, 10, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(386, 10, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(387, 10, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(388, 10, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(389, 10, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(390, 10, 'expertise_clouds', '3'),
(391, 10, '_expertise_clouds', 'field_5a957e786080f'),
(392, 10, 'methodo_title', 'Notre méthodologie'),
(393, 10, '_methodo_title', 'field_5a957fb260814'),
(394, 10, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(395, 10, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(396, 10, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(397, 10, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(398, 10, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(399, 10, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(400, 10, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(401, 10, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(402, 10, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(403, 10, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(404, 10, 'methodo_steps', '5'),
(405, 10, '_methodo_steps', 'field_5a957f6c60813'),
(406, 10, 'team_title', 'Avec nous'),
(407, 10, '_team_title', 'field_5a9580895adb6'),
(408, 10, 'team_members_0_prenom', 'Bertrand'),
(409, 10, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(410, 10, 'team_members_0_nom', 'Goumand'),
(411, 10, '_team_members_0_nom', 'field_5a9581155adb9'),
(412, 10, 'team_members_0_job', 'Lorem ispum'),
(413, 10, '_team_members_0_job', 'field_5a9581205adba'),
(414, 10, 'team_members_0_img', '102'),
(415, 10, '_team_members_0_img', 'field_5a95813b5adbb'),
(416, 10, 'team_members_1_prenom', 'Bertrand'),
(417, 10, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(418, 10, 'team_members_1_nom', 'Goumand'),
(419, 10, '_team_members_1_nom', 'field_5a9581155adb9'),
(420, 10, 'team_members_1_job', 'Lorem ispum'),
(421, 10, '_team_members_1_job', 'field_5a9581205adba'),
(422, 10, 'team_members_1_img', '102'),
(423, 10, '_team_members_1_img', 'field_5a95813b5adbb'),
(424, 10, 'team_members_2_prenom', 'Bertrand'),
(425, 10, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(426, 10, 'team_members_2_nom', 'Goumand'),
(427, 10, '_team_members_2_nom', 'field_5a9581155adb9'),
(428, 10, 'team_members_2_job', 'Lorem ispum'),
(429, 10, '_team_members_2_job', 'field_5a9581205adba'),
(430, 10, 'team_members_2_img', '102'),
(431, 10, '_team_members_2_img', 'field_5a95813b5adbb'),
(432, 10, 'team_members_3_prenom', 'Bertrand'),
(433, 10, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(434, 10, 'team_members_3_nom', 'Goumand'),
(435, 10, '_team_members_3_nom', 'field_5a9581155adb9'),
(436, 10, 'team_members_3_job', 'Lorem ispum'),
(437, 10, '_team_members_3_job', 'field_5a9581205adba'),
(438, 10, 'team_members_3_img', '102'),
(439, 10, '_team_members_3_img', 'field_5a95813b5adbb'),
(440, 10, 'team_members', '4'),
(441, 10, '_team_members', 'field_5a9580b65adb7'),
(512, 10, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(513, 10, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(514, 10, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(515, 10, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(516, 10, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(517, 10, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(518, 10, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(519, 10, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(520, 10, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(521, 10, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(602, 106, 'title', 'Design-moi un mouton'),
(603, 106, '_title', 'field_5a957d9e4e2cf'),
(604, 106, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(605, 106, '_intro', 'field_5a957dd54e2d0'),
(606, 106, 'expertise_title', 'Notre expertise'),
(607, 106, '_expertise_title', 'field_5a957e4c6080e'),
(608, 106, 'expertise_clouds_0_cloud_title', 'Packaging'),
(609, 106, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(610, 106, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(611, 106, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(612, 106, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(613, 106, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(614, 106, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(615, 106, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(616, 106, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(617, 106, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(618, 106, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(619, 106, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(620, 106, 'expertise_clouds', '3'),
(621, 106, '_expertise_clouds', 'field_5a957e786080f'),
(622, 106, 'methodo_title', 'Notre méthodologie'),
(623, 106, '_methodo_title', 'field_5a957fb260814'),
(624, 106, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(625, 106, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(626, 106, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(627, 106, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(628, 106, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(629, 106, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(630, 106, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(631, 106, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(632, 106, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(633, 106, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(634, 106, 'methodo_steps', '5'),
(635, 106, '_methodo_steps', 'field_5a957f6c60813'),
(636, 106, 'team_title', 'Avec nous'),
(637, 106, '_team_title', 'field_5a9580895adb6'),
(638, 106, 'team_members_0_prenom', 'Bertrand'),
(639, 106, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(640, 106, 'team_members_0_nom', 'Goumand'),
(641, 106, '_team_members_0_nom', 'field_5a9581155adb9'),
(642, 106, 'team_members_0_job', 'Lorem ispum'),
(643, 106, '_team_members_0_job', 'field_5a9581205adba'),
(644, 106, 'team_members_0_img', '102'),
(645, 106, '_team_members_0_img', 'field_5a95813b5adbb'),
(646, 106, 'team_members_1_prenom', 'Bertrand'),
(647, 106, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(648, 106, 'team_members_1_nom', 'Goumand'),
(649, 106, '_team_members_1_nom', 'field_5a9581155adb9'),
(650, 106, 'team_members_1_job', 'Lorem ispum'),
(651, 106, '_team_members_1_job', 'field_5a9581205adba'),
(652, 106, 'team_members_1_img', '102'),
(653, 106, '_team_members_1_img', 'field_5a95813b5adbb'),
(654, 106, 'team_members_2_prenom', 'Bertrand'),
(655, 106, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(656, 106, 'team_members_2_nom', 'Goumand'),
(657, 106, '_team_members_2_nom', 'field_5a9581155adb9'),
(658, 106, 'team_members_2_job', 'Lorem ispum'),
(659, 106, '_team_members_2_job', 'field_5a9581205adba'),
(660, 106, 'team_members_2_img', '102'),
(661, 106, '_team_members_2_img', 'field_5a95813b5adbb'),
(662, 106, 'team_members_3_prenom', 'Bertrand'),
(663, 106, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(664, 106, 'team_members_3_nom', 'Goumand'),
(665, 106, '_team_members_3_nom', 'field_5a9581155adb9'),
(666, 106, 'team_members_3_job', 'Lorem ispum'),
(667, 106, '_team_members_3_job', 'field_5a9581205adba'),
(668, 106, 'team_members_3_img', '102'),
(669, 106, '_team_members_3_img', 'field_5a95813b5adbb'),
(670, 106, 'team_members', '4'),
(671, 106, '_team_members', 'field_5a9580b65adb7'),
(672, 106, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(673, 106, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(674, 106, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(675, 106, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(676, 106, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(677, 106, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(678, 106, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(679, 106, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(680, 106, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(681, 106, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(684, 107, 'subtitle', 'Wolverine'),
(685, 107, '_subtitle', 'field_5a8c2d541333d'),
(686, 107, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(687, 107, '_galerie', 'field_5a8c307449d5c'),
(688, 107, 'grid_size', 'h-rect'),
(689, 107, '_grid_size', 'field_5a8d9003f5d8e'),
(690, 107, 'grid_img_square', '76'),
(691, 107, '_grid_img_square', 'field_5a8fe04329263'),
(692, 107, 'grid_img_v-rect', '77'),
(693, 107, '_grid_img_v-rect', 'field_5a8fe08029264'),
(694, 107, 'grid_img_h-rect', '78'),
(695, 107, '_grid_img_h-rect', 'field_5a8fe09029265'),
(696, 107, 'grid_img', ''),
(697, 107, '_grid_img', 'field_5a8fdfe829262'),
(698, 109, '_wp_attached_file', '2018/02/methodo-12x.png'),
(699, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:384;s:4:\"file\";s:23:\"2018/02/methodo-12x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"methodo-12x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"methodo-12x-248x300.png\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(700, 110, '_wp_attached_file', '2018/02/methodo-22x.png'),
(701, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:319;s:6:\"height\";i:384;s:4:\"file\";s:23:\"2018/02/methodo-22x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"methodo-22x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"methodo-22x-249x300.png\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 111, '_wp_attached_file', '2018/02/methodo-32x.png'),
(703, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:384;s:4:\"file\";s:23:\"2018/02/methodo-32x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"methodo-32x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"methodo-32x-248x300.png\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 112, '_wp_attached_file', '2018/02/methodo-42x.png'),
(705, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:319;s:6:\"height\";i:384;s:4:\"file\";s:23:\"2018/02/methodo-42x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"methodo-42x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"methodo-42x-249x300.png\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 113, '_wp_attached_file', '2018/02/methodo-52x.png'),
(707, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:384;s:4:\"file\";s:23:\"2018/02/methodo-52x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"methodo-52x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"methodo-52x-248x300.png\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(708, 10, 'methodo_steps_0_step_img', '109'),
(709, 10, '_methodo_steps_0_step_img', 'field_5a96b519b1b71'),
(710, 10, 'methodo_steps_1_step_img', '110'),
(711, 10, '_methodo_steps_1_step_img', 'field_5a96b519b1b71'),
(712, 10, 'methodo_steps_2_step_img', '111'),
(713, 10, '_methodo_steps_2_step_img', 'field_5a96b519b1b71'),
(714, 10, 'methodo_steps_3_step_img', '112'),
(715, 10, '_methodo_steps_3_step_img', 'field_5a96b519b1b71'),
(716, 10, 'methodo_steps_4_step_img', '113'),
(717, 10, '_methodo_steps_4_step_img', 'field_5a96b519b1b71'),
(718, 114, 'title', 'Design-moi un mouton'),
(719, 114, '_title', 'field_5a957d9e4e2cf'),
(720, 114, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(721, 114, '_intro', 'field_5a957dd54e2d0'),
(722, 114, 'expertise_title', 'Notre expertise'),
(723, 114, '_expertise_title', 'field_5a957e4c6080e'),
(724, 114, 'expertise_clouds_0_cloud_title', 'Packaging'),
(725, 114, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(726, 114, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(727, 114, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(728, 114, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(729, 114, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(730, 114, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(731, 114, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(732, 114, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(733, 114, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(734, 114, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(735, 114, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(736, 114, 'expertise_clouds', '3'),
(737, 114, '_expertise_clouds', 'field_5a957e786080f'),
(738, 114, 'methodo_title', 'Notre méthodologie'),
(739, 114, '_methodo_title', 'field_5a957fb260814'),
(740, 114, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(741, 114, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(742, 114, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(743, 114, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(744, 114, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(745, 114, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(746, 114, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(747, 114, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(748, 114, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(749, 114, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(750, 114, 'methodo_steps', '5'),
(751, 114, '_methodo_steps', 'field_5a957f6c60813'),
(752, 114, 'team_title', 'Avec nous'),
(753, 114, '_team_title', 'field_5a9580895adb6'),
(754, 114, 'team_members_0_prenom', 'Bertrand'),
(755, 114, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(756, 114, 'team_members_0_nom', 'Goumand'),
(757, 114, '_team_members_0_nom', 'field_5a9581155adb9'),
(758, 114, 'team_members_0_job', 'Lorem ispum'),
(759, 114, '_team_members_0_job', 'field_5a9581205adba'),
(760, 114, 'team_members_0_img', '102'),
(761, 114, '_team_members_0_img', 'field_5a95813b5adbb');
INSERT INTO `_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(762, 114, 'team_members_1_prenom', 'Bertrand'),
(763, 114, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(764, 114, 'team_members_1_nom', 'Goumand'),
(765, 114, '_team_members_1_nom', 'field_5a9581155adb9'),
(766, 114, 'team_members_1_job', 'Lorem ispum'),
(767, 114, '_team_members_1_job', 'field_5a9581205adba'),
(768, 114, 'team_members_1_img', '102'),
(769, 114, '_team_members_1_img', 'field_5a95813b5adbb'),
(770, 114, 'team_members_2_prenom', 'Bertrand'),
(771, 114, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(772, 114, 'team_members_2_nom', 'Goumand'),
(773, 114, '_team_members_2_nom', 'field_5a9581155adb9'),
(774, 114, 'team_members_2_job', 'Lorem ispum'),
(775, 114, '_team_members_2_job', 'field_5a9581205adba'),
(776, 114, 'team_members_2_img', '102'),
(777, 114, '_team_members_2_img', 'field_5a95813b5adbb'),
(778, 114, 'team_members_3_prenom', 'Bertrand'),
(779, 114, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(780, 114, 'team_members_3_nom', 'Goumand'),
(781, 114, '_team_members_3_nom', 'field_5a9581155adb9'),
(782, 114, 'team_members_3_job', 'Lorem ispum'),
(783, 114, '_team_members_3_job', 'field_5a9581205adba'),
(784, 114, 'team_members_3_img', '102'),
(785, 114, '_team_members_3_img', 'field_5a95813b5adbb'),
(786, 114, 'team_members', '4'),
(787, 114, '_team_members', 'field_5a9580b65adb7'),
(788, 114, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(789, 114, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(790, 114, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(791, 114, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(792, 114, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(793, 114, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(794, 114, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(795, 114, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(796, 114, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(797, 114, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(798, 114, 'methodo_steps_0_step_img', '109'),
(799, 114, '_methodo_steps_0_step_img', 'field_5a96b519b1b71'),
(800, 114, 'methodo_steps_1_step_img', '110'),
(801, 114, '_methodo_steps_1_step_img', 'field_5a96b519b1b71'),
(802, 114, 'methodo_steps_2_step_img', '111'),
(803, 114, '_methodo_steps_2_step_img', 'field_5a96b519b1b71'),
(804, 114, 'methodo_steps_3_step_img', '112'),
(805, 114, '_methodo_steps_3_step_img', 'field_5a96b519b1b71'),
(806, 114, 'methodo_steps_4_step_img', '113'),
(807, 114, '_methodo_steps_4_step_img', 'field_5a96b519b1b71'),
(810, 115, 'subtitle', 'Wolverine'),
(811, 115, '_subtitle', 'field_5a8c2d541333d'),
(812, 115, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(813, 115, '_galerie', 'field_5a8c307449d5c'),
(814, 115, 'grid_size', 'h-rect'),
(815, 115, '_grid_size', 'field_5a8d9003f5d8e'),
(816, 115, 'grid_img_square', '76'),
(817, 115, '_grid_img_square', 'field_5a8fe04329263'),
(818, 115, 'grid_img_v-rect', '77'),
(819, 115, '_grid_img_v-rect', 'field_5a8fe08029264'),
(820, 115, 'grid_img_h-rect', '78'),
(821, 115, '_grid_img_h-rect', 'field_5a8fe09029265'),
(822, 115, 'grid_img', ''),
(823, 115, '_grid_img', 'field_5a8fdfe829262'),
(826, 116, 'subtitle', 'Wolverine'),
(827, 116, '_subtitle', 'field_5a8c2d541333d'),
(828, 116, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(829, 116, '_galerie', 'field_5a8c307449d5c'),
(830, 116, 'grid_size', 'h-rect'),
(831, 116, '_grid_size', 'field_5a8d9003f5d8e'),
(832, 116, 'grid_img_square', '76'),
(833, 116, '_grid_img_square', 'field_5a8fe04329263'),
(834, 116, 'grid_img_v-rect', '77'),
(835, 116, '_grid_img_v-rect', 'field_5a8fe08029264'),
(836, 116, 'grid_img_h-rect', '78'),
(837, 116, '_grid_img_h-rect', 'field_5a8fe09029265'),
(838, 116, 'grid_img', ''),
(839, 116, '_grid_img', 'field_5a8fdfe829262'),
(840, 118, '_edit_last', '1'),
(841, 118, '_edit_lock', '1520006897:1'),
(842, 6, 'news', '2'),
(843, 6, '_news', 'field_5a9910b02418c'),
(844, 6, 'new_agency', '<h3>Notre agence</h3>\r\n<h2>Design-moi un mouton</h2>\r\nest une agence de design graphique spécialisée\r\n\r\nen packaging et identité de marque\r\n\r\n&nbsp;\r\n\r\n&nbsp;'),
(845, 6, '_new_agency', 'field_5a99135a53484'),
(846, 122, 'news', ''),
(847, 122, '_news', 'field_5a9910b02418c'),
(848, 122, 'new_agency', '<h2>Notre agence</h2>\r\n<h3>Design-moi un mouton</h3>\r\nest une agence de design graphique spécialisée en packaging et identité de marque\r\n\r\n&nbsp;\r\n\r\n&nbsp;'),
(849, 122, '_new_agency', 'field_5a99135a53484'),
(850, 123, 'news', ''),
(851, 123, '_news', 'field_5a9910b02418c'),
(852, 123, 'new_agency', '<h3>Notre agence</h3>\r\n<h2>Design-moi un mouton</h2>\r\nest une agence de design graphique spécialisée en packaging et identité de marque\r\n\r\n&nbsp;\r\n\r\n&nbsp;'),
(853, 123, '_new_agency', 'field_5a99135a53484'),
(854, 124, 'news', ''),
(855, 124, '_news', 'field_5a9910b02418c'),
(856, 124, 'new_agency', '<h3>Notre agence</h3>\r\n<h2>Design-moi un mouton</h2>\r\nest une agence de design graphique spécialisée\r\n\r\nen packaging et identité de marque\r\n\r\n&nbsp;\r\n\r\n&nbsp;'),
(857, 124, '_new_agency', 'field_5a99135a53484'),
(858, 6, 'news_0_new', '33'),
(859, 6, '_news_0_new', 'field_5a9911a22418d'),
(860, 6, 'news_1_new', '22'),
(861, 6, '_news_1_new', 'field_5a9911a22418d'),
(862, 125, 'news', '2'),
(863, 125, '_news', 'field_5a9910b02418c'),
(864, 125, 'new_agency', '<h3>Notre agence</h3>\r\n<h2>Design-moi un mouton</h2>\r\nest une agence de design graphique spécialisée\r\n\r\nen packaging et identité de marque\r\n\r\n&nbsp;\r\n\r\n&nbsp;'),
(865, 125, '_new_agency', 'field_5a99135a53484'),
(866, 125, 'news_0_new', '33'),
(867, 125, '_news_0_new', 'field_5a9911a22418d'),
(868, 125, 'news_1_new', '22'),
(869, 125, '_news_1_new', 'field_5a9911a22418d'),
(870, 128, '_edit_last', '1'),
(871, 128, '_edit_lock', '1520613559:1'),
(876, 134, '_wp_attached_file', '2018/03/logo-horizontal.png'),
(877, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:152;s:4:\"file\";s:27:\"2018/03/logo-horizontal.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-horizontal-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(878, 135, '_edit_last', '1'),
(879, 135, '_edit_lock', '1521043061:1'),
(882, 139, 'subtitle', 'uploads'),
(883, 139, '_subtitle', 'field_5a8c2d541333d'),
(884, 139, 'galerie', ''),
(885, 139, '_galerie', 'field_5a8c307449d5c'),
(886, 139, 'grid_size', 'big-square'),
(887, 139, '_grid_size', 'field_5a8d9003f5d8e'),
(888, 139, 'grid_img_square', '71'),
(889, 139, '_grid_img_square', 'field_5a8fe04329263'),
(890, 139, 'grid_img_v-rect', '72'),
(891, 139, '_grid_img_v-rect', 'field_5a8fe08029264'),
(892, 139, 'grid_img_h-rect', '73'),
(893, 139, '_grid_img_h-rect', 'field_5a8fe09029265'),
(894, 139, 'grid_img', ''),
(895, 139, '_grid_img', 'field_5a8fdfe829262'),
(896, 10, 'expertise_clouds_0_big', '1'),
(897, 10, '_expertise_clouds_0_big', 'field_5a997aed4df0e'),
(898, 10, 'expertise_clouds_1_big', '1'),
(899, 10, '_expertise_clouds_1_big', 'field_5a997aed4df0e'),
(900, 10, 'expertise_clouds_2_big', '1'),
(901, 10, '_expertise_clouds_2_big', 'field_5a997aed4df0e'),
(902, 140, 'title', 'Design-moi un mouton'),
(903, 140, '_title', 'field_5a957d9e4e2cf'),
(904, 140, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(905, 140, '_intro', 'field_5a957dd54e2d0'),
(906, 140, 'expertise_title', 'Notre expertise'),
(907, 140, '_expertise_title', 'field_5a957e4c6080e'),
(908, 140, 'expertise_clouds_0_cloud_title', 'Packaging'),
(909, 140, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(910, 140, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(911, 140, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(912, 140, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(913, 140, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(914, 140, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(915, 140, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(916, 140, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(917, 140, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(918, 140, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(919, 140, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(920, 140, 'expertise_clouds', '3'),
(921, 140, '_expertise_clouds', 'field_5a957e786080f'),
(922, 140, 'methodo_title', 'Notre méthodologie'),
(923, 140, '_methodo_title', 'field_5a957fb260814'),
(924, 140, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(925, 140, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(926, 140, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(927, 140, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(928, 140, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(929, 140, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(930, 140, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(931, 140, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(932, 140, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(933, 140, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(934, 140, 'methodo_steps', '5'),
(935, 140, '_methodo_steps', 'field_5a957f6c60813'),
(936, 140, 'team_title', 'Avec nous'),
(937, 140, '_team_title', 'field_5a9580895adb6'),
(938, 140, 'team_members_0_prenom', 'Bertrand'),
(939, 140, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(940, 140, 'team_members_0_nom', 'Goumand'),
(941, 140, '_team_members_0_nom', 'field_5a9581155adb9'),
(942, 140, 'team_members_0_job', 'Lorem ispum'),
(943, 140, '_team_members_0_job', 'field_5a9581205adba'),
(944, 140, 'team_members_0_img', '102'),
(945, 140, '_team_members_0_img', 'field_5a95813b5adbb'),
(946, 140, 'team_members_1_prenom', 'Bertrand'),
(947, 140, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(948, 140, 'team_members_1_nom', 'Goumand'),
(949, 140, '_team_members_1_nom', 'field_5a9581155adb9'),
(950, 140, 'team_members_1_job', 'Lorem ispum'),
(951, 140, '_team_members_1_job', 'field_5a9581205adba'),
(952, 140, 'team_members_1_img', '102'),
(953, 140, '_team_members_1_img', 'field_5a95813b5adbb'),
(954, 140, 'team_members_2_prenom', 'Bertrand'),
(955, 140, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(956, 140, 'team_members_2_nom', 'Goumand'),
(957, 140, '_team_members_2_nom', 'field_5a9581155adb9'),
(958, 140, 'team_members_2_job', 'Lorem ispum'),
(959, 140, '_team_members_2_job', 'field_5a9581205adba'),
(960, 140, 'team_members_2_img', '102'),
(961, 140, '_team_members_2_img', 'field_5a95813b5adbb'),
(962, 140, 'team_members_3_prenom', 'Bertrand'),
(963, 140, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(964, 140, 'team_members_3_nom', 'Goumand'),
(965, 140, '_team_members_3_nom', 'field_5a9581155adb9'),
(966, 140, 'team_members_3_job', 'Lorem ispum'),
(967, 140, '_team_members_3_job', 'field_5a9581205adba'),
(968, 140, 'team_members_3_img', '102'),
(969, 140, '_team_members_3_img', 'field_5a95813b5adbb'),
(970, 140, 'team_members', '4'),
(971, 140, '_team_members', 'field_5a9580b65adb7'),
(972, 140, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(973, 140, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(974, 140, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(975, 140, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(976, 140, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(977, 140, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(978, 140, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(979, 140, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(980, 140, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(981, 140, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(982, 140, 'methodo_steps_0_step_img', '109'),
(983, 140, '_methodo_steps_0_step_img', 'field_5a96b519b1b71'),
(984, 140, 'methodo_steps_1_step_img', '110'),
(985, 140, '_methodo_steps_1_step_img', 'field_5a96b519b1b71'),
(986, 140, 'methodo_steps_2_step_img', '111'),
(987, 140, '_methodo_steps_2_step_img', 'field_5a96b519b1b71'),
(988, 140, 'methodo_steps_3_step_img', '112'),
(989, 140, '_methodo_steps_3_step_img', 'field_5a96b519b1b71'),
(990, 140, 'methodo_steps_4_step_img', '113'),
(991, 140, '_methodo_steps_4_step_img', 'field_5a96b519b1b71'),
(992, 140, 'expertise_clouds_0_big', '1'),
(993, 140, '_expertise_clouds_0_big', 'field_5a997aed4df0e'),
(994, 140, 'expertise_clouds_1_big', '1'),
(995, 140, '_expertise_clouds_1_big', 'field_5a997aed4df0e'),
(996, 140, 'expertise_clouds_2_big', '1'),
(997, 140, '_expertise_clouds_2_big', 'field_5a997aed4df0e'),
(998, 141, 'title', 'Design-moi un mouton'),
(999, 141, '_title', 'field_5a957d9e4e2cf'),
(1000, 141, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(1001, 141, '_intro', 'field_5a957dd54e2d0'),
(1002, 141, 'expertise_title', 'Notre expertise'),
(1003, 141, '_expertise_title', 'field_5a957e4c6080e'),
(1004, 141, 'expertise_clouds_0_cloud_title', 'Packaging'),
(1005, 141, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(1006, 141, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1007, 141, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(1008, 141, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(1009, 141, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(1010, 141, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1011, 141, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(1012, 141, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(1013, 141, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(1014, 141, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1015, 141, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(1016, 141, 'expertise_clouds', '3'),
(1017, 141, '_expertise_clouds', 'field_5a957e786080f'),
(1018, 141, 'methodo_title', 'Notre méthodologie'),
(1019, 141, '_methodo_title', 'field_5a957fb260814'),
(1020, 141, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(1021, 141, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(1022, 141, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(1023, 141, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(1024, 141, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(1025, 141, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(1026, 141, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(1027, 141, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(1028, 141, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(1029, 141, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(1030, 141, 'methodo_steps', '5'),
(1031, 141, '_methodo_steps', 'field_5a957f6c60813'),
(1032, 141, 'team_title', 'Avec nous'),
(1033, 141, '_team_title', 'field_5a9580895adb6'),
(1034, 141, 'team_members_0_prenom', 'Bertrand'),
(1035, 141, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(1036, 141, 'team_members_0_nom', 'Goumand'),
(1037, 141, '_team_members_0_nom', 'field_5a9581155adb9'),
(1038, 141, 'team_members_0_job', 'Lorem ispum'),
(1039, 141, '_team_members_0_job', 'field_5a9581205adba'),
(1040, 141, 'team_members_0_img', '102'),
(1041, 141, '_team_members_0_img', 'field_5a95813b5adbb'),
(1042, 141, 'team_members_1_prenom', 'Bertrand'),
(1043, 141, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(1044, 141, 'team_members_1_nom', 'Goumand'),
(1045, 141, '_team_members_1_nom', 'field_5a9581155adb9'),
(1046, 141, 'team_members_1_job', 'Lorem ispum'),
(1047, 141, '_team_members_1_job', 'field_5a9581205adba'),
(1048, 141, 'team_members_1_img', '102'),
(1049, 141, '_team_members_1_img', 'field_5a95813b5adbb'),
(1050, 141, 'team_members_2_prenom', 'Bertrand'),
(1051, 141, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(1052, 141, 'team_members_2_nom', 'Goumand'),
(1053, 141, '_team_members_2_nom', 'field_5a9581155adb9'),
(1054, 141, 'team_members_2_job', 'Lorem ispum'),
(1055, 141, '_team_members_2_job', 'field_5a9581205adba'),
(1056, 141, 'team_members_2_img', '102'),
(1057, 141, '_team_members_2_img', 'field_5a95813b5adbb'),
(1058, 141, 'team_members_3_prenom', 'Bertrand'),
(1059, 141, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(1060, 141, 'team_members_3_nom', 'Goumand'),
(1061, 141, '_team_members_3_nom', 'field_5a9581155adb9'),
(1062, 141, 'team_members_3_job', 'Lorem ispum'),
(1063, 141, '_team_members_3_job', 'field_5a9581205adba'),
(1064, 141, 'team_members_3_img', '102'),
(1065, 141, '_team_members_3_img', 'field_5a95813b5adbb'),
(1066, 141, 'team_members', '4'),
(1067, 141, '_team_members', 'field_5a9580b65adb7'),
(1068, 141, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(1069, 141, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(1070, 141, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(1071, 141, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(1072, 141, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(1073, 141, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(1074, 141, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(1075, 141, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(1076, 141, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(1077, 141, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(1078, 141, 'methodo_steps_0_step_img', '109'),
(1079, 141, '_methodo_steps_0_step_img', 'field_5a96b519b1b71'),
(1080, 141, 'methodo_steps_1_step_img', '110'),
(1081, 141, '_methodo_steps_1_step_img', 'field_5a96b519b1b71'),
(1082, 141, 'methodo_steps_2_step_img', '111'),
(1083, 141, '_methodo_steps_2_step_img', 'field_5a96b519b1b71'),
(1084, 141, 'methodo_steps_3_step_img', '112'),
(1085, 141, '_methodo_steps_3_step_img', 'field_5a96b519b1b71'),
(1086, 141, 'methodo_steps_4_step_img', '113'),
(1087, 141, '_methodo_steps_4_step_img', 'field_5a96b519b1b71'),
(1088, 141, 'expertise_clouds_0_big', '1'),
(1089, 141, '_expertise_clouds_0_big', 'field_5a997aed4df0e'),
(1090, 141, 'expertise_clouds_1_big', '1'),
(1091, 141, '_expertise_clouds_1_big', 'field_5a997aed4df0e'),
(1092, 141, 'expertise_clouds_2_big', '1'),
(1093, 141, '_expertise_clouds_2_big', 'field_5a997aed4df0e'),
(1094, 142, 'title', 'Design-moi un mouton'),
(1095, 142, '_title', 'field_5a957d9e4e2cf'),
(1096, 142, 'intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\ndolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'),
(1097, 142, '_intro', 'field_5a957dd54e2d0'),
(1098, 142, 'expertise_title', 'Notre expertise'),
(1099, 142, '_expertise_title', 'field_5a957e4c6080e'),
(1100, 142, 'expertise_clouds_0_cloud_title', 'Packaging'),
(1101, 142, '_expertise_clouds_0_cloud_title', 'field_5a957e9e60810'),
(1102, 142, 'expertise_clouds_0_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1103, 142, '_expertise_clouds_0_cloud_txt', 'field_5a957ec760811'),
(1104, 142, 'expertise_clouds_1_cloud_title', 'Identité de marque'),
(1105, 142, '_expertise_clouds_1_cloud_title', 'field_5a957e9e60810'),
(1106, 142, 'expertise_clouds_1_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1107, 142, '_expertise_clouds_1_cloud_txt', 'field_5a957ec760811'),
(1108, 142, 'expertise_clouds_2_cloud_title', 'Édition publicité'),
(1109, 142, '_expertise_clouds_2_cloud_title', 'field_5a957e9e60810'),
(1110, 142, 'expertise_clouds_2_cloud_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1111, 142, '_expertise_clouds_2_cloud_txt', 'field_5a957ec760811'),
(1112, 142, 'expertise_clouds', '3'),
(1113, 142, '_expertise_clouds', 'field_5a957e786080f'),
(1114, 142, 'methodo_title', 'Notre méthodologie'),
(1115, 142, '_methodo_title', 'field_5a957fb260814'),
(1116, 142, 'methodo_steps_0_step_title', 'Écoute de votre projet'),
(1117, 142, '_methodo_steps_0_step_title', 'field_5a957fec60815'),
(1118, 142, 'methodo_steps_1_step_title', 'Écoute de votre projet'),
(1119, 142, '_methodo_steps_1_step_title', 'field_5a957fec60815'),
(1120, 142, 'methodo_steps_2_step_title', 'Écoute de votre projet'),
(1121, 142, '_methodo_steps_2_step_title', 'field_5a957fec60815'),
(1122, 142, 'methodo_steps_3_step_title', 'Écoute de votre projet'),
(1123, 142, '_methodo_steps_3_step_title', 'field_5a957fec60815'),
(1124, 142, 'methodo_steps_4_step_title', 'Écoute de votre projet'),
(1125, 142, '_methodo_steps_4_step_title', 'field_5a957fec60815'),
(1126, 142, 'methodo_steps', '5'),
(1127, 142, '_methodo_steps', 'field_5a957f6c60813'),
(1128, 142, 'team_title', 'Avec nous'),
(1129, 142, '_team_title', 'field_5a9580895adb6'),
(1130, 142, 'team_members_0_prenom', 'Bertrand'),
(1131, 142, '_team_members_0_prenom', 'field_5a9580ce5adb8'),
(1132, 142, 'team_members_0_nom', 'Goumand'),
(1133, 142, '_team_members_0_nom', 'field_5a9581155adb9'),
(1134, 142, 'team_members_0_job', 'Lorem ispum'),
(1135, 142, '_team_members_0_job', 'field_5a9581205adba'),
(1136, 142, 'team_members_0_img', '102'),
(1137, 142, '_team_members_0_img', 'field_5a95813b5adbb'),
(1138, 142, 'team_members_1_prenom', 'Bertrand'),
(1139, 142, '_team_members_1_prenom', 'field_5a9580ce5adb8'),
(1140, 142, 'team_members_1_nom', 'Goumand'),
(1141, 142, '_team_members_1_nom', 'field_5a9581155adb9'),
(1142, 142, 'team_members_1_job', 'Lorem ispum'),
(1143, 142, '_team_members_1_job', 'field_5a9581205adba'),
(1144, 142, 'team_members_1_img', '102'),
(1145, 142, '_team_members_1_img', 'field_5a95813b5adbb'),
(1146, 142, 'team_members_2_prenom', 'Bertrand'),
(1147, 142, '_team_members_2_prenom', 'field_5a9580ce5adb8'),
(1148, 142, 'team_members_2_nom', 'Goumand'),
(1149, 142, '_team_members_2_nom', 'field_5a9581155adb9'),
(1150, 142, 'team_members_2_job', 'Lorem ispum'),
(1151, 142, '_team_members_2_job', 'field_5a9581205adba'),
(1152, 142, 'team_members_2_img', '102'),
(1153, 142, '_team_members_2_img', 'field_5a95813b5adbb'),
(1154, 142, 'team_members_3_prenom', 'Bertrand'),
(1155, 142, '_team_members_3_prenom', 'field_5a9580ce5adb8'),
(1156, 142, 'team_members_3_nom', 'Goumand'),
(1157, 142, '_team_members_3_nom', 'field_5a9581155adb9'),
(1158, 142, 'team_members_3_job', 'Lorem ispum'),
(1159, 142, '_team_members_3_job', 'field_5a9581205adba'),
(1160, 142, 'team_members_3_img', '102'),
(1161, 142, '_team_members_3_img', 'field_5a95813b5adbb'),
(1162, 142, 'team_members', '4'),
(1163, 142, '_team_members', 'field_5a9580b65adb7'),
(1164, 142, 'methodo_steps_0_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1165, 142, '_methodo_steps_0_step_txt', 'field_5a95801660816'),
(1166, 142, 'methodo_steps_1_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1167, 142, '_methodo_steps_1_step_txt', 'field_5a95801660816'),
(1168, 142, 'methodo_steps_2_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1169, 142, '_methodo_steps_2_step_txt', 'field_5a95801660816'),
(1170, 142, 'methodo_steps_3_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1171, 142, '_methodo_steps_3_step_txt', 'field_5a95801660816'),
(1172, 142, 'methodo_steps_4_step_txt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(1173, 142, '_methodo_steps_4_step_txt', 'field_5a95801660816'),
(1174, 142, 'methodo_steps_0_step_img', '109'),
(1175, 142, '_methodo_steps_0_step_img', 'field_5a96b519b1b71'),
(1176, 142, 'methodo_steps_1_step_img', '110'),
(1177, 142, '_methodo_steps_1_step_img', 'field_5a96b519b1b71'),
(1178, 142, 'methodo_steps_2_step_img', '111'),
(1179, 142, '_methodo_steps_2_step_img', 'field_5a96b519b1b71'),
(1180, 142, 'methodo_steps_3_step_img', '112'),
(1181, 142, '_methodo_steps_3_step_img', 'field_5a96b519b1b71'),
(1182, 142, 'methodo_steps_4_step_img', '113'),
(1183, 142, '_methodo_steps_4_step_img', 'field_5a96b519b1b71'),
(1184, 142, 'expertise_clouds_0_big', '1'),
(1185, 142, '_expertise_clouds_0_big', 'field_5a997aed4df0e'),
(1186, 142, 'expertise_clouds_1_big', '1'),
(1187, 142, '_expertise_clouds_1_big', 'field_5a997aed4df0e'),
(1188, 142, 'expertise_clouds_2_big', '1'),
(1189, 142, '_expertise_clouds_2_big', 'field_5a997aed4df0e');

-- --------------------------------------------------------

--
-- Table structure for table `_posts`
--

CREATE TABLE `_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_posts`
--

INSERT INTO `_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-02-20 13:25:17', '2018-02-20 13:25:17', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-20 13:25:17', '2018-02-20 13:25:17', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2018-02-20 14:47:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-02-20 14:48:14', '2018-02-20 13:48:14', '', 'Nouveau !', '', 'publish', 'closed', 'closed', '', 'nouveau', '', '', '2018-03-02 10:23:28', '2018-03-02 09:23:28', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(8, 1, '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 'Nos projets', '', 'publish', 'closed', 'closed', '', 'nos-projets', '', '', '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 0, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-02-20 14:51:22', '2018-02-20 13:51:22', '<img class=\"alignleft size-large wp-image-103\" src=\"3000/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'publish', 'closed', 'closed', '', 'notre-agence', '', '', '2018-03-19 15:21:54', '2018-03-19 14:21:54', '', 0, 'http://localhost/?page_id=10', 0, 'page', '', 0),
(12, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-02-23 10:25:56', '2018-02-23 09:25:56', '', 0, 'http://localhost/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-02-23 10:25:56', '2018-02-23 09:25:56', '', 0, 'http://localhost/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-02-23 10:25:56', '2018-02-23 09:25:56', '', 0, 'http://localhost/?p=19', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-02-20 15:07:47', '2018-02-20 14:07:47', '<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\r\n<h2 style=\"text-align: center\">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\r\n<h3 style=\"text-align: center\">Tempor incididunt ut labore et dolore magna aliqua.</h3>\r\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<ul>\r\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\r\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'publish', 'open', 'open', '', 'super-projet', '', '', '2018-02-28 15:23:22', '2018-02-28 14:23:22', '', 0, 'http://localhost/?p=22', 0, 'post', '', 0),
(24, 1, '2018-02-20 15:18:35', '2018-02-20 14:18:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Projet', 'projet', 'publish', 'closed', 'closed', '', 'group_5a8c2d46e7871', '', '', '2018-02-23 15:33:44', '2018-02-23 14:33:44', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2018-02-20 15:18:35', '2018-02-20 14:18:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Le titre secondaire du projet (par exemple: \"Le grand Classic\")\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sous-Titre', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5a8c2d541333d', '', '', '2018-02-20 15:18:35', '2018-02-20 14:18:35', '', 24, 'http://localhost/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(29, 1, '2018-02-20 15:41:34', '2018-02-20 14:41:34', '', 'image1', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2018-02-20 15:41:42', '2018-02-20 14:41:42', '', 22, 'http://localhost/wp-content/uploads/2018/02/image1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-02-20 15:42:11', '2018-02-20 14:42:11', '', 'image2', '', 'inherit', 'open', 'closed', '', 'image2', '', '', '2018-02-20 15:42:19', '2018-02-20 14:42:19', '', 22, 'http://localhost/wp-content/uploads/2018/02/image2.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-02-20 16:59:15', '2018-02-20 15:59:15', '<h2 style=\"text-align: center\">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\r\n<h3 style=\"text-align: center\">Tempor incididunt ut labore et dolore magna aliqua.</h3>\r\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<ul>\r\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\r\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\r\n</ul>', 'Encore un article cool', '', 'publish', 'open', 'open', '', 'encore-un-article-cool', '', '', '2018-03-19 15:19:41', '2018-03-19 14:19:41', '', 0, 'http://localhost/?p=33', 0, 'post', '', 0),
(34, 1, '2018-02-20 16:59:15', '2018-02-20 15:59:15', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-20 16:59:15', '2018-02-20 15:59:15', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-02-20 17:06:14', '2018-02-20 16:06:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Liens', 'liens', 'publish', 'closed', 'closed', '', 'group_5a8c474951620', '', '', '2018-02-21 15:38:45', '2018-02-21 14:38:45', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2018-02-20 17:06:14', '2018-02-20 16:06:14', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Page nos projets', 'projects_link', 'publish', 'closed', 'closed', '', 'field_5a8c47599ab06', '', '', '2018-02-20 17:06:14', '2018-02-20 16:06:14', '', 36, 'http://localhost/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2018-02-21 11:25:17', '2018-02-21 10:25:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"posts_page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Projets', 'projets', 'publish', 'closed', 'closed', '', 'group_5a8d48dc9a751', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2018-02-21 11:25:17', '2018-02-21 10:25:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Texte de la page', 'projects_text', 'publish', 'closed', 'closed', '', 'field_5a8d48ed968f5', '', '', '2018-02-21 11:26:34', '2018-02-21 10:26:34', '', 38, 'http://localhost/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2018-02-21 11:25:29', '2018-02-21 10:25:29', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:25:29', '2018-02-21 10:25:29', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-02-21 11:34:00', '2018-02-21 10:34:00', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:34:00', '2018-02-21 10:34:00', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-02-21 11:35:58', '2018-02-21 10:35:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:55:\"Ajouter ici les services (Packaging, indentité etc...)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5a8d4b40bc91a', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 38, 'http://localhost/?post_type=acf-field&p=42', 1, 'acf-field', '', 0),
(43, 1, '2018-02-21 11:35:58', '2018-02-21 10:35:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nom du service', 'service', 'publish', 'closed', 'closed', '', 'field_5a8d4b7cbc91b', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 42, 'http://localhost/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Informations de footer', 'informations-de-footer', 'publish', 'closed', 'closed', '', 'group_5a8d7ca37f8a1', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Le titre du site dans le footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:20:\"Design moi un mouton\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre footer', 'footer_title', 'publish', 'closed', 'closed', '', 'field_5a8d7dc688d1a', '', '', '2018-02-21 15:24:26', '2018-02-21 14:24:26', '', 49, 'http://localhost/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Adresse', 'footer_address', 'publish', 'closed', 'closed', '', 'field_5a8d7f4288d1b', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 49, 'http://localhost/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:56:\"L\'adresse mail présente en dessous de l\'adresse postale\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email footer', 'footer_mail', 'publish', 'closed', 'closed', '', 'field_5a8d7f5c88d1c', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 49, 'http://localhost/?post_type=acf-field&#038;p=52', 3, 'acf-field', '', 0),
(53, 1, '2018-02-21 15:24:26', '2018-02-21 14:24:26', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:41:\"Le lien pour le bouton \"Contactez nous !\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien du bouton de contact', 'footer_contact', 'publish', 'closed', 'closed', '', 'field_5a8d80e146660', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 49, 'http://localhost/?post_type=acf-field&#038;p=53', 4, 'acf-field', '', 0),
(55, 1, '2018-02-21 15:38:45', '2018-02-21 14:38:45', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien page Facebook', 'fb_link', 'publish', 'closed', 'closed', '', 'field_5a8d8462bff4b', '', '', '2018-02-21 15:38:45', '2018-02-21 14:38:45', '', 36, 'http://localhost/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(57, 1, '2018-02-21 16:35:04', '2018-02-21 15:35:04', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-21 16:35:04', '2018-02-21 15:35:04', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-02-21 17:18:36', '2018-02-21 16:18:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Rue', 'footer_street', 'publish', 'closed', 'closed', '', 'field_5a8d9b5c5d638', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 51, 'http://localhost/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2018-02-21 17:18:36', '2018-02-21 16:18:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Code Postal', 'footer_cp', 'publish', 'closed', 'closed', '', 'field_5a8d9b7b5d639', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 51, 'http://localhost/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2018-02-21 17:18:36', '2018-02-21 16:18:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ville', 'footer_city', 'publish', 'closed', 'closed', '', 'field_5a8d9b8c5d63a', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 51, 'http://localhost/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2018-02-21 17:18:36', '2018-02-21 16:18:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Numéro de téléphone', 'footer_phone', 'publish', 'closed', 'closed', '', 'field_5a8d9bc85d63b', '', '', '2018-02-21 17:18:36', '2018-02-21 16:18:36', '', 49, 'http://localhost/?post_type=acf-field&p=62', 2, 'acf-field', '', 0),
(63, 1, '2018-02-28 15:09:49', '2018-02-28 14:09:49', '<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\n<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\n<h3>Tempor incididunt ut labore et dolore magna aliqua.</h3>\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n<ul>\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\n</ul>\n&nbsp;\n\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2018-02-28 15:09:49', '2018-02-28 14:09:49', '', 22, 'http://localhost/22-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2018-02-23 10:20:47', '2018-02-23 09:20:47', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-02-23 10:21:40', '2018-02-23 09:21:40', '', 0, 'http://localhost/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-02-23 10:36:46', '2018-02-23 09:36:46', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:69:\"Insérez ici les miniatures du projets présentes sur la page grille.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Images de grille', 'grid_img', 'publish', 'closed', 'closed', '', 'field_5a8fdfe829262', '', '', '2018-02-23 10:36:46', '2018-02-23 09:36:46', '', 24, 'http://localhost/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(68, 1, '2018-02-23 10:36:46', '2018-02-23 09:36:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Miniature carré', 'square', 'publish', 'closed', 'closed', '', 'field_5a8fe04329263', '', '', '2018-02-23 15:33:44', '2018-02-23 14:33:44', '', 67, 'http://localhost/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2018-02-23 10:36:46', '2018-02-23 09:36:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Miniature rectangle vertical', 'v-rect', 'publish', 'closed', 'closed', '', 'field_5a8fe08029264', '', '', '2018-02-23 15:33:44', '2018-02-23 14:33:44', '', 67, 'http://localhost/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2018-02-23 10:36:46', '2018-02-23 09:36:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Miniature rectangle horizontal', 'h-rect', 'publish', 'closed', 'closed', '', 'field_5a8fe09029265', '', '', '2018-02-23 15:33:44', '2018-02-23 14:33:44', '', 67, 'http://localhost/?post_type=acf-field&#038;p=70', 2, 'acf-field', '', 0),
(71, 1, '2018-02-23 15:29:34', '2018-02-23 14:29:34', '', '1_carre', '', 'inherit', 'open', 'closed', '', '1_carre', '', '', '2018-02-23 15:29:39', '2018-02-23 14:29:39', '', 33, 'http://localhost/wp-content/uploads/2018/02/1_carre.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-02-23 15:29:53', '2018-02-23 14:29:53', '', '1_rect_vert', '', 'inherit', 'open', 'closed', '', '1_rect_vert', '', '', '2018-02-23 15:29:56', '2018-02-23 14:29:56', '', 33, 'http://localhost/wp-content/uploads/2018/02/1_rect_vert.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2018-02-23 15:30:03', '2018-02-23 14:30:03', '', '1_rect_hor', '', 'inherit', 'open', 'closed', '', '1_rect_hor', '', '', '2018-02-23 15:30:06', '2018-02-23 14:30:06', '', 33, 'http://localhost/wp-content/uploads/2018/02/1_rect_hor.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2018-02-23 15:30:09', '2018-02-23 14:30:09', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-23 15:30:09', '2018-02-23 14:30:09', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-02-23 15:31:53', '2018-02-23 14:31:53', '', '2_carre', '', 'inherit', 'open', 'closed', '', '2_carre', '', '', '2018-02-23 15:31:58', '2018-02-23 14:31:58', '', 22, 'http://localhost/wp-content/uploads/2018/02/2_carre.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2018-02-23 15:32:11', '2018-02-23 14:32:11', '', '2_rect_vert', '', 'inherit', 'open', 'closed', '', '2_rect_vert', '', '', '2018-02-23 15:32:13', '2018-02-23 14:32:13', '', 22, 'http://localhost/wp-content/uploads/2018/02/2_rect_vert.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-02-23 15:32:26', '2018-02-23 14:32:26', '', '2_rect_hor', '', 'inherit', 'open', 'closed', '', '2_rect_hor', '', '', '2018-02-23 15:32:30', '2018-02-23 14:32:30', '', 22, 'http://localhost/wp-content/uploads/2018/02/2_rect_hor.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2018-02-23 15:32:32', '2018-02-23 14:32:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-23 15:32:32', '2018-02-23 14:32:32', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-02-27 16:49:37', '2018-02-27 15:49:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"about.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Notre Agence', 'notre-agence', 'publish', 'closed', 'closed', '', 'group_5a957d976861a', '', '', '2018-03-02 17:27:41', '2018-03-02 16:27:41', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2018-02-27 16:49:37', '2018-02-27 15:49:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Design-moi un mouton\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre de la page', 'title', 'publish', 'closed', 'closed', '', 'field_5a957d9e4e2cf', '', '', '2018-02-27 16:49:37', '2018-02-27 15:49:37', '', 82, 'http://localhost/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2018-02-27 16:49:37', '2018-02-27 15:49:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:48:\"Le texte d\'introduction présent sous les titres\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Texte d\'introduction', 'intro', 'publish', 'closed', 'closed', '', 'field_5a957dd54e2d0', '', '', '2018-02-27 16:49:37', '2018-02-27 15:49:37', '', 82, 'http://localhost/?post_type=acf-field&p=84', 1, 'acf-field', '', 0),
(85, 1, '2018-02-27 16:49:37', '2018-02-27 15:49:37', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Expertise', 'expertise', 'publish', 'closed', 'closed', '', 'field_5a957e044e2d1', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 82, 'http://localhost/?post_type=acf-field&#038;p=85', 2, 'acf-field', '', 0),
(86, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Le titre de la partie expertise\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre expertise', 'expertise_title', 'publish', 'closed', 'closed', '', 'field_5a957e4c6080e', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 82, 'http://localhost/?post_type=acf-field&p=86', 3, 'acf-field', '', 0),
(87, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:16:\"Ajouter un nuage\";}', 'Nuages expertise', 'expertise_clouds', 'publish', 'closed', 'closed', '', 'field_5a957e786080f', '', '', '2018-03-02 17:26:15', '2018-03-02 16:26:15', '', 82, 'http://localhost/?post_type=acf-field&#038;p=87', 4, 'acf-field', '', 0),
(88, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Le titre de l\'expertise en question\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre nuage', 'cloud_title', 'publish', 'closed', 'closed', '', 'field_5a957e9e60810', '', '', '2018-03-02 17:26:15', '2018-03-02 16:26:15', '', 87, 'http://localhost/?post_type=acf-field&#038;p=88', 0, 'acf-field', '', 0),
(89, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:35:\"Le texte de l\'expertise en question\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texte nuage', 'cloud_txt', 'publish', 'closed', 'closed', '', 'field_5a957ec760811', '', '', '2018-03-02 17:26:15', '2018-03-02 16:26:15', '', 87, 'http://localhost/?post_type=acf-field&#038;p=89', 2, 'acf-field', '', 0),
(90, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Méthodologie', 'methodologie', 'publish', 'closed', 'closed', '', 'field_5a957f0360812', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 82, 'http://localhost/?post_type=acf-field&p=90', 5, 'acf-field', '', 0),
(91, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Le titre de la partie méthodologie\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre méthodologie', 'methodo_title', 'publish', 'closed', 'closed', '', 'field_5a957fb260814', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 82, 'http://localhost/?post_type=acf-field&p=91', 6, 'acf-field', '', 0),
(92, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:31:\"Les étapes de la méthodologie\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Étapes', 'methodo_steps', 'publish', 'closed', 'closed', '', 'field_5a957f6c60813', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 82, 'http://localhost/?post_type=acf-field&p=92', 7, 'acf-field', '', 0),
(93, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Le titre de l\'étape\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre étape', 'step_title', 'publish', 'closed', 'closed', '', 'field_5a957fec60815', '', '', '2018-02-27 16:58:45', '2018-02-27 15:58:45', '', 92, 'http://localhost/?post_type=acf-field&p=93', 0, 'acf-field', '', 0),
(94, 1, '2018-02-27 16:58:45', '2018-02-27 15:58:45', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:20:\"Le texte de l\'étape\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texte étape', 'step_txt', 'publish', 'closed', 'closed', '', 'field_5a95801660816', '', '', '2018-02-27 17:37:09', '2018-02-27 16:37:09', '', 92, 'http://localhost/?post_type=acf-field&#038;p=94', 1, 'acf-field', '', 0),
(95, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'L\'équipe', 'lequipe', 'publish', 'closed', 'closed', '', 'field_5a95807d5adb5', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 82, 'http://localhost/?post_type=acf-field&p=95', 8, 'acf-field', '', 0),
(96, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Le titre de la partie équipe\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre équipe', 'team_title', 'publish', 'closed', 'closed', '', 'field_5a9580895adb6', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 82, 'http://localhost/?post_type=acf-field&p=96', 9, 'acf-field', '', 0),
(97, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Les membres', 'team_members', 'publish', 'closed', 'closed', '', 'field_5a9580b65adb7', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 82, 'http://localhost/?post_type=acf-field&p=97', 10, 'acf-field', '', 0),
(98, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Le prénom du membre\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Prénom', 'prenom', 'publish', 'closed', 'closed', '', 'field_5a9580ce5adb8', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 97, 'http://localhost/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"Le nom du membre\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nom', 'nom', 'publish', 'closed', 'closed', '', 'field_5a9581155adb9', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 97, 'http://localhost/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(100, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:18:\"Le poste du membre\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Poste', 'job', 'publish', 'closed', 'closed', '', 'field_5a9581205adba', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 97, 'http://localhost/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2018-02-27 17:03:47', '2018-02-27 16:03:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:18:\"La photo du membre\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'img', 'publish', 'closed', 'closed', '', 'field_5a95813b5adbb', '', '', '2018-02-27 17:03:47', '2018-02-27 16:03:47', '', 97, 'http://localhost/?post_type=acf-field&p=101', 3, 'acf-field', '', 0),
(102, 1, '2018-02-27 17:09:35', '2018-02-27 16:09:35', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2018-02-27 17:10:03', '2018-02-27 16:10:03', '', 10, 'http://localhost/wp-content/uploads/2018/02/img.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-02-27 17:10:43', '2018-02-27 16:10:43', '', 'cover', '', 'inherit', 'open', 'closed', '', 'cover', '', '', '2018-02-27 17:10:43', '2018-02-27 16:10:43', '', 10, 'http://localhost/wp-content/uploads/2018/02/cover.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2018-02-27 17:40:08', '2018-02-27 16:40:08', '<img class=\"alignleft size-large wp-image-103\" src=\"http://localhost/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-27 17:40:08', '2018-02-27 16:40:08', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-02-28 14:55:13', '2018-02-28 13:55:13', '<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-28 14:55:13', '2018-02-28 13:55:13', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2018-02-28 14:57:14', '2018-02-28 13:57:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image étape', 'step_img', 'publish', 'closed', 'closed', '', 'field_5a96b519b1b71', '', '', '2018-02-28 14:57:14', '2018-02-28 13:57:14', '', 92, 'http://localhost/?post_type=acf-field&p=108', 2, 'acf-field', '', 0),
(109, 1, '2018-02-28 15:00:19', '2018-02-28 14:00:19', '', 'methodo-1', '', 'inherit', 'open', 'closed', '', 'methodo-12x', '', '', '2018-02-28 15:00:25', '2018-02-28 14:00:25', '', 10, 'http://localhost/wp-content/uploads/2018/02/methodo-12x.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2018-02-28 15:00:30', '2018-02-28 14:00:30', '', 'methodo-2@2x', '', 'inherit', 'open', 'closed', '', 'methodo-22x', '', '', '2018-02-28 15:00:33', '2018-02-28 14:00:33', '', 10, 'http://localhost/wp-content/uploads/2018/02/methodo-22x.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-02-28 15:00:37', '2018-02-28 14:00:37', '', 'methodo-3@2x', '', 'inherit', 'open', 'closed', '', 'methodo-32x', '', '', '2018-02-28 15:00:39', '2018-02-28 14:00:39', '', 10, 'http://localhost/wp-content/uploads/2018/02/methodo-32x.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-02-28 15:00:48', '2018-02-28 14:00:48', '', 'methodo-4@2x', '', 'inherit', 'open', 'closed', '', 'methodo-42x', '', '', '2018-02-28 15:00:52', '2018-02-28 14:00:52', '', 10, 'http://localhost/wp-content/uploads/2018/02/methodo-42x.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2018-02-28 15:01:03', '2018-02-28 14:01:03', '', 'methodo-5@2x', '', 'inherit', 'open', 'closed', '', 'methodo-52x', '', '', '2018-02-28 15:01:06', '2018-02-28 14:01:06', '', 10, 'http://localhost/wp-content/uploads/2018/02/methodo-52x.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2018-02-28 15:01:09', '2018-02-28 14:01:09', '<img class=\"alignleft size-large wp-image-103\" src=\"http://localhost/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-28 15:01:09', '2018-02-28 14:01:09', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-02-28 15:10:02', '2018-02-28 14:10:02', '<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\r\n<h3>Tempor incididunt ut labore et dolore magna aliqua.</h3>\r\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<ul>\r\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\r\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-28 15:10:02', '2018-02-28 14:10:02', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-02-28 15:23:22', '2018-02-28 14:23:22', '<img class=\"size-large wp-image-30 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image2-977x1024.png\" alt=\"\" width=\"977\" height=\"1024\" />\r\n<h2 style=\"text-align: center\">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\r\n<h3 style=\"text-align: center\">Tempor incididunt ut labore et dolore magna aliqua.</h3>\r\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<ul>\r\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\r\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-29 aligncenter\" src=\"http://localhost/wp-content/uploads/2018/02/image1-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-28 15:23:22', '2018-02-28 14:23:22', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-03-02 09:34:43', '2018-03-02 08:34:43', '', 'Nouveau !', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-02 09:34:43', '2018-03-02 08:34:43', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-03-02 09:57:29', '2018-03-02 08:57:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Nouveau', 'nouveau', 'publish', 'closed', 'closed', '', 'group_5a99108fba17b', '', '', '2018-03-02 10:23:40', '2018-03-02 09:23:40', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2018-03-02 09:57:29', '2018-03-02 08:57:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:25:\"Le slider des nouveautés\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider', 'news', 'publish', 'closed', 'closed', '', 'field_5a9910b02418c', '', '', '2018-03-02 09:57:29', '2018-03-02 08:57:29', '', 118, 'http://localhost/?post_type=acf-field&p=119', 0, 'acf-field', '', 0),
(120, 1, '2018-03-02 09:57:29', '2018-03-02 08:57:29', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:24:\"Sélectionnez un article\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Nouveauté', 'new', 'publish', 'closed', 'closed', '', 'field_5a9911a22418d', '', '', '2018-03-02 10:23:40', '2018-03-02 09:23:40', '', 119, 'http://localhost/?post_type=acf-field&#038;p=120', 0, 'acf-field', '', 0),
(121, 1, '2018-03-02 10:06:57', '2018-03-02 09:06:57', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:45:\"Renseignez ici le texte pour la partie agence\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Texte agence', 'new_agency', 'publish', 'closed', 'closed', '', 'field_5a99135a53484', '', '', '2018-03-02 10:07:36', '2018-03-02 09:07:36', '', 118, 'http://localhost/?post_type=acf-field&#038;p=121', 1, 'acf-field', '', 0),
(122, 1, '2018-03-02 10:09:35', '2018-03-02 09:09:35', '', 'Nouveau !', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-02 10:09:35', '2018-03-02 09:09:35', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-03-02 10:15:08', '2018-03-02 09:15:08', '', 'Nouveau !', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-02 10:15:08', '2018-03-02 09:15:08', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-03-02 10:19:33', '2018-03-02 09:19:33', '', 'Nouveau !', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-02 10:19:33', '2018-03-02 09:19:33', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-03-02 10:23:28', '2018-03-02 09:23:28', '', 'Nouveau !', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-03-02 10:23:28', '2018-03-02 09:23:28', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-03-02 17:26:15', '2018-03-02 16:26:15', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Le titre est sur deux lignes', 'big', 'publish', 'closed', 'closed', '', 'field_5a997aed4df0e', '', '', '2018-03-02 17:26:15', '2018-03-02 16:26:15', '', 87, 'http://localhost/?post_type=acf-field&p=126', 1, 'acf-field', '', 0),
(128, 1, '2018-03-09 16:13:09', '2018-03-09 15:13:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'group_5aa2a447c0a82', '', '', '2018-03-09 17:39:18', '2018-03-09 16:39:18', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=128', 0, 'acf-field-group', '', 0),
(129, 1, '2018-03-09 16:13:09', '2018-03-09 15:13:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5aa2a45a28547', '', '', '2018-03-09 17:39:18', '2018-03-09 16:39:18', '', 128, 'http://localhost/?post_type=acf-field&#038;p=129', 0, 'acf-field', '', 0),
(134, 1, '2018-03-09 16:15:24', '2018-03-09 15:15:24', '', 'logo-horizontal', '', 'inherit', 'open', 'closed', '', 'logo-horizontal', '', '', '2018-03-09 17:39:34', '2018-03-09 16:39:34', '', 0, 'http://localhost/wp-content/uploads/2018/03/logo-horizontal.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2018-03-14 14:33:09', '2018-03-14 13:33:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Bloc \"En savoir plus\"', 'bloc-en-savoir-plus', 'publish', 'closed', 'closed', '', 'group_5aa9245b173f7', '', '', '2018-03-14 16:57:41', '2018-03-14 15:57:41', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=135', 2, 'acf-field-group', '', 0),
(136, 1, '2018-03-14 14:33:09', '2018-03-14 13:33:09', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:33:\"Lien vers la page \"Notre agence\".\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien', 'agency_link', 'publish', 'closed', 'closed', '', 'field_5aa92471d7030', '', '', '2018-03-14 14:39:29', '2018-03-14 13:39:29', '', 135, 'http://localhost/?post_type=acf-field&#038;p=136', 0, 'acf-field', '', 0),
(137, 1, '2018-03-14 16:57:10', '2018-03-14 15:57:10', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Label', 'agency_label', 'publish', 'closed', 'closed', '', 'field_5aa946434a4c7', '', '', '2018-03-14 16:57:41', '2018-03-14 15:57:41', '', 135, 'http://localhost/?post_type=acf-field&#038;p=137', 1, 'acf-field', '', 0),
(138, 1, '2018-03-19 14:54:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-19 14:54:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=138', 0, 'post', '', 0),
(139, 1, '2018-03-19 15:19:41', '2018-03-19 14:19:41', '<h2 style=\"text-align: center\">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h2>\r\n<h3 style=\"text-align: center\">Tempor incididunt ut labore et dolore magna aliqua.</h3>\r\n<strong>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<ul>\r\n 	<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudan</li>\r\n 	<li>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</li>\r\n 	<li>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam.</li>\r\n</ul>', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-03-19 15:19:41', '2018-03-19 14:19:41', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-03-19 15:20:51', '2018-03-19 14:20:51', '<img class=\"alignleft size-large wp-image-103\" src=\"3000/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-03-19 15:20:51', '2018-03-19 14:20:51', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-03-19 15:21:25', '2018-03-19 14:21:25', '<img class=\"alignleft size-large wp-image-103\" src=\"3000/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-03-19 15:21:25', '2018-03-19 14:21:25', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-03-19 15:21:54', '2018-03-19 14:21:54', '<img class=\"alignleft size-large wp-image-103\" src=\"3000/wp-content/uploads/2018/02/cover-1024x576.png\" alt=\"\" width=\"1024\" height=\"576\" />', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-03-19 15:21:54', '2018-03-19 14:21:54', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_termmeta`
--

CREATE TABLE `_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_terms`
--

CREATE TABLE `_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_terms`
--

INSERT INTO `_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu', 'menu', 0),
(3, 'Packaging', 'packaging', 0),
(4, 'Identité', 'identite', 0),
(5, 'Édition', 'edition', 0),
(6, 'Footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_term_relationships`
--

CREATE TABLE `_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_term_relationships`
--

INSERT INTO `_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(22, 3, 0),
(33, 4, 0),
(33, 5, 0),
(66, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_term_taxonomy`
--

CREATE TABLE `_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_term_taxonomy`
--

INSERT INTO `_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_usermeta`
--

CREATE TABLE `_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_usermeta`
--

INSERT INTO `_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminDM1M'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, '_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, '_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"e0502cf22b64830d144203c7be6f7665001a59b8cee1366b9febe483478e5d4a\";a:4:{s:10:\"expiration\";i:1521035545;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1519825945;}s:64:\"ea7e5b54898f799cd948d014a369f739ec134e14a5e5a2c92825d0d6f3dd6984\";a:4:{s:10:\"expiration\";i:1521465698;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6\";s:5:\"login\";i:1520256098;}s:64:\"a0b32322ed94d82b5d3edb149054f3941ba0000903458813d293b44f3c61d2b0\";a:4:{s:10:\"expiration\";i:1521537944;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6\";s:5:\"login\";i:1520328344;}}'),
(17, 1, '_user-settings', 'hidetb=1&libraryContent=browse&editor=tinymce&imgsize=large&align=left&mfold=o&advImgDetails=show'),
(18, 1, '_user-settings-time', '1520608531'),
(19, 1, '_dashboard_quick_press_last_post_id', '138'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, '_dismissed_secupress_notices', 'oneclick-scan'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:109:\"revisionsdiv,postexcerpt,trackbacksdiv,acf-group_5a8c2d46e7871,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_post', '2'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:10:{i:0;s:23:\"acf-group_5a8d48dc9a751\";i:1;s:23:\"acf-group_5a8d7ca37f8a1\";i:2;s:23:\"acf-group_5a8c474951620\";i:3;s:12:\"revisionsdiv\";i:4;s:11:\"postexcerpt\";i:5;s:13:\"trackbacksdiv\";i:6;s:16:\"commentstatusdiv\";i:7;s:11:\"commentsdiv\";i:8;s:7:\"slugdiv\";i:9;s:9:\"authordiv\";}'),
(28, 1, 'acf_user_settings', 'a:0:{}'),
(29, 1, 'nav_menu_recently_edited', '2'),
(30, 1, 'closedpostboxes_toplevel_page_acf-options', 'a:3:{i:0;s:23:\"acf-group_5a8d7ca37f8a1\";i:1;s:23:\"acf-group_5a8c474951620\";i:2;s:23:\"acf-group_5aa2a447c0a82\";}'),
(31, 1, 'metaboxhidden_toplevel_page_acf-options', 'a:0:{}'),
(32, 1, 'meta-box-order_toplevel_page_acf-options', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:71:\"acf-group_5a8d7ca37f8a1,acf-group_5a8c474951620,acf-group_5aa2a447c0a82\";}'),
(33, 1, 'screen_layout_toplevel_page_acf-options', '2'),
(34, 1, 'closedpostboxes_page', 'a:0:{}'),
(35, 1, 'metaboxhidden_page', 'a:12:{i:0;s:23:\"acf-group_5a8c2d46e7871\";i:1;s:23:\"acf-group_5a8d48dc9a751\";i:2;s:23:\"acf-group_5a8d7ca37f8a1\";i:3;s:23:\"acf-group_5a8c474951620\";i:4;s:23:\"acf-group_5aa2a447c0a82\";i:5;s:23:\"acf-group_5a99108fba17b\";i:6;s:23:\"acf-group_5aa9245b173f7\";i:7;s:12:\"revisionsdiv\";i:8;s:16:\"commentstatusdiv\";i:9;s:11:\"commentsdiv\";i:10;s:7:\"slugdiv\";i:11;s:9:\"authordiv\";}'),
(36, 1, '_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:159:\"Don\'t miss your crawl errors: <a href=\"http://localhost/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:271:\"You still have the default WordPress tagline, even an empty one is probably better. <a href=\"http://localhost/wp-admin/customize.php?url=http%3A%2F%2Flocalhost%2Fwp-admin%2Fedit.php%3Fpost_type%3Dacf-field-group%26page%3Dacf-tools\">You can fix this in the customizer</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:28:\"wpseo-dismiss-tagline-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `_users`
--

CREATE TABLE `_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `_users`
--

INSERT INTO `_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminDM1M', '$P$B3ehFagIR5TLzQkMq4c3/uK7Jz5DUv.', 'admindm1m', 'clement@stereosuper.fr', '', '2018-02-20 13:25:17', '', 0, 'adminDM1M');

-- --------------------------------------------------------

--
-- Table structure for table `_yoast_seo_links`
--

CREATE TABLE `_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_yoast_seo_meta`
--

CREATE TABLE `_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_commentmeta`
--
ALTER TABLE `_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `_comments`
--
ALTER TABLE `_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `_ewwwio_images`
--
ALTER TABLE `_ewwwio_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `path_image_size` (`path`(191),`image_size`),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Indexes for table `_links`
--
ALTER TABLE `_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `_options`
--
ALTER TABLE `_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `_postmeta`
--
ALTER TABLE `_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `_posts`
--
ALTER TABLE `_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `_termmeta`
--
ALTER TABLE `_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `_terms`
--
ALTER TABLE `_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `_term_relationships`
--
ALTER TABLE `_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `_term_taxonomy`
--
ALTER TABLE `_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `_usermeta`
--
ALTER TABLE `_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `_yoast_seo_links`
--
ALTER TABLE `_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `_yoast_seo_meta`
--
ALTER TABLE `_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_commentmeta`
--
ALTER TABLE `_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_comments`
--
ALTER TABLE `_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_ewwwio_images`
--
ALTER TABLE `_ewwwio_images`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `_links`
--
ALTER TABLE `_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_options`
--
ALTER TABLE `_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=859;
--
-- AUTO_INCREMENT for table `_postmeta`
--
ALTER TABLE `_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1190;
--
-- AUTO_INCREMENT for table `_posts`
--
ALTER TABLE `_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `_termmeta`
--
ALTER TABLE `_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_terms`
--
ALTER TABLE `_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `_term_taxonomy`
--
ALTER TABLE `_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `_usermeta`
--
ALTER TABLE `_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `_users`
--
ALTER TABLE `_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `_yoast_seo_links`
--
ALTER TABLE `_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
