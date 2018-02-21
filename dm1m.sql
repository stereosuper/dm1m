-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 21 fév. 2018 à 16:40
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dm1m`
--

-- --------------------------------------------------------

--
-- Structure de la table `_commentmeta`
--

CREATE TABLE `_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `_comments`
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

--
-- Déchargement des données de la table `_comments`
--

INSERT INTO `_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-20 13:25:17', '2018-02-20 13:25:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `_ewwwio_images`
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
-- Déchargement des données de la table `_ewwwio_images`
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
(10, 30, 'media', 'large', '/Users/clementlemoine/Stereosuper/dm1m/dest/wp-content/uploads/2018/02/image2-977x1024.png', '', 'Reduced by 4,4% (47,6 KB)', 1052398, 1101103, '', NULL, 0, 1, '2018-02-20 13:42:57', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `_links`
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
-- Structure de la table `_options`
--

CREATE TABLE `_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `_options`
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
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:47:\"clean-image-filenames/clean-image-filenames.php\";i:2;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:3;s:23:\"secupress/secupress.php\";}', 'yes'),
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
(92, '_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
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
(109, 'cron', 'a:5:{i:1519262733;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519263105;a:1:{s:27:\"secupress_cleanup_leftovers\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519306089;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519307279;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519133133;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(112, 'current_theme', 'dm1m', 'yes'),
(113, 'theme_switched', '', 'yes'),
(114, 'theme_mods_dm1m', 'a:2:{s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(122, '_site_transient_timeout_browser_1a1bface736d552b1b0da632b6c9e445', '1519738089', 'no'),
(123, '_site_transient_browser_1a1bface736d552b1b0da632b6c9e445', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.167\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
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
(157, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(158, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(159, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(160, 'ewww_image_optimizer_disable_pngout', '1', 'no'),
(161, 'ewww_image_optimizer_optipng_level', '2', 'no'),
(162, 'ewww_image_optimizer_pngout_level', '2', 'no'),
(163, 'ewww_image_optimizer_jpegtran_copy', '1', 'no'),
(164, 'ewww_image_optimizer_jpg_level', '10', 'no'),
(165, 'ewww_image_optimizer_png_level', '10', 'no'),
(166, 'ewww_image_optimizer_gif_level', '10', 'no'),
(167, 'ewww_image_optimizer_pdf_level', '0', 'no'),
(168, 'exactdn_all_the_things', '1', 'no'),
(169, 'ewww_image_optimizer_version', '410.0', 'yes'),
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
(232, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1519246775', 'no');
INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(233, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 08:37:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"BlendWebMix 2017 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Aug 2017 10:00:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1780344\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"CPts5PobK9xQPOHfj2aQ2R3o7WI\";s:13:\"last-modified\";s:29:\"Wed, 21 Feb 2018 08:48:10 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 21 Feb 2018 08:59:35 GMT\";s:7:\"expires\";s:29:\"Wed, 21 Feb 2018 08:59:35 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20180220132138\";}', 'no');
INSERT INTO `_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(234, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1519246775', 'no'),
(235, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1519203575', 'no'),
(236, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1519246775', 'no'),
(237, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Salon WPNDIGITAL : 1ère étape franchie (Date et lieu) – WordPress, Web, digital\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/y7Eu1g7nL3I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://www.wpnormandie.fr/salon-wpndigital-1ere-etape-franchie-date-et-lieu-wordpress-web-digital/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 17:29:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:348:\"\n		        Comme vous le savez certainement, le grand salon national WPNDIGITAL aura lieu en juin 2018. On y parlera de Web, de Digital et bien évidement de WordPress. C&#8217;est avec grand plaisir que nous vous annonçons que ce salon WPNDIGITAL se tiendra le 2 juin 2018 à Caen. Il aura lieu au Centre de congrès. Celui-ci [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:418:\"Comme vous le savez certainement, le grand salon national WPNDIGITAL aura lieu en juin 2018. On y parlera de Web, de Digital et bien évidement de WordPress. C&#8217;est avec grand plaisir que nous vous annonçons que ce salon WPNDIGITAL se tiendra le 2 juin 2018 à Caen. Il aura lieu au Centre de congrès. Celui-ci [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/y7Eu1g7nL3I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://www.wpnormandie.fr/salon-wpndigital-1ere-etape-franchie-date-et-lieu-wordpress-web-digital/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Désactiver la notice de connexion à WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/N4EI7QOPa1w/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wpchannel.com/desactiver-notice-connexion-woocommerce/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 08:00:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"\n		        WooCommerce 3.3.1 affiche une notice vous invitant à connecter votre compte Woocommerce.com et il est impossible de la désactiver. Un simple filtre va nous permettre de contourner cette notice intrusive dans votre administration WordPress. La version récente de WooCommerce affiche le message d&#8217;avertissement suivant : Connecter votre boutique à WooCommerce.com pour recevoir les mises à [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:703:\"<img width=\"558\" height=\"300\" src=\"https://wpchannel.com/images/2018/02/php-code-558x300.jpg\" class=\"webfeedsFeaturedVisual wp-post-image\" alt=\"\" style=\"margin: auto;margin-bottom: 5px;max-width: 100%\" />WooCommerce 3.3.1 affiche une notice vous invitant à connecter votre compte Woocommerce.com et il est impossible de la désactiver. Un simple filtre va nous permettre de contourner cette notice intrusive dans votre administration WordPress. La version récente de WooCommerce affiche le message d&#8217;avertissement suivant : Connecter votre boutique à WooCommerce.com pour recevoir les mises à [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/N4EI7QOPa1w\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wpchannel.com/desactiver-notice-connexion-woocommerce/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Gérez vos mails de notification pour les commentaires WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/5rq_F8yof0M/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wpformation.com/mails-notification-commentaires/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 07:45:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:601:\"\n		        Vous voulez améliorer la gestion de vos mails de notification pour les commentaires WordPress ? Vous avez parfaitement raison : les commentaires sont la fondation du dialogue et de l’engagement utilisateur sur de nombreux blogs. Par défaut, WordPress ne fait pas du si bon travail quand il s’agit d’informer les utilisateurs à propos des nouveaux commentaires… [&#8230;]\n\n\nGérez vos mails de notification pour les commentaires WordPress est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1429:\"<p><img width=\"893\" height=\"538\" src=\"https://wpformation.com/wp-content/uploads/2017/10/email-pdf-newsletter.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"email pdf newsletter\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Vous voulez améliorer la gestion de vos mails de notification pour les commentaires WordPress ? Vous avez parfaitement raison : les commentaires sont la fondation du dialogue et de l’engagement utilisateur sur de nombreux blogs. Par défaut, WordPress ne fait pas du si bon travail quand il s’agit d’informer les utilisateurs à propos des nouveaux commentaires… [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/mails-notification-commentaires/\">Gérez vos mails de notification pour les commentaires WordPress</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/5rq_F8yof0M\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wpformation.com/mails-notification-commentaires/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WP TECH, l’évènement technique à ne pas rater sur WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/uYtvJQ9eadg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://www.seomix.fr/wp-tech-2018/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Feb 2018 05:00:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1124:\"\n		        Le WP TECH 2018 arrive à grands pas. Prenez vite vos places pour le seul évènement technique dédié à WordPress, pour les débutants comme pour les développeurs expérimentés !Accédez à l\'article original : WP TECH, l&rsquo;évènement technique à ne pas rater sur WordPress.\n    Voici le début du contenu : Le WP TECH 2018 arrive à grands pas&nbsp;: prenez vite vos places pour le seul événement technique dédié à WordPress&nbsp;! Le WP TECH, c&rsquo;est quoi&nbsp;? Le WP TECH est une série de conférences consacrées aux aspects techniques du CMS WordPress (29% de parts de marché au niveau mondial). Pour sa troisième édition elle aura lieu le 28 Avril à Lyon&nbsp;! Et cela s&rsquo;annonce prometteur avec deux sessions différentes en simultané&nbsp;:  des conférences techniques pour les débutants afin d&rsquo;appréhender certains concepts clés de WordPress; des conférences techniques avancées pour aller très loin dans le code et l&rsquo;expertise sur ce CMS.  L&rsquo;édition 2015 du WP TECH Que vais-je apprendre&nbsp;? Plein de choses pour mieux gérer [...]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<div><img class=\"webfeedsFeaturedVisual\" src=\"https://www.seomix.fr/wp-content/uploads/2018/02/wp-tech-logo-1-500x500.jpg\" /></div>Le WP TECH 2018 arrive à grands pas. Prenez vite vos places pour le seul évènement technique dédié à WordPress, pour les débutants comme pour les développeurs expérimentés !<p><strong>Accédez à l\'article original :</strong> <a href=\"https://www.seomix.fr/wp-tech-2018/\">WP TECH, l&rsquo;évènement technique à ne pas rater sur WordPress</a>.</p>\n    <p><strong>Voici le début du contenu :</strong> <p>Le WP TECH 2018 arrive à grands pas&nbsp;: <strong>prenez vite vos places</strong> pour le seul événement technique dédié à WordPress&nbsp;!</p> <h2>Le WP TECH, c&rsquo;est quoi&nbsp;?</h2> <p>Le WP TECH est une série de conférences consacrées aux aspects techniques du CMS WordPress (29% de parts de marché au niveau mondial). Pour sa troisième édition elle aura lieu le 28 Avril à Lyon&nbsp;! Et cela s&rsquo;annonce prometteur avec deux sessions différentes en simultané&nbsp;:</p>  des conférences techniques <strong>pour les débutants</strong> afin d&rsquo;appréhender certains concepts clés de WordPress; des conférences techniques<strong> avancées</strong> pour aller très loin dans le code et l&rsquo;expertise sur ce CMS.  <p>L&rsquo;édition 2015 du WP TECH</p> <h2>Que vais-je apprendre&nbsp;?</h2> <p>Plein de choses pour mieux gérer [...]</p><hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/uYtvJQ9eadg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://www.seomix.fr/wp-tech-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"Accessibilité d’un thème WordPress : les éléments de code obligatoires\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/TV_CGIPycoM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://www.wpnormandie.fr/accessibilite-dun-theme-wordpress-les-elements-de-code-obligatoires/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Feb 2018 13:23:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:436:\"\n		        Tout thème WordPress qui veut atteindre un bon niveau d’accessibilité doit intégrer sur toutes les pages du site, des éléments de code obligatoires. Les thèmes du répertoire de WordPress ayant le tag « Accessibility ready » prennent en compte une partie de ces éléments. Encore faut-il qu’ils répondent aux exigences du Référentiel Général d’Accessibilité pour les Administrations [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:506:\"Tout thème WordPress qui veut atteindre un bon niveau d’accessibilité doit intégrer sur toutes les pages du site, des éléments de code obligatoires. Les thèmes du répertoire de WordPress ayant le tag « Accessibility ready » prennent en compte une partie de ces éléments. Encore faut-il qu’ils répondent aux exigences du Référentiel Général d’Accessibilité pour les Administrations [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/TV_CGIPycoM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://www.wpnormandie.fr/accessibilite-dun-theme-wordpress-les-elements-de-code-obligatoires/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"BEA Sanitize Filename sur wp.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/hOzM7-7pymg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://www.maximeculea.fr/bea-sanitize-filename-sur-wporg/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 22:55:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:281:\"\n		        N\'avez vous pas toujours voulu automatiser le nômmage de vos fichiers téléversés sur votre WordPress ? Chose maintenant possible avec BEA Sanitize Filename. \nCet article BEA Sanitize Filename sur wp.org est apparu en premier sur WordPress by Maxime Culea.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:510:\"<p>N\'avez vous pas toujours voulu automatiser le nômmage de vos fichiers téléversés sur votre WordPress ? Chose maintenant possible avec BEA Sanitize Filename. </p>\n<p>Cet article <a rel=\"nofollow\" href=\"https://www.maximeculea.fr/bea-sanitize-filename-sur-wporg/\">BEA Sanitize Filename sur wp.org</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://www.maximeculea.fr\">WordPress by Maxime Culea</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/hOzM7-7pymg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://www.maximeculea.fr/bea-sanitize-filename-sur-wporg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Formez-vous à Gutenberg avant sa sortie !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/CVYy6QWzHF0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://www.geekpress.fr/formez-a-gutenberg-sortie/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 08:30:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:447:\"\n		        Le nouvel éditeur de WordPress, le fameux Gutenberg, fait parler de lui depuis quelques mois. Il arrivera en standard dans WordPress dans la version 5.0, prévue pour l&#8217;été, et remplacera Tiny MCE ! Je vous propose une petite formation sur Capitaine WP pour tout savoir avant tout le monde ! Note : La formation est [&#8230;]\nCet article Formez-vous à Gutenberg avant sa sortie ! est apparu en premier sur GeekPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Geekpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:664:\"<p>Le nouvel éditeur de WordPress, le fameux Gutenberg, fait parler de lui depuis quelques mois. Il arrivera en standard dans WordPress dans la version 5.0, prévue pour l&#8217;été, et remplacera Tiny MCE ! Je vous propose une petite formation sur Capitaine WP pour tout savoir avant tout le monde ! Note : La formation est [&#8230;]</p>\n<p>Cet article <a rel=\"nofollow\" href=\"http://www.geekpress.fr/formez-a-gutenberg-sortie/\">Formez-vous à Gutenberg avant sa sortie !</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://www.geekpress.fr\">GeekPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/CVYy6QWzHF0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://www.geekpress.fr/formez-a-gutenberg-sortie/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"Désactiver les notifications WordPress de changements de mot de passe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/D8rMyt1i55A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpchannel.com/desactiver-notifications-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 08:30:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:413:\"\n		        À chaque changement de mot de passe d&#8217;un utilisateur de votre site sous WordPress, l&#8217;administrateur reçoit un e-mail ce qui, pour un site avec de nombreux utilisateurs, peut vite devenir agaçant. Heureusement, il existe un filtre permettant de désactiver cette notification y compris celles envoyées aux utilisateurs qui sont à l&#8217;origine du changement de mot [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:691:\"<img width=\"450\" height=\"300\" src=\"https://wpchannel.com/images/2018/02/bureau-poste-450x300.jpg\" class=\"webfeedsFeaturedVisual wp-post-image\" alt=\"\" style=\"margin: auto;margin-bottom: 5px;max-width: 100%\" />À chaque changement de mot de passe d&#8217;un utilisateur de votre site sous WordPress, l&#8217;administrateur reçoit un e-mail ce qui, pour un site avec de nombreux utilisateurs, peut vite devenir agaçant. Heureusement, il existe un filtre permettant de désactiver cette notification y compris celles envoyées aux utilisateurs qui sont à l&#8217;origine du changement de mot [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/D8rMyt1i55A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpchannel.com/desactiver-notifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"bk4fy6jvmVeYFNaGKRHhI0eyIGQ\";s:13:\"last-modified\";s:29:\"Wed, 21 Feb 2018 08:42:35 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 21 Feb 2018 08:59:35 GMT\";s:7:\"expires\";s:29:\"Wed, 21 Feb 2018 08:59:35 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:140:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20180220132138\";}', 'no'),
(238, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1519246775', 'no'),
(239, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1519203575', 'no'),
(240, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1519246775', 'no'),
(241, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\'>Liste des candidats au bureau 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/y7Eu1g7nL3I/\'>Salon WPNDIGITAL : 1ère étape franchie (Date et lieu) – WordPress, Web, digital</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/N4EI7QOPa1w/\'>Désactiver la notice de connexion à WooCommerce</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/5rq_F8yof0M/\'>Gérez vos mails de notification pour les commentaires WordPress</a></li></ul></div>', 'no'),
(242, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1519246776', 'no'),
(243, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:14:\"WordCamp Paris\";s:3:\"url\";s:31:\"https://2018.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-03-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.82406919999999672654666937887668609619140625;s:9:\"longitude\";d:2.372298900000000099197450253996066749095916748046875;}}}}', 'no'),
(255, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519220265;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(256, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519220266;s:7:\"checked\";a:1:{s:4:\"dm1m\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(257, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519220267;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.8\";s:47:\"clean-image-filenames/clean-image-filenames.php\";s:3:\"1.2\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:5:\"4.1.0\";s:23:\"secupress/secupress.php\";s:5:\"1.3.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.1.0\";s:7:\"updated\";s:19:\"2017-10-17 14:57:39\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/ewww-image-optimizer/4.1.0/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"secupress\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.3.3\";s:7:\"updated\";s:19:\"2017-10-01 10:12:29\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/secupress/1.3.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:47:\"clean-image-filenames/clean-image-filenames.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/clean-image-filenames\";s:4:\"slug\";s:21:\"clean-image-filenames\";s:6:\"plugin\";s:47:\"clean-image-filenames/clean-image-filenames.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/clean-image-filenames/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/clean-image-filenames.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/clean-image-filenames/assets/icon-256x256.png?rev=1001365\";s:7:\"default\";s:74:\"https://ps.w.org/clean-image-filenames/assets/icon-256x256.png?rev=1001365\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/clean-image-filenames/assets/banner-1544x500.png?rev=1001368\";s:2:\"1x\";s:76:\"https://ps.w.org/clean-image-filenames/assets/banner-772x250.png?rev=1001368\";s:7:\"default\";s:77:\"https://ps.w.org/clean-image-filenames/assets/banner-1544x500.png?rev=1001368\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/ewww-image-optimizer\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:6:\"plugin\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/ewww-image-optimizer/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/ewww-image-optimizer.4.1.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-128x128.png?rev=1582276\";s:2:\"2x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";s:7:\"default\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";s:2:\"1x\";s:75:\"https://ps.w.org/ewww-image-optimizer/assets/banner-772x250.jpg?rev=1582276\";s:7:\"default\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"secupress/secupress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/secupress\";s:4:\"slug\";s:9:\"secupress\";s:6:\"plugin\";s:23:\"secupress/secupress.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/secupress/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/secupress.1.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:62:\"https://ps.w.org/secupress/assets/icon-128x128.png?rev=1677548\";s:2:\"2x\";s:62:\"https://ps.w.org/secupress/assets/icon-256x256.png?rev=1677548\";s:7:\"default\";s:62:\"https://ps.w.org/secupress/assets/icon-256x256.png?rev=1677548\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/secupress/assets/banner-1544x500.png?rev=1677677\";s:2:\"1x\";s:64:\"https://ps.w.org/secupress/assets/banner-772x250.png?rev=1677677\";s:7:\"default\";s:65:\"https://ps.w.org/secupress/assets/banner-1544x500.png?rev=1677677\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(261, 'options_footer_title', 'Design moi un mouton', 'no'),
(262, '_options_footer_title', 'field_5a8d7dc688d1a', 'no'),
(263, 'options_footer_address', '6 RUE DE ST-DOMINGUE - 44200 NANTES - 02 51 10 27 30', 'no'),
(264, '_options_footer_address', 'field_5a8d7f4288d1b', 'no'),
(265, 'options_footer_mail', 'dm1m@dm1m.fr', 'no'),
(266, '_options_footer_mail', 'field_5a8d7f5c88d1c', 'no'),
(267, 'options_footer_contact', 'a:3:{s:5:\"title\";s:16:\"Contactez-nous !\";s:3:\"url\";s:29:\"mailto:clement@stereosuper.fr\";s:6:\"target\";s:0:\"\";}', 'no'),
(268, '_options_footer_contact', 'field_5a8d80e146660', 'no'),
(269, 'options_fb_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.facebook.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(270, '_options_fb_link', 'field_5a8d8462bff4b', 'no'),
(271, '_transient_timeout_ewww_image_optimizer_images_reoptimized', '1519229657', 'no'),
(272, '_transient_ewww_image_optimizer_images_reoptimized', 'zero', 'no'),
(273, '_site_transient_timeout_secupress-detect-bad-plugins', '1519247658', 'no'),
(274, '_site_transient_secupress-detect-bad-plugins', '1', 'no'),
(275, '_site_transient_timeout_theme_roots', '1519227859', 'no'),
(276, '_site_transient_theme_roots', 'a:1:{s:4:\"dm1m\";s:7:\"/themes\";}', 'no'),
(277, '_site_transient_timeout_secupress-detect-bad-themes', '1519247659', 'no'),
(278, '_site_transient_secupress-detect-bad-themes', '1', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `_postmeta`
--

CREATE TABLE `_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `_postmeta`
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
(21, 6, '_edit_lock', '1519134491:1'),
(22, 6, '_wp_page_template', 'default'),
(23, 8, '_edit_last', '1'),
(24, 8, '_wp_page_template', 'default'),
(25, 8, '_edit_lock', '1519210606:1'),
(26, 10, '_edit_last', '1'),
(27, 10, '_edit_lock', '1519134627:1'),
(28, 10, '_wp_page_template', 'default'),
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
(101, 20, '_menu_item_type', 'custom'),
(102, 20, '_menu_item_menu_item_parent', '0'),
(103, 20, '_menu_item_object_id', '20'),
(104, 20, '_menu_item_object', 'custom'),
(105, 20, '_menu_item_target', ''),
(106, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 20, '_menu_item_xfn', ''),
(108, 20, '_menu_item_url', 'mailto:clement@stereosuper.fr'),
(110, 1, '_wp_trash_meta_status', 'publish'),
(111, 1, '_wp_trash_meta_time', '1519135314'),
(112, 1, '_wp_desired_post_slug', 'hello-world'),
(113, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(114, 22, '_edit_last', '1'),
(115, 22, '_edit_lock', '1519227341:1'),
(118, 24, '_edit_last', '1'),
(119, 24, '_edit_lock', '1519227488:1'),
(122, 22, 'subtitle', 'Wolverine'),
(123, 22, '_subtitle', 'field_5a8c2d541333d'),
(124, 26, 'subtitle', 'Wow génial'),
(125, 26, '_subtitle', 'field_5a8c2d541333d'),
(128, 27, 'subtitle', 'Wolverine'),
(129, 27, '_subtitle', 'field_5a8c2d541333d'),
(132, 29, '_wp_attached_file', '2018/02/image1.png'),
(133, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2163;s:6:\"height\";i:1217;s:4:\"file\";s:18:\"2018/02/image1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"image1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 30, '_wp_attached_file', '2018/02/image2.png'),
(135, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2161;s:6:\"height\";i:2265;s:4:\"file\";s:18:\"2018/02/image2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image2-286x300.png\";s:5:\"width\";i:286;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image2-768x805.png\";s:5:\"width\";i:768;s:6:\"height\";i:805;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"image2-977x1024.png\";s:5:\"width\";i:977;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 22, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(139, 22, '_galerie', 'field_5a8c307449d5c'),
(140, 31, 'subtitle', 'Wolverine'),
(141, 31, '_subtitle', 'field_5a8c2d541333d'),
(142, 31, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(143, 31, '_galerie', 'field_5a8c307449d5c'),
(146, 32, 'subtitle', 'Wolverine'),
(147, 32, '_subtitle', 'field_5a8c2d541333d'),
(148, 32, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(149, 32, '_galerie', 'field_5a8c307449d5c'),
(150, 33, '_edit_last', '1'),
(151, 33, '_edit_lock', '1519227163:1'),
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
(167, 33, '_thumbnail_id', '29'),
(172, 38, '_edit_last', '1'),
(173, 38, '_edit_lock', '1519209216:1'),
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
(204, 45, '_menu_item_type', 'post_type'),
(205, 45, '_menu_item_menu_item_parent', '0'),
(206, 45, '_menu_item_object_id', '10'),
(207, 45, '_menu_item_object', 'page'),
(208, 45, '_menu_item_target', ''),
(209, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 45, '_menu_item_xfn', ''),
(211, 45, '_menu_item_url', ''),
(213, 46, '_menu_item_type', 'post_type'),
(214, 46, '_menu_item_menu_item_parent', '0'),
(215, 46, '_menu_item_object_id', '8'),
(216, 46, '_menu_item_object', 'page'),
(217, 46, '_menu_item_target', ''),
(218, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 46, '_menu_item_xfn', ''),
(220, 46, '_menu_item_url', ''),
(222, 47, '_menu_item_type', 'post_type'),
(223, 47, '_menu_item_menu_item_parent', '0'),
(224, 47, '_menu_item_object_id', '6'),
(225, 47, '_menu_item_object', 'page'),
(226, 47, '_menu_item_target', ''),
(227, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 47, '_menu_item_xfn', ''),
(229, 47, '_menu_item_url', ''),
(231, 48, '_menu_item_type', 'custom'),
(232, 48, '_menu_item_menu_item_parent', '0'),
(233, 48, '_menu_item_object_id', '48'),
(234, 48, '_menu_item_object', 'custom'),
(235, 48, '_menu_item_target', ''),
(236, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 48, '_menu_item_xfn', ''),
(238, 48, '_menu_item_url', 'mailto:clement@stereosuper.fr'),
(240, 49, '_edit_last', '1'),
(241, 49, '_edit_lock', '1519223071:1'),
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
(256, 58, 'subtitle', 'Wolverine'),
(257, 58, '_subtitle', 'field_5a8c2d541333d'),
(258, 58, 'galerie', 'a:2:{i:0;s:2:\"29\";i:1;s:2:\"30\";}'),
(259, 58, '_galerie', 'field_5a8c307449d5c'),
(260, 58, 'grid_size', 'h-rect'),
(261, 58, '_grid_size', 'field_5a8d9003f5d8e');

-- --------------------------------------------------------

--
-- Structure de la table `_posts`
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
-- Déchargement des données de la table `_posts`
--

INSERT INTO `_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-20 13:25:17', '2018-02-20 13:25:17', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-02-20 15:01:54', '2018-02-20 14:01:54', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-20 13:25:17', '2018-02-20 13:25:17', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-20 13:25:17', '2018-02-20 13:25:17', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-20 13:28:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-20 13:28:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2018-02-20 14:47:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:47:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-02-20 14:48:14', '2018-02-20 13:48:14', '', 'Nouveau', '', 'publish', 'closed', 'closed', '', 'nouveau', '', '', '2018-02-20 14:48:14', '2018-02-20 13:48:14', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-02-20 14:48:14', '2018-02-20 13:48:14', '', 'Nouveau', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-20 14:48:14', '2018-02-20 13:48:14', '', 6, 'http://localhost/?p=7', 0, 'revision', '', 0),
(8, 1, '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 'Nos projets', '', 'publish', 'closed', 'closed', '', 'nos-projets', '', '', '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 0, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-20 14:50:54', '2018-02-20 13:50:54', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-02-20 14:51:22', '2018-02-20 13:51:22', '', 'Notre agence', '', 'publish', 'closed', 'closed', '', 'notre-agence', '', '', '2018-02-20 14:51:22', '2018-02-20 13:51:22', '', 0, 'http://localhost/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-02-20 14:51:22', '2018-02-20 13:51:22', '', 'Notre agence', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-20 14:51:22', '2018-02-20 13:51:22', '', 10, 'http://localhost/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-02-20 14:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 14:52:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-02-21 15:00:16', '2018-02-21 14:00:16', '', 0, 'http://localhost/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-02-21 15:00:16', '2018-02-21 14:00:16', '', 0, 'http://localhost/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-02-21 15:00:16', '2018-02-21 14:00:16', '', 0, 'http://localhost/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-02-20 14:56:58', '2018-02-20 13:56:58', '', 'Contactez-nous', '', 'publish', 'closed', 'closed', '', 'contactez-nous', '', '', '2018-02-21 15:00:16', '2018-02-21 14:00:16', '', 0, 'http://localhost/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2018-02-20 15:01:54', '2018-02-20 14:01:54', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-20 15:01:54', '2018-02-20 14:01:54', '', 1, 'http://localhost/1-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-20 15:07:47', '2018-02-20 14:07:47', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Super projet', '', 'publish', 'open', 'open', '', 'super-projet', '', '', '2018-02-21 16:37:52', '2018-02-21 15:37:52', '', 0, 'http://localhost/?p=22', 0, 'post', '', 0),
(24, 1, '2018-02-20 15:18:35', '2018-02-20 14:18:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Projet', 'projet', 'publish', 'closed', 'closed', '', 'group_5a8c2d46e7871', '', '', '2018-02-21 16:34:39', '2018-02-21 15:34:39', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2018-02-20 15:18:35', '2018-02-20 14:18:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Le titre secondaire du projet (par exemple: \"Le grand Classic\")\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sous-Titre', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5a8c2d541333d', '', '', '2018-02-20 15:18:35', '2018-02-20 14:18:35', '', 24, 'http://localhost/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2018-02-20 15:20:18', '2018-02-20 14:20:18', 'meozjhfomuze', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-20 15:20:18', '2018-02-20 14:20:18', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-02-20 15:20:56', '2018-02-20 14:20:56', 'meozjhfomuze', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-20 15:20:56', '2018-02-20 14:20:56', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-02-20 15:40:03', '2018-02-20 14:40:03', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:34:\"Insérez ici les images du projet.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_5a8c307449d5c', '', '', '2018-02-20 15:40:03', '2018-02-20 14:40:03', '', 24, 'http://localhost/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-02-20 15:41:34', '2018-02-20 14:41:34', '', 'image1', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2018-02-20 15:41:42', '2018-02-20 14:41:42', '', 22, 'http://localhost/wp-content/uploads/2018/02/image1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-02-20 15:42:11', '2018-02-20 14:42:11', '', 'image2', '', 'inherit', 'open', 'closed', '', 'image2', '', '', '2018-02-20 15:42:19', '2018-02-20 14:42:19', '', 22, 'http://localhost/wp-content/uploads/2018/02/image2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-02-20 15:42:27', '2018-02-20 14:42:27', 'meozjhfomuze', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-20 15:42:27', '2018-02-20 14:42:27', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-02-20 15:44:26', '2018-02-20 14:44:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-20 15:44:26', '2018-02-20 14:44:26', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-02-20 16:59:15', '2018-02-20 15:59:15', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'publish', 'open', 'open', '', 'encore-un-article-cool', '', '', '2018-02-21 16:35:04', '2018-02-21 15:35:04', '', 0, 'http://localhost/?p=33', 0, 'post', '', 0),
(34, 1, '2018-02-20 16:59:15', '2018-02-20 15:59:15', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-20 16:59:15', '2018-02-20 15:59:15', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-02-20 16:59:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-20 16:59:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf-field-group&p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2018-02-20 17:06:14', '2018-02-20 16:06:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Liens', 'liens', 'publish', 'closed', 'closed', '', 'group_5a8c474951620', '', '', '2018-02-21 15:38:45', '2018-02-21 14:38:45', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2018-02-20 17:06:14', '2018-02-20 16:06:14', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Page nos projets', 'projects_link', 'publish', 'closed', 'closed', '', 'field_5a8c47599ab06', '', '', '2018-02-20 17:06:14', '2018-02-20 16:06:14', '', 36, 'http://localhost/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2018-02-21 11:25:17', '2018-02-21 10:25:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"posts_page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Projets', 'projets', 'publish', 'closed', 'closed', '', 'group_5a8d48dc9a751', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2018-02-21 11:25:17', '2018-02-21 10:25:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Texte de la page', 'projects_text', 'publish', 'closed', 'closed', '', 'field_5a8d48ed968f5', '', '', '2018-02-21 11:26:34', '2018-02-21 10:26:34', '', 38, 'http://localhost/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2018-02-21 11:25:29', '2018-02-21 10:25:29', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:25:29', '2018-02-21 10:25:29', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-02-21 11:34:00', '2018-02-21 10:34:00', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:34:00', '2018-02-21 10:34:00', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-02-21 11:35:58', '2018-02-21 10:35:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:55:\"Ajouter ici les services (Packaging, indentité etc...)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5a8d4b40bc91a', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 38, 'http://localhost/?post_type=acf-field&p=42', 1, 'acf-field', '', 0),
(43, 1, '2018-02-21 11:35:58', '2018-02-21 10:35:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nom du service', 'service', 'publish', 'closed', 'closed', '', 'field_5a8d4b7cbc91b', '', '', '2018-02-21 11:35:58', '2018-02-21 10:35:58', '', 42, 'http://localhost/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 'Nos projets', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-21 11:36:26', '2018-02-21 10:36:26', '', 8, 'http://localhost/8-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-02-21 14:59:03', '2018-02-21 13:59:03', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-02-21 15:00:46', '2018-02-21 14:00:46', '', 0, 'http://localhost/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2018-02-21 14:59:03', '2018-02-21 13:59:03', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-02-21 15:00:46', '2018-02-21 14:00:46', '', 0, 'http://localhost/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2018-02-21 14:59:03', '2018-02-21 13:59:03', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-02-21 15:00:46', '2018-02-21 14:00:46', '', 0, 'http://localhost/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-02-21 15:00:46', '2018-02-21 14:00:46', '', 'Nous contactez', '', 'publish', 'closed', 'closed', '', 'nous-contactez', '', '', '2018-02-21 15:00:46', '2018-02-21 14:00:46', '', 0, 'http://localhost/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Informations de footer', 'informations-de-footer', 'publish', 'closed', 'closed', '', 'group_5a8d7ca37f8a1', '', '', '2018-02-21 15:26:13', '2018-02-21 14:26:13', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Le titre du site dans le footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:20:\"Design moi un mouton\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre footer', 'footer_title', 'publish', 'closed', 'closed', '', 'field_5a8d7dc688d1a', '', '', '2018-02-21 15:24:26', '2018-02-21 14:24:26', '', 49, 'http://localhost/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"L\'adresse postale présente dans le footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Adresse footer', 'footer_address', 'publish', 'closed', 'closed', '', 'field_5a8d7f4288d1b', '', '', '2018-02-21 15:24:26', '2018-02-21 14:24:26', '', 49, 'http://localhost/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2018-02-21 15:17:12', '2018-02-21 14:17:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:56:\"L\'adresse mail présente en dessous de l\'adresse postale\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email footer', 'footer_mail', 'publish', 'closed', 'closed', '', 'field_5a8d7f5c88d1c', '', '', '2018-02-21 15:24:26', '2018-02-21 14:24:26', '', 49, 'http://localhost/?post_type=acf-field&#038;p=52', 2, 'acf-field', '', 0),
(53, 1, '2018-02-21 15:24:26', '2018-02-21 14:24:26', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:41:\"Le lien pour le bouton \"Contactez nous !\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien du bouton de contact', 'footer_contact', 'publish', 'closed', 'closed', '', 'field_5a8d80e146660', '', '', '2018-02-21 15:26:13', '2018-02-21 14:26:13', '', 49, 'http://localhost/?post_type=acf-field&#038;p=53', 3, 'acf-field', '', 0),
(54, 1, '2018-02-21 15:37:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-21 15:37:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf-field-group&p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2018-02-21 15:38:45', '2018-02-21 14:38:45', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien page Facebook', 'fb_link', 'publish', 'closed', 'closed', '', 'field_5a8d8462bff4b', '', '', '2018-02-21 15:38:45', '2018-02-21 14:38:45', '', 36, 'http://localhost/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2018-02-21 16:34:39', '2018-02-21 15:34:39', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:65:\"Choisissez ici la taille de la miniature dans la grille de projet\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:12:\"small-square\";s:35:\"Petit carré ( 1 ligne x 1 colonne)\";s:6:\"h-rect\";s:44:\"Rectangle horizontal ( 1 ligne x 2 colonnes)\";s:6:\"v-rect\";s:42:\"Rectangle vertical ( 2 lignes x 1 colonne)\";s:10:\"big-square\";s:37:\"Grand carré ( 2 lignes x 2 colonnes)\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"save_other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";}', 'Taille de la miniature', 'grid_size', 'publish', 'closed', 'closed', '', 'field_5a8d9003f5d8e', '', '', '2018-02-21 16:34:39', '2018-02-21 15:34:39', '', 24, 'http://localhost/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2018-02-21 16:35:04', '2018-02-21 15:35:04', 'dazfazfazfazfuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploadsuploads', 'Encore un article cool', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-21 16:35:04', '2018-02-21 15:35:04', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-02-21 16:36:06', '2018-02-21 15:36:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Super projet', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-21 16:36:06', '2018-02-21 15:36:06', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `_termmeta`
--

CREATE TABLE `_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `_terms`
--

CREATE TABLE `_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `_terms`
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
-- Structure de la table `_term_relationships`
--

CREATE TABLE `_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `_term_relationships`
--

INSERT INTO `_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(22, 3, 0),
(33, 4, 0),
(33, 5, 0),
(45, 6, 0),
(46, 6, 0),
(47, 6, 0),
(48, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `_term_taxonomy`
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
-- Déchargement des données de la table `_term_taxonomy`
--

INSERT INTO `_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `_usermeta`
--

CREATE TABLE `_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `_usermeta`
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"eba2ae26f5cc1e5ae084a93eae4616c38b2ef7c2393ec7745e727ce942f1fc6c\";a:4:{s:10:\"expiration\";i:1519306088;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1519133288;}s:64:\"5312e7eb8939a33741efcea436cdd907a1acafc721396c7b9f7f4b624ecdd477\";a:4:{s:10:\"expiration\";i:1519306246;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1519133446;}s:64:\"9e450b95bab01ea6f805853c92bbe182e5eff4209adb69d9e39e911a50194be4\";a:4:{s:10:\"expiration\";i:1519376371;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1519203571;}}'),
(17, 1, '_user-settings', 'hidetb=1&libraryContent=browse&editor=tinymce&imgsize=large&align=left&mfold=o&advImgDetails=show'),
(18, 1, '_user-settings-time', '1519133284'),
(19, 1, '_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, '_dismissed_secupress_notices', 'oneclick-scan'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:109:\"revisionsdiv,postexcerpt,trackbacksdiv,acf-group_5a8c2d46e7871,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_post', '2'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(28, 1, 'acf_user_settings', 'a:0:{}'),
(29, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Structure de la table `_users`
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
-- Déchargement des données de la table `_users`
--

INSERT INTO `_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminDM1M', '$P$B3ehFagIR5TLzQkMq4c3/uK7Jz5DUv.', 'admindm1m', 'clement@stereosuper.fr', '', '2018-02-20 13:25:17', '', 0, 'adminDM1M');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `_commentmeta`
--
ALTER TABLE `_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `_comments`
--
ALTER TABLE `_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `_ewwwio_images`
--
ALTER TABLE `_ewwwio_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `path_image_size` (`path`(191),`image_size`),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Index pour la table `_links`
--
ALTER TABLE `_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `_options`
--
ALTER TABLE `_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `_postmeta`
--
ALTER TABLE `_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `_posts`
--
ALTER TABLE `_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `_termmeta`
--
ALTER TABLE `_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `_terms`
--
ALTER TABLE `_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `_term_relationships`
--
ALTER TABLE `_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `_term_taxonomy`
--
ALTER TABLE `_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `_usermeta`
--
ALTER TABLE `_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `_commentmeta`
--
ALTER TABLE `_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `_comments`
--
ALTER TABLE `_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `_ewwwio_images`
--
ALTER TABLE `_ewwwio_images`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `_links`
--
ALTER TABLE `_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `_options`
--
ALTER TABLE `_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT pour la table `_postmeta`
--
ALTER TABLE `_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
--
-- AUTO_INCREMENT pour la table `_posts`
--
ALTER TABLE `_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `_termmeta`
--
ALTER TABLE `_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `_terms`
--
ALTER TABLE `_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `_term_taxonomy`
--
ALTER TABLE `_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `_usermeta`
--
ALTER TABLE `_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `_users`
--
ALTER TABLE `_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
