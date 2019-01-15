-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.23 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_associations
CREATE TABLE IF NOT EXISTS `dogs_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_activities
CREATE TABLE IF NOT EXISTS `dogs_community_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(10) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `title` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `app` varchar(200) NOT NULL,
  `verb` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `groupid` int(10) DEFAULT NULL,
  `eventid` int(10) DEFAULT NULL,
  `group_access` tinyint(4) NOT NULL DEFAULT '0',
  `event_access` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `params` text NOT NULL,
  `points` int(4) NOT NULL DEFAULT '1',
  `archived` tinyint(3) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `comment_id` int(10) NOT NULL,
  `comment_type` varchar(200) NOT NULL,
  `like_id` int(10) NOT NULL,
  `like_type` varchar(200) NOT NULL,
  `actors` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `actor` (`actor`),
  KEY `target` (`target`),
  KEY `app` (`app`),
  KEY `created` (`created`),
  KEY `archived` (`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_activities_hide
CREATE TABLE IF NOT EXISTS `dogs_community_activities_hide` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_apps
CREATE TABLE IF NOT EXISTS `dogs_community_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `apps` varchar(200) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  `position` varchar(50) NOT NULL DEFAULT 'content',
  `params` text NOT NULL,
  `privacy` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_user_apps` (`userid`,`apps`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_avatar
CREATE TABLE IF NOT EXISTS `dogs_community_avatar` (
  `id` int(10) unsigned NOT NULL,
  `apptype` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 = small, 1 = medium, 2=large',
  UNIQUE KEY `id` (`id`,`apptype`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_backgrounds
CREATE TABLE IF NOT EXISTS `dogs_community_backgrounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `textcolor` varchar(20) DEFAULT NULL,
  `placeholdercolor` varchar(20) DEFAULT NULL,
  `custom` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `allowcustomtext` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_badges
CREATE TABLE IF NOT EXISTS `dogs_community_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `image` varchar(256) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_blocklist
CREATE TABLE IF NOT EXISTS `dogs_community_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blocked_userid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `blocked_userid` (`blocked_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_chat
CREATE TABLE IF NOT EXISTS `dogs_community_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `last_msg` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_chat_activity
CREATE TABLE IF NOT EXISTS `dogs_community_chat_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` char(50) NOT NULL,
  `content` text NOT NULL,
  `params` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_chat_id` (`chat_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_chat_participants
CREATE TABLE IF NOT EXISTS `dogs_community_chat_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `mute` int(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_chat_id` (`chat_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_config
CREATE TABLE IF NOT EXISTS `dogs_community_config` (
  `name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_connection
CREATE TABLE IF NOT EXISTS `dogs_community_connection` (
  `connection_id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_from` int(11) NOT NULL,
  `connect_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `group` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`connection_id`),
  KEY `connect_from` (`connect_from`,`connect_to`,`status`,`group`),
  KEY `idx_connect_to` (`connect_to`),
  KEY `idx_connect_from` (`connect_from`),
  KEY `idx_connect_tofrom` (`connect_to`,`connect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_connect_users
CREATE TABLE IF NOT EXISTS `dogs_community_connect_users` (
  `connectid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`connectid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_digest_email
CREATE TABLE IF NOT EXISTS `dogs_community_digest_email` (
  `user_id` int(11) NOT NULL,
  `total_sent` int(11) NOT NULL,
  `last_sent` timestamp NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_engagement
CREATE TABLE IF NOT EXISTS `dogs_community_engagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `week` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_events
CREATE TABLE IF NOT EXISTS `dogs_community_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL COMMENT 'parent for recurring event',
  `catid` int(11) unsigned NOT NULL,
  `contentid` int(11) unsigned DEFAULT '0' COMMENT '0 - if type == profile, else it hold the group id',
  `type` varchar(255) NOT NULL DEFAULT 'profile' COMMENT 'profile, group',
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `location` text NOT NULL,
  `summary` text CHARACTER SET utf8mb4 NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `description` text CHARACTER SET utf8mb4,
  `creator` int(11) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `permission` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Open (Anyone can mark attendence), 1 - Private (Only invited can mark attendence)',
  `avatar` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `cover` text NOT NULL,
  `invitedcount` int(11) unsigned DEFAULT '0',
  `confirmedcount` int(11) unsigned DEFAULT '0' COMMENT 'treat this as member count as well',
  `declinedcount` int(11) unsigned DEFAULT '0',
  `maybecount` int(11) unsigned DEFAULT '0',
  `wallcount` int(11) unsigned DEFAULT '0',
  `ticket` int(11) unsigned DEFAULT '0' COMMENT 'Represent how many guest can be joined or invited.',
  `allowinvite` tinyint(1) unsigned DEFAULT '1' COMMENT '0 - guest member cannot invite thier friends to join. 1 - yes, guest member can invite any of thier friends to join.',
  `created` datetime DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT '0',
  `published` int(11) unsigned DEFAULT '1',
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `offset` varchar(5) DEFAULT NULL,
  `allday` tinyint(11) NOT NULL DEFAULT '0',
  `repeat` varchar(50) DEFAULT NULL COMMENT 'null,daily,weekly,monthly',
  `repeatend` date NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_creator` (`creator`),
  KEY `idx_period` (`startdate`,`enddate`),
  KEY `idx_type` (`type`),
  KEY `idx_catid` (`catid`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_events_category
CREATE TABLE IF NOT EXISTS `dogs_community_events_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_events_members
CREATE TABLE IF NOT EXISTS `dogs_community_events_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `memberid` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '[Join / Invite]: 0 - [pending approval/pending invite], 1 - [approved/confirmed], 2 - [rejected/declined], 3 - [maybe/maybe], 4 - [blocked/blocked]',
  `permission` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 - creator, 2 - admin, 3 - member',
  `invited_by` int(11) unsigned DEFAULT '0',
  `approval` tinyint(1) unsigned DEFAULT '0' COMMENT '0 - no approval required, 1 - required admin approval',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`),
  KEY `idx_status` (`status`),
  KEY `idx_invitedby` (`invited_by`),
  KEY `idx_permission` (`eventid`,`permission`),
  KEY `idx_member_event` (`eventid`,`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_event_stats
CREATE TABLE IF NOT EXISTS `dogs_community_event_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_featured
CREATE TABLE IF NOT EXISTS `dogs_community_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_fields
CREATE TABLE IF NOT EXISTS `dogs_community_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tips` text NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `searchable` tinyint(1) DEFAULT '1',
  `registration` tinyint(1) DEFAULT '1',
  `options` text,
  `fieldcode` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldcode` (`fieldcode`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_fields_values
CREATE TABLE IF NOT EXISTS `dogs_community_fields_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(10) NOT NULL,
  `value` text CHARACTER SET utf8mb4 NOT NULL,
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `params` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_user_fieldid` (`user_id`,`field_id`),
  KEY `access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_files
CREATE TABLE IF NOT EXISTS `dogs_community_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `discussionid` int(11) NOT NULL,
  `bulletinid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `actid` int(11) DEFAULT NULL,
  `filepath` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussionid` (`discussionid`),
  KEY `groupid` (`groupid`),
  KEY `creator` (`creator`),
  KEY `bulletinid` (`bulletinid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups
CREATE TABLE IF NOT EXISTS `dogs_community_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `summary` text CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `approvals` tinyint(1) NOT NULL,
  `unlisted` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `discusscount` int(11) NOT NULL DEFAULT '0',
  `wallcount` int(11) NOT NULL DEFAULT '0',
  `membercount` int(11) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups_bulletins
CREATE TABLE IF NOT EXISTS `dogs_community_groups_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `message` text CHARACTER SET utf8mb4 NOT NULL,
  `date` datetime NOT NULL,
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups_category
CREATE TABLE IF NOT EXISTS `dogs_community_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups_discuss
CREATE TABLE IF NOT EXISTS `dogs_community_groups_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` text CHARACTER SET utf8mb4 NOT NULL,
  `message` text CHARACTER SET utf8mb4 NOT NULL,
  `lastreplied` datetime NOT NULL,
  `lock` tinyint(1) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups_invite
CREATE TABLE IF NOT EXISTS `dogs_community_groups_invite` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_groups_members
CREATE TABLE IF NOT EXISTS `dogs_community_groups_members` (
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `permissions` int(1) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `idx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_group_stats
CREATE TABLE IF NOT EXISTS `dogs_community_group_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_hashtag
CREATE TABLE IF NOT EXISTS `dogs_community_hashtag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_invitations
CREATE TABLE IF NOT EXISTS `dogs_community_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_likes
CREATE TABLE IF NOT EXISTS `dogs_community_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL,
  `like` text NOT NULL,
  `dislike` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_location_cache
CREATE TABLE IF NOT EXISTS `dogs_community_location_cache` (
  `address` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `data` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_mailq
CREATE TABLE IF NOT EXISTS `dogs_community_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` text NOT NULL,
  `subject` text CHARACTER SET utf8mb4 NOT NULL,
  `body` text CHARACTER SET utf8mb4 NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `template` varchar(64) NOT NULL,
  `email_type` text,
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_memberlist
CREATE TABLE IF NOT EXISTS `dogs_community_memberlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `condition` varchar(255) NOT NULL,
  `avataronly` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_memberlist_criteria
CREATE TABLE IF NOT EXISTS `dogs_community_memberlist_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_moods
CREATE TABLE IF NOT EXISTS `dogs_community_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `custom` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `allowcustomtext` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_msg
CREATE TABLE IF NOT EXISTS `dogs_community_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned DEFAULT '0',
  `from_name` varchar(45) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `subject` tinytext CHARACTER SET utf8mb4 NOT NULL,
  `body` text CHARACTER SET utf8mb4 NOT NULL,
  `migrated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_msg_recepient
CREATE TABLE IF NOT EXISTS `dogs_community_msg_recepient` (
  `msg_id` int(10) unsigned NOT NULL,
  `msg_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `bcc` tinyint(3) unsigned DEFAULT '0',
  `is_read` tinyint(3) unsigned DEFAULT '0',
  `deleted` tinyint(3) unsigned DEFAULT '0',
  UNIQUE KEY `un` (`msg_id`,`to`),
  KEY `msg_id` (`msg_id`),
  KEY `to` (`to`),
  KEY `idx_isread_to_deleted` (`is_read`,`to`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_notifications
CREATE TABLE IF NOT EXISTS `dogs_community_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(200) NOT NULL,
  `cmd_type` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `target` (`target`),
  KEY `actor` (`actor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_oauth
CREATE TABLE IF NOT EXISTS `dogs_community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_photos
CREATE TABLE IF NOT EXISTS `dogs_community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text CHARACTER SET utf8mb4 NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL,
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_photos_albums
CREATE TABLE IF NOT EXISTS `dogs_community_photos_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `location` text CHARACTER SET utf8mb4 NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_type` (`type`),
  KEY `idx_albumtype` (`id`,`type`),
  KEY `idx_creatortype` (`creator`,`type`),
  KEY `idx_groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_photos_tag
CREATE TABLE IF NOT EXISTS `dogs_community_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_photo_user` (`photoid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_photos_tokens
CREATE TABLE IF NOT EXISTS `dogs_community_photos_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_photo_stats
CREATE TABLE IF NOT EXISTS `dogs_community_photo_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_polls
CREATE TABLE IF NOT EXISTS `dogs_community_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `addoption` tinyint(1) DEFAULT NULL,
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `title` text NOT NULL,
  `enddate` datetime NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `creator` (`creator`),
  KEY `groupid` (`groupid`),
  KEY `eventid` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_polls_category
CREATE TABLE IF NOT EXISTS `dogs_community_polls_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_polls_items
CREATE TABLE IF NOT EXISTS `dogs_community_polls_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) unsigned NOT NULL,
  `value` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_polls_users
CREATE TABLE IF NOT EXISTS `dogs_community_polls_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) unsigned NOT NULL,
  `poll_itemid` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`),
  KEY `poll_itemid` (`poll_itemid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_profiles
CREATE TABLE IF NOT EXISTS `dogs_community_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `approvals` tinyint(3) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `avatar` text NOT NULL,
  `watermark` text NOT NULL,
  `watermark_hash` varchar(255) NOT NULL,
  `watermark_location` text NOT NULL,
  `thumb` text NOT NULL,
  `created` datetime NOT NULL,
  `create_groups` tinyint(1) DEFAULT '1',
  `create_events` int(11) DEFAULT '1',
  `profile_lock` tinyint(1) DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `approvals` (`approvals`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_profiles_fields
CREATE TABLE IF NOT EXISTS `dogs_community_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multiprofile_id` (`parent`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_profile_stats
CREATE TABLE IF NOT EXISTS `dogs_community_profile_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_register
CREATE TABLE IF NOT EXISTS `dogs_community_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(180) NOT NULL,
  `lastname` varchar(180) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_register_auth_token
CREATE TABLE IF NOT EXISTS `dogs_community_register_auth_token` (
  `token` varchar(200) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `auth_key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_reports
CREATE TABLE IF NOT EXISTS `dogs_community_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquestring` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_reports_actions
CREATE TABLE IF NOT EXISTS `dogs_community_reports_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `parameters` varchar(255) NOT NULL,
  `defaultaction` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_reports_reporter
CREATE TABLE IF NOT EXISTS `dogs_community_reports_reporter` (
  `reportid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_storage_s3
CREATE TABLE IF NOT EXISTS `dogs_community_storage_s3` (
  `storageid` varchar(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  UNIQUE KEY `storageid` (`storageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_tags
CREATE TABLE IF NOT EXISTS `dogs_community_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_tags_words
CREATE TABLE IF NOT EXISTS `dogs_community_tags_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(200) NOT NULL,
  `count` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_theme
CREATE TABLE IF NOT EXISTS `dogs_community_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_thirdparty_wall_options
CREATE TABLE IF NOT EXISTS `dogs_community_thirdparty_wall_options` (
  `name` varchar(255) NOT NULL,
  `notification_cmd` varchar(255) NOT NULL,
  `object_name` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_userpoints
CREATE TABLE IF NOT EXISTS `dogs_community_userpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL DEFAULT '',
  `rule_description` text NOT NULL,
  `rule_plugin` varchar(255) NOT NULL DEFAULT '',
  `action_string` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `points` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_users
CREATE TABLE IF NOT EXISTS `dogs_community_users` (
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_access` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `invite` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `friends` text NOT NULL,
  `groups` text NOT NULL,
  `events` text NOT NULL,
  `friendcount` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `watermark_hash` varchar(255) NOT NULL,
  `search_email` tinyint(1) NOT NULL DEFAULT '1',
  `default_avatar` tinyint(1) NOT NULL DEFAULT '1',
  `usergroup` tinytext,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_user_invites
CREATE TABLE IF NOT EXISTS `dogs_community_user_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `reason` text NOT NULL,
  `actionby` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_user_status
CREATE TABLE IF NOT EXISTS `dogs_community_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `posted_on` int(11) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_videos
CREATE TABLE IF NOT EXISTS `dogs_community_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'file',
  `video_id` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `creator_type` varchar(200) NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `duration` float unsigned DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `thumb` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `eventid` int(11) unsigned NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `location` text CHARACTER SET utf8mb4 NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_videos_category
CREATE TABLE IF NOT EXISTS `dogs_community_videos_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_videos_tag
CREATE TABLE IF NOT EXISTS `dogs_community_videos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_video_stats
CREATE TABLE IF NOT EXISTS `dogs_community_video_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_community_wall
CREATE TABLE IF NOT EXISTS `dogs_community_wall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `post_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `date` varchar(45) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `params` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_content_frontpage
CREATE TABLE IF NOT EXISTS `dogs_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_content_rating
CREATE TABLE IF NOT EXISTS `dogs_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_core_log_searches
CREATE TABLE IF NOT EXISTS `dogs_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=10149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_fields_categories
CREATE TABLE IF NOT EXISTS `dogs_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_fields_values
CREATE TABLE IF NOT EXISTS `dogs_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms0
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms1
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms2
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms3
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms4
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms5
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms6
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms7
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms8
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_terms9
CREATE TABLE IF NOT EXISTS `dogs_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsa
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsb
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsc
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsd
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termse
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_links_termsf
CREATE TABLE IF NOT EXISTS `dogs_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_taxonomy_map
CREATE TABLE IF NOT EXISTS `dogs_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_terms_common
CREATE TABLE IF NOT EXISTS `dogs_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_finder_types
CREATE TABLE IF NOT EXISTS `dogs_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_category_filters
CREATE TABLE IF NOT EXISTS `dogs_js_res_category_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `record_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_country
CREATE TABLE IF NOT EXISTS `dogs_js_res_country` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_field_telephone
CREATE TABLE IF NOT EXISTS `dogs_js_res_field_telephone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code2` varchar(2) NOT NULL DEFAULT '',
  `code3` varchar(3) NOT NULL DEFAULT '',
  `phone_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=725 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_import_rows
CREATE TABLE IF NOT EXISTS `dogs_js_res_import_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `import` int(11) DEFAULT '0',
  `text` text,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_import` (`import`)
) ENGINE=MyISAM AUTO_INCREMENT=1816 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_packs_sections
CREATE TABLE IF NOT EXISTS `dogs_js_res_packs_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=4251 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_tags
CREATE TABLE IF NOT EXISTS `dogs_js_res_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(10) DEFAULT 'en-GB',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_user_options_autofollow
CREATE TABLE IF NOT EXISTS `dogs_js_res_user_options_autofollow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `section_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_js_res_user_post_map
CREATE TABLE IF NOT EXISTS `dogs_js_res_user_post_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `whopost` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_messages_cfg
CREATE TABLE IF NOT EXISTS `dogs_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_modules_menu
CREATE TABLE IF NOT EXISTS `dogs_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_overrider
CREATE TABLE IF NOT EXISTS `dogs_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_schemas
CREATE TABLE IF NOT EXISTS `dogs_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_update_sites_extensions
CREATE TABLE IF NOT EXISTS `dogs_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
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

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_user_profiles
CREATE TABLE IF NOT EXISTS `dogs_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_user_usergroup_map
CREATE TABLE IF NOT EXISTS `dogs_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_utf8_conversion
CREATE TABLE IF NOT EXISTS `dogs_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_viewlevels
CREATE TABLE IF NOT EXISTS `dogs_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица prodogs.loc.dogs_wf_profiles
CREATE TABLE IF NOT EXISTS `dogs_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
