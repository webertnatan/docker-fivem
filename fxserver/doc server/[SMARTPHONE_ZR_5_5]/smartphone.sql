/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_bank_invoices
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_bank_invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payee_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_blocks
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_blocks` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`, `phone`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_calls
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_calls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `video` tinyint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_index` (`initiator`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_casino
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_casino` (
  `user_id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `double` bigint(20) NOT NULL DEFAULT 0,
  `crash` bigint(20) NOT NULL DEFAULT 0,
  `mine` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_contacts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_gallery
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_ifood_orders
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_ifood_orders` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_instagram
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_instagram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_instagram_followers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`, `profile_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_instagram_likes
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`, `profile_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_instagram_notifications
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_instagram_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `saw` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_instagram_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_instagram_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `post_id_index` (`post_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_olx
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_olx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `images` varchar(1024) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_paypal_transactions
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_paypal_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'payment',
  `description` varchar(255) DEFAULT NULL,
  `value` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_tinder
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_tinder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(1024) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `show_gender` tinyint(4) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `show_tags` tinyint(4) NOT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `gender_index` (`gender`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_tinder_messages
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_tinder_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liked` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_tinder_rating
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_tinder_rating` (
  `profile_id` int(11) NOT NULL,
  `rated_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_id`, `rated_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_tor_messages
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_tor_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(24) NOT NULL DEFAULT 'geral',
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_index` (`channel`),
  KEY `sender_index` (`sender`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_tor_payments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_tor_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_twitter_followers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_twitter_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `profile_id_index` (`profile_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_twitter_likes
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_twitter_likes` (
  `tweet_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_twitter_profiles
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_twitter_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `bannerURL` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_twitter_tweets
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_twitter_tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` bigint(20) DEFAULT NULL,
  `content` varchar(280) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_uber_trips
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_uber_trips` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_rate` tinyint(4) DEFAULT 0,
  `driver_rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_weazel
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_weazel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_whatsapp
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_whatsapp` (
  `owner` varchar(32) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `read_receipts` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`owner`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_whatsapp_channels
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_whatsapp_groups
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `members` varchar(2048) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smartphone_whatsapp_messages
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `saw_at` bigint(20) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `channel_id_index` (`channel_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------



# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_bank_invoices
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_blocks
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_calls
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_casino
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_contacts
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_gallery
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_ifood_orders
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_instagram
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_instagram_followers
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_instagram_likes
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_instagram_notifications
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_instagram_posts
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_olx
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_paypal_transactions
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_tinder
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_tinder_messages
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_tinder_rating
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_tor_messages
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_tor_payments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_twitter_followers
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_twitter_likes
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_twitter_profiles
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_twitter_tweets
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_uber_trips
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_weazel
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_whatsapp
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_whatsapp_channels
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_whatsapp_groups
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smartphone_whatsapp_messages
# ------------------------------------------------------------


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
