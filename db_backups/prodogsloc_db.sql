-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.13 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица prodogs.loc.dogs_assets
CREATE TABLE IF NOT EXISTS `dogs_assets` (
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_assets: ~140 rows (приблизительно)
DELETE FROM `dogs_assets`;
/*!40000 ALTER TABLE `dogs_assets` DISABLE KEYS */;
INSERT INTO `dogs_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
	(1, 0, 0, 279, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
	(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
	(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
	(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
	(11, 1, 25, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
	(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
	(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
	(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
	(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
	(16, 1, 37, 46, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
	(17, 1, 47, 48, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(18, 1, 49, 110, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
	(19, 1, 111, 114, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(20, 1, 115, 116, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
	(21, 1, 117, 118, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
	(22, 1, 119, 120, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(23, 1, 121, 122, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
	(24, 1, 123, 126, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
	(26, 1, 127, 128, 1, 'com_wrapper', 'com_wrapper', '{}'),
	(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
	(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
	(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
	(30, 19, 112, 113, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
	(32, 24, 124, 125, 2, 'com_users.category.7', 'Uncategorised', '{}'),
	(33, 1, 129, 130, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(34, 1, 131, 132, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
	(35, 1, 133, 134, 1, 'com_tags', 'com_tags', '{}'),
	(36, 1, 135, 136, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
	(37, 1, 137, 138, 1, 'com_ajax', 'com_ajax', '{}'),
	(38, 1, 139, 140, 1, 'com_postinstall', 'com_postinstall', '{}'),
	(39, 18, 50, 51, 2, 'com_modules.module.1', 'Main Menu', '{}'),
	(40, 18, 52, 53, 2, 'com_modules.module.2', 'Login', '{}'),
	(41, 18, 54, 55, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
	(42, 18, 56, 57, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
	(43, 18, 58, 59, 2, 'com_modules.module.8', 'Toolbar', '{}'),
	(44, 18, 60, 61, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
	(45, 18, 62, 63, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
	(46, 18, 64, 65, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
	(47, 18, 66, 67, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
	(48, 18, 68, 69, 2, 'com_modules.module.14', 'User Status', '{}'),
	(49, 18, 70, 71, 2, 'com_modules.module.15', 'Title', '{}'),
	(50, 18, 72, 73, 2, 'com_modules.module.16', 'Login Form', '{}'),
	(51, 18, 74, 75, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
	(52, 18, 76, 77, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
	(53, 18, 78, 79, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
	(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Главное меню', '{}'),
	(55, 18, 80, 81, 2, 'com_modules.module.87', 'Sample Data', '{}'),
	(56, 11, 26, 27, 2, 'com_languages.language.2', 'Русский (Россия)', '{}'),
	(57, 1, 141, 158, 1, 'com_cobalt', 'com_cobalt', '{}'),
	(58, 18, 82, 83, 2, 'com_modules.module.88', 'Cobalt - Module - Categories', '{}'),
	(59, 18, 84, 85, 2, 'com_modules.module.89', 'Cobalt - Module - Filters', '{}'),
	(60, 18, 86, 87, 2, 'com_modules.module.90', 'Cobalt - Module - Who Follows User', '{}'),
	(61, 18, 88, 89, 2, 'com_modules.module.91', 'Cobalt - Module - Whom User Follows', '{}'),
	(62, 18, 90, 91, 2, 'com_modules.module.92', 'Cobalt - Module - Notifications', '{}'),
	(63, 18, 92, 93, 2, 'com_modules.module.93', 'Cobalt - Module - Article Participants', '{}'),
	(64, 18, 94, 95, 2, 'com_modules.module.94', 'Cobalt - Module - Records', '{}'),
	(65, 18, 96, 97, 2, 'com_modules.module.95', 'Cobalt - Module - Section Statictics', '{}'),
	(66, 18, 98, 99, 2, 'com_modules.module.96', 'Cobalt - Module - Submit Button', '{}'),
	(67, 18, 100, 101, 2, 'com_modules.module.97', 'Cobalt - Module - Tag Cloud', '{}'),
	(68, 18, 102, 103, 2, 'com_modules.module.98', 'Cobalt - Module - User Statictics', '{}'),
	(69, 57, 142, 143, 2, 'com_cobalt.type.1', 'Cobalt Content Type: Собака', '{}'),
	(70, 1, 159, 160, 1, 'com_cobalt.field.1', 'Изображение', '{}'),
	(71, 1, 161, 162, 1, 'com_cobalt.field.2', 'Примечание', '{}'),
	(72, 1, 163, 164, 1, 'com_cobalt.field.3', 'Кличка домашняя', '{}'),
	(73, 1, 165, 166, 1, 'com_cobalt.field.4', 'Кличка по родословной', '{}'),
	(74, 1, 167, 168, 1, 'com_cobalt.section.1', '', '{}'),
	(75, 57, 144, 145, 2, 'com_cobalt.type.2', 'Cobalt Content Type: Порода', '{}'),
	(76, 1, 169, 170, 1, 'com_cobalt.field.5', 'Изображение породы', '{}'),
	(77, 1, 171, 172, 1, 'com_cobalt.field.6', 'Описание породы', '{}'),
	(78, 1, 173, 174, 1, 'com_cobalt.section.2', '', '{}'),
	(79, 1, 175, 176, 1, 'com_cobalt.field.7', 'Собака', '{}'),
	(80, 1, 177, 178, 1, 'com_cobalt.field.8', 'Порода', '{}'),
	(81, 16, 40, 41, 2, 'com_menus.menu.2', 'Меню Собаковода', '{}'),
	(82, 18, 104, 105, 2, 'com_modules.module.99', 'Меню Собаковода', '{}'),
	(83, 1, 179, 180, 1, 'com_cobalt.field.9', 'Пол', '{}'),
	(84, 1, 181, 182, 1, 'com_cobalt.field.10', 'Дата рождения', '{}'),
	(85, 1, 183, 184, 1, 'com_cobalt.field.11', 'Дата смерти', '{}'),
	(86, 1, 185, 186, 1, 'com_cobalt.field.12', 'Номер РКФ/FCI', '{}'),
	(87, 1, 187, 188, 1, 'com_cobalt.field.13', 'Клеймо/Chip', '{}'),
	(88, 1, 189, 190, 1, 'com_cobalt.field.14', 'Окрас', '{}'),
	(89, 1, 191, 192, 1, 'com_cobalt.field.15', 'Высота в холке', '{}'),
	(90, 1, 193, 194, 1, 'com_cobalt.field.16', 'Вес', '{}'),
	(91, 1, 195, 196, 1, 'com_cobalt.field.17', 'Место нахождения', '{}'),
	(92, 57, 146, 147, 2, 'com_cobalt.type.3', 'Cobalt Content Type: Альбом', '{}'),
	(93, 1, 197, 198, 1, 'com_cobalt.field.18', 'Галлерея', '{}'),
	(94, 1, 199, 200, 1, 'com_cobalt.section.3', '', '{}'),
	(95, 1, 201, 202, 1, 'com_cobalt.field.19', 'Описание альбома', '{}'),
	(96, 1, 203, 204, 1, 'com_cobalt.field.20', 'Собака', '{}'),
	(97, 1, 205, 206, 1, 'com_cobalt.field.21', 'Альбом', '{}'),
	(98, 57, 148, 149, 2, 'com_cobalt.type.4', 'Cobalt Content Type: Видеоролик', '{}'),
	(99, 1, 207, 208, 1, 'com_cobalt.section.4', '', '{}'),
	(100, 1, 209, 210, 1, 'com_cobalt.field.22', 'Ссылка на видео', '{}'),
	(101, 1, 211, 212, 1, 'com_cobalt.field.23', 'Описание ролика', '{}'),
	(102, 1, 213, 214, 1, 'com_cobalt.field.24', 'Собака', '{}'),
	(103, 1, 215, 216, 1, 'com_cobalt.field.25', 'Видеоролик', '{}'),
	(104, 57, 150, 151, 2, 'com_cobalt.type.5', 'Cobalt Content Type: Питомник', '{}'),
	(105, 1, 217, 218, 1, 'com_cobalt.section.5', '', '{}'),
	(106, 1, 219, 220, 1, 'com_cobalt.field.26', 'Обложка питомника', '{}'),
	(107, 1, 221, 222, 1, 'com_cobalt.field.27', 'Описание питомника', '{}'),
	(108, 1, 223, 224, 1, 'com_cobalt.field.28', 'Заводчик', '{}'),
	(109, 1, 225, 226, 1, 'com_cobalt.field.29', 'E-mail', '{}'),
	(110, 16, 42, 43, 2, 'com_menus.menu.3', 'Меню Питомника', '{}'),
	(111, 18, 106, 107, 2, 'com_modules.module.100', 'Меню Питомника', '{}'),
	(112, 1, 227, 228, 1, 'com_cobalt.field.30', 'Мобильный телефон', '{}'),
	(113, 1, 229, 230, 1, 'com_cobalt.field.31', 'Телефон', '{}'),
	(114, 1, 231, 232, 1, 'com_cobalt.field.32', 'Skype', '{}'),
	(115, 1, 233, 234, 1, 'com_cobalt.field.33', 'Сайт', '{}'),
	(116, 1, 235, 236, 1, 'com_cobalt.field.34', 'Местоположение', '{}'),
	(117, 1, 237, 238, 1, 'com_cobalt.field.35', 'Факс', '{}'),
	(118, 1, 239, 240, 1, 'com_cobalt.field.36', 'Собака', '{}'),
	(119, 1, 241, 242, 1, 'com_cobalt.field.37', 'Питомник', '{}'),
	(120, 1, 243, 244, 1, 'com_cobalt.field.38', 'Питомник', '{}'),
	(121, 1, 245, 246, 1, 'com_cobalt.field.39', 'Порода', '{}'),
	(122, 16, 44, 45, 2, 'com_menus.menu.4', 'Меню Админа', '{}'),
	(123, 18, 108, 109, 2, 'com_modules.module.101', 'Меню Админа', '{}'),
	(124, 1, 247, 248, 1, 'com_fields', 'com_fields', '{}'),
	(125, 1, 249, 250, 1, 'com_associations', 'com_associations', '{}'),
	(126, 57, 152, 153, 2, 'com_cobalt.type.6', 'Cobalt Content Type: Новость', '{}'),
	(127, 1, 251, 252, 1, 'com_cobalt.section.6', '', '{}'),
	(128, 1, 253, 254, 1, 'com_cobalt.field.40', 'Изображение Новости', '{}'),
	(129, 1, 255, 256, 1, 'com_cobalt.field.41', 'Содержание новости', '{}'),
	(130, 57, 154, 155, 2, 'com_cobalt.type.7', 'Cobalt Content Type: Новость Питомника', '{}'),
	(131, 1, 257, 258, 1, 'com_cobalt.field.44', 'Новость', '{}'),
	(132, 1, 259, 260, 1, 'com_cobalt.field.45', 'Питомник', '{}'),
	(133, 1, 261, 262, 1, 'com_cobalt.field.42', 'Изображение Новости', '{}'),
	(134, 1, 263, 264, 1, 'com_cobalt.field.43', 'Содержание новости', '{}'),
	(135, 57, 156, 157, 2, 'com_cobalt.type.8', 'Cobalt Content Type: Родословная', '{}'),
	(136, 1, 265, 266, 1, 'com_cobalt.field.46', 'Номер родословной', '{}'),
	(137, 1, 267, 268, 1, 'com_cobalt.field.47', 'Дата родословной', '{}'),
	(138, 1, 269, 270, 1, 'com_cobalt.field.48', 'Фото родословной', '{}'),
	(139, 1, 271, 272, 1, 'com_cobalt.section.7', '', '{}'),
	(140, 1, 273, 274, 1, 'com_cobalt.field.49', 'Родословная', '{}'),
	(141, 1, 275, 276, 1, 'com_cobalt.field.50', 'Собака', '{}'),
	(142, 1, 277, 278, 1, 'com_cobalt.field.51', 'Организация', '{}');
/*!40000 ALTER TABLE `dogs_assets` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_associations
CREATE TABLE IF NOT EXISTS `dogs_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_associations: ~0 rows (приблизительно)
DELETE FROM `dogs_associations`;
/*!40000 ALTER TABLE `dogs_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_associations` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_banners
CREATE TABLE IF NOT EXISTS `dogs_banners` (
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
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_banners: ~0 rows (приблизительно)
DELETE FROM `dogs_banners`;
/*!40000 ALTER TABLE `dogs_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_banners` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_banner_clients
CREATE TABLE IF NOT EXISTS `dogs_banner_clients` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_banner_clients: ~0 rows (приблизительно)
DELETE FROM `dogs_banner_clients`;
/*!40000 ALTER TABLE `dogs_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_banner_clients` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_banner_tracks
CREATE TABLE IF NOT EXISTS `dogs_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_banner_tracks: ~0 rows (приблизительно)
DELETE FROM `dogs_banner_tracks`;
/*!40000 ALTER TABLE `dogs_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_banner_tracks` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_categories
CREATE TABLE IF NOT EXISTS `dogs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_categories: ~6 rows (приблизительно)
DELETE FROM `dogs_categories`;
/*!40000 ALTER TABLE `dogs_categories` DISABLE KEYS */;
INSERT INTO `dogs_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
	(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 784, '2018-10-05 08:34:45', 0, '0000-00-00 00:00:00', 0, '*', 1);
/*!40000 ALTER TABLE `dogs_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_contact_details
CREATE TABLE IF NOT EXISTS `dogs_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
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
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_contact_details: ~0 rows (приблизительно)
DELETE FROM `dogs_contact_details`;
/*!40000 ALTER TABLE `dogs_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_contact_details` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_content
CREATE TABLE IF NOT EXISTS `dogs_content` (
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
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_content: ~0 rows (приблизительно)
DELETE FROM `dogs_content`;
/*!40000 ALTER TABLE `dogs_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_content` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_contentitem_tag_map
CREATE TABLE IF NOT EXISTS `dogs_contentitem_tag_map` (
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

-- Дамп данных таблицы prodogs.loc.dogs_contentitem_tag_map: ~0 rows (приблизительно)
DELETE FROM `dogs_contentitem_tag_map`;
/*!40000 ALTER TABLE `dogs_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_contentitem_tag_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_content_frontpage
CREATE TABLE IF NOT EXISTS `dogs_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_content_frontpage: ~0 rows (приблизительно)
DELETE FROM `dogs_content_frontpage`;
/*!40000 ALTER TABLE `dogs_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_content_frontpage` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_content_rating
CREATE TABLE IF NOT EXISTS `dogs_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_content_rating: ~0 rows (приблизительно)
DELETE FROM `dogs_content_rating`;
/*!40000 ALTER TABLE `dogs_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_content_rating` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_content_types
CREATE TABLE IF NOT EXISTS `dogs_content_types` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_content_types: ~13 rows (приблизительно)
DELETE FROM `dogs_content_types`;
/*!40000 ALTER TABLE `dogs_content_types` DISABLE KEYS */;
INSERT INTO `dogs_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
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
/*!40000 ALTER TABLE `dogs_content_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_core_log_searches
CREATE TABLE IF NOT EXISTS `dogs_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_core_log_searches: ~0 rows (приблизительно)
DELETE FROM `dogs_core_log_searches`;
/*!40000 ALTER TABLE `dogs_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_core_log_searches` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_extensions
CREATE TABLE IF NOT EXISTS `dogs_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=10079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_extensions: ~243 rows (приблизительно)
DELETE FROM `dogs_extensions`;
/*!40000 ALTER TABLE `dogs_extensions` DISABLE KEYS */;
INSERT INTO `dogs_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
	(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"0","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"0","useractivation":"1","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":"","debugUsers":"1","debugGroups":"1","sef_advanced":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"98032dbae63626be907579623dbecce5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
	(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.38.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.8","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
	(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
	(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
	(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1539606476}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1539584275,"unique_id":"646b159ba1414416ca68f2fb7a5938d6af1af090","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{"name":"plg_system_sessiongc","type":"plugin","creationDate":"February 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION","group":"","filename":"sessiongc"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.13","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.13","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.13","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"October 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.13.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10000, 10002, 'CobaltRussianFrontend', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Cobalt Russian [Frontend]","type":"language","creationDate":"2012-07-08","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla.","authorEmail":"info@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10001, 10002, 'CobaltRussianBackend', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Cobalt Russian [Backend]","type":"language","creationDate":"2012-07-08","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla.","authorEmail":"info@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10002, 0, 'Cobalt Russian Language', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Cobalt Russian Language","type":"package","creationDate":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","author":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","copyright":"","authorEmail":"","authorUrl":"","version":"8.341","description":"Russian Language for Cobalt 8 by AsmuZ","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10003, 10075, 'Cobalt - Field - Uploads', 'file', 'uploads', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Uploads","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.28","description":"Cobalt - Field - Uploads: This is advanced uploads field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10004, 10075, 'com_cobalt', 'component', 'com_cobalt', '', 1, 1, 0, 0, '{"name":"com_cobalt","type":"component","creationDate":"November 2011","author":"MintJoomla","copyright":" (c) 2005-2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.742","description":"","group":"","filename":"cobalt"}', '{"general_upload":"uploads","folder_format":"Y-m","community":"G:\\\\OpenServer\\\\domains\\\\prodogs.loc\\\\components\\\\com_cobalt\\\\library\\\\php\\\\community\\/com_cobalt","moderator":"784","captcha":"recaptcha","general_copyright":"0","compatibility":"0","general_help":"1","gravatar":"1","cron_key":"","map_key":"AIzaSyAjjtBLrwGaA65Z4IaeT0u8gj_syhS9M1Q","sef_router":"main_router.php","sef_category":"0","filter_nofollow":"1","separator":":","robots":"","author":"","rights":"","metakey":"","metadesc":"","censor":"1","censor_words":"fuck, porn, porno, bitch","censor_replace":"CENSORED"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10005, 10075, 'Cobalt - Package - Library', 'library', 'mint', '', 0, 1, 1, 0, '{"name":"Cobalt - Package - Library","type":"library","creationDate":"November 2012","author":"MintJoomla","copyright":"Copyright (C) 2012","authorEmail":"support@mintjoomla.com","authorUrl":"www.mintjoomla.com","version":"8.111","description":"\\n    \\n\\tThis is MintJoomla - Cobal t8 Library Pack\\n\\t\\n\\t","group":"","filename":"mint"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10006, 10075, 'Cobalt - Module - Categories', 'module', 'mod_cobalt_category', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Categories","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.45","description":" Cobalt Categories Module ","group":"","filename":"mod_cobalt_category"}', '{"section_id":"","init_cat":"","show_section":"2","cat_empty":"1","cat_nums":"current","mode":"2","order":"1","subcat_limit":"5","section_class":"","header_text":"","footer_text":"","class_sfx":"","moduleclass_sfx":"","records":"0","records_limit":"5","orderby":"r.ctime DESC","levels":"Category","select_width":"150"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10007, 10075, 'Cobalt - Module - Filters', 'module', 'mod_cobalt_filters', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Filters","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.52","description":" Cobalt - Filters ","group":"","filename":"mod_cobalt_filters"}', '{"section_id":"","show_icons":"1","form_hide":"1","field_id_exclude":"","filter_fields_template":"module","filter_search":"1","filter_type_type":"1","filter_users_type":"1","filter_category_type":"1","filter_empty_cats":"1","filter_tags_type":"1","type_label":"Content Type","user_label":"Author","category_label":"Category","tag_label":"Tags","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10008, 10075, 'Cobalt - Module - Who Follows User', 'module', 'mod_cobalt_followers', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Who Follows User","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":" Cobalt followers or current user ","group":"","filename":"mod_cobalt_followers"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10009, 10075, 'Cobalt - Module - Whom User Follows', 'module', 'mod_cobalt_ifollow', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Whom User Follows","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":" Users that current user is following.  ","group":"","filename":"mod_cobalt_ifollow"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10010, 10075, 'Cobalt - Module - Notifications', 'module', 'mod_cobalt_notifications', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Notifications","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.29","description":" Cobalt - Notifications ","group":"","filename":"mod_cobalt_notifications"}', '{"section_id":"","moduleclass_sfx":"","height":"200","time":"3","limit":"5","noti_width":"320","noti_position":"bottom-left","noti_style":"bangTidy","ntmoo_parent":"","ntmoo_width":"300","ntmoo_height":"50","ntmoo_time":"5000","ntmoo_updtime":"60","ntmoo_sticky":"true","ntmoo_locationv":"top","ntmoo_locationh":"right","ntmoo_positionv":"10","ntmoo_positionh":"10","ntmoo_margin":"5","ntmoo_opacity_time":"750","ntmoo_close_time":"750","ntmoo_scroll_time":"250","ntmoo_opacity":"0.95","ntmoo_class":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10011, 10075, 'Cobalt - Module - Article Participants', 'module', 'mod_cobalt_participants', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Article Participants","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":" Cobalt Article Prticipants ","group":"","filename":"mod_cobalt_participants"}', '{"ava_style":"img-polaroid","ava_size":"32","limit":"10","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10012, 10075, 'Cobalt - Module - Records', 'module', 'mod_cobalt_records', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Records","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.68","description":" Cobalt Records ","group":"","filename":"mod_cobalt_records"}', '{"section_id":"","types":"","orderby":"r.ctime DESC","view_what":"","rsection_id":"","fvco":"0","ndays":"5","cat_restrict":"0","user_restrict":"0","tmpl":"","limit":"5","lang_mode":"0","force_itemid":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10013, 10075, 'Cobalt - Module - Section Statictics', 'module', 'mod_cobalt_sectionstatistics', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Section Statictics","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.28","description":" Cobalt Section Statictics ","group":"","filename":"mod_cobalt_sectionstatistics"}', '{"section_id":"","current_section":"0","records_num":"1","comments_num":"1","authors_num":"1","members_num":"1","views_num":"1","use_anonim":"1","moduleclass_sfx":"","records_num_label":"Articles","comments_num_label":"Comments","authors_num_label":"Authors","members_num_label":"Members","views_num_label":"Views"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10014, 10075, 'Cobalt - Module - Submit Button', 'module', 'mod_cobalt_submitbutton', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Submit Button","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.37","description":" Cobalt Submit new article button ","group":"","filename":"mod_cobalt_submitbutton"}', '{"section_id":"","types":"","display":"0","category":"0","follow":"0","label":"Add New %s","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10015, 10075, 'Cobalt - Module - Tag Cloud', 'module', 'mod_cobalt_tagcloud', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - Tag Cloud","type":"module","creationDate":"March 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.40","description":" Cobalt Tag Cloud ","group":"","filename":"mod_cobalt_tagcloud"}', '{"section_id":"","cat_ids":"","depends_on_cat":"0","depends_on_user":"0","tmpl":"default.php","ordering":"RAND()","show_section_name":"0","item_tag_num":"0","html_tags":"H1, H2, H3, H4, H5, H6, strong, b, em, big, small","limit":"50","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10016, 10075, 'Cobalt - Module - User Statictics', 'module', 'mod_cobalt_userstatistics', '', 0, 1, 0, 0, '{"name":"Cobalt - Module - User Statictics","type":"module","creationDate":"June 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla (http:\\/\\/www.mintjoomla.com). All rights reserved.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.19","description":" Cobalt User Statictics ","group":"","filename":"mod_cobalt_userstatistics"}', '{"section_id":"","current_section":"0","created":"1","comments_left":"1","commented":"1","readers":"1","use_anonim":"1","visited":"1","rating_average":"1","whofollow":"1","followed":"1","whofavorited":"1","favorited":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10017, 10075, 'Cobalt - Plugin - Formatter - CSV', 'plugin', 'formatter_csv', 'mint', 0, 1, 1, 0, '{"name":"Cobalt - Plugin - Formatter - CSV","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.10","description":"\\n\\t CSV formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_csv"}', '{"strip_html":"0","enclosed":"\\"","delimiter":",","field_format":"0","field_glue":", ","tmpl_list":"csv.php","tmpl_full":"csv.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10018, 10075, 'Cobalt - Plugin - Formatter - INI', 'plugin', 'formatter_ini', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - INI","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.21","description":"\\n\\t INI formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_ini"}', '{"tmpl_list":"xml.php","tmpl_full":"xml.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10019, 10075, 'Cobalt - Plugin - Formatter - Joomla Update Service', 'plugin', 'formatter_joomlaupdate', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - Joomla Update Service","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.21","description":"\\n\\t XML formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_joomlaupdate"}', '{"type_id":"","field_type":"","field_element":"","field_folder":"","field_client":"","field_version":"","field_tag":"","field_down":"","field_descr":"","server_name":"My Ste Extensions Updates","maintainer":"Your name","maintainerurl":"http:\\/\\/yoursite.com","targetplatform":"3.0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10020, 10075, 'Cobalt - Plugin - Formatter - JSON', 'plugin', 'formatter_json', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - JSON","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.22","description":"\\n\\t Json formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_json"}', '{"tmpl_list":"json.php","tmpl_full":"json.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10021, 10075, 'Cobalt - Plugin - Formatter - XML', 'plugin', 'formatter_xml', 'mint', 0, 0, 1, 0, '{"name":"Cobalt - Plugin - Formatter - XML","type":"plugin","creationDate":"October 15 2012","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.24","description":"\\n\\t XML formatter plugin for Cobalt 8 \\n\\t","group":"","filename":"formatter_xml"}', '{"tmpl_list":"xml.php","tmpl_full":"xml.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10022, 10075, 'Content - Plugin - Review/Discuss with Cobalt 8', 'plugin', 'cobalt', 'content', 0, 0, 1, 0, '{"name":"Content - Plugin - Review\\/Discuss with Cobalt 8","type":"plugin","creationDate":"October 2012","author":"MintJoomla","copyright":"Copyright (C) 2005 - 2012 MintJoomla. All rights reserved.","authorEmail":"support@mintjoomla.org","authorUrl":"www.mintjoomla.org","version":"8.15","description":"\\n        Inserts discussions\\/reviews into core Joomla articles. Use <code>{cobalt-discussion}<\\/code>\\n        in the text of the article or list categories in <code>In Categories<\\/code> parameter as IDs separated by coma. Eg: <code>3,12,4<\\/code>.\\n\\t\\n        ","group":"","filename":"cobalt"}', '{"section_id":"","orderby":"r.ctime DESC","tmpl":"default","limit":"10","rating":"1","rating_tmpl":"default","defcat":"","joomcat":"","descr":"","title":"Discussions","title_all":"All discussions of %s","button":"Start a Discussion","button_all":"All Discussions"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10023, 10075, 'Content - Glossary', 'plugin', 'glossary', 'content', 0, 0, 1, 0, '{"name":"Content - Glossary","type":"plugin","creationDate":"27 July 2011","author":"Mighty Extensions","copyright":"Copyright Mighty Extensions","authorEmail":"support@mightyextensions.com","authorUrl":"http:\\/\\/www.mightyextensions.com","version":"8.15","description":"This plugin allow you to turn Mighty resources section\\n\\t\\tinto glossary. In Mighty resources you create section and add articles\\n\\t\\tthere, that will be glossary list. Then in this plugin you select that\\n\\t\\tsection\\tand all words will be highlighted, linked and tooltiped. Good \\n\\t\\tis you can have public glossary list on the site, and even allow other \\n\\t\\tusers to submit new glossary elements. Note: You need turn on \\n\\t\\tglossary plugin in HTML field. Glossary works only in HTML field.\\n\\t","group":"","filename":"glossary"}', '{"link":"0","css":"cursor:pointer; background-color:yellow; text-decoration:underline;"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10024, 10075, 'Smart Search - Cobalt', 'plugin', 'cobalt', 'finder', 0, 1, 1, 0, '{"name":"Smart Search - Cobalt","type":"plugin","creationDate":"Jan 2012","author":"MightyExtensions","copyright":"Copyright (C) 2010 MightyExtensions - All rights reserved.","authorEmail":"info@mightyextensions.com","authorUrl":"http:\\/\\/www.mightyextensions.com","version":"8.13","description":"Cobalt smart search plugin.","group":"","filename":"cobalt"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10025, 10075, 'Cobalt - Plugin - Tools', 'plugin', 'toolset', 'mint', 0, 1, 1, 0, '{"name":"Cobalt - Plugin - Tools","type":"plugin","creationDate":"February 17 2009","author":"MintJoomla","copyright":"MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.50","description":"\\n\\t Tools plugin for Cobalt 7 \\n\\t","group":"","filename":"toolset"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10026, 10075, 'Search - Cobalt', 'plugin', 'cobalt', 'search', 0, 1, 1, 0, '{"name":"Search - Cobalt","type":"plugin","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Search Plugin for Cobalt","group":"","filename":"cobalt"}', '{"search_limit":"50","show_restricted":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10027, 10075, 'System - Cobalt', 'plugin', 'cobalt', 'system', 0, 1, 1, 0, '{"name":"System - Cobalt","type":"plugin","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.5","description":"Cobalt system plugin","group":"","filename":"cobalt"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10028, 10075, 'Cobalt - Comments - Cackle', 'file', 'cackle', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Cackle","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.15","description":"Cobalt - Comments - Cackle","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10029, 10075, 'Cobalt - Comments - Compojoom Joomla extension', 'file', 'ccomment', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Compojoom Joomla extension","type":"file","creationDate":"October 2013","author":"compojoom.com","copyright":"\\u00a9 2013 Compojoom","authorEmail":"daniel@compojoom.com","authorUrl":"https:\\/\\/compojoom.com","version":"8.1","description":"Content type to integrate with the CComment extension from compojoom","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10030, 10075, 'Cobalt - Comments - Cobalt Content Type', 'file', 'cobalt', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Cobalt Content Type","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.43","description":"Cobalt - Comments - Cobalt Content Type","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10031, 10075, 'Cobalt - Comments - Core', 'file', 'core', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Core","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Cobalt - Comments - Core is a build-in comment system","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10032, 10075, 'Cobalt - Comments - Custom', 'file', 'custom', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Custom","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - Custom to integrate ant JS based comment system","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10033, 10075, 'Cobalt - Comments - DISQUS', 'file', 'disqus', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - DISQUS","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.14","description":"Cobalt - Comments - DISQUS","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10034, 10075, 'Cobalt - Comments - Facebook', 'file', 'facebook', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Facebook","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - Facebook","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10035, 10075, 'Cobalt - Comments - IntenceDebate', 'file', 'intencedebate', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - IntenceDebate","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.8","description":"Cobalt - Comments - IntenceDebate","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10036, 10075, 'Cobalt - Comments - JComment', 'file', 'jcomment', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - JComment","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.11","description":"Cobalt - Comments - JComment","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10037, 10075, 'Cobalt - Comments - JLex', 'file', 'jlex', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - JLex","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":"Cobalt - Comments - JLex review extension","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10038, 10075, 'Cobalt - Comments - Komento', 'file', 'komento', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - Komento","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.18","description":"Cobalt - Comments - Komento","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10039, 10075, 'Cobalt - Comments - ВКонтакте', 'file', 'vk', '', 0, 1, 0, 0, '{"name":"Cobalt - Comments - \\u0412\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.9","description":"Cobalt - Comments - \\u0412\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10040, 10075, 'Cobalt - Gateway - PayPal', 'file', 'paypal', '', 0, 1, 0, 0, '{"name":"Cobalt - Gateway - PayPal","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Gateway - PayPal: This is payment gateway PayPal","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10041, 10075, 'Cobalt - Gateway - Robokassa', 'file', 'robokassa', '', 0, 1, 0, 0, '{"name":"Cobalt - Gateway - Robokassa","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.9","description":"Cobalt - Gateway - PayPal: This is payment gateway robokassa","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10042, 10075, 'Cobalt - Field - Audio', 'file', 'audio', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Audio","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.57","description":"Cobalt - Field - Audio: This is advanced audio field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10043, 10075, 'Cobalt - Field - Boolean', 'file', 'boolean', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Boolean","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.53","description":"Cobalt - Field - Boolean: This is advanced boolean field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10044, 10075, 'Cobalt - Field - Checkbox', 'file', 'checkbox', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Checkbox","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.67","description":"Cobalt - Field - Checkbox: This is advanced checkbox field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10045, 10075, 'Cobalt - Field - Datetime', 'file', 'datetime', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Datetime","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.118","description":"Cobalt - Field - Datetime: This is advanced datetime field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10046, 10075, 'Cobalt - Field - Digits', 'file', 'digits', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Digits","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - Digits: This is advanced digits field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10047, 10075, 'Cobalt - Field - Content Dripping', 'file', 'dripcontent', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Content Dripping","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.30","description":"Cobalt - Field - Content dripping: In combination with emerald provide step access to articles on time base or manually.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10048, 10075, 'Cobalt - Field - Email', 'file', 'email', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Email","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.76","description":"Cobalt - Field - Email: This is advanced email field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10049, 10075, 'Cobalt - Field - gallery', 'file', 'gallery', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - gallery","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.87","description":"Cobalt - Field - gallery: This is advanced gallery field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10050, 10075, 'Cobalt - Field - Address & Map', 'file', 'geo', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Address & Map","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.226","description":"Cobalt - Field - Address & Map","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10051, 10075, 'Cobalt - Field - HTML', 'file', 'html', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - HTML","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - HTML: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10052, 10075, 'Cobalt - Field - Image', 'file', 'image', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Image","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.68","description":"Cobalt - Field - Image: This is simple image field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10053, 10075, 'Cobalt - Field - J2Store', 'file', 'j2store', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - J2Store","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.4","description":"Cobalt - Field - Quick2Card: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10054, 10075, 'Cobalt - Field - List Autocomplete', 'file', 'listautocomplete', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - List Autocomplete","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.48","description":"Cobalt - Field - List Autocomplete: This is advanced listautocomplete field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10055, 10075, 'Cobalt - Field - Multi Level Select', 'file', 'multilevelselect', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Multi Level Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.79","description":"Cobalt - Field - Multi Level Select: This is advanced multiple level select field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10056, 10075, 'Cobalt - Field - Multiple Select', 'file', 'multiselect', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Multiple Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.44","description":"Cobalt - Field - Multiple Select: This is advanced multiselect field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10057, 10075, 'Cobalt - Field - Password', 'file', 'passwd', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Password","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.26","description":"Cobalt - Field - Password: This is advanced Password field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10058, 10075, 'Cobalt - Field - Pay To Access', 'file', 'paytoaccess', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay To Access","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.34","description":"Cobalt - Field - Pay To Access: This is advanced payment field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10059, 10075, 'Cobalt - Field - Pay To Download', 'file', 'paytodownload', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay To Download","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Field - Pay To Download: This is advanced payment field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10060, 10075, 'Cobalt - Field - Pay Voucher', 'file', 'payvoucher', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Pay Voucher","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.25","description":"Cobalt - Field - Pay Voucher: sell pin codes, vouchers, activation codes, ...","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10061, 10075, 'Cobalt - Field - Quick2Cart', 'file', 'q2c', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Quick2Cart","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.2","description":"Cobalt - Field - Quick2Card: This is advanced editor field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10062, 10075, 'Cobalt - Field - Radio', 'file', 'radio', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Radio","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.35","description":"Cobalt - Field - Radio: This is advanced radio field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10063, 10075, 'Cobalt - Field - Read also', 'file', 'readmore', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Read also","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.29","description":"Cobalt - Field - Read also: This is advanced Read also field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10064, 10075, 'Cobalt - Field - Records', 'file', 'records', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Records","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.35","description":"Cobalt - Field - Records: This is advanced records field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10065, 10075, 'Cobalt - Field - Register', 'file', 'register', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Register","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.38","description":"Cobalt - Field - register: Allows to create account along with record submission","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10066, 10075, 'Cobalt - Field - Related Access', 'file', 'related_access', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Related Access","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.7","description":"Cobalt - Field - Related Access: restrict access to article based on the plan selected in parent.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10067, 10075, 'Cobalt - Field - Relations (Child and Parent)', 'file', 'relation', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Relations (Child and Parent)","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.76","description":"Cobalt - Field - Relation: This is advanced Relation field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10068, 10075, 'Cobalt - Field - Select', 'file', 'select', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Select","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.37","description":"Cobalt - Field - Select: This is advanced select field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10069, 10075, 'Cobalt - Field - Status', 'file', 'status', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Status","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.54","description":"Cobalt - Field - Status: This is advanced status field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10070, 10075, 'Cobalt - Field - Telephone', 'file', 'telephone', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Telephone","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.31","description":"Cobalt - Field - Telephone: This is advanced telephone field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10071, 10075, 'Cobalt - Field - Text', 'file', 'text', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Text","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.53","description":"Cobalt - Field - Text: This is advanced text field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10072, 10075, 'Cobalt - Field - Textarea', 'file', 'textarea', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Textarea","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.52","description":"Cobalt - Field - Textarea: This is advanced textarea field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10073, 10075, 'Cobalt - Field - URL', 'file', 'url', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - URL","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.70","description":"Cobalt - Field - URL: This is advanced URL field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10074, 10075, 'Cobalt - Field - Video', 'file', 'video', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - Video","type":"file","creationDate":"April 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.85","description":"Cobalt - Field - Video: This is advanced video field","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10075, 0, 'Cobalt - Package - All', 'package', 'pkg_cobaltpack', '', 0, 1, 1, 0, '{"name":"Cobalt - Package - All","type":"package","creationDate":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","author":"\\u041d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439","copyright":"","authorEmail":"","authorUrl":"","version":"8.742","description":"\\n\\t\\t<div class=\\"hero-unit\\" style=\\"text-align: left;\\">\\n\\t\\t\\t<h1>Cobalt 8 CCK <small><b>Mint<\\/b>Joomla<\\/small><\\/h1>\\n\\t\\t\\t<p>Cobalt 8 is a great extension to aid in the design of components and content for your site.\\n\\t\\t\\tYou can use it to create hundreds of different sections of your site.<\\/p>\\n\\t\\t\\t<br>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.mintjoomla.com\\/download\\/joomla-3\\/item\\/9-cobalt-cck\\/101-mint-media-pack.html\\" target=\\"_blank\\" class=\\"btn btn-large btn-primary\\">Get more stuff by MintJoomla<\\/a>\\n\\t\\t\\t<a href=\\"http:\\/\\/www.mintjoomla.com\\/community\\/depot.html\\" target=\\"_blank\\" class=\\"btn btn-large\\">Get more stuff by 3<sup>rd<\\/sup> party<\\/a>\\n\\t\\t<\\/div>\\n\\t\\t<p class=\\"alert alert-error\\">Do not forget to download and install\\n\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/www.mintjoomla.com\\/downloads\\/item\\/9-cobalt-7\\/101-mint-media-pack.html\\">Cobalt Media Pack<\\/a> and\\n\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/www.mintjoomla.com\\/download\\/joomla-3\\/item\\/24-templates\\/87-templates.html\\">Advanced templates<\\/a>\\n\\t\\t.<\\/p>\\n\\t\\t<div class=\\"well\\" style=\\"text-align:left;\\">\\n\\t\\t\\t<h2>You have successfully installed Everything package!<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Cobalt 8 Extension<\\/li>\\n\\t\\t\\t\\t<li>MintJoomla library<\\/li>\\n\\t\\t\\t\\t<li>Advanced templates<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Module Tag Cloud<\\/li>\\n\\t\\t\\t\\t<li>Module Categories<\\/li>\\n\\t\\t\\t\\t<li>Module Section Statictics<\\/li>\\n\\t\\t\\t\\t<li>Module User Statictics<\\/li>\\n\\t\\t\\t\\t<li>Module Filters<\\/li>\\n\\t\\t\\t\\t<li>Module Notifications<\\/li>\\n\\t\\t\\t\\t<li>Module Records<\\/li>\\n\\t\\t\\t\\t<li>Module Participants<\\/li>\\n\\t\\t\\t\\t<li>Module Who folloes user<\\/li>\\n\\t\\t\\t\\t<li>Module Whom user follow<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Payment Gateway PayPal<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Plugin Toolset<\\/li>\\n\\t\\t\\t\\t<li>Plugin Joomla Search<\\/li>\\n\\t\\t\\t\\t<li>Plugin Glossary<\\/li>\\n\\t\\t\\t\\t<li>Plugin Review\\/Discussion<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter INI<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter XML<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter JSON<\\/li>\\n\\t\\t\\t\\t<li>Plugin Formatter Joomla Update Service<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Comment Adapter Core<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter <a href=\\"http:\\/\\/stackideas.com\\/komento.html\\">Komento (By Stackideas)<\\/a><\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter JComment<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Cobalt<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter VK<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Facebook<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter DISQUS<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter IntenceDeate<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Cackle<\\/li>\\n\\t\\t\\t\\t<li>Comment Adapter Custom<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Field Boolean<\\/li>\\n\\t\\t\\t\\t<li>Field Checkbox<\\/li>\\n\\t\\t\\t\\t<li>Field HTML<\\/li>\\n\\t\\t\\t\\t<li>Field Image<\\/li>\\n\\t\\t\\t\\t<li>Field Multiple Select<\\/li>\\n\\t\\t\\t\\t<li>Field Password<\\/li>\\n\\t\\t\\t\\t<li>Field Radio<\\/li>\\n\\t\\t\\t\\t<li>Field Select<\\/li>\\n\\t\\t\\t\\t<li>Field Text<\\/li>\\n\\t\\t\\t\\t<li>Field Textarea<\\/li>\\n\\t\\t\\t\\t<li>Field Audio<\\/li>\\n\\t\\t\\t\\t<li>Field Datetime<\\/li>\\n\\t\\t\\t\\t<li>Field Digits<\\/li>\\n\\t\\t\\t\\t<li>Field Email<\\/li>\\n\\t\\t\\t\\t<li>Field Gallery<\\/li>\\n\\t\\t\\t\\t<li>Field Geo<\\/li>\\n\\t\\t\\t\\t<li>Field list Autocomplete<\\/li>\\n\\t\\t\\t\\t<li>Field Multilevel Select<\\/li>\\n\\t\\t\\t\\t<li>Field Pay to access<\\/li>\\n\\t\\t\\t\\t<li>Field Pay voucher<\\/li>\\n\\t\\t\\t\\t<li>Field Pay to download<\\/li>\\n\\t\\t\\t\\t<li>Field Read also<\\/li>\\n\\t\\t\\t\\t<li>Field Records<\\/li>\\n\\t\\t\\t\\t<li>Field Relations (Parent and Child)<\\/li>\\n\\t\\t\\t\\t<li>Field Status<\\/li>\\n\\t\\t\\t\\t<li>Field Telephone<\\/li>\\n\\t\\t\\t\\t<li>Field Uploads<\\/li>\\n\\t\\t\\t\\t<li>Field Url<\\/li>\\n\\t\\t\\t\\t<li>Field Video<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\n\\t\\t\\t<h2>What is next?<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/www.mintjoomla.com\\/community\\/knowledge\\/user-item\\/43-sergey\\/109-cobalt-quick-start.html\\" target=\\"_blank\\">Read and watch quick start tutorial<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/support.mintjoomla.com\\" target=\\"_blank\\">Ask questions and get support<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a href=\\"http:\\/\\/www.mintjoomla.com\\/blog.html\\" target=\\"_blank\\">We release updates every week. Please do not forget to subscribe or check our blog were we announce.<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t<\\/div>\\n\\t\\t<br><br>\\n\\t","group":"","filename":"pkg_cobaltpack"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10076, 0, 'Cobalt - Package - Mediа', 'file', 'mint', '', 0, 1, 0, 0, '{"name":"Cobalt - Package - Medi\\u0430","type":"file","creationDate":"November 2012","author":"MintJoomla","copyright":"(C) 2005 - 2012 MintJoomla.","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.90","description":"\\n\\tThis is MintJoomla - Cobalt 8 Media Pack\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10077, 0, 'Cobalt - Additional Templates', 'file', 'install', '', 0, 1, 0, 0, '{"name":"Cobalt - Additional Templates","type":"file","creationDate":"March 2012","author":"MintJoomla","copyright":"(c) 2012 MintJoomla","authorEmail":"support@mintjoomla.com","authorUrl":"http:\\/\\/www.mintjoomla.com","version":"8.1090","description":"Cobalt 8 - Additional templates","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10078, 0, 'Cobalt - Field - AK Image', 'file', 'akimage', '', 0, 1, 0, 0, '{"name":"Cobalt - Field - AK Image","type":"file","creationDate":"August 2014","author":"Idea by AsmuZ. Made by Alexander Khmelnitskiy","copyright":"(c) 2014 alexander.khmelnitskiy.ua","authorEmail":"info@alexander.khmelnitskiy","authorUrl":"http:\\/\\/alexander.khmelnitskiy.ua","version":"1.0","description":"\\n            \\n            Cobalt - Field - AK Image by <a href=\\"http:\\/\\/alexander.khmelnitskiy.ua\\" target=\\"_blank\\">alexander.khmelnitskiy.ua<\\/a><br \\/><br \\/>Idea by <a href=\\"http:\\/\\/asmuz.ru\\" target=\\"_blank\\">www.AsmuZ.ru<\\/a>\\n            \\n        ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `dogs_extensions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_fields
CREATE TABLE IF NOT EXISTS `dogs_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_fields: ~0 rows (приблизительно)
DELETE FROM `dogs_fields`;
/*!40000 ALTER TABLE `dogs_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_fields_categories
CREATE TABLE IF NOT EXISTS `dogs_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_fields_categories: ~0 rows (приблизительно)
DELETE FROM `dogs_fields_categories`;
/*!40000 ALTER TABLE `dogs_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_fields_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_fields_groups
CREATE TABLE IF NOT EXISTS `dogs_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_fields_groups: ~0 rows (приблизительно)
DELETE FROM `dogs_fields_groups`;
/*!40000 ALTER TABLE `dogs_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_fields_groups` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_fields_values
CREATE TABLE IF NOT EXISTS `dogs_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_fields_values: ~0 rows (приблизительно)
DELETE FROM `dogs_fields_values`;
/*!40000 ALTER TABLE `dogs_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_fields_values` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_filters
CREATE TABLE IF NOT EXISTS `dogs_finder_filters` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_filters: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_filters`;
/*!40000 ALTER TABLE `dogs_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_filters` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links
CREATE TABLE IF NOT EXISTS `dogs_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
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
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links`;
/*!40000 ALTER TABLE `dogs_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms0
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms0: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms0`;
/*!40000 ALTER TABLE `dogs_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms0` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms1
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms1: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms1`;
/*!40000 ALTER TABLE `dogs_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms1` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms2
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms2: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms2`;
/*!40000 ALTER TABLE `dogs_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms2` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms3
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms3: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms3`;
/*!40000 ALTER TABLE `dogs_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms3` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms4
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms4: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms4`;
/*!40000 ALTER TABLE `dogs_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms4` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms5
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms5: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms5`;
/*!40000 ALTER TABLE `dogs_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms5` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms6
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms6: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms6`;
/*!40000 ALTER TABLE `dogs_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms6` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms7
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms7: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms7`;
/*!40000 ALTER TABLE `dogs_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms7` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms8
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms8: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms8`;
/*!40000 ALTER TABLE `dogs_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms8` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms9
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_terms9: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_terms9`;
/*!40000 ALTER TABLE `dogs_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_terms9` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsa
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termsa: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termsa`;
/*!40000 ALTER TABLE `dogs_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termsa` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsb
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termsb: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termsb`;
/*!40000 ALTER TABLE `dogs_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termsb` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsc
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termsc: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termsc`;
/*!40000 ALTER TABLE `dogs_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termsc` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsd
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termsd: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termsd`;
/*!40000 ALTER TABLE `dogs_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termsd` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termse
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termse: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termse`;
/*!40000 ALTER TABLE `dogs_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termse` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsf
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_links_termsf: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_links_termsf`;
/*!40000 ALTER TABLE `dogs_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_links_termsf` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_taxonomy
CREATE TABLE IF NOT EXISTS `dogs_finder_taxonomy` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_taxonomy: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_taxonomy`;
/*!40000 ALTER TABLE `dogs_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `dogs_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
	(1, 0, 'ROOT', 0, 0, 0);
/*!40000 ALTER TABLE `dogs_finder_taxonomy` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_taxonomy_map
CREATE TABLE IF NOT EXISTS `dogs_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_taxonomy_map: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_taxonomy_map`;
/*!40000 ALTER TABLE `dogs_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_taxonomy_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_terms
CREATE TABLE IF NOT EXISTS `dogs_finder_terms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_terms: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_terms`;
/*!40000 ALTER TABLE `dogs_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_terms` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_terms_common
CREATE TABLE IF NOT EXISTS `dogs_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_terms_common: ~110 rows (приблизительно)
DELETE FROM `dogs_finder_terms_common`;
/*!40000 ALTER TABLE `dogs_finder_terms_common` DISABLE KEYS */;
INSERT INTO `dogs_finder_terms_common` (`term`, `language`) VALUES
	('a', 'en'),
	('about', 'en'),
	('after', 'en'),
	('ago', 'en'),
	('all', 'en'),
	('am', 'en'),
	('an', 'en'),
	('and', 'en'),
	('any', 'en'),
	('are', 'en'),
	('aren\'t', 'en'),
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
	('isn\'t', 'en'),
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
	('nothing', 'en'),
	('of', 'en'),
	('off', 'en'),
	('often', 'en'),
	('old', 'en'),
	('on', 'en'),
	('onc', 'en'),
	('once', 'en'),
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
/*!40000 ALTER TABLE `dogs_finder_terms_common` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_tokens
CREATE TABLE IF NOT EXISTS `dogs_finder_tokens` (
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

-- Дамп данных таблицы prodogs.loc.dogs_finder_tokens: 0 rows
DELETE FROM `dogs_finder_tokens`;
/*!40000 ALTER TABLE `dogs_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_tokens` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_tokens_aggregate
CREATE TABLE IF NOT EXISTS `dogs_finder_tokens_aggregate` (
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

-- Дамп данных таблицы prodogs.loc.dogs_finder_tokens_aggregate: 0 rows
DELETE FROM `dogs_finder_tokens_aggregate`;
/*!40000 ALTER TABLE `dogs_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_tokens_aggregate` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_finder_types
CREATE TABLE IF NOT EXISTS `dogs_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы prodogs.loc.dogs_finder_types: ~0 rows (приблизительно)
DELETE FROM `dogs_finder_types`;
/*!40000 ALTER TABLE `dogs_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_finder_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_ip_2_country
CREATE TABLE IF NOT EXISTS `dogs_js_ip_2_country` (
  `ip_from` int(10) NOT NULL DEFAULT '0',
  `ip_to` int(10) NOT NULL DEFAULT '0',
  `short_code` varchar(2) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  KEY `0` (`ip_from`),
  KEY `1` (`ip_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_ip_2_country: 0 rows
DELETE FROM `dogs_js_ip_2_country`;
/*!40000 ALTER TABLE `dogs_js_ip_2_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_ip_2_country` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_audit_log
CREATE TABLE IF NOT EXISTS `dogs_js_res_audit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `event` tinyint(3) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(16) NOT NULL DEFAULT 'Not detected',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_type` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_audit_log: 0 rows
DELETE FROM `dogs_js_res_audit_log`;
/*!40000 ALTER TABLE `dogs_js_res_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_audit_log` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_audit_restore
CREATE TABLE IF NOT EXISTS `dogs_js_res_audit_restore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(11) DEFAULT '0',
  `dtime` datetime DEFAULT '0000-00-00 00:00:00',
  `comments` longtext,
  `favorites` text,
  `files` text,
  `hits` text,
  `subscriptions` text,
  `votes` text,
  `notifications` text,
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_audit_restore: 0 rows
DELETE FROM `dogs_js_res_audit_restore`;
/*!40000 ALTER TABLE `dogs_js_res_audit_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_audit_restore` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_audit_versions
CREATE TABLE IF NOT EXISTS `dogs_js_res_audit_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `version` int(10) NOT NULL DEFAULT '0',
  `record_serial` longtext NOT NULL,
  `values_serial` longtext NOT NULL,
  `category_serial` longtext NOT NULL,
  `tags_serial` longtext,
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_rec` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_audit_versions: 0 rows
DELETE FROM `dogs_js_res_audit_versions`;
/*!40000 ALTER TABLE `dogs_js_res_audit_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_audit_versions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_categories
CREATE TABLE IF NOT EXISTS `dogs_js_res_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '',
  `metakey` varchar(1024) NOT NULL DEFAULT '',
  `metadata` varchar(2048) NOT NULL DEFAULT '',
  `created_user_id` int(10) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `num_current` int(11) NOT NULL DEFAULT '0',
  `num_all` int(11) NOT NULL DEFAULT '0',
  `relative_cats` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_categories: 1 rows
DELETE FROM `dogs_js_res_categories`;
/*!40000 ALTER TABLE `dogs_js_res_categories` DISABLE KEYS */;
INSERT INTO `dogs_js_res_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `section_id`, `title`, `alias`, `note`, `description`, `image`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `num_current`, `num_all`, `relative_cats`) VALUES
	(1, 0, 0, 0, 1, 0, '', 0, 'ROOT', 'root', '', '', '', 0, 0, '0000-00-00 00:00:00', 0, '{}', ' ', ' ', ' ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '*', 0, 0, '{}');
/*!40000 ALTER TABLE `dogs_js_res_categories` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_category_filters
CREATE TABLE IF NOT EXISTS `dogs_js_res_category_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `record_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_category_filters: 0 rows
DELETE FROM `dogs_js_res_category_filters`;
/*!40000 ALTER TABLE `dogs_js_res_category_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_category_filters` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_category_user
CREATE TABLE IF NOT EXISTS `dogs_js_res_category_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) NOT NULL DEFAULT '0',
  `rate` int(10) NOT NULL DEFAULT '0',
  `rate_count` int(10) NOT NULL DEFAULT '0',
  `icon` varchar(45) NOT NULL DEFAULT '',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `client_id` int(10) NOT NULL DEFAULT '0',
  `client` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`,`section_id`),
  KEY `publish` (`published`),
  KEY `client_id` (`client_id`),
  KEY `client` (`client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_category_user: 0 rows
DELETE FROM `dogs_js_res_category_user`;
/*!40000 ALTER TABLE `dogs_js_res_category_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_category_user` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_comments
CREATE TABLE IF NOT EXISTS `dogs_js_res_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `langs` varchar(10) NOT NULL DEFAULT 'en-GB',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `root_id` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  `attachment` text NOT NULL,
  `attach_hit` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `rate_num` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_publish` (`published`),
  KEY `idx_record` (`record_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_comments: 1 rows
DELETE FROM `dogs_js_res_comments`;
/*!40000 ALTER TABLE `dogs_js_res_comments` DISABLE KEYS */;
INSERT INTO `dogs_js_res_comments` (`id`, `record_id`, `user_id`, `comment`, `ctime`, `published`, `email`, `name`, `langs`, `access`, `rate`, `parent_id`, `root_id`, `level`, `hide`, `params`, `attachment`, `attach_hit`, `ip`, `lft`, `rgt`, `section_id`, `private`, `rate_num`, `type_id`) VALUES
	(1, 0, 0, ' ', '0000-00-00 00:00:00', 0, '', '', 'en-GB', 0, 0, 0, 0, 0, 0, ' ', ' ', 0, '', 0, 1, 0, 0, 0, 0);
/*!40000 ALTER TABLE `dogs_js_res_comments` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_country
CREATE TABLE IF NOT EXISTS `dogs_js_res_country` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_country: 264 rows
DELETE FROM `dogs_js_res_country`;
/*!40000 ALTER TABLE `dogs_js_res_country` DISABLE KEYS */;
INSERT INTO `dogs_js_res_country` (`id`, `name`) VALUES
	('AD', 'Andorra'),
	('AE', 'United Arab Emirates'),
	('AF', 'Afghanistan'),
	('AG', 'Antigua and Barbuda'),
	('AI', 'Anguilla'),
	('AL', 'Albania'),
	('AM', 'Armenia'),
	('AN', 'Netherlands Antilles'),
	('AO', 'Angola'),
	('AQ', 'Antarctica'),
	('AR', 'Argentina'),
	('AS', 'American Samoa'),
	('AT', 'Austria'),
	('AU', 'Australia'),
	('AW', 'Aruba'),
	('AX', 'Åland Islands'),
	('AZ', 'Azerbaijan'),
	('BA', 'Bosnia and Herzegovina'),
	('BB', 'Barbados'),
	('BD', 'Bangladesh'),
	('BE', 'Belgium'),
	('BF', 'Burkina Faso'),
	('BG', 'Bulgaria'),
	('BH', 'Bahrain'),
	('BI', 'Burundi'),
	('BJ', 'Benin'),
	('BL', 'Saint Barthélemy'),
	('BM', 'Bermuda'),
	('BN', 'Brunei'),
	('BO', 'Bolivia'),
	('BQ', 'British Antarctic Territory'),
	('BR', 'Brazil'),
	('BS', 'Bahamas'),
	('BT', 'Bhutan'),
	('BV', 'Bouvet Island'),
	('BW', 'Botswana'),
	('BY', 'Belarus'),
	('BZ', 'Belize'),
	('CA', 'Canada'),
	('CC', 'Cocos [Keeling] Islands'),
	('CD', 'Congo - Kinshasa'),
	('CF', 'Central African Republic'),
	('CG', 'Congo - Brazzaville'),
	('CH', 'Switzerland'),
	('CI', 'Côte d’Ivoire'),
	('CK', 'Cook Islands'),
	('CL', 'Chile'),
	('CM', 'Cameroon'),
	('CN', 'China'),
	('CO', 'Colombia'),
	('CR', 'Costa Rica'),
	('CS', 'Serbia and Montenegro'),
	('CT', 'Canton and Enderbury Islands'),
	('CU', 'Cuba'),
	('CV', 'Cape Verde'),
	('CX', 'Christmas Island'),
	('CY', 'Cyprus'),
	('CZ', 'Czech Republic'),
	('DD', 'East Germany'),
	('DE', 'Germany'),
	('DJ', 'Djibouti'),
	('DK', 'Denmark'),
	('DM', 'Dominica'),
	('DO', 'Dominican Republic'),
	('DZ', 'Algeria'),
	('EC', 'Ecuador'),
	('EE', 'Estonia'),
	('EG', 'Egypt'),
	('EH', 'Western Sahara'),
	('ER', 'Eritrea'),
	('ES', 'Spain'),
	('ET', 'Ethiopia'),
	('FI', 'Finland'),
	('FJ', 'Fiji'),
	('FK', 'Falkland Islands'),
	('FM', 'Micronesia'),
	('FO', 'Faroe Islands'),
	('FQ', 'French Southern and Antarctic Territories'),
	('FR', 'France'),
	('FX', 'Metropolitan France'),
	('GA', 'Gabon'),
	('GB', 'United Kingdom'),
	('GD', 'Grenada'),
	('GE', 'Georgia'),
	('GF', 'French Guiana'),
	('GG', 'Guernsey'),
	('GH', 'Ghana'),
	('GI', 'Gibraltar'),
	('GL', 'Greenland'),
	('GM', 'Gambia'),
	('GN', 'Guinea'),
	('GP', 'Guadeloupe'),
	('GQ', 'Equatorial Guinea'),
	('GR', 'Greece'),
	('GS', 'South Georgia and the South Sandwich Islands'),
	('GT', 'Guatemala'),
	('GU', 'Guam'),
	('GW', 'Guinea-Bissau'),
	('GY', 'Guyana'),
	('HK', 'Hong Kong SAR China'),
	('HM', 'Heard Island and McDonald Islands'),
	('HN', 'Honduras'),
	('HR', 'Croatia'),
	('HT', 'Haiti'),
	('HU', 'Hungary'),
	('ID', 'Indonesia'),
	('IE', 'Ireland'),
	('IL', 'Israel'),
	('IM', 'Isle of Man'),
	('IN', 'India'),
	('IO', 'British Indian Ocean Territory'),
	('IQ', 'Iraq'),
	('IR', 'Iran'),
	('IS', 'Iceland'),
	('IT', 'Italy'),
	('JE', 'Jersey'),
	('JM', 'Jamaica'),
	('JO', 'Jordan'),
	('JP', 'Japan'),
	('JT', 'Johnston Island'),
	('KE', 'Kenya'),
	('KG', 'Kyrgyzstan'),
	('KH', 'Cambodia'),
	('KI', 'Kiribati'),
	('KM', 'Comoros'),
	('KN', 'Saint Kitts and Nevis'),
	('KP', 'North Korea'),
	('KR', 'South Korea'),
	('KW', 'Kuwait'),
	('KY', 'Cayman Islands'),
	('KZ', 'Kazakhstan'),
	('LA', 'Laos'),
	('LB', 'Lebanon'),
	('LC', 'Saint Lucia'),
	('LI', 'Liechtenstein'),
	('LK', 'Sri Lanka'),
	('LR', 'Liberia'),
	('LS', 'Lesotho'),
	('LT', 'Lithuania'),
	('LU', 'Luxembourg'),
	('LV', 'Latvia'),
	('LY', 'Libya'),
	('MA', 'Morocco'),
	('MC', 'Monaco'),
	('MD', 'Moldova'),
	('ME', 'Montenegro'),
	('MF', 'Saint Martin'),
	('MG', 'Madagascar'),
	('MH', 'Marshall Islands'),
	('MI', 'Midway Islands'),
	('MK', 'Macedonia'),
	('ML', 'Mali'),
	('MM', 'Myanmar [Burma]'),
	('MN', 'Mongolia'),
	('MO', 'Macau SAR China'),
	('MP', 'Northern Mariana Islands'),
	('MQ', 'Martinique'),
	('MR', 'Mauritania'),
	('MS', 'Montserrat'),
	('MT', 'Malta'),
	('MU', 'Mauritius'),
	('MV', 'Maldives'),
	('MW', 'Malawi'),
	('MX', 'Mexico'),
	('MY', 'Malaysia'),
	('MZ', 'Mozambique'),
	('NA', 'Namibia'),
	('NC', 'New Caledonia'),
	('NE', 'Niger'),
	('NF', 'Norfolk Island'),
	('NG', 'Nigeria'),
	('NI', 'Nicaragua'),
	('NL', 'Netherlands'),
	('NO', 'Norway'),
	('NP', 'Nepal'),
	('NQ', 'Dronning Maud Land'),
	('NR', 'Nauru'),
	('NT', 'Neutral Zone'),
	('NU', 'Niue'),
	('NZ', 'New Zealand'),
	('OM', 'Oman'),
	('PA', 'Panama'),
	('PC', 'Pacific Islands Trust Territory'),
	('PE', 'Peru'),
	('PF', 'French Polynesia'),
	('PG', 'Papua New Guinea'),
	('PH', 'Philippines'),
	('PK', 'Pakistan'),
	('PL', 'Poland'),
	('PM', 'Saint Pierre and Miquelon'),
	('PN', 'Pitcairn Islands'),
	('PR', 'Puerto Rico'),
	('PS', 'Palestinian Territories'),
	('PT', 'Portugal'),
	('PU', 'U.S. Miscellaneous Pacific Islands'),
	('PW', 'Palau'),
	('PY', 'Paraguay'),
	('PZ', 'Panama Canal Zone'),
	('QA', 'Qatar'),
	('RE', 'Reunion'),
	('RO', 'Romania'),
	('RS', 'Serbia'),
	('RU', 'Russia'),
	('RW', 'Rwanda'),
	('SA', 'Saudi Arabia'),
	('SB', 'Solomon Islands'),
	('SC', 'Seychelles'),
	('SD', 'Sudan'),
	('SE', 'Sweden'),
	('SG', 'Singapore'),
	('SH', 'Saint Helena'),
	('SI', 'Slovenia'),
	('SJ', 'Svalbard and Jan Mayen'),
	('SK', 'Slovakia'),
	('SL', 'Sierra Leone'),
	('SM', 'San Marino'),
	('SN', 'Senegal'),
	('SO', 'Somalia'),
	('SR', 'Suriname'),
	('ST', 'São Tomé and Príncipe'),
	('SU', 'Union of Soviet Socialist Republics'),
	('SV', 'El Salvador'),
	('SY', 'Syria'),
	('SZ', 'Swaziland'),
	('TC', 'Turks and Caicos Islands'),
	('TD', 'Chad'),
	('TF', 'French Southern Territories'),
	('TG', 'Togo'),
	('TH', 'Thailand'),
	('TJ', 'Tajikistan'),
	('TK', 'Tokelau'),
	('TL', 'Timor-Leste'),
	('TM', 'Turkmenistan'),
	('TN', 'Tunisia'),
	('TO', 'Tonga'),
	('TR', 'Turkey'),
	('TT', 'Trinidad and Tobago'),
	('TV', 'Tuvalu'),
	('TW', 'Taiwan'),
	('TZ', 'Tanzania'),
	('UA', 'Ukraine'),
	('UG', 'Uganda'),
	('UM', 'U.S. Minor Outlying Islands'),
	('US', 'United States'),
	('UY', 'Uruguay'),
	('UZ', 'Uzbekistan'),
	('VA', 'Vatican City'),
	('VC', 'Saint Vincent and the Grenadines'),
	('VD', 'North Vietnam'),
	('VE', 'Venezuela'),
	('VG', 'British Virgin Islands'),
	('VI', 'U.S. Virgin Islands'),
	('VN', 'Vietnam'),
	('VU', 'Vanuatu'),
	('WF', 'Wallis and Futuna'),
	('WK', 'Wake Island'),
	('WS', 'Samoa'),
	('YD', 'People\'s Democratic Republic of Yemen'),
	('YE', 'Yemen'),
	('YT', 'Mayotte'),
	('ZA', 'South Africa'),
	('ZM', 'Zambia'),
	('ZW', 'Zimbabwe'),
	('ZZ', 'UNKNOWN OR Invalid Region');
/*!40000 ALTER TABLE `dogs_js_res_country` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_favorite
CREATE TABLE IF NOT EXISTS `dogs_js_res_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_favorite: 0 rows
DELETE FROM `dogs_js_res_favorite`;
/*!40000 ALTER TABLE `dogs_js_res_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_favorite` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_fields
CREATE TABLE IF NOT EXISTS `dogs_js_res_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(45) DEFAULT NULL,
  `label` varchar(250) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `params` longtext NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(3) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT '0',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_access` (`access`),
  KEY `idx_publish` (`published`,`type_id`,`filter`,`key`),
  KEY `idx_group` (`group_id`),
  KEY `idx_filter` (`filter`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_fields: 51 rows
DELETE FROM `dogs_js_res_fields`;
/*!40000 ALTER TABLE `dogs_js_res_fields` DISABLE KEYS */;
INSERT INTO `dogs_js_res_fields` (`id`, `key`, `label`, `type_id`, `field_type`, `params`, `checked_out`, `checked_out_time`, `published`, `ordering`, `access`, `group_id`, `asset_id`, `filter`, `user_id`) VALUES
	(1, 'k776c43fe8b8ce0684ddb973bd8e6d3f9', 'Изображение', 1, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image-sunset.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"300","thumbs_list_width":"200","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"1","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"300","thumbs_width":"400","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, -1, 1, 0, 70, 0, 784),
	(2, 'k73e88e8648554f9e32f7da1e253c0656', 'Примечание', 1, 'html', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"1","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"1000","hide_intro":"0","readmore":"0","readmore_lbl":"Read More...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 12, 1, 1, 71, 0, 784),
	(3, 'kb5858088c932fd4370df61f0259cc3ca', 'Кличка домашняя', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"tag-label-green.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"\\u041b\\u043e\\u0442\\u043e\\u0441"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 1, 72, 0, 784),
	(4, 'kf462fa7c9df8adf14a918503d219dbe6', 'Кличка по родословной', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"tag-label-red.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"Gerda\\nARION LOTOS"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 2, 1, 1, 73, 0, 784),
	(5, 'k97502c545dfe12bf25bd1ddd33f1ccb2', 'Изображение породы', 2, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"200","thumbs_list_width":"300","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"1","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"300","thumbs_width":"400","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 76, 0, 784),
	(6, 'k8781b89f72e589ce2775c997bb6dc57e', 'Описание породы', 2, 'html', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"500","hide_intro":"0","readmore":"1","readmore_lbl":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 7, 77, 0, 784),
	(7, 'k8dfdef472073f737586c7c3e0e655191', 'Собака', 2, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"8","child_section":"1","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","show_delete_button":"3","tmpl_list":"blog.93a95c9961bfb08c84b0e52cbc13f2a6","tmpl_full":"blog.0e771b1d42652e49994613f3d504116c","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 2, 79, 0, 784),
	(8, 'k3beec8665d494c573f641207652e60f7', 'Порода', 1, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"7","parent_type":"2","parent_section":"2","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"5","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043f\\u043e\\u0440\\u043e\\u0434\\u0443","add_more_access":"3","add_more_access_auth":"0","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041f\\u043e\\u0440\\u043e\\u0434\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0442\\u044c \\u041f\\u043e\\u0440\\u043e\\u0434\\u0443","tmpl_list":"blog.a847b5748644ff9f3ddc0e5255ed4aab","tmpl_full":"blog.4d221f17b6102c593c66a00319b2cafa","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 1, 80, 0, 784),
	(26, 'kf09bfa762e060219c7870c0e12c773ce', 'Обложка питомника', 5, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"200","thumbs_list_width":"300","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"1","lightbox_full":"1","img_hspace":"0","img_vspace":"0","thumbs_height":"300","thumbs_width":"400","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 106, 0, 784),
	(10, 'kf194989ed1a30256c8ee4ea83e1bfc60', 'Дата рождения', 1, 'datetime', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"birth.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"single_date_picker.php","template_output_list":"list.php","template_output_full":"list.php","sortable":"0","template_filter":"single_date_picker.php","template_filter_module":"single_date_picker.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","filter_compare_label":"Show all records %s","filter_compare_stbefore":"Start before","filter_compare_stafter":"Start after","filter_compare_endbefore":"End before","filter_compare_endafter":"End after","input_default":"0","custom_input":"","input_order":"day","input_delimiter":"\\/","format":"d F Y","custom":"","time":"0","field_id_type":"","ovr_ctime":"0","ctime_add":"","ovr_extime":"0","extime_add":"","format_out":"d F Y","custom_out":"","computation":"day","mode":"2","normal_style":"b","normal_color":"","notify_style":"b","notify_color":"orange","past_style":"b","past_color":"red","normal_before":"Still","normal_after":"days valid","notify_days":"30","notify_msg":"Last day","notify_before":"Will expire in","notify_after":"days","past_before":"Expired since","past_after":"days","date_before":"","date_style":"b","date_after":"","show_days":"1","date_days_separator":"","age_before":"","age_notify":"","age_expire":"","age_style":"b","age_format":"1","date_age_separator":",","age_custom":"[AGE], [DATE]","age_after":"years"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 5, 1, 1, 84, 0, 784),
	(9, 'k35254eb6ed0765c77cf058f867d8172c', 'Пол', 1, 'select', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"sex.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","sort":"2","width":"450","size":"10","values":"\\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439\\r\\n\\u0436\\u0435\\u043d\\u0441\\u043a\\u0438\\u0439","default_val":"0","color_separator":"^","label":"- \\u0423\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u043e\\u043b -","chosen":"1","add_value":"0","save_new":"1","user_value_label":"Your variant","sql_source":"0","sql":"","sql_label":"- Select Element -","sql_link":"","sql_link_target":"0","sql_ext_db":"0","sql_db_host":"","sql_db_port":"","sql_db_user":"","sql_db_pass":"","sql_db_name":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 3, 1, 1, 83, 0, 784),
	(11, 'k10a66e5ec7ab5f3f7ea66c447a37922c', 'Дата смерти', 1, 'datetime', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"dead.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"single_date_picker.php","template_output_list":"list.php","template_output_full":"list.php","sortable":"0","template_filter":"single_date_picker.php","template_filter_module":"single_date_picker.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","filter_compare_label":"Show all records %s","filter_compare_stbefore":"Start before","filter_compare_stafter":"Start after","filter_compare_endbefore":"End before","filter_compare_endafter":"End after","input_default":"0","custom_input":"","input_order":"day","input_delimiter":"\\/","format":"d F Y","custom":"","time":"0","field_id_type":"","ovr_ctime":"0","ctime_add":"","ovr_extime":"0","extime_add":"","format_out":"d F Y","custom_out":"","computation":"day","mode":"2","normal_style":"b","normal_color":"","notify_style":"b","notify_color":"orange","past_style":"b","past_color":"red","normal_before":"Still","normal_after":"days valid","notify_days":"30","notify_msg":"Last day","notify_before":"Will expire in","notify_after":"days","past_before":"Expired since","past_after":"days","date_before":"","date_style":"b","date_after":"","show_days":"1","date_days_separator":"","age_before":"","age_notify":"","age_expire":"","age_style":"b","age_format":"1","date_age_separator":",","age_custom":"[AGE], [DATE]","age_after":"years"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 6, 1, 1, 85, 0, 784),
	(12, 'kc8fbed8f231a0a06ae0570dce1f8397c', 'Номер РКФ/FCI', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"barcode.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 7, 1, 1, 86, 0, 784),
	(13, 'k42e3885b3e1f163db24a643e8735b929', 'Клеймо/Chip', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"barcode-2d.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"112098100021186"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 8, 1, 1, 87, 0, 784),
	(14, 'k6774946085d070e5ed6ef60d76124ebe', 'Окрас', 1, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"color-swatch.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"\\u0442\\u0435\\u043c\\u043d\\u043e \\u043f\\u0435\\u0433\\u0438\\u0439\\n\\u0441\\u0435\\u0440\\u043e \\u0431\\u0435\\u043b\\u044b\\u0439"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 9, 1, 1, 88, 0, 784),
	(15, 'kd6b39b5f062c11650671f274f86505d1', 'Высота в холке', 1, 'digits', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"size.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_worn":"Between %s and %s","label_min":"Min","label_max":"Max","steps":"1","decimals_num":"2","max_num":"10","separator":",","dseparator":".","val_min":"","val_max":"","prepend":"","append":"\\u0441\\u043c"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 10, 1, 1, 89, 0, 784),
	(16, 'k3fc02380a476e4a6d7e9e00cea29daf3', 'Вес', 1, 'digits', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"weight.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_worn":"Between %s and %s","label_min":"Min","label_max":"Max","steps":"1","decimals_num":"2","max_num":"10","separator":",","dseparator":".","val_min":"","val_max":"","prepend":"","append":"\\u043a\\u0433"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 11, 1, 1, 90, 0, 784),
	(17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'Место нахождения', 1, 'geo', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"marker.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_distance":"1","filter_radius":"20","filter_address":"1","filter_marker":"1","adr_enter":"1","address":{"company":{"show":"0","req":"0","icon":"1"},"person":{"show":"0","req":"0","icon":"1"},"address1":{"show":"0","req":"0","icon":"1"},"address2":{"show":"0","req":"0","icon":"1"},"city":{"show":"3","req":"1","icon":"1"},"state":{"show":"0","req":"0","icon":"1"},"zip":{"show":"0","req":"0","icon":"1"},"country":{"show":"3","req":"1","icon":"1"}},"contacts":{"tel":{"show":"0","req":"0","icon":"1"},"mob":{"show":"0","req":"0","icon":"1"},"fax":{"show":"0","req":"0","icon":"1"},"icq":{"show":"0","req":"0","icon":"1"},"skype":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"yahoo":{"show":"0","req":"0","icon":"1"},"msn":{"show":"0","req":"0","icon":"1"},"aol":{"show":"0","req":"0","icon":"1"}},"links":{"web":{"show":"0","req":"0","icon":"1"},"facebook":{"show":"0","req":"0","icon":"1"},"twitter":{"show":"0","req":"0","icon":"1"},"linkin":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"youtube":{"show":"0","req":"0","icon":"1"},"odnoclasnik":{"show":"0","req":"0","icon":"1"}},"links_labels":"0","adr_view":"1","adr_title":"2","qr_code_address":"0","qr_code_geo":"0","qr_width_address":"250","qr_width_geo":"120","map_marker":"1","map_require":"1","map_style":"","map_width":"100%","map_height":"300px","map_lat":"42.293564192170095","map_lng":"-33.33983659744263","map_zoom":"2","map_find_position":"1","map_manual_position":"3","map_whoicon":"0","map_icon_src":{"dir":"mini","icon":"marker-small-red.png"},"template_marker":"default.php","map_view":"1","map_dwidth":"100%","map_dheight":"300px","map_client":"2","sv_view":"1","sv_client":"2","sv_layout":"1","map_lat_lng":"1","template_window":"default.php"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 3, 91, 0, 784),
	(18, 'k83636956507d2391b2014b9af42162d5', 'Галлерея', 3, 'gallery', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"images-stack.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","method":"auto","file_formats":"jpg, png, jpeg, gif, bmp","max_count":"10","max_size":"2048","autostart":"1","subfolder":"gallery","delete_access":"1","allow_edit_title":"1","sort":"0 ASC","lightbox_click_list":"0","lightbox_click_full":"0","original_width":"1024","original_height":"1024","download_all":"0","full_width":"800","full_height":"600","full_quality":"100","full_mode":"6","full_stretch":"0","thumbs_list_width":"100","thumbs_list_height":"100","thumbs_list_quality":"80","thumbs_list_mode":"1","thumbs_list_stretch":"0","thumbs_list_random":"1","thumbs_list_theme":"book.css","thumbs_resize_mode":"1","column_width":"600","max_height":"250","image_in_row":"5","image_padding":"2","image_border":"2","image_border_color":"#e0e0e0","image_border_radius":"5","image_shadow":"inset 0px 0px 10px 5px rgba(0, 0, 0, 0.3)","thumbs_width":"100","thumbs_height":"100","thumbs_quality":"80","thumbs_background_color":"#FFFFFF","thumbs_mode":"1","thumbs_stretch":"0","show_mode":"gallerybox","theme":"Dark","rate_access":"1","tmpl_rating":"crown.87eb5073fc4be6ca975b0d072df82887","allow_comments":"2","allow_info":"2","show_avatar":"1","avatar_width":"40","avatar_height":"40","show_comment_avatar":"1","comment_avatar_width":"20","comment_avatar_height":"20","show_username":"0","comment_author":"1","record_author":"1","allow_download":"1","count_views":"1","show_location":"1","subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","subscription":["<br \\/><b>Warning<\\/b>:  htmlspecialchars() expects parameter 1 to be string, array given in <b>G:\\\\OpenServer\\\\domains\\\\prodogs.loc\\\\layouts\\\\joomla\\\\form\\\\field\\\\text.php<\\/b> on line <b>82<\\/b><br \\/>"],"subscription_msg":"You cannot download this file. You have to be subscribed member","subscription_redirect":"1","can_select_subscr":"0"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 93, 0, 784),
	(19, 'kca8225d35b3c2419d3dd4dc71dcc0123', 'Описание альбома', 3, 'textarea', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","default_value":"","placeholder":"","intro":"0","seemore":"...","prepare":"1","mention":"1","height":"300px","maxlen":"0","minlen":"0","notify":"1","symbols_left_msg":"There are (%s) characters left of %d allowed","grow_enable":"1","grow_max_height":"350","bbcode":"0","bbcode_menu":"0","bbcode_text":"We understand BBcode","bbcode_text_show":"1","bbcode_attr":"rel=\'nofollow\'","markdown":"1","markdown_text":"We understand markdown","markdown_text_show":"1","allow_html":"2","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 95, 0, 784),
	(20, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'Собака', 3, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"21","parent_type":"1","parent_section":"1","strict_to_user":"0","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","tmpl_list":"","tmpl_full":"blog.45f79a5efba3001d6e2c3c0e4be28c50","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"\\u0421\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0432\\u0441\\u0435\\u0445...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 96, 0, 784),
	(21, 'k43843ad431e118c0d4680e858ae1a8aa', 'Альбом', 1, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"images-stack.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"20","child_section":"3","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Add children","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0410\\u043b\\u044c\\u0431\\u043e\\u043c","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0410\\u043b\\u044c\\u0431\\u043e\\u043c","show_delete_button":"3","tmpl_list":"","tmpl_full":"blog.bb1e4c85da25be5c6d25c68fb3cc2a3b","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"\\u0421\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0432\\u0441\\u0435...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 4, 97, 0, 784),
	(22, 'k53d9638e0d4d09410450642323ecbfd2', 'Ссылка на видео', 4, 'video', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"clapperboard.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","command":"c:\\\\ffmpeg\\\\bin\\\\ffmpeg.exe","file_formats":"avi, mp4, mpeg, flv, ogv","only_one":"0","upload":"0","allow_download":"1","method":"auto","default_width":"640","max_count":"0","max_size":"10240","autostart":"1","subfolder":"video","delete_access":"1","allow_edit_title":"1","allow_add_descr":"1","sort":"0 ASC","listbar":"1","listbar_position":"right","listbar_width":"200","embed":"1","embed_max_count":"1","link":"1","link_max_count":"1","adapters":["youtube","vimeo","metacafe","screencast","bing","yahoo"],"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","subscription":["<br \\/><b>Warning<\\/b>:  htmlspecialchars() expects parameter 1 to be string, array given in <b>G:\\\\OpenServer\\\\domains\\\\prodogs.loc\\\\layouts\\\\joomla\\\\form\\\\field\\\\text.php<\\/b> on line <b>82<\\/b><br \\/>"],"subscription_msg":"You cannot download this file. You have to be subscribed member","subscription_redirect":"1","can_select_subscr":"0"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 100, 0, 784),
	(23, 'kc3b5e9adcb98240a2df7bd4e653cac19', 'Описание ролика', 4, 'textarea', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","default_value":"","placeholder":"","intro":"0","seemore":"...","prepare":"1","mention":"1","height":"300px","maxlen":"0","minlen":"0","notify":"1","symbols_left_msg":"There are (%s) characters left of %d allowed","grow_enable":"1","grow_max_height":"350","bbcode":"0","bbcode_menu":"0","bbcode_text":"We understand BBcode","bbcode_text_show":"1","bbcode_attr":"rel=\'nofollow\'","markdown":"1","markdown_text":"We understand markdown","markdown_text_show":"1","allow_html":"2","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 101, 0, 784),
	(24, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'Собака', 4, 'child', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"25","parent_type":"1","parent_section":"1","strict_to_user":"0","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"5","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u041f\\u0440\\u0438\\u0432\\u044f\\u0437\\u0430\\u0442\\u044c \\u043a \\u0441\\u043e\\u0431\\u0430\\u043a\\u0435","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 102, 0, 784),
	(25, 'kaa1a53ff22024d1ecb3a89d8248ffb7a', 'Видеоролик', 1, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"clapperboard.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"24","child_section":"4","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0432\\u0438\\u0434\\u0435\\u043e\\u0440\\u043e\\u043b\\u0438\\u043a","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0432\\u0438\\u0434\\u0435\\u043e\\u0440\\u043e\\u043b\\u0438\\u043a","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0432\\u0438\\u0434\\u0435\\u043e\\u0440\\u043e\\u043b\\u0438\\u043a","show_delete_button":"3","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 5, 103, 0, 784),
	(27, 'k7bba0fcdbf55cd146683f5f8f2f1e86c', 'Описание питомника', 5, 'html', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"balloon-box-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"500","hide_intro":"0","readmore":"1","readmore_lbl":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 6, 107, 0, 784),
	(28, 'k27062532865a6c9bf5569ff808c76ddb', 'Заводчик', 5, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"breeder.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"\\u0410\\u043d\\u043d\\u0430 \\u0416\\u0438\\u0433\\u0430\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 8, 108, 0, 784),
	(29, 'kf1f0ced97c0fed3391d5ecce68ee2c28', 'E-mail', 5, 'email', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"at-sign.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"Please enter email address","filter_show_number":"1","filter_linkage":"1","filter_tip":"Show all records where %s is equal to %s","enter_mail":"1","view_mail":"3","acemail":"0","acemail_text":"I want to subscribe to newssletter","qr_code":"0","qr_width":"60","template_body":"default.php","send_mail":"1","to":"1","email_format":"1","dafault_user_email":"1","custom":"","copy_to":"","change_name_from":"1","change_email_from":"1","cc":"0","subject_style":"0","pre_subject_val":"","subject":"","show_body":"1","body":"","attachment":"0","formats":"zip, tar, rar, txt, jpeg, jpg, pdf, gif, doc, xls","attach_num":"1","button":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","copy_to_sender":"1","additional_fields":"","show_captcha":"1","rep_name":"","rep_email":"","form_style":"2","template_form":"default.php","popup_label":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 2, 1, 8, 109, 0, 784),
	(30, 'k6be0ed440309268e48bb12b8dd676164', 'Мобильный телефон', 5, 'telephone', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"media-player-phone.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","pattern_country":"+[country]","pattern_region":" ([code])","pattern_tel":" [tel]","pattern_ext":"#[ext]","extension":"0","qr_code":"0","qr_width":"120"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 3, 1, 8, 112, 0, 784),
	(31, 'kaf0c383785423f5baa6132e370f25fbc', 'Телефон', 5, 'telephone', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"phone2.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","pattern_country":"+[country]","pattern_region":" ([code])","pattern_tel":" [tel]","pattern_ext":"#[ext]","extension":"0","qr_code":"0","qr_width":"120"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 8, 113, 0, 784),
	(32, 'k752c7b0a6a2d2248e1f34942a60a167a', 'Skype', 5, 'text', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"skype.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1","values":"jigalskaya"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 6, 1, 8, 114, 0, 784),
	(33, 'k991820da8a892540c099e3a3dc75a678', 'Сайт', 5, 'url', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u044c\\u0442\\u0435 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0430","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"arrow-curve-000-left.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"0","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","limit":"1","label":"1","label_change":"0","default_labels":"\\u041f\\u0435\\u0440\\u0435\\u0439\\u0442\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0430","link_redirect":"0","show_hits":"1","index_redirect":"0","links_sort":"0","open_url":"1","snapshot":"1","snapshot_width":"200","qr_code":"0","qr_width":"120","favicon":"1","numeric_list":"0"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 7, 1, 8, 115, 0, 784),
	(34, 'k8011249fe1a45d9d2313c47d5085728b', 'Местоположение', 5, 'geo', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"marker.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_distance":"1","filter_radius":"20","filter_address":"1","filter_marker":"1","adr_enter":"1","address":{"company":{"show":"0","req":"0","icon":"1"},"person":{"show":"0","req":"0","icon":"1"},"address1":{"show":"3","req":"0","icon":"1"},"address2":{"show":"0","req":"0","icon":"1"},"city":{"show":"3","req":"0","icon":"1"},"state":{"show":"3","req":"0","icon":"1"},"zip":{"show":"0","req":"0","icon":"1"},"country":{"show":"3","req":"1","icon":"1"}},"contacts":{"tel":{"show":"0","req":"0","icon":"1"},"mob":{"show":"0","req":"0","icon":"1"},"fax":{"show":"0","req":"0","icon":"1"},"icq":{"show":"0","req":"0","icon":"1"},"skype":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"yahoo":{"show":"0","req":"0","icon":"1"},"msn":{"show":"0","req":"0","icon":"1"},"aol":{"show":"0","req":"0","icon":"1"}},"links":{"web":{"show":"0","req":"0","icon":"1"},"facebook":{"show":"0","req":"0","icon":"1"},"twitter":{"show":"0","req":"0","icon":"1"},"linkin":{"show":"0","req":"0","icon":"1"},"google":{"show":"0","req":"0","icon":"1"},"youtube":{"show":"0","req":"0","icon":"1"},"odnoclasnik":{"show":"0","req":"0","icon":"1"}},"links_labels":"0","adr_view":"1","adr_title":"2","qr_code_address":"0","qr_code_geo":"0","qr_width_address":"250","qr_width_geo":"120","map_marker":"1","map_require":"0","map_style":"","map_width":"100%","map_height":"300px","map_lat":"42.293564192170095","map_lng":"-33.33983659744263","map_zoom":"2","map_find_position":"1","map_manual_position":"3","map_whoicon":"6","map_icon_src":{"dir":"mini","icon":"marker-small-red.png"},"template_marker":"default.php","map_view":"1","map_dwidth":"100%","map_dheight":"300px","map_client":"3","sv_view":"1","sv_client":"3","sv_layout":"1","map_lat_lng":"1","template_window":"default.php"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 8, 1, 8, 116, 0, 784),
	(35, 'k761aa218621a8471ec020f1dbcfca442', 'Факс', 5, 'telephone', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"phone_16.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","pattern_country":"+[country]","pattern_region":" ([code])","pattern_tel":" [tel]","pattern_ext":"#[ext]","extension":"0","qr_code":"0","qr_width":"120"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 5, 1, 8, 117, 0, 784),
	(36, 'k8dfdef472073f737586c7c3e0e655191', 'Собака', 5, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"37","child_section":"1","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","show_delete_button":"3","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 9, 118, 0, 784),
	(37, 'k90f63ffd997ec26953ec77896c25f1d3', 'Питомник', 1, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"home.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"36","parent_type":"5","parent_section":"5","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 11, 119, 0, 784),
	(38, 'keca4297d6d235d19e2138e011183c97d', 'Питомник', 2, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"home.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"39","child_section":"5","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a","show_delete_button":"3","tmpl_list":"blog.b837afa505367e3a36457b36df77cb0f","tmpl_full":"blog.25d74635d0d855c81b3d82552dc4f7e5","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 12, 120, 0, 784),
	(39, 'k3beec8665d494c573f641207652e60f7', 'Порода', 5, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"block.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"38","parent_type":"2","parent_section":"2","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_parent":"1","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u041f\\u043e\\u0440\\u043e\\u0434\\u0443","add_more_access":"3","add_more_access_auth":"0","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041f\\u043e\\u0440\\u043e\\u0434\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u041f\\u043e\\u0440\\u043e\\u0434\\u0443","tmpl_list":"blog.030d1d427ea69c5c5f4b639c66206902","tmpl_full":"blog.58a296fafff3126fa023f61084ae873b","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 10, 121, 0, 784),
	(40, 'k3d2ef5e60d71847a421e79f8e2d01414', 'Изображение Новости', 6, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image-balloon.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"200","thumbs_list_width":"300","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"1","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"400","thumbs_width":"600","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 128, 0, 784),
	(41, 'k594f4c4577c1a274da5cbce485116417', 'Содержание новости', 6, 'html', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"blue-document.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"500","hide_intro":"0","readmore":"1","readmore_lbl":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 129, 0, 784),
	(42, 'k3d2ef5e60d71847a421e79f8e2d01414', 'Изображение Новости', 7, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image-balloon.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"200","thumbs_list_width":"300","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"1","lightbox_full":"0","img_hspace":"0","img_vspace":"0","thumbs_height":"400","thumbs_width":"600","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 133, 0, 784),
	(43, 'k594f4c4577c1a274da5cbce485116417', 'Содержание новости', 7, 'html', '{"core":{"show_intro":"1","show_full":"1","show_feed":"1","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"blue-document.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","default_value":"","intro":"500","hide_intro":"0","readmore":"1","readmore_lbl":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435...","full":"0","editor":"tinymce","short":"0","height":"300","plugins":["pagebreak"],"allow_html":"3","tags_mode":"1","filter_tags":"iframe, script","attr_mode":"1","filter_attr":"rel"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 134, 0, 784),
	(44, 'k6ae3185417259aa9d049cc47c64e8bae', 'Новость', 5, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"document-text-image.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"45","child_section":"6","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u041f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u0438\\u0442\\u044c \\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c","show_delete_button":"3","tmpl_list":"","tmpl_full":"blog.e6bc24fa87ce590313c612105b3a36f3","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 13, 131, 0, 784),
	(45, 'k90f63ffd997ec26953ec77896c25f1d3', 'Питомник', 7, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"home.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"44","parent_type":"5","parent_section":"5","strict_to_user":"0","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"2","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"Set parent","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"Add New","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"Attach Existing","tmpl_list":"","tmpl_full":"blog.a5dce1224181fd70b598664e821466b7","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 132, 0, 784),
	(46, 'k6f51b58a88af136a9ca479819abfbb3d', 'Номер родословной', 8, 'text', '{"core":{"show_intro":"0","show_full":"0","show_feed":"0","show_compare":"0","required":"1","searchable":"1","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"barcode.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","ordering_mode":"digits","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","maxlength":"0","default_val":"","size":"90%","prepend":"","append":"","allow_html":"0","is_unique":"0","length":"0","seemore":">>>","qr_code":"0","qr_width":"60","regex_val":"","mask":{"mask_type":"","mask":""},"show_mask":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 1, 1, 15, 136, 0, 784),
	(47, 'k02ac73bf90f7092052b2f5c923505c8a', 'Дата родословной', 8, 'datetime', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"calendar-select.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"single_date_picker.php","template_output_list":"list.php","template_output_full":"list.php","sortable":"0","template_filter":"single_date_picker.php","template_filter_module":"single_date_picker.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","filter_compare_label":"Show all records %s","filter_compare_stbefore":"Start before","filter_compare_stafter":"Start after","filter_compare_endbefore":"End before","filter_compare_endafter":"End after","input_default":"0","custom_input":"","input_order":"month","input_delimiter":"\\/","format":"h:i A, l, d F Y","custom":"","time":"0","field_id_type":"","ovr_ctime":"0","ctime_add":"","ovr_extime":"0","extime_add":"","format_out":"d M Y","custom_out":"","computation":"day","mode":"2","normal_style":"b","normal_color":"","notify_style":"b","notify_color":"orange","past_style":"b","past_color":"red","normal_before":"Still","normal_after":"days valid","notify_days":"30","notify_msg":"Last day","notify_before":"Will expire in","notify_after":"days","past_before":"Expired since","past_after":"days","date_before":"","date_style":"b","date_after":"","show_days":"1","date_days_separator":"","age_before":"","age_notify":"","age_expire":"","age_style":"b","age_format":"1","date_age_separator":",","age_custom":"[AGE], [DATE]","age_after":"years"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 3, 1, 15, 137, 0, 784),
	(48, 'kdfe5acc16764f8f95984b157b1abf01a', 'Фото родословной', 8, 'image', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"2","lable_class":"","icon":"image-sunset.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"list.php","template_output_full":"full.php","select_type":"2","formats":"png,jpg,gif,jpeg","directory":"images","show_subfolders":"0","allow_caption":"0","default_img":"","subfolder":"image","list_mode":"1","lightbox_list":"0","img_list_hspace":"0","img_list_vspace":"0","thumbs_list_height":"200","thumbs_list_width":"300","thumbs_list_quality":"80","thumbs_list_mode":"6","thumbs_list_stretch":"0","thumbs_list_bg":"#000000","full_mode":"0","lightbox_full":"1","img_hspace":"0","img_vspace":"0","thumbs_height":"600","thumbs_width":"600","thumbs_quality":"80","thumbs_mode":"6","thumbs_stretch":"0","thumbs_bg":"#000000"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 2, 1, 15, 138, 0, 784),
	(49, 'ke7365a29eca33a23eaf9d74686421771', 'Родословная', 1, 'parent', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"0","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"medal.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","child_field":"50","child_section":"7","strict_to_user":"1","strict_to_user_mode":"3","show_relate":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"5","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0420\\u043e\\u0434\\u043e\\u0441\\u043b\\u043e\\u0432\\u043d\\u0443\\u044e","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0420\\u043e\\u0434\\u043e\\u0441\\u043b\\u043e\\u0432\\u043d\\u0443\\u044e","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0420\\u043e\\u0434\\u043e\\u0441\\u043b\\u043e\\u0432\\u043d\\u0443\\u044e","show_delete_button":"3","tmpl_list":"","tmpl_full":"blog.9f98d375782bddefaa2c04a8725a68dc","orderby":"r.ctime ASC","limit_full":"20","limit_list":"10","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 14, 140, 0, 784),
	(50, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'Собака', 8, 'child', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"1","label_break":"0","lable_class":"","icon":"animal-dog.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_style":"2","filter_show_number":"1","filter_linkage":"1","filter_user_strict":"0","filter_tip":"Show all records where %s is equal to %s","parent_field":"49","parent_type":"1","parent_section":"1","strict_to_user":"0","strict_to_user_mode":"3","show_relate":"0","multi_parent":"0","multi_limit":"10","notify_add":"2","notify_attach":"2","input_mode":"5","input_sort":"","max_result":"10","control_width":"750","control_height":"500","control_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_more_access":"3","add_more_access_auth":"1","add_more_access_list":"1","add_more_access_full":"1","add_return":"back","invite_add_more":"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","add_existing":"3","add_existing_auth":"1","add_existing_access_list":"1","add_existing_access_full":"1","add_existing_width":"750","add_existing_height":"500","add_existing_label":"\\u0412\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0421\\u043e\\u0431\\u0430\\u043a\\u0443","tmpl_list":"","tmpl_full":"","orderby":"r.ctime ASC","limit_list":"10","limit_full":"20","show_list_all":"2","invite_view_more":"Show All...","show_list_all_full":"1","show_list_all_list":"1","show_list_type":"1"},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 5, 1, 16, 141, 0, 784),
	(51, 'k5ac831934911ac758192356d7048bf48', 'Организация', 8, 'select', '{"core":{"show_intro":"0","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"1","description":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044e \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0432\\u044b\\u0434\\u0430\\u043b\\u0430 \\u0440\\u043e\\u0434\\u043e\\u0441\\u043b\\u043e\\u0432\\u043d\\u0443\\u044e","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"bank.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"autocomplete.php","template_filter_module":"autocomplete.php","filter_enable":"0","filter_hide":"0","filter_descr":"","filter_show_number":"1","filter_linkage":"1","filter_icon":"funnel-small.png","filter_tip":"Show all records where %s is equal to %s","sort":"2","width":"450","size":"10","values":"\\u0411\\u0435\\u043b\\u043e\\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0435 \\u043a\\u0438\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0435","default_val":"0","color_separator":"^","label":"- \\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044e -","chosen":"1","add_value":"2","save_new":"1","user_value_label":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0412\\u0430\\u0448 \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442","sql_source":"0","sql":"","sql_label":"- Select Element -","sql_link":"","sql_link_target":"0","sql_ext_db":"0","sql_db_host":"","sql_db_port":"","sql_db_user":"","sql_db_pass":"","sql_db_name":""},"emerald":{"subscr_skip":"3","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription_msg":"You can view this field only if article author has subscription.","field_display_subscription_count":"0","field_view_subscription_msg":"Only our paid members can view this field.","field_view_subscription_count":"0","field_submit_subscription_msg":"Only our paid members can vew add this field.","field_submit_subscription_count":"0","field_edit_subscription_msg":"Only our paid members can edit this field.","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 15, 142, 0, 784);
/*!40000 ALTER TABLE `dogs_js_res_fields` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_fields_group
CREATE TABLE IF NOT EXISTS `dogs_js_res_fields_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_fields_group: 16 rows
DELETE FROM `dogs_js_res_fields_group`;
/*!40000 ALTER TABLE `dogs_js_res_fields_group` DISABLE KEYS */;
INSERT INTO `dogs_js_res_fields_group` (`id`, `title`, `type_id`, `ordering`, `description`, `checked_out`, `checked_out_time`, `icon`) VALUES
	(1, 'О собаке', 1, 1, '', 0, '0000-00-00 00:00:00', 'information-button.png'),
	(2, 'Представители породы', 2, 3, '', 0, '0000-00-00 00:00:00', 'animal-dog.png'),
	(3, 'Местоположение', 1, 3, '', 0, '0000-00-00 00:00:00', 'marker.png'),
	(4, 'Альбомы', 1, 5, '', 0, '0000-00-00 00:00:00', 'images-stack.png'),
	(5, 'Видеоролики', 1, 6, '', 0, '0000-00-00 00:00:00', 'clapperboard.png'),
	(6, 'О питомнике', 5, 1, '', 0, '0000-00-00 00:00:00', 'information-balloon.png'),
	(7, 'О породе', 2, 1, '', 0, '0000-00-00 00:00:00', 'information-balloon.png'),
	(8, 'Контакты', 5, 3, '', 0, '0000-00-00 00:00:00', 'address-book.png'),
	(9, 'Питомцы', 5, 4, '', 0, '0000-00-00 00:00:00', 'animal-dog.png'),
	(10, 'Разводимые породы', 5, 5, '', 0, '0000-00-00 00:00:00', 'block.png'),
	(11, 'Питомник', 1, 4, '', 0, '0000-00-00 00:00:00', 'home.png'),
	(12, 'Питомники', 2, 2, '', 0, '0000-00-00 00:00:00', 'home.png'),
	(13, 'Новости питомника', 5, 2, '', 0, '0000-00-00 00:00:00', 'blue-documents-stack.png'),
	(14, 'Родословная', 1, 2, '', 0, '0000-00-00 00:00:00', 'child.png'),
	(15, 'О родословной', 8, 1, '', 0, '0000-00-00 00:00:00', 'information-balloon.png'),
	(16, 'Принадлежит', 8, 2, '', 0, '0000-00-00 00:00:00', 'animal-dog.png');
/*!40000 ALTER TABLE `dogs_js_res_fields_group` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_field_geo
CREATE TABLE IF NOT EXISTS `dogs_js_res_field_geo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` char(2) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `lat` float(18,15) DEFAULT NULL,
  `lng` float(18,15) DEFAULT NULL,
  `state_trans` varchar(150) DEFAULT NULL,
  `city_trans` varchar(200) DEFAULT NULL,
  `section_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `field_key` varchar(38) DEFAULT NULL,
  `record_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sect` (`section_id`),
  KEY `idx_key` (`field_key`),
  KEY `idx_fid` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_field_geo: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_field_geo`;
/*!40000 ALTER TABLE `dogs_js_res_field_geo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_field_geo` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_field_multilevelselect
CREATE TABLE IF NOT EXISTS `dogs_js_res_field_multilevelselect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `field_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_field` (`field_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_field_multilevelselect: 1 rows
DELETE FROM `dogs_js_res_field_multilevelselect`;
/*!40000 ALTER TABLE `dogs_js_res_field_multilevelselect` DISABLE KEYS */;
INSERT INTO `dogs_js_res_field_multilevelselect` (`id`, `name`, `field_id`, `parent_id`, `level`, `lft`, `rgt`) VALUES
	(1, 'root', 0, 0, 0, 1, 2);
/*!40000 ALTER TABLE `dogs_js_res_field_multilevelselect` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_field_stepaccess
CREATE TABLE IF NOT EXISTS `dogs_js_res_field_stepaccess` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_field_stepaccess: 0 rows
DELETE FROM `dogs_js_res_field_stepaccess`;
/*!40000 ALTER TABLE `dogs_js_res_field_stepaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_field_stepaccess` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_field_telephone
CREATE TABLE IF NOT EXISTS `dogs_js_res_field_telephone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code2` varchar(2) NOT NULL DEFAULT '',
  `code3` varchar(3) NOT NULL DEFAULT '',
  `phone_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_field_telephone: 237 rows
DELETE FROM `dogs_js_res_field_telephone`;
/*!40000 ALTER TABLE `dogs_js_res_field_telephone` DISABLE KEYS */;
INSERT INTO `dogs_js_res_field_telephone` (`id`, `name`, `code2`, `code3`, `phone_code`) VALUES
	(1, 'Afghanistan', 'AF', 'AFG', '93'),
	(2, 'Albania', 'AL', 'ALB', '355'),
	(3, 'Algeria', 'DZ', 'DZA', '213'),
	(4, 'American Samoa', 'AS', 'ASM', '1-684'),
	(5, 'Andorra', 'AD', 'AND', '376'),
	(6, 'Angola', 'AO', 'AGO', '244'),
	(7, 'Anguilla', 'AI', 'AIA', '1-264'),
	(8, 'Antarctica', 'AQ', 'ATA', '672'),
	(9, 'Antigua and Barbuda', 'AG', 'ATG', '1-268'),
	(10, 'Argentina', 'AR', 'ARG', '54'),
	(11, 'Armenia', 'AM', 'ARM', '374'),
	(12, 'Aruba', 'AW', 'ABW', '297'),
	(13, 'Australia', 'AU', 'AUS', '61'),
	(14, 'Austria', 'AT', 'AUT', '43'),
	(15, 'Azerbaijan', 'AZ', 'AZE', '994'),
	(16, 'Bahamas', 'BS', 'BHS', '1-242'),
	(17, 'Bahrain', 'BH', 'BHR', '973'),
	(18, 'Bangladesh', 'BD', 'BGD', '880'),
	(19, 'Barbados', 'BB', 'BRB', '1-246'),
	(20, 'Belarus', 'BY', 'BLR', '375'),
	(21, 'Belgium', 'BE', 'BEL', '32'),
	(22, 'Belize', 'BZ', 'BLZ', '501'),
	(23, 'Benin', 'BJ', 'BEN', '229'),
	(24, 'Bermuda', 'BM', 'BMU', '1-441'),
	(25, 'Bhutan', 'BT', 'BTN', '975'),
	(26, 'Bolivia', 'BO', 'BOL', '591'),
	(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '387'),
	(28, 'Botswana', 'BW', 'BWA', '267'),
	(29, 'Brazil', 'BR', 'BRA', '55'),
	(30, 'British Indian Ocean Territory', 'IO', 'IOT', ''),
	(31, 'British Virgin Islands', 'VG', 'VGB', '1-284'),
	(32, 'Brunei', 'BN', 'BRN', '673'),
	(33, 'Bulgaria', 'BG', 'BGR', '359'),
	(34, 'Burkina Faso', 'BF', 'BFA', '226'),
	(35, 'Burma (Myanmar)', 'MM', 'MMR', '95'),
	(36, 'Burundi', 'BI', 'BDI', '257'),
	(37, 'Cambodia', 'KH', 'KHM', '855'),
	(38, 'Cameroon', 'CM', 'CMR', '237'),
	(39, 'Canada', 'CA', 'CAN', '1'),
	(40, 'Cape Verde', 'CV', 'CPV', '238'),
	(41, 'Cayman Islands', 'KY', 'CYM', '1-345'),
	(42, 'Central African Republic', 'CF', 'CAF', '236'),
	(43, 'Chad', 'TD', 'TCD', '235'),
	(44, 'Chile', 'CL', 'CHL', '56'),
	(45, 'China', 'CN', 'CHN', '86'),
	(46, 'Christmas Island', 'CX', 'CXR', '61'),
	(47, 'Cocos (Keeling) Islands', 'CC', 'CCK', '61'),
	(48, 'Colombia', 'CO', 'COL', '57'),
	(49, 'Comoros', 'KM', 'COM', '269'),
	(50, 'Cook Islands', 'CK', 'COK', '682'),
	(51, 'Costa Rica', 'CR', 'CRC', '506'),
	(52, 'Croatia', 'HR', 'HRV', '385'),
	(53, 'Cuba', 'CU', 'CUB', '53'),
	(54, 'Cyprus', 'CY', 'CYP', '357'),
	(55, 'Czech Republic', 'CZ', 'CZE', '420'),
	(56, 'Democratic Republic of the Congo', 'CD', 'COD', '243'),
	(57, 'Denmark', 'DK', 'DNK', '45'),
	(58, 'Djibouti', 'DJ', 'DJI', '253'),
	(59, 'Dominica', 'DM', 'DMA', '1-767'),
	(60, 'Dominican Republic', 'DO', 'DOM', '1-809'),
	(61, 'Ecuador', 'EC', 'ECU', '593'),
	(62, 'Egypt', 'EG', 'EGY', '20'),
	(63, 'El Salvador', 'SV', 'SLV', '503'),
	(64, 'Equatorial Guinea', 'GQ', 'GNQ', '240'),
	(65, 'Eritrea', 'ER', 'ERI', '291'),
	(66, 'Estonia', 'EE', 'EST', '372'),
	(67, 'Ethiopia', 'ET', 'ETH', '251'),
	(68, 'Falkland Islands', 'FK', 'FLK', '500'),
	(69, 'Faroe Islands', 'FO', 'FRO', '298'),
	(70, 'Fiji', 'FJ', 'FJI', '679'),
	(71, 'Finland', 'FI', 'FIN', '358'),
	(72, 'France', 'FR', 'FRA', '33'),
	(73, 'French Polynesia', 'PF', 'PYF', '689'),
	(74, 'Gabon', 'GA', 'GAB', '241'),
	(75, 'Gambia', 'GM', 'GMB', '220'),
	(76, 'Gaza Strip', '', '', '970'),
	(77, 'Georgia', 'GE', 'GEO', '995'),
	(78, 'Germany', 'DE', 'DEU', '49'),
	(79, 'Ghana', 'GH', 'GHA', '233'),
	(80, 'Gibraltar', 'GI', 'GIB', '350'),
	(81, 'Greece', 'GR', 'GRC', '30'),
	(82, 'Greenland', 'GL', 'GRL', '299'),
	(83, 'Grenada', 'GD', 'GRD', '1-473'),
	(84, 'Guam', 'GU', 'GUM', '1-671'),
	(85, 'Guatemala', 'GT', 'GTM', '502'),
	(86, 'Guinea', 'GN', 'GIN', '224'),
	(87, 'Guinea-Bissau', 'GW', 'GNB', '245'),
	(88, 'Guyana', 'GY', 'GUY', '592'),
	(89, 'Haiti', 'HT', 'HTI', '509'),
	(90, 'Holy See (Vatican City)', 'VA', 'VAT', '39'),
	(91, 'Honduras', 'HN', 'HND', '504'),
	(92, 'Hong Kong', 'HK', 'HKG', '852'),
	(93, 'Hungary', 'HU', 'HUN', '36'),
	(94, 'Iceland', 'IS', 'IS', '354'),
	(95, 'India', 'IN', 'IND', '91'),
	(96, 'Indonesia', 'ID', 'IDN', '62'),
	(97, 'Iran', 'IR', 'IRN', '98'),
	(98, 'Iraq', 'IQ', 'IRQ', '964'),
	(99, 'Ireland', 'IE', 'IRL', '353'),
	(100, 'Isle of Man', 'IM', 'IMN', '44'),
	(101, 'Israel', 'IL', 'ISR', '972'),
	(102, 'Italy', 'IT', 'ITA', '39'),
	(103, 'Ivory Coast', 'CI', 'CIV', '225'),
	(104, 'Jamaica', 'JM', 'JAM', '1-876'),
	(105, 'Japan', 'JP', 'JPN', '81'),
	(106, 'Jersey', 'JE', 'JEY', ''),
	(107, 'Jordan', 'JO', 'JOR', '962'),
	(108, 'Kazakhstan', 'KZ', 'KAZ', '7'),
	(109, 'Kenya', 'KE', 'KEN', '254'),
	(110, 'Kiribati', 'KI', 'KIR', '686'),
	(111, 'Kosovo', '', '', '381'),
	(112, 'Kuwait', 'KW', 'KWT', '965'),
	(113, 'Kyrgyzstan', 'KG', 'KGZ', '996'),
	(114, 'Laos', 'LA', 'LAO', '856'),
	(115, 'Latvia', 'LV', 'LVA', '371'),
	(116, 'Lebanon', 'LB', 'LBN', '961'),
	(117, 'Lesotho', 'LS', 'LSO', '266'),
	(118, 'Liberia', 'LR', 'LBR', '231'),
	(119, 'Libya', 'LY', 'LBY', '218'),
	(120, 'Liechtenstein', 'LI', 'LIE', '423'),
	(121, 'Lithuania', 'LT', 'LTU', '370'),
	(122, 'Luxembourg', 'LU', 'LUX', '352'),
	(123, 'Macau', 'MO', 'MAC', '853'),
	(124, 'Macedonia', 'MK', 'MKD', '389'),
	(125, 'Madagascar', 'MG', 'MDG', '261'),
	(126, 'Malawi', 'MW', 'MWI', '265'),
	(127, 'Malaysia', 'MY', 'MYS', '60'),
	(128, 'Maldives', 'MV', 'MDV', '960'),
	(129, 'Mali', 'ML', 'MLI', '223'),
	(130, 'Malta', 'MT', 'MLT', '356'),
	(131, 'Marshall Islands', 'MH', 'MHL', '692'),
	(132, 'Mauritania', 'MR', 'MRT', '222'),
	(133, 'Mauritius', 'MU', 'MUS', '230'),
	(134, 'Mayotte', 'YT', 'MYT', '262'),
	(135, 'Mexico', 'MX', 'MEX', '52'),
	(136, 'Micronesia', 'FM', 'FSM', '691'),
	(137, 'Moldova', 'MD', 'MDA', '373'),
	(138, 'Monaco', 'MC', 'MCO', '377'),
	(139, 'Mongolia', 'MN', 'MNG', '976'),
	(140, 'Montenegro', 'ME', 'MNE', '382'),
	(141, 'Montserrat', 'MS', 'MSR', '1-664'),
	(142, 'Morocco', 'MA', 'MAR', '212'),
	(143, 'Mozambique', 'MZ', 'MOZ', '258'),
	(144, 'Namibia', 'NA', 'NAM', '264'),
	(145, 'Nauru', 'NR', 'NRU', '674'),
	(146, 'Nepal', 'NP', 'NPL', '977'),
	(147, 'Netherlands', 'NL', 'NLD', '31'),
	(148, 'Netherlands Antilles', 'AN', 'ANT', '599'),
	(149, 'New Caledonia', 'NC', 'NCL', '687'),
	(150, 'New Zealand', 'NZ', 'NZL', '64'),
	(151, 'Nicaragua', 'NI', 'NIC', '505'),
	(152, 'Niger', 'NE', 'NER', '227'),
	(153, 'Nigeria', 'NG', 'NGA', '234'),
	(154, 'Niue', 'NU', 'NIU', '683'),
	(155, 'Norfolk Island', '', '', '672'),
	(156, 'North Korea', 'KP', 'PRK', '850'),
	(157, 'Northern Mariana Islands', 'MP', 'MNP', '1-670'),
	(158, 'Norway', 'NO', 'NOR', '47'),
	(159, 'Oman', 'OM', 'OMN', '968'),
	(160, 'Pakistan', 'PK', 'PAK', '92'),
	(161, 'Palau', 'PW', 'PLW', '680'),
	(162, 'Panama', 'PA', 'PAN', '507'),
	(163, 'Papua New Guinea', 'PG', 'PNG', '675'),
	(164, 'Paraguay', 'PY', 'PRY', '595'),
	(165, 'Peru', 'PE', 'PER', '51'),
	(166, 'Philippines', 'PH', 'PHL', '63'),
	(167, 'Pitcairn Islands', 'PN', 'PCN', '870'),
	(168, 'Poland', 'PL', 'POL', '48'),
	(169, 'Portugal', 'PT', 'PRT', '351'),
	(170, 'Puerto Rico', 'PR', 'PRI', '1'),
	(171, 'Qatar', 'QA', 'QAT', '974'),
	(172, 'Republic of the Congo', 'CG', 'COG', '242'),
	(173, 'Romania', 'RO', 'ROU', '40'),
	(174, 'Russia', 'RU', 'RUS', '7'),
	(175, 'Rwanda', 'RW', 'RWA', '250'),
	(176, 'Saint Barthelemy', 'BL', 'BLM', '590'),
	(177, 'Saint Helena', 'SH', 'SHN', '290'),
	(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '1-869'),
	(179, 'Saint Lucia', 'LC', 'LCA', '1-758'),
	(180, 'Saint Martin', 'MF', 'MAF', '1-599'),
	(181, 'Saint Pierre and Miquelon', 'PM', 'SPM', '508'),
	(182, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1-784'),
	(183, 'Samoa', 'WS', 'WSM', '685'),
	(184, 'San Marino', 'SM', 'SMR', '378'),
	(185, 'Sao Tome and Principe', 'ST', 'STP', '239'),
	(186, 'Saudi Arabia', 'SA', 'SAU', '966'),
	(187, 'Senegal', 'SN', 'SEN', '221'),
	(188, 'Serbia', 'RS', 'SRB', '381'),
	(189, 'Seychelles', 'SC', 'SYC', '248'),
	(190, 'Sierra Leone', 'SL', 'SLE', '232'),
	(191, 'Singapore', 'SG', 'SGP', '65'),
	(192, 'Slovakia', 'SK', 'SVK', '421'),
	(193, 'Slovenia', 'SI', 'SVN', '386'),
	(194, 'Solomon Islands', 'SB', 'SLB', '677'),
	(195, 'Somalia', 'SO', 'SOM', '252'),
	(196, 'South Africa', 'ZA', 'ZAF', '27'),
	(197, 'South Korea', 'KR', 'KOR', '82'),
	(198, 'Spain', 'ES', 'ESP', '34'),
	(199, 'Sri Lanka', 'LK', 'LKA', '94'),
	(200, 'Sudan', 'SD', 'SDN', '249'),
	(201, 'Suriname', 'SR', 'SUR', '597'),
	(202, 'Svalbard', 'SJ', 'SJM', ''),
	(203, 'Swaziland', 'SZ', 'SWZ', '268'),
	(204, 'Sweden', 'SE', 'SWE', '46'),
	(205, 'Switzerland', 'CH', 'CHE', '41'),
	(206, 'Syria', 'SY', 'SYR', '963'),
	(207, 'Taiwan', 'TW', 'TWN', '886'),
	(208, 'Tajikistan', 'TJ', 'TJK', '992'),
	(209, 'Tanzania', 'TZ', 'TZA', '255'),
	(210, 'Thailand', 'TH', 'THA', '66'),
	(211, 'Timor-Leste', 'TL', 'TLS', '670'),
	(212, 'Togo', 'TG', 'TGO', '228'),
	(213, 'Tokelau', 'TK', 'TKL', '690'),
	(214, 'Tonga', 'TO', 'TON', '676'),
	(215, 'Trinidad and Tobago', 'TT', 'TTO', '1-868'),
	(216, 'Tunisia', 'TN', 'TUN', '216'),
	(217, 'Turkey', 'TR', 'TUR', '90'),
	(218, 'Turkmenistan', 'TM', 'TKM', '993'),
	(219, 'Turks and Caicos Islands', 'TC', 'TCA', '1-649'),
	(220, 'Tuvalu', 'TV', 'TUV', '688'),
	(221, 'Uganda', 'UG', 'UGA', '256'),
	(222, 'Ukraine', 'UA', 'UKR', '380'),
	(223, 'United Arab Emirates', 'AE', 'ARE', '971'),
	(224, 'United Kingdom', 'GB', 'GBR', '44'),
	(225, 'United States', 'US', 'USA', '1'),
	(226, 'Uruguay', 'UY', 'URY', '598'),
	(227, 'US Virgin Islands', 'VI', 'VIR', '1-340'),
	(228, 'Uzbekistan', 'UZ', 'UZB', '998'),
	(229, 'Vanuatu', 'VU', 'VUT', '678'),
	(230, 'Venezuela', 'VE', 'VEN', '58'),
	(231, 'Vietnam', 'VN', 'VNM', '84'),
	(232, 'Wallis and Futuna', 'WF', 'WLF', '681'),
	(233, 'West Bank', '', '', '970'),
	(234, 'Western Sahara', 'EH', 'ESH', ''),
	(235, 'Yemen', 'YE', 'YEM', '967'),
	(236, 'Zambia', 'ZM', 'ZMB', '260'),
	(237, 'Zimbabwe', 'ZW', 'ZWE', '263');
/*!40000 ALTER TABLE `dogs_js_res_field_telephone` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_files
CREATE TABLE IF NOT EXISTS `dogs_js_res_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(55) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `saved` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  `section_id` int(11) DEFAULT '0',
  `record_id` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(10) NOT NULL DEFAULT '',
  `fullpath` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT 'Not detected',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `rating` double DEFAULT NULL,
  `rating_nums` int(11) DEFAULT '0',
  `comments` text,
  `comment_num` int(11) DEFAULT '0',
  `title` text,
  `description` text,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`filename`),
  KEY `idx_record` (`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_files: 8 rows
DELETE FROM `dogs_js_res_files`;
/*!40000 ALTER TABLE `dogs_js_res_files` DISABLE KEYS */;
INSERT INTO `dogs_js_res_files` (`id`, `filename`, `realname`, `ctime`, `saved`, `params`, `section_id`, `record_id`, `type_id`, `field_id`, `user_id`, `ext`, `fullpath`, `hits`, `size`, `ip`, `width`, `height`, `rating`, `rating_nums`, `comments`, `comment_num`, `title`, `description`, `views`) VALUES
	(1, '1538980017_15030e2119438a419ff446c8614094bf.jpg', 'Австралийская овчарка аусси.jpg', '2018-10-08 06:26:57', 1, NULL, 2, 1, 2, 5, 784, 'jpg', 'uploads/image/2018-10/1538980017_15030e2119438a419ff446c8614094bf.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(2, '1539260728_15030e2119438a419ff446c8614094bf.jpg', 'Австралийская овчарка аусси.jpg', '2018-10-11 12:25:28', 1, NULL, 1, 2, 1, 1, 785, 'jpg', 'uploads/image/2018-10/1539260728_15030e2119438a419ff446c8614094bf.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(3, '1539223200_0e54d67c783f7c4a8b0711a8b087c519.jpg', 'Австралийская овчарка аусси.jpg', '2018-10-11 14:11:33', 1, '{"FileName":"1539223200_0e54d67c783f7c4a8b0711a8b087c519.jpg","FileDateTime":1539267093,"FileSize":75263,"FileType":2,"MimeType":"image\\/jpeg","SectionsFound":"","COMPUTED":{"html":"width=\\"929\\" height=\\"585\\"","Height":585,"Width":929,"IsColor":1}}', 3, 3, 3, 18, 785, 'jpg', '2018-10/1539223200_0e54d67c783f7c4a8b0711a8b087c519.jpg', 0, 75263, '127.0.0.1', 929, 585, NULL, 0, NULL, 0, NULL, NULL, 0),
	(6, '1539503105_e931cba0d83d0be51d681a0865840ea2.jpg', 'Сибирский Хаски.jpg', '2018-10-14 07:45:05', 1, NULL, 2, 4, 2, 5, 784, 'jpg', 'uploads/image/2018-10/1539503105_e931cba0d83d0be51d681a0865840ea2.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(5, '1539501281_aa9638923267853c789ffe7b215a9bd5.jpg', 'Cristal family.jpg', '2018-10-14 07:14:41', 1, NULL, 5, 5, 5, 26, 786, 'jpg', 'uploads/image/2018-10/1539501281_aa9638923267853c789ffe7b215a9bd5.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(7, '1539587867_f16cba54c2313dc18efe1da9b4e77289.jpg', 'lotos.jpg', '2018-10-15 07:17:47', 1, NULL, 6, 6, 7, 42, 786, 'jpg', 'uploads/image/2018-10/1539587867_f16cba54c2313dc18efe1da9b4e77289.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(8, '1539600586_f16cba54c2313dc18efe1da9b4e77289.jpg', 'lotos.jpg', '2018-10-15 10:49:46', 1, NULL, 1, 7, 1, 1, 786, 'jpg', 'uploads/image/2018-10/1539600586_f16cba54c2313dc18efe1da9b4e77289.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0),
	(9, '1539603252_046d2f7506c7a26b3d6816a9281ec099.jpg', 'Родословная_Лотоса.jpg', '2018-10-15 11:34:11', 1, NULL, 7, 8, 8, 48, 785, 'jpg', 'uploads/image/2018-10/1539603252_046d2f7506c7a26b3d6816a9281ec099.jpg', 0, 0, '127.0.0.1', 0, 0, NULL, 0, NULL, 0, NULL, NULL, 0);
/*!40000 ALTER TABLE `dogs_js_res_files` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_hits
CREATE TABLE IF NOT EXISTS `dogs_js_res_hits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idex_user` (`section_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_hits: 14 rows
DELETE FROM `dogs_js_res_hits`;
/*!40000 ALTER TABLE `dogs_js_res_hits` DISABLE KEYS */;
INSERT INTO `dogs_js_res_hits` (`id`, `record_id`, `ctime`, `user_id`, `ip`, `section_id`) VALUES
	(1, 1, '2018-10-08 06:27:12', 0, '127.0.0.1', 2),
	(2, 2, '2018-10-11 12:28:19', 785, '127.0.0.1', 1),
	(3, 2, '2018-10-11 12:39:32', 784, '127.0.0.1', 1),
	(4, 3, '2018-10-11 14:19:21', 785, '127.0.0.1', 3),
	(5, 4, '2018-10-14 06:42:13', 784, '127.0.0.1', 2),
	(6, 1, '2018-10-14 06:54:36', 786, '127.0.0.1', 2),
	(7, 5, '2018-10-14 07:18:23', 786, '127.0.0.1', 5),
	(8, 4, '2018-10-14 07:37:44', 786, '127.0.0.1', 2),
	(9, 2, '2018-10-15 07:06:12', 786, '127.0.0.1', 1),
	(10, 6, '2018-10-15 07:18:49', 786, '127.0.0.1', 6),
	(11, 7, '2018-10-15 10:49:58', 786, '127.0.0.1', 1),
	(12, 7, '2018-10-15 10:51:38', 784, '127.0.0.1', 1),
	(13, 7, '2018-10-15 10:52:00', 785, '127.0.0.1', 1),
	(14, 8, '2018-10-15 11:56:03', 785, '127.0.0.1', 7);
/*!40000 ALTER TABLE `dogs_js_res_hits` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_import
CREATE TABLE IF NOT EXISTS `dogs_js_res_import` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `params` text,
  `user_id` int(11) DEFAULT '0',
  `crossids` text,
  `section_id` int(11) DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_import: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_import`;
/*!40000 ALTER TABLE `dogs_js_res_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_import` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_import_rows
CREATE TABLE IF NOT EXISTS `dogs_js_res_import_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `import` int(11) DEFAULT '0',
  `text` text,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_import` (`import`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_import_rows: 0 rows
DELETE FROM `dogs_js_res_import_rows`;
/*!40000 ALTER TABLE `dogs_js_res_import_rows` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_import_rows` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_moderators
CREATE TABLE IF NOT EXISTS `dogs_js_res_moderators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `params` text,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) DEFAULT '0',
  `checked_out_time` datetime DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(20) DEFAULT NULL,
  `is_moderator` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind` (`user_id`,`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_moderators: 0 rows
DELETE FROM `dogs_js_res_moderators`;
/*!40000 ALTER TABLE `dogs_js_res_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_moderators` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_notifications
CREATE TABLE IF NOT EXISTS `dogs_js_res_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `alerted` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ref_1` int(11) DEFAULT '0',
  `ref_2` int(11) DEFAULT '0',
  `ref_3` int(11) DEFAULT '0',
  `ref_4` int(11) DEFAULT '0',
  `ref_5` int(11) DEFAULT '0',
  `html` text NOT NULL,
  `num` int(11) DEFAULT '0',
  `state_new` tinyint(1) NOT NULL DEFAULT '1',
  `eventer` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_r_1` (`ref_1`),
  KEY `idx_r_2` (`ref_2`),
  KEY `idx_ruser` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_notifications: ~5 rows (приблизительно)
DELETE FROM `dogs_js_res_notifications`;
/*!40000 ALTER TABLE `dogs_js_res_notifications` DISABLE KEYS */;
INSERT INTO `dogs_js_res_notifications` (`id`, `option`, `type`, `ctime`, `notified`, `alerted`, `params`, `user_id`, `ref_1`, `ref_2`, `ref_3`, `ref_4`, `ref_5`, `html`, `num`, `state_new`, `eventer`) VALUES
	(1, 'com_cobalt', 'record_edited', '2018-10-15 10:51:33', 0, 0, '{"id":"7","title":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u041b\\u043e\\u0442\\u043e\\u0441, \\u043f\\u043e\\u043b \\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439","user_id":"785","section_id":"1","ctime":"2018-10-15 10:49:46","extime":"0000-00-00 00:00:00","mtime":"2018-10-15 10:51:33","inittime":"2018-10-15 10:49:46","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"section":{"id":"1","asset_id":"74","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"","alias":"catalog-dogs","description":"","published":"1","ordering":"6","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":0,"subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs&Itemid=0"},"by":"784","on":1539600693}', 786, 7, 1, 0, 0, 0, '', 0, 1, 784),
	(2, 'com_cobalt', 'record_edited', '2018-10-15 11:54:14', 0, 0, '{"id":"7","title":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u041b\\u043e\\u0442\\u043e\\u0441, \\u043f\\u043e\\u043b \\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439","user_id":"785","section_id":"1","ctime":"2018-10-15 10:49:46","extime":"0000-00-00 00:00:00","mtime":"2018-10-15 11:54:14","inittime":"2018-10-15 10:49:46","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"section":{"id":"1","asset_id":"74","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"","alias":"catalog-dogs","description":"","published":"1","ordering":"7","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":0,"subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs&Itemid=107"},"by":"785","on":1539604454}', 786, 7, 1, 0, 0, 0, '', 0, 1, 785),
	(3, 'com_cobalt', 'record_edited', '2018-10-15 11:54:14', 0, 0, '{"id":"7","title":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u041b\\u043e\\u0442\\u043e\\u0441, \\u043f\\u043e\\u043b \\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439","user_id":"785","section_id":"1","ctime":"2018-10-15 10:49:46","extime":"0000-00-00 00:00:00","mtime":"2018-10-15 11:54:14","inittime":"2018-10-15 10:49:46","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"section":{"id":"1","asset_id":"74","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"","alias":"catalog-dogs","description":"","published":"1","ordering":"7","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":0,"subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs&Itemid=107"},"by":"785","on":1539604454}', 784, 7, 1, 0, 0, 0, '', 0, 1, 785),
	(4, 'com_cobalt', 'parent_attached', '2018-10-15 11:54:44', 0, 0, '{"id":"7","title":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u041b\\u043e\\u0442\\u043e\\u0441, \\u043f\\u043e\\u043b \\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439","user_id":"785","section_id":"1","ctime":"2018-10-15 10:49:46","extime":"0000-00-00 00:00:00","mtime":"2018-10-15 11:54:14","inittime":"2018-10-15 10:49:46","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"ucatalias":null,"section":{"id":"1","asset_id":"74","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"","alias":"catalog-dogs","description":"","published":"1","ordering":"7","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":0,"subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs&Itemid="},"by":"785","on":1539604484}', 786, 7, 1, 0, 0, 49, '', 0, 1, 785),
	(5, 'com_cobalt', 'parent_attached', '2018-10-15 11:54:44', 0, 0, '{"id":"7","title":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u041b\\u043e\\u0442\\u043e\\u0441, \\u043f\\u043e\\u043b \\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439","user_id":"785","section_id":"1","ctime":"2018-10-15 10:49:46","extime":"0000-00-00 00:00:00","mtime":"2018-10-15 11:54:14","inittime":"2018-10-15 10:49:46","ftime":"0000-00-00 00:00:00","pubtime":"0000-00-00 00:00:00","type_id":"1","ip":"127.0.0.1","categories":"[]","version":"1","newTags":null,"ucatalias":null,"section":{"id":"1","asset_id":"74","name":"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a","title":"","alias":"catalog-dogs","description":"","published":"1","ordering":"7","image":"","image_position":"","params":{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":0,"subscribe_category":0,"subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}},"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":"1","categories":"0","language":"*","descr_before":"","descr_after":null,"descr_full":"","link":"index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs&Itemid="},"by":"785","on":1539604484}', 784, 7, 1, 0, 0, 49, '', 0, 1, 785);
/*!40000 ALTER TABLE `dogs_js_res_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_packs
CREATE TABLE IF NOT EXISTS `dogs_js_res_packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `key` char(10) NOT NULL DEFAULT '',
  `addkey` tinyint(2) NOT NULL DEFAULT '1',
  `add_files` text,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` varchar(20) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `users` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `author_name` text,
  `author_email` text,
  `author_url` text,
  `demo` tinyint(1) DEFAULT '0',
  `copyright` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_packs: 2 rows
DELETE FROM `dogs_js_res_packs`;
/*!40000 ALTER TABLE `dogs_js_res_packs` DISABLE KEYS */;
INSERT INTO `dogs_js_res_packs` (`id`, `name`, `description`, `key`, `addkey`, `add_files`, `ctime`, `mtime`, `btime`, `version`, `checked_out`, `checked_out_time`, `users`, `user_id`, `author_name`, `author_email`, `author_url`, `demo`, `copyright`) VALUES
	(1, 'Типы контента ProDogs.Info', '', 'pack20558d', 1, '', '2018-10-11 12:05:28', '2018-10-11 13:50:42', '2018-10-15 06:22:30', '5', 0, '0000-00-00 00:00:00', 0, 0, '', '', '', 1, '© 2012 - My company. All rights reserved.'),
	(2, 'settings_default', '', 'packa243d5', 1, '', '2018-10-15 06:26:14', '2018-10-15 07:28:10', '2018-10-15 07:28:18', '2', 0, '0000-00-00 00:00:00', 0, 0, '', '', '', 1, '© 2012 - My company. All rights reserved.');
/*!40000 ALTER TABLE `dogs_js_res_packs` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_packs_sections
CREATE TABLE IF NOT EXISTS `dogs_js_res_packs_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_packs_sections: 13 rows
DELETE FROM `dogs_js_res_packs_sections`;
/*!40000 ALTER TABLE `dogs_js_res_packs_sections` DISABLE KEYS */;
INSERT INTO `dogs_js_res_packs_sections` (`id`, `pack_id`, `section_id`, `params`) VALUES
	(1, 1, 1, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"1":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(2, 0, 2, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"2":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(3, 1, 2, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"2":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(4, 1, 3, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"3":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(5, 1, 4, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"4":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(6, 1, 5, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"5":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"}}}'),
	(7, 2, 3, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"3":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(8, 2, 4, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"4":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(9, 2, 1, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"1":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(10, 2, 5, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"5":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(11, 2, 2, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"2":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(12, 1, 6, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"6":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"1"},"7":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}'),
	(13, 2, 6, '{"markup":"1","list":"1","cat_index":"1","compare":"1","types":{"6":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"},"7":{"article":"1","articleform":"1","rating":"1","comment":"1","categoryselect":"1","copy_content":"1","copy_field_record_templates":"0"}}}');
/*!40000 ALTER TABLE `dogs_js_res_packs_sections` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_polls
CREATE TABLE IF NOT EXISTS `dogs_js_res_polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_polls: 0 rows
DELETE FROM `dogs_js_res_polls`;
/*!40000 ALTER TABLE `dogs_js_res_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_polls` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_record
CREATE TABLE IF NOT EXISTS `dogs_js_res_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ftime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pubtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `meta_descr` varchar(255) NOT NULL DEFAULT '',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_index` varchar(30) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `ucatid` int(10) NOT NULL DEFAULT '0',
  `ucatname` varchar(150) DEFAULT NULL,
  `langs` varchar(10) NOT NULL DEFAULT '',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `votes` int(10) NOT NULL DEFAULT '0',
  `favorite_num` int(10) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `votes_result` int(10) NOT NULL DEFAULT '0',
  `exalert` tinyint(1) NOT NULL DEFAULT '0',
  `access_key` varchar(32) NOT NULL DEFAULT '',
  `categories` mediumtext,
  `fieldsdata` longtext,
  `fields` longtext NOT NULL,
  `comments` int(11) DEFAULT '0',
  `tags` text NOT NULL,
  `multirating` text,
  `subscriptions_num` int(11) DEFAULT '0',
  `version` int(10) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `parent` varchar(45) NOT NULL DEFAULT 'com_cobalt',
  `whorepost` tinyint(1) NOT NULL DEFAULT '0',
  `repostedby` text,
  `newTags` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_published` (`published`),
  KEY `idx_user` (`user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_ctime` (`ctime`),
  KEY `idx_extime` (`extime`),
  KEY `idx_featured` (`featured`),
  KEY `idx_ucat` (`ucatid`),
  KEY `idx_lang` (`langs`),
  KEY `idx_parent` (`parent_id`),
  KEY `idx_mtime` (`mtime`),
  KEY `idx_name` (`title`),
  KEY `idx_comment` (`comments`),
  KEY `idx_vote` (`votes_result`),
  FULLTEXT KEY `full` (`fieldsdata`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_record: 8 rows
DELETE FROM `dogs_js_res_record`;
/*!40000 ALTER TABLE `dogs_js_res_record` DISABLE KEYS */;
INSERT INTO `dogs_js_res_record` (`id`, `title`, `published`, `access`, `params`, `user_id`, `section_id`, `checked_out`, `checked_out_time`, `ctime`, `extime`, `mtime`, `inittime`, `ftime`, `pubtime`, `type_id`, `hits`, `ordering`, `meta_descr`, `meta_key`, `meta_index`, `alias`, `featured`, `archive`, `ucatid`, `ucatname`, `langs`, `asset_id`, `ip`, `votes`, `favorite_num`, `hidden`, `votes_result`, `exalert`, `access_key`, `categories`, `fieldsdata`, `fields`, `comments`, `tags`, `multirating`, `subscriptions_num`, `version`, `parent_id`, `parent`, `whorepost`, `repostedby`, `newTags`) VALUES
	(1, 'Австралийская овчарка', 1, 1, '', 784, 2, 0, '0000-00-00 00:00:00', '2018-10-08 06:21:10', '0000-00-00 00:00:00', '2018-10-11 12:38:42', '2018-10-08 06:26:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2, 0, '', '', '', 'avstralijskaya-ovcharka-ili-aussi', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '147ca9c2408bc6513bf23bf0a8cd2cb2', '[]', 'Австралийская овчарка или аусси (англ. Australian Shepherd) среднего размера порода собак, выведенная на ранчо в западных штатах США. Несмотря на название, они не имеют отношения к Австралии, родина их Америка. Популярность к австралийским овчаркам пришла после Первой мировой войны, через участие в родео, конных шоу и мультфильмах Диснея.\r\nТезисы \r\n\r\n\r\nДля австралийской овчарки нужно от 30-60 минут упражнений ежедневно, предпочтительно с высокой активностью и нагрузкой. Кроме того, им нужна работа (идеально — пастушья), или тренировки по обидиенс.\r\n\r\n\r\n \r\n\r\n\r\nОни могут стать деструктивными или бесконечно лаять, если не получают физических и ментальных нагрузок долгое время.\r\n\r\n\r\n \r\n\r\n\r\nАусси предупредит голосом, если увидит или услышит что-то подозрительное, и будет защищать дом и семью с удивительным бесстрашием.\r\n\r\n\r\n \r\n\r\n\r\nХотя считается что эти собаки должны жить в деревне и на просторе, они неплохо себя чувствуют и в городе, при хороших нагрузках. Но, для содержания в квартире они подходят плохо, необходим хотябы небольшой двор, где она сможет жить.\r\n\r\n\r\n \r\n\r\n\r\nЭта пастушья собака управляет стадами, и у неопытного хозяина может занять доминантную позицию в доме. Если у вас никогда не было собаки до этого, то аусси не лучший выбор. Линяют они средне и уход за ними включает в себя еженедельное вычесывание и иногда тримминг, чтобы собака выглядела ухоженной.\r\n\r\n\r\n \r\n\r\n\r\nОни любят компанию людей и держаться к ним поближе.\r\n\r\n\r\n \r\n\r\n\r\nАвстралийские овчарки от природы подозрительны к незнакомцам, если с щенячьего возраста их не знакомили с разными людьми, могут быть недоверчивыми к чужим. Это проявляется в агрессии и укусах. Познакомьте вашего щенка с друзьями, семьей, соседями, даже незнакомцами, чтобы помочь развить социальные навыки.\r\n\r\n\r\n \r\n\r\nЕсли вы решили купить щенка аусси, то выбирайте только проверенные питомники. Покупая австралийскую овчарку у неизвестных продавцов, вы рискуете деньгами, временем и нервами. Цена на щенка колеблется от 20 000 до 50 000 рублей и лучше переплатить за здоровую и воспитанную собаку.\r\n\r\nИстория породы\r\nИстория возникновения австралийской овчарки так же запутана, как и появление ее имени. Некоторые полагают что они могли попасть в США, вместе с баскскими иммигрантами из Испании, и на родине они были пастушьими собаками. Однако, научные исследования полагают что они происходят от собак, которые попали в Америку через Берингов перешеек. Достаточно ясно и то, что они сформировались в западных штатах США, в течение XIX—XX века. Они определенно рабочих кровей, первые заводчики выбирали собак по способностям, а не по экстерьеру.\r\nАусси стали незаменимыми помощниками при выгоне скота в Скалистых горах, так как они малочувствительны к перепадам высот. Фермеры из Боулдера, штат Колорадо, начали первыми разводить этих собак, так как слава об их способностях к управлению овцами, разносила далеко за границами штата.\r\nМногие из пород, которые существуют сейчас, не существовали в викторианскую эпоху, их предки приехали в Америку вместе с хозяевами. Многие из них исчезли, некоторые смешались с другими породами и дали новые. Видимо, то же самое произошло и с предками австралийской овчарки, ведь пастушьи собаки никогда не были чем-то незыблемым, их скрещивали и приспосабливали к новым условиям. В восточных штатах США условия напоминали Европу, так что собаки привезенные из нее хорошо приспосабливались., Австралийская овчарка', '{"5":{"image":"uploads\\/image\\/2018-10\\/1538980017_15030e2119438a419ff446c8614094bf.jpg"},"6":"<p>\\u0410\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0430 \\u0438\\u043b\\u0438 \\u0430\\u0443\\u0441\\u0441\\u0438 (\\u0430\\u043d\\u0433\\u043b. Australian Shepherd) \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0433\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0432\\u044b\\u0432\\u0435\\u0434\\u0435\\u043d\\u043d\\u0430\\u044f \\u043d\\u0430 \\u0440\\u0430\\u043d\\u0447\\u043e \\u0432 \\u0437\\u0430\\u043f\\u0430\\u0434\\u043d\\u044b\\u0445 \\u0448\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0421\\u0428\\u0410. \\u041d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435, \\u043e\\u043d\\u0438 \\u043d\\u0435 \\u0438\\u043c\\u0435\\u044e\\u0442 \\u043e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u044f \\u043a \\u0410\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0438, \\u0440\\u043e\\u0434\\u0438\\u043d\\u0430 \\u0438\\u0445 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0430. \\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a \\u0430\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u043c \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0430\\u043c \\u043f\\u0440\\u0438\\u0448\\u043b\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u041f\\u0435\\u0440\\u0432\\u043e\\u0439 \\u043c\\u0438\\u0440\\u043e\\u0432\\u043e\\u0439 \\u0432\\u043e\\u0439\\u043d\\u044b, \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u0440\\u043e\\u0434\\u0435\\u043e, \\u043a\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0448\\u043e\\u0443 \\u0438 \\u043c\\u0443\\u043b\\u044c\\u0442\\u0444\\u0438\\u043b\\u044c\\u043c\\u0430\\u0445 \\u0414\\u0438\\u0441\\u043d\\u0435\\u044f.<\\/p>\\r\\n<h3><span id=\\"i\\">\\u0422\\u0435\\u0437\\u0438\\u0441\\u044b<br \\/> <\\/span><\\/h3>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0414\\u043b\\u044f \\u0430\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0438 \\u043d\\u0443\\u0436\\u043d\\u043e \\u043e\\u0442 30-60 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u0443\\u043f\\u0440\\u0430\\u0436\\u043d\\u0435\\u043d\\u0438\\u0439 \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e, \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e \\u0438 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043a\\u043e\\u0439. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u0438\\u043c \\u043d\\u0443\\u0436\\u043d\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430 (\\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e \\u2014 \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u044f), \\u0438\\u043b\\u0438 \\u0442\\u0440\\u0435\\u043d\\u0438\\u0440\\u043e\\u0432\\u043a\\u0438 \\u043f\\u043e \\u043e\\u0431\\u0438\\u0434\\u0438\\u0435\\u043d\\u0441.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0441\\u0442\\u0430\\u0442\\u044c \\u0434\\u0435\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438 \\u0438\\u043b\\u0438 \\u0431\\u0435\\u0441\\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u043b\\u0430\\u044f\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 \\u043d\\u0435 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0442 \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0438 \\u043c\\u0435\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043e\\u043a \\u0434\\u043e\\u043b\\u0433\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0410\\u0443\\u0441\\u0441\\u0438 \\u043f\\u0440\\u0435\\u0434\\u0443\\u043f\\u0440\\u0435\\u0434\\u0438\\u0442 \\u0433\\u043e\\u043b\\u043e\\u0441\\u043e\\u043c, \\u0435\\u0441\\u043b\\u0438 \\u0443\\u0432\\u0438\\u0434\\u0438\\u0442 \\u0438\\u043b\\u0438 \\u0443\\u0441\\u043b\\u044b\\u0448\\u0438\\u0442 \\u0447\\u0442\\u043e-\\u0442\\u043e \\u043f\\u043e\\u0434\\u043e\\u0437\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435, \\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0430\\u0442\\u044c \\u0434\\u043e\\u043c \\u0438 \\u0441\\u0435\\u043c\\u044c\\u044e \\u0441 \\u0443\\u0434\\u0438\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c \\u0431\\u0435\\u0441\\u0441\\u0442\\u0440\\u0430\\u0448\\u0438\\u0435\\u043c.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0425\\u043e\\u0442\\u044f \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0447\\u0442\\u043e \\u044d\\u0442\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0434\\u043e\\u043b\\u0436\\u043d\\u044b \\u0436\\u0438\\u0442\\u044c \\u0432 \\u0434\\u0435\\u0440\\u0435\\u0432\\u043d\\u0435 \\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0440\\u0435, \\u043e\\u043d\\u0438 \\u043d\\u0435\\u043f\\u043b\\u043e\\u0445\\u043e \\u0441\\u0435\\u0431\\u044f \\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0438 \\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0435, \\u043f\\u0440\\u0438 \\u0445\\u043e\\u0440\\u043e\\u0448\\u0438\\u0445 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043a\\u0430\\u0445. \\u041d\\u043e, \\u0434\\u043b\\u044f \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u044f \\u0432 \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0435 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043b\\u043e\\u0445\\u043e, \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c \\u0445\\u043e\\u0442\\u044f\\u0431\\u044b \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0434\\u0432\\u043e\\u0440, \\u0433\\u0434\\u0435 \\u043e\\u043d\\u0430 \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0436\\u0438\\u0442\\u044c.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u042d\\u0442\\u0430 \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441\\u0442\\u0430\\u0434\\u0430\\u043c\\u0438, \\u0438 \\u0443 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u043e\\u0433\\u043e \\u0445\\u043e\\u0437\\u044f\\u0438\\u043d\\u0430 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0437\\u0430\\u043d\\u044f\\u0442\\u044c \\u0434\\u043e\\u043c\\u0438\\u043d\\u0430\\u043d\\u0442\\u043d\\u0443\\u044e \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u0432 \\u0434\\u043e\\u043c\\u0435. \\u0415\\u0441\\u043b\\u0438 \\u0443 \\u0432\\u0430\\u0441 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b\\u043e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0434\\u043e \\u044d\\u0442\\u043e\\u0433\\u043e, \\u0442\\u043e \\u0430\\u0443\\u0441\\u0441\\u0438 \\u043d\\u0435 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.<br \\/> \\u041b\\u0438\\u043d\\u044f\\u044e\\u0442 \\u043e\\u043d\\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435 \\u0438 \\u0443\\u0445\\u043e\\u0434 \\u0437\\u0430 \\u043d\\u0438\\u043c\\u0438 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442 \\u0432 \\u0441\\u0435\\u0431\\u044f \\u0435\\u0436\\u0435\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0432\\u044b\\u0447\\u0435\\u0441\\u044b\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0442\\u0440\\u0438\\u043c\\u043c\\u0438\\u043d\\u0433, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430 \\u0432\\u044b\\u0433\\u043b\\u044f\\u0434\\u0435\\u043b\\u0430 \\u0443\\u0445\\u043e\\u0436\\u0435\\u043d\\u043d\\u043e\\u0439.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u043d\\u0438 \\u043b\\u044e\\u0431\\u044f\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e \\u043b\\u044e\\u0434\\u0435\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f \\u043a \\u043d\\u0438\\u043c \\u043f\\u043e\\u0431\\u043b\\u0438\\u0436\\u0435.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0410\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0435 \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0438 \\u043e\\u0442 \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u044b \\u043f\\u043e\\u0434\\u043e\\u0437\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b \\u043a \\u043d\\u0435\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0446\\u0430\\u043c, \\u0435\\u0441\\u043b\\u0438 \\u0441 \\u0449\\u0435\\u043d\\u044f\\u0447\\u044c\\u0435\\u0433\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430 \\u0438\\u0445 \\u043d\\u0435 \\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u043b\\u0438 \\u0441 \\u0440\\u0430\\u0437\\u043d\\u044b\\u043c\\u0438 \\u043b\\u044e\\u0434\\u044c\\u043c\\u0438, \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043d\\u0435\\u0434\\u043e\\u0432\\u0435\\u0440\\u0447\\u0438\\u0432\\u044b\\u043c\\u0438 \\u043a \\u0447\\u0443\\u0436\\u0438\\u043c. \\u042d\\u0442\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0430\\u0433\\u0440\\u0435\\u0441\\u0441\\u0438\\u0438 \\u0438 \\u0443\\u043a\\u0443\\u0441\\u0430\\u0445. \\u041f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044c\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0441 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f\\u043c\\u0438, \\u0441\\u0435\\u043c\\u044c\\u0435\\u0439, \\u0441\\u043e\\u0441\\u0435\\u0434\\u044f\\u043c\\u0438, \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0446\\u0430\\u043c\\u0438, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043f\\u043e\\u043c\\u043e\\u0447\\u044c \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044c \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<li>\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0440\\u0435\\u0448\\u0438\\u043b\\u0438 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0430\\u0443\\u0441\\u0441\\u0438, \\u0442\\u043e \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u0439\\u0442\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0438. \\u041f\\u043e\\u043a\\u0443\\u043f\\u0430\\u044f \\u0430\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u0443\\u044e \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0443 \\u0443 \\u043d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0446\\u043e\\u0432, \\u0432\\u044b \\u0440\\u0438\\u0441\\u043a\\u0443\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0430\\u043c\\u0438, \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0435\\u043c \\u0438 \\u043d\\u0435\\u0440\\u0432\\u0430\\u043c\\u0438. \\u0426\\u0435\\u043d\\u0430 \\u043d\\u0430 \\u0449\\u0435\\u043d\\u043a\\u0430 \\u043a\\u043e\\u043b\\u0435\\u0431\\u043b\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 20 000 \\u0434\\u043e 50 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0435 \\u043f\\u0435\\u0440\\u0435\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c \\u0437\\u0430 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u0443\\u044e \\u0438 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0443\\u044e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443.<\\/li>\\r\\n<\\/ol>\\r\\n<h3><span id=\\"i-2\\">\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b<\\/span><\\/h3>\\r\\n<p>\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u0432\\u043e\\u0437\\u043d\\u0438\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u0438\\u044f \\u0430\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0438 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0437\\u0430\\u043f\\u0443\\u0442\\u0430\\u043d\\u0430, \\u043a\\u0430\\u043a \\u0438 \\u043f\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0435\\u0435 \\u0438\\u043c\\u0435\\u043d\\u0438. \\u041d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043e\\u043d\\u0438 \\u043c\\u043e\\u0433\\u043b\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0441\\u0442\\u044c \\u0432 \\u0421\\u0428\\u0410, \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0441 \\u0431\\u0430\\u0441\\u043a\\u0441\\u043a\\u0438\\u043c\\u0438 \\u0438\\u043c\\u043c\\u0438\\u0433\\u0440\\u0430\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0438\\u0437 \\u0418\\u0441\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0438 \\u043d\\u0430 \\u0440\\u043e\\u0434\\u0438\\u043d\\u0435 \\u043e\\u043d\\u0438 \\u0431\\u044b\\u043b\\u0438 \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430\\u043c\\u0438. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u043d\\u0430\\u0443\\u0447\\u043d\\u044b\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043e\\u043d\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043e\\u0442 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0443 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0411\\u0435\\u0440\\u0438\\u043d\\u0433\\u043e\\u0432 \\u043f\\u0435\\u0440\\u0435\\u0448\\u0435\\u0435\\u043a. \\u0414\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u044f\\u0441\\u043d\\u043e \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043e\\u043d\\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c \\u0432 \\u0437\\u0430\\u043f\\u0430\\u0434\\u043d\\u044b\\u0445 \\u0448\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0421\\u0428\\u0410, \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 XIX\\u2014XX \\u0432\\u0435\\u043a\\u0430. \\u041e\\u043d\\u0438 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u043e \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0445 \\u043a\\u0440\\u043e\\u0432\\u0435\\u0439, \\u043f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0447\\u0438\\u043a\\u0438 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u043b\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a \\u043f\\u043e \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u043e\\u0441\\u0442\\u044f\\u043c, \\u0430 \\u043d\\u0435 \\u043f\\u043e \\u044d\\u043a\\u0441\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440\\u0443.<\\/p>\\r\\n<p>\\u0410\\u0443\\u0441\\u0441\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043d\\u0435\\u0437\\u0430\\u043c\\u0435\\u043d\\u0438\\u043c\\u044b\\u043c\\u0438 \\u043f\\u043e\\u043c\\u043e\\u0449\\u043d\\u0438\\u043a\\u0430\\u043c\\u0438 \\u043f\\u0440\\u0438 \\u0432\\u044b\\u0433\\u043e\\u043d\\u0435 \\u0441\\u043a\\u043e\\u0442\\u0430 \\u0432 \\u0421\\u043a\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b\\u0445 \\u0433\\u043e\\u0440\\u0430\\u0445, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u043c\\u0430\\u043b\\u043e\\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b \\u043a \\u043f\\u0435\\u0440\\u0435\\u043f\\u0430\\u0434\\u0430\\u043c \\u0432\\u044b\\u0441\\u043e\\u0442. \\u0424\\u0435\\u0440\\u043c\\u0435\\u0440\\u044b \\u0438\\u0437 \\u0411\\u043e\\u0443\\u043b\\u0434\\u0435\\u0440\\u0430, \\u0448\\u0442\\u0430\\u0442 \\u041a\\u043e\\u043b\\u043e\\u0440\\u0430\\u0434\\u043e, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u0440\\u0430\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u044d\\u0442\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u0441\\u043b\\u0430\\u0432\\u0430 \\u043e\\u0431 \\u0438\\u0445 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u043e\\u0441\\u0442\\u044f\\u0445 \\u043a \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044e \\u043e\\u0432\\u0446\\u0430\\u043c\\u0438, \\u0440\\u0430\\u0437\\u043d\\u043e\\u0441\\u0438\\u043b\\u0430 \\u0434\\u0430\\u043b\\u0435\\u043a\\u043e \\u0437\\u0430 \\u0433\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\\u043c\\u0438 \\u0448\\u0442\\u0430\\u0442\\u0430.<\\/p>\\r\\n<p>\\u041c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0438\\u0437 \\u043f\\u043e\\u0440\\u043e\\u0434, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441, \\u043d\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043b\\u0438 \\u0432 \\u0432\\u0438\\u043a\\u0442\\u043e\\u0440\\u0438\\u0430\\u043d\\u0441\\u043a\\u0443\\u044e \\u044d\\u043f\\u043e\\u0445\\u0443, \\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043a\\u0438 \\u043f\\u0440\\u0438\\u0435\\u0445\\u0430\\u043b\\u0438 \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0443 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0441 \\u0445\\u043e\\u0437\\u044f\\u0435\\u0432\\u0430\\u043c\\u0438. \\u041c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0438\\u0437 \\u043d\\u0438\\u0445 \\u0438\\u0441\\u0447\\u0435\\u0437\\u043b\\u0438, \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0441\\u043c\\u0435\\u0448\\u0430\\u043b\\u0438\\u0441\\u044c \\u0441 \\u0434\\u0440\\u0443\\u0433\\u0438\\u043c\\u0438 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430\\u043c\\u0438 \\u0438 \\u0434\\u0430\\u043b\\u0438 \\u043d\\u043e\\u0432\\u044b\\u0435. \\u0412\\u0438\\u0434\\u0438\\u043c\\u043e, \\u0442\\u043e \\u0436\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e \\u0438 \\u0441 \\u043f\\u0440\\u0435\\u0434\\u043a\\u0430\\u043c\\u0438 \\u0430\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0438, \\u0432\\u0435\\u0434\\u044c \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b\\u0438 \\u0447\\u0435\\u043c-\\u0442\\u043e \\u043d\\u0435\\u0437\\u044b\\u0431\\u043b\\u0435\\u043c\\u044b\\u043c, \\u0438\\u0445 \\u0441\\u043a\\u0440\\u0435\\u0449\\u0438\\u0432\\u0430\\u043b\\u0438 \\u0438 \\u043f\\u0440\\u0438\\u0441\\u043f\\u043e\\u0441\\u0430\\u0431\\u043b\\u0438\\u0432\\u0430\\u043b\\u0438 \\u043a \\u043d\\u043e\\u0432\\u044b\\u043c \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c. \\u0412 \\u0432\\u043e\\u0441\\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0448\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0421\\u0428\\u0410 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043d\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u043b\\u0438 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0443, \\u0442\\u0430\\u043a \\u0447\\u0442\\u043e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0437\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u043f\\u0440\\u0438\\u0441\\u043f\\u043e\\u0441\\u0430\\u0431\\u043b\\u0438\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c.<\\/p>","7":[2]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 2, '["784"]', NULL),
	(3, 'Первый альбом Герды', 1, 1, '', 785, 3, 0, '0000-00-00 00:00:00', '2018-10-11 14:11:52', '0000-00-00 00:00:00', '2018-10-11 14:11:52', '2018-10-11 14:11:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1, 0, '', '', '', 'pervyj-albom-gerdy', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '14ad5d92315158e40d90071f89b24aa4', '[]', 'Описание альбома собаки Герды, Первый альбом Герды', '{"18":[{"id":"3","filename":"1539223200_0e54d67c783f7c4a8b0711a8b087c519.jpg","realname":"\\u0410\\u0432\\u0441\\u0442\\u0440\\u0430\\u043b\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u043e\\u0432\\u0447\\u0430\\u0440\\u043a\\u0430 \\u0430\\u0443\\u0441\\u0441\\u0438.jpg","ext":"jpg","size":"75263","title":null,"description":null,"width":"929","height":"585","fullpath":"2018-10\\/1539223200_0e54d67c783f7c4a8b0711a8b087c519.jpg"}],"19":"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0430\\u043b\\u044c\\u0431\\u043e\\u043c\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0413\\u0435\\u0440\\u0434\\u044b","20":[2]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(2, 'Австралийская овчарка по кличке Герда, пол женский', 1, 1, '', 785, 1, 0, '0000-00-00 00:00:00', '2018-10-11 12:25:28', '0000-00-00 00:00:00', '2018-10-11 14:25:06', '2018-10-11 12:25:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, 0, '', '', '', 'gerda', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '86d4ed08f7eb0aee65f631bcfa2a2705', '[]', 'Герда, Gerda, женский, , , темно пегий, Бла бла бла про собаку, Австралийская овчарка по кличке Герда, пол женский', '{"1":{"image":"uploads\\/image\\/2018-10\\/1539260728_15030e2119438a419ff446c8614094bf.jpg"},"2":"<p>\\u0411\\u043b\\u0430 \\u0431\\u043b\\u0430 \\u0431\\u043b\\u0430 \\u043f\\u0440\\u043e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443<\\/p>","8":"1","3":"\\u0413\\u0435\\u0440\\u0434\\u0430","4":"Gerda","9":["\\u0436\\u0435\\u043d\\u0441\\u043a\\u0438\\u0439"],"10":["2007-05-18"],"11":[],"12":"","13":"","14":"\\u0442\\u0435\\u043c\\u043d\\u043e \\u043f\\u0435\\u0433\\u0438\\u0439","15":"56","16":"31","17":{"address":{"country":"BY","city":"\\u041c\\u0438\\u043d\\u0441\\u043a"},"position":{"lat":"53.9","lng":"27.56669999999997","zoom":""}},"21":[3]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 2, '[]', NULL),
	(4, 'Сибирский хаски', 1, 1, '', 784, 2, 0, '0000-00-00 00:00:00', '2018-10-14 06:34:30', '0000-00-00 00:00:00', '2018-10-14 07:45:05', '2018-10-14 06:39:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2, 0, '', '', '', 'sibirskij-khaski', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '7d3b2bb7a487f65509b7331c4bd02e81', '[]', 'Сибирский хаски (англ. Siberian Husky) порода собак среднего размера, родиной которых является Сибирь. Предки хаски служили северным племенам, чей образ жизни был кочевым и во многом зависел от помощи собак. Сегодня это популярная собака-компаньон, одна из самых популярных в мире пород.\r\nТезисы \r\n\r\n\r\nОбычно линяют они умеренно, кроме сезонной линьки, когда одновременно выпадает большое количество шерсти. В это время шерсть нужно расчесывать ежедневно или смириться с ней на коврах, полу, мебели.\r\n\r\n\r\n \r\n\r\n\r\nСибирские хаски могут уживаться в квартире, но только, если имеют возможность физически и умственно упражняться. Идеально содержать их в частном доме.\r\n\r\n\r\n \r\n\r\n\r\nЕсли собака не находит выхода для накопившейся энергии, то может быть очень деструктивной. В доме это погрызенные вещи и разбитые горшки. При содержании во дворе, могут с удовольствием рыть землю и делать подкопы под забором.\r\n\r\n\r\n \r\n\r\n\r\nХаски редко лают, даже если кто-то чужой приближается к дому. Это делает их никакими сторожевыми, а отсутствие агрессии к человеку — охранными.\r\n\r\n\r\n \r\n\r\n\r\nЭта порода не подходит для начинающих или неопытных собаководов. Им нужен строгий хозяин, который будет занимать позицию лидера в стае. Лучше пройти курс дрессировки, так как это упрямые собаки.\r\n\r\n\r\n \r\n\r\n\r\nОни очень любопытные и могут получить травму или заблудиться, если выберутся за пределы дома.\r\n\r\n\r\n \r\n\r\n\r\nЛюбвеобильные и добродушные, хаски хорошо подходят для содержания в семьях с детьми. Однако, не стоит оставлять наедине собаку и ребенка, какой породы бы она не была.\r\n\r\n\r\n \r\n\r\n\r\nСибирские хаски вынуждены были приспособиться к условиям севера и крайне скудного пайка. Это умение сохранилось и по сей день, им не нужно много калорийной пищи. Важно узнать у заводчика, как и чем кормит он своих собак, прежде чем покупать щенка.\r\n\r\n\r\n \r\n\r\n\r\nЖелательно спускать с поводка во время прогулки, так как они способны преследовать мелких животных.\r\n\r\n\r\n \r\nИстория породы\r\n \r\nХаски принадлежит к древнейшим породам собак, геном которых наименее всего отличается от волка. В этом списке 14 пород и среди них помимо хаски есть: аляскинский маламут, акита-ину, самоедская собака, чау-чау, ши-тцу, шарпей, тибетский терьер, сиба-ину и другие. Название хаски происходит от английского «Esky» — эскимосы.\r\nПредки породы появились на территории суровой Сибири, так что густая шерсть и развитый интеллект стали одним из условий для выживания. Предположение о том что хаски произошли от волка (в силу схожести с ним), подтвердили генетики, однако когда и как это произошло, остается неясным.\r\nВ докладе «Genetic Structure of the Purebred Domestic Dog» опубликованном в 2004 году, приведены исследования генома многих собак, среди которых выявлены самые древние породы. Их объединяет родство с волком, но они выходцы из разных регионов: Центральная Африка (басенджи), Ближний Восток (салюки и афган), Тибет (тибетский терьер и лхасо апсо), Китай (чау-чау, пекинес, шарпей и ши-тцу), Япония (акита-ину и сиба-ину), Арктика (аляскинский маламут, самоедская собака и сибирский хаски). Исследователи предполагают что первые собаки появились в Азии и вместе с кочевыми племенами расселялись по миру.\r\nПервыми кто стал использовать хаски в быту, стали племена чукчей (под этим названием объединены многие племена), которые жили охотой на морских животных и оленеводством. Жизнь на Чукотке суровая и чукчи использовали их в качестве ездовых, сторожевых и пастушьих собак. Века естественного отбора создали крепкую, здоровую, выносливую собаку.\r\nХаски впервые попали в Америку в 1908 году и стали объектом шуток и насмешек. Торговец пушниной российского происхождения Уильям Гусак импортировал их для участия в гонках на собачьих упряжках, очень популярных в период золотой лихорадки. Победитель гонок получал 10 000 долларов и должен был пройти участок длиной в 408 миль.\r\nСоперники Гусака использовали куда более крупных собак и высмеяли его выбор, называя хаски — сибирскими крысами. Однако, гонка расставила все по местам. Упряжка хаски прибыла третьей, хотя многие считают что могла прибыть и первой. Просто ставки были столь высоки, что прибудь она первой, то разорила бы многих и Гусака подкупили чтобы он уступил.\r\nПосле гонки 1909 года, сибирский хаски завоевывают себе репутацию, которую укрепляют в 1910 году. В том году, три упряжки (купленные в Сибири Фоксом Маули Рамзи), занимают первое, второе и четвертое место, попутно установив рекорд скорости. Вскоре после этого, все гонщики начинают использовать хаски и “сибирские крысы” обретают новый дом в Америке.\r\nВ 1925 году вспышка дифтерии поражает аляскинский город Ном. Единственным способом доставить вакцину в город является собачья упряжка, но для этого им нужно преодолеть путь в 1 085 км. Упряжкой, которая привезла вакцину в город управлял Гуннар Каасен, вожаком был угольно-чёрный сибирский хаски по кличке Балто (англ. Balto).\r\nЧтобы увековечить подвиг собак, им поставили памятник в центральном парке Нью-Йорка с надписью: «Выносливость, преданность, разум». Балто заслужил его, но важную часть пути проделал другой пес, Того из упряжки норвежца Леонарда Сеппала. Эта упряжка прошла без отдыха 418 километров, затем передала вакцину Гуннару Каасену.\r\nТого провел упряжку по самому опасному участку пути, избежал трещин и полыней и заплатил за это здоровьем, у него отказали лапы. Современники назовут эту гонку «великой гонкой милосердия»\r\n\r\n\r\nГлавная » » Собаки » Сибирский хаски\r\n\r\nСибирский хаски\r\n\r\n \r\n\r\nСибирский хаски (англ. Siberian Husky) порода собак среднего размера, родиной которых является Сибирь. Предки хаски служили северным племенам, чей образ жизни был кочевым и во многом зависел от помощи собак. Сегодня это популярная собака-компаньон, одна из самых популярных в мире пород. \r\n \r\n\r\nСодержимое [hide]\r\n\r\n1 Тезисы \r\n2 История породы\r\n3 Описание породы \r\n4 Характер \r\n5 Уход \r\n6 Здоровье\r\n\r\n\r\nТезисы \r\n\r\n\r\nОбычно линяют они умеренно, кроме сезонной линьки, когда одновременно выпадает большое количество шерсти. В это время шерсть нужно расчесывать ежедневно или смириться с ней на коврах, полу, мебели.\r\n\r\n\r\n \r\n\r\n\r\nСибирские хаски могут уживаться в квартире, но только, если имеют возможность физически и умственно упражняться. Идеально содержать их в частном доме.\r\n\r\n\r\n \r\n\r\n\r\nЕсли собака не находит выхода для накопившейся энергии, то может быть очень деструктивной. В доме это погрызенные вещи и разбитые горшки. При содержании во дворе, могут с удовольствием рыть землю и делать подкопы под забором.\r\n\r\n\r\n \r\n\r\n\r\nХаски редко лают, даже если кто-то чужой приближается к дому. Это делает их никакими сторожевыми, а отсутствие агрессии к человеку — охранными.\r\n\r\n\r\n \r\n\r\n\r\nЭта порода не подходит для начинающих или неопытных собаководов. Им нужен строгий хозяин, который будет занимать позицию лидера в стае. Лучше пройти курс дрессировки, так как это упрямые собаки.\r\n\r\n\r\n \r\n\r\n\r\nОни очень любопытные и могут получить травму или заблудиться, если выберутся за пределы дома.\r\n\r\n\r\n \r\n\r\n\r\nЛюбвеобильные и добродушные, хаски хорошо подходят для содержания в семьях с детьми. Однако, не стоит оставлять наедине собаку и ребенка, какой породы бы она не была.\r\n\r\n\r\n \r\n\r\n\r\nСибирские хаски вынуждены были приспособиться к условиям севера и крайне скудного пайка. Это умение сохранилось и по сей день, им не нужно много калорийной пищи. Важно узнать у заводчика, как и чем кормит он своих собак, прежде чем покупать щенка.\r\n\r\n\r\n \r\n\r\n\r\nЖелательно спускать с поводка во время прогулки, так как они способны преследовать мелких животных.\r\n\r\n\r\n \r\nИстория породы\r\n \r\nХаски принадлежит к древнейшим породам собак, геном которых наименее всего отличается от волка. В этом списке 14 пород и среди них помимо хаски есть: аляскинский маламут, акита-ину, самоедская собака, чау-чау, ши-тцу, шарпей, тибетский терьер, сиба-ину и другие. Название хаски происходит от английского «Esky» — эскимосы.\r\nПредки породы появились на территории суровой Сибири, так что густая шерсть и развитый интеллект стали одним из условий для выживания. Предположение о том что хаски произошли от волка (в силу схожести с ним), подтвердили генетики, однако когда и как это произошло, остается неясным.\r\nВ докладе «Genetic Structure of the Purebred Domestic Dog» опубликованном в 2004 году, приведены исследования генома многих собак, среди которых выявлены самые древние породы. Их объединяет родство с волком, но они выходцы из разных регионов: Центральная Африка (басенджи), Ближний Восток (салюки и афган), Тибет (тибетский терьер и лхасо апсо), Китай (чау-чау, пекинес, шарпей и ши-тцу), Япония (акита-ину и сиба-ину), Арктика (аляскинский маламут, самоедская собака и сибирский хаски). Исследователи предполагают что первые собаки появились в Азии и вместе с кочевыми племенами расселялись по миру.\r\nПервыми кто стал использовать хаски в быту, стали племена чукчей (под этим названием объединены многие племена), которые жили охотой на морских животных и оленеводством. Жизнь на Чукотке суровая и чукчи использовали их в качестве ездовых, сторожевых и пастушьих собак. Века естественного отбора создали крепкую, здоровую, выносливую собаку.\r\nХаски впервые попали в Америку в 1908 году и стали объектом шуток и насмешек. Торговец пушниной российского происхождения Уильям Гусак импортировал их для участия в гонках на собачьих упряжках, очень популярных в период золотой лихорадки. Победитель гонок получал 10 000 долларов и должен был пройти участок длиной в 408 миль.\r\nСоперники Гусака использовали куда более крупных собак и высмеяли его выбор, называя хаски — сибирскими крысами. Однако, гонка расставила все по местам. Упряжка хаски прибыла третьей, хотя многие считают что могла прибыть и первой. Просто ставки были столь высоки, что прибудь она первой, то разорила бы многих и Гусака подкупили чтобы он уступил.  После гонки 1909 года, сибирский хаски завоевывают себе репутацию, которую укрепляют в 1910 году. В том году, три упряжки (купленные в Сибири Фоксом Маули Рамзи), занимают первое, второе и четвертое место, попутно установив рекорд скорости. Вскоре после этого, все гонщики начинают использовать хаски и “сибирские крысы” обретают новый дом в Америке.\r\nВ 1925 году вспышка дифтерии поражает аляскинский город Ном. Единственным способом доставить вакцину в город является собачья упряжка, но для этого им нужно преодолеть путь в 1 085 км. Упряжкой, которая привезла вакцину в город управлял Гуннар Каасен, вожаком был угольно-чёрный сибирский хаски по кличке Балто (англ. Balto).\r\nЧтобы увековечить подвиг собак, им поставили памятник в центральном парке Нью-Йорка с надписью: «Выносливость, преданность, разум». Балто заслужил его, но важную часть пути проделал другой пес, Того из упряжки норвежца Леонарда Сеппала. Эта упряжка прошла без отдыха 418 километров, затем передала вакцину Гуннару Каасену.\r\nТого провел упряжку по самому опасному участку пути, избежал трещин и полыней и заплатил за это здоровьем, у него отказали лапы. Современники назовут эту гонку «великой гонкой милосердия»  Постепенно сибирские хаски стали уступать в гонках метисам, собакам в крови которых смешны легавые, гончие собаки. Они показали лучшую скорость и сегодня их относят к отдельной породе — аляскинским хаски, впрочем их не признали во многих кинологических организациях, в том числе и МКФ.\r\nСами же сибирские хаски стали разделяться на рабочих (самые редкие), гоночных и собак-шоу класса. Именно последние завоевали мир своим обликом и сделали породу одной из самых известных и популярных.\r\nОписание породы \r\nПопулярные из-за своей схожести с волком, сибирские хаски узнаваемы по густой шерсти, стоячим треугольным ушам, характерному окрасу. Кобели в холке достигают 53–61 и весят 20–27 кг, суки 46–51 см и весят 16–23 кг. Шерсть двойная, очень густая. Хотя окрас может быть практически любым, чаще всего встречаются черно-белый, серо-белый, чисто белый. Хвост очень пушистый, напоминает лисий и в возбужденном состоянии поднят над спиной. Уши треугольной формы, стоячие со слегка закругленными кончиками.\r\nГлаза миндалевидной формы, окраса от карего до голубого, но часто встречается гетерохромия, когда глаза разного окраса.\r\nХарактер \r\nХарактер хаски достаточно мягкий, но ей важно понимать иерархию внутри стаи. Этих собак ценили за выносливость и ум, нужны были только те собаки, которые способны быстро учиться, выполнять разнообразную работу и адаптироваться к любым условиям. Это энергичная собака, которая нуждается в работе, чтобы быть счастливой.\r\nБез умственной работы, они могут заскучать и стать деструктивными. Послушные и не территориальные, хаски хищные по природе и могут преследовать мелких животных. Дело в том, что кормили их только зимой, а в остальные месяцы хаски жили на вольном выпасе, добывая себе пищу мышкованием и охотой на мелких животных.\r\nРабота в упряжке и своре не может быть слаженной без четкой иерархии. Об этом необходимо помнить и члены семьи должны быть выше хаски по иерархии, так как последние обычно стремятся утвердить свое превосходство. В остальном это исключительно семейные собаки: игривые, любвеобильные, мягкие.\r\n \r\nЕсли щенка приучать с раннего возраста, то они хорошо ладят с домашними животными и легко приспосабливаются для жизни в квартире. Опять же, ездовые собаки должны хорошо ладить друг с другом и хаски спокойно переносит компанию других собак, особенно родственников.\r\nТут нужно учитывать что такая толерантность свойственна не всякой породе и содержать их с собаками, схожими по характеру.\r\nЭто энергичные собаки, которые станут великолепными компаньонами для людей активных. Хотя хаски очень общительны и редко стесняются людей, они также чрезвычайно. Однако, их ум позволяет справляться с закрытыми дверями, а любопытство заставляет отправиться на поиски приключений.\r\nЭти собаки склонны к бродяжничеству, способны открывать двери и подкапывать или перепрыгивать заборы. Это свойство осталось у них с древних времен, ведь коренные народы севера отпускали хаски на весну и лето.\r\nИз-за моды и красоты, хаски стали одной из самых популярных пород. Однако зачастую владельцы не учитывают характер собаки и свойственные им сложности, сосредотачиваясь только на красоте. Множество собак было усыплено, потеряно или сдано в приюты, только потому, что владельцы недостаточно изучили породу.\r\nЕсли вы размышляете над тем чтобы купить хаски, посвятите достаточно времени изучению породы. Посетите владельцев, зайдите в хороший питомник, почитайте книги или форумы. Если после всего этого, вы по-прежнему захотите завести себе эту собаку, то внимательно выберите питомник. Последуйте советам заводчика и помните, что эти собаки преподнесут вам сюрпризы. И не всегда приятные.\r\nУход \r\nНе особо сложный, но густая шерсть требует еженедельного ухода. Хаски очень чистоплотны и следят за собой, кроме того, не имеют запаха. Два раза в год они линяют, в этом время расчесывать шерсть нужно ежедневно\r\nЗдоровье\r\nПри правильном уходе продолжительность жизни хаски от 12 до 15 лет. В целом это здоровая порода, а заболевания от которых они страдают, носят генетический характер. У породы крайне низкий процент заболеваемости дисплазией тазобедренного сустава. Они занимают 148-е место из 153 пород по количеству собак страдающих от дисплазии, только 2% от популяции могут заболевать ею.\r\n\r\n\r\n, Сибирский хаски', '{"6":"<p>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 (\\u0430\\u043d\\u0433\\u043b. Siberian Husky) \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0433\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430, \\u0440\\u043e\\u0434\\u0438\\u043d\\u043e\\u0439 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0421\\u0438\\u0431\\u0438\\u0440\\u044c. \\u041f\\u0440\\u0435\\u0434\\u043a\\u0438 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u043b\\u0443\\u0436\\u0438\\u043b\\u0438 \\u0441\\u0435\\u0432\\u0435\\u0440\\u043d\\u044b\\u043c \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430\\u043c, \\u0447\\u0435\\u0439 \\u043e\\u0431\\u0440\\u0430\\u0437 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0431\\u044b\\u043b \\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u043c \\u0438 \\u0432\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e\\u043c \\u0437\\u0430\\u0432\\u0438\\u0441\\u0435\\u043b \\u043e\\u0442 \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a. \\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u044d\\u0442\\u043e \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430-\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u044c\\u043e\\u043d, \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u0432 \\u043c\\u0438\\u0440\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434.<\\/p>\\r\\n<h3><span id=\\"i\\">\\u0422\\u0435\\u0437\\u0438\\u0441\\u044b<br \\/> <\\/span><\\/h3>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043b\\u0438\\u043d\\u044f\\u044e\\u0442 \\u043e\\u043d\\u0438 \\u0443\\u043c\\u0435\\u0440\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0440\\u043e\\u043c\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043b\\u0438\\u043d\\u044c\\u043a\\u0438, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0432\\u044b\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0448\\u0435\\u0440\\u0441\\u0442\\u0438. \\u0412 \\u044d\\u0442\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u043d\\u0443\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u0447\\u0435\\u0441\\u044b\\u0432\\u0430\\u0442\\u044c \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0441\\u043c\\u0438\\u0440\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u043d\\u0435\\u0439 \\u043d\\u0430 \\u043a\\u043e\\u0432\\u0440\\u0430\\u0445, \\u043f\\u043e\\u043b\\u0443, \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0443\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u0432 \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0435, \\u043d\\u043e \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e, \\u0435\\u0441\\u043b\\u0438 \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0443\\u043c\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0436\\u043d\\u044f\\u0442\\u044c\\u0441\\u044f. \\u0418\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u044c \\u0438\\u0445 \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u043c \\u0434\\u043e\\u043c\\u0435.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0415\\u0441\\u043b\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430 \\u043d\\u0435 \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u0434\\u043b\\u044f \\u043d\\u0430\\u043a\\u043e\\u043f\\u0438\\u0432\\u0448\\u0435\\u0439\\u0441\\u044f \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0438, \\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043e\\u0447\\u0435\\u043d\\u044c \\u0434\\u0435\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439. \\u0412 \\u0434\\u043e\\u043c\\u0435 \\u044d\\u0442\\u043e \\u043f\\u043e\\u0433\\u0440\\u044b\\u0437\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432\\u0435\\u0449\\u0438 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u0438\\u0442\\u044b\\u0435 \\u0433\\u043e\\u0440\\u0448\\u043a\\u0438. \\u041f\\u0440\\u0438 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0438 \\u0432\\u043e \\u0434\\u0432\\u043e\\u0440\\u0435, \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0441 \\u0443\\u0434\\u043e\\u0432\\u043e\\u043b\\u044c\\u0441\\u0442\\u0432\\u0438\\u0435\\u043c \\u0440\\u044b\\u0442\\u044c \\u0437\\u0435\\u043c\\u043b\\u044e \\u0438 \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u043a\\u043e\\u043f\\u044b \\u043f\\u043e\\u0434 \\u0437\\u0430\\u0431\\u043e\\u0440\\u043e\\u043c.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u0440\\u0435\\u0434\\u043a\\u043e \\u043b\\u0430\\u044e\\u0442, \\u0434\\u0430\\u0436\\u0435 \\u0435\\u0441\\u043b\\u0438 \\u043a\\u0442\\u043e-\\u0442\\u043e \\u0447\\u0443\\u0436\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u0434\\u043e\\u043c\\u0443. \\u042d\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u043d\\u0438\\u043a\\u0430\\u043a\\u0438\\u043c\\u0438 \\u0441\\u0442\\u043e\\u0440\\u043e\\u0436\\u0435\\u0432\\u044b\\u043c\\u0438, \\u0430 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0430\\u0433\\u0440\\u0435\\u0441\\u0441\\u0438\\u0438 \\u043a \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0443 \\u2014 \\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u042d\\u0442\\u0430 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0434\\u043b\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u0445 \\u0438\\u043b\\u0438 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u0418\\u043c \\u043d\\u0443\\u0436\\u0435\\u043d \\u0441\\u0442\\u0440\\u043e\\u0433\\u0438\\u0439 \\u0445\\u043e\\u0437\\u044f\\u0438\\u043d, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u043b\\u0438\\u0434\\u0435\\u0440\\u0430 \\u0432 \\u0441\\u0442\\u0430\\u0435. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043a\\u0443\\u0440\\u0441 \\u0434\\u0440\\u0435\\u0441\\u0441\\u0438\\u0440\\u043e\\u0432\\u043a\\u0438, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e \\u0443\\u043f\\u0440\\u044f\\u043c\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u043d\\u0438 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043b\\u044e\\u0431\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u0442\\u0440\\u0430\\u0432\\u043c\\u0443 \\u0438\\u043b\\u0438 \\u0437\\u0430\\u0431\\u043b\\u0443\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b\\u0431\\u0435\\u0440\\u0443\\u0442\\u0441\\u044f \\u0437\\u0430 \\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044b \\u0434\\u043e\\u043c\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041b\\u044e\\u0431\\u0432\\u0435\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438 \\u0434\\u043e\\u0431\\u0440\\u043e\\u0434\\u0443\\u0448\\u043d\\u044b\\u0435, \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0434\\u043b\\u044f \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0435\\u043c\\u044c\\u044f\\u0445 \\u0441 \\u0434\\u0435\\u0442\\u044c\\u043c\\u0438. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u043d\\u0435 \\u0441\\u0442\\u043e\\u0438\\u0442 \\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u043d\\u0430\\u0435\\u0434\\u0438\\u043d\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443 \\u0438 \\u0440\\u0435\\u0431\\u0435\\u043d\\u043a\\u0430, \\u043a\\u0430\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u0431\\u044b \\u043e\\u043d\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0432\\u044b\\u043d\\u0443\\u0436\\u0434\\u0435\\u043d\\u044b \\u0431\\u044b\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0438\\u0442\\u044c\\u0441\\u044f \\u043a \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c \\u0441\\u0435\\u0432\\u0435\\u0440\\u0430 \\u0438 \\u043a\\u0440\\u0430\\u0439\\u043d\\u0435 \\u0441\\u043a\\u0443\\u0434\\u043d\\u043e\\u0433\\u043e \\u043f\\u0430\\u0439\\u043a\\u0430. \\u042d\\u0442\\u043e \\u0443\\u043c\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u043e\\u0441\\u044c \\u0438 \\u043f\\u043e \\u0441\\u0435\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u0438\\u043c \\u043d\\u0435 \\u043d\\u0443\\u0436\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\\u043d\\u043e\\u0439 \\u043f\\u0438\\u0449\\u0438. \\u0412\\u0430\\u0436\\u043d\\u043e \\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0447\\u0438\\u043a\\u0430, \\u043a\\u0430\\u043a \\u0438 \\u0447\\u0435\\u043c \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442 \\u043e\\u043d \\u0441\\u0432\\u043e\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u043f\\u0440\\u0435\\u0436\\u0434\\u0435 \\u0447\\u0435\\u043c \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u044c \\u0449\\u0435\\u043d\\u043a\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0416\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u043f\\u0443\\u0441\\u043a\\u0430\\u0442\\u044c \\u0441 \\u043f\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043a\\u0438, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u044b \\u043f\\u0440\\u0435\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3><span id=\\"i-2\\">\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b<\\/span><\\/h3>\\r\\n<div class=\\"b336x280\\">\\u00a0<\\/div>\\r\\n<p>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u0438\\u0442 \\u043a \\u0434\\u0440\\u0435\\u0432\\u043d\\u0435\\u0439\\u0448\\u0438\\u043c \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430\\u043c \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0433\\u0435\\u043d\\u043e\\u043c \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u0435\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u043e\\u043b\\u043a\\u0430. \\u0412 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043f\\u0438\\u0441\\u043a\\u0435 14 \\u043f\\u043e\\u0440\\u043e\\u0434 \\u0438 \\u0441\\u0440\\u0435\\u0434\\u0438 \\u043d\\u0438\\u0445 \\u043f\\u043e\\u043c\\u0438\\u043c\\u043e \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0435\\u0441\\u0442\\u044c: \\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0430\\u043b\\u0430\\u043c\\u0443\\u0442, \\u0430\\u043a\\u0438\\u0442\\u0430-\\u0438\\u043d\\u0443, \\u0441\\u0430\\u043c\\u043e\\u0435\\u0434\\u0441\\u043a\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430, \\u0447\\u0430\\u0443-\\u0447\\u0430\\u0443, \\u0448\\u0438-\\u0442\\u0446\\u0443, \\u0448\\u0430\\u0440\\u043f\\u0435\\u0439, \\u0442\\u0438\\u0431\\u0435\\u0442\\u0441\\u043a\\u0438\\u0439 \\u0442\\u0435\\u0440\\u044c\\u0435\\u0440, \\u0441\\u0438\\u0431\\u0430-\\u0438\\u043d\\u0443 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435. \\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043e\\u0442 \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u00abEsky\\u00bb \\u2014 \\u044d\\u0441\\u043a\\u0438\\u043c\\u043e\\u0441\\u044b.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043a\\u0438 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0441\\u0443\\u0440\\u043e\\u0432\\u043e\\u0439 \\u0421\\u0438\\u0431\\u0438\\u0440\\u0438, \\u0442\\u0430\\u043a \\u0447\\u0442\\u043e \\u0433\\u0443\\u0441\\u0442\\u0430\\u044f \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0439 \\u0434\\u043b\\u044f \\u0432\\u044b\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f. \\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0442\\u043e\\u043c \\u0447\\u0442\\u043e \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u0438 \\u043e\\u0442 \\u0432\\u043e\\u043b\\u043a\\u0430 (\\u0432 \\u0441\\u0438\\u043b\\u0443 \\u0441\\u0445\\u043e\\u0436\\u0435\\u0441\\u0442\\u0438 \\u0441 \\u043d\\u0438\\u043c), \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u043b\\u0438 \\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0434\\u043d\\u0430\\u043a\\u043e \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0438 \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e, \\u043e\\u0441\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u044f\\u0441\\u043d\\u044b\\u043c.<\\/p>\\r\\n<p>\\u0412 \\u0434\\u043e\\u043a\\u043b\\u0430\\u0434\\u0435 \\u00abGenetic Structure of the Purebred Domestic Dog\\u00bb \\u043e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u043c \\u0432 2004 \\u0433\\u043e\\u0434\\u0443, \\u043f\\u0440\\u0438\\u0432\\u0435\\u0434\\u0435\\u043d\\u044b \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0433\\u0435\\u043d\\u043e\\u043c\\u0430 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0432\\u044b\\u044f\\u0432\\u043b\\u0435\\u043d\\u044b \\u0441\\u0430\\u043c\\u044b\\u0435 \\u0434\\u0440\\u0435\\u0432\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b. \\u0418\\u0445 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u044f\\u0435\\u0442 \\u0440\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e \\u0441 \\u0432\\u043e\\u043b\\u043a\\u043e\\u043c, \\u043d\\u043e \\u043e\\u043d\\u0438 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0446\\u044b \\u0438\\u0437 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432: \\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0410\\u0444\\u0440\\u0438\\u043a\\u0430 (<a href=\\"http:\\/\\/catfishes.ru\\/afrikanskaya-nelayushhaya-sobaka-basendzhi\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0431\\u0430\\u0441\\u0435\\u043d\\u0434\\u0436\\u0438<\\/a>), \\u0411\\u043b\\u0438\\u0436\\u043d\\u0438\\u0439 \\u0412\\u043e\\u0441\\u0442\\u043e\\u043a (<a href=\\"http:\\/\\/catfishes.ru\\/salyuki\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0430\\u043b\\u044e\\u043a\\u0438<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/poroda-afganskaya-borzaya\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u0444\\u0433\\u0430\\u043d<\\/a>), \\u0422\\u0438\\u0431\\u0435\\u0442 (<a href=\\"http:\\/\\/catfishes.ru\\/tibetskij-terer\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0442\\u0438\\u0431\\u0435\\u0442\\u0441\\u043a\\u0438\\u0439 \\u0442\\u0435\\u0440\\u044c\\u0435\\u0440<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/lxasa-apso\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u043b\\u0445\\u0430\\u0441\\u043e \\u0430\\u043f\\u0441\\u043e<\\/a>), \\u041a\\u0438\\u0442\\u0430\\u0439 (<a href=\\"http:\\/\\/catfishes.ru\\/chau-chau\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0447\\u0430\\u0443-\\u0447\\u0430\\u0443<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/pekines\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u043f\\u0435\\u043a\\u0438\\u043d\\u0435\\u0441<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/sharpej\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0448\\u0430\\u0440\\u043f\\u0435\\u0439<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/shi-tcu\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0448\\u0438-\\u0442\\u0446\\u0443<\\/a>), \\u042f\\u043f\\u043e\\u043d\\u0438\\u044f (<a href=\\"http:\\/\\/catfishes.ru\\/akita-inu-i-amerikanskaya-akita\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u043a\\u0438\\u0442\\u0430-\\u0438\\u043d\\u0443<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/siba-inu\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0438\\u0431\\u0430-\\u0438\\u043d\\u0443<\\/a>), \\u0410\\u0440\\u043a\\u0442\\u0438\\u043a\\u0430 (<a href=\\"http:\\/\\/catfishes.ru\\/alyaskinskij-malamut\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0430\\u043b\\u0430\\u043c\\u0443\\u0442<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/samoedskaya-sobaka\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0430\\u043c\\u043e\\u0435\\u0434\\u0441\\u043a\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430<\\/a> \\u0438 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438). \\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0438\\u0441\\u044c \\u0432 \\u0410\\u0437\\u0438\\u0438 \\u0438 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0441 \\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u043c\\u0438 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430\\u043c\\u0438 \\u0440\\u0430\\u0441\\u0441\\u0435\\u043b\\u044f\\u043b\\u0438\\u0441\\u044c \\u043f\\u043e \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p>\\u041f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u043a\\u0442\\u043e \\u0441\\u0442\\u0430\\u043b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0432 \\u0431\\u044b\\u0442\\u0443, \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430 \\u0447\\u0443\\u043a\\u0447\\u0435\\u0439 (\\u043f\\u043e\\u0434 \\u044d\\u0442\\u0438\\u043c \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u044b \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430), \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0436\\u0438\\u043b\\u0438 \\u043e\\u0445\\u043e\\u0442\\u043e\\u0439 \\u043d\\u0430 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445 \\u0438 \\u043e\\u043b\\u0435\\u043d\\u0435\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c. \\u0416\\u0438\\u0437\\u043d\\u044c \\u043d\\u0430 \\u0427\\u0443\\u043a\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0443\\u0440\\u043e\\u0432\\u0430\\u044f \\u0438 \\u0447\\u0443\\u043a\\u0447\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438 \\u0438\\u0445 \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u0435\\u0437\\u0434\\u043e\\u0432\\u044b\\u0445, \\u0441\\u0442\\u043e\\u0440\\u043e\\u0436\\u0435\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a. \\u0412\\u0435\\u043a\\u0430 \\u0435\\u0441\\u0442\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u0431\\u043e\\u0440\\u0430 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043b\\u0438 \\u043a\\u0440\\u0435\\u043f\\u043a\\u0443\\u044e, \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u0443\\u044e, \\u0432\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u0443\\u044e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443.<\\/p>\\r\\n<p>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u0432\\u043f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0443 \\u0432 1908 \\u0433\\u043e\\u0434\\u0443 \\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u043e\\u043c \\u0448\\u0443\\u0442\\u043e\\u043a \\u0438 \\u043d\\u0430\\u0441\\u043c\\u0435\\u0448\\u0435\\u043a. \\u0422\\u043e\\u0440\\u0433\\u043e\\u0432\\u0435\\u0446 \\u043f\\u0443\\u0448\\u043d\\u0438\\u043d\\u043e\\u0439 \\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f \\u0423\\u0438\\u043b\\u044c\\u044f\\u043c \\u0413\\u0443\\u0441\\u0430\\u043a \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b \\u0438\\u0445 \\u0434\\u043b\\u044f \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u044f \\u0432 \\u0433\\u043e\\u043d\\u043a\\u0430\\u0445 \\u043d\\u0430 \\u0441\\u043e\\u0431\\u0430\\u0447\\u044c\\u0438\\u0445 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430\\u0445, \\u043e\\u0447\\u0435\\u043d\\u044c \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u0432 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434 \\u0437\\u043e\\u043b\\u043e\\u0442\\u043e\\u0439 \\u043b\\u0438\\u0445\\u043e\\u0440\\u0430\\u0434\\u043a\\u0438. \\u041f\\u043e\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u0433\\u043e\\u043d\\u043e\\u043a \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u043b 10 000 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u043e\\u0432 \\u0438 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u043b \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u0443\\u0447\\u0430\\u0441\\u0442\\u043e\\u043a \\u0434\\u043b\\u0438\\u043d\\u043e\\u0439 \\u0432 408 \\u043c\\u0438\\u043b\\u044c.<\\/p>\\r\\n<p>\\u0421\\u043e\\u043f\\u0435\\u0440\\u043d\\u0438\\u043a\\u0438 \\u0413\\u0443\\u0441\\u0430\\u043a\\u0430 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438 \\u043a\\u0443\\u0434\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0438 \\u0432\\u044b\\u0441\\u043c\\u0435\\u044f\\u043b\\u0438 \\u0435\\u0433\\u043e \\u0432\\u044b\\u0431\\u043e\\u0440, \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u044f \\u0445\\u0430\\u0441\\u043a\\u0438 \\u2014 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043a\\u0440\\u044b\\u0441\\u0430\\u043c\\u0438. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u0433\\u043e\\u043d\\u043a\\u0430 \\u0440\\u0430\\u0441\\u0441\\u0442\\u0430\\u0432\\u0438\\u043b\\u0430 \\u0432\\u0441\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0430\\u043c. \\u0423\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0430 \\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u0439, \\u0445\\u043e\\u0442\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0441\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043c\\u043e\\u0433\\u043b\\u0430 \\u043f\\u0440\\u0438\\u0431\\u044b\\u0442\\u044c \\u0438 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439. \\u041f\\u0440\\u043e\\u0441\\u0442\\u043e \\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u044b\\u043b\\u0438 \\u0441\\u0442\\u043e\\u043b\\u044c \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438, \\u0447\\u0442\\u043e \\u043f\\u0440\\u0438\\u0431\\u0443\\u0434\\u044c \\u043e\\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439, \\u0442\\u043e \\u0440\\u0430\\u0437\\u043e\\u0440\\u0438\\u043b\\u0430 \\u0431\\u044b \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0438 \\u0413\\u0443\\u0441\\u0430\\u043a\\u0430 \\u043f\\u043e\\u0434\\u043a\\u0443\\u043f\\u0438\\u043b\\u0438 \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u043d \\u0443\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b.<\\/p>\\r\\n<p>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u0433\\u043e\\u043d\\u043a\\u0438 1909 \\u0433\\u043e\\u0434\\u0430, \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0441\\u0435\\u0431\\u0435 \\u0440\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u0443\\u043a\\u0440\\u0435\\u043f\\u043b\\u044f\\u044e\\u0442 \\u0432 1910 \\u0433\\u043e\\u0434\\u0443. \\u0412 \\u0442\\u043e\\u043c \\u0433\\u043e\\u0434\\u0443, \\u0442\\u0440\\u0438 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0438 (\\u043a\\u0443\\u043f\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0421\\u0438\\u0431\\u0438\\u0440\\u0438 \\u0424\\u043e\\u043a\\u0441\\u043e\\u043c \\u041c\\u0430\\u0443\\u043b\\u0438 \\u0420\\u0430\\u043c\\u0437\\u0438), \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435, \\u0432\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0438 \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0442\\u043e\\u0435 \\u043c\\u0435\\u0441\\u0442\\u043e, \\u043f\\u043e\\u043f\\u0443\\u0442\\u043d\\u043e \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0432 \\u0440\\u0435\\u043a\\u043e\\u0440\\u0434 \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u0438. \\u0412\\u0441\\u043a\\u043e\\u0440\\u0435 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e, \\u0432\\u0441\\u0435 \\u0433\\u043e\\u043d\\u0449\\u0438\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0442 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0438 \\u201c\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u043a\\u0440\\u044b\\u0441\\u044b\\u201d \\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0434\\u043e\\u043c \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0435.<\\/p>\\r\\n<p>\\u0412 1925 \\u0433\\u043e\\u0434\\u0443 \\u0432\\u0441\\u043f\\u044b\\u0448\\u043a\\u0430 \\u0434\\u0438\\u0444\\u0442\\u0435\\u0440\\u0438\\u0438 \\u043f\\u043e\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442 \\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u041d\\u043e\\u043c. \\u0415\\u0434\\u0438\\u043d\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u043c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0441\\u043e\\u0431\\u0430\\u0447\\u044c\\u044f \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430, \\u043d\\u043e \\u0434\\u043b\\u044f \\u044d\\u0442\\u043e\\u0433\\u043e \\u0438\\u043c \\u043d\\u0443\\u0436\\u043d\\u043e \\u043f\\u0440\\u0435\\u043e\\u0434\\u043e\\u043b\\u0435\\u0442\\u044c \\u043f\\u0443\\u0442\\u044c \\u0432 1 085 \\u043a\\u043c. \\u0423\\u043f\\u0440\\u044f\\u0436\\u043a\\u043e\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u0440\\u0438\\u0432\\u0435\\u0437\\u043b\\u0430 \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u043b \\u0413\\u0443\\u043d\\u043d\\u0430\\u0440 \\u041a\\u0430\\u0430\\u0441\\u0435\\u043d, \\u0432\\u043e\\u0436\\u0430\\u043a\\u043e\\u043c \\u0431\\u044b\\u043b \\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u043e-\\u0447\\u0451\\u0440\\u043d\\u044b\\u0439 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u0411\\u0430\\u043b\\u0442\\u043e (\\u0430\\u043d\\u0433\\u043b. Balto).<\\/p>\\r\\n<p>\\u0427\\u0442\\u043e\\u0431\\u044b \\u0443\\u0432\\u0435\\u043a\\u043e\\u0432\\u0435\\u0447\\u0438\\u0442\\u044c \\u043f\\u043e\\u0434\\u0432\\u0438\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0438\\u043c \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043b\\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u043d\\u0438\\u043a \\u0432 \\u0446\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u043f\\u0430\\u0440\\u043a\\u0435 \\u041d\\u044c\\u044e-\\u0419\\u043e\\u0440\\u043a\\u0430 \\u0441 \\u043d\\u0430\\u0434\\u043f\\u0438\\u0441\\u044c\\u044e: \\u00ab\\u0412\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u044c, \\u043f\\u0440\\u0435\\u0434\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0440\\u0430\\u0437\\u0443\\u043c\\u00bb. \\u0411\\u0430\\u043b\\u0442\\u043e \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0438\\u043b \\u0435\\u0433\\u043e, \\u043d\\u043e \\u0432\\u0430\\u0436\\u043d\\u0443\\u044e \\u0447\\u0430\\u0441\\u0442\\u044c \\u043f\\u0443\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0435\\u043b\\u0430\\u043b \\u0434\\u0440\\u0443\\u0433\\u043e\\u0439 \\u043f\\u0435\\u0441, \\u0422\\u043e\\u0433\\u043e \\u0438\\u0437 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0438 \\u043d\\u043e\\u0440\\u0432\\u0435\\u0436\\u0446\\u0430 \\u041b\\u0435\\u043e\\u043d\\u0430\\u0440\\u0434\\u0430 \\u0421\\u0435\\u043f\\u043f\\u0430\\u043b\\u0430. \\u042d\\u0442\\u0430 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0448\\u043b\\u0430 \\u0431\\u0435\\u0437 \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430 418 \\u043a\\u0438\\u043b\\u043e\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0437\\u0430\\u0442\\u0435\\u043c \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u043b\\u0430 \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0413\\u0443\\u043d\\u043d\\u0430\\u0440\\u0443 \\u041a\\u0430\\u0430\\u0441\\u0435\\u043d\\u0443.<\\/p>\\r\\n<p>\\u0422\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u043b \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0443 \\u043f\\u043e \\u0441\\u0430\\u043c\\u043e\\u043c\\u0443 \\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u043c\\u0443 \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0443 \\u043f\\u0443\\u0442\\u0438, \\u0438\\u0437\\u0431\\u0435\\u0436\\u0430\\u043b \\u0442\\u0440\\u0435\\u0449\\u0438\\u043d \\u0438 \\u043f\\u043e\\u043b\\u044b\\u043d\\u0435\\u0439 \\u0438 \\u0437\\u0430\\u043f\\u043b\\u0430\\u0442\\u0438\\u043b \\u0437\\u0430 \\u044d\\u0442\\u043e \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u0435\\u043c, \\u0443 \\u043d\\u0435\\u0433\\u043e \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438 \\u043b\\u0430\\u043f\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u0438\\u043a\\u0438 \\u043d\\u0430\\u0437\\u043e\\u0432\\u0443\\u0442 \\u044d\\u0442\\u0443 \\u0433\\u043e\\u043d\\u043a\\u0443 \\u00ab\\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u0439 \\u0433\\u043e\\u043d\\u043a\\u043e\\u0439 \\u043c\\u0438\\u043b\\u043e\\u0441\\u0435\\u0440\\u0434\\u0438\\u044f\\u00bb<\\/p>\\r\\n<div id=\\"post-10473\\" class=\\"post-single post-10473 post type-post status-publish format-standard hentry category-sobaki category-shpicy\\">\\r\\n<div class=\\"breadcrumb breadcrumbs\\">\\r\\n<div class=\\"breadcrumb-yoast\\"><a href=\\"http:\\/\\/catfishes.ru\\/\\">\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f<\\/a> \\u00bb \\u00bb <a href=\\"http:\\/\\/catfishes.ru\\/category\\/sobaki\\/\\">\\u0421\\u043e\\u0431\\u0430\\u043a\\u0438<\\/a> \\u00bb <strong>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438<\\/strong><\\/div>\\r\\n<\\/div>\\r\\n<h1 class=\\"entry-title post-title\\">\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438<\\/h1>\\r\\n<article>\\r\\n<div class=\\"st-format-standard-holder\\">\\u00a0<\\/div>\\r\\n<div id=\\"article\\">\\r\\n<p>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 (\\u0430\\u043d\\u0433\\u043b. Siberian Husky) \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0433\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430, \\u0440\\u043e\\u0434\\u0438\\u043d\\u043e\\u0439 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0421\\u0438\\u0431\\u0438\\u0440\\u044c. \\u041f\\u0440\\u0435\\u0434\\u043a\\u0438 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u043b\\u0443\\u0436\\u0438\\u043b\\u0438 \\u0441\\u0435\\u0432\\u0435\\u0440\\u043d\\u044b\\u043c \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430\\u043c, \\u0447\\u0435\\u0439 \\u043e\\u0431\\u0440\\u0430\\u0437 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0431\\u044b\\u043b \\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u043c \\u0438 \\u0432\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e\\u043c \\u0437\\u0430\\u0432\\u0438\\u0441\\u0435\\u043b \\u043e\\u0442 \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a. \\u0421\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u044d\\u0442\\u043e \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430-\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u044c\\u043e\\u043d, \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u0432 \\u043c\\u0438\\u0440\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434.<br \\/> <img class=\\"alignnone size-full wp-image-10476 lazyloaded\\" src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757.jpg\\" sizes=\\"(max-width: 673px) 100vw, 673px\\" srcset=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757.jpg 673w, http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757-667x537.jpg 667w\\" alt=\\"546757\\" width=\\"673\\" height=\\"542\\" data-lazy-src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757.jpg\\" data-lazy-srcset=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757.jpg 673w, http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/546757-667x537.jpg 667w\\" data-lazy-sizes=\\"(max-width: 673px) 100vw, 673px\\" data-was-processed=\\"true\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div id=\\"toc_container\\" class=\\"no_bullets\\">\\r\\n<p class=\\"toc_title\\">\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u043c\\u043e\\u0435 <span class=\\"toc_toggle\\">[<a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/\\">hide<\\/a>]<\\/span><\\/p>\\r\\n<ul class=\\"toc_list\\">\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i\\"><span class=\\"toc_number toc_depth_1\\">1<\\/span> \\u0422\\u0435\\u0437\\u0438\\u0441\\u044b <\\/a><\\/li>\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i-2\\"><span class=\\"toc_number toc_depth_1\\">2<\\/span> \\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b<\\/a><\\/li>\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i-3\\"><span class=\\"toc_number toc_depth_1\\">3<\\/span> \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b <\\/a><\\/li>\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i-4\\"><span class=\\"toc_number toc_depth_1\\">4<\\/span> \\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440 <\\/a><\\/li>\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i-5\\"><span class=\\"toc_number toc_depth_1\\">5<\\/span> \\u0423\\u0445\\u043e\\u0434 <\\/a><\\/li>\\r\\n<li><a href=\\"http:\\/\\/catfishes.ru\\/sibirskij-xaski\\/#i-6\\"><span class=\\"toc_number toc_depth_1\\">6<\\/span> \\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u0435<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<h3><span id=\\"i\\">\\u0422\\u0435\\u0437\\u0438\\u0441\\u044b<br \\/> <\\/span><\\/h3>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043b\\u0438\\u043d\\u044f\\u044e\\u0442 \\u043e\\u043d\\u0438 \\u0443\\u043c\\u0435\\u0440\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0440\\u043e\\u043c\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043b\\u0438\\u043d\\u044c\\u043a\\u0438, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0432\\u044b\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0448\\u0435\\u0440\\u0441\\u0442\\u0438. \\u0412 \\u044d\\u0442\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u043d\\u0443\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u0447\\u0435\\u0441\\u044b\\u0432\\u0430\\u0442\\u044c \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0441\\u043c\\u0438\\u0440\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u043d\\u0435\\u0439 \\u043d\\u0430 \\u043a\\u043e\\u0432\\u0440\\u0430\\u0445, \\u043f\\u043e\\u043b\\u0443, \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0443\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u0432 \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0435, \\u043d\\u043e \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e, \\u0435\\u0441\\u043b\\u0438 \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0443\\u043c\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u0443\\u043f\\u0440\\u0430\\u0436\\u043d\\u044f\\u0442\\u044c\\u0441\\u044f. \\u0418\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u044c \\u0438\\u0445 \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u043c \\u0434\\u043e\\u043c\\u0435.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0415\\u0441\\u043b\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430 \\u043d\\u0435 \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u0434\\u043b\\u044f \\u043d\\u0430\\u043a\\u043e\\u043f\\u0438\\u0432\\u0448\\u0435\\u0439\\u0441\\u044f \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0438, \\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043e\\u0447\\u0435\\u043d\\u044c \\u0434\\u0435\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439. \\u0412 \\u0434\\u043e\\u043c\\u0435 \\u044d\\u0442\\u043e \\u043f\\u043e\\u0433\\u0440\\u044b\\u0437\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432\\u0435\\u0449\\u0438 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u0438\\u0442\\u044b\\u0435 \\u0433\\u043e\\u0440\\u0448\\u043a\\u0438. \\u041f\\u0440\\u0438 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0438 \\u0432\\u043e \\u0434\\u0432\\u043e\\u0440\\u0435, \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0441 \\u0443\\u0434\\u043e\\u0432\\u043e\\u043b\\u044c\\u0441\\u0442\\u0432\\u0438\\u0435\\u043c \\u0440\\u044b\\u0442\\u044c \\u0437\\u0435\\u043c\\u043b\\u044e \\u0438 \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u043a\\u043e\\u043f\\u044b \\u043f\\u043e\\u0434 \\u0437\\u0430\\u0431\\u043e\\u0440\\u043e\\u043c.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u0440\\u0435\\u0434\\u043a\\u043e \\u043b\\u0430\\u044e\\u0442, \\u0434\\u0430\\u0436\\u0435 \\u0435\\u0441\\u043b\\u0438 \\u043a\\u0442\\u043e-\\u0442\\u043e \\u0447\\u0443\\u0436\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u0434\\u043e\\u043c\\u0443. \\u042d\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u043d\\u0438\\u043a\\u0430\\u043a\\u0438\\u043c\\u0438 \\u0441\\u0442\\u043e\\u0440\\u043e\\u0436\\u0435\\u0432\\u044b\\u043c\\u0438, \\u0430 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0430\\u0433\\u0440\\u0435\\u0441\\u0441\\u0438\\u0438 \\u043a \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0443 \\u2014 \\u043e\\u0445\\u0440\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u042d\\u0442\\u0430 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0434\\u043b\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u0445 \\u0438\\u043b\\u0438 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u0418\\u043c \\u043d\\u0443\\u0436\\u0435\\u043d \\u0441\\u0442\\u0440\\u043e\\u0433\\u0438\\u0439 \\u0445\\u043e\\u0437\\u044f\\u0438\\u043d, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u043b\\u0438\\u0434\\u0435\\u0440\\u0430 \\u0432 \\u0441\\u0442\\u0430\\u0435. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043a\\u0443\\u0440\\u0441 \\u0434\\u0440\\u0435\\u0441\\u0441\\u0438\\u0440\\u043e\\u0432\\u043a\\u0438, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e \\u0443\\u043f\\u0440\\u044f\\u043c\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041e\\u043d\\u0438 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043b\\u044e\\u0431\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u0442\\u0440\\u0430\\u0432\\u043c\\u0443 \\u0438\\u043b\\u0438 \\u0437\\u0430\\u0431\\u043b\\u0443\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b\\u0431\\u0435\\u0440\\u0443\\u0442\\u0441\\u044f \\u0437\\u0430 \\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044b \\u0434\\u043e\\u043c\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u041b\\u044e\\u0431\\u0432\\u0435\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438 \\u0434\\u043e\\u0431\\u0440\\u043e\\u0434\\u0443\\u0448\\u043d\\u044b\\u0435, \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0434\\u043b\\u044f \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u044f \\u0432 \\u0441\\u0435\\u043c\\u044c\\u044f\\u0445 \\u0441 \\u0434\\u0435\\u0442\\u044c\\u043c\\u0438. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u043d\\u0435 \\u0441\\u0442\\u043e\\u0438\\u0442 \\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u043d\\u0430\\u0435\\u0434\\u0438\\u043d\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443 \\u0438 \\u0440\\u0435\\u0431\\u0435\\u043d\\u043a\\u0430, \\u043a\\u0430\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u0431\\u044b \\u043e\\u043d\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0432\\u044b\\u043d\\u0443\\u0436\\u0434\\u0435\\u043d\\u044b \\u0431\\u044b\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0438\\u0442\\u044c\\u0441\\u044f \\u043a \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c \\u0441\\u0435\\u0432\\u0435\\u0440\\u0430 \\u0438 \\u043a\\u0440\\u0430\\u0439\\u043d\\u0435 \\u0441\\u043a\\u0443\\u0434\\u043d\\u043e\\u0433\\u043e \\u043f\\u0430\\u0439\\u043a\\u0430. \\u042d\\u0442\\u043e \\u0443\\u043c\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u043e\\u0441\\u044c \\u0438 \\u043f\\u043e \\u0441\\u0435\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u0438\\u043c \\u043d\\u0435 \\u043d\\u0443\\u0436\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u043b\\u043e\\u0440\\u0438\\u0439\\u043d\\u043e\\u0439 \\u043f\\u0438\\u0449\\u0438. \\u0412\\u0430\\u0436\\u043d\\u043e \\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0447\\u0438\\u043a\\u0430, \\u043a\\u0430\\u043a \\u0438 \\u0447\\u0435\\u043c \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442 \\u043e\\u043d \\u0441\\u0432\\u043e\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u043f\\u0440\\u0435\\u0436\\u0434\\u0435 \\u0447\\u0435\\u043c \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u044c \\u0449\\u0435\\u043d\\u043a\\u0430.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<ol>\\r\\n<li>\\u0416\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u043f\\u0443\\u0441\\u043a\\u0430\\u0442\\u044c \\u0441 \\u043f\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u043f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043a\\u0438, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u044b \\u043f\\u0440\\u0435\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445.<\\/li>\\r\\n<\\/ol>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3><span id=\\"i-2\\">\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b<\\/span><\\/h3>\\r\\n<div class=\\"b336x280\\">\\u00a0<\\/div>\\r\\n<p>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u0438\\u0442 \\u043a \\u0434\\u0440\\u0435\\u0432\\u043d\\u0435\\u0439\\u0448\\u0438\\u043c \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430\\u043c \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0433\\u0435\\u043d\\u043e\\u043c \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u0435\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u043e\\u043b\\u043a\\u0430. \\u0412 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043f\\u0438\\u0441\\u043a\\u0435 14 \\u043f\\u043e\\u0440\\u043e\\u0434 \\u0438 \\u0441\\u0440\\u0435\\u0434\\u0438 \\u043d\\u0438\\u0445 \\u043f\\u043e\\u043c\\u0438\\u043c\\u043e \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0435\\u0441\\u0442\\u044c: \\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0430\\u043b\\u0430\\u043c\\u0443\\u0442, \\u0430\\u043a\\u0438\\u0442\\u0430-\\u0438\\u043d\\u0443, \\u0441\\u0430\\u043c\\u043e\\u0435\\u0434\\u0441\\u043a\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430, \\u0447\\u0430\\u0443-\\u0447\\u0430\\u0443, \\u0448\\u0438-\\u0442\\u0446\\u0443, \\u0448\\u0430\\u0440\\u043f\\u0435\\u0439, \\u0442\\u0438\\u0431\\u0435\\u0442\\u0441\\u043a\\u0438\\u0439 \\u0442\\u0435\\u0440\\u044c\\u0435\\u0440, \\u0441\\u0438\\u0431\\u0430-\\u0438\\u043d\\u0443 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435. \\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043e\\u0442 \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u00abEsky\\u00bb \\u2014 \\u044d\\u0441\\u043a\\u0438\\u043c\\u043e\\u0441\\u044b.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0435\\u0434\\u043a\\u0438 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0441\\u0443\\u0440\\u043e\\u0432\\u043e\\u0439 \\u0421\\u0438\\u0431\\u0438\\u0440\\u0438, \\u0442\\u0430\\u043a \\u0447\\u0442\\u043e \\u0433\\u0443\\u0441\\u0442\\u0430\\u044f \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0439 \\u0434\\u043b\\u044f \\u0432\\u044b\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f. \\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0442\\u043e\\u043c \\u0447\\u0442\\u043e \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u0438 \\u043e\\u0442 \\u0432\\u043e\\u043b\\u043a\\u0430 (\\u0432 \\u0441\\u0438\\u043b\\u0443 \\u0441\\u0445\\u043e\\u0436\\u0435\\u0441\\u0442\\u0438 \\u0441 \\u043d\\u0438\\u043c), \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u043b\\u0438 \\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0434\\u043d\\u0430\\u043a\\u043e \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0438 \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e, \\u043e\\u0441\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u044f\\u0441\\u043d\\u044b\\u043c.<\\/p>\\r\\n<p>\\u0412 \\u0434\\u043e\\u043a\\u043b\\u0430\\u0434\\u0435 \\u00abGenetic Structure of the Purebred Domestic Dog\\u00bb \\u043e\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u043c \\u0432 2004 \\u0433\\u043e\\u0434\\u0443, \\u043f\\u0440\\u0438\\u0432\\u0435\\u0434\\u0435\\u043d\\u044b \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0433\\u0435\\u043d\\u043e\\u043c\\u0430 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0432\\u044b\\u044f\\u0432\\u043b\\u0435\\u043d\\u044b \\u0441\\u0430\\u043c\\u044b\\u0435 \\u0434\\u0440\\u0435\\u0432\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b. \\u0418\\u0445 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u044f\\u0435\\u0442 \\u0440\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e \\u0441 \\u0432\\u043e\\u043b\\u043a\\u043e\\u043c, \\u043d\\u043e \\u043e\\u043d\\u0438 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0446\\u044b \\u0438\\u0437 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432: \\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0410\\u0444\\u0440\\u0438\\u043a\\u0430 (<a href=\\"http:\\/\\/catfishes.ru\\/afrikanskaya-nelayushhaya-sobaka-basendzhi\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0431\\u0430\\u0441\\u0435\\u043d\\u0434\\u0436\\u0438<\\/a>), \\u0411\\u043b\\u0438\\u0436\\u043d\\u0438\\u0439 \\u0412\\u043e\\u0441\\u0442\\u043e\\u043a (<a href=\\"http:\\/\\/catfishes.ru\\/salyuki\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0430\\u043b\\u044e\\u043a\\u0438<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/poroda-afganskaya-borzaya\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u0444\\u0433\\u0430\\u043d<\\/a>), \\u0422\\u0438\\u0431\\u0435\\u0442 (<a href=\\"http:\\/\\/catfishes.ru\\/tibetskij-terer\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0442\\u0438\\u0431\\u0435\\u0442\\u0441\\u043a\\u0438\\u0439 \\u0442\\u0435\\u0440\\u044c\\u0435\\u0440<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/lxasa-apso\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u043b\\u0445\\u0430\\u0441\\u043e \\u0430\\u043f\\u0441\\u043e<\\/a>), \\u041a\\u0438\\u0442\\u0430\\u0439 (<a href=\\"http:\\/\\/catfishes.ru\\/chau-chau\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0447\\u0430\\u0443-\\u0447\\u0430\\u0443<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/pekines\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u043f\\u0435\\u043a\\u0438\\u043d\\u0435\\u0441<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/sharpej\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0448\\u0430\\u0440\\u043f\\u0435\\u0439<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/shi-tcu\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0448\\u0438-\\u0442\\u0446\\u0443<\\/a>), \\u042f\\u043f\\u043e\\u043d\\u0438\\u044f (<a href=\\"http:\\/\\/catfishes.ru\\/akita-inu-i-amerikanskaya-akita\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u043a\\u0438\\u0442\\u0430-\\u0438\\u043d\\u0443<\\/a> \\u0438 <a href=\\"http:\\/\\/catfishes.ru\\/siba-inu\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0438\\u0431\\u0430-\\u0438\\u043d\\u0443<\\/a>), \\u0410\\u0440\\u043a\\u0442\\u0438\\u043a\\u0430 (<a href=\\"http:\\/\\/catfishes.ru\\/alyaskinskij-malamut\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0430\\u043b\\u0430\\u043c\\u0443\\u0442<\\/a>, <a href=\\"http:\\/\\/catfishes.ru\\/samoedskaya-sobaka\\/\\" target=\\"_blank\\" rel=\\"noopener noreferrer\\">\\u0441\\u0430\\u043c\\u043e\\u0435\\u0434\\u0441\\u043a\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430<\\/a> \\u0438 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438). \\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043f\\u043e\\u044f\\u0432\\u0438\\u043b\\u0438\\u0441\\u044c \\u0432 \\u0410\\u0437\\u0438\\u0438 \\u0438 \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u0441 \\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u043c\\u0438 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430\\u043c\\u0438 \\u0440\\u0430\\u0441\\u0441\\u0435\\u043b\\u044f\\u043b\\u0438\\u0441\\u044c \\u043f\\u043e \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p>\\u041f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u043a\\u0442\\u043e \\u0441\\u0442\\u0430\\u043b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0432 \\u0431\\u044b\\u0442\\u0443, \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430 \\u0447\\u0443\\u043a\\u0447\\u0435\\u0439 (\\u043f\\u043e\\u0434 \\u044d\\u0442\\u0438\\u043c \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u044b \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043f\\u043b\\u0435\\u043c\\u0435\\u043d\\u0430), \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0436\\u0438\\u043b\\u0438 \\u043e\\u0445\\u043e\\u0442\\u043e\\u0439 \\u043d\\u0430 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445 \\u0438 \\u043e\\u043b\\u0435\\u043d\\u0435\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c. \\u0416\\u0438\\u0437\\u043d\\u044c \\u043d\\u0430 \\u0427\\u0443\\u043a\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0443\\u0440\\u043e\\u0432\\u0430\\u044f \\u0438 \\u0447\\u0443\\u043a\\u0447\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438 \\u0438\\u0445 \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u0435\\u0437\\u0434\\u043e\\u0432\\u044b\\u0445, \\u0441\\u0442\\u043e\\u0440\\u043e\\u0436\\u0435\\u0432\\u044b\\u0445 \\u0438 \\u043f\\u0430\\u0441\\u0442\\u0443\\u0448\\u044c\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a. \\u0412\\u0435\\u043a\\u0430 \\u0435\\u0441\\u0442\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u0431\\u043e\\u0440\\u0430 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043b\\u0438 \\u043a\\u0440\\u0435\\u043f\\u043a\\u0443\\u044e, \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u0443\\u044e, \\u0432\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u0443\\u044e \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443.<\\/p>\\r\\n<p>\\u0425\\u0430\\u0441\\u043a\\u0438 \\u0432\\u043f\\u0435\\u0440\\u0432\\u044b\\u0435 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0443 \\u0432 1908 \\u0433\\u043e\\u0434\\u0443 \\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u043e\\u043c \\u0448\\u0443\\u0442\\u043e\\u043a \\u0438 \\u043d\\u0430\\u0441\\u043c\\u0435\\u0448\\u0435\\u043a. \\u0422\\u043e\\u0440\\u0433\\u043e\\u0432\\u0435\\u0446 \\u043f\\u0443\\u0448\\u043d\\u0438\\u043d\\u043e\\u0439 \\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f \\u0423\\u0438\\u043b\\u044c\\u044f\\u043c \\u0413\\u0443\\u0441\\u0430\\u043a \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b \\u0438\\u0445 \\u0434\\u043b\\u044f \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u044f \\u0432 \\u0433\\u043e\\u043d\\u043a\\u0430\\u0445 \\u043d\\u0430 \\u0441\\u043e\\u0431\\u0430\\u0447\\u044c\\u0438\\u0445 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430\\u0445, \\u043e\\u0447\\u0435\\u043d\\u044c \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u0432 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434 \\u0437\\u043e\\u043b\\u043e\\u0442\\u043e\\u0439 \\u043b\\u0438\\u0445\\u043e\\u0440\\u0430\\u0434\\u043a\\u0438. \\u041f\\u043e\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u0433\\u043e\\u043d\\u043e\\u043a \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u043b 10 000 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u043e\\u0432 \\u0438 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u043b \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u0443\\u0447\\u0430\\u0441\\u0442\\u043e\\u043a \\u0434\\u043b\\u0438\\u043d\\u043e\\u0439 \\u0432 408 \\u043c\\u0438\\u043b\\u044c.<\\/p>\\r\\n<p>\\u0421\\u043e\\u043f\\u0435\\u0440\\u043d\\u0438\\u043a\\u0438 \\u0413\\u0443\\u0441\\u0430\\u043a\\u0430 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438 \\u043a\\u0443\\u0434\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0438 \\u0432\\u044b\\u0441\\u043c\\u0435\\u044f\\u043b\\u0438 \\u0435\\u0433\\u043e \\u0432\\u044b\\u0431\\u043e\\u0440, \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u044f \\u0445\\u0430\\u0441\\u043a\\u0438 \\u2014 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043a\\u0440\\u044b\\u0441\\u0430\\u043c\\u0438. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u0433\\u043e\\u043d\\u043a\\u0430 \\u0440\\u0430\\u0441\\u0441\\u0442\\u0430\\u0432\\u0438\\u043b\\u0430 \\u0432\\u0441\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0430\\u043c. \\u0423\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0430 \\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u0439, \\u0445\\u043e\\u0442\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0441\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u0447\\u0442\\u043e \\u043c\\u043e\\u0433\\u043b\\u0430 \\u043f\\u0440\\u0438\\u0431\\u044b\\u0442\\u044c \\u0438 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439. \\u041f\\u0440\\u043e\\u0441\\u0442\\u043e \\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u044b\\u043b\\u0438 \\u0441\\u0442\\u043e\\u043b\\u044c \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438, \\u0447\\u0442\\u043e \\u043f\\u0440\\u0438\\u0431\\u0443\\u0434\\u044c \\u043e\\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439, \\u0442\\u043e \\u0440\\u0430\\u0437\\u043e\\u0440\\u0438\\u043b\\u0430 \\u0431\\u044b \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0438 \\u0413\\u0443\\u0441\\u0430\\u043a\\u0430 \\u043f\\u043e\\u0434\\u043a\\u0443\\u043f\\u0438\\u043b\\u0438 \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u043d \\u0443\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b.<br \\/> <img class=\\"alignnone size-full wp-image-10477 lazyloaded\\" src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/076.jpg\\" alt=\\"076\\" width=\\"460\\" height=\\"525\\" data-lazy-src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/076.jpg\\" data-was-processed=\\"true\\" \\/><br \\/> \\u041f\\u043e\\u0441\\u043b\\u0435 \\u0433\\u043e\\u043d\\u043a\\u0438 1909 \\u0433\\u043e\\u0434\\u0430, \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0441\\u0435\\u0431\\u0435 \\u0440\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u044e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u0443\\u043a\\u0440\\u0435\\u043f\\u043b\\u044f\\u044e\\u0442 \\u0432 1910 \\u0433\\u043e\\u0434\\u0443. \\u0412 \\u0442\\u043e\\u043c \\u0433\\u043e\\u0434\\u0443, \\u0442\\u0440\\u0438 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0438 (\\u043a\\u0443\\u043f\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0432 \\u0421\\u0438\\u0431\\u0438\\u0440\\u0438 \\u0424\\u043e\\u043a\\u0441\\u043e\\u043c \\u041c\\u0430\\u0443\\u043b\\u0438 \\u0420\\u0430\\u043c\\u0437\\u0438), \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435, \\u0432\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0438 \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0442\\u043e\\u0435 \\u043c\\u0435\\u0441\\u0442\\u043e, \\u043f\\u043e\\u043f\\u0443\\u0442\\u043d\\u043e \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0432 \\u0440\\u0435\\u043a\\u043e\\u0440\\u0434 \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u0438. \\u0412\\u0441\\u043a\\u043e\\u0440\\u0435 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e, \\u0432\\u0441\\u0435 \\u0433\\u043e\\u043d\\u0449\\u0438\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0442 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0438 \\u201c\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u043a\\u0440\\u044b\\u0441\\u044b\\u201d \\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0434\\u043e\\u043c \\u0432 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0435.<\\/p>\\r\\n<p>\\u0412 1925 \\u0433\\u043e\\u0434\\u0443 \\u0432\\u0441\\u043f\\u044b\\u0448\\u043a\\u0430 \\u0434\\u0438\\u0444\\u0442\\u0435\\u0440\\u0438\\u0438 \\u043f\\u043e\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442 \\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u041d\\u043e\\u043c. \\u0415\\u0434\\u0438\\u043d\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u043c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0441\\u043e\\u0431\\u0430\\u0447\\u044c\\u044f \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430, \\u043d\\u043e \\u0434\\u043b\\u044f \\u044d\\u0442\\u043e\\u0433\\u043e \\u0438\\u043c \\u043d\\u0443\\u0436\\u043d\\u043e \\u043f\\u0440\\u0435\\u043e\\u0434\\u043e\\u043b\\u0435\\u0442\\u044c \\u043f\\u0443\\u0442\\u044c \\u0432 1 085 \\u043a\\u043c. \\u0423\\u043f\\u0440\\u044f\\u0436\\u043a\\u043e\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u0440\\u0438\\u0432\\u0435\\u0437\\u043b\\u0430 \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0432 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u043b \\u0413\\u0443\\u043d\\u043d\\u0430\\u0440 \\u041a\\u0430\\u0430\\u0441\\u0435\\u043d, \\u0432\\u043e\\u0436\\u0430\\u043a\\u043e\\u043c \\u0431\\u044b\\u043b \\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u043e-\\u0447\\u0451\\u0440\\u043d\\u044b\\u0439 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 \\u0411\\u0430\\u043b\\u0442\\u043e (\\u0430\\u043d\\u0433\\u043b. Balto).<\\/p>\\r\\n<p>\\u0427\\u0442\\u043e\\u0431\\u044b \\u0443\\u0432\\u0435\\u043a\\u043e\\u0432\\u0435\\u0447\\u0438\\u0442\\u044c \\u043f\\u043e\\u0434\\u0432\\u0438\\u0433 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u0438\\u043c \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043b\\u0438 \\u043f\\u0430\\u043c\\u044f\\u0442\\u043d\\u0438\\u043a \\u0432 \\u0446\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u043f\\u0430\\u0440\\u043a\\u0435 \\u041d\\u044c\\u044e-\\u0419\\u043e\\u0440\\u043a\\u0430 \\u0441 \\u043d\\u0430\\u0434\\u043f\\u0438\\u0441\\u044c\\u044e: \\u00ab\\u0412\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u044c, \\u043f\\u0440\\u0435\\u0434\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0440\\u0430\\u0437\\u0443\\u043c\\u00bb. \\u0411\\u0430\\u043b\\u0442\\u043e \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0438\\u043b \\u0435\\u0433\\u043e, \\u043d\\u043e \\u0432\\u0430\\u0436\\u043d\\u0443\\u044e \\u0447\\u0430\\u0441\\u0442\\u044c \\u043f\\u0443\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0435\\u043b\\u0430\\u043b \\u0434\\u0440\\u0443\\u0433\\u043e\\u0439 \\u043f\\u0435\\u0441, \\u0422\\u043e\\u0433\\u043e \\u0438\\u0437 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0438 \\u043d\\u043e\\u0440\\u0432\\u0435\\u0436\\u0446\\u0430 \\u041b\\u0435\\u043e\\u043d\\u0430\\u0440\\u0434\\u0430 \\u0421\\u0435\\u043f\\u043f\\u0430\\u043b\\u0430. \\u042d\\u0442\\u0430 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0448\\u043b\\u0430 \\u0431\\u0435\\u0437 \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430 418 \\u043a\\u0438\\u043b\\u043e\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0437\\u0430\\u0442\\u0435\\u043c \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u043b\\u0430 \\u0432\\u0430\\u043a\\u0446\\u0438\\u043d\\u0443 \\u0413\\u0443\\u043d\\u043d\\u0430\\u0440\\u0443 \\u041a\\u0430\\u0430\\u0441\\u0435\\u043d\\u0443.<\\/p>\\r\\n<p>\\u0422\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u043b \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0443 \\u043f\\u043e \\u0441\\u0430\\u043c\\u043e\\u043c\\u0443 \\u043e\\u043f\\u0430\\u0441\\u043d\\u043e\\u043c\\u0443 \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0443 \\u043f\\u0443\\u0442\\u0438, \\u0438\\u0437\\u0431\\u0435\\u0436\\u0430\\u043b \\u0442\\u0440\\u0435\\u0449\\u0438\\u043d \\u0438 \\u043f\\u043e\\u043b\\u044b\\u043d\\u0435\\u0439 \\u0438 \\u0437\\u0430\\u043f\\u043b\\u0430\\u0442\\u0438\\u043b \\u0437\\u0430 \\u044d\\u0442\\u043e \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u0435\\u043c, \\u0443 \\u043d\\u0435\\u0433\\u043e \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438 \\u043b\\u0430\\u043f\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u0438\\u043a\\u0438 \\u043d\\u0430\\u0437\\u043e\\u0432\\u0443\\u0442 \\u044d\\u0442\\u0443 \\u0433\\u043e\\u043d\\u043a\\u0443 \\u00ab\\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u0439 \\u0433\\u043e\\u043d\\u043a\\u043e\\u0439 \\u043c\\u0438\\u043b\\u043e\\u0441\\u0435\\u0440\\u0434\\u0438\\u044f\\u00bb<br \\/> <img class=\\"alignnone size-full wp-image-10474 lazyloaded\\" src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/54674.jpg\\" alt=\\"54674\\" width=\\"484\\" height=\\"558\\" data-lazy-src=\\"http:\\/\\/catfishes.ru\\/wp-content\\/uploads\\/2016\\/10\\/54674.jpg\\" data-was-processed=\\"true\\" \\/><br \\/> \\u041f\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u043e \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u0443\\u0441\\u0442\\u0443\\u043f\\u0430\\u0442\\u044c \\u0432 \\u0433\\u043e\\u043d\\u043a\\u0430\\u0445 \\u043c\\u0435\\u0442\\u0438\\u0441\\u0430\\u043c, \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430\\u043c \\u0432 \\u043a\\u0440\\u043e\\u0432\\u0438 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043c\\u0435\\u0448\\u043d\\u044b \\u043b\\u0435\\u0433\\u0430\\u0432\\u044b\\u0435, \\u0433\\u043e\\u043d\\u0447\\u0438\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u043a\\u0430\\u0437\\u0430\\u043b\\u0438 \\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0438 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0438\\u0445 \\u043e\\u0442\\u043d\\u043e\\u0441\\u044f\\u0442 \\u043a \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0435 \\u2014 \\u0430\\u043b\\u044f\\u0441\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\\u043c \\u0445\\u0430\\u0441\\u043a\\u0438, \\u0432\\u043f\\u0440\\u043e\\u0447\\u0435\\u043c \\u0438\\u0445 \\u043d\\u0435 \\u043f\\u0440\\u0438\\u0437\\u043d\\u0430\\u043b\\u0438 \\u0432\\u043e \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u043a\\u0438\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\\u0445, \\u0432 \\u0442\\u043e\\u043c \\u0447\\u0438\\u0441\\u043b\\u0435 \\u0438 \\u041c\\u041a\\u0424.<\\/p>\\r\\n<p>\\u0421\\u0430\\u043c\\u0438 \\u0436\\u0435 \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b\\u044f\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0445 (\\u0441\\u0430\\u043c\\u044b\\u0435 \\u0440\\u0435\\u0434\\u043a\\u0438\\u0435), \\u0433\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a-\\u0448\\u043e\\u0443 \\u043a\\u043b\\u0430\\u0441\\u0441\\u0430. \\u0418\\u043c\\u0435\\u043d\\u043d\\u043e \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u0430\\u043b\\u0438 \\u043c\\u0438\\u0440 \\u0441\\u0432\\u043e\\u0438\\u043c \\u043e\\u0431\\u043b\\u0438\\u043a\\u043e\\u043c \\u0438 \\u0441\\u0434\\u0435\\u043b\\u0430\\u043b\\u0438 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0443 \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0438 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445.<\\/p>\\r\\n<h3><span id=\\"i-3\\">\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b<br \\/> <\\/span><\\/h3>\\r\\n<p>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0438\\u0437-\\u0437\\u0430 \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0441\\u0445\\u043e\\u0436\\u0435\\u0441\\u0442\\u0438 \\u0441 \\u0432\\u043e\\u043b\\u043a\\u043e\\u043c, \\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0443\\u0437\\u043d\\u0430\\u0432\\u0430\\u0435\\u043c\\u044b \\u043f\\u043e \\u0433\\u0443\\u0441\\u0442\\u043e\\u0439 \\u0448\\u0435\\u0440\\u0441\\u0442\\u0438, \\u0441\\u0442\\u043e\\u044f\\u0447\\u0438\\u043c \\u0442\\u0440\\u0435\\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u043c \\u0443\\u0448\\u0430\\u043c, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u043e\\u043c\\u0443 \\u043e\\u043a\\u0440\\u0430\\u0441\\u0443. \\u041a\\u043e\\u0431\\u0435\\u043b\\u0438 \\u0432 \\u0445\\u043e\\u043b\\u043a\\u0435 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 53\\u201361 \\u0438 \\u0432\\u0435\\u0441\\u044f\\u0442 20\\u201327 \\u043a\\u0433, \\u0441\\u0443\\u043a\\u0438 46\\u201351 \\u0441\\u043c \\u0438 \\u0432\\u0435\\u0441\\u044f\\u0442 16\\u201323 \\u043a\\u0433.<br \\/> \\u0428\\u0435\\u0440\\u0441\\u0442\\u044c \\u0434\\u0432\\u043e\\u0439\\u043d\\u0430\\u044f, \\u043e\\u0447\\u0435\\u043d\\u044c \\u0433\\u0443\\u0441\\u0442\\u0430\\u044f. \\u0425\\u043e\\u0442\\u044f \\u043e\\u043a\\u0440\\u0430\\u0441 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043b\\u044e\\u0431\\u044b\\u043c, \\u0447\\u0430\\u0449\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0447\\u0435\\u0440\\u043d\\u043e-\\u0431\\u0435\\u043b\\u044b\\u0439, \\u0441\\u0435\\u0440\\u043e-\\u0431\\u0435\\u043b\\u044b\\u0439, \\u0447\\u0438\\u0441\\u0442\\u043e \\u0431\\u0435\\u043b\\u044b\\u0439. \\u0425\\u0432\\u043e\\u0441\\u0442 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043f\\u0443\\u0448\\u0438\\u0441\\u0442\\u044b\\u0439, \\u043d\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u0435\\u0442 \\u043b\\u0438\\u0441\\u0438\\u0439 \\u0438 \\u0432 \\u0432\\u043e\\u0437\\u0431\\u0443\\u0436\\u0434\\u0435\\u043d\\u043d\\u043e\\u043c \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0438 \\u043f\\u043e\\u0434\\u043d\\u044f\\u0442 \\u043d\\u0430\\u0434 \\u0441\\u043f\\u0438\\u043d\\u043e\\u0439. \\u0423\\u0448\\u0438 \\u0442\\u0440\\u0435\\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0441\\u0442\\u043e\\u044f\\u0447\\u0438\\u0435 \\u0441\\u043e \\u0441\\u043b\\u0435\\u0433\\u043a\\u0430 \\u0437\\u0430\\u043a\\u0440\\u0443\\u0433\\u043b\\u0435\\u043d\\u043d\\u044b\\u043c\\u0438 \\u043a\\u043e\\u043d\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438.<\\/p>\\r\\n<p>\\u0413\\u043b\\u0430\\u0437\\u0430 \\u043c\\u0438\\u043d\\u0434\\u0430\\u043b\\u0435\\u0432\\u0438\\u0434\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u043e\\u043a\\u0440\\u0430\\u0441\\u0430 \\u043e\\u0442 \\u043a\\u0430\\u0440\\u0435\\u0433\\u043e \\u0434\\u043e \\u0433\\u043e\\u043b\\u0443\\u0431\\u043e\\u0433\\u043e, \\u043d\\u043e \\u0447\\u0430\\u0441\\u0442\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u0433\\u0435\\u0442\\u0435\\u0440\\u043e\\u0445\\u0440\\u043e\\u043c\\u0438\\u044f, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0433\\u043b\\u0430\\u0437\\u0430 \\u0440\\u0430\\u0437\\u043d\\u043e\\u0433\\u043e \\u043e\\u043a\\u0440\\u0430\\u0441\\u0430.<\\/p>\\r\\n<h3><span id=\\"i-4\\">\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440<br \\/> <\\/span><\\/h3>\\r\\n<p>\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439, \\u043d\\u043e \\u0435\\u0439 \\u0432\\u0430\\u0436\\u043d\\u043e \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c \\u0438\\u0435\\u0440\\u0430\\u0440\\u0445\\u0438\\u044e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u0442\\u0430\\u0438. \\u042d\\u0442\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0446\\u0435\\u043d\\u0438\\u043b\\u0438 \\u0437\\u0430 \\u0432\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u044c \\u0438 \\u0443\\u043c, \\u043d\\u0443\\u0436\\u043d\\u044b \\u0431\\u044b\\u043b\\u0438 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u044b \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0443\\u0447\\u0438\\u0442\\u044c\\u0441\\u044f, \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u043d\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u043d\\u0443\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0438 \\u0430\\u0434\\u0430\\u043f\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u043a \\u043b\\u044e\\u0431\\u044b\\u043c \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c. \\u042d\\u0442\\u043e \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0447\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043d\\u0443\\u0436\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0431\\u044b\\u0442\\u044c \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0439.<\\/p>\\r\\n<p>\\u0411\\u0435\\u0437 \\u0443\\u043c\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b, \\u043e\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0437\\u0430\\u0441\\u043a\\u0443\\u0447\\u0430\\u0442\\u044c \\u0438 \\u0441\\u0442\\u0430\\u0442\\u044c \\u0434\\u0435\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u043c\\u0438. \\u041f\\u043e\\u0441\\u043b\\u0443\\u0448\\u043d\\u044b\\u0435 \\u0438 \\u043d\\u0435 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435, \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0445\\u0438\\u0449\\u043d\\u044b\\u0435 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u0435 \\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u0435\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u0414\\u0435\\u043b\\u043e \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u043b\\u0438 \\u0438\\u0445 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0438\\u043c\\u043e\\u0439, \\u0430 \\u0432 \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u044f\\u0446\\u044b \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0436\\u0438\\u043b\\u0438 \\u043d\\u0430 \\u0432\\u043e\\u043b\\u044c\\u043d\\u043e\\u043c \\u0432\\u044b\\u043f\\u0430\\u0441\\u0435, \\u0434\\u043e\\u0431\\u044b\\u0432\\u0430\\u044f \\u0441\\u0435\\u0431\\u0435 \\u043f\\u0438\\u0449\\u0443 \\u043c\\u044b\\u0448\\u043a\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438 \\u043e\\u0445\\u043e\\u0442\\u043e\\u0439 \\u043d\\u0430 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445.<\\/p>\\r\\n<p>\\u0420\\u0430\\u0431\\u043e\\u0442\\u0430 \\u0432 \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0435 \\u0438 \\u0441\\u0432\\u043e\\u0440\\u0435 \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0441\\u043b\\u0430\\u0436\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0431\\u0435\\u0437 \\u0447\\u0435\\u0442\\u043a\\u043e\\u0439 \\u0438\\u0435\\u0440\\u0430\\u0440\\u0445\\u0438\\u0438. \\u041e\\u0431 \\u044d\\u0442\\u043e\\u043c \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e \\u043f\\u043e\\u043c\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0447\\u043b\\u0435\\u043d\\u044b \\u0441\\u0435\\u043c\\u044c\\u0438 \\u0434\\u043e\\u043b\\u0436\\u043d\\u044b \\u0431\\u044b\\u0442\\u044c \\u0432\\u044b\\u0448\\u0435 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043f\\u043e \\u0438\\u0435\\u0440\\u0430\\u0440\\u0445\\u0438\\u0438, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e \\u0441\\u0442\\u0440\\u0435\\u043c\\u044f\\u0442\\u0441\\u044f \\u0443\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u0442\\u044c \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0435\\u0432\\u043e\\u0441\\u0445\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e. \\u0412 \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u044d\\u0442\\u043e \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0435\\u043c\\u0435\\u0439\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438: \\u0438\\u0433\\u0440\\u0438\\u0432\\u044b\\u0435, \\u043b\\u044e\\u0431\\u0432\\u0435\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435, \\u043c\\u044f\\u0433\\u043a\\u0438\\u0435.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u0449\\u0435\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0438\\u0443\\u0447\\u0430\\u0442\\u044c \\u0441 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430, \\u0442\\u043e \\u043e\\u043d\\u0438 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u043b\\u0430\\u0434\\u044f\\u0442 \\u0441 \\u0434\\u043e\\u043c\\u0430\\u0448\\u043d\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043f\\u0440\\u0438\\u0441\\u043f\\u043e\\u0441\\u0430\\u0431\\u043b\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u0434\\u043b\\u044f \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0432 \\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0435. \\u041e\\u043f\\u044f\\u0442\\u044c \\u0436\\u0435, \\u0435\\u0437\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0434\\u043e\\u043b\\u0436\\u043d\\u044b \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u043b\\u0430\\u0434\\u0438\\u0442\\u044c \\u0434\\u0440\\u0443\\u0433 \\u0441 \\u0434\\u0440\\u0443\\u0433\\u043e\\u043c \\u0438 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u043f\\u043e\\u043a\\u043e\\u0439\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043d\\u043e\\u0441\\u0438\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0440\\u043e\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0422\\u0443\\u0442 \\u043d\\u0443\\u0436\\u043d\\u043e \\u0443\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u0447\\u0442\\u043e \\u0442\\u0430\\u043a\\u0430\\u044f \\u0442\\u043e\\u043b\\u0435\\u0440\\u0430\\u043d\\u0442\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430 \\u043d\\u0435 \\u0432\\u0441\\u044f\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0435 \\u0438 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u044c \\u0438\\u0445 \\u0441 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430\\u043c\\u0438, \\u0441\\u0445\\u043e\\u0436\\u0438\\u043c\\u0438 \\u043f\\u043e \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0443.<\\/p>\\r\\n<p>\\u042d\\u0442\\u043e \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u043b\\u0435\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u044c\\u043e\\u043d\\u0430\\u043c\\u0438 \\u0434\\u043b\\u044f \\u043b\\u044e\\u0434\\u0435\\u0439 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0445. \\u0425\\u043e\\u0442\\u044f \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043e\\u0431\\u0449\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b \\u0438 \\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0442\\u0435\\u0441\\u043d\\u044f\\u044e\\u0442\\u0441\\u044f \\u043b\\u044e\\u0434\\u0435\\u0439, \\u043e\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0447\\u0440\\u0435\\u0437\\u0432\\u044b\\u0447\\u0430\\u0439\\u043d\\u043e. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e, \\u0438\\u0445 \\u0443\\u043c \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u044b\\u043c\\u0438 \\u0434\\u0432\\u0435\\u0440\\u044f\\u043c\\u0438, \\u0430 \\u043b\\u044e\\u0431\\u043e\\u043f\\u044b\\u0442\\u0441\\u0442\\u0432\\u043e \\u0437\\u0430\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0438 \\u043f\\u0440\\u0438\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0439.<\\/p>\\r\\n<p>\\u042d\\u0442\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0441\\u043a\\u043b\\u043e\\u043d\\u043d\\u044b \\u043a \\u0431\\u0440\\u043e\\u0434\\u044f\\u0436\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043d\\u044b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0442\\u044c \\u0434\\u0432\\u0435\\u0440\\u0438 \\u0438 \\u043f\\u043e\\u0434\\u043a\\u0430\\u043f\\u044b\\u0432\\u0430\\u0442\\u044c \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u044b\\u0433\\u0438\\u0432\\u0430\\u0442\\u044c \\u0437\\u0430\\u0431\\u043e\\u0440\\u044b. \\u042d\\u0442\\u043e \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e \\u043e\\u0441\\u0442\\u0430\\u043b\\u043e\\u0441\\u044c \\u0443 \\u043d\\u0438\\u0445 \\u0441 \\u0434\\u0440\\u0435\\u0432\\u043d\\u0438\\u0445 \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d, \\u0432\\u0435\\u0434\\u044c \\u043a\\u043e\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0440\\u043e\\u0434\\u044b \\u0441\\u0435\\u0432\\u0435\\u0440\\u0430 \\u043e\\u0442\\u043f\\u0443\\u0441\\u043a\\u0430\\u043b\\u0438 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0435\\u0441\\u043d\\u0443 \\u0438 \\u043b\\u0435\\u0442\\u043e.<\\/p>\\r\\n<p>\\u0418\\u0437-\\u0437\\u0430 \\u043c\\u043e\\u0434\\u044b \\u0438 \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u044b, \\u0445\\u0430\\u0441\\u043a\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u043f\\u043e\\u0440\\u043e\\u0434. \\u041e\\u0434\\u043d\\u0430\\u043a\\u043e \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u044b \\u043d\\u0435 \\u0443\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0438 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0438\\u043c \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0441\\u043e\\u0441\\u0440\\u0435\\u0434\\u043e\\u0442\\u0430\\u0447\\u0438\\u0432\\u0430\\u044f\\u0441\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u0435. \\u041c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0441\\u043e\\u0431\\u0430\\u043a \\u0431\\u044b\\u043b\\u043e \\u0443\\u0441\\u044b\\u043f\\u043b\\u0435\\u043d\\u043e, \\u043f\\u043e\\u0442\\u0435\\u0440\\u044f\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0441\\u0434\\u0430\\u043d\\u043e \\u0432 \\u043f\\u0440\\u0438\\u044e\\u0442\\u044b, \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0442\\u043e\\u043c\\u0443, \\u0447\\u0442\\u043e \\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u044b \\u043d\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u0438\\u0437\\u0443\\u0447\\u0438\\u043b\\u0438 \\u043f\\u043e\\u0440\\u043e\\u0434\\u0443.<\\/p>\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0440\\u0430\\u0437\\u043c\\u044b\\u0448\\u043b\\u044f\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0434 \\u0442\\u0435\\u043c \\u0447\\u0442\\u043e\\u0431\\u044b \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438, \\u043f\\u043e\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438 \\u0438\\u0437\\u0443\\u0447\\u0435\\u043d\\u0438\\u044e \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b. \\u041f\\u043e\\u0441\\u0435\\u0442\\u0438\\u0442\\u0435 \\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u0435\\u0432, \\u0437\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u0432 \\u0445\\u043e\\u0440\\u043e\\u0448\\u0438\\u0439 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a, \\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043d\\u0438\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u0444\\u043e\\u0440\\u0443\\u043c\\u044b. \\u0415\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u044d\\u0442\\u043e\\u0433\\u043e, \\u0432\\u044b \\u043f\\u043e-\\u043f\\u0440\\u0435\\u0436\\u043d\\u0435\\u043c\\u0443 \\u0437\\u0430\\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0437\\u0430\\u0432\\u0435\\u0441\\u0442\\u0438 \\u0441\\u0435\\u0431\\u0435 \\u044d\\u0442\\u0443 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0443, \\u0442\\u043e \\u0432\\u043d\\u0438\\u043c\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a. \\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u0443\\u0439\\u0442\\u0435 \\u0441\\u043e\\u0432\\u0435\\u0442\\u0430\\u043c \\u0437\\u0430\\u0432\\u043e\\u0434\\u0447\\u0438\\u043a\\u0430 \\u0438 \\u043f\\u043e\\u043c\\u043d\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u044d\\u0442\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043f\\u0440\\u0435\\u043f\\u043e\\u0434\\u043d\\u0435\\u0441\\u0443\\u0442 \\u0432\\u0430\\u043c \\u0441\\u044e\\u0440\\u043f\\u0440\\u0438\\u0437\\u044b. \\u0418 \\u043d\\u0435 \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043f\\u0440\\u0438\\u044f\\u0442\\u043d\\u044b\\u0435.<\\/p>\\r\\n<h3><span id=\\"i-5\\">\\u0423\\u0445\\u043e\\u0434<br \\/> <\\/span><\\/h3>\\r\\n<p>\\u041d\\u0435 \\u043e\\u0441\\u043e\\u0431\\u043e \\u0441\\u043b\\u043e\\u0436\\u043d\\u044b\\u0439, \\u043d\\u043e \\u0433\\u0443\\u0441\\u0442\\u0430\\u044f \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0435\\u0436\\u0435\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0443\\u0445\\u043e\\u0434\\u0430. \\u0425\\u0430\\u0441\\u043a\\u0438 \\u043e\\u0447\\u0435\\u043d\\u044c \\u0447\\u0438\\u0441\\u0442\\u043e\\u043f\\u043b\\u043e\\u0442\\u043d\\u044b \\u0438 \\u0441\\u043b\\u0435\\u0434\\u044f\\u0442 \\u0437\\u0430 \\u0441\\u043e\\u0431\\u043e\\u0439, \\u043a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043d\\u0435 \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0437\\u0430\\u043f\\u0430\\u0445\\u0430. \\u0414\\u0432\\u0430 \\u0440\\u0430\\u0437\\u0430 \\u0432 \\u0433\\u043e\\u0434 \\u043e\\u043d\\u0438 \\u043b\\u0438\\u043d\\u044f\\u044e\\u0442, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0430\\u0441\\u0447\\u0435\\u0441\\u044b\\u0432\\u0430\\u0442\\u044c \\u0448\\u0435\\u0440\\u0441\\u0442\\u044c \\u043d\\u0443\\u0436\\u043d\\u043e \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e<\\/p>\\r\\n<h3><span id=\\"i-6\\">\\u0417\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u0435<\\/span><\\/h3>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u044c\\u043d\\u043e\\u043c \\u0443\\u0445\\u043e\\u0434\\u0435 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0445\\u0430\\u0441\\u043a\\u0438 \\u043e\\u0442 12 \\u0434\\u043e 15 \\u043b\\u0435\\u0442. \\u0412 \\u0446\\u0435\\u043b\\u043e\\u043c \\u044d\\u0442\\u043e \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u0430\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u0430, \\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u044f \\u043e\\u0442 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043e\\u043d\\u0438 \\u0441\\u0442\\u0440\\u0430\\u0434\\u0430\\u044e\\u0442, \\u043d\\u043e\\u0441\\u044f\\u0442 \\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440. \\u0423 \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b \\u043a\\u0440\\u0430\\u0439\\u043d\\u0435 \\u043d\\u0438\\u0437\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u043d\\u0442 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0430\\u0437\\u0438\\u0435\\u0439 \\u0442\\u0430\\u0437\\u043e\\u0431\\u0435\\u0434\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0441\\u0443\\u0441\\u0442\\u0430\\u0432\\u0430. \\u041e\\u043d\\u0438 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442 148-\\u0435 \\u043c\\u0435\\u0441\\u0442\\u043e \\u0438\\u0437 153 \\u043f\\u043e\\u0440\\u043e\\u0434 \\u043f\\u043e \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0443 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0441\\u0442\\u0440\\u0430\\u0434\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0442 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0430\\u0437\\u0438\\u0438, \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e 2% \\u043e\\u0442 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0446\\u0438\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u0442\\u044c \\u0435\\u044e.<\\/p>\\r\\n<\\/div>\\r\\n<\\/article>\\r\\n<\\/div>","38":[5],"7":[0],"5":{"image":"uploads\\/image\\/2018-10\\/1539503105_e931cba0d83d0be51d681a0865840ea2.jpg","realname":"\\u0421\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0425\\u0430\\u0441\\u043a\\u0438.jpg","filename":"1539503105_e931cba0d83d0be51d681a0865840ea2.jpg"}}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(5, 'Cristal family', 1, 1, '', 786, 5, 0, '0000-00-00 00:00:00', '2018-10-14 07:14:41', '0000-00-00 00:00:00', '2018-10-14 07:34:26', '2018-10-14 07:14:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1, 0, '', '', '', 'cristal-family', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '9f63a3c25fc06f9682071d5533c8ae1e', '[]', 'Crystal Family - это небольшой домашний питомник. У нас живут собаки из разных стран и несут в себе крови знаменитейших питомников мира, таких как : Koobear, Indigo, Siberian Lady, Wolf Point, Sibex, Arctogea, Foxifire, Arlington, Kristari\'s. Мы не преследуем выведение собак с определенным цветом шерсти и глаз. \r\n-Так же  в  нашем  питомнике  живет  Американская  Акита  из  ведущего Пражского  питомника   Pibaro.\r\n  У нас царит домашняя и теплая атмосфера и каждая собака, одинаково любима. Так же все наши питомцы активно занимаются спортом! Зимой - это собачья упряжка, а летом - велосипед, поэтому все собаки находятся в прекрасной атлетической форме. Никто не останется равнодушным, глядя на этих прекрасных животных! Их красота, живой ум, сила, выносливость, дружелюбность - вот ТО, что так, нам людям, нужно для полного счастья! \r\n  На нашем сайте вы сможете: \r\n- найти информацию о нас, нашем питомнике и наших собаках. \r\n- Посмотреть на собак нашего разведения и щенков от наших кобелей.\r\n- приобрести щенка ШОУ класса и получить всю необходимую информацию о содержании и воспитании малыша. А так же узнать  пла-  ны разведения и ожидающиеся пометы. \r\n- увидеть множество красивых фотографий \r\n- почитать статьи о том как содержать хаски, кормить, воспитывать, готовить выставкам и заниматься спортом. \r\n- а так же узнать о новостях питомника,различных мероприятиях,  успехах наших собак и наших выпускников. \r\n- выбрать кобеля для вязки. \r\n- так же вы можете связаться с нами по телефонам или электронную почту. \r\nПриятного просмотра!\r\n , Анна Жигальская, Cristal family', '{"26":{"image":"uploads\\/image\\/2018-10\\/1539501281_aa9638923267853c789ffe7b215a9bd5.jpg"},"27":"<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">Crystal Family - \\u044d\\u0442\\u043e \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0434\\u043e\\u043c\\u0430\\u0448\\u043d\\u0438\\u0439 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a. \\u0423 \\u043d\\u0430\\u0441 \\u0436\\u0438\\u0432\\u0443\\u0442 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u0438\\u0437 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u043d \\u0438 \\u043d\\u0435\\u0441\\u0443\\u0442 \\u0432 \\u0441\\u0435\\u0431\\u0435 \\u043a\\u0440\\u043e\\u0432\\u0438 \\u0437\\u043d\\u0430\\u043c\\u0435\\u043d\\u0438\\u0442\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432 \\u043c\\u0438\\u0440\\u0430, \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0430\\u043a : Koobear, Indigo, Siberian Lady, Wolf Point, Sibex, Arctogea, Foxifire, Arlington, Kristari\'s. \\u041c\\u044b \\u043d\\u0435 \\u043f\\u0440\\u0435\\u0441\\u043b\\u0435\\u0434\\u0443\\u0435\\u043c \\u0432\\u044b\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0441 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u044b\\u043c \\u0446\\u0432\\u0435\\u0442\\u043e\\u043c \\u0448\\u0435\\u0440\\u0441\\u0442\\u0438 \\u0438 \\u0433\\u043b\\u0430\\u0437. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">-\\u0422\\u0430\\u043a \\u0436\\u0435 \\u00a0\\u0432 \\u00a0\\u043d\\u0430\\u0448\\u0435\\u043c \\u00a0\\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0435 \\u00a0\\u0436\\u0438\\u0432\\u0435\\u0442 \\u00a0\\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0430\\u043d\\u0441\\u043a\\u0430\\u044f \\u00a0\\u0410\\u043a\\u0438\\u0442\\u0430 \\u00a0\\u0438\\u0437 \\u00a0\\u0432\\u0435\\u0434\\u0443\\u0449\\u0435\\u0433\\u043e \\u041f\\u0440\\u0430\\u0436\\u0441\\u043a\\u043e\\u0433\\u043e \\u00a0\\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0430 \\u00a0 Pibaro.<\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">\\u00a0 \\u0423 \\u043d\\u0430\\u0441 \\u0446\\u0430\\u0440\\u0438\\u0442 \\u0434\\u043e\\u043c\\u0430\\u0448\\u043d\\u044f\\u044f \\u0438 \\u0442\\u0435\\u043f\\u043b\\u0430\\u044f \\u0430\\u0442\\u043c\\u043e\\u0441\\u0444\\u0435\\u0440\\u0430 \\u0438 \\u043a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430, \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u043c\\u0430. \\u0422\\u0430\\u043a \\u0436\\u0435 \\u0432\\u0441\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0438\\u0442\\u043e\\u043c\\u0446\\u044b \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u043f\\u043e\\u0440\\u0442\\u043e\\u043c! \\u0417\\u0438\\u043c\\u043e\\u0439 - \\u044d\\u0442\\u043e \\u0441\\u043e\\u0431\\u0430\\u0447\\u044c\\u044f \\u0443\\u043f\\u0440\\u044f\\u0436\\u043a\\u0430, \\u0430 \\u043b\\u0435\\u0442\\u043e\\u043c - \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u0441\\u0435 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0438 \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0435\\u043a\\u0440\\u0430\\u0441\\u043d\\u043e\\u0439 \\u0430\\u0442\\u043b\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u0435. \\u041d\\u0438\\u043a\\u0442\\u043e \\u043d\\u0435 \\u043e\\u0441\\u0442\\u0430\\u043d\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0432\\u043d\\u043e\\u0434\\u0443\\u0448\\u043d\\u044b\\u043c, \\u0433\\u043b\\u044f\\u0434\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0438\\u0445 \\u043f\\u0440\\u0435\\u043a\\u0440\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445! \\u0418\\u0445 \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u0430, \\u0436\\u0438\\u0432\\u043e\\u0439 \\u0443\\u043c, \\u0441\\u0438\\u043b\\u0430, \\u0432\\u044b\\u043d\\u043e\\u0441\\u043b\\u0438\\u0432\\u043e\\u0441\\u0442\\u044c, \\u0434\\u0440\\u0443\\u0436\\u0435\\u043b\\u044e\\u0431\\u043d\\u043e\\u0441\\u0442\\u044c - \\u0432\\u043e\\u0442 \\u0422\\u041e, \\u0447\\u0442\\u043e \\u0442\\u0430\\u043a, \\u043d\\u0430\\u043c \\u043b\\u044e\\u0434\\u044f\\u043c, \\u043d\\u0443\\u0436\\u043d\\u043e \\u0434\\u043b\\u044f \\u043f\\u043e\\u043b\\u043d\\u043e\\u0433\\u043e \\u0441\\u0447\\u0430\\u0441\\u0442\\u044c\\u044f!\\u00a0<\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">\\u00a0 \\u041d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u0432\\u044b \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435: <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">-\\u00a0\\u043d\\u0430\\u0439\\u0442\\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043e \\u043d\\u0430\\u0441, \\u043d\\u0430\\u0448\\u0435\\u043c \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u0430\\u0445. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0431\\u0430\\u043a \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0440\\u0430\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0449\\u0435\\u043d\\u043a\\u043e\\u0432 \\u043e\\u0442 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043e\\u0431\\u0435\\u043b\\u0435\\u0439.<br \\/><\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0441\\u0442\\u0438 \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0428\\u041e\\u0423 \\u043a\\u043b\\u0430\\u0441\\u0441\\u0430 \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u0432\\u0441\\u044e\\u00a0\\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e\\u00a0\\u0438\\u043d<\\/span><span class=\\"color_11\\">\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043e \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0438 \\u0438 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0438 \\u043c\\u0430\\u043b\\u044b\\u0448\\u0430. \\u0410 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0443\\u0437\\u043d\\u0430\\u0442\\u044c\\u00a0\\u00a0\\u043f\\u043b\\u0430-\\u00a0\\u00a0\\u043d\\u044b \\u0440\\u0430\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043e\\u0436\\u0438\\u0434\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u043f\\u043e\\u043c\\u0435\\u0442\\u044b. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u043a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u0445 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0439 <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u043e \\u0442\\u043e\\u043c \\u043a\\u0430\\u043a \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u044c \\u0445\\u0430\\u0441\\u043a\\u0438, \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u044c, \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c, \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u044c \\u0432\\u044b\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\\u043c \\u0438 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c\\u0441\\u044f \\u0441\\u043f\\u043e\\u0440\\u0442\\u043e\\u043c. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u0430 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u043e \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0430,\\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f\\u0445,\\u00a0 <\\/span><span class=\\"color_11\\">\\u0443\\u0441\\u043f\\u0435<\\/span><span class=\\"color_11\\">\\u0445\\u0430\\u0445 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a \\u0438 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u043d\\u0438\\u043a\\u043e\\u0432. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043a\\u043e\\u0431\\u0435\\u043b\\u044f \\u0434\\u043b\\u044f \\u0432\\u044f\\u0437\\u043a\\u0438. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">- \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0432\\u044f\\u0437\\u0430\\u0442\\u044c\\u0441\\u044f \\u0441 \\u043d\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430\\u043c \\u0438\\u043b\\u0438 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u0443\\u044e \\u043f\\u043e\\u0447\\u0442\\u0443. <\\/span><\\/p>\\r\\n<p class=\\"font_8\\" style=\\"text-align: justify;\\"><span class=\\"color_11\\">\\u041f\\u0440\\u0438\\u044f\\u0442\\u043d\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0430!<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>","28":"\\u0410\\u043d\\u043d\\u0430 \\u0416\\u0438\\u0433\\u0430\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f","29":"annakoshka@tut.by","30":{"country":"375","region":"29","tel":"1095553"},"31":{"country":"375","region":"29","tel":"3456789"},"35":null,"32":"jigalskaya ","33":[{"url":"http:\\/\\/crystal-family.wixsite.com\\/home\\/contact","label":"\\u041f\\u0435\\u0440\\u0435\\u0439\\u0442\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442 \\u043f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a\\u0430","hits":""}],"34":{"address":{"country":"BY","state":"","city":"\\u041c\\u0438\\u043d\\u0441\\u043a","address1":""},"position":{"lat":"","lng":"","zoom":""}},"36":[0],"39":[4,1]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(6, 'Наш питомец получил титул Чемпион Беларуси', 1, 1, '', 786, 6, 0, '0000-00-00 00:00:00', '2018-10-15 07:17:47', '0000-00-00 00:00:00', '2018-10-15 07:17:47', '2018-10-15 07:17:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 1, 0, '', '', '', 'nash-pitomets-poluchil-titul-chempion-belarusi', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '8a5a44b3013af2497a6cd847cb114ba1', '[]', '20.09.14 в Минске на Республиканской выставке всех  пород наш питомец Arion Lotos удостоен звания Чемпион Беларуси., Наш питомец получил титул Чемпион Беларуси', '{"42":{"image":"uploads\\/image\\/2018-10\\/1539587867_f16cba54c2313dc18efe1da9b4e77289.jpg","realname":"lotos.jpg","filename":"1539587867_f16cba54c2313dc18efe1da9b4e77289.jpg"},"43":"<p class=\\"font_8\\" style=\\"font-size: 14px;\\"><span class=\\"color_11\\"><span style=\\"font-size: 14px;\\">20.09.14 \\u0432 \\u041c\\u0438\\u043d\\u0441\\u043a\\u0435 \\u043d\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u043d\\u0441\\u043a\\u043e\\u0439 \\u0432\\u044b\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u00a0\\u043f\\u043e\\u0440\\u043e\\u0434 \\u043d\\u0430\\u0448 \\u043f\\u0438\\u0442\\u043e\\u043c\\u0435\\u0446 Arion Lotos \\u0443\\u0434\\u043e\\u0441\\u0442\\u043e\\u0435\\u043d \\u0437\\u0432\\u0430\\u043d\\u0438\\u044f \\u0427\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438.<span style=\\"font-weight: bold;\\"><br \\/><\\/span><\\/span><\\/span><\\/p>","45":[5]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(7, 'Сибирский хаски по кличке Лотос, пол мужской', 1, 1, '', 785, 1, 0, '0000-00-00 00:00:00', '2018-10-15 10:49:46', '0000-00-00 00:00:00', '2018-10-15 11:54:14', '2018-10-15 10:49:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, 0, '', '', '', 'sibirskij-khaski-po-klichke-lotos-pol-muzhskoj', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '47ffeab3d2e89626eee1cb680156f6c7', '[]', 'Лотос, ARION LOTOS, мужской, , 112098100021186, серо белый, полнозубый, развязан, шикарная шубка, Сибирский хаски по кличке Лотос, пол мужской', '{"1":{"image":"uploads\\/image\\/2018-10\\/1539600586_f16cba54c2313dc18efe1da9b4e77289.jpg"},"3":"\\u041b\\u043e\\u0442\\u043e\\u0441","4":"ARION LOTOS","9":["\\u043c\\u0443\\u0436\\u0441\\u043a\\u043e\\u0439"],"8":"4","10":["2012-03-15"],"11":[],"12":"","13":"112098100021186","14":"\\u0441\\u0435\\u0440\\u043e \\u0431\\u0435\\u043b\\u044b\\u0439","15":"58","16":"25","2":"<p>\\u043f\\u043e\\u043b\\u043d\\u043e\\u0437\\u0443\\u0431\\u044b\\u0439, \\u0440\\u0430\\u0437\\u0432\\u044f\\u0437\\u0430\\u043d, \\u0448\\u0438\\u043a\\u0430\\u0440\\u043d\\u0430\\u044f \\u0448\\u0443\\u0431\\u043a\\u0430<\\/p>","17":{"address":{"country":"BY","city":"\\u041c\\u0438\\u043d\\u0441\\u043a"},"position":{"lat":"53.9","lng":"27.56669999999997","zoom":""}},"37":[5],"21":[0],"25":[0],"49":null}', 0, '', NULL, 3, 1, 0, 'com_cobalt', 0, '[]', NULL),
	(8, 'Родословная № BCU 270-000403', 1, 1, '', 785, 7, 0, '0000-00-00 00:00:00', '2018-10-15 11:34:11', '0000-00-00 00:00:00', '2018-10-15 11:47:10', '2018-10-15 11:34:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 1, 0, '', '', '', 'rodoslovnaya-45', 0, 0, 0, NULL, 'ru-RU', 0, '127.0.0.1', 0, 0, 0, 0, 0, '4a8ff26e14bf9df51c14881cb72a9de8', '[]', 'BCU 270-000403, Белорусское кинологическое объединение, Родословная № BCU 270-000403', '{"46":"BCU 270-000403","48":{"image":"uploads\\/image\\/2018-10\\/1539603252_046d2f7506c7a26b3d6816a9281ec099.jpg"},"47":["2013-01-01"],"50":"7","51":["\\u0411\\u0435\\u043b\\u043e\\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0435 \\u043a\\u0438\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0435\\u043d\\u0438\\u0435"]}', 0, '', NULL, 1, 1, 0, 'com_cobalt', 0, '[]', NULL);
/*!40000 ALTER TABLE `dogs_js_res_record` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_record_category
CREATE TABLE IF NOT EXISTS `dogs_js_res_record_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL DEFAULT '0',
  `record_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `otime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `rec` (`record_id`),
  KEY `idx_cat` (`section_id`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_record_category: 0 rows
DELETE FROM `dogs_js_res_record_category`;
/*!40000 ALTER TABLE `dogs_js_res_record_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_record_category` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_record_repost
CREATE TABLE IF NOT EXISTS `dogs_js_res_record_repost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_reposted` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_host` (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_record_repost: ~2 rows (приблизительно)
DELETE FROM `dogs_js_res_record_repost`;
/*!40000 ALTER TABLE `dogs_js_res_record_repost` DISABLE KEYS */;
INSERT INTO `dogs_js_res_record_repost` (`id`, `host_id`, `record_id`, `ctime`, `is_reposted`, `category`) VALUES
	(4, 784, 1, '2018-10-11 12:38:42', 0, NULL),
	(10, 785, 2, '2018-10-11 14:11:08', 0, NULL);
/*!40000 ALTER TABLE `dogs_js_res_record_repost` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_record_values
CREATE TABLE IF NOT EXISTS `dogs_js_res_record_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) NOT NULL DEFAULT '0',
  `field_key` varchar(45) NOT NULL DEFAULT '',
  `field_type` varchar(100) NOT NULL DEFAULT '',
  `field_label` varchar(100) NOT NULL DEFAULT '',
  `field_value` longtext NOT NULL,
  `record_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value_index` varchar(40) NOT NULL DEFAULT '0',
  `value_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_values` (`field_value`(333)),
  KEY `idx_key` (`field_key`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_record_values: 57 rows
DELETE FROM `dogs_js_res_record_values`;
/*!40000 ALTER TABLE `dogs_js_res_record_values` DISABLE KEYS */;
INSERT INTO `dogs_js_res_record_values` (`id`, `field_id`, `field_key`, `field_type`, `field_label`, `field_value`, `record_id`, `user_id`, `type_id`, `section_id`, `params`, `ip`, `ctime`, `value_index`, `value_num`) VALUES
	(12, 5, 'k97502c545dfe12bf25bd1ddd33f1ccb2', 'image', 'Изображение породы', 'uploads/image/2018-10/1538980017_15030e2119438a419ff446c8614094bf.jpg', 1, 784, 2, 2, '', '127.0.0.1', '2018-10-11 12:38:42', '0', 0),
	(13, 6, 'k8781b89f72e589ce2775c997bb6dc57e', 'html', 'Описание породы', '<p>Австралийская овчарка или аусси (англ. Australian Shepherd) среднего размера порода собак, выведенная на ранчо в западных штатах США. Несмотря на название, они не имеют отношения к Австралии, родина их Америка. Популярность к австралийским овчаркам пришла после Первой мировой войны, через участие в родео, конных шоу и мультфильмах Диснея.</p>\r\n<h3><span id="i">Тезисы<br /> </span></h3>\r\n<ol>\r\n<ol>\r\n<li>Для австралийской овчарки нужно от 30-60 минут упражнений ежедневно, предпочтительно с высокой активностью и нагрузкой. Кроме того, им нужна работа (идеально — пастушья), или тренировки по обидиенс.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Они могут стать деструктивными или бесконечно лаять, если не получают физических и ментальных нагрузок долгое время.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Аусси предупредит голосом, если увидит или услышит что-то подозрительное, и будет защищать дом и семью с удивительным бесстрашием.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Хотя считается что эти собаки должны жить в деревне и на просторе, они неплохо себя чувствуют и в городе, при хороших нагрузках. Но, для содержания в квартире они подходят плохо, необходим хотябы небольшой двор, где она сможет жить.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Эта пастушья собака управляет стадами, и у неопытного хозяина может занять доминантную позицию в доме. Если у вас никогда не было собаки до этого, то аусси не лучший выбор.<br /> Линяют они средне и уход за ними включает в себя еженедельное вычесывание и иногда тримминг, чтобы собака выглядела ухоженной.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Они любят компанию людей и держаться к ним поближе.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Австралийские овчарки от природы подозрительны к незнакомцам, если с щенячьего возраста их не знакомили с разными людьми, могут быть недоверчивыми к чужим. Это проявляется в агрессии и укусах. Познакомьте вашего щенка с друзьями, семьей, соседями, даже незнакомцами, чтобы помочь развить социальные навыки.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<li>Если вы решили купить щенка аусси, то выбирайте только проверенные питомники. Покупая австралийскую овчарку у неизвестных продавцов, вы рискуете деньгами, временем и нервами. Цена на щенка колеблется от 20 000 до 50 000 рублей и лучше переплатить за здоровую и воспитанную собаку.</li>\r\n</ol>\r\n<h3><span id="i-2">История породы</span></h3>\r\n<p>История возникновения австралийской овчарки так же запутана, как и появление ее имени. Некоторые полагают что они могли попасть в США, вместе с баскскими иммигрантами из Испании, и на родине они были пастушьими собаками. Однако, научные исследования полагают что они происходят от собак, которые попали в Америку через Берингов перешеек. Достаточно ясно и то, что они сформировались в западных штатах США, в течение XIX—XX века. Они определенно рабочих кровей, первые заводчики выбирали собак по способностям, а не по экстерьеру.</p>\r\n<p>Аусси стали незаменимыми помощниками при выгоне скота в Скалистых горах, так как они малочувствительны к перепадам высот. Фермеры из Боулдера, штат Колорадо, начали первыми разводить этих собак, так как слава об их способностях к управлению овцами, разносила далеко за границами штата.</p>\r\n<p>Многие из пород, которые существуют сейчас, не существовали в викторианскую эпоху, их предки приехали в Америку вместе с хозяевами. Многие из них исчезли, некоторые смешались с другими породами и дали новые. Видимо, то же самое произошло и с предками австралийской овчарки, ведь пастушьи собаки никогда не были чем-то незыблемым, их скрещивали и приспосабливали к новым условиям. В восточных штатах США условия напоминали Европу, так что собаки привезенные из нее хорошо приспосабливались.</p>', 1, 784, 2, 2, '', '127.0.0.1', '2018-10-11 12:38:42', '0', 0),
	(85, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '27.56669999999997', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', 'lng', 0),
	(84, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '53.9', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', 'lat', 0),
	(80, 16, 'k3fc02380a476e4a6d7e9e00cea29daf3', 'digits', 'Вес', '31', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(83, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'Минск', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', 'city', 0),
	(82, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'BY', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', 'country', 0),
	(81, 2, 'k73e88e8648554f9e32f7da1e253c0656', 'html', 'Примечание', '<p>Бла бла бла про собаку</p>', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(79, 15, 'kd6b39b5f062c11650671f274f86505d1', 'digits', 'Высота в холке', '56', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(78, 14, 'k6774946085d070e5ed6ef60d76124ebe', 'text', 'Окрас', 'темно пегий', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(77, 10, 'kf194989ed1a30256c8ee4ea83e1bfc60', 'datetime', 'Дата рождения', '2007-05-18', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(75, 9, 'k35254eb6ed0765c77cf058f867d8172c', 'select', 'Пол', 'женский', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(76, 8, 'k3beec8665d494c573f641207652e60f7', 'child', 'Порода', '1', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(74, 4, 'kf462fa7c9df8adf14a918503d219dbe6', 'text', 'Кличка по родословной', 'Gerda', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(72, 1, 'k776c43fe8b8ce0684ddb973bd8e6d3f9', 'image', 'Изображение', 'uploads/image/2018-10/1539260728_15030e2119438a419ff446c8614094bf.jpg', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(73, 3, 'kb5858088c932fd4370df61f0259cc3ca', 'text', 'Кличка домашняя', 'Герда', 2, 785, 1, 1, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(69, 18, 'k83636956507d2391b2014b9af42162d5', 'gallery', 'Галлерея', 'Австралийская овчарка аусси.jpg', 3, 785, 3, 3, '', '127.0.0.1', '2018-10-11 14:11:52', '0', 0),
	(70, 19, 'kca8225d35b3c2419d3dd4dc71dcc0123', 'textarea', 'Описание альбома', 'Описание альбома собаки Герды', 3, 785, 3, 3, '', '127.0.0.1', '2018-10-11 14:11:52', '0', 0),
	(86, 20, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'child', 'Собака', '2', 3, 785, 3, 3, '', '127.0.0.1', '2018-10-11 14:25:06', '0', 0),
	(156, 5, 'k97502c545dfe12bf25bd1ddd33f1ccb2', 'image', 'Изображение породы', 'uploads/image/2018-10/1539503105_e931cba0d83d0be51d681a0865840ea2.jpg', 4, 784, 2, 2, '', '127.0.0.1', '2018-10-14 07:45:05', '0', 0),
	(157, 6, 'k8781b89f72e589ce2775c997bb6dc57e', 'html', 'Описание породы', '<p>Сибирский хаски (англ. Siberian Husky) порода собак среднего размера, родиной которых является Сибирь. Предки хаски служили северным племенам, чей образ жизни был кочевым и во многом зависел от помощи собак. Сегодня это популярная собака-компаньон, одна из самых популярных в мире пород.</p>\r\n<h3><span id="i">Тезисы<br /> </span></h3>\r\n<ol>\r\n<ol>\r\n<li>Обычно линяют они умеренно, кроме сезонной линьки, когда одновременно выпадает большое количество шерсти. В это время шерсть нужно расчесывать ежедневно или смириться с ней на коврах, полу, мебели.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Сибирские хаски могут уживаться в квартире, но только, если имеют возможность физически и умственно упражняться. Идеально содержать их в частном доме.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Если собака не находит выхода для накопившейся энергии, то может быть очень деструктивной. В доме это погрызенные вещи и разбитые горшки. При содержании во дворе, могут с удовольствием рыть землю и делать подкопы под забором.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Хаски редко лают, даже если кто-то чужой приближается к дому. Это делает их никакими сторожевыми, а отсутствие агрессии к человеку — охранными.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Эта порода не подходит для начинающих или неопытных собаководов. Им нужен строгий хозяин, который будет занимать позицию лидера в стае. Лучше пройти курс дрессировки, так как это упрямые собаки.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Они очень любопытные и могут получить травму или заблудиться, если выберутся за пределы дома.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Любвеобильные и добродушные, хаски хорошо подходят для содержания в семьях с детьми. Однако, не стоит оставлять наедине собаку и ребенка, какой породы бы она не была.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Сибирские хаски вынуждены были приспособиться к условиям севера и крайне скудного пайка. Это умение сохранилось и по сей день, им не нужно много калорийной пищи. Важно узнать у заводчика, как и чем кормит он своих собак, прежде чем покупать щенка.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Желательно спускать с поводка во время прогулки, так как они способны преследовать мелких животных.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<h3><span id="i-2">История породы</span></h3>\r\n<div class="b336x280"> </div>\r\n<p>Хаски принадлежит к древнейшим породам собак, геном которых наименее всего отличается от волка. В этом списке 14 пород и среди них помимо хаски есть: аляскинский маламут, акита-ину, самоедская собака, чау-чау, ши-тцу, шарпей, тибетский терьер, сиба-ину и другие. Название хаски происходит от английского «Esky» — эскимосы.</p>\r\n<p>Предки породы появились на территории суровой Сибири, так что густая шерсть и развитый интеллект стали одним из условий для выживания. Предположение о том что хаски произошли от волка (в силу схожести с ним), подтвердили генетики, однако когда и как это произошло, остается неясным.</p>\r\n<p>В докладе «Genetic Structure of the Purebred Domestic Dog» опубликованном в 2004 году, приведены исследования генома многих собак, среди которых выявлены самые древние породы. Их объединяет родство с волком, но они выходцы из разных регионов: Центральная Африка (<a href="http://catfishes.ru/afrikanskaya-nelayushhaya-sobaka-basendzhi/" target="_blank" rel="noopener noreferrer">басенджи</a>), Ближний Восток (<a href="http://catfishes.ru/salyuki/" target="_blank" rel="noopener noreferrer">салюки</a> и <a href="http://catfishes.ru/poroda-afganskaya-borzaya/" target="_blank" rel="noopener noreferrer">афган</a>), Тибет (<a href="http://catfishes.ru/tibetskij-terer/" target="_blank" rel="noopener noreferrer">тибетский терьер</a> и <a href="http://catfishes.ru/lxasa-apso/" target="_blank" rel="noopener noreferrer">лхасо апсо</a>), Китай (<a href="http://catfishes.ru/chau-chau/" target="_blank" rel="noopener noreferrer">чау-чау</a>, <a href="http://catfishes.ru/pekines/" target="_blank" rel="noopener noreferrer">пекинес</a>, <a href="http://catfishes.ru/sharpej/" target="_blank" rel="noopener noreferrer">шарпей</a> и <a href="http://catfishes.ru/shi-tcu/" target="_blank" rel="noopener noreferrer">ши-тцу</a>), Япония (<a href="http://catfishes.ru/akita-inu-i-amerikanskaya-akita/" target="_blank" rel="noopener noreferrer">акита-ину</a> и <a href="http://catfishes.ru/siba-inu/" target="_blank" rel="noopener noreferrer">сиба-ину</a>), Арктика (<a href="http://catfishes.ru/alyaskinskij-malamut/" target="_blank" rel="noopener noreferrer">аляскинский маламут</a>, <a href="http://catfishes.ru/samoedskaya-sobaka/" target="_blank" rel="noopener noreferrer">самоедская собака</a> и сибирский хаски). Исследователи предполагают что первые собаки появились в Азии и вместе с кочевыми племенами расселялись по миру.</p>\r\n<p>Первыми кто стал использовать хаски в быту, стали племена чукчей (под этим названием объединены многие племена), которые жили охотой на морских животных и оленеводством. Жизнь на Чукотке суровая и чукчи использовали их в качестве ездовых, сторожевых и пастушьих собак. Века естественного отбора создали крепкую, здоровую, выносливую собаку.</p>\r\n<p>Хаски впервые попали в Америку в 1908 году и стали объектом шуток и насмешек. Торговец пушниной российского происхождения Уильям Гусак импортировал их для участия в гонках на собачьих упряжках, очень популярных в период золотой лихорадки. Победитель гонок получал 10 000 долларов и должен был пройти участок длиной в 408 миль.</p>\r\n<p>Соперники Гусака использовали куда более крупных собак и высмеяли его выбор, называя хаски — сибирскими крысами. Однако, гонка расставила все по местам. Упряжка хаски прибыла третьей, хотя многие считают что могла прибыть и первой. Просто ставки были столь высоки, что прибудь она первой, то разорила бы многих и Гусака подкупили чтобы он уступил.</p>\r\n<p>После гонки 1909 года, сибирский хаски завоевывают себе репутацию, которую укрепляют в 1910 году. В том году, три упряжки (купленные в Сибири Фоксом Маули Рамзи), занимают первое, второе и четвертое место, попутно установив рекорд скорости. Вскоре после этого, все гонщики начинают использовать хаски и “сибирские крысы” обретают новый дом в Америке.</p>\r\n<p>В 1925 году вспышка дифтерии поражает аляскинский город Ном. Единственным способом доставить вакцину в город является собачья упряжка, но для этого им нужно преодолеть путь в 1 085 км. Упряжкой, которая привезла вакцину в город управлял Гуннар Каасен, вожаком был угольно-чёрный сибирский хаски по кличке Балто (англ. Balto).</p>\r\n<p>Чтобы увековечить подвиг собак, им поставили памятник в центральном парке Нью-Йорка с надписью: «Выносливость, преданность, разум». Балто заслужил его, но важную часть пути проделал другой пес, Того из упряжки норвежца Леонарда Сеппала. Эта упряжка прошла без отдыха 418 километров, затем передала вакцину Гуннару Каасену.</p>\r\n<p>Того провел упряжку по самому опасному участку пути, избежал трещин и полыней и заплатил за это здоровьем, у него отказали лапы. Современники назовут эту гонку «великой гонкой милосердия»</p>\r\n<div id="post-10473" class="post-single post-10473 post type-post status-publish format-standard hentry category-sobaki category-shpicy">\r\n<div class="breadcrumb breadcrumbs">\r\n<div class="breadcrumb-yoast"><a href="http://catfishes.ru/">Главная</a> » » <a href="http://catfishes.ru/category/sobaki/">Собаки</a> » <strong>Сибирский хаски</strong></div>\r\n</div>\r\n<h1 class="entry-title post-title">Сибирский хаски</h1>\r\n<article>\r\n<div class="st-format-standard-holder"> </div>\r\n<div id="article">\r\n<p>Сибирский хаски (англ. Siberian Husky) порода собак среднего размера, родиной которых является Сибирь. Предки хаски служили северным племенам, чей образ жизни был кочевым и во многом зависел от помощи собак. Сегодня это популярная собака-компаньон, одна из самых популярных в мире пород.<br /> <img class="alignnone size-full wp-image-10476 lazyloaded" src="http://catfishes.ru/wp-content/uploads/2016/10/546757.jpg" sizes="(max-width: 673px) 100vw, 673px" srcset="http://catfishes.ru/wp-content/uploads/2016/10/546757.jpg 673w, http://catfishes.ru/wp-content/uploads/2016/10/546757-667x537.jpg 667w" alt="546757" width="673" height="542" data-lazy-src="http://catfishes.ru/wp-content/uploads/2016/10/546757.jpg" data-lazy-srcset="http://catfishes.ru/wp-content/uploads/2016/10/546757.jpg 673w, http://catfishes.ru/wp-content/uploads/2016/10/546757-667x537.jpg 667w" data-lazy-sizes="(max-width: 673px) 100vw, 673px" data-was-processed="true" /></p>\r\n<p> </p>\r\n<div id="toc_container" class="no_bullets">\r\n<p class="toc_title">Содержимое <span class="toc_toggle">[<a href="http://catfishes.ru/sibirskij-xaski/">hide</a>]</span></p>\r\n<ul class="toc_list">\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i"><span class="toc_number toc_depth_1">1</span> Тезисы </a></li>\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i-2"><span class="toc_number toc_depth_1">2</span> История породы</a></li>\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i-3"><span class="toc_number toc_depth_1">3</span> Описание породы </a></li>\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i-4"><span class="toc_number toc_depth_1">4</span> Характер </a></li>\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i-5"><span class="toc_number toc_depth_1">5</span> Уход </a></li>\r\n<li><a href="http://catfishes.ru/sibirskij-xaski/#i-6"><span class="toc_number toc_depth_1">6</span> Здоровье</a></li>\r\n</ul>\r\n</div>\r\n<h3><span id="i">Тезисы<br /> </span></h3>\r\n<ol>\r\n<ol>\r\n<li>Обычно линяют они умеренно, кроме сезонной линьки, когда одновременно выпадает большое количество шерсти. В это время шерсть нужно расчесывать ежедневно или смириться с ней на коврах, полу, мебели.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Сибирские хаски могут уживаться в квартире, но только, если имеют возможность физически и умственно упражняться. Идеально содержать их в частном доме.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Если собака не находит выхода для накопившейся энергии, то может быть очень деструктивной. В доме это погрызенные вещи и разбитые горшки. При содержании во дворе, могут с удовольствием рыть землю и делать подкопы под забором.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Хаски редко лают, даже если кто-то чужой приближается к дому. Это делает их никакими сторожевыми, а отсутствие агрессии к человеку — охранными.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Эта порода не подходит для начинающих или неопытных собаководов. Им нужен строгий хозяин, который будет занимать позицию лидера в стае. Лучше пройти курс дрессировки, так как это упрямые собаки.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Они очень любопытные и могут получить травму или заблудиться, если выберутся за пределы дома.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Любвеобильные и добродушные, хаски хорошо подходят для содержания в семьях с детьми. Однако, не стоит оставлять наедине собаку и ребенка, какой породы бы она не была.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Сибирские хаски вынуждены были приспособиться к условиям севера и крайне скудного пайка. Это умение сохранилось и по сей день, им не нужно много калорийной пищи. Важно узнать у заводчика, как и чем кормит он своих собак, прежде чем покупать щенка.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<ol>\r\n<li>Желательно спускать с поводка во время прогулки, так как они способны преследовать мелких животных.</li>\r\n</ol>\r\n</ol>\r\n<p> </p>\r\n<h3><span id="i-2">История породы</span></h3>\r\n<div class="b336x280"> </div>\r\n<p>Хаски принадлежит к древнейшим породам собак, геном которых наименее всего отличается от волка. В этом списке 14 пород и среди них помимо хаски есть: аляскинский маламут, акита-ину, самоедская собака, чау-чау, ши-тцу, шарпей, тибетский терьер, сиба-ину и другие. Название хаски происходит от английского «Esky» — эскимосы.</p>\r\n<p>Предки породы появились на территории суровой Сибири, так что густая шерсть и развитый интеллект стали одним из условий для выживания. Предположение о том что хаски произошли от волка (в силу схожести с ним), подтвердили генетики, однако когда и как это произошло, остается неясным.</p>\r\n<p>В докладе «Genetic Structure of the Purebred Domestic Dog» опубликованном в 2004 году, приведены исследования генома многих собак, среди которых выявлены самые древние породы. Их объединяет родство с волком, но они выходцы из разных регионов: Центральная Африка (<a href="http://catfishes.ru/afrikanskaya-nelayushhaya-sobaka-basendzhi/" target="_blank" rel="noopener noreferrer">басенджи</a>), Ближний Восток (<a href="http://catfishes.ru/salyuki/" target="_blank" rel="noopener noreferrer">салюки</a> и <a href="http://catfishes.ru/poroda-afganskaya-borzaya/" target="_blank" rel="noopener noreferrer">афган</a>), Тибет (<a href="http://catfishes.ru/tibetskij-terer/" target="_blank" rel="noopener noreferrer">тибетский терьер</a> и <a href="http://catfishes.ru/lxasa-apso/" target="_blank" rel="noopener noreferrer">лхасо апсо</a>), Китай (<a href="http://catfishes.ru/chau-chau/" target="_blank" rel="noopener noreferrer">чау-чау</a>, <a href="http://catfishes.ru/pekines/" target="_blank" rel="noopener noreferrer">пекинес</a>, <a href="http://catfishes.ru/sharpej/" target="_blank" rel="noopener noreferrer">шарпей</a> и <a href="http://catfishes.ru/shi-tcu/" target="_blank" rel="noopener noreferrer">ши-тцу</a>), Япония (<a href="http://catfishes.ru/akita-inu-i-amerikanskaya-akita/" target="_blank" rel="noopener noreferrer">акита-ину</a> и <a href="http://catfishes.ru/siba-inu/" target="_blank" rel="noopener noreferrer">сиба-ину</a>), Арктика (<a href="http://catfishes.ru/alyaskinskij-malamut/" target="_blank" rel="noopener noreferrer">аляскинский маламут</a>, <a href="http://catfishes.ru/samoedskaya-sobaka/" target="_blank" rel="noopener noreferrer">самоедская собака</a> и сибирский хаски). Исследователи предполагают что первые собаки появились в Азии и вместе с кочевыми племенами расселялись по миру.</p>\r\n<p>Первыми кто стал использовать хаски в быту, стали племена чукчей (под этим названием объединены многие племена), которые жили охотой на морских животных и оленеводством. Жизнь на Чукотке суровая и чукчи использовали их в качестве ездовых, сторожевых и пастушьих собак. Века естественного отбора создали крепкую, здоровую, выносливую собаку.</p>\r\n<p>Хаски впервые попали в Америку в 1908 году и стали объектом шуток и насмешек. Торговец пушниной российского происхождения Уильям Гусак импортировал их для участия в гонках на собачьих упряжках, очень популярных в период золотой лихорадки. Победитель гонок получал 10 000 долларов и должен был пройти участок длиной в 408 миль.</p>\r\n<p>Соперники Гусака использовали куда более крупных собак и высмеяли его выбор, называя хаски — сибирскими крысами. Однако, гонка расставила все по местам. Упряжка хаски прибыла третьей, хотя многие считают что могла прибыть и первой. Просто ставки были столь высоки, что прибудь она первой, то разорила бы многих и Гусака подкупили чтобы он уступил.<br /> <img class="alignnone size-full wp-image-10477 lazyloaded" src="http://catfishes.ru/wp-content/uploads/2016/10/076.jpg" alt="076" width="460" height="525" data-lazy-src="http://catfishes.ru/wp-content/uploads/2016/10/076.jpg" data-was-processed="true" /><br /> После гонки 1909 года, сибирский хаски завоевывают себе репутацию, которую укрепляют в 1910 году. В том году, три упряжки (купленные в Сибири Фоксом Маули Рамзи), занимают первое, второе и четвертое место, попутно установив рекорд скорости. Вскоре после этого, все гонщики начинают использовать хаски и “сибирские крысы” обретают новый дом в Америке.</p>\r\n<p>В 1925 году вспышка дифтерии поражает аляскинский город Ном. Единственным способом доставить вакцину в город является собачья упряжка, но для этого им нужно преодолеть путь в 1 085 км. Упряжкой, которая привезла вакцину в город управлял Гуннар Каасен, вожаком был угольно-чёрный сибирский хаски по кличке Балто (англ. Balto).</p>\r\n<p>Чтобы увековечить подвиг собак, им поставили памятник в центральном парке Нью-Йорка с надписью: «Выносливость, преданность, разум». Балто заслужил его, но важную часть пути проделал другой пес, Того из упряжки норвежца Леонарда Сеппала. Эта упряжка прошла без отдыха 418 километров, затем передала вакцину Гуннару Каасену.</p>\r\n<p>Того провел упряжку по самому опасному участку пути, избежал трещин и полыней и заплатил за это здоровьем, у него отказали лапы. Современники назовут эту гонку «великой гонкой милосердия»<br /> <img class="alignnone size-full wp-image-10474 lazyloaded" src="http://catfishes.ru/wp-content/uploads/2016/10/54674.jpg" alt="54674" width="484" height="558" data-lazy-src="http://catfishes.ru/wp-content/uploads/2016/10/54674.jpg" data-was-processed="true" /><br /> Постепенно сибирские хаски стали уступать в гонках метисам, собакам в крови которых смешны легавые, гончие собаки. Они показали лучшую скорость и сегодня их относят к отдельной породе — аляскинским хаски, впрочем их не признали во многих кинологических организациях, в том числе и МКФ.</p>\r\n<p>Сами же сибирские хаски стали разделяться на рабочих (самые редкие), гоночных и собак-шоу класса. Именно последние завоевали мир своим обликом и сделали породу одной из самых известных и популярных.</p>\r\n<h3><span id="i-3">Описание породы<br /> </span></h3>\r\n<p>Популярные из-за своей схожести с волком, сибирские хаски узнаваемы по густой шерсти, стоячим треугольным ушам, характерному окрасу. Кобели в холке достигают 53–61 и весят 20–27 кг, суки 46–51 см и весят 16–23 кг.<br /> Шерсть двойная, очень густая. Хотя окрас может быть практически любым, чаще всего встречаются черно-белый, серо-белый, чисто белый. Хвост очень пушистый, напоминает лисий и в возбужденном состоянии поднят над спиной. Уши треугольной формы, стоячие со слегка закругленными кончиками.</p>\r\n<p>Глаза миндалевидной формы, окраса от карего до голубого, но часто встречается гетерохромия, когда глаза разного окраса.</p>\r\n<h3><span id="i-4">Характер<br /> </span></h3>\r\n<p>Характер хаски достаточно мягкий, но ей важно понимать иерархию внутри стаи. Этих собак ценили за выносливость и ум, нужны были только те собаки, которые способны быстро учиться, выполнять разнообразную работу и адаптироваться к любым условиям. Это энергичная собака, которая нуждается в работе, чтобы быть счастливой.</p>\r\n<p>Без умственной работы, они могут заскучать и стать деструктивными. Послушные и не территориальные, хаски хищные по природе и могут преследовать мелких животных. Дело в том, что кормили их только зимой, а в остальные месяцы хаски жили на вольном выпасе, добывая себе пищу мышкованием и охотой на мелких животных.</p>\r\n<p>Работа в упряжке и своре не может быть слаженной без четкой иерархии. Об этом необходимо помнить и члены семьи должны быть выше хаски по иерархии, так как последние обычно стремятся утвердить свое превосходство. В остальном это исключительно семейные собаки: игривые, любвеобильные, мягкие.</p>\r\n<p> </p>\r\n<p>Если щенка приучать с раннего возраста, то они хорошо ладят с домашними животными и легко приспосабливаются для жизни в квартире. Опять же, ездовые собаки должны хорошо ладить друг с другом и хаски спокойно переносит компанию других собак, особенно родственников.</p>\r\n<p>Тут нужно учитывать что такая толерантность свойственна не всякой породе и содержать их с собаками, схожими по характеру.</p>\r\n<p>Это энергичные собаки, которые станут великолепными компаньонами для людей активных. Хотя хаски очень общительны и редко стесняются людей, они также чрезвычайно. Однако, их ум позволяет справляться с закрытыми дверями, а любопытство заставляет отправиться на поиски приключений.</p>\r\n<p>Эти собаки склонны к бродяжничеству, способны открывать двери и подкапывать или перепрыгивать заборы. Это свойство осталось у них с древних времен, ведь коренные народы севера отпускали хаски на весну и лето.</p>\r\n<p>Из-за моды и красоты, хаски стали одной из самых популярных пород. Однако зачастую владельцы не учитывают характер собаки и свойственные им сложности, сосредотачиваясь только на красоте. Множество собак было усыплено, потеряно или сдано в приюты, только потому, что владельцы недостаточно изучили породу.</p>\r\n<p>Если вы размышляете над тем чтобы купить хаски, посвятите достаточно времени изучению породы. Посетите владельцев, зайдите в хороший питомник, почитайте книги или форумы. Если после всего этого, вы по-прежнему захотите завести себе эту собаку, то внимательно выберите питомник. Последуйте советам заводчика и помните, что эти собаки преподнесут вам сюрпризы. И не всегда приятные.</p>\r\n<h3><span id="i-5">Уход<br /> </span></h3>\r\n<p>Не особо сложный, но густая шерсть требует еженедельного ухода. Хаски очень чистоплотны и следят за собой, кроме того, не имеют запаха. Два раза в год они линяют, в этом время расчесывать шерсть нужно ежедневно</p>\r\n<h3><span id="i-6">Здоровье</span></h3>\r\n<p>При правильном уходе продолжительность жизни хаски от 12 до 15 лет. В целом это здоровая порода, а заболевания от которых они страдают, носят генетический характер. У породы крайне низкий процент заболеваемости дисплазией тазобедренного сустава. Они занимают 148-е место из 153 пород по количеству собак страдающих от дисплазии, только 2% от популяции могут заболевать ею.</p>\r\n</div>\r\n</article>\r\n</div>', 4, 784, 2, 2, '', '127.0.0.1', '2018-10-14 07:45:05', '0', 0),
	(158, 39, 'k3beec8665d494c573f641207652e60f7', 'child', 'Порода', '4', 5, 784, 5, 5, '', '127.0.0.1', '2018-10-14 07:45:05', '0', 0),
	(155, 39, 'k3beec8665d494c573f641207652e60f7', 'child', 'Порода', '1', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '1', 0),
	(153, 34, 'k8011249fe1a45d9d2313c47d5085728b', 'geo', 'Местоположение', 'Минск', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', 'city', 0),
	(146, 28, 'k27062532865a6c9bf5569ff808c76ddb', 'text', 'Заводчик', 'Анна Жигальская', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(147, 29, 'kf1f0ced97c0fed3391d5ecce68ee2c28', 'email', 'E-mail', 'annakoshka@tut.by', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(148, 30, 'k6be0ed440309268e48bb12b8dd676164', 'telephone', 'Мобильный телефон', '375.29.1095553', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(149, 31, 'kaf0c383785423f5baa6132e370f25fbc', 'telephone', 'Телефон', '375.29.3456789', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(150, 32, 'k752c7b0a6a2d2248e1f34942a60a167a', 'text', 'Skype', 'jigalskaya', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(151, 33, 'k991820da8a892540c099e3a3dc75a678', 'url', 'Сайт', 'http://crystal-family.wixsite.com/home/contact', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(152, 34, 'k8011249fe1a45d9d2313c47d5085728b', 'geo', 'Местоположение', 'BY', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', 'country', 0),
	(144, 26, 'kf09bfa762e060219c7870c0e12c773ce', 'image', 'Обложка питомника', 'uploads/image/2018-10/1539501281_aa9638923267853c789ffe7b215a9bd5.jpg', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(145, 27, 'k7bba0fcdbf55cd146683f5f8f2f1e86c', 'html', 'Описание питомника', '<p class="font_8" style="text-align: justify;"><span class="color_11">Crystal Family - это небольшой домашний питомник. У нас живут собаки из разных стран и несут в себе крови знаменитейших питомников мира, таких как : Koobear, Indigo, Siberian Lady, Wolf Point, Sibex, Arctogea, Foxifire, Arlington, Kristari\'s. Мы не преследуем выведение собак с определенным цветом шерсти и глаз. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">-Так же  в  нашем  питомнике  живет  Американская  Акита  из  ведущего Пражского  питомника   Pibaro.</span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">  У нас царит домашняя и теплая атмосфера и каждая собака, одинаково любима. Так же все наши питомцы активно занимаются спортом! Зимой - это собачья упряжка, а летом - велосипед, поэтому все собаки находятся в прекрасной атлетической форме. Никто не останется равнодушным, глядя на этих прекрасных животных! Их красота, живой ум, сила, выносливость, дружелюбность - вот ТО, что так, нам людям, нужно для полного счастья! </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">  На нашем сайте вы сможете: </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- найти информацию о нас, нашем питомнике и наших собаках. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- Посмотреть на собак нашего разведения и щенков от наших кобелей.<br /></span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- приобрести щенка ШОУ класса и получить всю необходимую ин</span><span class="color_11">формацию о содержании и воспитании малыша. А так же узнать  пла-  ны разведения и ожидающиеся пометы. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- увидеть множество красивых фотографий </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- почитать статьи о том как содержать хаски, кормить, воспитывать, готовить выставкам и заниматься спортом. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- а так же узнать о новостях питомника,различных мероприятиях,  </span><span class="color_11">успе</span><span class="color_11">хах наших собак и наших выпускников. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- выбрать кобеля для вязки. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">- так же вы можете связаться с нами по телефонам или электронную почту. </span></p>\r\n<p class="font_8" style="text-align: justify;"><span class="color_11">Приятного просмотра!</span></p>\r\n<p> </p>', 5, 786, 5, 5, '', '127.0.0.1', '2018-10-14 07:34:26', '0', 0),
	(159, 42, 'k3d2ef5e60d71847a421e79f8e2d01414', 'image', 'Изображение Новости', 'uploads/image/2018-10/1539587867_f16cba54c2313dc18efe1da9b4e77289.jpg', 6, 786, 7, 6, '', '127.0.0.1', '2018-10-15 07:17:47', '0', 0),
	(160, 43, 'k594f4c4577c1a274da5cbce485116417', 'html', 'Содержание новости', '<p class="font_8" style="font-size: 14px;"><span class="color_11"><span style="font-size: 14px;">20.09.14 в Минске на Республиканской выставке всех  пород наш питомец Arion Lotos удостоен звания Чемпион Беларуси.<span style="font-weight: bold;"><br /></span></span></span></p>', 6, 786, 7, 6, '', '127.0.0.1', '2018-10-15 07:17:47', '0', 0),
	(161, 45, 'k90f63ffd997ec26953ec77896c25f1d3', 'child', 'Питомник', '5', 6, 786, 7, 6, '', '127.0.0.1', '2018-10-15 07:17:47', '0', 0),
	(223, 50, 'kc1704f57e8e55c8a8bb3f2e6204a9138', 'child', 'Собака', '7', 8, 785, 8, 0, NULL, '127.0.0.1', '2018-10-15 11:54:44', '0', 0),
	(222, 37, 'k90f63ffd997ec26953ec77896c25f1d3', 'child', 'Питомник', '5', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(220, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '53.9', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', 'lat', 0),
	(221, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', '27.56669999999997', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', 'lng', 0),
	(219, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'Минск', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', 'city', 0),
	(217, 2, 'k73e88e8648554f9e32f7da1e253c0656', 'html', 'Примечание', '<p>полнозубый, развязан, шикарная шубка</p>', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(216, 16, 'k3fc02380a476e4a6d7e9e00cea29daf3', 'digits', 'Вес', '25', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(215, 15, 'kd6b39b5f062c11650671f274f86505d1', 'digits', 'Высота в холке', '58', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(214, 14, 'k6774946085d070e5ed6ef60d76124ebe', 'text', 'Окрас', 'серо белый', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(212, 10, 'kf194989ed1a30256c8ee4ea83e1bfc60', 'datetime', 'Дата рождения', '2012-03-15', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(213, 13, 'k42e3885b3e1f163db24a643e8735b929', 'text', 'Клеймо/Chip', '112098100021186', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(211, 8, 'k3beec8665d494c573f641207652e60f7', 'child', 'Порода', '4', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(209, 4, 'kf462fa7c9df8adf14a918503d219dbe6', 'text', 'Кличка по родословной', 'ARION LOTOS', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(210, 9, 'k35254eb6ed0765c77cf058f867d8172c', 'select', 'Пол', 'мужской', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(208, 3, 'kb5858088c932fd4370df61f0259cc3ca', 'text', 'Кличка домашняя', 'Лотос', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(207, 1, 'k776c43fe8b8ce0684ddb973bd8e6d3f9', 'image', 'Изображение', 'uploads/image/2018-10/1539600586_f16cba54c2313dc18efe1da9b4e77289.jpg', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', '0', 0),
	(205, 51, 'k5ac831934911ac758192356d7048bf48', 'select', 'Организация', 'Белорусское кинологическое объединение', 8, 785, 8, 7, '', '127.0.0.1', '2018-10-15 11:47:10', '0', 0),
	(204, 47, 'k02ac73bf90f7092052b2f5c923505c8a', 'datetime', 'Дата родословной', '2013-01-01', 8, 785, 8, 7, '', '127.0.0.1', '2018-10-15 11:47:10', '0', 0),
	(203, 48, 'kdfe5acc16764f8f95984b157b1abf01a', 'image', 'Фото родословной', 'uploads/image/2018-10/1539603252_046d2f7506c7a26b3d6816a9281ec099.jpg', 8, 785, 8, 7, '', '127.0.0.1', '2018-10-15 11:47:10', '0', 0),
	(202, 46, 'k6f51b58a88af136a9ca479819abfbb3d', 'text', 'Номер родословной', 'BCU 270-000403', 8, 785, 8, 7, '', '127.0.0.1', '2018-10-15 11:47:10', '0', 0),
	(218, 17, 'k043ed5b16d476fbc14dee5d97ad8fe4e', 'geo', 'Место нахождения', 'BY', 7, 785, 1, 1, '', '127.0.0.1', '2018-10-15 11:54:14', 'country', 0);
/*!40000 ALTER TABLE `dogs_js_res_record_values` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_sales
CREATE TABLE IF NOT EXISTS `dogs_js_res_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saler_id` int(11) NOT NULL DEFAULT '0',
  `record_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `gateway_id` varchar(45) NOT NULL DEFAULT '',
  `gateway` varchar(45) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_saler` (`saler_id`),
  KEY `idx_buyer` (`user_id`),
  KEY `idx_rec` (`record_id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_sales: 0 rows
DELETE FROM `dogs_js_res_sales`;
/*!40000 ALTER TABLE `dogs_js_res_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_sales` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_sections
CREATE TABLE IF NOT EXISTS `dogs_js_res_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(20) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_sections: 7 rows
DELETE FROM `dogs_js_res_sections`;
/*!40000 ALTER TABLE `dogs_js_res_sections` DISABLE KEYS */;
INSERT INTO `dogs_js_res_sections` (`id`, `asset_id`, `name`, `title`, `alias`, `description`, `published`, `ordering`, `image`, `image_position`, `params`, `checked_out`, `checked_out_time`, `access`, `categories`, `language`) VALUES
	(1, 74, 'Каталог собак', '', 'catalog-dogs', '', 1, 7, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["1"],"record_submit_limit":"0","tmpl_markup":"default.0e6b634ebbeaece4d17ede394cb16475","tmpl_list":["blog.d135b295c83984f73e58534b1c93b947"],"tmpl_category":"0","tmpl_compare":"blog.34da4105987c531263716d2acd7e38a8","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(2, 78, 'Породы собак', '', 'porody-sobak', '', 1, 6, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["2"],"record_submit_limit":"0","tmpl_markup":"default.19821899f3e25f680082a1043c26d30b","tmpl_list":["blog.ede38d0c24d1c9bc56d25ee79644eeb9"],"tmpl_category":"0","tmpl_compare":"blog.a7faaa69d0e281bb576040e45c86a893","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"0","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(3, 94, 'Альбомы собак', '', 'albomy-sobak', '', 1, 5, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["3"],"record_submit_limit":"0","tmpl_markup":"default.2d19dfcb91b52438f0f98976f77b483f","tmpl_list":["blog.5764cc6360f1164e7f401896313d4559"],"tmpl_category":"0","tmpl_compare":"blog.91f0dc3e8e2621e4a4c8e8f05d5c49ea","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(4, 99, 'Видеоролики собак', '', 'videoroliki', '', 1, 4, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["4"],"record_submit_limit":"0","tmpl_markup":"default.308b6e84a3067d72cf85d3bff71f2ac0","tmpl_list":["blog.2924b6efba19693db2bbef81e1db845c"],"tmpl_category":"0","tmpl_compare":"blog.374cdc70963a355ee7c6ee4c078a3fc3","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(5, 105, 'Питомники', '', 'pitomniki', '', 1, 3, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["5"],"record_submit_limit":"0","tmpl_markup":"default.8a300c6ef325b8078f50d43b76fabdb0","tmpl_list":["blog.4c3f15580d16290ae77c6c2474be16a2"],"tmpl_category":"0","tmpl_compare":"blog.a3b2f6a2d99c6c032dbcbf57ea96534a","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(6, 127, 'Новости', '', 'novosti', '', 1, 2, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["6","7"],"record_submit_limit":"0","tmpl_markup":"default.021a37c5f06d564a4ba9075b7f478c99","tmpl_list":["blog.a3ced12d6ffd8c5281f26d5927565895"],"tmpl_category":"0","tmpl_compare":"blog.e6d02bca9122572edd221620d409bdf4","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*'),
	(7, 139, 'Родословные собак', '', 'rodoslovnye-sobak', '', 1, 1, '', '', '{"general":{"status":"1","status_msg":"This section is currently offline. Please, check back later.","category_itemid":"","noaccess_redirect":"","orderby":"r.ctime DESC","lang_mode":"0","records_mode":"0","filter_mode":"1","cat_mode":"1","can_display":"","featured_first":"0","marknew":"0","show_future_records":"3","show_past_records":"3","show_restrict":"1","show_children":"0","have_unpublished":"1","item_label":"item","section_home_items":"1","section_home_orderby":"r.ctime DESC","home_featured_first":"0","type":["8"],"record_submit_limit":"0","tmpl_markup":"default.f3a047c0bacda2e46489b5859ac09a38","tmpl_list":["blog.e1d582f27faf2e3c3b24fe0fc7e2ee82"],"tmpl_category":"0","tmpl_compare":"blog.16116cf5b88c36b7800b464085ab9331","tmpl_list_default":"default"},"more":{"search_mode":"3","search_title":"1","search_name":"0","search_email":"0","search_comments":"0","feed_link":"1","feed_link2":"1","records_mode":"0","feed_limit":"50","orderby_rss":"r.ctime DESC","feed_link_type":"1","metadesc":"","metakey":"","author":"","robots":""},"personalize":{"personalize":"1","records_mode":"0","author_mode":"username","breadcrumbs":"1","post_anywhere":"0","home_text":"See all artilces","text_icon":"home.png","onlinestatus":"1","vip":"0","novip":"3","glod_amount":"250","vip_gold":"vipGold.png","vip_silver":"vipSilver.png","vip_gray":"vipGray.png","pcat_submit":"0","pcat_limit":"10","pcat_descr_length":"200","pcat_icon":"1","pcat_meta":"2","allow_section_set":"1","allow_change_header":"1","allow_change_descr":"1","user_sec_descr_length":"200","allow_access_control":"1","allow_access_control_add":"1"},"events":{"subscribe_section":"2","subscribe_category":"2","subscribe_record":"2","subscribe_user":"2","alerts":"1","user_manage":"1","event_date_format":"","event_date_custom":"d M Y","event":{"record_new":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_NEW","msg_pers":"EVENT_RECORD_NEW_PERS"},"record_view":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_VIEW","msg_pers":"EVENT_RECORD_VIEW_PERS"},"record_wait_approve":{"notif":"2","activ":"2","msg":"EVENT_RECORD_WAIT_APPROVE","msg_pers":"EVENT_RECORD_WAIT_APPROVE_PERS"},"record_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_APPROVED","msg_pers":"EVENT_RECORD_APPROVED_PERS"},"record_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EDITED","msg_pers":"EVENT_RECORD_EDITED_PERS"},"record_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_DELETED","msg_pers":"EVENT_RECORD_DELETED_PERS"},"record_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_RATED","msg_pers":"EVENT_RECORD_RATED_PERS"},"record_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_EXPIRED","msg_pers":"EVENT_RECORD_EXPIRED_PERS"},"record_featured_expired":{"notif":"2","activ":"2","karma2":"0","msg":"EVENT_RECORD_FEATURED_EXPIRED","msg_pers":"EVENT_RECORD_FEATURED_EXPIRED_PERS"},"record_bookmarked":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_BOOKMARKED","msg_pers":"EVENT_RECORD_BOOKMARKED_PERS"},"record_tagged":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_TAGGED","msg_pers":"EVENT_RECORD_TAGGED_PERS"},"record_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_UNPUBLISHED","msg_pers":"EVENT_RECORD_UNPUBLISHED_PERS"},"record_featured":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_FEATURED","msg_pers":"EVENT_RECORD_FEATURED_PERS"},"record_extended":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_EXTENDED","msg_pers":"EVENT_RECORD_EXTENDED_PERS"},"record_reposted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_RECORD_REPOSTED","msg_pers":"EVENT_RECORD_REPOSTED_PERS"},"record_posted":{"notif":"2","activ":"2","karma1":"0","msg":"EVENT_RECORD_POSTED","msg_pers":"EVENT_RECORD_POSTED_PERS"},"comment_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_NEW","msg_pers":"EVENT_COMMENT_NEW_PERS"},"comment_edited":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_EDITED","msg_pers":"EVENT_COMMENT_EDITED_PERS"},"comment_rated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_RATED","msg_pers":"EVENT_COMMENT_RATED_PERS"},"comment_deleted":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_DELETED","msg_pers":"EVENT_COMMENT_DELETED_PERS"},"comment_approved":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_APPROVED","msg_pers":"EVENT_COMMENT_APPROVED_PERS"},"comment_reply":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_REPLY","msg_pers":"EVENT_COMMENT_REPLY_PERS"},"comment_unpublished":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_COMMENT_UNPUBLISHED","msg_pers":"EVENT_COMMENT_UNPUBLISHED_PERS"},"status_changed":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_STATUS_CHANGED","msg_pers":"EVENT_STATUS_CHANGED_PERS"},"parent_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_NEW","msg_pers":"EVENT_PARENT_NEW_PERS"},"child_new":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_NEW","msg_pers":"EVENT_CHILD_NEW_PERS"},"parent_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_PARENT_ATTACHED","msg_pers":"EVENT_PARENT_ATTACHED_PERS"},"child_attached":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_CHILD_ATTACHED","msg_pers":"EVENT_CHILD_ATTACHED_PERS"},"order_updated":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_ORDER_UPDATED","msg_pers":"EVENT_ORDER_UPDATED_PERS"},"new_sale":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE","msg_pers":"EVENT_NEW_SALE_PERS"},"new_sale_manual":{"notif":"2","activ":"2","karma1":"0","karma2":"0","msg":"EVENT_NEW_SALE_MANUAL","msg_pers":"EVENT_NEW_SALE_MANUAL_PERS"}}}}', 0, '0000-00-00 00:00:00', 1, 0, '*');
/*!40000 ALTER TABLE `dogs_js_res_sections` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_subscribe
CREATE TABLE IF NOT EXISTS `dogs_js_res_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(20) NOT NULL DEFAULT '0',
  `params` text,
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rf` (`ref_id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_subscribe: 10 rows
DELETE FROM `dogs_js_res_subscribe`;
/*!40000 ALTER TABLE `dogs_js_res_subscribe` DISABLE KEYS */;
INSERT INTO `dogs_js_res_subscribe` (`id`, `user_id`, `ref_id`, `ctime`, `type`, `params`, `section_id`) VALUES
	(1, 784, 1, '2018-10-08 06:26:57', 'record', NULL, 2),
	(2, 785, 2, '2018-10-11 12:25:28', 'record', NULL, 1),
	(3, 785, 3, '2018-10-11 14:11:52', 'record', NULL, 3),
	(4, 784, 4, '2018-10-14 06:39:54', 'record', NULL, 2),
	(5, 786, 5, '2018-10-14 07:14:41', 'record', NULL, 5),
	(6, 786, 6, '2018-10-15 07:17:47', 'record', NULL, 6),
	(7, 786, 7, '2018-10-15 10:49:46', 'record', NULL, 1),
	(8, 784, 7, '2018-10-15 10:51:33', 'record', NULL, 1),
	(9, 785, 8, '2018-10-15 11:34:11', 'record', NULL, 7),
	(10, 785, 7, '2018-10-15 11:54:14', 'record', NULL, 1);
/*!40000 ALTER TABLE `dogs_js_res_subscribe` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_subscribe_cat
CREATE TABLE IF NOT EXISTS `dogs_js_res_subscribe_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(1) DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`cat_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_subscribe_cat: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_subscribe_cat`;
/*!40000 ALTER TABLE `dogs_js_res_subscribe_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_subscribe_cat` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_subscribe_user
CREATE TABLE IF NOT EXISTS `dogs_js_res_subscribe_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(1) DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`u_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_subscribe_user: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_subscribe_user`;
/*!40000 ALTER TABLE `dogs_js_res_subscribe_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_subscribe_user` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_tags
CREATE TABLE IF NOT EXISTS `dogs_js_res_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(10) DEFAULT 'en-GB',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_tags: 0 rows
DELETE FROM `dogs_js_res_tags`;
/*!40000 ALTER TABLE `dogs_js_res_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_tags_history
CREATE TABLE IF NOT EXISTS `dogs_js_res_tags_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT '0',
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `section_id` int(10) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `tag` (`tag_id`),
  KEY `user` (`user_id`),
  KEY `section` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_tags_history: 0 rows
DELETE FROM `dogs_js_res_tags_history`;
/*!40000 ALTER TABLE `dogs_js_res_tags_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_tags_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_types
CREATE TABLE IF NOT EXISTS `dogs_js_res_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_types: 8 rows
DELETE FROM `dogs_js_res_types`;
/*!40000 ALTER TABLE `dogs_js_res_types` DISABLE KEYS */;
INSERT INTO `dogs_js_res_types` (`id`, `name`, `params`, `checked_out`, `checked_out_time`, `published`, `description`, `form`, `user_id`, `asset_id`, `language`) VALUES
	(1, 'Собака', '{"properties":{"item_itemid":"107","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.4a242b334da9ed7171fb7cbcb131ddd3","tmpl_articleform":"default.2967357db578fbc748ee4718c7beb4c2","tmpl_rating":"crown.5cab6d56e8a6bef4c347be21eb61c4a0","tmpl_comment":"default.8064df5d07edaf24f64a84119edd0f8e","item_can_view_tag":"1","item_can_add_tag":"-1","item_can_attach_tag":"3","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"2","item_title_composite":"[8] \\u043f\\u043e \\u043a\\u043b\\u0438\\u0447\\u043a\\u0435 [3], \\u043f\\u043e\\u043b [9]","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-19eab8ba3a68a8cf039e2c92567a614215387379', 784, 69, '*'),
	(2, 'Порода', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.e636a2bbc5d0568b2034a3c95d7fdafa","tmpl_articleform":"default.f487e77e41033a0fed2e3584408b6d8a","tmpl_rating":"crown.c495295ab0968178f39003bb1a109c64","tmpl_comment":"default.d3d87f0207a70de9c04c9ea037b50349","item_can_view_tag":"1","item_can_add_tag":"-1","item_can_attach_tag":"3","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"3","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-0efa8d8891630e92be964408f3b0abfa15389790', 784, 75, '*'),
	(3, 'Альбом', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.cff7ed88ee58d40bf5f82f7e6c883e77","tmpl_articleform":"default.192b2213bcd60dfe895c751ca5d3e60c","tmpl_rating":"crown.0f43ce83be8487de599449a17441fde8","tmpl_comment":"default.e129bb6c4035db976ca50cb9d7ce92ef","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"1","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-b9407ae097882e620f6c9bd7e50c62be15392659', 784, 92, '*'),
	(4, 'Видеоролик', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.29cf4e28ca9024c306f935e49287a133","tmpl_articleform":"default.91c4c8855190ef8b10b974c16a717d2f","tmpl_rating":"crown.094f0af78eafabd975ca715171d960a3","tmpl_comment":"default.7d1c417db99cafc2a438d0c9baf981d4","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"1","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"1","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-2904010431bfe713c61c14d9bb7446aa15392683', 784, 98, '*'),
	(5, 'Питомник', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.d6fe82078dfd4d325e67c7caeafcd9d0","tmpl_articleform":"default.3e9f57cb94128b2892b187a560302b40","tmpl_rating":"crown.79b5248b5edf9849d76e8d19c77b902c","tmpl_comment":"default.dafa154617f5a8976448c135f404e709","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-a4d564f6ecf4c38bf3586405f756a48615393510', 784, 104, '*'),
	(6, 'Новость', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.d3cad1913daaec701fcc358ed297eb61","tmpl_articleform":"default.0f38da855cb8ca8a6331b0dcea584d7b","tmpl_rating":"crown.f75c742d70e472e8c2049fbe58f6dd66","tmpl_comment":"default.084cbf732dfb8f82961834a479ea8870","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-e1d08dd59f145584d8af5c85aaa6970315395853', 784, 126, '*'),
	(7, 'Новость Питомника', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.d3cad1913daaec701fcc358ed297eb61","tmpl_articleform":"default.0f38da855cb8ca8a6331b0dcea584d7b","tmpl_rating":"default.ea51512779838d2fed257db3c9e15c48","tmpl_comment":"default.084cbf732dfb8f82961834a479ea8870","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"1","item_title_composite":"","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-e1d08dd59f145584d8af5c85aaa6970315395853', 784, 130, '*'),
	(8, 'Родословная', '{"properties":{"item_itemid":"","item_compare":"0","item_can_favorite":"2","item_can_moderate":"3","item_edit":"1","item_delete":"1","allow_extend":"0","allow_hide":"0","default_extend":"10","item_expire_access":"3","tmpl_article":"default.a2140098c714e4c176a8a1c3426f7095","tmpl_articleform":"default.6e388abd3693237fff6d6dfffab5f89d","tmpl_rating":"crown.1060ad0ec38039dea76a828fedc25a05","tmpl_comment":"default.fc639fea2745f22053561c7fb6fa9c03","item_can_view_tag":"1","item_can_add_tag":"2","item_can_attach_tag":"2","item_tag_htmltags":"h1, h2, h3, h4, h5, h6, strong, em, b, i, big","item_tag_relevance":"0","item_tag_num":"0","item_tags_max":"25","item_title_unique":"0","item_title":"2","item_title_composite":"\\u0420\\u043e\\u0434\\u043e\\u0441\\u043b\\u043e\\u0432\\u043d\\u0430\\u044f \\u2116 [46]","item_title_limit":"0","rate_access":"0","rate_access_author":"0","rate_mode":"1","rate_smart_before":"60","rate_smart_minimum":"5","rate_multirating":"0","rate_multirating_options":"","rate_multirating_tmpl":"default.php","rate_multirating_sort":"2"},"submission":{"submission":"2","can_edit":"-1","access":"1","public_edit":"1","autopublish":"1","edit_autopublish":"1","redirect":"1","redirect_url":"","submit_msg":"JLIB_APPLICATION","save_msg":"JLIB_APPLICATION","default_expire":"0","public_alert":"1","limits_total":"0","limits_day":"0","allow_category":"1","first_category":"0","multi_category":"0","multi_max_num":"3","robots":""},"category_limit":{"allow":"1","category_limit_mode":"0","show_restricted":"0"},"comments":{"comments":""},"audit":{"audit_date_format":"","audit_date_custom":"h:i A, d M Y","versioning":"0","versioning_max":"10","audit_log":"0","itemid":"","al1":{"on":"1","msg":"CAUDLOG1"},"al2":{"on":"1","msg":"CAUDLOG2"},"al26":{"on":"1","msg":"CAUDLOG26"},"al3":{"on":"1","msg":"CAUDLOG3"},"al4":{"on":"1","msg":"CAUDLOG4"},"al5":{"on":"1","msg":"CAUDLOG5"},"al6":{"on":"1","msg":"CAUDLOG6"},"al7":{"on":"1","msg":"CAUDLOG7"},"al8":{"on":"1","msg":"CAUDLOG8"},"al9":{"on":"1","msg":"CAUDLOG9"},"al10":{"on":"1","msg":"CAUDLOG10"},"al25":{"on":"1","msg":"CAUDLOG25"},"al12":{"on":"1","msg":"CAUDLOG12"},"al13":{"on":"1","msg":"CAUDLOG13"},"al14":{"on":"1","msg":"CAUDLOG14"},"al15":{"on":"1","msg":"CAUDLOG15"},"al16":{"on":"1","msg":"CAUDLOG16"},"al17":{"on":"1","msg":"CAUDLOG17"},"al18":{"on":"1","msg":"CAUDLOG18"},"al19":{"on":"1","msg":"CAUDLOG19"},"al20":{"on":"1","msg":"CAUDLOG20"},"al27":{"on":"1","msg":"CAUDLOG27"},"al28":{"on":"1","msg":"CAUDLOG28"},"al29":{"on":"1","msg":"CAUDLOG29"},"al30":{"on":"1","msg":"CAUDLOG30"},"al32":{"on":"1","msg":"CAUDLOG31"}},"emerald":{"subscr_skip":"3","subscr_author_skip":"1","subscr_moderator_skip":"1","type_display_subscription_msg":"You cannot see this article because article author subscritpion has expired.","type_display_subscription_count":"0","type_view_subscription_msg":"You cannot see this article because your subscritpion has expired.","type_view_subscription_count":"0","type_submit_subscription_msg":"To submit you need to be subscribed user and have following subscriptions","type_ulimit_subscription_count":"0","type_ulimit_count":"10","type_edit_subscription_msg":"To edit you need to be subscribed user and have folowing subscriptions","type_comment_subscription_msg":"To comment you need to be subscribed user and have folowing subscriptions","type_multicat_subscription_msg":"To submit this item to multiple categories you have to be subscribed member.","type_feature_subscription_msg":"To make record featured you need to be subscribed user and have folowing subscriptions","type_feature_subscription_time":"30","type_feature_unfeature":"2","type_extend_subscription_msg":"To prolong you need to be subscribed user and have folowing subscriptions","type_extend_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, '', 'form-a85f51c8fd6b443c0f98cad716b2aac015396012', 784, 135, '*');
/*!40000 ALTER TABLE `dogs_js_res_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_user_options
CREATE TABLE IF NOT EXISTS `dogs_js_res_user_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `lastsend` datetime DEFAULT '0000-00-00 00:00:00',
  `schedule` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sch` (`schedule`),
  KEY `idx_sent` (`lastsend`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_user_options: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_user_options`;
/*!40000 ALTER TABLE `dogs_js_res_user_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_user_options` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_user_options_autofollow
CREATE TABLE IF NOT EXISTS `dogs_js_res_user_options_autofollow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_user_options_autofollow: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_user_options_autofollow`;
/*!40000 ALTER TABLE `dogs_js_res_user_options_autofollow` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_user_options_autofollow` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_user_post_map
CREATE TABLE IF NOT EXISTS `dogs_js_res_user_post_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `whopost` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_user_post_map: ~0 rows (приблизительно)
DELETE FROM `dogs_js_res_user_post_map`;
/*!40000 ALTER TABLE `dogs_js_res_user_post_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_user_post_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_js_res_vote
CREATE TABLE IF NOT EXISTS `dogs_js_res_vote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ref_id` int(10) NOT NULL DEFAULT '0',
  `vote` int(10) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `ref_type` varchar(25) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT '0',
  `idx` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `record` (`ref_id`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы prodogs.loc.dogs_js_res_vote: 0 rows
DELETE FROM `dogs_js_res_vote`;
/*!40000 ALTER TABLE `dogs_js_res_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_js_res_vote` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_languages
CREATE TABLE IF NOT EXISTS `dogs_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
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
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_languages: ~2 rows (приблизительно)
DELETE FROM `dogs_languages`;
/*!40000 ALTER TABLE `dogs_languages` DISABLE KEYS */;
INSERT INTO `dogs_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
	(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
	(2, 56, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 0, 1, 1);
/*!40000 ALTER TABLE `dogs_languages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_menu
CREATE TABLE IF NOT EXISTS `dogs_menu` (
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
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
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
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_menu: ~46 rows (приблизительно)
DELETE FROM `dogs_menu`;
/*!40000 ALTER TABLE `dogs_menu` DISABLE KEYS */;
INSERT INTO `dogs_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
	(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 91, 0, '*', 0),
	(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
	(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
	(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
	(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
	(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
	(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 39, 44, 0, '*', 1),
	(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 40, 41, 0, '*', 1),
	(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 42, 43, 0, '*', 1),
	(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 45, 48, 0, '*', 1),
	(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 46, 47, 0, '*', 1),
	(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 49, 54, 0, '*', 1),
	(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 50, 51, 0, '*', 1),
	(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 52, 53, 0, '*', 1),
	(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 55, 56, 0, '*', 1),
	(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 57, 58, 0, '*', 1),
	(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 59, 60, 0, '*', 1),
	(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 61, 62, 0, '*', 1),
	(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 63, 64, 0, '', 1),
	(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 65, 66, 0, '*', 1),
	(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 67, 68, 0, '*', 1),
	(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
	(102, 'main', 'com_cobalt', 'com-cobalt', '', 'com-cobalt', 'index.php?option=com_cobalt', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cobalt/images/menu/cobalt.png', 0, '{}', 69, 78, 0, '', 1),
	(103, 'main', 'Records', 'records', '', 'com-cobalt/records', 'index.php?option=com_cobalt&view=records', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:article', 0, '{}', 70, 71, 0, '', 1),
	(104, 'main', 'Sections', 'sections', '', 'com-cobalt/sections', 'index.php?option=com_cobalt&view=sections', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 72, 73, 0, '', 1),
	(105, 'main', 'Types', 'types', '', 'com-cobalt/types', 'index.php?option=com_cobalt&view=types', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cobalt/images/menu/types.png', 0, '{}', 74, 75, 0, '', 1),
	(106, 'main', 'Configuration', 'configuration', '', 'com-cobalt/configuration', 'index.php?option=com_config&view=component&component=com_cobalt', 'component', 1, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 76, 77, 0, '', 1),
	(107, 'dogsmenu', 'Добавить собаку', 'add-dog', '', 'add-dog', 'index.php?option=com_cobalt&view=form&type_id=1&section_id=1', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
	(108, 'mainmenu', 'Каталог собак', 'catalog-dogs', '', 'catalog-dogs', 'index.php?option=com_cobalt&view=records&section_id=1:catalog-dogs', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
	(109, 'mainmenu', 'Породы собак', 'breeds-of-dogs', '', 'breeds-of-dogs', 'index.php?option=com_cobalt&view=records&section_id=2:porody-sobak', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
	(110, 'dogsmenu', 'Мои собаки', 'moi-sobaki', '', 'moi-sobaki', 'index.php?option=com_cobalt&view=records&layout=user&section_id=1&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
	(111, 'dogsmenu', 'Добавить альбом собаки', 'dobavit-albom-sobaki', '', 'dobavit-albom-sobaki', 'index.php?option=com_cobalt&view=form&type_id=3&section_id=3', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
	(112, 'dogsmenu', 'Альбомы моих собак', 'albomy-moikh-sobak', '', 'albomy-moikh-sobak', 'index.php?option=com_cobalt&view=records&layout=user&section_id=3&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
	(113, 'dogsmenu', 'Добавить видеоролик собаки', 'dobavit-videorolik-sobaki', '', 'dobavit-videorolik-sobaki', 'index.php?option=com_cobalt&view=form&type_id=4&section_id=4', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
	(114, 'dogsmenu', 'Видеоролики моих собак', 'videoroliki-moikh-sobak', '', 'videoroliki-moikh-sobak', 'index.php?option=com_cobalt&view=records&layout=user&section_id=4&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
	(115, 'dogsmenu', 'Разделитель', 'razdelitel', '', 'razdelitel', '', 'separator', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 19, 20, 0, '*', 0),
	(116, 'pitomnikmenu', 'Добавить питомник', 'dobavit-pitomnik', '', 'dobavit-pitomnik', 'index.php?option=com_cobalt&view=form&type_id=5&section_id=5', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
	(117, 'mainmenu', 'Питомники', 'pitomniki', '', 'pitomniki', 'index.php?option=com_cobalt&view=records&section_id=5:pitomniki', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 37, 38, 0, '*', 0),
	(118, 'pitomnikmenu', 'Мои питомники', 'moi-pitomniki', '', 'moi-pitomniki', 'index.php?option=com_cobalt&view=records&layout=user&section_id=5&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
	(119, 'adminmenu', 'Добавить породу', 'dobavit-porodu', '', 'dobavit-porodu', 'index.php?option=com_cobalt&view=form&type_id=2&section_id=2', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 6, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
	(120, 'adminmenu', 'Список пород', 'spisok-porod', '', 'spisok-porod', 'index.php?option=com_cobalt&view=records&layout=user&section_id=2&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 6, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
	(121, 'mainmenu', 'Новости', 'news', '', 'news', 'index.php?option=com_cobalt&view=records&section_id=6:novosti', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu_archive":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
	(122, 'pitomnikmenu', 'Добавить новость', 'add-new', '', 'add-new', 'index.php?option=com_cobalt&view=form&type_id=7&section_id=6', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
	(123, 'pitomnikmenu', 'Новости Питомника', 'novosti-pitomnika', '', 'novosti-pitomnika', 'index.php?option=com_cobalt&view=records&layout=user&section_id=6&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
	(124, 'dogsmenu', 'Добавить родословную', 'add-pedigree', '', 'add-pedigree', 'index.php?option=com_cobalt&view=form&type_id=8&section_id=7', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
	(125, 'dogsmenu', 'Родословные моих собак', 'pedigrees-my-dogs', '', 'pedigrees-my-dogs', 'index.php?option=com_cobalt&view=records&layout=user&section_id=7&view_what=created', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0);
/*!40000 ALTER TABLE `dogs_menu` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_menu_types
CREATE TABLE IF NOT EXISTS `dogs_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_menu_types: ~4 rows (приблизительно)
DELETE FROM `dogs_menu_types`;
/*!40000 ALTER TABLE `dogs_menu_types` DISABLE KEYS */;
INSERT INTO `dogs_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
	(1, 54, 'mainmenu', 'Главное меню', 'The main menu for the site', 0),
	(2, 81, 'dogsmenu', 'Меню Собаковода', 'Меню для владельца собак', 0),
	(3, 110, 'pitomnikmenu', 'Меню Питомника', '', 0),
	(4, 122, 'adminmenu', 'Меню Админа', '', 0);
/*!40000 ALTER TABLE `dogs_menu_types` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_messages
CREATE TABLE IF NOT EXISTS `dogs_messages` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_messages: ~0 rows (приблизительно)
DELETE FROM `dogs_messages`;
/*!40000 ALTER TABLE `dogs_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_messages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_messages_cfg
CREATE TABLE IF NOT EXISTS `dogs_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_messages_cfg: ~0 rows (приблизительно)
DELETE FROM `dogs_messages_cfg`;
/*!40000 ALTER TABLE `dogs_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_messages_cfg` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_modules
CREATE TABLE IF NOT EXISTS `dogs_modules` (
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_modules: ~30 rows (приблизительно)
DELETE FROM `dogs_modules`;
/*!40000 ALTER TABLE `dogs_modules` DISABLE KEYS */;
INSERT INTO `dogs_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
	(1, 39, 'Main Menu', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
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
	(16, 50, 'Login Form', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
	(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
	(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
	(88, 58, 'Cobalt - Module - Categories', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_category', 1, 1, '', 0, '*'),
	(89, 59, 'Cobalt - Module - Filters', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_filters', 1, 1, '', 0, '*'),
	(90, 60, 'Cobalt - Module - Who Follows User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_followers', 1, 1, '', 0, '*'),
	(91, 61, 'Cobalt - Module - Whom User Follows', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_ifollow', 1, 1, '', 0, '*'),
	(92, 62, 'Cobalt - Module - Notifications', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_notifications', 1, 1, '', 0, '*'),
	(93, 63, 'Cobalt - Module - Article Participants', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_participants', 1, 1, '', 0, '*'),
	(94, 64, 'Cobalt - Module - Records', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_records', 1, 1, '', 0, '*'),
	(95, 65, 'Cobalt - Module - Section Statictics', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_sectionstatistics', 1, 1, '', 0, '*'),
	(96, 66, 'Cobalt - Module - Submit Button', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_submitbutton', 1, 1, '', 0, '*'),
	(97, 67, 'Cobalt - Module - Tag Cloud', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_tagcloud', 1, 1, '', 0, '*'),
	(98, 68, 'Cobalt - Module - User Statictics', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cobalt_userstatistics', 1, 1, '', 0, '*'),
	(99, 82, 'Меню Собаковода', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"dogsmenu","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(100, 111, 'Меню Питомника', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"pitomnikmenu","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(101, 123, 'Меню Админа', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 6, 1, '{"menutype":"adminmenu","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
/*!40000 ALTER TABLE `dogs_modules` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_modules_menu
CREATE TABLE IF NOT EXISTS `dogs_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_modules_menu: ~21 rows (приблизительно)
DELETE FROM `dogs_modules_menu`;
/*!40000 ALTER TABLE `dogs_modules_menu` DISABLE KEYS */;
INSERT INTO `dogs_modules_menu` (`moduleid`, `menuid`) VALUES
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
	(87, 0),
	(99, 0),
	(100, 0),
	(101, 0);
/*!40000 ALTER TABLE `dogs_modules_menu` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_newsfeeds
CREATE TABLE IF NOT EXISTS `dogs_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_newsfeeds: ~0 rows (приблизительно)
DELETE FROM `dogs_newsfeeds`;
/*!40000 ALTER TABLE `dogs_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_newsfeeds` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_overrider
CREATE TABLE IF NOT EXISTS `dogs_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_overrider: ~0 rows (приблизительно)
DELETE FROM `dogs_overrider`;
/*!40000 ALTER TABLE `dogs_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_overrider` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_postinstall_messages
CREATE TABLE IF NOT EXISTS `dogs_postinstall_messages` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_postinstall_messages: ~7 rows (приблизительно)
DELETE FROM `dogs_postinstall_messages`;
/*!40000 ALTER TABLE `dogs_postinstall_messages` DISABLE KEYS */;
INSERT INTO `dogs_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
	(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
	(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
	(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
	(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
	(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
	(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
	(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);
/*!40000 ALTER TABLE `dogs_postinstall_messages` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_redirect_links
CREATE TABLE IF NOT EXISTS `dogs_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_redirect_links: ~0 rows (приблизительно)
DELETE FROM `dogs_redirect_links`;
/*!40000 ALTER TABLE `dogs_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_redirect_links` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_schemas
CREATE TABLE IF NOT EXISTS `dogs_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_schemas: ~0 rows (приблизительно)
DELETE FROM `dogs_schemas`;
/*!40000 ALTER TABLE `dogs_schemas` DISABLE KEYS */;
INSERT INTO `dogs_schemas` (`extension_id`, `version_id`) VALUES
	(700, '3.8.9-2018-06-19');
/*!40000 ALTER TABLE `dogs_schemas` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_session
CREATE TABLE IF NOT EXISTS `dogs_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_session: ~2 rows (приблизительно)
DELETE FROM `dogs_session`;
/*!40000 ALTER TABLE `dogs_session` DISABLE KEYS */;
INSERT INTO `dogs_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
	('36ojht0cvcqs27ksiae0o0utd7', 0, 0, '1539618236', 'joomla|s:3876:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxODg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTM5NjAwNzE2O3M6NDoibGFzdCI7aToxNTM5NjE3Mzk2O3M6Mzoibm93IjtpOjE1Mzk2MTgyMzY7fXM6NToidG9rZW4iO3M6MzI6InhZekNETk9xRmFVVDhQbVk5YmNEUGFGVUhLdUFsUFVCIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2tpcGVycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czozOiJhbGwiO2E6MDp7fX1zOjEwOiJjb21fY29iYWx0IjtPOjg6InN0ZENsYXNzIjoxODp7czo2OiJmaWVsZHMiO086ODoic3RkQ2xhc3MiOjI6e3M6ODoib3JkZXJjb2wiO047czoxMDoibGltaXRzdGFydCI7aTowO31zOjIxOiJyZWNvcmRzMl9zaG93X3BhcmVudHMiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjI7fX1zOjg6InJlY29yZHMyIjtPOjg6InN0ZENsYXNzIjozOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo4OiJvcmRlcmNvbCI7TjtzOjk6Im9yZGVyZGlybiI7Tjt9czoyMToicmVjb3JkczVfc2hvd19wYXJlbnRzIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoic2VjdGlvbl9pZCI7aTo1O319czo4OiJyZWNvcmRzNSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMDoibGltaXRzdGFydCI7aTowO3M6ODoib3JkZXJjb2wiO047czo5OiJvcmRlcmRpcm4iO047fXM6MjI6InJlY29yZHMzX3Nob3dfY2hpbGRyZW4iO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjM7fX1zOjg6InJlY29yZHMzIjtPOjg6InN0ZENsYXNzIjozOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo4OiJvcmRlcmNvbCI7TjtzOjk6Im9yZGVyZGlybiI7Tjt9czoyMjoicmVjb3JkczRfc2hvd19jaGlsZHJlbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InNlY3Rpb25faWQiO2k6NDt9fXM6ODoicmVjb3JkczQiO086ODoic3RkQ2xhc3MiOjM6e3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjg6Im9yZGVyY29sIjtOO3M6OToib3JkZXJkaXJuIjtOO31zOjg6InJlY29yZHMxIjtPOjg6InN0ZENsYXNzIjo0OntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoic2VjdGlvbl9pZCI7aToxO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo4OiJvcmRlcmNvbCI7TjtzOjk6Im9yZGVyZGlybiI7Tjt9czoyMjoicmVjb3Jkczdfc2hvd19jaGlsZHJlbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InNlY3Rpb25faWQiO2k6Nzt9fXM6ODoicmVjb3JkczciO086ODoic3RkQ2xhc3MiOjM6e3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjg6Im9yZGVyY29sIjtOO3M6OToib3JkZXJkaXJuIjtOO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czoxNDoicmVjb3JkczFfMV9hbGwiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjE7fX1zOjE0OiJzZWN0aW9uMV8xX2FsbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToiZmlsdGVyX3R5cGUiO2E6MTp7aTowO3M6MToiMSI7fX1zOjE4OiJyZWNvcmRzN18xX2NyZWF0ZWQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjc7fX1zOjEyOiJyZWNvcmRzN19hbGwiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjc7fX1zOjIxOiJyZWNvcmRzMV9zaG93X3BhcmVudHMiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJzZWN0aW9uX2lkIjtpOjE7fX19czo2OiJnbG9iYWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGlzdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW1pdCI7aTo1O319czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InJldHVybiI7czoxOTg6Imh0dHA6Ly9wcm9kb2dzLmxvYy9hZGQtZG9nLyVEMSU4MSVEMSU4MiVEMCVCMCVEMSU4MiVEMSU4QyVEMSU4Ri0lRDAlQkYlRDAlQkUlRDAlQkIlRDElOEMlRDAlQjclRDAlQkUlRDAlQjIlRDAlQjAlRDElODIlRDAlQjUlRDAlQkIlRDElOEYvNzg2LXBpdG9tbmlrLzctc2liaXJza2lqLWtoYXNraS1wby1rbGljaGtlLWxvdG9zLXBvbC1tdXpoc2tvaiI7czo0OiJkYXRhIjthOjA6e319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI3ODUiO31zOjIwOiJjb2JhbHRfbGFzdF9saXN0X2lkcyI7YToyOntpOjA7czoxOiI3IjtpOjE7czoxOiIyIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 785, 'test'),
	('5qet1slcojme9slg5b9a0g1ga5', 1, 0, '1539604793', 'joomla|s:1900:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyMzQ7czo1OiJ0b2tlbiI7czozMjoiUWducVdxM0FEM1cyMThXWE9mbjZPeXBHQkk2OXlJaFgiO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzOTYwMDYzMDtzOjQ6Imxhc3QiO2k6MTUzOTYwNDc5MjtzOjM6Im5vdyI7aToxNTM5NjA0NzkzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6MTA6ImNvbV9jb2JhbHQiO086ODoic3RkQ2xhc3MiOjM6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6NToiZmllbGQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319czo3OiJzZWN0aW9uIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fXM6NToiZ3JvdXAiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fXM6NjoiZmllbGRzIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpZWxkcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJ0eXBlIjtpOjg7fX1zOjY6Imdyb3VwcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJncm91cHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoidHlwZSI7aTo4O3M6NjoicmV0dXJuIjtzOjA6IiI7fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoiZG9nc21lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6ImRhdGEiO047czo0OiJ0eXBlIjtOO3M6NDoibGluayI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI3ODQiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 784, 'admin');
/*!40000 ALTER TABLE `dogs_session` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_tags
CREATE TABLE IF NOT EXISTS `dogs_tags` (
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
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_tags: ~0 rows (приблизительно)
DELETE FROM `dogs_tags`;
/*!40000 ALTER TABLE `dogs_tags` DISABLE KEYS */;
INSERT INTO `dogs_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
	(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 784, '2018-10-05 08:34:45', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `dogs_tags` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_template_styles
CREATE TABLE IF NOT EXISTS `dogs_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_template_styles: ~4 rows (приблизительно)
DELETE FROM `dogs_template_styles`;
/*!40000 ALTER TABLE `dogs_template_styles` DISABLE KEYS */;
INSERT INTO `dogs_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
	(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
	(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
	(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
	(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');
/*!40000 ALTER TABLE `dogs_template_styles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_ucm_base
CREATE TABLE IF NOT EXISTS `dogs_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_ucm_base: ~0 rows (приблизительно)
DELETE FROM `dogs_ucm_base`;
/*!40000 ALTER TABLE `dogs_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_ucm_base` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_ucm_content
CREATE TABLE IF NOT EXISTS `dogs_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- Дамп данных таблицы prodogs.loc.dogs_ucm_content: ~0 rows (приблизительно)
DELETE FROM `dogs_ucm_content`;
/*!40000 ALTER TABLE `dogs_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_ucm_content` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_ucm_history
CREATE TABLE IF NOT EXISTS `dogs_ucm_history` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_ucm_history: ~0 rows (приблизительно)
DELETE FROM `dogs_ucm_history`;
/*!40000 ALTER TABLE `dogs_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_ucm_history` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_updates
CREATE TABLE IF NOT EXISTS `dogs_updates` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- Дамп данных таблицы prodogs.loc.dogs_updates: ~0 rows (приблизительно)
DELETE FROM `dogs_updates`;
/*!40000 ALTER TABLE `dogs_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_updates` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_update_sites
CREATE TABLE IF NOT EXISTS `dogs_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- Дамп данных таблицы prodogs.loc.dogs_update_sites: ~3 rows (приблизительно)
DELETE FROM `dogs_update_sites`;
/*!40000 ALTER TABLE `dogs_update_sites` DISABLE KEYS */;
INSERT INTO `dogs_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
	(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1539606496, ''),
	(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1539584315, ''),
	(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1539584335, '');
/*!40000 ALTER TABLE `dogs_update_sites` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_update_sites_extensions
CREATE TABLE IF NOT EXISTS `dogs_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- Дамп данных таблицы prodogs.loc.dogs_update_sites_extensions: ~4 rows (приблизительно)
DELETE FROM `dogs_update_sites_extensions`;
/*!40000 ALTER TABLE `dogs_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `dogs_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
	(1, 700),
	(2, 802),
	(2, 10002),
	(3, 28);
/*!40000 ALTER TABLE `dogs_update_sites_extensions` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_usergroups
CREATE TABLE IF NOT EXISTS `dogs_usergroups` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_usergroups: ~9 rows (приблизительно)
DELETE FROM `dogs_usergroups`;
/*!40000 ALTER TABLE `dogs_usergroups` DISABLE KEYS */;
INSERT INTO `dogs_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
	(1, 0, 1, 18, 'Public'),
	(2, 1, 8, 15, 'Registered'),
	(3, 2, 9, 14, 'Author'),
	(4, 3, 10, 13, 'Editor'),
	(5, 4, 11, 12, 'Publisher'),
	(6, 1, 4, 7, 'Manager'),
	(7, 6, 5, 6, 'Administrator'),
	(8, 1, 16, 17, 'Super Users'),
	(9, 1, 2, 3, 'Guest');
/*!40000 ALTER TABLE `dogs_usergroups` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_users
CREATE TABLE IF NOT EXISTS `dogs_users` (
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
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_users: ~3 rows (приблизительно)
DELETE FROM `dogs_users`;
/*!40000 ALTER TABLE `dogs_users` DISABLE KEYS */;
INSERT INTO `dogs_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
	(784, 'Super User', 'admin', 'zatulenko@gmail.com', '$2y$10$7E7bc53LW240v3IQgxqsxeAsN7COWdQG4MzyXSaTMoJhGrPY.2nXq', 0, 1, '2018-10-05 08:34:45', '2018-10-15 10:51:56', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
	(785, 'test', 'test', 'test@mail.ru', '$2y$10$4YDroBqTShV7HZa2wUygh.7h7vzv55VoQ.XKUhalgPB6DGVL5v9zu', 0, 0, '2018-10-11 12:23:53', '2018-10-15 10:52:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
	(786, 'pitomnik', 'pitomnik', 'pitomnik@mail.ru', '$2y$10$yYyRGUy.9Yplad4WV914ieY7xSghacwy1eaPOkcr5E8ZF9uiQAenO', 0, 0, '2018-10-14 06:15:02', '2018-10-15 10:50:32', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
/*!40000 ALTER TABLE `dogs_users` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_user_keys
CREATE TABLE IF NOT EXISTS `dogs_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_user_keys: ~0 rows (приблизительно)
DELETE FROM `dogs_user_keys`;
/*!40000 ALTER TABLE `dogs_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_user_keys` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_user_notes
CREATE TABLE IF NOT EXISTS `dogs_user_notes` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_user_notes: ~0 rows (приблизительно)
DELETE FROM `dogs_user_notes`;
/*!40000 ALTER TABLE `dogs_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_user_notes` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_user_profiles
CREATE TABLE IF NOT EXISTS `dogs_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- Дамп данных таблицы prodogs.loc.dogs_user_profiles: ~0 rows (приблизительно)
DELETE FROM `dogs_user_profiles`;
/*!40000 ALTER TABLE `dogs_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogs_user_profiles` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_user_usergroup_map
CREATE TABLE IF NOT EXISTS `dogs_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_user_usergroup_map: ~3 rows (приблизительно)
DELETE FROM `dogs_user_usergroup_map`;
/*!40000 ALTER TABLE `dogs_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `dogs_user_usergroup_map` (`user_id`, `group_id`) VALUES
	(784, 8),
	(785, 2),
	(786, 2);
/*!40000 ALTER TABLE `dogs_user_usergroup_map` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_utf8_conversion
CREATE TABLE IF NOT EXISTS `dogs_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_utf8_conversion: ~0 rows (приблизительно)
DELETE FROM `dogs_utf8_conversion`;
/*!40000 ALTER TABLE `dogs_utf8_conversion` DISABLE KEYS */;
INSERT INTO `dogs_utf8_conversion` (`converted`) VALUES
	(2);
/*!40000 ALTER TABLE `dogs_utf8_conversion` ENABLE KEYS */;


-- Дамп структуры для таблица prodogs.loc.dogs_viewlevels
CREATE TABLE IF NOT EXISTS `dogs_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы prodogs.loc.dogs_viewlevels: ~5 rows (приблизительно)
DELETE FROM `dogs_viewlevels`;
/*!40000 ALTER TABLE `dogs_viewlevels` DISABLE KEYS */;
INSERT INTO `dogs_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
	(1, 'Public', 0, '[1]'),
	(2, 'Registered', 2, '[6,2,8]'),
	(3, 'Special', 3, '[6,3,8]'),
	(5, 'Guest', 1, '[9]'),
	(6, 'Super Users', 4, '[8]');
/*!40000 ALTER TABLE `dogs_viewlevels` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
