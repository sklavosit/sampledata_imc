-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2016 at 01:45 PM
-- Server version: 5.5.52
-- PHP Version: 5.3.10-1ubuntu3.25

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imcdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 195, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 42, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 45, 82, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 83, 86, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 87, 88, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 89, 90, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 91, 92, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 93, 94, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 95, 98, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 84, 85, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 96, 97, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu (EN)', '{}'),
(55, 18, 76, 77, 2, 'com_modules.module.87', 'Improve My City Google Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(56, 18, 78, 79, 2, 'com_modules.module.88', 'Improve My City Filters', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(57, 1, 113, 192, 1, 'com_imc', 'com_imc', '{}'),
(58, 57, 114, 131, 2, 'com_imc.category.8', 'Τεχνική υπηρεσία', '{}'),
(59, 57, 132, 139, 2, 'com_imc.category.9', 'Δημοτική αστυνομία', '{}'),
(60, 57, 140, 141, 2, 'com_imc.step.1', 'com_imc.step.1', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(61, 57, 142, 143, 2, 'com_imc.step.2', 'com_imc.step.2', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(62, 57, 144, 145, 2, 'com_imc.step.3', 'com_imc.step.3', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(63, 57, 146, 147, 2, 'com_imc.step.4', 'com_imc.step.4', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(64, 57, 148, 149, 2, 'com_imc.step.5', 'com_imc.step.5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(65, 57, 150, 151, 2, 'com_imc.issue.1', 'com_imc.issue.1', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(66, 57, 152, 153, 2, 'com_imc.log.1', 'com_imc.log.1', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(67, 1, 193, 194, 1, '#__languages.2', '#__languages.2', '{}'),
(68, 16, 38, 39, 2, 'com_menus.menu.2', 'Main Menu (EL)', '{}'),
(69, 16, 40, 41, 2, 'com_menus.menu.3', 'Root Menu', '{}'),
(70, 18, 80, 81, 2, 'com_modules.module.89', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(71, 57, 154, 169, 2, 'com_imc.category.10', 'Καθαριότητα', '{}'),
(72, 57, 170, 177, 2, 'com_imc.category.11', 'Τμήμα πρασίνου', '{}'),
(73, 58, 115, 116, 3, 'com_imc.category.12', 'Κατεστραμμένες σχάρες', '{}'),
(74, 59, 133, 134, 3, 'com_imc.category.13', 'Αφισοκόλληση', '{}'),
(75, 59, 135, 136, 3, 'com_imc.category.14', 'Εγκαταλελειμμένα οχήματα', '{}'),
(76, 59, 137, 138, 3, 'com_imc.category.15', 'Κατάληψη κοινοχρήστων χώρων', '{}'),
(77, 71, 155, 156, 3, 'com_imc.category.16', 'Επισκευή κάδων - καλαθιών σκουπιδιών', '{}'),
(78, 71, 157, 158, 3, 'com_imc.category.17', 'Δημοτικές τουαλέτες', '{}'),
(79, 58, 117, 118, 3, 'com_imc.category.18', 'Διαβάσεις Πεζών - Ράμπες ΑμεΑ', '{}'),
(80, 58, 119, 120, 3, 'com_imc.category.19', 'Οδοσήμανση - Πινακίδες', '{}'),
(81, 72, 171, 172, 3, 'com_imc.category.20', 'Συντήρηση Πάρκων και Νησίδων Πρασίνου ', '{}'),
(82, 71, 159, 160, 3, 'com_imc.category.21', 'Πλύσιμο κάδων – δρόμων', '{}'),
(83, 71, 161, 162, 3, 'com_imc.category.22', 'Περισυλλογή ογκωδών αντικειμένων', '{}'),
(84, 71, 163, 164, 3, 'com_imc.category.23', 'Αποκομιδή απορριμμάτων', '{}'),
(85, 71, 165, 166, 3, 'com_imc.category.24', 'Προβλήματα σαρώματος', '{}'),
(86, 57, 178, 179, 2, 'com_imc.category.25', 'Λαϊκές αγορές', '{}'),
(87, 58, 121, 122, 3, 'com_imc.category.26', 'Ηλεκτροφωτισμός - Καμένες λάμπες', '{}'),
(88, 58, 123, 124, 3, 'com_imc.category.27', 'Κολωνάκια - Προστατευτικές μπάρες', '{}'),
(89, 58, 125, 126, 3, 'com_imc.category.28', 'Οδόστρωμα – Πεζοδρόμια', '{}'),
(90, 72, 173, 174, 3, 'com_imc.category.29', 'Κλαδεύσεις - Φυτώρια - Κοπή δένδρων', '{}'),
(91, 72, 175, 176, 3, 'com_imc.category.30', 'Παιδικές χαρές', '{}'),
(92, 57, 180, 185, 2, 'com_imc.category.31', 'Διεύθυνση κατασκευών και συντηρήσεων', '{}'),
(93, 92, 181, 182, 3, 'com_imc.category.32', 'Υπό κατασκευή έργα', '{}'),
(94, 92, 183, 184, 3, 'com_imc.category.33', 'Συντήρηση κοινοχρήστων χώρων, πλατειών και αγαλμάτων', '{}'),
(95, 58, 127, 128, 3, 'com_imc.category.34', 'Χαλασμένοι σηματοδότες', '{}'),
(96, 71, 167, 168, 3, 'com_imc.category.35', 'Θέσεις - Οριοθέτηση κάδων - Τοποθέτηση νέων κάδων', '{}'),
(97, 57, 186, 187, 2, 'com_imc.category.36', 'Αδέσποτα ζώα', '{}'),
(98, 58, 129, 130, 3, 'com_imc.category.37', 'Σιντριβάνια - Συντήρηση Ηλεκτρομηχανολογικών Εγκαταστάσεων', '{}'),
(99, 57, 188, 189, 2, 'com_imc.category.38', 'Άρδευση', '{}'),
(100, 57, 190, 191, 2, 'com_imc.category.39', 'Θέματα κυκλοφοριακού σχεδιασμού ', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__associations`
--

INSERT INTO `#__associations` (`id`, `context`, `key`) VALUES
(109, 'com_menus.item', 'ee98fc5ffa6773ca5c64dd2c6bf77c29'),
(111, 'com_menus.item', 'ee98fc5ffa6773ca5c64dd2c6bf77c29'),
(101, 'com_menus.item', 'fb30b82c6701a89fd559c50eebfe0c88'),
(110, 'com_menus.item', 'fb30b82c6701a89fd559c50eebfe0c88');

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 75, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 58, 1, 11, 28, 1, 'technical-services', 'com_imc', 'Τεχνική υπηρεσία', 'technical-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-09-14 11:48:21', 951, '2016-10-10 10:20:27', 0, '*', 1),
(9, 59, 1, 29, 36, 1, 'municipal-police', 'com_imc', 'Δημοτική αστυνομία', 'municipal-police', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-09-14 11:48:40', 951, '2016-10-10 10:20:43', 0, '*', 1),
(10, 71, 1, 37, 52, 1, 'cleaning-services', 'com_imc', 'Καθαριότητα', 'cleaning-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:21:09', 0, '2016-10-10 10:21:09', 0, '*', 1),
(11, 72, 1, 53, 60, 1, 'green', 'com_imc', 'Τμήμα πρασίνου', 'green', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:21:37', 0, '2016-10-10 10:21:37', 0, '*', 1),
(12, 73, 8, 12, 13, 2, 'technical-services/broken-grates', 'com_imc', 'Κατεστραμμένες σχάρες', 'broken-grates', '', '<p>Καταστραμμένες σχάρες φρεατίων αποχέτευσης</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:23:59', 0, '2016-10-10 10:23:59', 0, '*', 1),
(13, 74, 9, 30, 31, 2, 'municipal-police/posters', 'com_imc', 'Αφισοκόλληση', 'posters', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:24:49', 0, '2016-10-10 10:24:49', 0, '*', 1),
(14, 75, 9, 32, 33, 2, 'municipal-police/abandoned-vehicles', 'com_imc', 'Εγκαταλελειμμένα οχήματα', 'abandoned-vehicles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:25:17', 0, '2016-10-10 10:25:17', 0, '*', 1),
(15, 76, 9, 34, 35, 2, 'municipal-police/illegal-space-occupation', 'com_imc', 'Κατάληψη κοινοχρήστων χώρων', 'illegal-space-occupation', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:25:51', 0, '2016-10-10 10:25:51', 0, '*', 1),
(16, 77, 10, 38, 39, 2, 'cleaning-services/bucket-repair', 'com_imc', 'Επισκευή κάδων - καλαθιών σκουπιδιών', 'bucket-repair', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:26:43', 0, '2016-10-10 10:26:43', 0, '*', 1),
(17, 78, 10, 40, 41, 2, 'cleaning-services/public-toilets', 'com_imc', 'Δημοτικές τουαλέτες', 'public-toilets', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:27:29', 0, '2016-10-10 10:27:29', 0, '*', 1),
(18, 79, 8, 14, 15, 2, 'technical-services/pedestrian-crossings', 'com_imc', 'Διαβάσεις Πεζών - Ράμπες ΑμεΑ', 'pedestrian-crossings', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:28:00', 0, '2016-10-10 10:28:00', 0, '*', 1),
(19, 80, 8, 16, 17, 2, 'technical-services/road-signs', 'com_imc', 'Οδοσήμανση - Πινακίδες', 'road-signs', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:28:35', 0, '2016-10-10 10:28:35', 0, '*', 1),
(20, 81, 11, 54, 55, 2, 'green/parks-maintenance', 'com_imc', 'Συντήρηση Πάρκων και Νησίδων Πρασίνου ', 'parks-maintenance', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:29:12', 0, '2016-10-10 10:29:12', 0, '*', 1),
(21, 82, 10, 42, 43, 2, 'cleaning-services/washing-tubs-roads', 'com_imc', 'Πλύσιμο κάδων – δρόμων', 'washing-tubs-roads', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:29:42', 0, '2016-10-10 10:29:42', 0, '*', 1),
(22, 83, 10, 44, 45, 2, 'cleaning-services/bulky-items', 'com_imc', 'Περισυλλογή ογκωδών αντικειμένων', 'bulky-items', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:30:17', 0, '2016-10-10 10:30:17', 0, '*', 1),
(23, 84, 10, 46, 47, 2, 'cleaning-services/garbage-collection', 'com_imc', 'Αποκομιδή απορριμμάτων', 'garbage-collection', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:34:15', 0, '2016-10-10 10:34:15', 0, '*', 1),
(24, 85, 10, 48, 49, 2, 'cleaning-services/road-garbage-collection', 'com_imc', 'Προβλήματα σαρώματος', 'road-garbage-collection', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:34:47', 0, '2016-10-10 10:34:47', 0, '*', 1),
(25, 86, 1, 61, 62, 1, 'street-markets', 'com_imc', 'Λαϊκές αγορές', 'street-markets', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:36:12', 0, '2016-10-10 10:36:12', 0, '*', 1),
(26, 87, 8, 18, 19, 2, 'technical-services/lighting-burnt-bulbs', 'com_imc', 'Ηλεκτροφωτισμός - Καμένες λάμπες', 'lighting-burnt-bulbs', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:36:42', 0, '2016-10-10 10:36:42', 0, '*', 1),
(27, 88, 8, 20, 21, 2, 'technical-services/bollards-protective-bars', 'com_imc', 'Κολωνάκια - Προστατευτικές μπάρες', 'bollards-protective-bars', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:37:07', 0, '2016-10-10 10:37:07', 0, '*', 1),
(28, 89, 8, 22, 23, 2, 'technical-services/roads-sidewalks', 'com_imc', 'Οδόστρωμα – Πεζοδρόμια', 'roads-sidewalks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:37:28', 0, '2016-10-10 10:37:28', 0, '*', 1),
(29, 90, 11, 56, 57, 2, 'green/pruning-trees', 'com_imc', 'Κλαδεύσεις - Φυτώρια - Κοπή δένδρων', 'pruning-trees', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:38:08', 0, '2016-10-10 10:38:08', 0, '*', 1),
(30, 91, 11, 58, 59, 2, 'green/playgrounds', 'com_imc', 'Παιδικές χαρές', 'playgrounds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:38:58', 0, '2016-10-10 10:38:58', 0, '*', 1),
(31, 92, 1, 63, 68, 1, 'construction-and-maintenance-dpt', 'com_imc', 'Διεύθυνση κατασκευών και συντηρήσεων', 'construction-and-maintenance-dpt', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:40:23', 0, '2016-10-10 10:40:23', 0, '*', 1),
(32, 93, 31, 64, 65, 2, 'construction-and-maintenance-dpt/under-construction', 'com_imc', 'Υπό κατασκευή έργα', 'under-construction', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:40:45', 0, '2016-10-10 10:40:45', 0, '*', 1),
(33, 94, 31, 66, 67, 2, 'construction-and-maintenance-dpt/maintenance-of-public-spaces,-squares-statues', 'com_imc', 'Συντήρηση κοινοχρήστων χώρων, πλατειών και αγαλμάτων', 'maintenance-of-public-spaces,-squares-statues', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:41:20', 0, '2016-10-10 10:41:20', 0, '*', 1),
(34, 95, 8, 24, 25, 2, 'technical-services/traffic-lights', 'com_imc', 'Χαλασμένοι σηματοδότες', 'traffic-lights', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:41:54', 0, '2016-10-10 10:41:54', 0, '*', 1),
(35, 96, 10, 50, 51, 2, 'cleaning-services/bins-delimitation', 'com_imc', 'Θέσεις - Οριοθέτηση κάδων - Τοποθέτηση νέων κάδων', 'bins-delimitation', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:42:37', 0, '2016-10-10 10:42:37', 0, '*', 1),
(36, 97, 1, 69, 70, 1, 'stray-animals', 'com_imc', 'Αδέσποτα ζώα', 'stray-animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:43:11', 0, '2016-10-10 10:43:11', 0, '*', 1),
(37, 98, 8, 26, 27, 2, 'technical-services/fountains-electrical-installations-maintenance', 'com_imc', 'Σιντριβάνια - Συντήρηση Ηλεκτρομηχανολογικών Εγκαταστάσεων', 'fountains-electrical-installations-maintenance', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:43:45', 0, '2016-10-10 10:43:45', 0, '*', 1),
(38, 99, 1, 71, 72, 1, 'irrigation', 'com_imc', 'Άρδευση', 'irrigation', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:44:23', 0, '2016-10-10 10:44:23', 0, '*', 1),
(39, 100, 1, 73, 74, 1, 'traffic-planning', 'com_imc', 'Θέματα κυκλοφοριακού σχεδιασμού ', 'traffic-planning', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","imc_category_emails":""}', '', '', '{"author":"","robots":""}', 951, '2016-10-10 10:44:42', 0, '2016-10-10 10:44:42', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `#__contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_types`
--

CREATE TABLE IF NOT EXISTS `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `#__content_types`
--

INSERT INTO `#__content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10012 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"en-GB","site":"el-GR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"0","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '{"mediaversion":"7116add666099376f08748ce2b7e9964"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '', '{"detect_browser":"0","automatic_change":"1","item_associations":"1","alternate_meta":"1","xdefault":"1","xdefault_language":"default","remove_default_prefix":"1","lang_cookie":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '', '{"lastrun":1476090146}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '', '{"mode":3,"lastrun":1473852305,"unique_id":"bffaf52d1f3ea3395a6fb4bfa1f03abed52a6e0b","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"version":"3.6.2"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (United Kingdom)', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","version":"1.0.5","description":"Web Installer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Hellenic', 'language', 'el-GR', '', 0, 1, 0, 0, '{"name":"Hellenic","type":"language","creationDate":"2015-06-13","author":"Greek translation team : joomla.gr","copyright":"Copyright (C) 2005 - 2013 joomla.gr \\u03ba\\u03b1\\u03b9 Open Source Matters. All rights reserved.","authorEmail":"joomla@joomla.gr","authorUrl":"http:\\/\\/www.joomla.gr","version":"3.4.2.1","description":"Greek language pack for Joomla! 3.4.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Greek', 'language', 'el-GR', '', 1, 1, 0, 0, '{"name":"Greek","type":"language","creationDate":"2015-06-13","author":"Greek translation team : joomla.gr","copyright":"Copyright (C) 2005 - 2013 joomla.gr \\u03ba\\u03b1\\u03b9 Open Source Matters. All rights reserved.","authorEmail":"joomla@joomla.gr","authorUrl":"http:\\/\\/www.joomla.gr","version":"3.4.2.1","description":"Greek language pack for Joomla! 3.4.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Greek Language Pack', 'package', 'pkg_el-GR', '', 0, 1, 1, 0, '{"name":"Greek Language Pack","type":"package","creationDate":"2015-06-13","author":"Greek translation team : joomla.gr","copyright":"Copyright (C) 2005 - 2013 joomla.gr \\u03ba\\u03b1\\u03b9 Open Source Matters. All rights reserved.","authorEmail":"joomla@joomla.gr","authorUrl":"http:\\/\\/www.joomla.gr","version":"3.4.2.1","description":"Greek language pack for Joomla! 3.4.2 - \\u0391\\u03c1\\u03c7\\u03b5\\u03af\\u03b1 \\u03b5\\u03bb\\u03bb\\u03b7\\u03bd\\u03b9\\u03ba\\u03ae\\u03c2 \\u03b3\\u03bb\\u03ce\\u03c3\\u03c3\\u03b1\\u03c2 \\u03b3\\u03b9\\u03b1 \\u03c4\\u03b7\\u03bd \\u03ad\\u03ba\\u03b4\\u03bf\\u03c3\\u03b7 Joomla! 3.4.2 \\u03b1\\u03c0\\u03cc \\u03c4\\u03b7\\u03bd \\u03bf\\u03bc\\u03ac\\u03b4\\u03b1 \\u03c4\\u03bf\\u03c5 joomla.gr","group":"","filename":"pkg_el-GR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'com_imc', 'component', 'com_imc', '', 1, 1, 0, 0, '{"name":"com_imc","type":"component","creationDate":"2015-02-03","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.2","description":"COM_IMC_XML_DESCRIPTION","group":"","filename":"imc"}', '{"version":"3.0.2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Improve My City Search Plugin', 'plugin', 'imc', 'search', 0, 1, 1, 0, '{"name":"Improve My City Search Plugin","type":"plugin","creationDate":"2015-01-25","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.0","description":"PLG_SEARCH_IMC_XML_DESCRIPTION","group":"","filename":"imc"}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Improve My City Category Fields', 'plugin', 'imc', 'content', 0, 1, 1, 0, '{"name":"Improve My City Category Fields","type":"plugin","creationDate":"2015-01-25","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.0","description":"PLG_CONTENT_IMC_XML_DESCRIPTION","group":"","filename":"imc"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Improve My City Mail Notifier', 'plugin', 'mail_notifier', 'imc', 0, 1, 1, 0, '{"name":"Improve My City Mail Notifier","type":"plugin","creationDate":"2015-01-25","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.0","description":"PLG_IMC_MAIL_NOTIFIER_XML_DESCRIPTION","group":"","filename":"mail_notifier"}', '{"mailnewissueuser":"1","mailnewissueadmins":"1","mailnewcommentuser":"0","mailnewcommentadmins":"0","mailcategorychangeadmins":"1","mailcategorychangeuser":"0","mailstatuschangeadmins":"0","mailstatuschangeuser":"1","messagesfrontend":"0","messagesbackend":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Improve My City Google Map', 'module', 'mod_imcmap', '', 0, 1, 0, 0, '{"name":"Improve My City Google Map","type":"module","creationDate":"2015-02-03","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.2","description":"MOD_IMCMAP_DESCRIPTION","group":"","filename":"mod_imcmap"}', '{"layout":"default","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Improve My City Filters', 'module', 'mod_imcfilters', '', 0, 1, 0, 0, '{"name":"Improve My City Filters","type":"module","creationDate":"2015-01-25","author":"Ioannis Tsampoulatidis","copyright":"Copyright (C) 2015. All rights reserved.","authorEmail":"tsampoulatidis@gmail.com","authorUrl":"https:\\/\\/github.com\\/itsam","version":"3.0.0","description":"MOD_IMCFILTERS_DESCRIPTION","group":"","filename":"mod_imcfilters"}', '{"show_on_details":"0","show_help":"0","show_poweredby":"1","layout":"default","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'purity_III', 'template', 'purity_iii', '', 0, 1, 1, 0, '{"name":"purity_III","type":"template","creationDate":"July 2015","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"1.1.5","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\" title=\\"Purity III Template demo\\">Live Demo<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\" title=\\"purity iii template documentation\\">Documentation<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\" title=\\"purity iii forum\\">Forum<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\" title=\\"Purity III template more info\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{"tpl_article_info_datetime_format":"d M Y"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"August 15, 2016","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.6.1","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2016 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_comments`
--

CREATE TABLE IF NOT EXISTS `#__imc_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `issueid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(2048) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `modality` smallint(6) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `moderation` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_issues`
--

CREATE TABLE IF NOT EXISTS `#__imc_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `stepid` text NOT NULL,
  `catid` int(11) NOT NULL,
  `regnum` varchar(128) NOT NULL,
  `regdate` datetime NOT NULL,
  `responsible` text NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `latitude` decimal(18,15) NOT NULL,
  `longitude` decimal(18,15) NOT NULL,
  `photo` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `moderation` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `hits` mediumint(8) NOT NULL,
  `note` varchar(512) NOT NULL,
  `extra` text NOT NULL,
  `votes` mediumint(8) NOT NULL,
  `modality` smallint(6) NOT NULL,
  `subgroup` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__imc_issues`
--

INSERT INTO `#__imc_issues` (`id`, `asset_id`, `title`, `alias`, `stepid`, `catid`, `regnum`, `regdate`, `responsible`, `description`, `address`, `latitude`, `longitude`, `photo`, `ordering`, `state`, `moderation`, `checked_out`, `checked_out_time`, `access`, `created`, `updated`, `created_by`, `updated_by`, `language`, `hits`, `note`, `extra`, `votes`, `modality`, `subgroup`) VALUES
(1, 65, 'One sample issue', '', '1', 8, '', '0000-00-00 00:00:00', '', 'Sample text', 'The address cannot be found', 40.626449000000000, 22.948426000000040, '{"isnew":1,"id":1473853868,"imagedir":"images/imc","files":[]}', 1, 1, 0, 0, '0000-00-00 00:00:00', 1, '2016-09-14 14:51:08', '2016-09-14 14:51:08', 951, 0, '*', 0, '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_keys`
--

CREATE TABLE IF NOT EXISTS `#__imc_keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `skey` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `quota` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_log`
--

CREATE TABLE IF NOT EXISTS `#__imc_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `issueid` int(11) NOT NULL,
  `stepid` text NOT NULL,
  `description` text NOT NULL,
  `action` varchar(512) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__imc_log`
--

INSERT INTO `#__imc_log` (`id`, `asset_id`, `issueid`, `stepid`, `description`, `action`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created`, `updated`, `created_by`, `updated_by`, `language`) VALUES
(1, 66, 1, '1', 'Initial commit at category Technical Services', 'step', 1, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:51:08', '2016-09-14 14:51:08', 951, 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_steps`
--

CREATE TABLE IF NOT EXISTS `#__imc_steps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `stepcolor` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__imc_steps`
--

INSERT INTO `#__imc_steps` (`id`, `asset_id`, `title`, `description`, `stepcolor`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created`, `updated`, `created_by`, `updated_by`, `language`) VALUES
(1, 60, 'Καταχωρήθηκε', '', '#5067c7', 1, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:49:18', '2016-10-10 13:17:51', 951, 0, 'en-GB'),
(2, 61, 'Γνωστοποιήθηκε', '', '#e69317', 2, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:49:53', '2016-10-10 13:18:01', 951, 0, 'en-GB'),
(3, 62, 'Σε εξέλιξη', '', '#19b04b', 3, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:50:20', '2016-10-10 13:18:12', 951, 0, 'en-GB'),
(4, 63, 'Κλειστό', '', '#c71010', 4, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:50:32', '2016-10-10 13:18:23', 951, 0, 'en-GB'),
(5, 64, 'Στο αρχείο', '', '#0f0d0d', 5, 1, 0, '0000-00-00 00:00:00', '2016-09-14 14:50:44', '2016-10-10 13:18:30', 951, 0, 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_tokens`
--

CREATE TABLE IF NOT EXISTS `#__imc_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `json_size` int(11) unsigned NOT NULL DEFAULT '0',
  `method` varchar(7) NOT NULL,
  `token` varchar(512) NOT NULL,
  `unixtime` varchar(12) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__imc_votes`
--

CREATE TABLE IF NOT EXISTS `#__imc_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `issueid` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `modality` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 67, 'el-GR', 'Greek', 'Ελληνικά', 'el', 'el', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=113 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 65, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 41, 42, 0, 'en-GB', 0),
(102, 'main', 'COM_IMC', 'com_imc', '', 'com_imc', 'index.php?option=com_imc', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_com_imc.png', 0, '{}', 43, 56, 0, '', 1),
(103, 'main', 'COM_IMC_TITLE_ISSUES', 'com_imc_title_issues', '', 'com_imc/com_imc_title_issues', 'index.php?option=com_imc&view=issues', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_issues.png', 0, '{}', 44, 45, 0, '', 1),
(104, 'main', 'COM_IMC_ISSUES_CATID', 'com_imc_issues_catid', '', 'com_imc/com_imc_issues_catid', 'index.php?option=com_categories&extension=com_imc', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_issues.png', 0, '{}', 46, 47, 0, '', 1),
(105, 'main', 'COM_IMC_TITLE_LOGS', 'com_imc_title_logs', '', 'com_imc/com_imc_title_logs', 'index.php?option=com_imc&view=logs', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_logs.png', 0, '{}', 48, 49, 0, '', 1),
(106, 'main', 'COM_IMC_TITLE_COMMENTS', 'com_imc_title_comments', '', 'com_imc/com_imc_title_comments', 'index.php?option=com_imc&view=comments', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_comments.png', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'COM_IMC_TITLE_STEPS', 'com_imc_title_steps', '', 'com_imc/com_imc_title_steps', 'index.php?option=com_imc&view=steps', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_steps.png', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'COM_IMC_TITLE_KEYS', 'com_imc_title_keys', '', 'com_imc/com_imc_title_keys', 'index.php?option=com_imc&view=keys', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imc/assets/images/s_keys.png', 0, '{}', 54, 55, 0, '', 1),
(109, 'mainmenu', 'Issues', 'issues', '', 'issues', 'index.php?option=com_imc&view=issues', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 10, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 57, 58, 1, 'en-GB', 0),
(110, 'main_menu_el', 'Αρχική', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 9, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 59, 60, 0, 'el-GR', 0),
(111, 'main_menu_el', 'Αιτήματα', 'issues-el', '', 'issues-el', 'index.php?option=com_imc&view=issues', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 12, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 61, 62, 1, 'el-GR', 0),
(112, 'rootmenu', 'Home', 'home21', '', 'home21', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 63, 64, 1, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 54, 'mainmenu', 'Main Menu (EN)', 'The main menu for the site in EN'),
(2, 68, 'main_menu_el', 'Main Menu (EL)', 'The main menu for the site in EL'),
(3, 69, 'rootmenu', 'Root Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"109","logout":"109","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2016-09-14 11:55:29', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Improve My City Google Map', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imcmap', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","execute_js":"jQuery(''#map-sidebar'').remove();jQuery(''#imc-left'').removeClass().addClass(''col-xs-12'');","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 56, 'Improve My City Filters', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imcfilters', 1, 1, '{"show_on_details":"1","show_help":"0","help_link":"","show_poweredby":"1","google_play_link":"","app_store_link":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 70, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 0, '{"header_text":"","footer_text":"","dropdown":"0","dropdownimage":"1","lineheight":"0","image":"1","show_active":"1","full_name":"1","inline":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 109),
(87, 111),
(88, 109),
(88, 111),
(89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__postinstall_messages`
--

INSERT INTO `#__postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_link_modifed` (`modified_date`),
  KEY `idx_old_url` (`old_url`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__schemas`
--

INSERT INTO `#__schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.0-2016-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `#__session`
--

CREATE TABLE IF NOT EXISTS `#__session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__session`
--

INSERT INTO `#__session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('4g6nmpq3supih829ogj1fjuqp5', 1, 0, '1476096283', '2tReZ-k-Jf1N7EdfTP0jolBspuDHVu7XUE0-PkJl7d0XJXIOupVnAq1IfU_0rGTinI67BbS-khRiILQ6QGJQFFn9KzQprP4aacERTbQ-PeNDVMtPfhO3qHyUBHeQj-Kid2RfUCd5sOLIK7wpuhN_MJFVS0TyrqSvzgU-IKdqyFHusKSuG01__PtPTWhX8Rw_ihGKmc0HNH9nVG9CKWbor-4Y_MhoX5aIEkH8J7dG9K0zCtdk7Vdw11AZdUCsa6qzSRuF30zBk-rUpZSfsIH7R9aZxar#__j9dLO7IpT0G_0NPp8vfXylTRsX-KBfLDoDD1JFTUA3rw0Jika2EfIrZSwQ--U1hksv-kDG5mNSzJBPL-QWcfUVuTTYq7pL8aIEFL1XP-G7nRwCiId49-tbJsGnvUnYRXSL0A1H4DtX9QJ3ncTUX3rLOvjpmMnRrILvXWvFM-2LhYtIW0kRaCdJ490VF56gZih4_XgUNqL1dVN3TSc8H7hjJvHaIEr_iV6zLMzABHlCg-g4fGNsSrn5BKuwYw2jzcCOC1J4p4hn3mETydOtzF2OG187ZB4QCXRBPBlOhJZD9HDCy3b1nkGPAIGQWPR_ppZ3lU9OZRppafJrwC8QmE0JcRsVWpI6FEJmn0_hbcE4rdaehewFWVYcoVYtX3XqkHS6Pp1uL8SGDMQIEWq2NhJC6Fik9CjyMIDIawkFRyuNtWD9duL569A2txMgnQPaMAlR7lmQ_ryIzo3uH-HDhjP0x9ayI_BTE_mKzcTlPs8vuBykcgwf1BYeTX4cqscR1hLK1a92Iop2VgCsFu6ZzuivKG8vrXgKe85Lknl27tjjXVnfTPHV4HBVRrscl97EdjizZlWcULOSCLvRjv88Gw0K1ix5lch0IvRwfpQgiLcO2OPZMcXsqJtwmaBZArWETWHltNtIG27ZyQhaupmlajSgkZdrc8oFiouq7hMwMRWNOVujgsufRCOdcgloJZMMAA9wh9mmEusGUSh_Ju3YqRXz34DNIS2CBwu2DhaiA4RC6u5HhSwSLu9_VyPex8orTIUF3HSTKgVvQkfFR3cW9B0LO_cJQHS_NCwQnpS2PZRsJQqnftvpzmKT4-G7LIY4f1tqkZ5jup9VxBH4ThcLomk0VgxYhMmcbZUo4nrAk1l1f23E4h-ifK3a0ZTboZr0U5GOzehJ-1I-TX0lhmjsPYt8gJeOfBhseg8__56-SLJDy5AWKE_cfbebqmvyOvKb9gAAZll2AYbKCRoUFYM_YzOgVsXw2yqWcY2fKPyJFttmjIQdyxlYIkd4M20XTECm0nILOMcRIgoCgBBrAcYTSeCauo6hba7-WkwtigCOBE9wJWvxOgGJb8sCtgV18BG2KTw22z1gMJXBfy1ygMKITij7kvMDYsnl6oSkDwhxd1S0R9KqZ489kyVqKS2zlYRQvofhjXz0HMmAsn-P8kp6gU_PPOPlNWsRk4hzPOfRY4dE2pgdevxfwaCt2DqD0vHLAp6HyFxJCfScW2ICiRCJrDcEADMqhXp3SOyLsJZ5jxS1epQ2mKNTj3r2rQjh3EiXMeUdYgUDtl5NgfMy9XHmg7_qSD8q5FoyambdYJwoU5acq8gBrDiU55wi-Kg38FTUA34jheQstIZnurB-EcRISAeDX7U_wvfVShM2DlyQ0HJUnp4kgO3s3HtM5YBzCc-2iLcBnaSPhYiSwov1y1zqG49-qh8HbGD2g01VQuGWxJDIO98Y2gKeC-dYZHkl5RwPfIML6EnwTTjuhDsZaUlCXfEQJuvZS2vJCReKohNIKiLGfbrXoOAdoRnqvH2ZX_XieDyfd5CKwyO263qRsPx7c0EvU56#__F82QGwC4dmUNu64sKfoVHveLoZJmrkhR1ov5ENVUzaiNsu9DfVvNa-J6dmqh4kimxCvtPo9tYqJw_Fx6c50wORoQc3Rs_9hdcDG0CR-lv4w6SpUQj2Q5UUyqdxe9ZhP-AdZi-3tPdL3jFu4TW0_GMi_SQMyAkSOPHGDMBif_ongA1B3VELXrrATniNv0_LCfjQNqxnnmH8Ub3-wfnswAedFB42Yj5MHi-pWst-C99mohSqe8Ewk01tTeJ1kuyytc_5hJPFp1li2h_usMjz3fGW6vZxrR04cwthO8ZVkP5wudAot9saM0a39cXuNGxUMQuzNPaqzWgzwD0w7Nq964oUuD-i-Do8wZ2qmwrK9X--qwboj-nkskeMhVcBPGzQRscX2-jKo_jGkr8Y3B3TuESTW1tk5fib67OuYPsS_D4LGqi8GYY6kFbyk5RZaksSNjneIrXUr_osjQaQ6EQdWxMsymr9nMbajJrEhTHz8_DHkjHPOtGMJ1M1VWrMV7RT8nROQKsB1fQqEWhleJyrbGaQAbTTiObhSXFzmNQg1EUmin6clXPnoxGDDFixHzhcCJnPw-OA1Xv63E#___LW8-3of5aNDUYZjXrxHvw1lQ9zZgF-QhL042QOmBt7qEiFISnHhK0b6n3BpoPQxxtbV6KzN2E6Nt5Zej9wQPX4GaAZReK0KkyJrq105BFQznuZNIU9_f02fX98jZ8LYDnl8hAXKZHSfCVotymye6idIVbxNM2Zl-bXqE4KTfavOBzJyUyVG3boEA5v5LaP8NW3sKIvQiRwwvjCU2f5TgsX2pkBXXqyqDJThvttZS-ObB-KZ9gmNMvhTfj7eBgr8FOA5LoRjb08eQ-CNtfKrPNEI4-nEzvb1ubidzGKTTWZRShRNx6uEM5UdddtWlOme-WH1zQJj5X5GVvx1N5dw5mvCQB7cORYh37Y3ceB6GyaR6MHeEmiUsKU96hFjHl6bPtBAkoymd5UWGWjV-CzKPczbz2h8503QGQasiS_4HyroqO4SAYlY8RGl6RwCIIh9Azlw6_W626KX6nlBZG2afLaxe6Mj4-LzOJiWCivbplnTes5T3OX9Nb0TSlSzw3SEIe02BJJ2HUIWV4J-ZsD1-Smygsgobcdqg2PzG5EG7jF5s2tqwm00vHvFu3May60fDJ4KSXpk8NDKK8qsMoi8mdsNcWq6WVq_2m5uSoWFUNGgkcWc1ag0Nw9a4fAWfX6xF2osI_FIhMymfi9YcHW-su_GiWRfzt53QRKxRgRIrsI0UDHAqUnVISC1vFhsXHiGBfjN8LuACvQn7lbR_mRzKZ8WQzIVnSBuoKw_vFzBFZE2ripei6lOd2InrIaILeOpp-7X7m4dlBd4KSQ7yPr0zUituXCWFS1cjIZikyDDrYpSSs3o86vT7fasiEkiYu2K8mORPz-zjnyExVn0lS-D1fjQaBxKJq6e8D3QgHLkf6d9zV7_XQwCeShBaGafy7a-ZKgQlcaxZ0rnDOH0eC_b2lOmz5czGXwUhc485TNbbQqfZY_S0atuYq1ax5VKDM0i9pXxg66zpcRPNiC5qA9U1JEqtaxS0QbjMFl1eIuYIBxq3NzR51RrqSk9MtiYKZ6BR_tD1NPt24CNigN5Az7j0jvdWVHGk1bnesfalg1QjZdkB1uVzPUme2nU4CmOlsK6RbvltI5KqCCb3HZVYve0NOoWjSRLR_FmbaTYS9sdsuOLEyFo9hBUH7UWHy3aP8glwdkVlYv4CT1r4NnzUnPMnrO6_OaRpkkZDNDci7fi0vO0y1OM9TG8eVfRTu4HjrJixrQPw3BJCG9nP2xfap3l-JUStkDc10iPoukgEyzKDspXTNaFeREdLkBkKdn9GDGzXX297JKwZRsg-5QP9XQenXvbSpgVYbk7peXrMjU3sPNfv9xwWA3iz_oeJlTi31LzmvNYqnn8kDFgdCDv5kgvDUM8Mgd_9ixcoYhZ_60szLH-C0Cq6oUI_ThhcdI16w9DaP3z5n52b9MT5urzMabXLFaI5pRcPJ8OZ7wj5_S1Ma0TrslReN1pejhKqAXtbfpN--zd63-Wf1p3ue-SOUSNdV-GNZj6svxAhCzXXiwXUpoHJcwwgo1eeyjZXsdI8kIn16sp3sh1BMiYXfx9cXG-YIPumJyD-BAqUkRLK3MxNubcsDxMAh6ZnHqE6xSInI5y5RNck2Io9DPJ8ZkS438Su3OQiGUZPe1F97wptwDmvK89zRXUsYQllc1BQs0orz4JUFDb_EJFAixrq5RBL4b7XeVGHF6G2X_2WAoZxpSN8grxY0XpwvU64EYharIEO8UOWAgHUoER9tFEWcinUozMdPY4g2fjKJq8Z7fpUt8xWP-eGMdjFAee-cPGzexTpQUcLFH42xNvGNp0F_We6nO3jHT1v59I0kDm4I-vbw6-wnnd_qJxqcF3918SDWq_D-S93k1gZXfF54v8Pgvrok_RT5Ynn8gmSoe6xF7hkpe0RHvH4pxhRQEqJ4nE2G6H8ifebF_7oiUQwBbiKT-afVlAL3ubtna7V3jqi7Gn2-Uq9rortRMenusWANpkc10OZmZL-96t6sQ7PXtFzy3r8VmGri2m-jJO8V8OaaMgZDl9dayho30l_fVwlsGhWxw554xhdnPBN6thIPzBB7r9CH8Cx2HNH6mWbiOmqu0nJdEYbtU9LAvKW0-E2hL9yVpil7dQ1-xQfDaQUPmv66UPH2KD4BV4D0e7AtUOV26C4z4ASVRkT7Et-OzU1r2-c1Q8BbdeZ8GwUq2MsIhM3_NfY3zHDv3v9FBCzcjabT0IdnvFMBxGXA8xYNlew-nR3W00_-xPPeO-PIuMRgA6CN4x61vhgN2v74XrgTGT9tFEBQcKi65IzKlWKxbwSmji5KBgwFI_xiS6W4luRIukjHD4vzZrRXgNAze1p8FPK0KZRqtbNaxaKKp08dHi2-HWUeQczmkdwMIQVgybWPVBxuumCLSzcTzHgICed-pBLILNdnqJuY98qfpVhsRp08T9M6Oe403tztjHuzNMSq06MtERHDOp1OMNj-3JNvB727DBtYaNZ1YdSkUT0lUwnAIrPV33lAPVygM5Cr3j4cxzk4mDwLAu83YF04TVn2UkNuzHS2upshCoXPSRjkbU1-1UOhGZnR8l1RUcuesfi763n-fC0sIijrp0h09WQIhTxS5xWmhdNHIPapymb9T9z1YEZA0dsI-w#__WXSRZsnmGdf_OEyk91z6cUjej-eibF8LUC1zGem8WzbUiQ0aMlBMqY3nbw3KxM_Sk3h7nI8RsrPB2QPQWw2qPxOb49N2Jhg66llzg8SK6Pk6BB9eCr7kyOEiLdlFYLxurrCjc4uBB3iVeWDllyf8GYqEEIFuaw6nWIYCeCP7-TNxellWSL4n6cXDn1ZMmxeBzmbs7409FC31pOk4YSDASVSDIxRtHe6IA-DVgkgB2ikcJhRpX7B-PYsTuPBDvOxjRakfonaMDsaKDv#__FcUMGGm9RFh-XqBIepGZLiW_0HsGkNtTNOLpYuCFFGs6pNGYhjlEg4e5ivp2KvL2COmMzRgwgXGwvwZUJtWD2slyCuo65iaXpKd_9DQl3-6Dxsn-RyImXi8GER3kFQ..', 951, 'admin'),
('7498v1jjjburahmca4ophtv2u4', 0, 1, '1476091936', 'RJIoQoiDMjlXz5EKvVEkpBoPZOdcxOAnnxPHdG-WHdSqCaAqp0q9R_r2qVQmuxO91vGPntdI3qlxyF-QlV6wFxrakcuqA90J5z8gRBAxbax7iqBR96z-2L5GHvVfsBJ17j6ZQh-uJs0_L72m_XBiVt4VtdzOwOmp8R9Oz7meakhPdnaMgYVgRHYbU0KU4bZVaqBf2QjEUi2IzLLZHPF5sUlwxxZKEwA_h2P52IHHzpyry3al8U5hiSp9MwyECIdPJ1Y1l0FNATlj6mneDuvXw-gFf9SJl9q_jSlwI0ukb_iUp5eriF3mWOvf8byOEQT2o6AC7lz4kf3F3aGQxzbrd5ZWRsShtX9BATjtDfPMtQCn-Vs7WEfx-KPjZ3F_L8f-ECntq1IcYxxm-sh6GhyLcfoDZ18wIZY_SGZM8HMYSCvznsTdz2tQ7KuvytRhVUMVLEpTHrGoLfLbKIsrCbpT2WbM4UYQ4Czx8wNfu9bC979-ikEhWUR11eo4LfppKs6EeD7v8kZRbIJzcUV_udieucDD9Py6EK1aHghNb0-2epDSGTMAOtg8OzyWgIkhvIazTVJFDJ7JOE0jH0uZK4wwg0TrFFhcZpY6t2acWxQqhlCY18i8J9fqAqoBDDMU19C0X-_IHN5h6_kmCFez647QOKGXhtJlwr9HJJY87ZJUARc9EbvYhxDVLbMzyFo6LSzCYdPMj8HvNzCJLoRZjewsDifESkQRNwCfo3tXosobGYrwMJHRb_ylOJpe0gC38txXlM0bALC396iYGk3DUDq_qHH_8mwGFT5YcWkpM-q_vy3sIWDA_FooCe5p02WlniCvhwMEGYyW7uHxLphyM-7253bmhQmCw5-g2nlqD2buKr-g_Y2Hw4AWncdAW8iYixwswWVJN5tpEk7NqdAnXlDbEw..', 0, ''),
('kovctdpgpfvs4f5u65a5hkfs53', 0, 1, '1476091936', 'Fkz95r7zKCeRSwKesgTvwQMPXPiuAYH3FiMs7MZ5pBGYGsQkFClaEnojD3jK6N1l_P_DI-TEdCBC1SJRJrFwp6z9aCA9h3eL3czf8KUR1EI94_3socS02tj07lPofzI-zyyVJzlw8wBQ0xuVQejYnEIStGgTQZ_cQjJOZYUXMlX4rQaq4LlPxTd0mbsomYwSxbLJWdcxoaTB0_0zdH97i58TIlzA3TzdwMndAlsd7sy1tvOxbIdAFchuopo4LUUjEZGK9bicWFwWwc_m4GBblh3ms9GHV2Fa0q7nwRE8jUGUPNdevgwg4gpjCEUZZic4AaNb9T71isyr0yl_bmTply2eVoMkq_2D2XNzufp2pFHJ89esjZpRbpx5mrn447EOA-W6tCH0YFlyMb1gcM99BJ6ddat1LbeHVwebHiijygozaADEuGbTbN6dImefReHPP51pveaUATiMiCUNeEartR2DTpC46izULflJqXCxGF7ZrlZgU5rww8kK0ZIfNh8o4AVCA_PBlVxljh9jUwrEJhRFlv6DtJBg9l0EEnPsUM4kvsYhcTmCWeo5f8nSZblMU6PBP21zUrRbX-XCmLbxPLc1tq2nXNiK8wYVND93cm5-tWrL3k18_QtjXONveJOk9hmRv142dHEmH4Ct39U79v89Zm9DEhynG14e1mjVXdIpgbP48O7ICOzBUdYTWp64kXvbNSXEiKQ9PN53a4wJF_CLzXCfzP6SztzAermX_2rgz8YPAlG22pvxQBA8OxRRoH4sCmD2C68Qv-qLMQiRgEKnt7t_zsdZvOvdV5CmGK50GJGkNHF_AXfgTdfr2S9tt40x0jq5Gs5OkMh-TvOvDC_IUITx1zL4f-qG2sw6iRfUiQ6RR0hEtib4h8rg_F-fo8_FPy1Aq2Bjbs0lWz7dzg..', 0, ''),
('sal0rtrfipe25i1mi734kc65k1', 0, 1, '1476096285', 's6YIaPsQqfJAX0-M29cRkUkK4jyc0Q5IWoaKoNpW-i0lB33wdVPHqG6IvR-aPmWIHPrvddwKuvIdcxJsdC0yN6EOAfTXTFyQ-KGYmtp4Aes6U7XLPVFeZi3indXwVtzQHtZBOPd_gvpZRooq3w_sY3FQF9kPpbeQEYVdJpfkn4xMZ6Ij2IxQh9X8OD5MygSloz7cE1p2YVxhi1hvF5j13IKLb6WQ_vzkc0IBGTd4E9dsEKvbrZYgI5-OIDWjPcUvQhGaIPX6JYXod5tKXz__Z8nTnvQIoM5zGYadzZNpIjGrqLhsVT76AHVMkENHu35WrIAT2uO66BYtOnfDFSTpW6XYTZBujP2SXYI6_ikf0-5RmFeA2BbYVE7qw-_WKTRlQSXPfHUk8Qh8cz4wt5wCPB6gLcaGSpLNCmaNtCHBT5oEiXHBpyzfrZKiHyD-25ne5M4KAMa4GHe2qi2vVUBZkJuP4pmF1HdVf6E8UmTKYbKeb5zBQpbGRqvgYfCJin5xSJGUqJNjMhpLi_uE7eiAkqBDdQa3Mxf1ZJI_ULnbtuxl5pg-nBonQWQCJt4LEg13s-3e8CsH6hNEPctfmtale0TUfs8dxYKud3H_qLBGphFSlc8A447Gfa4KszHJcVixQL9LsKBXu4GRqUIWSq0mdELPGw0SCFqXvrIgSHlwmb3dkuPKUxci19om4abvAnRJvur1mf7pGzn8BbRcCMxiOMpImhTooAmYBvInWlQBt4IV6UEJCSPpGUNqWijsrWiOqLxqRe-dp1fVKtZ8w7ZuXhNhXmboQKOUKu-g4jCErIufrp4KVcM7rYpAWlTPXocJdrPgP4tpsIxZ3sDGCUmB3c5hk_0hKtJgS1wwCr5n3Ydn1PTzN9WUmVOe71hE7L2zGG4gNoGA9TujIsJieFKxMW_-Iwsbpq8HKTBMckMvAZ9YfsGlgM0RSxbdOaziNUgqtZZgD-yilQSp6We5Bc6A3AUgjljZiTW2VLrQC1n5rxAq1EpD8W5Xm8I5D_V4kriv8u1J6UIpOqQjfL4DaeQZ98xMnBKwxLf4CYfMycrK8AbP8fHGe3-dQ2FEUO9rDiEFkYIFGrEQzG4fdcGrKZjhkfCOG_nO867LbN41uQOOnNaQsIX76C87onr_j2qej64BL1nMwtzirmRPMr0rTdJNmzEc-yEZfDwhRkHNcBZ1FBU.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__tags`
--

CREATE TABLE IF NOT EXISTS `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__tags`
--

INSERT INTO `#__tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'purity_iii', 0, '1', 'purity_III - Default', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":null,"link_titles":null,"theme":"","logotype":"text","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"blog","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":null,"navigation_animation_duration":"400","mm_config":null,"navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":null,"theme_extras_com_easyblog":null,"theme_extras_com_easydiscuss":null,"theme_extras_com_easysocial":null,"theme_extras_com_joomprofile":null,"theme_extras_com_kunena":null,"theme_extras_com_mijoshop":null,"theme_extras_layout_glossary":null}'),
(10, 'purity_iii', 0, '0', 'purity_III - IMC', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":null,"link_titles":null,"theme":"","logotype":"text","sitename":"IMC3","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"imc-layout","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":null,"navigation_animation_duration":"400","mm_config":null,"navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":null,"theme_extras_com_easyblog":null,"theme_extras_com_easydiscuss":null,"theme_extras_com_easysocial":null,"theme_extras_com_joomprofile":null,"theme_extras_com_kunena":null,"theme_extras_com_mijoshop":null,"theme_extras_layout_glossary":null}'),
(11, 'purity_iii', 0, '0', 'purity_III - Default (EL)', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":null,"link_titles":null,"theme":"","logotype":"text","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"blog","sublayout":"","mm_type":"main_menu_el","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":null,"navigation_animation_duration":"400","mm_config":null,"navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":null,"theme_extras_com_easyblog":null,"theme_extras_com_easydiscuss":null,"theme_extras_com_easysocial":null,"theme_extras_com_joomprofile":null,"theme_extras_com_kunena":null,"theme_extras_com_mijoshop":null,"theme_extras_layout_glossary":null}'),
(12, 'purity_iii', 0, 'el-GR', 'purity_III - IMC (EL)', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"text","sitename":"IMC3","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"imc-layout","sublayout":"","mm_type":"main_menu_el","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_base`
--

CREATE TABLE IF NOT EXISTS `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_content`
--

CREATE TABLE IF NOT EXISTS `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_history`
--

CREATE TABLE IF NOT EXISTS `#__ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=379 ;

--
-- Dumping data for table `#__updates`
--

INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(2, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(3, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(4, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(5, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.4', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(6, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(7, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(8, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(9, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(10, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(11, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(13, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(14, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(15, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(16, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(17, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(18, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(19, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(20, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(21, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(22, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(23, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(24, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(25, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(26, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(27, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(28, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(29, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(30, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(31, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(32, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(33, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(34, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(35, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(36, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(37, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(38, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(39, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(40, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(41, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.1.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(42, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(43, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(44, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(45, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(46, 4, 28, 'Joomla! Update Component Update', 'Joomla Update Component', 'com_joomlaupdate', 'component', '', 1, '3.6.1', '', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 'https://www.joomla.org/', ''),
(47, 5, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(48, 5, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(49, 5, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(50, 5, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(51, 5, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(52, 5, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(53, 5, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(54, 5, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.2.3', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(55, 5, 10003, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(56, 5, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(57, 5, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(58, 5, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(59, 5, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(60, 5, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.1.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(61, 5, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(62, 5, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(63, 5, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.1.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(64, 5, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(65, 5, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(66, 5, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(67, 5, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(68, 5, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(69, 5, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(70, 5, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(71, 5, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(72, 5, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(73, 5, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(74, 5, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(75, 7, 0, '', '', '', 'module', '', 0, '', '', 'http://update.joomlart.com/service/tracking/j16/.xml', '', ''),
(76, 7, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(77, 7, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(78, 7, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(79, 7, 0, 'JA Comment Package for Joomla 2.5 & 3.x', '', 'com_jacomment', 'component', '', 1, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(80, 7, 0, 'JA Extenstion Manager Component for J3.x', '', 'com_jaextmanager', 'component', '', 1, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '', ''),
(81, 7, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(82, 7, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(83, 7, 0, 'JA K2 Filter Package for J25 & J3.4', '', 'com_jak2filter', 'component', '', 1, '1.2.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(84, 7, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(85, 7, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(86, 7, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(87, 7, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(88, 7, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(89, 7, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(90, 7, 0, 'Theme Community Plus for Easyblog J25 & J30', '', 'easyblog_theme_community_plus', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_community_plus.xml', '', ''),
(91, 7, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(92, 7, 0, 'Theme Fixel for Easyblog J25 & J34', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(93, 7, 0, 'Theme Magz for Easyblog J25 & J34', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(94, 7, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(95, 7, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(96, 7, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', ''),
(97, 7, 0, 'JA Anion template for Joomla 3.x', '', 'ja_anion', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(98, 7, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(99, 7, 0, 'JA Argo Template for J3x', '', 'ja_argo', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(100, 7, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(101, 7, 0, 'JA Bistro Template for Joomla 3.x', '', 'ja_bistro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(102, 7, 0, 'JA Blazes Template for J25 & J3x', '', 'ja_blazes', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(103, 7, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(104, 7, 0, 'JA Brisk Template for J25 & J3x', '', 'ja_brisk', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(105, 7, 0, 'JA Business Template for Joomla 3.x', '', 'ja_business', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(106, 7, 0, 'JA Cloris Template for Joomla 3.x', '', 'ja_cloris', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(107, 7, 0, 'JA Community PLus Template for Joomla 3.x', '', 'ja_community_plus', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(108, 7, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(109, 7, 0, 'JA Droid Template for Joomla 3.x', '', 'ja_droid', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(110, 7, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(111, 7, 0, 'JA Elastica Template for J25 & J3x', '', 'ja_elastica', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(112, 7, 0, 'JA Erio Template for Joomla 2.5 & 3.x', '', 'ja_erio', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(113, 7, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(114, 7, 0, 'JA Fubix Template for J25 & J3x', '', 'ja_fubix', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(115, 7, 0, 'JA Graphite Template for Joomla 3x', '', 'ja_graphite', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(116, 7, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(117, 7, 0, 'JA Ironis Template for Joomla 2.5 & 3.x', '', 'ja_ironis', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(118, 7, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', '', ''),
(119, 7, 0, 'JA Kranos Template for J2.5 & J3.x', '', 'ja_kranos', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(120, 7, 0, 'JA Lens Template for Joomla 2.5 & 3.x', '', 'ja_lens', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(121, 7, 0, 'Ja Lime Template for Joomla 3x', '', 'ja_lime', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(122, 7, 0, 'JA Magz Template for J25 & J34', '', 'ja_magz', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(123, 7, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', '', ''),
(124, 7, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(125, 7, 0, 'JA Mero Template for J25 & J3x', '', 'ja_mero', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(126, 7, 0, 'JA Mers Template for J25 & J3x', '', 'ja_mers', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(127, 7, 0, 'JA Methys Template for Joomla 3x', '', 'ja_methys', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(128, 7, 0, 'Ja Minisite Template for Joomla 3.4', '', 'ja_minisite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(129, 7, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(130, 7, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(131, 7, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(132, 7, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(133, 7, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(134, 7, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', '', ''),
(135, 7, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(136, 7, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(137, 7, 0, 'JA ores template for Joomla 3.x', '', 'ja_ores', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(138, 7, 0, 'JA Orisite Template  for J25 & J3x', '', 'ja_orisite', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(139, 7, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', '', ''),
(140, 7, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(141, 7, 0, 'JA Portfolio Template for Joomla 3.x', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(142, 7, 0, 'JA Puresite Template for J25 & J3x', '', 'ja_puresite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(143, 7, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(144, 7, 0, 'JA Pyro Template for Joomla 3.x', '', 'ja_pyro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(145, 7, 0, 'JA Rasite Template for J34', '', 'ja_rasite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(146, 7, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(147, 7, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(148, 7, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(149, 7, 0, 'JA Social T3 Template for J25 & J3x', '', 'ja_social_t3', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_t3.xml', '', ''),
(150, 7, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', '', ''),
(151, 7, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(152, 7, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(153, 7, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(154, 7, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(155, 7, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(156, 7, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(157, 7, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(158, 7, 0, 'JA Tiris Template for J25 & J3x', '', 'ja_tiris', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(159, 7, 0, 'JA Travel Template for Joomla 3x', '', 'ja_travel', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(160, 7, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(161, 7, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', ''),
(162, 7, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(163, 7, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(164, 7, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(165, 7, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(166, 7, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(167, 7, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(168, 7, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(169, 7, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(170, 7, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(171, 7, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(172, 7, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(173, 7, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(174, 7, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(175, 7, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(176, 7, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(177, 7, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(178, 7, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(179, 7, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(180, 7, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(181, 7, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(182, 7, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(183, 7, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '4.1.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(184, 7, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(185, 7, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(186, 7, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(187, 7, 0, 'JA Tiris Jshopping theme for J25 & J3x', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(188, 7, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(189, 7, 0, 'JA Kranos kunena theme for Joomla 3.x', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(190, 7, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(191, 7, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(192, 7, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(193, 7, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(194, 7, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(195, 7, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', '', ''),
(196, 7, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(197, 7, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(198, 7, 0, 'Kunena theme for ja Techzone', '', 'kunena_theme_techzone', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_techzone.xml', '', ''),
(199, 7, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(200, 7, 0, 'JA Bookshop Theme for Mijoshop V2', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(201, 7, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(202, 7, 0, 'JA Decor Theme for Mijoshop V3', '', 'mijoshop_theme_decor_v3', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml', '', ''),
(203, 7, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', '', ''),
(204, 7, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(205, 7, 0, 'JA Accordion Module for J25 & J34', '', 'mod_jaaccordion', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(206, 7, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(207, 7, 0, 'JA Bulletin Module for J3.x', '', 'mod_jabulletin', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(208, 7, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(209, 7, 0, 'JA Content Popup Module for J25 & J34', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(210, 7, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(211, 7, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(212, 7, 0, 'JA Content Slider Module for J25 & J34', '', 'mod_jacontentslider', 'module', '', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(213, 7, 0, 'JA CountDown Module for Joomla 2.5 & 3.4', '', 'mod_jacountdown', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(214, 7, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(215, 7, 0, 'JA Facebook Like Box Module for Joonla 25 & 34', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(216, 7, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(217, 7, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(218, 7, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(219, 7, 0, 'JA Google chart 2', '', 'mod_jagooglechart_2', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jagooglechart_2.xml', '', ''),
(220, 7, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(221, 7, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.4', '', 'mod_jaimagehotspot', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(222, 7, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(223, 7, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(224, 7, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(225, 7, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(226, 7, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(227, 7, 0, 'JA K2 Filter Module for J25 & J3.4', '', 'mod_jak2filter', 'module', '', 0, '1.2.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(228, 7, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(229, 7, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(230, 7, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(231, 7, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(232, 7, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(233, 7, 0, 'JA Login module for J25 & J3x', '', 'mod_jalogin', 'module', '', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(234, 7, 0, 'JA Masshead Module for J25 & J34', '', 'mod_jamasshead', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(235, 7, 0, 'JA News Featured Module for J25 & J34', '', 'mod_janews_featured', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(236, 7, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(237, 7, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(238, 7, 0, 'JA News Pro Module for J25 & J3x', '', 'mod_janewspro', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(239, 7, 0, 'JA Newsticker Module for J3x', '', 'mod_janewsticker', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(240, 7, 0, 'JA Quick Contact Module for J3.x', '', 'mod_jaquickcontact', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(241, 7, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(242, 7, 0, 'JA SideNews Module for J25 & J34', '', 'mod_jasidenews', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(243, 7, 0, 'JA Slideshow Module for Joomla 2.5 & 3.x', '', 'mod_jaslideshow', 'module', '', 0, '2.7.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(244, 7, 0, 'JA Slideshow Lite Module for J25 & J3.4', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(245, 7, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(246, 7, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(247, 7, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(248, 7, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.4', '', 'mod_jatoppanel', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(249, 7, 0, 'JA Twitter Module for J25 & J3.4', '', 'mod_jatwitter', 'module', '', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(250, 7, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(251, 7, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(252, 7, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(253, 7, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.x', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(254, 7, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(255, 7, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(256, 7, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(257, 7, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.x', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(258, 7, 0, 'JA AVTracklist plugin for J2.5 & J3.x', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(259, 7, 0, 'JA Bookmark plugin for J3.x', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(260, 7, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(261, 7, 0, 'JA Disqus Debate Echo plugin for J3x', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(262, 7, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(263, 7, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(264, 7, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(265, 7, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(266, 7, 0, 'JA Typo Button Plugin for J25 & J3x', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(267, 7, 0, 'JA K2 Filter Plg for J25 & J3.4', '', 'jak2filter', 'plugin', 'k2', 0, '1.2.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(268, 7, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(269, 7, 0, 'Multi Captcha Engine Plugin for J3.x', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(270, 7, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(271, 7, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(272, 7, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(273, 7, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(274, 7, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.x', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(275, 7, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(276, 7, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(277, 7, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(278, 7, 0, 'JA System Google Map plugin for Joomla 2.5 & J3.4', '', 'jagooglemap', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(279, 7, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(280, 7, 0, 'JA System Lazyload Plugin for J25 & J3x', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(281, 7, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(282, 7, 0, 'JA Popup Plugin for Joomla 25 & 34', '', 'japopup', 'plugin', 'system', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(283, 7, 0, 'JA System Social Plugin for Joomla 3.x', '', 'jasocial', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(284, 7, 0, 'JA System Social Feed Plugin for Joomla 2.5 & 3.4', '', 'jasocial_feed', 'plugin', 'system', 0, '1.2.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(285, 7, 0, 'JA T3v2 System Plugin for J3.x', '', 'jat3', 'plugin', 'system', 0, '2.7.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(286, 7, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(287, 7, 0, 'JA Tabs Plugin for J3.x', '', 'jatabs', 'plugin', 'system', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(288, 7, 0, 'JA Typo Plugin for Joomla 2.5 & J34', '', 'jatypo', 'plugin', 'system', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(289, 7, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', '');
INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(290, 7, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(291, 7, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.2.1', '', 'http://update.joomlart.com/service/tracking/j16/tpl_t3_blank.xml', '', ''),
(292, 7, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', '', ''),
(293, 7, 0, 'Backend Template', '', 'backend_template_package', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j30/backend_template_package.xml', '', ''),
(294, 7, 0, 'Backend Template', '', 'backend_template_pkg', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j30/backend_template_pkg.xml', '', ''),
(295, 7, 0, 'JA Restaurant Template', '', 'ja_restaurant', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j30/ja_restaurant.xml', '', ''),
(296, 7, 0, 'T3 BS3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.2.1', '', 'http://update.joomlart.com/service/tracking/j30/tpl_t3_bs3_blank.xml', '', ''),
(297, 7, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', ''),
(298, 7, 0, 'JA Multilingual Component for Joomla 2.5 & 3.4', '', 'com_jalang', 'component', '', 1, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', '', ''),
(299, 7, 0, 'JA Intranet Theme for EasyBlog', '', 'easyblog_theme_intranet', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_intranet.xml', '', ''),
(300, 7, 0, 'JA Resume Theme for EasyBlog', '', 'easyblog_theme_resume', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_resume.xml', '', ''),
(301, 7, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', '', ''),
(302, 7, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', '', ''),
(303, 7, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', ''),
(304, 7, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', '', ''),
(305, 7, 0, 'JA Charity template', '', 'ja_charity', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_charity.xml', '', ''),
(306, 7, 0, 'JA Directory Template', '', 'ja_directory', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_directory.xml', '', ''),
(307, 7, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_edenite.xml', '', ''),
(308, 7, 0, 'JA Elicyon Template', '', 'ja_elicyon', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_elicyon.xml', '', ''),
(309, 7, 0, 'JA Events II template', '', 'ja_events_ii', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_events_ii.xml', '', ''),
(310, 7, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', '', ''),
(311, 7, 0, 'JA Healthcare Template', '', 'ja_healthcare', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_healthcare.xml', '', ''),
(312, 7, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', '', ''),
(313, 7, 0, 'JA Intranet Template', '', 'ja_intranet', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_intranet.xml', '', ''),
(314, 7, 0, 'JA Magz II Template', '', 'ja_magz_ii', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_magz_ii.xml', '', ''),
(315, 7, 0, 'JA Megastore Template', '', 'ja_megastore', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_megastore.xml', '', ''),
(316, 7, 0, 'JA Mono Template', '', 'ja_mono', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_mono.xml', '', ''),
(317, 7, 0, 'JA Moviemax Template', '', 'ja_moviemax', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_moviemax.xml', '', ''),
(318, 7, 0, 'JA Muzic Template', '', 'ja_muzic', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', '', ''),
(319, 7, 0, 'JA Platon Template', '', 'ja_platon', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_platon.xml', '', ''),
(320, 7, 0, 'JA Playstore Template', '', 'ja_playstore', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_playstore.xml', '', ''),
(321, 7, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_rave.xml', '', ''),
(322, 7, 0, 'JA Rent template', '', 'ja_rent', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_rent.xml', '', ''),
(323, 7, 0, 'JA Resume Template', '', 'ja_resume', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_resume.xml', '', ''),
(324, 7, 0, 'JA Simpli Template', '', 'ja_simpli', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_simpli.xml', '', ''),
(325, 7, 0, 'JA Social II template', '', 'ja_social_ii', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_social_ii.xml', '', ''),
(326, 7, 0, 'JA Techzone Template', '', 'ja_techzone', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_techzone.xml', '', ''),
(327, 7, 0, 'JA Teline V Template', '', 'ja_teline_v', 'template', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml', '', ''),
(328, 7, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/ja_university.xml', '', ''),
(329, 7, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_university_t3.xml', '', ''),
(330, 7, 0, 'JA Vintas Template for J25 & J3x', '', 'ja_vintas', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_vintas.xml', '', ''),
(331, 7, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_wall.xml', '', ''),
(332, 7, 0, 'Jomsocial theme for Platon', '', 'jomsocial_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/jomsocial_theme_platon.xml', '', ''),
(333, 7, 0, 'Theme Fixel for JShopping J25 & J34', '', 'jshopping_theme_fixel', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml', '', ''),
(334, 7, 0, 'JA Tiris Jshopping theme for J3x', '', 'jshopping_theme_tiris_j3x', 'custom', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_tiris_j3x.xml', '', ''),
(335, 7, 0, 'JA Mitius Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius.xml', '', ''),
(336, 7, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius_j31', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius_j31.xml', '', ''),
(337, 7, 0, 'Kunena Theme MovieMax', '', 'kunena_theme_moviemax', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_moviemax.xml', '', ''),
(338, 7, 0, 'Kunena Theme Platon', '', 'kunena_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_platon.xml', '', ''),
(339, 7, 0, 'Kunena Theme Playstore', '', 'kunena_theme_playstore', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_playstore.xml', '', ''),
(340, 7, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_tiris_j3x', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_tiris_j3x.xml', '', ''),
(341, 7, 0, 'Mijoshop Modules Accordion', '', 'mijoshop_mod_accordion', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion.xml', '', ''),
(342, 7, 0, 'Mijoshop V3 Modules Accordion', '', 'mijoshop_mod_accordion_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion_v3.xml', '', ''),
(343, 7, 0, 'Mijoshop Modules Slider', '', 'mijoshop_mod_slider', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider.xml', '', ''),
(344, 7, 0, 'Mijoshop V3 Modules Slider', '', 'mijoshop_mod_slider_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider_v3.xml', '', ''),
(345, 7, 0, 'JA Bookshop Theme for Mijoshop V3', '', 'mijoshop_theme_bookshop_v3', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_theme_bookshop_v3.xml', '', ''),
(346, 7, 0, 'JA Google Analytics', '', 'mod_jagoogle_analytics', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagoogle_analytics.xml', '', ''),
(347, 7, 0, 'JA Google Chart Module', '', 'mod_jagooglechart', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml', '', ''),
(348, 7, 0, 'JA Halloween Game for Joomla 3.x', '', 'mod_jahalloweengame', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jahalloweengame.xml', '', ''),
(349, 7, 0, 'JA K2 v3 Filter Module for J33', '', 'mod_jak2v3filter', 'module', '', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml', '', ''),
(350, 7, 0, 'JA Masthead Module ', '', 'mod_jamasthead', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jamasthead.xml', '', ''),
(351, 7, 0, 'JA Promo Bar module', '', 'mod_japromobar', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml', '', ''),
(352, 7, 0, 'Ja Yahoo Finance', '', 'mod_jayahoo_finance', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml', '', ''),
(353, 7, 0, 'Ja Yahoo Weather', '', 'mod_jayahoo_weather', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml', '', ''),
(354, 7, 0, 'Plugin Ajax JA Content Type', '', 'jacontenttype', 'plugin', 'ajax', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml', '', ''),
(355, 7, 0, 'JA K2 Data Migration plugin', '', 'plg_jak2tocomcontentmigration', 'plugin', 'plg_jak2tocomcontent', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocomcontentmigration.xml', '', ''),
(356, 7, 0, 'Plgin JA K2 import to Joomla Content', '', 'plg_jak2tocontent', 'plugin', 'plg_jak2tocontent', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocontent.xml', '', ''),
(357, 7, 0, 'JA K2 Extrafields', '', 'jak2extrafields', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2extrafields.xml', '', ''),
(358, 7, 0, 'JA K2 v3 Filter Plugin for J33', '', 'jak2v3filter', 'plugin', 'k2', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml', '', ''),
(359, 7, 0, 'JA System Designit Plugin', '', 'designit', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_designit.xml', '', ''),
(360, 7, 0, 'Plugin JA Content Type', '', 'jacontenttype', 'plugin', 'system', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml', '', ''),
(361, 7, 10010, 'Purity III Template', '', 'purity_iii', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', '', ''),
(362, 7, 0, 'Sample package for Uber App', '', 'uber_app', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_app.xml', '', ''),
(363, 7, 0, 'Sample package for Bookstore', '', 'uber_bookstore', 'sample_package', '', 0, '2.1.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_bookstore.xml', '', ''),
(364, 7, 0, 'Sample package for Uber Business', '', 'uber_business', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_business.xml', '', ''),
(365, 7, 0, 'Sample package for Uber Charity', '', 'uber_charity', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_charity.xml', '', ''),
(366, 7, 0, 'Sample package for Uber Church', '', 'uber_church', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_church.xml', '', ''),
(367, 7, 0, 'Sample package for Uber Construction', '', 'uber_construction', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_construction.xml', '', ''),
(368, 7, 0, 'Sample package for Uber Corporate', '', 'uber_corporate', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_corporate.xml', '', ''),
(369, 7, 0, 'Sample package for Uber Gym', '', 'uber_gym', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_gym.xml', '', ''),
(370, 7, 0, 'Sample package for Uber Home', '', 'uber_home', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_home.xml', '', ''),
(371, 7, 0, 'Sample package for Landing page', '', 'uber_landing', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_landing.xml', '', ''),
(372, 7, 0, 'Sample package for Uber Lawyer', '', 'uber_lawyer', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml', '', ''),
(373, 7, 0, 'Sample package for Uber Medicare', '', 'uber_medicare', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_medicare.xml', '', ''),
(374, 7, 0, 'Sample package for Uber Music', '', 'uber_music', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_music.xml', '', ''),
(375, 7, 0, 'Sample package for Uber Restaurant', '', 'uber_restaurant', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml', '', ''),
(376, 7, 0, 'Sample package for Uber Spa', '', 'uber_spa', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_spa.xml', '', ''),
(377, 7, 0, 'Sample package for Uber University', '', 'uber_university', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_university.xml', '', ''),
(378, 7, 0, 'Sample package for Uber Wedding', '', 'uber_wedding', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_wedding.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1476090158, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1476090159, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1476090159, ''),
(5, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1476090160, ''),
(6, 'ImproveMyCity', 'extension', 'http://www.improve-my-city.com/autoupdates-repo/imc3-update.xml', 1, 1476090160, ''),
(7, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1476090170, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 10003),
(6, 10004),
(7, 10010),
(7, 10011);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

CREATE TABLE IF NOT EXISTS `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `#__users`
--

CREATE TABLE IF NOT EXISTS `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `idx_name` (`name`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=954 ;

--
-- Dumping data for table `#__users`
--

INSERT INTO `#__users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(951, 'Super User', 'admin', 'admin@example.com', '$2y$10$j22CIjbJO6TkAld8tmHNIOIM3bcMi/evnUjwEDGu/Jaj2dOw9JXfy', 0, 1, '2013-07-24 09:07:43', '2016-10-10 09:02:35', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(952, 'User', 'user', 'user@example.com', '931d334de664be1135bed97fd9bb7b62:ZzvicSTnh9dr1Ln36G3MgkC9WSa9J4PW', 0, 0, '2013-07-24 09:23:03', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(953, 'Manager', 'manager', 'manager@example.com', 'e0f025cc620a663e172c8b25911e5c4e:44wqdHQWhDPcrRg5koGsWJ9Zlhr9WC5x', 0, 0, '2013-07-24 10:53:59', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__user_keys`
--

CREATE TABLE IF NOT EXISTS `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_notes`
--

CREATE TABLE IF NOT EXISTS `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_profiles`
--

CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__user_usergroup_map`
--

INSERT INTO `#__user_usergroup_map` (`user_id`, `group_id`) VALUES
(951, 8),
(952, 2),
(953, 6);

-- --------------------------------------------------------

--
-- Table structure for table `#__utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `#__utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__utf8_conversion`
--

INSERT INTO `#__utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
