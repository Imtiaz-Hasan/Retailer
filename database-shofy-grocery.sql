-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'QOdlHANwpyCYp31DCHh1zFlZmYT86o32',1,'2024-03-15 03:03:21','2024-03-15 03:03:21','2024-03-15 03:03:21');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-03-15 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-03-15 03:03:38','2024-03-15 03:03:38',1,NULL,NULL),(2,'Ads 2','2029-03-15 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-03-15 03:03:38','2024-03-15 03:03:38',1,NULL,NULL),(3,'Ads 3','2029-03-15 00:00:00','not_set','L1WDL8YGZUOR','grocery/banners/1.jpg','/products',0,3,'published','2024-03-15 03:03:38','2024-03-15 03:03:38',1,NULL,NULL),(4,'Ads 4','2029-03-15 00:00:00','not_set','GA3K1VZWNMPF','grocery/banners/2.png','/products',0,4,'published','2024-03-15 03:03:38','2024-03-15 03:03:38',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','🍇 Fresh arrivals just in! Shop now for quality groceries and elevate your meals!',0,NULL,NULL,0,1,'2024-03-15 10:03:32',NULL,1,'2024-03-15 03:03:32','2024-03-15 03:03:32'),(2,'Announcement 2','🚀 Explore new flavors hassle-free. Enjoy free delivery on orders over $50!',0,NULL,NULL,0,1,'2024-03-15 10:03:32',NULL,1,'2024-03-15 03:03:32','2024-03-15 03:03:32'),(3,'Announcement 3','🌽 Quality guaranteed! Hassle-free returns within 30 days for your peace of mind.',0,NULL,NULL,0,1,'2024-03-15 10:03:32',NULL,1,'2024-03-15 03:03:32','2024-03-15 03:03:32');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Beatae est exercitationem placeat a dolor dicta aut nobis. Quia est maiores repudiandae minima. Cum et quo voluptatem dolore quas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-03-15 03:03:28','2024-03-15 03:03:28'),(2,'Fashion',0,'Deserunt aut sapiente ipsam eos corporis. Nobis unde ipsum deleniti. Fuga nemo cum voluptates commodi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-15 03:03:28','2024-03-15 03:03:28'),(3,'Electronic',0,'Fugiat tempora vel est ut quos et eaque. Repellat sit sunt neque adipisci quae rem unde. Explicabo rem illo quisquam sunt fugit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-15 03:03:28','2024-03-15 03:03:28'),(4,'Commercial',0,'Tempora explicabo praesentium nihil ut natus enim cumque magnam. Eum eius nulla voluptas ut. Recusandae et sint illo sint. Maiores fugit qui expedita tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-15 03:03:28','2024-03-15 03:03:28'),(5,'Organic Fruits',0,'Fugiat et fugit dolores eum voluptatum. Aperiam aut quas accusantium. Omnis provident eligendi in nisi ullam quas. Cumque occaecati sint qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-15 03:03:28','2024-03-15 03:03:28'),(6,'Ecological',0,'Repudiandae repellendus ex odit non reiciendis. Temporibus quos sit minima natus ullam. Cumque at consectetur labore sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Annette Weber','berta29@example.org','737.401.4426','94926 Abshire Mountain\nEast Michael, IN 05235-7556','Facilis minus aut eum distinctio sit.','Eum officia sit qui at fugiat. Accusamus et consequatur voluptates sapiente sed laboriosam. Omnis maxime suscipit explicabo vel cupiditate quam. In corrupti consequatur dolorum nisi consequatur sit illum. Beatae qui eligendi pariatur et. Aut laborum nobis dolores consequatur inventore optio. Necessitatibus distinctio autem placeat eos. Aspernatur aut vitae incidunt est sit odit libero. Et voluptatem iusto velit ea ex dicta. Sit est iste et eos aut perspiciatis.','read','2024-03-15 03:03:27','2024-03-15 03:03:27'),(2,'Ms. Anahi Daugherty','altenwerth.dianna@example.org','424.323.9799','8177 Rolfson Forge\nDomenickside, LA 02823-5975','Rem dolorum ut quo officia ipsa magnam.','Excepturi porro et modi aliquam corrupti qui. Quo non reprehenderit doloremque deserunt eum sint. Laboriosam quis consectetur omnis voluptas harum. Voluptas labore assumenda error qui doloribus ducimus iure assumenda. Odio accusantium earum id maiores dolore pariatur alias cum. Omnis autem dolorum odit odio. Explicabo rerum nesciunt inventore cumque. Labore velit quo optio. Dolores quis error et ut omnis deleniti. Quisquam illum ea minus consequatur voluptas distinctio officia quidem.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27'),(3,'Morgan Quitzon','obie12@example.net','267-657-8851','81873 Nedra Mill\nEast Mireya, MD 89048','Saepe rerum totam quod facere qui.','Ratione unde at quis placeat consequatur. Non voluptas et voluptatibus similique in. Nam at nihil animi consequatur. Ullam vitae fugit quia totam dolorem ratione. Iusto optio dolor est beatae vel totam. Veritatis rem aperiam ducimus officia saepe non animi facilis. Fugiat et quis totam omnis ipsum. Quia incidunt enim dolorem dolorem vel consequatur adipisci. Earum soluta et sed voluptates in eveniet itaque.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27'),(4,'Shane Roob','koss.cathryn@example.com','317.476.6538','908 Kerluke Squares Suite 645\nNorth Verdastad, MO 80814','Provident atque voluptates itaque.','Vel et delectus itaque ea maiores. Non porro quo et accusantium. Qui cupiditate aut voluptatem nisi non quis. Consequatur harum voluptatibus vitae autem dolorem. Sint id reprehenderit eius nihil enim. Beatae suscipit doloribus adipisci deleniti deserunt hic vel facere. Omnis architecto voluptatum corporis quia. Animi natus ratione voluptatum quisquam eius dicta.','read','2024-03-15 03:03:27','2024-03-15 03:03:27'),(5,'Felicity Gutmann V','alena95@example.org','(772) 505-6106','1150 Kunze Lakes Apt. 329\nNorth Lane, NH 53078','Non ipsa soluta quia quia omnis est non.','Sapiente perferendis dolores non maxime aut. Neque eos rerum in voluptatem voluptate voluptates. Sunt nemo sit ea sed beatae porro. Ipsa nihil laudantium et qui velit beatae architecto. Porro incidunt dolorem non saepe aspernatur veniam. Illo harum iste nobis et quia eum reiciendis. Autem sed et aut vel accusamus reiciendis magni. Nesciunt eius fuga fuga fugit. Hic illo voluptatem voluptatem dolor. Nemo officia aut perspiciatis unde deleniti accusantium.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27'),(6,'Trey Lockman','upton.marley@example.net','(774) 677-2349','65926 Ankunding Flats Apt. 444\nNew Donnellview, VA 02593-1738','Distinctio minima sed enim.','Modi minima cum repellat sint. Numquam atque nisi ratione vitae sequi. Odit placeat suscipit quis accusamus eum aut odio fugit. Dolorem soluta doloremque id deleniti. Saepe eos hic doloribus voluptatem. Consequatur reiciendis hic quod cum. Aliquam dicta nisi hic quia veritatis. Eum minima accusantium vitae ut eum. Eos adipisci in non assumenda. Ullam voluptatibus velit rerum. Quia molestias accusamus explicabo. Sint eos exercitationem repudiandae perspiciatis totam neque sed.','read','2024-03-15 03:03:27','2024-03-15 03:03:27'),(7,'Arlie Schmeler','mdaugherty@example.net','+15105919801','3573 Gislason Track Apt. 547\nLake Anahi, MS 79882','Dolores enim totam cum ex veniam.','Numquam omnis dolor alias aspernatur maxime accusamus. Minima ut earum vel esse aperiam debitis sunt. Iusto ipsam ipsam qui velit omnis. Accusantium animi eos molestiae laudantium non. Dolor sunt maiores perspiciatis iusto minus eligendi aperiam. Consequuntur explicabo aut et consectetur. Vitae amet dolor sed perferendis est quas quasi. Pariatur nostrum et ducimus debitis maxime suscipit. Provident minima excepturi distinctio. Qui delectus eveniet et. Harum veritatis at aperiam.','read','2024-03-15 03:03:27','2024-03-15 03:03:27'),(8,'Jon Abernathy','anabel09@example.org','843.291.4793','6855 Windler Light Apt. 250\nKiaramouth, MT 41591-7747','At ex qui quia modi.','Rerum voluptas ipsum aut aut. Veniam est ea eos ipsa ut qui. Consectetur adipisci dolorem cupiditate et. Et et qui pariatur nihil quis aut cum. Omnis reprehenderit magni quo blanditiis quisquam. Asperiores dolore quis explicabo totam. Fugiat placeat tempora aut aliquam praesentium optio officia. Beatae iure eos atque aliquid molestiae quae vel distinctio. Beatae placeat qui nobis est maxime dolores. Sed illum possimus ut labore veritatis minima. Facere quia quis molestias et quam.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27'),(9,'Prof. Cary Parisian','fcole@example.com','248.652.1429','7431 Morton Mount\nEast Consuelo, OR 38315','Dicta similique iure neque eveniet.','Qui autem laudantium harum possimus doloribus itaque praesentium. Ex consequatur soluta est doloribus illo. At et nihil maxime quasi beatae ipsum. Omnis consequuntur sequi autem a saepe est. Veniam distinctio rerum est in aut. Rerum fugiat incidunt quasi error nobis et. Laborum qui iusto deserunt nostrum eius ut. Blanditiis eum aut aut temporibus nostrum est beatae et. Repudiandae dolorem et corrupti quisquam sint ut quia.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27'),(10,'Piper Purdy','thiel.laisha@example.org','+1-520-595-5273','976 McGlynn Club Suite 085\nEast Franzhaven, AK 22445','Harum labore aut est qui rerum vero.','Placeat sit explicabo quae modi neque necessitatibus. Totam qui officiis est veritatis officiis ea esse. Aliquid autem cupiditate suscipit asperiores fugit sed rerum aut. Nostrum ea placeat delectus qui nihil. Dolore quos aut quod perferendis corrupti alias. Eligendi et voluptas et distinctio esse eos. Delectus nihil quod laborum minima sunt non. Sed non velit voluptatem ut at vel fugit.','unread','2024-03-15 03:03:27','2024-03-15 03:03:27');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,NULL,'published',0,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,NULL,'published',1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',2,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',3,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',4,1,'2024-03-15 03:03:22','2024-03-15 03:03:22');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,'EUR','€',0,2,1,0,0.84,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,'VND','₫',0,0,2,0,23203,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(4,'NGN','₦',1,2,2,0,895.52,'2024-03-15 03:03:22','2024-03-15 03:03:22');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Bella Hansen','customer@botble.com','+16623190150','NA','Louisiana','East Alethaview','1768 King Inlet',1,1,'2024-03-15 03:03:23','2024-03-15 03:03:23','63988-3744'),(2,'Bella Hansen','customer@botble.com','+13127349743','GU','Idaho','Madieburgh','6384 Merritt Turnpike',1,0,'2024-03-15 03:03:23','2024-03-15 03:03:23','80291'),(3,'Krista Hickle Sr.','vendor@botble.com','+12238648796','IR','Michigan','Darronport','449 Orpha Glens',2,1,'2024-03-15 03:03:23','2024-03-15 03:03:23','26195-0858'),(4,'Krista Hickle Sr.','vendor@botble.com','+18728657613','GP','California','Kohlermouth','10921 Hill Port',2,0,'2024-03-15 03:03:23','2024-03-15 03:03:23','51846-9381'),(5,'Ramona Senger','wunsch.amparo@example.com','+19012077216','AS','Tennessee','Trantowbury','5150 Elwin Pine Suite 582',3,1,'2024-03-15 03:03:23','2024-03-15 03:03:23','71487'),(6,'Helen Abbott','rutherford.carmelo@example.com','+12088365848','ST','Illinois','New Cassie','513 Amelie Village Suite 445',4,1,'2024-03-15 03:03:23','2024-03-15 03:03:23','19742'),(7,'Dillan Grant','lebsack.ervin@example.com','+19569281104','KE','Washington','Lake Opal','13097 Keebler Heights Apt. 378',5,1,'2024-03-15 03:03:24','2024-03-15 03:03:24','52797'),(8,'Wiley Paucek','diamond.monahan@example.org','+17695868195','BJ','Tennessee','North Kris','6185 Domenica Wall',6,1,'2024-03-15 03:03:24','2024-03-15 03:03:24','69814-4072'),(9,'Miss Idell Abernathy','carlie76@example.net','+14106492295','TD','Georgia','Lake Danielafurt','3229 Hauck Trafficway',7,1,'2024-03-15 03:03:24','2024-03-15 03:03:24','30777'),(10,'Federico Keebler','vbarrows@example.com','+14584913927','CF','Vermont','West Margarettefort','905 Geo Knolls',8,1,'2024-03-15 03:03:25','2024-03-15 03:03:25','23813'),(11,'Natasha Goodwin MD','mwatsica@example.org','+17062415149','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',9,1,'2024-03-15 03:03:25','2024-03-15 03:03:25','37021-3385'),(12,'Beatrice Corkery','franecki.matteo@example.net','+14247789245','NU','New Jersey','Port Zechariah','30747 Johnston Route',10,1,'2024-03-15 03:03:25','2024-03-15 03:03:25','99696-2480');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Bella Hansen','customer@botble.com','$2y$12$/o3pxlzO.yRWJ.Pzo/8CHesHmiGp1R7TvjQNIEW2jh1fS2RO0WdKO','main/customers/8.jpg','1997-02-14','+13466615562',NULL,'2024-03-15 03:03:23','2024-03-15 03:03:30','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(2,'Krista Hickle Sr.','vendor@botble.com','$2y$12$XN6JbvbfE8DLfkXEnEv17.Z0n223UIzZh0a1SjSn0zejjT0GIKhwu','main/customers/5.jpg','1974-02-20','+16784176419',NULL,'2024-03-15 03:03:23','2024-03-15 03:03:30','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(3,'Ramona Senger','wunsch.amparo@example.com','$2y$12$V.rKb4IdG6mWN91l.HRs6.cqO7Q4aoB7kJz03ACAsGAxXrZYPHu6O','main/customers/1.jpg','1983-03-04','+16577940827',NULL,'2024-03-15 03:03:23','2024-03-15 03:03:31','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(4,'Helen Abbott','rutherford.carmelo@example.com','$2y$12$ya6B2z1rnw5MF2qBV9g8WOaHw4NFNPjDx3rwcF5HGGRRO8C6pSBPS','main/customers/2.jpg','1975-02-16','+17126380787',NULL,'2024-03-15 03:03:23','2024-03-15 03:03:31','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(5,'Dillan Grant','lebsack.ervin@example.com','$2y$12$DWLA06n/3OEzzcCljUfY4uYTFdYOXczTjep8a73HrPrRykuga41Ai','main/customers/3.jpg','1979-02-25','+18588642539',NULL,'2024-03-15 03:03:24','2024-03-15 03:03:31','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(6,'Wiley Paucek','diamond.monahan@example.org','$2y$12$7iGpVB2eNxdF1q7.ieMUjOJeM5X7lpd2ol/ksI.5MhI8G4DBpUmK.','main/customers/4.jpg','1993-02-26','+13398209939',NULL,'2024-03-15 03:03:24','2024-03-15 03:03:31','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(7,'Miss Idell Abernathy','carlie76@example.net','$2y$12$oUXbEYMvnmVGYO23vFSVIOJ/iDTCHutOYfSbgTmBQp6ZThNMlV9fC','main/customers/5.jpg','1987-03-06','+12033468696',NULL,'2024-03-15 03:03:24','2024-03-15 03:03:32','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(8,'Federico Keebler','vbarrows@example.com','$2y$12$Q1D2HPgzWrGrhiC.3LULVuli3lnSl8WmWEPbJMMxx7SYjcyAiSWfi','main/customers/6.jpg','1978-02-13','+17329467914',NULL,'2024-03-15 03:03:25','2024-03-15 03:03:32','2024-03-15 10:03:22',NULL,1,'2024-03-15 10:03:30','activated',NULL),(9,'Natasha Goodwin MD','mwatsica@example.org','$2y$12$3JS8NQNKaIxZzGxr9TOQSekEGwr68BHcLrxE3UkuPRlm2ftA0iXv.','main/customers/7.jpg','1994-02-17','+16675866481',NULL,'2024-03-15 03:03:25','2024-03-15 03:03:32','2024-03-15 10:03:22',NULL,0,NULL,'activated',NULL),(10,'Beatrice Corkery','franecki.matteo@example.net','$2y$12$jvrVDOBV/7bpdCwRof6XqeVs0KgxCKPaJmciSAUvSksaP2cOBrTzG','main/customers/8.jpg','1989-02-21','+16786691607',NULL,'2024-03-15 03:03:25','2024-03-15 03:03:32','2024-03-15 10:03:22',NULL,0,NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','6B2YZZRUW0QL','2024-03-14 10:03:29','2024-03-22 10:03:29',NULL,0,839,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(2,'Discount 2','DEQIUPNHPWCE','2024-03-14 10:03:29','2024-03-30 10:03:29',NULL,0,928,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(3,'Discount 3','ZAQHYAF5A2HY','2024-03-14 10:03:29',NULL,NULL,0,303,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(4,'Discount 4','B3QK6YSV1CPE','2024-03-14 10:03:29','2024-03-28 10:03:29',NULL,0,302,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(5,'Discount 5','WCWE2LBBREAC','2024-03-14 10:03:29',NULL,NULL,0,81,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(6,'Discount 6','NJEJ0TKFD7OS','2024-03-14 10:03:29','2024-04-06 10:03:29',NULL,0,991,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(7,'Discount 7','YLLQ46S0O5H1','2024-03-14 10:03:29',NULL,NULL,0,131,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(8,'Discount 8','VDWMHUUC05CJ','2024-03-14 10:03:29','2024-03-16 10:03:29',NULL,0,440,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(9,'Discount 9','TFLLOVJQSYW8','2024-03-14 10:03:29',NULL,NULL,0,678,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL),(10,'Discount 10','LA0BZIBKFRCA','2024-03-14 10:03:29',NULL,NULL,0,33,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,661.96,16,1),(1,2,221.76,8,5),(1,3,601.28,17,4),(1,4,399.744,10,2),(1,5,674.88,16,4),(1,6,564.84,11,3),(1,7,194.68,14,3),(1,8,207.459,10,3),(1,9,1374.33,20,4),(1,10,353.58,15,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-04-03 00:00:00','published','2024-03-15 03:03:38','2024-03-15 03:03:38');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(1,2,'2 Year',10,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(1,3,'3 Year',20,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,4,'4GB',0,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,5,'8GB',10,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,6,'16GB',20,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,7,'Core i5',0,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,8,'Core i7',10,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,9,'Core i9',20,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,10,'128GB',0,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,11,'256GB',10,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,12,'512GB',20,9999,0,'2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',50,'Avocado',NULL,'grocery/products/product-3.jpg',1,2253.00,2253.00,0.00,0.00,2253.00,'{\"sku\":\"A9-152-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(2,2,'Botble\\Ecommerce\\Models\\Product',79,'Chia Seeds',NULL,'grocery/products/product-7.jpg',3,2101.00,6303.00,0.00,0.00,6303.00,'{\"sku\":\"HJ-126-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(3,3,'Botble\\Ecommerce\\Models\\Product',34,'Organic Apples',NULL,'grocery/products/product-11.jpg',1,871.00,871.00,0.00,0.00,871.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(4,4,'Botble\\Ecommerce\\Models\\Product',43,'Organic Spinach',NULL,'grocery/products/product-4.jpg',2,888.00,1776.00,0.00,0.00,1776.00,'{\"sku\":\"G4-100-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(5,5,'Botble\\Ecommerce\\Models\\Product',56,'Greek Yogurt',NULL,'grocery/products/product-4.jpg',2,426.00,852.00,0.00,0.00,852.00,'{\"sku\":\"AP-125-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-15 03:03:41','2024-03-15 03:03:41'),(6,5,'Botble\\Ecommerce\\Models\\Product',74,'Black Beans',NULL,'grocery/products/product-1.jpg',3,639.00,1917.00,0.00,0.00,1917.00,'{\"sku\":\"7K-143-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:41','2024-03-15 03:03:41'),(7,6,'Botble\\Ecommerce\\Models\\Product',43,'Organic Spinach',NULL,'grocery/products/product-4.jpg',2,888.00,1776.00,0.00,0.00,1776.00,'{\"sku\":\"G4-100-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-15 03:03:41','2024-03-15 03:03:41'),(8,7,'Botble\\Ecommerce\\Models\\Product',52,'Avocado',NULL,'grocery/products/product-10.jpg',1,2253.00,2253.00,0.00,0.00,2253.00,'{\"sku\":\"A9-152-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-15 03:03:41','2024-03-15 03:03:41'),(9,8,'Botble\\Ecommerce\\Models\\Product',47,'Almond Milk',NULL,'grocery/products/product-6.jpg',2,314.00,628.00,0.00,0.00,628.00,'{\"sku\":\"FP-199-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-15 03:03:41','2024-03-15 03:03:41'),(10,9,'Botble\\Ecommerce\\Models\\Product',61,'Organic Cherry Tomatoes (Digital)',NULL,'grocery/products/product-4.jpg',3,2270.00,6810.00,0.00,0.00,6810.00,'{\"sku\":\"AM-199-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(11,10,'Botble\\Ecommerce\\Models\\Product',37,'Whole Grain Bread',NULL,'grocery/products/product-1.jpg',1,462.00,462.00,0.00,0.00,462.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(12,10,'Botble\\Ecommerce\\Models\\Product',82,'Whole Wheat Pasta (Digital)',NULL,'grocery/products/product-3.jpg',2,1949.00,3898.00,0.00,0.00,3898.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(13,11,'Botble\\Ecommerce\\Models\\Product',71,'Cucumber',NULL,'grocery/products/product-5.jpg',3,1330.00,3990.00,0.00,0.00,3990.00,'{\"sku\":\"D2-119-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(14,11,'Botble\\Ecommerce\\Models\\Product',72,'Cucumber',NULL,'grocery/products/product-10.jpg',2,1330.00,2660.00,0.00,0.00,2660.00,'{\"sku\":\"D2-119-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(15,12,'Botble\\Ecommerce\\Models\\Product',52,'Avocado',NULL,'grocery/products/product-10.jpg',3,2253.00,6759.00,0.00,0.00,6759.00,'{\"sku\":\"A9-152-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(16,12,'Botble\\Ecommerce\\Models\\Product',66,'Organic Chicken Breast',NULL,'grocery/products/product-6.jpg',1,738.00,738.00,0.00,0.00,738.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(17,13,'Botble\\Ecommerce\\Models\\Product',84,'Mixed Nuts',NULL,'grocery/products/product-3.jpg',2,1316.00,2632.00,0.00,0.00,2632.00,'{\"sku\":\"VD-144-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-15 03:03:42','2024-03-15 03:03:42'),(18,14,'Botble\\Ecommerce\\Models\\Product',80,'Chia Seeds',NULL,'grocery/products/product-11.jpg',1,2101.00,2101.00,0.00,0.00,2101.00,'{\"sku\":\"HJ-126-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(19,14,'Botble\\Ecommerce\\Models\\Product',89,'Organic Strawberries',NULL,'grocery/products/product-8.jpg',3,1706.00,5118.00,0.00,0.00,5118.00,'{\"sku\":\"AV-130-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(20,14,'Botble\\Ecommerce\\Models\\Product',92,'Salad Dressing',NULL,'grocery/products/product-8.jpg',2,1247.00,2494.00,0.00,0.00,2494.00,'{\"sku\":\"JR-160-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(21,15,'Botble\\Ecommerce\\Models\\Product',40,'Free-Range Eggs',NULL,'grocery/products/product-6.jpg',2,1879.00,3758.00,0.00,0.00,3758.00,'{\"sku\":\"10-139-A0-A2\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(22,16,'Botble\\Ecommerce\\Models\\Product',44,'Organic Spinach',NULL,'grocery/products/product-8.jpg',1,888.00,888.00,0.00,0.00,888.00,'{\"sku\":\"G4-100-A0-A2\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(23,17,'Botble\\Ecommerce\\Models\\Product',34,'Organic Apples',NULL,'grocery/products/product-11.jpg',3,871.00,2613.00,0.00,0.00,2613.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(24,18,'Botble\\Ecommerce\\Models\\Product',68,'Organic Chicken Breast',NULL,'grocery/products/product-3.jpg',3,738.00,2214.00,0.00,0.00,2214.00,'{\"sku\":\"CR-176-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(25,18,'Botble\\Ecommerce\\Models\\Product',82,'Whole Wheat Pasta (Digital)',NULL,'grocery/products/product-3.jpg',2,1949.00,3898.00,0.00,0.00,3898.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-15 03:03:43','2024-03-15 03:03:43'),(26,19,'Botble\\Ecommerce\\Models\\Product',77,'Black Beans',NULL,'grocery/products/product-2.jpg',3,639.00,1917.00,0.00,0.00,1917.00,'{\"sku\":\"7K-143-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(27,20,'Botble\\Ecommerce\\Models\\Product',39,'Free-Range Eggs',NULL,'grocery/products/product-4.jpg',2,1879.00,3758.00,0.00,0.00,3758.00,'{\"sku\":\"10-139-A0-A1\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(28,21,'Botble\\Ecommerce\\Models\\Product',57,'Sweet Potatoes',NULL,'grocery/products/product-4.jpg',2,703.00,1406.00,0.00,0.00,1406.00,'{\"sku\":\"LN-105-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(29,21,'Botble\\Ecommerce\\Models\\Product',73,'Cucumber',NULL,'grocery/products/product-8.jpg',2,1330.00,2660.00,0.00,0.00,2660.00,'{\"sku\":\"D2-119-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(30,22,'Botble\\Ecommerce\\Models\\Product',31,'Organic Apples',NULL,'grocery/products/product-10.jpg',2,871.00,1742.00,0.00,0.00,1742.00,'{\"sku\":\"UI-125-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(31,22,'Botble\\Ecommerce\\Models\\Product',34,'Organic Apples',NULL,'grocery/products/product-11.jpg',2,871.00,1742.00,0.00,0.00,1742.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(32,23,'Botble\\Ecommerce\\Models\\Product',37,'Whole Grain Bread',NULL,'grocery/products/product-1.jpg',1,462.00,462.00,0.00,0.00,462.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-15 03:03:44','2024-03-15 03:03:44'),(33,24,'Botble\\Ecommerce\\Models\\Product',76,'Black Beans',NULL,'grocery/products/product-7.jpg',2,639.00,1278.00,0.00,0.00,1278.00,'{\"sku\":\"7K-143-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(34,25,'Botble\\Ecommerce\\Models\\Product',85,'Green Tea Bags',NULL,'grocery/products/product-10.jpg',1,534.00,534.00,0.00,0.00,534.00,'{\"sku\":\"XD-126-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(35,26,'Botble\\Ecommerce\\Models\\Product',90,'Quinoa Flour (Digital)',NULL,'grocery/products/product-11.jpg',1,1833.00,1833.00,0.00,0.00,1833.00,'{\"sku\":\"4S-155-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(36,27,'Botble\\Ecommerce\\Models\\Product',58,'Sweet Potatoes',NULL,'grocery/products/product-10.jpg',1,703.00,703.00,0.00,0.00,703.00,'{\"sku\":\"LN-105-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(37,27,'Botble\\Ecommerce\\Models\\Product',75,'Black Beans',NULL,'grocery/products/product-4.jpg',1,639.00,639.00,0.00,0.00,639.00,'{\"sku\":\"7K-143-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(38,28,'Botble\\Ecommerce\\Models\\Product',66,'Organic Chicken Breast',NULL,'grocery/products/product-6.jpg',2,738.00,1476.00,0.00,0.00,1476.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-15 03:03:45','2024-03-15 03:03:45'),(39,29,'Botble\\Ecommerce\\Models\\Product',89,'Organic Strawberries',NULL,'grocery/products/product-8.jpg',3,1706.00,5118.00,0.00,0.00,5118.00,'{\"sku\":\"AV-130-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:46','2024-03-15 03:03:46'),(40,30,'Botble\\Ecommerce\\Models\\Product',66,'Organic Chicken Breast',NULL,'grocery/products/product-6.jpg',2,738.00,1476.00,0.00,0.00,1476.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-15 03:03:46','2024-03-15 03:03:46'),(41,31,'Botble\\Ecommerce\\Models\\Product',74,'Black Beans',NULL,'grocery/products/product-1.jpg',1,639.00,639.00,0.00,0.00,639.00,'{\"sku\":\"7K-143-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:46','2024-03-15 03:03:46'),(42,32,'Botble\\Ecommerce\\Models\\Product',37,'Whole Grain Bread',NULL,'grocery/products/product-1.jpg',3,462.00,1386.00,0.00,0.00,1386.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-15 03:03:46','2024-03-15 03:03:46'),(43,33,'Botble\\Ecommerce\\Models\\Product',57,'Sweet Potatoes',NULL,'grocery/products/product-4.jpg',1,703.00,703.00,0.00,0.00,703.00,'{\"sku\":\"LN-105-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-15 03:03:46','2024-03-15 03:03:46'),(44,34,'Botble\\Ecommerce\\Models\\Product',69,'Extra Virgin Olive Oil (Digital)',NULL,'grocery/products/product-1.jpg',1,317.00,317.00,0.00,0.00,317.00,'{\"sku\":\"P8-141-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(45,35,'Botble\\Ecommerce\\Models\\Product',93,'Sweet Corn',NULL,'grocery/products/product-7.jpg',2,980.00,1960.00,0.00,0.00,1960.00,'{\"sku\":\"WS-196-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(46,36,'Botble\\Ecommerce\\Models\\Product',85,'Green Tea Bags',NULL,'grocery/products/product-10.jpg',1,534.00,534.00,0.00,0.00,534.00,'{\"sku\":\"XD-126-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(47,37,'Botble\\Ecommerce\\Models\\Product',94,'Sweet Corn',NULL,'grocery/products/product-11.jpg',1,980.00,980.00,0.00,0.00,980.00,'{\"sku\":\"WS-196-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(48,37,'Botble\\Ecommerce\\Models\\Product',95,'Sweet Corn',NULL,'grocery/products/product-8.jpg',2,980.00,1960.00,0.00,0.00,1960.00,'{\"sku\":\"WS-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(49,38,'Botble\\Ecommerce\\Models\\Product',99,'Cottage Cheese',NULL,'grocery/products/product-8.jpg',2,973.00,1946.00,0.00,0.00,1946.00,'{\"sku\":\"I0-199-A0-A1\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}','2024-03-15 03:03:47','2024-03-15 03:03:47'),(50,39,'Botble\\Ecommerce\\Models\\Product',60,'Organic Cherry Tomatoes (Digital)',NULL,'grocery/products/product-3.jpg',1,2270.00,2270.00,0.00,0.00,2270.00,'{\"sku\":\"AM-199-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-15 03:03:48','2024-03-15 03:03:48'),(51,40,'Botble\\Ecommerce\\Models\\Product',82,'Whole Wheat Pasta (Digital)',NULL,'grocery/products/product-3.jpg',3,1949.00,5847.00,0.00,0.00,5847.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-15 03:03:48','2024-03-15 03:03:48'),(52,41,'Botble\\Ecommerce\\Models\\Product',33,'Organic Apples',NULL,'grocery/products/product-8.jpg',3,871.00,2613.00,0.00,0.00,2613.00,'{\"sku\":\"UI-125-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-15 03:03:48','2024-03-15 03:03:48'),(53,42,'Botble\\Ecommerce\\Models\\Product',36,'Whole Grain Bread',NULL,'grocery/products/product-9.jpg',2,462.00,924.00,0.00,0.00,924.00,'{\"sku\":\"5B-189-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-03-15 03:03:48','2024-03-15 03:03:48'),(54,43,'Botble\\Ecommerce\\Models\\Product',76,'Black Beans',NULL,'grocery/products/product-7.jpg',2,639.00,1278.00,0.00,0.00,1278.00,'{\"sku\":\"7K-143-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-15 03:03:48','2024-03-15 03:03:48'),(55,44,'Botble\\Ecommerce\\Models\\Product',94,'Sweet Corn',NULL,'grocery/products/product-11.jpg',1,980.00,980.00,0.00,0.00,980.00,'{\"sku\":\"WS-196-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49'),(56,45,'Botble\\Ecommerce\\Models\\Product',38,'Free-Range Eggs',NULL,'grocery/products/product-8.jpg',2,1879.00,3758.00,0.00,0.00,3758.00,'{\"sku\":\"10-139-A0\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49'),(57,46,'Botble\\Ecommerce\\Models\\Product',77,'Black Beans',NULL,'grocery/products/product-2.jpg',3,639.00,1917.00,0.00,0.00,1917.00,'{\"sku\":\"7K-143-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49'),(58,47,'Botble\\Ecommerce\\Models\\Product',47,'Almond Milk',NULL,'grocery/products/product-6.jpg',1,314.00,314.00,0.00,0.00,314.00,'{\"sku\":\"FP-199-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49'),(59,48,'Botble\\Ecommerce\\Models\\Product',54,'Greek Yogurt',NULL,'grocery/products/product-7.jpg',3,426.00,1278.00,0.00,0.00,1278.00,'{\"sku\":\"AP-125-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49'),(60,48,'Botble\\Ecommerce\\Models\\Product',58,'Sweet Potatoes',NULL,'grocery/products/product-10.jpg',3,703.00,2109.00,0.00,0.00,2109.00,'{\"sku\":\"LN-105-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-15 03:03:49','2024-03-15 03:03:49');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,2253.00,0.00,0.00,0.00,'1','default',NULL,NULL,2253.00,NULL,1,'completed','2024-03-15 03:03:40','2024-03-06 19:03:40','2024-03-15 03:03:40'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,6303.00,0.00,0.00,0.00,'1','default',NULL,NULL,6303.00,NULL,2,'completed','2024-03-15 03:03:40','2024-03-05 03:03:40','2024-03-15 03:03:40'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,871.00,0.00,0.00,0.00,'1','default',NULL,NULL,871.00,NULL,3,'completed','2024-03-15 03:03:40','2024-03-04 01:03:40','2024-03-15 03:03:40'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1776.00,0.00,0.00,0.00,'1','default',NULL,NULL,1776.00,NULL,4,'completed','2024-03-15 03:03:40','2024-02-28 07:03:40','2024-03-15 03:03:40'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2769.00,0.00,0.00,0.00,'1','default',NULL,NULL,2769.00,NULL,5,'completed','2024-03-15 03:03:41','2024-03-08 19:03:41','2024-03-15 03:03:41'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1776.00,0.00,0.00,0.00,'1','default',NULL,NULL,1776.00,NULL,6,'completed','2024-03-15 03:03:41','2024-03-13 15:03:41','2024-03-15 03:03:41'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2253.00,0.00,0.00,0.00,'1','default',NULL,NULL,2253.00,NULL,7,'completed','2024-03-15 03:03:41','2024-03-07 15:03:41','2024-03-15 03:03:41'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,628.00,0.00,0.00,0.00,'1','default',NULL,NULL,628.00,NULL,8,'completed','2024-03-15 03:03:41','2024-02-29 23:03:41','2024-03-15 03:03:41'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,6810.00,0.00,0.00,0.00,NULL,'',NULL,NULL,6810.00,NULL,9,'completed','2024-03-15 03:03:41','2024-03-05 05:03:41','2024-03-15 03:03:41'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,4360.00,0.00,0.00,0.00,'1','default',NULL,NULL,4360.00,NULL,10,'completed','2024-03-15 03:03:42','2024-03-03 03:03:42','2024-03-15 03:03:42'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,6650.00,0.00,0.00,0.00,'1','default',NULL,NULL,6650.00,NULL,11,'completed','2024-03-15 03:03:42','2024-03-08 11:03:42','2024-03-15 03:03:42'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,7497.00,0.00,0.00,0.00,'1','default',NULL,NULL,7497.00,NULL,12,'completed','2024-03-15 03:03:42','2024-03-02 15:03:42','2024-03-15 03:03:42'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2632.00,0.00,0.00,0.00,'1','default',NULL,NULL,2632.00,NULL,13,'completed','2024-03-15 03:03:42','2024-03-02 15:03:42','2024-03-15 03:03:42'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,9713.00,0.00,0.00,0.00,'1','default',NULL,NULL,9713.00,NULL,14,'pending',NULL,'2024-03-05 19:03:43','2024-03-15 03:03:43'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,3758.00,0.00,0.00,0.00,'1','default',NULL,NULL,3758.00,NULL,15,'completed','2024-03-15 03:03:43','2024-03-08 15:03:43','2024-03-15 03:03:43'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,888.00,0.00,0.00,0.00,'1','default',NULL,NULL,888.00,NULL,16,'completed','2024-03-15 03:03:43','2024-03-05 09:03:43','2024-03-15 03:03:43'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2613.00,0.00,0.00,0.00,'1','default',NULL,NULL,2613.00,NULL,17,'completed','2024-03-15 03:03:43','2024-03-11 03:03:43','2024-03-15 03:03:43'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,6112.00,0.00,0.00,0.00,'1','default',NULL,NULL,6112.00,NULL,18,'completed','2024-03-15 03:03:43','2024-03-05 03:03:43','2024-03-15 03:03:43'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1917.00,0.00,0.00,0.00,'1','default',NULL,NULL,1917.00,NULL,19,'completed','2024-03-15 03:03:44','2024-03-10 03:03:44','2024-03-15 03:03:44'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,3758.00,0.00,0.00,0.00,'1','default',NULL,NULL,3758.00,NULL,20,'pending',NULL,'2024-03-09 15:03:44','2024-03-15 03:03:44'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,4066.00,0.00,0.00,0.00,'1','default',NULL,NULL,4066.00,NULL,21,'completed','2024-03-15 03:03:44','2024-03-06 21:03:44','2024-03-15 03:03:44'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,3484.00,0.00,0.00,0.00,'1','default',NULL,NULL,3484.00,NULL,22,'completed','2024-03-15 03:03:44','2024-03-13 11:03:44','2024-03-15 03:03:44'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,462.00,0.00,0.00,0.00,'1','default',NULL,NULL,462.00,NULL,23,'completed','2024-03-15 03:03:44','2024-03-10 23:03:44','2024-03-15 03:03:44'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1278.00,0.00,0.00,0.00,'1','default',NULL,NULL,1278.00,NULL,24,'completed','2024-03-15 03:03:45','2024-03-08 11:03:45','2024-03-15 03:03:45'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,534.00,0.00,0.00,0.00,'1','default',NULL,NULL,534.00,NULL,25,'completed','2024-03-15 03:03:45','2024-03-08 09:03:45','2024-03-15 03:03:45'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1833.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1833.00,NULL,26,'pending',NULL,'2024-03-09 21:03:45','2024-03-15 03:03:45'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1342.00,0.00,0.00,0.00,'1','default',NULL,NULL,1342.00,NULL,27,'completed','2024-03-15 03:03:45','2024-03-14 11:03:45','2024-03-15 03:03:45'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1476.00,0.00,0.00,0.00,'1','default',NULL,NULL,1476.00,NULL,28,'completed','2024-03-15 03:03:45','2024-03-13 03:03:45','2024-03-15 03:03:45'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,5118.00,0.00,0.00,0.00,'1','default',NULL,NULL,5118.00,NULL,29,'completed','2024-03-15 03:03:46','2024-03-11 03:03:46','2024-03-15 03:03:46'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,1476.00,0.00,0.00,0.00,'1','default',NULL,NULL,1476.00,NULL,30,'pending',NULL,'2024-03-14 13:03:46','2024-03-15 03:03:46'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,639.00,0.00,0.00,0.00,'1','default',NULL,NULL,639.00,NULL,31,'completed','2024-03-15 03:03:46','2024-03-09 21:03:46','2024-03-15 03:03:46'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1386.00,0.00,0.00,0.00,'1','default',NULL,NULL,1386.00,NULL,32,'completed','2024-03-15 03:03:46','2024-03-14 15:03:46','2024-03-15 03:03:46'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,703.00,0.00,0.00,0.00,'1','default',NULL,NULL,703.00,NULL,33,'pending',NULL,'2024-03-10 03:03:46','2024-03-15 03:03:46'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,317.00,0.00,0.00,0.00,NULL,'',NULL,NULL,317.00,NULL,34,'completed','2024-03-15 03:03:47','2024-03-12 15:03:47','2024-03-15 03:03:47'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1960.00,0.00,0.00,0.00,'1','default',NULL,NULL,1960.00,NULL,35,'pending',NULL,'2024-03-10 03:03:47','2024-03-15 03:03:47'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,534.00,0.00,0.00,0.00,'1','default',NULL,NULL,534.00,NULL,36,'pending',NULL,'2024-03-11 09:03:47','2024-03-15 03:03:47'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,2940.00,0.00,0.00,0.00,'1','default',NULL,NULL,2940.00,NULL,37,'completed','2024-03-15 03:03:47','2024-03-14 07:03:47','2024-03-15 03:03:47'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,1946.00,0.00,0.00,0.00,'1','default',NULL,NULL,1946.00,NULL,38,'completed','2024-03-15 03:03:47','2024-03-13 21:03:47','2024-03-15 03:03:47'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2270.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2270.00,NULL,39,'completed','2024-03-15 03:03:48','2024-03-13 03:03:48','2024-03-15 03:03:48'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,5847.00,0.00,0.00,0.00,NULL,'',NULL,NULL,5847.00,NULL,40,'completed','2024-03-15 03:03:48','2024-03-14 11:03:48','2024-03-15 03:03:48'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,2613.00,0.00,0.00,0.00,'1','default',NULL,NULL,2613.00,NULL,41,'completed','2024-03-15 03:03:48','2024-03-14 15:03:48','2024-03-15 03:03:48'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,924.00,0.00,0.00,0.00,'1','default',NULL,NULL,924.00,NULL,42,'pending',NULL,'2024-03-13 03:03:48','2024-03-15 03:03:48'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,1278.00,0.00,0.00,0.00,'1','default',NULL,NULL,1278.00,NULL,43,'pending',NULL,'2024-03-12 15:03:48','2024-03-15 03:03:48'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Beatrice Corkery','',NULL,'franecki.matteo@example.net','+14247789245','30747 Johnston Route, Port Zechariah, New Jersey, NU',NULL,980.00,0.00,0.00,0.00,'1','default',NULL,NULL,980.00,NULL,44,'completed','2024-03-15 03:03:49','2024-03-13 09:03:49','2024-03-15 03:03:49'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,3758.00,0.00,0.00,0.00,'1','default',NULL,NULL,3758.00,NULL,45,'completed','2024-03-15 03:03:49','2024-03-13 23:03:49','2024-03-15 03:03:49'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,1917.00,0.00,0.00,0.00,'1','default',NULL,NULL,1917.00,NULL,46,'completed','2024-03-15 03:03:49','2024-03-14 11:03:49','2024-03-15 03:03:49'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,314.00,0.00,0.00,0.00,'1','default',NULL,NULL,314.00,NULL,47,'pending',NULL,'2024-03-14 07:03:49','2024-03-15 03:03:49'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Natasha Goodwin MD','',NULL,'mwatsica@example.org','+17062415149','62852 Marlon Center Suite 877, North Jacksonfurt, North Dakota, HR',NULL,3387.00,0.00,0.00,0.00,'1','default',NULL,NULL,3387.00,NULL,48,'pending',NULL,'2024-03-14 15:03:49','2024-03-15 03:03:49');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',1,'37021-3385','shipping_address'),(2,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',2,'37021-3385','shipping_address'),(3,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',3,'99696-2480','shipping_address'),(4,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',4,'99696-2480','shipping_address'),(5,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',5,'99696-2480','shipping_address'),(6,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',6,'99696-2480','shipping_address'),(7,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',7,'99696-2480','shipping_address'),(8,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',8,'99696-2480','shipping_address'),(9,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',9,'99696-2480','shipping_address'),(10,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',10,'99696-2480','shipping_address'),(11,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',11,'99696-2480','shipping_address'),(12,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',12,'99696-2480','shipping_address'),(13,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',13,'99696-2480','shipping_address'),(14,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',14,'37021-3385','shipping_address'),(15,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',15,'99696-2480','shipping_address'),(16,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',16,'99696-2480','shipping_address'),(17,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',17,'99696-2480','shipping_address'),(18,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',18,'99696-2480','shipping_address'),(19,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',19,'99696-2480','shipping_address'),(20,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',20,'99696-2480','shipping_address'),(21,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',21,'99696-2480','shipping_address'),(22,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',22,'99696-2480','shipping_address'),(23,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',23,'99696-2480','shipping_address'),(24,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',24,'99696-2480','shipping_address'),(25,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',25,'99696-2480','shipping_address'),(26,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',26,'99696-2480','shipping_address'),(27,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',27,'99696-2480','shipping_address'),(28,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',28,'99696-2480','shipping_address'),(29,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',29,'99696-2480','shipping_address'),(30,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',30,'37021-3385','shipping_address'),(31,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',31,'37021-3385','shipping_address'),(32,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',32,'99696-2480','shipping_address'),(33,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',33,'99696-2480','shipping_address'),(34,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',34,'99696-2480','shipping_address'),(35,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',35,'99696-2480','shipping_address'),(36,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',36,'37021-3385','shipping_address'),(37,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',37,'37021-3385','shipping_address'),(38,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',38,'37021-3385','shipping_address'),(39,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',39,'99696-2480','shipping_address'),(40,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',40,'99696-2480','shipping_address'),(41,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',41,'99696-2480','shipping_address'),(42,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',42,'99696-2480','shipping_address'),(43,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',43,'99696-2480','shipping_address'),(44,'Beatrice Corkery','+14247789245','franecki.matteo@example.net','NU','New Jersey','Port Zechariah','30747 Johnston Route',44,'99696-2480','shipping_address'),(45,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',45,'37021-3385','shipping_address'),(46,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',46,'37021-3385','shipping_address'),(47,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',47,'37021-3385','shipping_address'),(48,'Natasha Goodwin MD','+17062415149','mwatsica@example.org','HR','North Dakota','North Jacksonfurt','62852 Marlon Center Suite 877',48,'37021-3385','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-03-06 19:03:40','2024-03-06 19:03:40'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-03-06 19:03:40','2024-03-06 19:03:40'),(3,'confirm_payment','Payment was confirmed (amount $2,253.00) by %user_name%',0,1,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-03-05 03:03:40','2024-03-05 03:03:40'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-03-05 03:03:40','2024-03-05 03:03:40'),(7,'confirm_payment','Payment was confirmed (amount $6,303.00) by %user_name%',0,2,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-03-04 01:03:40','2024-03-04 01:03:40'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-03-04 01:03:40','2024-03-04 01:03:40'),(11,'confirm_payment','Payment was confirmed (amount $871.00) by %user_name%',0,3,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-28 07:03:40','2024-02-28 07:03:40'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-28 07:03:40','2024-02-28 07:03:40'),(15,'confirm_payment','Payment was confirmed (amount $1,776.00) by %user_name%',0,4,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-03-08 19:03:41','2024-03-08 19:03:41'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-03-08 19:03:41','2024-03-08 19:03:41'),(19,'confirm_payment','Payment was confirmed (amount $2,769.00) by %user_name%',0,5,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-03-13 15:03:41','2024-03-13 15:03:41'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-03-13 15:03:41','2024-03-13 15:03:41'),(23,'confirm_payment','Payment was confirmed (amount $1,776.00) by %user_name%',0,6,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-03-07 15:03:41','2024-03-07 15:03:41'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-03-07 15:03:41','2024-03-07 15:03:41'),(27,'confirm_payment','Payment was confirmed (amount $2,253.00) by %user_name%',0,7,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(28,'create_shipment','Created shipment for order',0,7,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-29 23:03:41','2024-02-29 23:03:41'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-29 23:03:41','2024-02-29 23:03:41'),(32,'confirm_payment','Payment was confirmed (amount $628.00) by %user_name%',0,8,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-03-05 05:03:41','2024-03-05 05:03:41'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-03-05 05:03:41','2024-03-05 05:03:41'),(36,'confirm_payment','Payment was confirmed (amount $6,810.00) by %user_name%',0,9,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41'),(37,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,9,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-03-03 03:03:42','2024-03-03 03:03:42'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-03-03 03:03:42','2024-03-03 03:03:42'),(40,'confirm_payment','Payment was confirmed (amount $4,360.00) by %user_name%',0,10,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-03-08 11:03:42','2024-03-08 11:03:42'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-03-08 11:03:42','2024-03-08 11:03:42'),(45,'confirm_payment','Payment was confirmed (amount $6,650.00) by %user_name%',0,11,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-03-02 15:03:42','2024-03-02 15:03:42'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-03-02 15:03:42','2024-03-02 15:03:42'),(49,'confirm_payment','Payment was confirmed (amount $7,497.00) by %user_name%',0,12,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-03-02 15:03:42','2024-03-02 15:03:42'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-03-02 15:03:42','2024-03-02 15:03:42'),(54,'confirm_payment','Payment was confirmed (amount $2,632.00) by %user_name%',0,13,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-03-05 19:03:43','2024-03-05 19:03:43'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-03-05 19:03:43','2024-03-05 19:03:43'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-03-08 15:03:43','2024-03-08 15:03:43'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-03-08 15:03:43','2024-03-08 15:03:43'),(61,'confirm_payment','Payment was confirmed (amount $3,758.00) by %user_name%',0,15,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-03-05 09:03:43','2024-03-05 09:03:43'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-03-05 09:03:43','2024-03-05 09:03:43'),(66,'confirm_payment','Payment was confirmed (amount $888.00) by %user_name%',0,16,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(67,'create_shipment','Created shipment for order',0,16,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-03-11 03:03:43','2024-03-11 03:03:43'),(70,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-03-11 03:03:43','2024-03-11 03:03:43'),(71,'confirm_payment','Payment was confirmed (amount $2,613.00) by %user_name%',0,17,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(72,'create_shipment','Created shipment for order',0,17,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-03-05 03:03:43','2024-03-05 03:03:43'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-03-05 03:03:43','2024-03-05 03:03:43'),(76,'confirm_payment','Payment was confirmed (amount $6,112.00) by %user_name%',0,18,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-03-10 03:03:44','2024-03-10 03:03:44'),(79,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-03-10 03:03:44','2024-03-10 03:03:44'),(80,'confirm_payment','Payment was confirmed (amount $1,917.00) by %user_name%',0,19,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(81,'create_shipment','Created shipment for order',0,19,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-03-09 15:03:44','2024-03-09 15:03:44'),(84,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-03-09 15:03:44','2024-03-09 15:03:44'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-03-06 21:03:44','2024-03-06 21:03:44'),(88,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-03-06 21:03:44','2024-03-06 21:03:44'),(89,'confirm_payment','Payment was confirmed (amount $4,066.00) by %user_name%',0,21,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(90,'create_shipment','Created shipment for order',0,21,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-03-13 11:03:44','2024-03-13 11:03:44'),(93,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-03-13 11:03:44','2024-03-13 11:03:44'),(94,'confirm_payment','Payment was confirmed (amount $3,484.00) by %user_name%',0,22,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(95,'create_shipment','Created shipment for order',0,22,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-03-10 23:03:44','2024-03-10 23:03:44'),(97,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-03-10 23:03:44','2024-03-10 23:03:44'),(98,'confirm_payment','Payment was confirmed (amount $462.00) by %user_name%',0,23,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44'),(99,'create_shipment','Created shipment for order',0,23,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-03-08 11:03:45','2024-03-08 11:03:45'),(101,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-03-08 11:03:45','2024-03-08 11:03:45'),(102,'confirm_payment','Payment was confirmed (amount $1,278.00) by %user_name%',0,24,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(103,'create_shipment','Created shipment for order',0,24,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-03-08 09:03:45','2024-03-08 09:03:45'),(105,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-03-08 09:03:45','2024-03-08 09:03:45'),(106,'confirm_payment','Payment was confirmed (amount $534.00) by %user_name%',0,25,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(107,'create_shipment','Created shipment for order',0,25,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-03-09 21:03:45','2024-03-09 21:03:45'),(109,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-03-09 21:03:45','2024-03-09 21:03:45'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-03-14 11:03:45','2024-03-14 11:03:45'),(111,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-03-14 11:03:45','2024-03-14 11:03:45'),(112,'confirm_payment','Payment was confirmed (amount $1,342.00) by %user_name%',0,27,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(113,'create_shipment','Created shipment for order',0,27,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-03-13 03:03:45','2024-03-13 03:03:45'),(115,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-03-13 03:03:45','2024-03-13 03:03:45'),(116,'confirm_payment','Payment was confirmed (amount $1,476.00) by %user_name%',0,28,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-03-11 03:03:46','2024-03-11 03:03:46'),(120,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-03-11 03:03:46','2024-03-11 03:03:46'),(121,'confirm_payment','Payment was confirmed (amount $5,118.00) by %user_name%',0,29,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(122,'create_shipment','Created shipment for order',0,29,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(123,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-03-14 13:03:46','2024-03-14 13:03:46'),(125,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-03-14 13:03:46','2024-03-14 13:03:46'),(126,'create_shipment','Created shipment for order',0,30,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(127,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-03-09 21:03:46','2024-03-09 21:03:46'),(129,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-03-09 21:03:46','2024-03-09 21:03:46'),(130,'confirm_payment','Payment was confirmed (amount $639.00) by %user_name%',0,31,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(131,'create_shipment','Created shipment for order',0,31,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-03-14 15:03:46','2024-03-14 15:03:46'),(134,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-03-14 15:03:46','2024-03-14 15:03:46'),(135,'confirm_payment','Payment was confirmed (amount $1,386.00) by %user_name%',0,32,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(136,'create_shipment','Created shipment for order',0,32,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46'),(137,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-03-10 03:03:46','2024-03-10 03:03:46'),(138,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-03-10 03:03:46','2024-03-10 03:03:46'),(139,'create_shipment','Created shipment for order',0,33,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-03-12 15:03:47','2024-03-12 15:03:47'),(141,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-03-12 15:03:47','2024-03-12 15:03:47'),(142,'confirm_payment','Payment was confirmed (amount $317.00) by %user_name%',0,34,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(143,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,34,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-03-10 03:03:47','2024-03-10 03:03:47'),(145,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-03-10 03:03:47','2024-03-10 03:03:47'),(146,'create_shipment','Created shipment for order',0,35,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(147,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-03-11 09:03:47','2024-03-11 09:03:47'),(149,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-03-11 09:03:47','2024-03-11 09:03:47'),(150,'create_shipment','Created shipment for order',0,36,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(151,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(152,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-03-14 07:03:47','2024-03-14 07:03:47'),(153,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-03-14 07:03:47','2024-03-14 07:03:47'),(154,'confirm_payment','Payment was confirmed (amount $2,940.00) by %user_name%',0,37,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(155,'create_shipment','Created shipment for order',0,37,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-03-13 21:03:47','2024-03-13 21:03:47'),(157,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-03-13 21:03:47','2024-03-13 21:03:47'),(158,'confirm_payment','Payment was confirmed (amount $1,946.00) by %user_name%',0,38,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47'),(159,'create_shipment','Created shipment for order',0,38,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(160,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(161,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-03-13 03:03:48','2024-03-13 03:03:48'),(162,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-03-13 03:03:48','2024-03-13 03:03:48'),(163,'confirm_payment','Payment was confirmed (amount $2,270.00) by %user_name%',0,39,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(164,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,39,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-03-14 11:03:48','2024-03-14 11:03:48'),(166,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-03-14 11:03:48','2024-03-14 11:03:48'),(167,'confirm_payment','Payment was confirmed (amount $5,847.00) by %user_name%',0,40,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(168,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,40,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-03-14 15:03:48','2024-03-14 15:03:48'),(170,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-03-14 15:03:48','2024-03-14 15:03:48'),(171,'confirm_payment','Payment was confirmed (amount $2,613.00) by %user_name%',0,41,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(172,'create_shipment','Created shipment for order',0,41,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(173,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(174,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-03-13 03:03:48','2024-03-13 03:03:48'),(175,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-03-13 03:03:48','2024-03-13 03:03:48'),(176,'create_shipment','Created shipment for order',0,42,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(177,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-03-12 15:03:48','2024-03-12 15:03:48'),(179,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-03-12 15:03:48','2024-03-12 15:03:48'),(180,'create_shipment','Created shipment for order',0,43,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(181,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-03-13 09:03:49','2024-03-13 09:03:49'),(182,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-03-13 09:03:49','2024-03-13 09:03:49'),(183,'confirm_payment','Payment was confirmed (amount $980.00) by %user_name%',0,44,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(184,'create_shipment','Created shipment for order',0,44,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(185,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-03-13 23:03:49','2024-03-13 23:03:49'),(186,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-03-13 23:03:49','2024-03-13 23:03:49'),(187,'confirm_payment','Payment was confirmed (amount $3,758.00) by %user_name%',0,45,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(188,'create_shipment','Created shipment for order',0,45,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(189,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-03-14 11:03:49','2024-03-14 11:03:49'),(190,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-03-14 11:03:49','2024-03-14 11:03:49'),(191,'confirm_payment','Payment was confirmed (amount $1,917.00) by %user_name%',0,46,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(192,'create_shipment','Created shipment for order',0,46,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(193,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-03-14 07:03:49','2024-03-14 07:03:49'),(194,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-03-14 07:03:49','2024-03-14 07:03:49'),(195,'create_shipment','Created shipment for order',0,47,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49'),(196,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2024-03-14 15:03:49','2024-03-14 15:03:49'),(197,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2024-03-14 15:03:49','2024-03-14 15:03:49'),(198,'create_shipment','Created shipment for order',0,48,NULL,'2024-03-15 03:03:50','2024-03-15 03:03:50'),(199,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2024-03-15 03:03:50','2024-03-15 03:03:50'),(200,'update_status','Order confirmed by %user_name%',0,7,NULL,'2024-03-15 03:03:50','2024-03-15 03:03:50'),(201,'update_status','Order confirmed by %user_name%',0,10,NULL,'2024-03-15 03:03:50','2024-03-15 03:03:50'),(202,'update_status','Order confirmed by %user_name%',0,12,NULL,'2024-03-15 03:03:51','2024-03-15 03:03:51'),(203,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-03-15 03:03:52','2024-03-15 03:03:52'),(204,'update_status','Order confirmed by %user_name%',0,16,NULL,'2024-03-15 03:03:52','2024-03-15 03:03:52'),(205,'update_status','Order confirmed by %user_name%',0,17,NULL,'2024-03-15 03:03:53','2024-03-15 03:03:53'),(206,'update_status','Order confirmed by %user_name%',0,19,NULL,'2024-03-15 03:03:53','2024-03-15 03:03:53'),(207,'update_status','Order confirmed by %user_name%',0,21,NULL,'2024-03-15 03:03:54','2024-03-15 03:03:54'),(208,'update_status','Order confirmed by %user_name%',0,28,NULL,'2024-03-15 03:03:54','2024-03-15 03:03:54'),(209,'update_status','Order confirmed by %user_name%',0,29,NULL,'2024-03-15 03:03:55','2024-03-15 03:03:55'),(210,'update_status','Order confirmed by %user_name%',0,31,NULL,'2024-03-15 03:03:55','2024-03-15 03:03:55'),(211,'update_status','Order confirmed by %user_name%',0,38,NULL,'2024-03-15 03:03:56','2024-03-15 03:03:56'),(212,'update_status','Order confirmed by %user_name%',0,41,NULL,'2024-03-15 03:03:56','2024-03-15 03:03:56');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,2253.00,0.00,'{\"sku\":\"A9-152-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,50,'Avocado','grocery/products/product-3.jpg',698.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','physical',0,NULL),(2,2,3,2101.00,0.00,'{\"sku\":\"HJ-126-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,79,'Chia Seeds','grocery/products/product-7.jpg',2505.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','physical',0,NULL),(3,3,1,871.00,0.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,34,'Organic Apples','grocery/products/product-11.jpg',675.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','physical',0,NULL),(4,4,2,888.00,0.00,'{\"sku\":\"G4-100-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,43,'Organic Spinach','grocery/products/product-4.jpg',1752.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','physical',0,NULL),(5,5,2,426.00,0.00,'{\"sku\":\"AP-125-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,56,'Greek Yogurt','grocery/products/product-4.jpg',1184.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','physical',0,NULL),(6,5,3,639.00,0.00,'{\"sku\":\"7K-143-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,74,'Black Beans','grocery/products/product-1.jpg',2316.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','physical',0,NULL),(7,6,2,888.00,0.00,'{\"sku\":\"G4-100-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,43,'Organic Spinach','grocery/products/product-4.jpg',1752.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','physical',0,NULL),(8,7,1,2253.00,0.00,'{\"sku\":\"A9-152-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,52,'Avocado','grocery/products/product-10.jpg',698.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','physical',0,NULL),(9,8,2,314.00,0.00,'{\"sku\":\"FP-199-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,47,'Almond Milk','grocery/products/product-6.jpg',1734.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','physical',0,NULL),(10,9,3,2270.00,0.00,'{\"sku\":\"AM-199-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,61,'Organic Cherry Tomatoes (Digital)','grocery/products/product-4.jpg',1821.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','digital',10,NULL),(11,10,1,462.00,0.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,37,'Whole Grain Bread','grocery/products/product-1.jpg',623.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(12,10,2,1949.00,0.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,82,'Whole Wheat Pasta (Digital)','grocery/products/product-3.jpg',1684.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','digital',7,NULL),(13,11,3,1330.00,0.00,'{\"sku\":\"D2-119-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,71,'Cucumber','grocery/products/product-5.jpg',2565.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(14,11,2,1330.00,0.00,'{\"sku\":\"D2-119-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,72,'Cucumber','grocery/products/product-10.jpg',1710.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(15,12,3,2253.00,0.00,'{\"sku\":\"A9-152-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,52,'Avocado','grocery/products/product-10.jpg',2094.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(16,12,1,738.00,0.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,66,'Organic Chicken Breast','grocery/products/product-6.jpg',730.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(17,13,2,1316.00,0.00,'{\"sku\":\"VD-144-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,84,'Mixed Nuts','grocery/products/product-3.jpg',1204.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','physical',0,NULL),(18,14,1,2101.00,0.00,'{\"sku\":\"HJ-126-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,80,'Chia Seeds','grocery/products/product-11.jpg',835.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(19,14,3,1706.00,0.00,'{\"sku\":\"AV-130-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,89,'Organic Strawberries','grocery/products/product-8.jpg',2616.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(20,14,2,1247.00,0.00,'{\"sku\":\"JR-160-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,92,'Salad Dressing','grocery/products/product-8.jpg',1404.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(21,15,2,1879.00,0.00,'{\"sku\":\"10-139-A0-A2\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,40,'Free-Range Eggs','grocery/products/product-6.jpg',1536.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(22,16,1,888.00,0.00,'{\"sku\":\"G4-100-A0-A2\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,44,'Organic Spinach','grocery/products/product-8.jpg',876.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(23,17,3,871.00,0.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,34,'Organic Apples','grocery/products/product-11.jpg',2025.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(24,18,3,738.00,0.00,'{\"sku\":\"CR-176-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,68,'Organic Chicken Breast','grocery/products/product-3.jpg',2190.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','physical',0,NULL),(25,18,2,1949.00,0.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,82,'Whole Wheat Pasta (Digital)','grocery/products/product-3.jpg',1684.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','digital',1,NULL),(26,19,3,639.00,0.00,'{\"sku\":\"7K-143-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,77,'Black Beans','grocery/products/product-2.jpg',2316.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(27,20,2,1879.00,0.00,'{\"sku\":\"10-139-A0-A1\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,39,'Free-Range Eggs','grocery/products/product-4.jpg',1536.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(28,21,2,703.00,0.00,'{\"sku\":\"LN-105-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,57,'Sweet Potatoes','grocery/products/product-4.jpg',1120.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(29,21,2,1330.00,0.00,'{\"sku\":\"D2-119-A0-A2\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,73,'Cucumber','grocery/products/product-8.jpg',1710.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(30,22,2,871.00,0.00,'{\"sku\":\"UI-125-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,31,'Organic Apples','grocery/products/product-10.jpg',1350.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(31,22,2,871.00,0.00,'{\"sku\":\"UI-125-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,34,'Organic Apples','grocery/products/product-11.jpg',1350.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(32,23,1,462.00,0.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,37,'Whole Grain Bread','grocery/products/product-1.jpg',623.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','physical',0,NULL),(33,24,2,639.00,0.00,'{\"sku\":\"7K-143-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,76,'Black Beans','grocery/products/product-7.jpg',1544.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','physical',0,NULL),(34,25,1,534.00,0.00,'{\"sku\":\"XD-126-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,85,'Green Tea Bags','grocery/products/product-10.jpg',852.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','physical',0,NULL),(35,26,1,1833.00,0.00,'{\"sku\":\"4S-155-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}',NULL,90,'Quinoa Flour (Digital)','grocery/products/product-11.jpg',546.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','digital',3,NULL),(36,27,1,703.00,0.00,'{\"sku\":\"LN-105-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,58,'Sweet Potatoes','grocery/products/product-10.jpg',560.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','physical',0,NULL),(37,27,1,639.00,0.00,'{\"sku\":\"7K-143-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,75,'Black Beans','grocery/products/product-4.jpg',772.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','physical',0,NULL),(38,28,2,738.00,0.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,66,'Organic Chicken Breast','grocery/products/product-6.jpg',1460.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','physical',0,NULL),(39,29,3,1706.00,0.00,'{\"sku\":\"AV-130-A0-A1\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,89,'Organic Strawberries','grocery/products/product-8.jpg',2616.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','physical',0,NULL),(40,30,2,738.00,0.00,'{\"sku\":\"CR-176-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,66,'Organic Chicken Breast','grocery/products/product-6.jpg',1460.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','physical',0,NULL),(41,31,1,639.00,0.00,'{\"sku\":\"7K-143-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,74,'Black Beans','grocery/products/product-1.jpg',772.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','physical',0,NULL),(42,32,3,462.00,0.00,'{\"sku\":\"5B-189-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,37,'Whole Grain Bread','grocery/products/product-1.jpg',1869.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','physical',0,NULL),(43,33,1,703.00,0.00,'{\"sku\":\"LN-105-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,57,'Sweet Potatoes','grocery/products/product-4.jpg',560.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','physical',0,NULL),(44,34,1,317.00,0.00,'{\"sku\":\"P8-141-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,69,'Extra Virgin Olive Oil (Digital)','grocery/products/product-1.jpg',754.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','digital',3,NULL),(45,35,2,980.00,0.00,'{\"sku\":\"WS-196-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}',NULL,93,'Sweet Corn','grocery/products/product-7.jpg',1724.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','physical',0,NULL),(46,36,1,534.00,0.00,'{\"sku\":\"XD-126-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,85,'Green Tea Bags','grocery/products/product-10.jpg',852.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','physical',0,NULL),(47,37,1,980.00,0.00,'{\"sku\":\"WS-196-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,94,'Sweet Corn','grocery/products/product-11.jpg',862.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','physical',0,NULL),(48,37,2,980.00,0.00,'{\"sku\":\"WS-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,95,'Sweet Corn','grocery/products/product-8.jpg',1724.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','physical',0,NULL),(49,38,2,973.00,0.00,'{\"sku\":\"I0-199-A0-A1\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}',NULL,99,'Cottage Cheese','grocery/products/product-8.jpg',1512.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','physical',0,NULL),(50,39,1,2270.00,0.00,'{\"sku\":\"AM-199-A0-A1\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,60,'Organic Cherry Tomatoes (Digital)','grocery/products/product-3.jpg',607.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','digital',6,NULL),(51,40,3,1949.00,0.00,'{\"sku\":\"QG-158-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,82,'Whole Wheat Pasta (Digital)','grocery/products/product-3.jpg',2526.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','digital',5,NULL),(52,41,3,871.00,0.00,'{\"sku\":\"UI-125-A0-A2\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,33,'Organic Apples','grocery/products/product-8.jpg',2025.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','physical',0,NULL),(53,42,2,462.00,0.00,'{\"sku\":\"5B-189-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,36,'Whole Grain Bread','grocery/products/product-9.jpg',1246.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','physical',0,NULL),(54,43,2,639.00,0.00,'{\"sku\":\"7K-143-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,76,'Black Beans','grocery/products/product-7.jpg',1544.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','physical',0,NULL),(55,44,1,980.00,0.00,'{\"sku\":\"WS-196-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,94,'Sweet Corn','grocery/products/product-11.jpg',862.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL),(56,45,2,1879.00,0.00,'{\"sku\":\"10-139-A0\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,38,'Free-Range Eggs','grocery/products/product-8.jpg',1536.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL),(57,46,3,639.00,0.00,'{\"sku\":\"7K-143-A0-A3\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,77,'Black Beans','grocery/products/product-2.jpg',2316.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL),(58,47,1,314.00,0.00,'{\"sku\":\"FP-199-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,47,'Almond Milk','grocery/products/product-6.jpg',867.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL),(59,48,3,426.00,0.00,'{\"sku\":\"AP-125-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,54,'Greek Yogurt','grocery/products/product-7.jpg',1776.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL),(60,48,3,703.00,0.00,'{\"sku\":\"LN-105-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,58,'Sweet Potatoes','grocery/products/product-10.jpg',1680.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',9,'1','default','pending',2253.00,0.00,0.00,NULL,NULL,0.00,2253.00,1,NULL,1,NULL,'4CQm3Md8LG6YJJ2uw411xeNADGo4w',1,'2024-03-06 19:03:40','2024-03-15 03:03:40',3,NULL),(2,'#10000002',9,'1','default','pending',6303.00,0.00,0.00,NULL,NULL,0.00,6303.00,1,NULL,1,NULL,'Aa4kMZzeiuJCjeFO4WNsPE5IbLz1i',2,'2024-03-05 03:03:40','2024-03-15 03:03:40',1,NULL),(3,'#10000003',10,'1','default','pending',871.00,0.00,0.00,NULL,NULL,0.00,871.00,1,NULL,1,NULL,'42lnqVcyKhv8BXtVOskDKwNu07Re6',3,'2024-03-04 01:03:40','2024-03-15 03:03:40',2,NULL),(4,'#10000004',10,'1','default','pending',1776.00,0.00,0.00,NULL,NULL,0.00,1776.00,1,NULL,1,NULL,'dzXZWx4nnMF96iZ1SdjKRd1TuF8v6',4,'2024-02-28 07:03:40','2024-03-15 03:03:40',4,NULL),(5,'#10000005',10,'1','default','pending',2769.00,0.00,0.00,NULL,NULL,0.00,2769.00,1,NULL,1,NULL,'R5mKSHVB0G6q9A40jF8foW7rXX4B2',5,'2024-03-08 19:03:41','2024-03-15 03:03:41',8,NULL),(6,'#10000006',10,'1','default','pending',1776.00,0.00,0.00,NULL,NULL,0.00,1776.00,1,NULL,1,NULL,'EnRpvs9dZKydP3dzRdFy2x7x700Yn',6,'2024-03-13 15:03:41','2024-03-15 03:03:41',4,NULL),(7,'#10000007',10,'1','default','completed',2253.00,0.00,0.00,NULL,NULL,0.00,2253.00,1,NULL,1,'2024-03-15 03:03:50','9DpqZEK6xsH2MZjRR6RDngxXhHRnh',7,'2024-03-07 15:03:41','2024-03-15 03:03:50',3,NULL),(8,'#10000008',10,'1','default','pending',628.00,0.00,0.00,NULL,NULL,0.00,628.00,1,NULL,1,NULL,'V5UgwutgVx9fMiqLdOaAhGwnl17j4',8,'2024-02-29 23:03:41','2024-03-15 03:03:41',6,NULL),(9,'#10000009',10,NULL,'','completed',6810.00,0.00,0.00,NULL,NULL,0.00,6810.00,1,NULL,1,'2024-03-15 03:03:42','6w2wLzB9ltfYa7xajS5oRDZjFz7ZH',9,'2024-03-05 05:03:41','2024-03-15 03:03:42',2,NULL),(10,'#10000010',10,'1','default','completed',4360.00,0.00,0.00,NULL,NULL,0.00,4360.00,1,NULL,1,'2024-03-15 03:03:50','M6QJhJnLAcLc4Ypjzu6ddR5HFYOze',10,'2024-03-03 03:03:42','2024-03-15 03:03:50',3,NULL),(11,'#10000011',10,'1','default','pending',6650.00,0.00,0.00,NULL,NULL,0.00,6650.00,1,NULL,1,NULL,'UqaV1f2ZYH1ts9Jze8zFWH6T1EPzz',11,'2024-03-08 11:03:42','2024-03-15 03:03:42',8,NULL),(12,'#10000012',10,'1','default','completed',7497.00,0.00,0.00,NULL,NULL,0.00,7497.00,1,NULL,1,'2024-03-15 03:03:51','y2qidRXcU1x03nVGiMWTO5Q6joar4',12,'2024-03-02 15:03:42','2024-03-15 03:03:51',3,NULL),(13,'#10000013',10,'1','default','pending',2632.00,0.00,0.00,NULL,NULL,0.00,2632.00,1,NULL,1,NULL,'xaJnf4PKq8IfF93dWkOb4T9cWgdJ8',13,'2024-03-02 15:03:42','2024-03-15 03:03:42',4,NULL),(14,'#10000014',9,'1','default','pending',9713.00,0.00,0.00,NULL,NULL,0.00,9713.00,1,NULL,1,NULL,'9qoUkl3CX6f4DSMqO1C39uf4ROnHp',14,'2024-03-05 19:03:43','2024-03-15 03:03:43',1,NULL),(15,'#10000015',10,'1','default','completed',3758.00,0.00,0.00,NULL,NULL,0.00,3758.00,1,NULL,1,'2024-03-15 03:03:52','VYhQf5mV1xYw9VjOnNiwYLX9vBS3A',15,'2024-03-08 15:03:43','2024-03-15 03:03:52',1,NULL),(16,'#10000016',10,'1','default','completed',888.00,0.00,0.00,NULL,NULL,0.00,888.00,1,NULL,1,'2024-03-15 03:03:52','z03M80vDwfRI07vJMdzQMy7mhPTVa',16,'2024-03-05 09:03:43','2024-03-15 03:03:52',4,NULL),(17,'#10000017',10,'1','default','completed',2613.00,0.00,0.00,NULL,NULL,0.00,2613.00,1,NULL,1,'2024-03-15 03:03:53','too1uUK5IlT5wu3Agn0tKBeRlQ4E1',17,'2024-03-11 03:03:43','2024-03-15 03:03:53',2,NULL),(18,'#10000018',10,'1','default','pending',6112.00,0.00,0.00,NULL,NULL,0.00,6112.00,1,NULL,1,NULL,'VmVwLTjuy1PFSP7s8dJYg3mNzsTsK',18,'2024-03-05 03:03:43','2024-03-15 03:03:43',3,NULL),(19,'#10000019',10,'1','default','completed',1917.00,0.00,0.00,NULL,NULL,0.00,1917.00,1,NULL,1,'2024-03-15 03:03:53','XI0ZomwKV4JcZdnSqswix8lNR9fCr',19,'2024-03-10 03:03:44','2024-03-15 03:03:53',8,NULL),(20,'#10000020',10,'1','default','completed',3758.00,0.00,0.00,NULL,NULL,0.00,3758.00,1,NULL,1,'2024-03-15 03:03:44','apb3qdBStvQIEVog6VYTIJWbGBQdw',20,'2024-03-09 15:03:44','2024-03-15 03:03:44',1,NULL),(21,'#10000021',10,'1','default','completed',4066.00,0.00,0.00,NULL,NULL,0.00,4066.00,1,NULL,1,'2024-03-15 03:03:54','eZEO1rnA9TgZjlUj5PXDkn8fmOLin',21,'2024-03-06 21:03:44','2024-03-15 03:03:54',8,NULL),(22,'#10000022',10,'1','default','pending',3484.00,0.00,0.00,NULL,NULL,0.00,3484.00,1,NULL,1,NULL,'9qrTkKFIxMEWibmZTqGjXGkRWKzGa',22,'2024-03-13 11:03:44','2024-03-15 03:03:44',2,NULL),(23,'#10000023',10,'1','default','pending',462.00,0.00,0.00,NULL,NULL,0.00,462.00,1,NULL,1,NULL,'nN6fHH1jUgQUNSzYTteqrUIGvn1Pk',23,'2024-03-10 23:03:44','2024-03-15 03:03:44',3,NULL),(24,'#10000024',10,'1','default','pending',1278.00,0.00,0.00,NULL,NULL,0.00,1278.00,1,NULL,1,NULL,'Ahlg7dquW22IsYqCCWKYvvIgEWYsW',24,'2024-03-08 11:03:45','2024-03-15 03:03:45',8,NULL),(25,'#10000025',10,'1','default','pending',534.00,0.00,0.00,NULL,NULL,0.00,534.00,1,NULL,1,NULL,'F2wB20TaTeqLnzwqFZX3EtCXTukXL',25,'2024-03-08 09:03:45','2024-03-15 03:03:45',1,NULL),(26,'#10000026',10,NULL,'','pending',1833.00,0.00,0.00,NULL,NULL,0.00,1833.00,1,NULL,1,NULL,'zUfit5Oiu1sgldZ53a9HnAG75tMBV',26,'2024-03-09 21:03:45','2024-03-15 03:03:45',4,NULL),(27,'#10000027',10,'1','default','pending',1342.00,0.00,0.00,NULL,NULL,0.00,1342.00,1,NULL,1,NULL,'7amAhxdjlzCIFBVHWzVY5I8bdkxUD',27,'2024-03-14 11:03:45','2024-03-15 03:03:45',8,NULL),(28,'#10000028',10,'1','default','completed',1476.00,0.00,0.00,NULL,NULL,0.00,1476.00,1,NULL,1,'2024-03-15 03:03:54','Q0tOIC9DiicncxhMfUl3oKHk3olK7',28,'2024-03-13 03:03:45','2024-03-15 03:03:54',3,NULL),(29,'#10000029',10,'1','default','completed',5118.00,0.00,0.00,NULL,NULL,0.00,5118.00,1,NULL,1,'2024-03-15 03:03:55','ljDRZ1dqJV5pHuxnA2rQMdQ9EyVen',29,'2024-03-11 03:03:46','2024-03-15 03:03:55',1,NULL),(30,'#10000030',9,'1','default','completed',1476.00,0.00,0.00,NULL,NULL,0.00,1476.00,1,NULL,1,'2024-03-15 03:03:46','xK4TgBASSCkNMAdeIaTBrP5FsnygI',30,'2024-03-14 13:03:46','2024-03-15 03:03:46',3,NULL),(31,'#10000031',9,'1','default','completed',639.00,0.00,0.00,NULL,NULL,0.00,639.00,1,NULL,1,'2024-03-15 03:03:55','8EODn1WkI2R9MWW9ouamRIxKjbF4D',31,'2024-03-09 21:03:46','2024-03-15 03:03:55',8,NULL),(32,'#10000032',10,'1','default','pending',1386.00,0.00,0.00,NULL,NULL,0.00,1386.00,1,NULL,1,NULL,'rt9JQwf3Rh9UyGt3lU63VKM4CY7Uc',32,'2024-03-14 15:03:46','2024-03-15 03:03:46',3,NULL),(33,'#10000033',10,'1','default','pending',703.00,0.00,0.00,NULL,NULL,0.00,703.00,1,NULL,1,NULL,'y4NRHDmMHf9qOuZLcXTycZbtnKA84',33,'2024-03-10 03:03:46','2024-03-15 03:03:46',8,NULL),(34,'#10000034',10,NULL,'','completed',317.00,0.00,0.00,NULL,NULL,0.00,317.00,1,NULL,1,'2024-03-15 03:03:47','O8dg3oVxHaT1OKlbP5AMRv2eFIvo1',34,'2024-03-12 15:03:47','2024-03-15 03:03:47',6,NULL),(35,'#10000035',10,'1','default','completed',1960.00,0.00,0.00,NULL,NULL,0.00,1960.00,1,NULL,1,'2024-03-15 03:03:47','csnokaKgim5zIHXlK0OKp2J38f1Zs',35,'2024-03-10 03:03:47','2024-03-15 03:03:47',7,NULL),(36,'#10000036',9,'1','default','completed',534.00,0.00,0.00,NULL,NULL,0.00,534.00,1,NULL,1,'2024-03-15 03:03:47','n9zwE6yEwD1yc3lz0MjMo6uDCih7c',36,'2024-03-11 09:03:47','2024-03-15 03:03:47',1,NULL),(37,'#10000037',9,'1','default','pending',2940.00,0.00,0.00,NULL,NULL,0.00,2940.00,1,NULL,1,NULL,'5H47mRFPwtBHG7cGrsKYgWNw5a7DP',37,'2024-03-14 07:03:47','2024-03-15 03:03:47',7,NULL),(38,'#10000038',9,'1','default','completed',1946.00,0.00,0.00,NULL,NULL,0.00,1946.00,1,NULL,1,'2024-03-15 03:03:56','edHtKQFCZtu6ypuaSJFxUB3reaNEw',38,'2024-03-13 21:03:47','2024-03-15 03:03:56',5,NULL),(39,'#10000039',10,NULL,'','completed',2270.00,0.00,0.00,NULL,NULL,0.00,2270.00,1,NULL,1,'2024-03-15 03:03:48','jGvkabRVxR9hANMw0ukziRHaKAgcY',39,'2024-03-13 03:03:48','2024-03-15 03:03:48',2,NULL),(40,'#10000040',10,NULL,'','completed',5847.00,0.00,0.00,NULL,NULL,0.00,5847.00,1,NULL,1,'2024-03-15 03:03:48','XQae9Ib3YaryrzIUUhf6kBHzdoOa8',40,'2024-03-14 11:03:48','2024-03-15 03:03:48',3,NULL),(41,'#10000041',10,'1','default','completed',2613.00,0.00,0.00,NULL,NULL,0.00,2613.00,1,NULL,1,'2024-03-15 03:03:56','VgGCM00DVPZwRmEttCEfngs2smF85',41,'2024-03-14 15:03:48','2024-03-15 03:03:56',2,NULL),(42,'#10000042',10,'1','default','completed',924.00,0.00,0.00,NULL,NULL,0.00,924.00,1,NULL,1,'2024-03-15 03:03:48','OkdZxFZFQ0P63DMunQQtsgfu6rumt',42,'2024-03-13 03:03:48','2024-03-15 03:03:48',3,NULL),(43,'#10000043',10,'1','default','pending',1278.00,0.00,0.00,NULL,NULL,0.00,1278.00,1,NULL,1,NULL,'62OOcHGyjr3EbTUNOa0qHwUDsb25l',43,'2024-03-12 15:03:48','2024-03-15 03:03:48',8,NULL),(44,'#10000044',10,'1','default','pending',980.00,0.00,0.00,NULL,NULL,0.00,980.00,1,NULL,1,NULL,'AKSx8pnMmlebEMgwnLUYsZdf3GGhz',44,'2024-03-13 09:03:49','2024-03-15 03:03:49',7,NULL),(45,'#10000045',9,'1','default','pending',3758.00,0.00,0.00,NULL,NULL,0.00,3758.00,1,NULL,1,NULL,'LIqndbS7CZGNJDD5cXgFdlHTiW39X',45,'2024-03-13 23:03:49','2024-03-15 03:03:49',1,NULL),(46,'#10000046',9,'1','default','pending',1917.00,0.00,0.00,NULL,NULL,0.00,1917.00,1,NULL,1,NULL,'Y7aNWcjsJ6TtKmY6dp8aQIRantBR2',46,'2024-03-14 11:03:49','2024-03-15 03:03:49',8,NULL),(47,'#10000047',9,'1','default','pending',314.00,0.00,0.00,NULL,NULL,0.00,314.00,1,NULL,1,NULL,'1sDgZc7col03DaDYxg8A4eEucyCQ7',47,'2024-03-14 07:03:49','2024-03-15 03:03:49',6,NULL),(48,'#10000048',9,'1','default','completed',3387.00,0.00,0.00,NULL,NULL,0.00,3387.00,1,NULL,1,'2024-03-15 03:03:50','rku1wTh8QrVu3UhFEzXCpNz09Jqw8',48,'2024-03-14 15:03:49','2024-03-15 03:03:50',8,NULL);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-03-15 03:03:22','2024-03-15 03:03:22',0),(2,'Size','size','text',1,1,1,'published',1,'2024-03-15 03:03:22','2024-03-15 03:03:22',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-03-15 03:03:22','2024-03-15 03:03:22',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-03-15 03:03:22','2024-03-15 03:03:22',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(6,2,'S','s',NULL,NULL,1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(7,2,'M','m',NULL,NULL,0,2,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(8,2,'L','l',NULL,NULL,0,3,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-03-15 03:03:22','2024-03-15 03:03:22'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-03-15 03:03:22','2024-03-15 03:03:22');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Frozen Food',0,NULL,'published',0,'grocery/product-categories/1.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(2,'Baby Food',1,NULL,'published',0,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(3,'Strawberry',1,NULL,'published',1,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(4,'Ice Cream',1,NULL,'published',2,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(5,'Meat & Seafood',0,NULL,'published',1,'grocery/product-categories/2.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(6,'Chicken',5,NULL,'published',0,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(7,'Fish',5,NULL,'published',1,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(8,'Beef',5,NULL,'published',2,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(9,'Milk & Dairy',0,NULL,'published',2,'grocery/product-categories/3.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(10,'Milk',9,NULL,'published',0,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(11,'Cheese',9,NULL,'published',1,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(12,'Yogurt',9,NULL,'published',2,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(13,'Beverages',0,NULL,'published',3,'grocery/product-categories/4.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(14,'Vegetables',0,NULL,'published',4,'grocery/product-categories/5.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(15,'Carrot',14,NULL,'published',0,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(16,'Tomato',14,NULL,'published',1,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(17,'Potato',14,NULL,'published',2,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(18,'Fruits',0,NULL,'published',5,'grocery/product-categories/6.jpg',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(19,'Banana',18,NULL,'published',0,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL),(20,'Mango',18,NULL,'published',1,NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,11),(1,16),(1,22),(1,24),(1,28),(2,7),(2,14),(2,18),(2,27),(3,10),(3,12),(3,19),(3,23),(3,26),(4,1),(4,2),(4,3),(4,12),(4,15),(4,27),(5,23),(6,6),(6,9),(6,11),(6,24),(6,27),(7,3),(7,9),(7,11),(7,15),(7,17),(7,22),(7,28),(7,30),(8,2),(8,3),(8,13),(8,16),(8,26),(8,28),(9,3),(9,6),(9,7),(9,19),(9,21),(9,25),(10,5),(10,9),(10,10),(10,13),(10,15),(10,19),(10,20),(10,21),(10,25),(11,4),(11,7),(11,12),(11,13),(11,19),(11,20),(11,29),(11,30),(12,1),(12,17),(12,24),(12,26),(13,4),(13,12),(13,17),(13,18),(13,22),(13,23),(13,26),(13,30),(14,2),(14,4),(14,8),(14,10),(14,14),(14,16),(14,18),(14,29),(15,2),(15,6),(15,13),(15,14),(15,15),(15,20),(15,22),(15,24),(15,25),(16,5),(16,6),(16,8),(16,14),(16,23),(16,27),(16,28),(17,11),(18,1),(18,5),(18,8),(18,9),(18,17),(18,18),(18,21),(18,29),(19,1),(19,4),(19,8),(19,10),(19,20),(19,29),(19,30),(20,5),(20,7),(20,16),(20,21),(20,25);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,5),(1,7),(1,15),(1,16),(1,20),(1,26),(1,27),(1,29),(1,30),(2,4),(2,14),(2,22),(2,25),(3,6),(3,9),(3,11),(3,12),(3,18),(3,19),(3,21),(3,28),(4,1),(4,3),(4,8),(4,10),(4,13),(4,17),(4,23),(4,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-03-15 03:03:33','2024-03-15 03:03:33',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-03-15 03:03:33','2024-03-15 03:03:33',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-03-15 03:03:33','2024-03-15 03:03:33',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-03-15 03:03:33','2024-03-15 03:03:33',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4,0,0.00,'fixed',1),(1,6,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,13,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(7,1,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,12,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,15,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,16,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,12,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,8,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(20,2,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,18,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(25,4,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,7,0,0.00,'fixed',1),(25,13,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,4,0,0.00,'fixed',1),(26,5,0,0.00,'fixed',1),(26,6,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,13,0,0.00,'fixed',1),(27,1,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,9,0,0.00,'fixed',1),(27,13,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(28,5,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,8,0,0.00,'fixed',1),(28,12,0,0.00,'fixed',1),(28,13,0,0.00,'fixed',1),(28,19,0,0.00,'fixed',1),(29,4,0,0.00,'fixed',1),(29,7,0,0.00,'fixed',1),(29,8,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,14,0,0.00,'fixed',1),(29,18,0,0.00,'fixed',1),(30,1,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,5,0,0.00,'fixed',1),(30,8,0,0.00,'fixed',1),(30,16,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,41,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(2,41,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(3,41,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(4,48,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(5,48,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(6,48,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(7,48,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(8,48,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(9,48,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(10,49,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(11,49,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(12,49,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(13,49,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(14,49,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(15,49,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(16,59,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(17,59,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(18,59,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(19,59,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(20,59,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(21,59,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(22,59,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(23,60,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(24,60,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(25,60,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(26,60,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(27,60,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(28,60,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(29,60,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(30,61,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(31,61,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(32,61,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(33,61,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(34,61,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(35,61,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(36,61,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:36\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-15 03:03:36','2024-03-15 03:03:36'),(37,69,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(38,69,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(39,69,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(40,70,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(41,70,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(42,70,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(43,82,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(44,82,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(45,82,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(46,83,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(47,83,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(48,83,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(49,90,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(50,90,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(51,90,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(52,90,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(53,90,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(54,90,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:37\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-15 03:03:37','2024-03-15 03:03:37'),(55,96,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38'),(56,96,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38'),(57,96,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38'),(58,96,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38'),(59,96,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38'),(60,96,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-15 10:03:38\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-15 03:03:38','2024-03-15 03:03:38');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,18),(1,21),(2,12),(2,15),(2,24),(2,30),(3,9),(3,27);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#cb4321','published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,'New','#00c9a7','published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,'Sale','#ba591d','published','2024-03-15 03:03:22','2024-03-15 03:03:22');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(1,4),(2,1),(2,3),(2,6),(3,3),(3,4),(3,5),(4,2),(4,4),(4,5),(5,2),(5,3),(5,5),(6,1),(6,4),(6,6),(7,1),(7,3),(7,6),(8,1),(8,3),(8,4),(9,4),(9,5),(9,6),(10,3),(10,4),(10,6),(11,1),(11,4),(11,6),(12,1),(12,2),(12,3),(13,2),(13,3),(13,4),(14,1),(14,5),(14,6),(15,1),(15,3),(15,4),(16,3),(16,4),(16,5),(17,3),(17,4),(17,6),(18,1),(18,4),(18,5),(19,3),(19,4),(19,5),(20,2),(20,3),(20,6),(21,1),(21,3),(21,5),(22,2),(22,4),(22,6),(23,2),(23,5),(23,6),(24,2),(24,3),(24,6),(25,4),(25,5),(25,6),(26,1),(26,3),(26,6),(27,3),(27,4),(27,5),(28,1),(28,4),(28,6),(29,2),(29,4),(29,5),(30,1),(30,3),(30,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26'),(2,'Mobile',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26'),(3,'Iphone',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26'),(4,'Printer',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26'),(5,'Office',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26'),(6,'IT',NULL,'published','2024-03-15 03:03:26','2024-03-15 03:03:26');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(17,1,9),(19,1,10),(25,1,13),(31,1,16),(59,1,30),(73,1,37),(97,1,49),(103,1,52),(107,1,54),(7,2,4),(27,2,14),(37,2,19),(43,2,22),(53,2,27),(57,2,29),(93,2,47),(105,2,53),(109,2,55),(111,2,56),(113,2,57),(115,2,58),(3,3,2),(13,3,7),(21,3,11),(29,3,15),(33,3,17),(35,3,18),(45,3,23),(47,3,24),(49,3,25),(51,3,26),(79,3,40),(83,3,42),(87,3,44),(89,3,45),(91,3,46),(117,3,59),(5,4,3),(15,4,8),(23,4,12),(55,4,28),(61,4,31),(63,4,32),(67,4,34),(69,4,35),(71,4,36),(85,4,43),(95,4,48),(99,4,50),(101,4,51),(9,5,5),(11,5,6),(39,5,20),(41,5,21),(65,5,33),(75,5,38),(77,5,39),(81,5,41),(8,6,4),(18,6,9),(22,6,11),(40,6,20),(50,6,25),(52,6,26),(62,6,31),(70,6,35),(82,6,41),(94,6,47),(100,6,50),(10,7,5),(16,7,8),(24,7,12),(28,7,14),(32,7,16),(34,7,17),(46,7,23),(48,7,24),(56,7,28),(58,7,29),(64,7,32),(68,7,34),(74,7,37),(78,7,39),(102,7,51),(106,7,53),(110,7,55),(4,8,2),(42,8,21),(60,8,30),(84,8,42),(86,8,43),(88,8,44),(92,8,46),(112,8,56),(114,8,57),(116,8,58),(118,8,59),(2,9,1),(20,9,10),(26,9,13),(36,9,18),(76,9,38),(6,10,3),(12,10,6),(14,10,7),(30,10,15),(38,10,19),(44,10,22),(54,10,27),(66,10,33),(72,10,36),(80,10,40),(90,10,45),(96,10,48),(98,10,49),(104,10,52),(108,10,54),(129,11,65),(119,12,60),(123,12,62),(133,12,67),(125,13,63),(135,13,68),(137,13,69),(131,14,66),(121,15,61),(127,15,64),(124,16,62),(120,17,60),(130,17,65),(132,17,66),(134,17,67),(136,18,68),(122,19,61),(128,19,64),(126,20,63),(138,20,69);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,31,1,1),(2,32,1,0),(3,33,1,0),(4,34,1,0),(5,35,2,1),(6,36,2,0),(7,37,2,0),(8,38,3,1),(9,39,3,0),(10,40,3,0),(11,41,4,1),(12,42,5,1),(13,43,5,0),(14,44,5,0),(15,45,6,1),(16,46,6,0),(17,47,7,1),(18,48,8,1),(19,49,8,0),(20,50,9,1),(21,51,9,0),(22,52,9,0),(23,53,9,0),(24,54,10,1),(25,55,10,0),(26,56,10,0),(27,57,11,1),(28,58,11,0),(29,59,12,1),(30,60,12,0),(31,61,12,0),(32,62,13,1),(33,63,13,0),(34,64,14,1),(35,65,14,0),(36,66,15,1),(37,67,15,0),(38,68,15,0),(39,69,16,1),(40,70,16,0),(41,71,17,1),(42,72,17,0),(43,73,17,0),(44,74,18,1),(45,75,18,0),(46,76,18,0),(47,77,18,0),(48,78,18,0),(49,79,19,1),(50,80,19,0),(51,81,19,0),(52,82,20,1),(53,83,20,0),(54,84,21,1),(55,85,22,1),(56,86,22,0),(57,87,22,0),(58,88,23,1),(59,89,23,0),(60,90,24,1),(61,91,25,1),(62,92,26,1),(63,93,27,1),(64,94,27,0),(65,95,27,0),(66,96,28,1),(67,97,29,1),(68,98,30,1),(69,99,30,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-03-15',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(3,24,0),(4,24,0),(3,25,0),(4,25,0),(3,26,0),(4,26,0),(3,27,0),(4,27,0),(3,28,0),(4,28,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Organic Apples','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\"]','UI-125-A0',0,10,0,1,0,5,0,0,871,NULL,NULL,NULL,11.00,19.00,15.00,675.00,NULL,47830,'2024-03-15 03:03:34','2024-03-15 03:03:35','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(2,'Whole Grain Bread','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\"]','5B-189-A0',0,20,0,1,0,5,0,0,462,NULL,NULL,NULL,20.00,18.00,14.00,623.00,NULL,30570,'2024-03-15 03:03:34','2024-03-15 03:03:35','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(3,'Free-Range Eggs','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-2.jpg\"]','10-139-A0',0,14,0,1,0,1,0,0,1879,NULL,NULL,NULL,14.00,17.00,12.00,768.00,NULL,53249,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(4,'Fresh Salmon Fillet (Digital)','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-1.jpg\"]','AE-114-A0',0,12,0,1,0,3,0,0,1041,832.8,NULL,NULL,17.00,20.00,13.00,868.00,NULL,193419,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(5,'Organic Spinach','Green tea bags for a soothing and antioxidant-rich beverage.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-1.jpg\"]','G4-100-A0',0,11,0,1,1,3,0,0,888,NULL,NULL,NULL,13.00,15.00,18.00,876.00,NULL,32877,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(6,'Grass-Fed Ground Beef','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\"]','ZR-140-A0',0,18,0,1,0,5,0,0,1046,NULL,NULL,NULL,17.00,13.00,20.00,662.00,NULL,79331,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(7,'Almond Milk','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\"]','FP-199-A0',0,12,0,1,1,5,0,0,314,NULL,NULL,NULL,16.00,19.00,13.00,867.00,NULL,139225,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(8,'Quinoa (Digital)','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\"]','CH-132-A0',0,10,0,1,0,4,0,0,315,280.35,NULL,NULL,15.00,20.00,19.00,644.00,NULL,149997,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(9,'Avocado','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-5.jpg\"]','A9-152-A0',0,14,0,1,1,2,0,0,2253,NULL,NULL,NULL,12.00,12.00,11.00,698.00,NULL,17335,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(10,'Greek Yogurt','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-4.jpg\"]','AP-125-A0',0,18,0,1,0,3,0,0,426,NULL,NULL,NULL,17.00,16.00,15.00,592.00,NULL,157696,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(11,'Sweet Potatoes','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\"]','LN-105-A0',0,11,0,1,1,5,0,0,703,NULL,NULL,NULL,15.00,18.00,17.00,560.00,NULL,48461,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(12,'Organic Cherry Tomatoes (Digital)','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-9.jpg\"]','AM-199-A0',0,13,0,1,1,5,0,0,2270,1929.5,NULL,NULL,14.00,19.00,11.00,607.00,NULL,18584,'2024-03-15 03:03:34','2024-03-15 03:03:36','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(13,'Honeycrisp Apples','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-5.jpg\"]','VE-164-A0',0,14,0,1,1,3,0,0,2192,NULL,NULL,NULL,11.00,12.00,10.00,658.00,NULL,196250,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(14,'Brown Rice','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]','91-158-A0',0,19,0,1,0,5,0,0,1864,NULL,NULL,NULL,12.00,10.00,20.00,517.00,NULL,120013,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(15,'Organic Chicken Breast','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\"]','CR-176-A0',0,13,0,1,0,5,0,0,738,NULL,NULL,NULL,14.00,16.00,18.00,730.00,NULL,135440,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(16,'Extra Virgin Olive Oil (Digital)','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]','P8-141-A0',0,10,0,1,0,3,0,0,317,263.11,NULL,NULL,10.00,17.00,18.00,754.00,NULL,117492,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(17,'Cucumber','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]','D2-119-A0',0,12,0,1,1,1,0,0,1330,NULL,NULL,NULL,19.00,18.00,20.00,855.00,NULL,119242,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(18,'Black Beans','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]','7K-143-A0',0,19,0,1,0,2,0,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,107020,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(19,'Chia Seeds','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\"]','HJ-126-A0',0,11,0,1,1,5,0,0,2101,NULL,NULL,NULL,16.00,13.00,20.00,835.00,NULL,71415,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(20,'Whole Wheat Pasta (Digital)','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-1.jpg\"]','QG-158-A0',0,20,0,1,1,2,0,0,1949,1539.71,NULL,NULL,15.00,13.00,10.00,842.00,NULL,171184,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(21,'Mixed Nuts','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\"]','VD-144-A0',0,15,0,1,1,5,0,0,1316,NULL,NULL,NULL,12.00,20.00,15.00,602.00,NULL,193394,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(22,'Green Tea Bags','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\"]','XD-126-A0',0,17,0,1,1,1,0,0,534,NULL,NULL,NULL,20.00,15.00,20.00,852.00,NULL,199018,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(23,'Organic Strawberries','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\"]','AV-130-A0',0,16,0,1,0,4,0,0,1706,NULL,NULL,NULL,11.00,14.00,16.00,872.00,NULL,118405,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(24,'Quinoa Flour (Digital)','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\"]','4S-155-A0',0,12,0,1,1,4,0,0,1833,1338.09,NULL,NULL,20.00,13.00,20.00,546.00,NULL,116763,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(25,'Organic Baby Kale','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\"]','PK-114-A0',0,12,0,1,0,2,0,0,872,NULL,NULL,NULL,13.00,20.00,20.00,536.00,NULL,160101,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(26,'Salad Dressing','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]','JR-160-A0',0,10,0,1,1,1,0,0,1247,NULL,NULL,NULL,20.00,14.00,11.00,702.00,NULL,47669,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(27,'Sweet Corn','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\"]','WS-196-A0',0,15,0,1,1,1,0,0,980,NULL,NULL,NULL,17.00,12.00,13.00,862.00,NULL,133578,'2024-03-15 03:03:35','2024-03-15 03:03:37','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(28,'Almond Butter (Digital)','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]','25-190-A0',0,18,0,1,0,2,0,0,1032,866.88,NULL,NULL,10.00,17.00,13.00,707.00,NULL,133614,'2024-03-15 03:03:35','2024-03-15 03:03:38','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(29,'Whole Pineapple','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-5.jpg\"]','SU-194-A0',0,11,0,1,0,4,0,0,2094,NULL,NULL,NULL,18.00,12.00,15.00,886.00,NULL,71169,'2024-03-15 03:03:35','2024-03-15 03:03:38','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(30,'Cottage Cheese','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]','I0-199-A0',0,11,0,1,1,2,0,0,973,NULL,NULL,NULL,10.00,13.00,18.00,756.00,NULL,16068,'2024-03-15 03:03:35','2024-03-15 03:03:38','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(31,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','UI-125-A0',0,10,0,1,0,5,1,0,871,NULL,NULL,NULL,11.00,19.00,15.00,675.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(32,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','UI-125-A0-A1',0,10,0,1,0,5,1,0,871,NULL,NULL,NULL,11.00,19.00,15.00,675.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(33,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','UI-125-A0-A2',0,10,0,1,0,5,1,0,871,NULL,NULL,NULL,11.00,19.00,15.00,675.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(34,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','UI-125-A0-A3',0,10,0,1,0,5,1,0,871,NULL,NULL,NULL,11.00,19.00,15.00,675.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(35,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','5B-189-A0',0,20,0,1,0,5,1,0,462,NULL,NULL,NULL,20.00,18.00,14.00,623.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(36,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','5B-189-A0-A1',0,20,0,1,0,5,1,0,462,NULL,NULL,NULL,20.00,18.00,14.00,623.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(37,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','5B-189-A0-A2',0,20,0,1,0,5,1,0,462,NULL,NULL,NULL,20.00,18.00,14.00,623.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:35','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(38,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','10-139-A0',0,14,0,1,0,1,1,0,1879,NULL,NULL,NULL,14.00,17.00,12.00,768.00,NULL,0,'2024-03-15 03:03:35','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(39,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','10-139-A0-A1',0,14,0,1,0,1,1,0,1879,NULL,NULL,NULL,14.00,17.00,12.00,768.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(40,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','10-139-A0-A2',0,14,0,1,0,1,1,0,1879,NULL,NULL,NULL,14.00,17.00,12.00,768.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(41,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','AE-114-A0',0,12,0,1,0,3,1,0,1041,832.8,NULL,NULL,17.00,20.00,13.00,868.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(42,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','G4-100-A0',0,11,0,1,0,3,1,0,888,NULL,NULL,NULL,13.00,15.00,18.00,876.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(43,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','G4-100-A0-A1',0,11,0,1,0,3,1,0,888,NULL,NULL,NULL,13.00,15.00,18.00,876.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(44,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','G4-100-A0-A2',0,11,0,1,0,3,1,0,888,NULL,NULL,NULL,13.00,15.00,18.00,876.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(45,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','ZR-140-A0',0,18,0,1,0,5,1,0,1046,NULL,NULL,NULL,17.00,13.00,20.00,662.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(46,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','ZR-140-A0-A1',0,18,0,1,0,5,1,0,1046,NULL,NULL,NULL,17.00,13.00,20.00,662.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(47,'Almond Milk',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','FP-199-A0',0,12,0,1,0,5,1,0,314,NULL,NULL,NULL,16.00,19.00,13.00,867.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(48,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','CH-132-A0',0,10,0,1,0,4,1,0,315,280.35,NULL,NULL,15.00,20.00,19.00,644.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(49,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','CH-132-A0-A1',0,10,0,1,0,4,1,0,315,245.7,NULL,NULL,15.00,20.00,19.00,644.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(50,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','A9-152-A0',0,14,0,1,0,2,1,0,2253,NULL,NULL,NULL,12.00,12.00,11.00,698.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(51,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','A9-152-A0-A1',0,14,0,1,0,2,1,0,2253,NULL,NULL,NULL,12.00,12.00,11.00,698.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(52,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','A9-152-A0-A2',0,14,0,1,0,2,1,0,2253,NULL,NULL,NULL,12.00,12.00,11.00,698.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(53,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','A9-152-A0-A3',0,14,0,1,0,2,1,0,2253,NULL,NULL,NULL,12.00,12.00,11.00,698.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(54,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','AP-125-A0',0,18,0,1,0,3,1,0,426,NULL,NULL,NULL,17.00,16.00,15.00,592.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(55,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','AP-125-A0-A1',0,18,0,1,0,3,1,0,426,NULL,NULL,NULL,17.00,16.00,15.00,592.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(56,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','AP-125-A0-A2',0,18,0,1,0,3,1,0,426,NULL,NULL,NULL,17.00,16.00,15.00,592.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(57,'Sweet Potatoes',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','LN-105-A0',0,11,0,1,0,5,1,0,703,NULL,NULL,NULL,15.00,18.00,17.00,560.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(58,'Sweet Potatoes',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','LN-105-A0-A1',0,11,0,1,0,5,1,0,703,NULL,NULL,NULL,15.00,18.00,17.00,560.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(59,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','AM-199-A0',0,13,0,1,0,5,1,0,2270,1929.5,NULL,NULL,14.00,19.00,11.00,607.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(60,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','AM-199-A0-A1',0,13,0,1,0,5,1,0,2270,1816,NULL,NULL,14.00,19.00,11.00,607.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(61,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','AM-199-A0-A2',0,13,0,1,0,5,1,0,2270,1747.9,NULL,NULL,14.00,19.00,11.00,607.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:36','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(62,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','VE-164-A0',0,14,0,1,0,3,1,0,2192,NULL,NULL,NULL,11.00,12.00,10.00,658.00,NULL,0,'2024-03-15 03:03:36','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(63,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','VE-164-A0-A1',0,14,0,1,0,3,1,0,2192,NULL,NULL,NULL,11.00,12.00,10.00,658.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(64,'Brown Rice',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','91-158-A0',0,19,0,1,0,5,1,0,1864,NULL,NULL,NULL,12.00,10.00,20.00,517.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(65,'Brown Rice',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','91-158-A0-A1',0,19,0,1,0,5,1,0,1864,NULL,NULL,NULL,12.00,10.00,20.00,517.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(66,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','CR-176-A0',0,13,0,1,0,5,1,0,738,NULL,NULL,NULL,14.00,16.00,18.00,730.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(67,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','CR-176-A0-A1',0,13,0,1,0,5,1,0,738,NULL,NULL,NULL,14.00,16.00,18.00,730.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(68,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','CR-176-A0-A2',0,13,0,1,0,5,1,0,738,NULL,NULL,NULL,14.00,16.00,18.00,730.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(69,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','P8-141-A0',0,10,0,1,0,3,1,0,317,263.11,NULL,NULL,10.00,17.00,18.00,754.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(70,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','P8-141-A0-A1',0,10,0,1,0,3,1,0,317,259.94,NULL,NULL,10.00,17.00,18.00,754.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(71,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','D2-119-A0',0,12,0,1,0,1,1,0,1330,NULL,NULL,NULL,19.00,18.00,20.00,855.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(72,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','D2-119-A0-A1',0,12,0,1,0,1,1,0,1330,NULL,NULL,NULL,19.00,18.00,20.00,855.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(73,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','D2-119-A0-A2',0,12,0,1,0,1,1,0,1330,NULL,NULL,NULL,19.00,18.00,20.00,855.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(74,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','7K-143-A0',0,19,0,1,0,2,1,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(75,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','7K-143-A0-A1',0,19,0,1,0,2,1,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(76,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','7K-143-A0-A2',0,19,0,1,0,2,1,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(77,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','7K-143-A0-A3',0,19,0,1,0,2,1,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(78,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','7K-143-A0-A4',0,19,0,1,0,2,1,0,639,NULL,NULL,NULL,19.00,14.00,12.00,772.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(79,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','HJ-126-A0',0,11,0,1,0,5,1,0,2101,NULL,NULL,NULL,16.00,13.00,20.00,835.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(80,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','HJ-126-A0-A1',0,11,0,1,0,5,1,0,2101,NULL,NULL,NULL,16.00,13.00,20.00,835.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(81,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','HJ-126-A0-A2',0,11,0,1,0,5,1,0,2101,NULL,NULL,NULL,16.00,13.00,20.00,835.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(82,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','QG-158-A0',0,20,0,1,0,2,1,0,1949,1539.71,NULL,NULL,15.00,13.00,10.00,842.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(83,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','QG-158-A0-A1',0,20,0,1,0,2,1,0,1949,1559.2,NULL,NULL,15.00,13.00,10.00,842.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(84,'Mixed Nuts',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','VD-144-A0',0,15,0,1,0,5,1,0,1316,NULL,NULL,NULL,12.00,20.00,15.00,602.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(85,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','XD-126-A0',0,17,0,1,0,1,1,0,534,NULL,NULL,NULL,20.00,15.00,20.00,852.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(86,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','XD-126-A0-A1',0,17,0,1,0,1,1,0,534,NULL,NULL,NULL,20.00,15.00,20.00,852.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(87,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','XD-126-A0-A2',0,17,0,1,0,1,1,0,534,NULL,NULL,NULL,20.00,15.00,20.00,852.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(88,'Organic Strawberries',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','AV-130-A0',0,16,0,1,0,4,1,0,1706,NULL,NULL,NULL,11.00,14.00,16.00,872.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(89,'Organic Strawberries',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','AV-130-A0-A1',0,16,0,1,0,4,1,0,1706,NULL,NULL,NULL,11.00,14.00,16.00,872.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(90,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','4S-155-A0',0,12,0,1,0,4,1,0,1833,1338.09,NULL,NULL,20.00,13.00,20.00,546.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(91,'Organic Baby Kale',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','PK-114-A0',0,12,0,1,0,2,1,0,872,NULL,NULL,NULL,13.00,20.00,20.00,536.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(92,'Salad Dressing',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','JR-160-A0',0,10,0,1,0,1,1,0,1247,NULL,NULL,NULL,20.00,14.00,11.00,702.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(93,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','WS-196-A0',0,15,0,1,0,1,1,0,980,NULL,NULL,NULL,17.00,12.00,13.00,862.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(94,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','WS-196-A0-A1',0,15,0,1,0,1,1,0,980,NULL,NULL,NULL,17.00,12.00,13.00,862.00,NULL,0,'2024-03-15 03:03:37','2024-03-15 03:03:37','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(95,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','WS-196-A0-A2',0,15,0,1,0,1,1,0,980,NULL,NULL,NULL,17.00,12.00,13.00,862.00,NULL,0,'2024-03-15 03:03:38','2024-03-15 03:03:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(96,'Almond Butter (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','25-190-A0',0,18,0,1,0,2,1,0,1032,866.88,NULL,NULL,10.00,17.00,13.00,707.00,NULL,0,'2024-03-15 03:03:38','2024-03-15 03:03:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(97,'Whole Pineapple',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','SU-194-A0',0,11,0,1,0,4,1,0,2094,NULL,NULL,NULL,18.00,12.00,15.00,886.00,NULL,0,'2024-03-15 03:03:38','2024-03-15 03:03:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(98,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','I0-199-A0',0,11,0,1,0,2,1,0,973,NULL,NULL,NULL,10.00,13.00,18.00,756.00,NULL,0,'2024-03-15 03:03:38','2024-03-15 03:03:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(99,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','I0-199-A0-A1',0,11,0,1,0,2,1,0,973,NULL,NULL,NULL,10.00,13.00,18.00,756.00,NULL,0,'2024-03-15 03:03:38','2024-03-15 03:03:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,29,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(2,10,4,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(3,9,21,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\"]'),(4,6,6,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(5,5,6,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(6,7,17,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(7,5,2,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-19.jpg\"]'),(8,6,25,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(9,5,23,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(10,6,17,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(11,4,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(12,7,29,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\"]'),(13,2,3,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(14,8,12,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(15,5,30,5.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(16,7,27,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(17,10,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(18,5,21,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(19,10,1,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\"]'),(20,6,20,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(21,1,25,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(22,1,14,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(23,8,28,1.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(24,4,21,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(25,5,12,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\"]'),(26,2,23,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\"]'),(27,10,29,1.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\"]'),(28,4,25,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(29,6,8,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(31,1,26,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(32,9,15,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(33,10,15,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(34,3,30,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(35,7,26,2.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(36,4,3,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(37,7,16,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\"]'),(38,9,28,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(39,2,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(40,9,20,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\"]'),(41,6,19,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(42,10,20,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(43,9,19,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(44,5,22,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(45,5,3,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(46,4,6,2.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(47,1,1,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\"]'),(48,7,28,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(49,3,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(50,7,13,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(51,3,14,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(53,2,16,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\"]'),(54,1,13,4.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(55,8,15,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\"]'),(56,4,24,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(57,9,8,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(58,10,11,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(59,1,2,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(60,4,18,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(61,6,18,3.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(62,3,1,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(63,2,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-18.jpg\"]'),(65,6,16,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(66,7,3,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\"]'),(67,6,3,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(68,1,16,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-20.jpg\"]'),(69,6,15,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(71,3,29,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(72,5,1,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(74,1,7,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(75,4,26,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\"]'),(76,5,4,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(77,6,29,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\"]'),(78,9,11,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(80,2,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(82,7,18,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\"]'),(86,9,13,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(87,5,20,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(88,3,6,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(89,9,14,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(90,4,17,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(91,1,6,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(92,1,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(94,1,8,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\"]'),(95,2,25,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(96,8,27,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\"]'),(97,4,14,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(98,9,30,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(99,10,24,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(101,6,5,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(103,5,24,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(104,9,5,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(105,4,2,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(106,6,27,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(107,2,14,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\"]'),(109,5,18,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(111,3,11,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(112,3,17,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(115,4,15,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(117,8,4,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(118,2,11,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(119,2,28,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\"]'),(120,1,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(122,7,21,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(123,5,16,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\"]'),(126,6,7,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(127,8,19,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\"]'),(128,3,13,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(130,2,8,1.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(131,3,22,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(134,1,18,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(135,8,1,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(136,5,5,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(137,6,23,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(139,1,17,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(141,9,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(143,10,16,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(144,1,4,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\"]'),(145,5,11,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(147,5,19,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(148,5,7,5.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\"]'),(149,2,1,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(150,3,26,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(152,4,4,4.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]'),(153,7,4,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(156,9,25,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(158,7,20,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(159,10,6,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(160,8,6,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(161,9,29,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(162,8,11,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(163,3,19,2.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(166,4,28,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(169,6,13,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(171,7,15,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(172,10,25,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]'),(173,3,28,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(174,7,6,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(177,2,10,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\"]'),(178,5,14,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(179,6,26,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(180,5,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\"]'),(186,6,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(187,2,20,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\"]'),(191,6,1,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(196,8,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(200,9,4,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(201,4,5,5.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(202,10,30,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(203,3,12,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(204,3,25,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(205,2,15,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(208,10,8,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]'),(209,1,19,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(210,7,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(212,1,30,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\"]'),(214,1,28,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\"]'),(215,2,22,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]'),(216,2,27,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(217,7,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\"]'),(219,9,16,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-16.jpg\"]'),(222,10,17,1.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(224,6,2,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(227,2,26,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\"]'),(230,2,12,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(234,4,16,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-13.jpg\"]'),(236,8,30,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(238,10,2,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(239,10,26,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(241,9,27,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(242,8,16,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\"]'),(243,8,8,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(249,9,17,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(250,7,30,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(251,4,30,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(253,1,20,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(254,9,12,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(259,10,10,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\"]'),(263,4,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(266,8,29,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\"]'),(267,9,18,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(276,6,4,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(285,9,2,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(286,3,24,5.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(288,1,29,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(290,8,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-19.jpg\"]'),(291,8,21,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(292,6,24,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(294,4,20,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(297,4,29,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(301,6,14,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(302,4,9,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(303,7,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(304,1,27,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(307,5,25,5.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(309,8,20,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\"]'),(313,2,6,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(317,2,4,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(322,10,12,3.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(326,3,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(331,7,22,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(332,6,30,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(334,3,7,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\"]'),(336,1,24,3.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(342,2,9,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(343,5,27,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(344,4,23,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(359,7,11,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(360,5,13,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\"]'),(364,8,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(365,8,3,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(366,1,15,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(370,7,2,3.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(371,10,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(372,6,11,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(374,10,18,1.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-20.jpg\"]'),(376,9,6,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(382,6,9,2.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(391,2,18,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(392,5,9,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\"]'),(393,5,28,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\"]'),(395,4,7,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(399,9,7,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(402,3,23,3.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(405,9,1,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(417,8,17,1.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\"]'),(419,9,22,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\"]'),(420,1,9,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\"]'),(429,2,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(438,7,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(439,6,22,3.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\"]'),(450,1,12,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(451,8,23,4.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]'),(460,8,13,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(467,10,7,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\"]'),(477,6,12,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(480,7,19,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(486,5,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\"]'),(497,10,28,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\"]'),(502,8,2,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(503,3,21,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(504,2,24,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(507,1,10,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(508,8,18,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\"]'),(511,3,3,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\"]'),(521,2,2,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(525,3,4,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\"]'),(538,10,27,1.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\"]'),(539,1,22,4.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\"]'),(544,6,21,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-19.jpg\"]'),(549,3,15,5.00,'Best ecommerce CMS online store!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(553,10,14,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(555,9,24,5.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(558,3,20,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\"]'),(577,5,17,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(578,2,7,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(586,6,28,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(590,2,29,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(595,5,8,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(610,9,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(611,3,8,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(617,8,5,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\"]'),(627,8,26,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(633,2,30,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(648,4,19,4.00,'Clean & perfect source code','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(670,4,27,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(675,9,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(692,3,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(693,3,27,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(695,10,22,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(708,7,24,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(709,3,18,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(713,4,11,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-11.jpg\"]'),(728,9,26,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(739,10,5,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(754,8,7,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(786,7,12,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(839,3,10,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(859,7,8,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\"]'),(890,10,21,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(897,1,3,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(904,9,3,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(955,4,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(963,10,19,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(984,10,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-15 03:04:10','2024-03-15 03:04:10','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-03-06 19:03:40','2024-03-06 19:03:40','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-03-13 11:03:40','2024-03-15 03:03:40','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-03-05 03:03:40','2024-03-05 03:03:40','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-03-13 11:03:40','2024-03-15 03:03:40','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-03-04 01:03:40','2024-03-04 01:03:40','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-03-13 13:03:40','2024-03-15 03:03:40','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-02-28 07:03:40','2024-02-28 07:03:40','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-03-13 13:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2024-03-08 19:03:41','2024-03-08 19:03:41','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2024-03-13 13:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2024-03-13 15:03:41','2024-03-13 15:03:41','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2024-03-13 15:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2024-03-07 15:03:41','2024-03-07 15:03:41','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2024-03-13 15:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2024-02-29 23:03:41','2024-02-29 23:03:41','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2024-03-13 17:03:41','2024-03-15 03:03:41','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,9,10,'2024-03-03 03:03:42','2024-03-03 03:03:42','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,10,'2024-03-13 19:03:42','2024-03-15 03:03:42','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,10,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,10,11,'2024-03-08 11:03:42','2024-03-08 11:03:42','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,11,'2024-03-13 19:03:42','2024-03-15 03:03:42','Botble\\ACL\\Models\\User'),(23,'create_from_order','Shipping was created from order %order_id%',0,11,12,'2024-03-02 15:03:42','2024-03-02 15:03:42','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,12,'2024-03-13 21:03:42','2024-03-15 03:03:42','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,12,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,13,'2024-03-02 15:03:42','2024-03-02 15:03:42','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,13,'2024-03-13 21:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,13,14,'2024-03-05 19:03:43','2024-03-05 19:03:43','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,14,'2024-03-13 23:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,14,15,'2024-03-08 15:03:43','2024-03-08 15:03:43','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,15,'2024-03-14 01:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,15,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,15,16,'2024-03-05 09:03:43','2024-03-05 09:03:43','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,16,'2024-03-14 01:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,16,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,16,17,'2024-03-11 03:03:43','2024-03-11 03:03:43','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,17,'2024-03-14 03:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,17,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,17,18,'2024-03-05 03:03:43','2024-03-05 03:03:43','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,18,'2024-03-14 03:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,18,19,'2024-03-10 03:03:44','2024-03-10 03:03:44','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,19,'2024-03-14 03:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,19,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(44,'create_from_order','Shipping was created from order %order_id%',0,19,20,'2024-03-09 15:03:44','2024-03-09 15:03:44','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,20,'2024-03-14 05:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,20,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,21,'2024-03-06 21:03:44','2024-03-06 21:03:44','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,21,'2024-03-14 05:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,21,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(50,'create_from_order','Shipping was created from order %order_id%',0,21,22,'2024-03-13 11:03:44','2024-03-13 11:03:44','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,22,'2024-03-14 07:03:44','2024-03-15 03:03:44','Botble\\ACL\\Models\\User'),(52,'create_from_order','Shipping was created from order %order_id%',0,22,23,'2024-03-10 23:03:44','2024-03-10 23:03:44','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,23,'2024-03-14 07:03:45','2024-03-15 03:03:45','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,23,24,'2024-03-08 11:03:45','2024-03-08 11:03:45','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,24,'2024-03-14 07:03:45','2024-03-15 03:03:45','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,24,25,'2024-03-08 09:03:45','2024-03-08 09:03:45','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,25,'2024-03-14 09:03:45','2024-03-15 03:03:45','Botble\\ACL\\Models\\User'),(58,'create_from_order','Shipping was created from order %order_id%',0,25,27,'2024-03-14 11:03:45','2024-03-14 11:03:45','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,27,'2024-03-14 11:03:45','2024-03-15 03:03:45','Botble\\ACL\\Models\\User'),(60,'create_from_order','Shipping was created from order %order_id%',0,26,28,'2024-03-13 03:03:45','2024-03-13 03:03:45','Botble\\ACL\\Models\\User'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,28,'2024-03-14 11:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,28,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(63,'create_from_order','Shipping was created from order %order_id%',0,27,29,'2024-03-11 03:03:46','2024-03-11 03:03:46','Botble\\ACL\\Models\\User'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,29,'2024-03-14 11:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,29,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,28,30,'2024-03-14 13:03:46','2024-03-14 13:03:46','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,30,'2024-03-14 13:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(68,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,28,30,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,30,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,31,'2024-03-09 21:03:46','2024-03-09 21:03:46','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,31,'2024-03-14 13:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,31,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,30,32,'2024-03-14 15:03:46','2024-03-14 15:03:46','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,32,'2024-03-14 15:03:46','2024-03-15 03:03:46','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,31,33,'2024-03-10 03:03:46','2024-03-10 03:03:46','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,33,'2024-03-14 15:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(77,'create_from_order','Shipping was created from order %order_id%',0,32,35,'2024-03-10 03:03:47','2024-03-10 03:03:47','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,35,'2024-03-14 15:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,35,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(80,'create_from_order','Shipping was created from order %order_id%',0,33,36,'2024-03-11 09:03:47','2024-03-11 09:03:47','Botble\\ACL\\Models\\User'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,36,'2024-03-14 17:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,36,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(83,'create_from_order','Shipping was created from order %order_id%',0,34,37,'2024-03-14 07:03:47','2024-03-14 07:03:47','Botble\\ACL\\Models\\User'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,37,'2024-03-14 17:03:47','2024-03-15 03:03:47','Botble\\ACL\\Models\\User'),(85,'create_from_order','Shipping was created from order %order_id%',0,35,38,'2024-03-13 21:03:47','2024-03-13 21:03:47','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,38,'2024-03-14 17:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,38,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(88,'create_from_order','Shipping was created from order %order_id%',0,36,41,'2024-03-14 15:03:48','2024-03-14 15:03:48','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,41,'2024-03-14 21:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,41,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(91,'create_from_order','Shipping was created from order %order_id%',0,37,42,'2024-03-13 03:03:48','2024-03-13 03:03:48','Botble\\ACL\\Models\\User'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,42,'2024-03-14 21:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(93,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,42,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,42,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,38,43,'2024-03-12 15:03:48','2024-03-12 15:03:48','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,43,'2024-03-14 21:03:49','2024-03-15 03:03:49','Botble\\ACL\\Models\\User'),(97,'create_from_order','Shipping was created from order %order_id%',0,39,44,'2024-03-13 09:03:49','2024-03-13 09:03:49','Botble\\ACL\\Models\\User'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,44,'2024-03-14 21:03:49','2024-03-15 03:03:49','Botble\\ACL\\Models\\User'),(99,'create_from_order','Shipping was created from order %order_id%',0,40,45,'2024-03-13 23:03:49','2024-03-13 23:03:49','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,45,'2024-03-14 23:03:49','2024-03-15 03:03:49','Botble\\ACL\\Models\\User'),(101,'create_from_order','Shipping was created from order %order_id%',0,41,46,'2024-03-14 11:03:49','2024-03-14 11:03:49','Botble\\ACL\\Models\\User'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,46,'2024-03-14 23:03:49','2024-03-15 03:03:49','Botble\\ACL\\Models\\User'),(103,'create_from_order','Shipping was created from order %order_id%',0,42,47,'2024-03-14 07:03:49','2024-03-14 07:03:49','Botble\\ACL\\Models\\User'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,47,'2024-03-15 01:03:49','2024-03-15 03:03:49','Botble\\ACL\\Models\\User'),(105,'create_from_order','Shipping was created from order %order_id%',0,43,48,'2024-03-14 15:03:49','2024-03-14 15:03:49','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,48,'2024-03-15 01:03:50','2024-03-15 03:03:50','Botble\\ACL\\Models\\User'),(107,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,43,48,'2024-03-15 03:03:50','2024-03-15 03:03:50','Botble\\ACL\\Models\\User'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,48,'2024-03-15 03:03:50','2024-03-15 03:03:50','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,698.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','JJD0099026396','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 10:03:40',NULL,NULL,NULL),(2,2,NULL,2505.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','JJD004235241','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 10:03:40',NULL,NULL,NULL),(3,3,NULL,675.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:40','2024-03-15 03:03:40','JJD007955110','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:40',NULL,NULL,NULL),(4,4,NULL,1752.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','JJD0063637492','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:41',NULL,NULL,NULL),(5,5,NULL,3500.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','JJD002171230','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:41',NULL,NULL,NULL),(6,6,NULL,1752.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','JJD0071995040','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:41',NULL,NULL,NULL),(7,7,NULL,698.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','JJD0018824335','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:41','2024-03-15 10:03:41',NULL,NULL),(8,8,NULL,1734.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:41','2024-03-15 03:03:41','JJD0025646156','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:41',NULL,NULL,NULL),(9,10,NULL,2307.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','JJD0081446369','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-25 10:03:42','2024-03-15 10:03:42',NULL,NULL),(10,11,NULL,4275.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','JJD0089082571','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 10:03:42',NULL,NULL,NULL),(11,12,NULL,2824.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:42','2024-03-15 03:03:42','JJD0075132825','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:42','2024-03-15 10:03:42',NULL,NULL),(12,13,NULL,1204.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','JJD0082907026','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:43',NULL,NULL,NULL),(13,14,NULL,4855.00,NULL,NULL,'','approved',9713.00,'pending','pending',0.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','JJD003250342','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:43',NULL,NULL,NULL),(14,15,NULL,1536.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','JJD0018974549','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:43','2024-03-15 10:03:43',NULL,NULL),(15,16,NULL,876.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','JJD0091888139','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:43','2024-03-15 10:03:43',NULL,NULL),(16,17,NULL,2025.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:43','2024-03-15 03:03:43','JJD0083704749','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 10:03:43','2024-03-15 10:03:43',NULL,NULL),(17,18,NULL,3874.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','JJD0072900613','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:44',NULL,NULL,NULL),(18,19,NULL,2316.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','JJD0081513400','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-25 10:03:44','2024-03-15 10:03:44',NULL,NULL),(19,20,NULL,1536.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','JJD0073861984','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 10:03:44','2024-03-15 10:03:44',NULL,NULL),(20,21,NULL,2830.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','JJD008081547','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-23 10:03:44','2024-03-15 10:03:44',NULL,NULL),(21,22,NULL,2700.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:44','2024-03-15 03:03:44','JJD0015972153','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 10:03:44',NULL,NULL,NULL),(22,23,NULL,623.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','JJD0096434574','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-18 10:03:45',NULL,NULL,NULL),(23,24,NULL,1544.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','JJD0051799781','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-25 10:03:45',NULL,NULL,NULL),(24,25,NULL,852.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','JJD0041241462','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 10:03:45',NULL,NULL,NULL),(25,27,NULL,1332.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:45','2024-03-15 03:03:45','JJD0026602096','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 10:03:45',NULL,NULL,NULL),(26,28,NULL,1460.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','JJD0070787289','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 10:03:46','2024-03-15 10:03:46',NULL,NULL),(27,29,NULL,2616.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','JJD0080520553','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-18 10:03:46','2024-03-15 10:03:46',NULL,NULL),(28,30,NULL,1460.00,NULL,NULL,'','delivered',1476.00,'completed','pending',0.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','JJD002435109','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:46','2024-03-15 10:03:46',NULL,NULL),(29,31,NULL,772.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','JJD0015691418','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-25 10:03:46','2024-03-15 10:03:46',NULL,NULL),(30,32,NULL,1869.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:46','2024-03-15 03:03:46','JJD001209792','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 10:03:46',NULL,NULL,NULL),(31,33,NULL,560.00,NULL,NULL,'','approved',703.00,'pending','pending',0.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','JJD0077469323','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 10:03:47',NULL,NULL,NULL),(32,35,NULL,1724.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','JJD0087503666','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 10:03:47','2024-03-15 10:03:47',NULL,NULL),(33,36,NULL,852.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','JJD0062910962','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-18 10:03:47','2024-03-15 10:03:47',NULL,NULL),(34,37,NULL,2586.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:47','2024-03-15 03:03:47','JJD0094271327','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-18 10:03:47',NULL,NULL,NULL),(35,38,NULL,1512.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','JJD0070767767','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 10:03:48','2024-03-15 10:03:48',NULL,NULL),(36,41,NULL,2025.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','JJD0027631736','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-22 10:03:48','2024-03-15 10:03:48',NULL,NULL),(37,42,NULL,1246.00,NULL,NULL,'','delivered',924.00,'completed','pending',0.00,0,'2024-03-15 03:03:48','2024-03-15 03:03:48','JJD0010170577','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 10:03:48','2024-03-15 10:03:48',NULL,NULL),(38,43,NULL,1544.00,NULL,NULL,'','approved',1278.00,'pending','pending',0.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','JJD0078964427','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 10:03:49',NULL,NULL,NULL),(39,44,NULL,862.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','JJD001275682','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:49',NULL,NULL,NULL),(40,45,NULL,1536.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','JJD0054826369','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 10:03:49',NULL,NULL,NULL),(41,46,NULL,2316.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','JJD0067417840','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-24 10:03:49',NULL,NULL,NULL),(42,47,NULL,867.00,NULL,NULL,'','approved',314.00,'pending','pending',0.00,0,'2024-03-15 03:03:49','2024-03-15 03:03:49','JJD0079029321','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-23 10:03:49',NULL,NULL,NULL),(43,48,NULL,3456.00,NULL,NULL,'','delivered',3387.00,'completed','pending',0.00,0,'2024-03-15 03:03:50','2024-03-15 03:03:50','JJD0090540470','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 10:03:50','2024-03-15 10:03:50',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-03-15 03:03:27','2024-03-15 03:03:27');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-03-15 03:03:27','2024-03-15 03:03:27');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,4),(1,13),(1,21),(1,25),(2,1),(2,3),(2,5),(2,7),(2,8),(2,11),(2,12),(2,15),(2,16),(2,17),(2,20),(2,23),(2,26),(2,27),(2,28),(2,30),(3,2),(3,6),(3,9),(3,10),(3,14),(3,18),(3,19),(3,22),(3,24),(3,29);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-03-15 03:03:25','2024-03-15 03:03:25'),(2,'None',0.000000,2,'published','2024-03-15 03:03:25','2024-03-15 03:03:25'),(3,'Import Tax',15.000000,3,'published','2024-03-15 03:03:25','2024-03-15 03:03:25');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(2,'PAYMENT',1,'published','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-03-15 03:03:22','2024-03-15 03:03:22'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-03-15 03:03:22','2024-03-15 03:03:22');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Alice, timidly; \'some of the garden, where Alice could only hear whispers now and then, \'we went to work shaking him and punching him in the middle. Alice kept her eyes filled with cupboards and.',1,0,'main/galleries/1.jpg',1,'published','2024-03-15 03:03:38','2024-03-15 03:03:38'),(2,'New Day','Presently she began very cautiously: \'But I don\'t think,\' Alice went timidly up to the law, And argued each case with my wife; And the Gryphon went on in a wondering tone. \'Why, what a Mock Turtle.',1,0,'main/galleries/2.jpg',1,'published','2024-03-15 03:03:38','2024-03-15 03:03:38'),(3,'Happy Day','DOTH THE LITTLE BUSY BEE,\" but it was addressed to the Hatter. \'You might just as if his heart would break. She pitied him deeply. \'What is it?\' \'Why,\' said the Dormouse, and repeated her question.',1,0,'main/galleries/3.jpg',1,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(4,'Nature','Alice could think of nothing else to do, and perhaps after all it might not escape again, and she swam lazily about in the house, \"Let us both go to law: I will prosecute YOU.--Come, I\'ll take no.',1,0,'main/galleries/4.jpg',1,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(5,'Morning','Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of these cakes,\' she thought, \'it\'s sure to happen,\' she said to herself, \'I don\'t know what it was: she was.',1,0,'main/galleries/5.jpg',1,'published','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Cat. \'Do you mean \\\"purpose\\\"?\' said Alice. \'Call it what you had been to the heads of the suppressed guinea-pigs, filled the air, I\'m afraid, but you might catch a bat, and that\'s very like a.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Exactly as we were. My notion was that she was a dead silence. Alice was just saying to herself, (not in a very truthful child; \'but little girls of her favourite word \'moral,\' and the soldiers had.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Knave was standing before them, in chains, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"When the pie was all about, and crept a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the first figure!\' said the Dormouse; \'--well in.\' This.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-03-15 03:03:38','2024-03-15 03:03:38'),(2,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Cat. \'Do you mean \\\"purpose\\\"?\' said Alice. \'Call it what you had been to the heads of the suppressed guinea-pigs, filled the air, I\'m afraid, but you might catch a bat, and that\'s very like a.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Exactly as we were. My notion was that she was a dead silence. Alice was just saying to herself, (not in a very truthful child; \'but little girls of her favourite word \'moral,\' and the soldiers had.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Knave was standing before them, in chains, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"When the pie was all about, and crept a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the first figure!\' said the Dormouse; \'--well in.\' This.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-03-15 03:03:39','2024-03-15 03:03:39'),(3,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Cat. \'Do you mean \\\"purpose\\\"?\' said Alice. \'Call it what you had been to the heads of the suppressed guinea-pigs, filled the air, I\'m afraid, but you might catch a bat, and that\'s very like a.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Exactly as we were. My notion was that she was a dead silence. Alice was just saying to herself, (not in a very truthful child; \'but little girls of her favourite word \'moral,\' and the soldiers had.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Knave was standing before them, in chains, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"When the pie was all about, and crept a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the first figure!\' said the Dormouse; \'--well in.\' This.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-03-15 03:03:39','2024-03-15 03:03:39'),(4,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Cat. \'Do you mean \\\"purpose\\\"?\' said Alice. \'Call it what you had been to the heads of the suppressed guinea-pigs, filled the air, I\'m afraid, but you might catch a bat, and that\'s very like a.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Exactly as we were. My notion was that she was a dead silence. Alice was just saying to herself, (not in a very truthful child; \'but little girls of her favourite word \'moral,\' and the soldiers had.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Knave was standing before them, in chains, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"When the pie was all about, and crept a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the first figure!\' said the Dormouse; \'--well in.\' This.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-03-15 03:03:39','2024-03-15 03:03:39'),(5,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Cat. \'Do you mean \\\"purpose\\\"?\' said Alice. \'Call it what you had been to the heads of the suppressed guinea-pigs, filled the air, I\'m afraid, but you might catch a bat, and that\'s very like a.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Exactly as we were. My notion was that she was a dead silence. Alice was just saying to herself, (not in a very truthful child; \'but little girls of her favourite word \'moral,\' and the soldiers had.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Knave was standing before them, in chains, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned away. \'Come.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"When the pie was all about, and crept a little startled by seeing the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the first figure!\' said the Dormouse; \'--well in.\' This.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','096b2ac76a9be3c5908fef2ebc021cdd',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','749cd6b92649e190ac578db3c9e68741',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','10c349cbd245d0acccb27c225bd3be49',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','cc42df4794fdd91d59052206bed189e9',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','8c659c058ef8d9580a289c9e9b9fede2',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(27,0,'1','1',4,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(28,0,'10','10',4,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(29,0,'2','2',4,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(30,0,'3','3',4,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(31,0,'4','4',4,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(32,0,'5','5',4,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(33,0,'6','6',4,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(34,0,'7','7',4,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(35,0,'8','8',4,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(36,0,'9','9',4,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(37,0,'blog-big-1','blog-big-1',5,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(38,0,'blog-details-sm-1','blog-details-sm-1',5,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(39,0,'post-1','post-1',5,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(40,0,'post-10','post-10',5,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(41,0,'post-11','post-11',5,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(42,0,'post-12','post-12',5,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(43,0,'post-2','post-2',5,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(44,0,'post-3','post-3',5,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(45,0,'post-4','post-4',5,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(46,0,'post-5','post-5',5,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(47,0,'post-6','post-6',5,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(48,0,'post-7','post-7',5,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(49,0,'post-8','post-8',5,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(50,0,'post-9','post-9',5,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(51,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(52,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(53,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(54,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(55,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(56,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(57,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(58,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(59,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(60,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-03-15 03:03:28','2024-03-15 03:03:28',NULL),(61,0,'1','1',6,'image/png',9133,'main/stores/1.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(62,0,'10','10',6,'image/png',4263,'main/stores/10.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(63,0,'11','11',6,'image/png',4420,'main/stores/11.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(64,0,'12','12',6,'image/png',4908,'main/stores/12.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(65,0,'13','13',6,'image/png',3441,'main/stores/13.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(66,0,'14','14',6,'image/png',4209,'main/stores/14.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(67,0,'15','15',6,'image/png',5113,'main/stores/15.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(68,0,'16','16',6,'image/png',4563,'main/stores/16.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(69,0,'17','17',6,'image/png',4896,'main/stores/17.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(70,0,'2','2',6,'image/png',9008,'main/stores/2.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(71,0,'3','3',6,'image/png',8006,'main/stores/3.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(72,0,'4','4',6,'image/png',8728,'main/stores/4.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(73,0,'5','5',6,'image/png',10689,'main/stores/5.png','[]','2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(74,0,'6','6',6,'image/png',10989,'main/stores/6.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(75,0,'7','7',6,'image/png',3730,'main/stores/7.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(76,0,'8','8',6,'image/png',4030,'main/stores/8.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(77,0,'9','9',6,'image/png',3810,'main/stores/9.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(78,0,'cover-1','cover-1',6,'image/png',4208,'main/stores/cover-1.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(79,0,'cover-2','cover-2',6,'image/png',8798,'main/stores/cover-2.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(80,0,'cover-3','cover-3',6,'image/png',3888,'main/stores/cover-3.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(81,0,'cover-4','cover-4',6,'image/png',11893,'main/stores/cover-4.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(82,0,'cover-5','cover-5',6,'image/png',8798,'main/stores/cover-5.png','[]','2024-03-15 03:03:30','2024-03-15 03:03:30',NULL),(83,0,'shape-1','shape-1',8,'image/png',1299,'grocery/sliders/shape-1.png','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(84,0,'shape-2','shape-2',8,'image/png',1379,'grocery/sliders/shape-2.png','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(85,0,'shape-3','shape-3',8,'image/png',1972,'grocery/sliders/shape-3.png','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(86,0,'shape-4','shape-4',8,'image/png',2115,'grocery/sliders/shape-4.png','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(87,0,'slider-1','slider-1',8,'image/png',10852,'grocery/sliders/slider-1.png','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(88,0,'1','1',9,'image/jpeg',4294,'grocery/product-categories/1.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(89,0,'2','2',9,'image/jpeg',4294,'grocery/product-categories/2.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(90,0,'3','3',9,'image/jpeg',4294,'grocery/product-categories/3.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(91,0,'4','4',9,'image/jpeg',4294,'grocery/product-categories/4.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(92,0,'5','5',9,'image/jpeg',4294,'grocery/product-categories/5.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(93,0,'6','6',9,'image/jpeg',4294,'grocery/product-categories/6.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(94,0,'product-1','product-1',10,'image/jpeg',9803,'grocery/products/product-1.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(95,0,'product-10','product-10',10,'image/jpeg',9803,'grocery/products/product-10.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(96,0,'product-11','product-11',10,'image/jpeg',9803,'grocery/products/product-11.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(97,0,'product-2','product-2',10,'image/jpeg',9803,'grocery/products/product-2.jpg','[]','2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(98,0,'product-3','product-3',10,'image/jpeg',9803,'grocery/products/product-3.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(99,0,'product-4','product-4',10,'image/jpeg',9803,'grocery/products/product-4.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(100,0,'product-5','product-5',10,'image/jpeg',9803,'grocery/products/product-5.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(101,0,'product-6','product-6',10,'image/jpeg',9803,'grocery/products/product-6.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(102,0,'product-7','product-7',10,'image/jpeg',9803,'grocery/products/product-7.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(103,0,'product-8','product-8',10,'image/jpeg',9803,'grocery/products/product-8.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(104,0,'product-9','product-9',10,'image/jpeg',9803,'grocery/products/product-9.jpg','[]','2024-03-15 03:03:34','2024-03-15 03:03:34',NULL),(105,0,'1','1',11,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(106,0,'2','2',11,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(107,0,'slider-1','slider-1',11,'image/png',8207,'main/banners/slider-1.png','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(108,0,'slider-2','slider-2',11,'image/png',8497,'main/banners/slider-2.png','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(109,0,'slider-3','slider-3',11,'image/png',6239,'main/banners/slider-3.png','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(110,0,'1','1',12,'image/jpeg',5896,'grocery/banners/1.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(111,0,'2','2',12,'image/png',19187,'grocery/banners/2.png','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(112,0,'3','3',12,'image/png',18807,'grocery/banners/3.png','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(113,0,'1','1',13,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(114,0,'2','2',13,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(115,0,'3','3',13,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(116,0,'4','4',13,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(117,0,'5','5',13,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(118,0,'icon-1','icon-1',14,'image/png',4469,'main/contact/icon-1.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(119,0,'icon-2','icon-2',14,'image/png',5977,'main/contact/icon-2.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(120,0,'icon-3','icon-3',14,'image/png',6082,'main/contact/icon-3.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(121,0,'deal-shape-1','deal-shape-1',15,'image/png',14480,'grocery/shapes/deal-shape-1.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(122,0,'deal-shape-2','deal-shape-2',15,'image/png',126431,'grocery/shapes/deal-shape-2.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(123,0,'deal-shape-3','deal-shape-3',15,'image/png',16670,'grocery/shapes/deal-shape-3.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(124,0,'deal-shape-4','deal-shape-4',15,'image/png',128346,'grocery/shapes/deal-shape-4.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(125,0,'deal-shape-5','deal-shape-5',15,'image/png',4820,'grocery/shapes/deal-shape-5.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(126,0,'deal-shape-6','deal-shape-6',15,'image/png',23321,'grocery/shapes/deal-shape-6.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(127,0,'deal-shape-7','deal-shape-7',15,'image/png',8935,'grocery/shapes/deal-shape-7.png','[]','2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(128,0,'line','line',16,'image/png',6152,'main/shapes/line.png','[]','2024-03-15 03:03:40','2024-03-15 03:03:40',NULL),(129,0,'quote','quote',16,'image/png',595,'main/shapes/quote.png','[]','2024-03-15 03:03:40','2024-03-15 03:03:40',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(2,0,'general',NULL,'general',1,'2024-03-15 03:03:20','2024-03-15 03:03:20',NULL),(3,0,'users',NULL,'users',1,'2024-03-15 03:03:21','2024-03-15 03:03:21',NULL),(4,0,'customers',NULL,'customers',1,'2024-03-15 03:03:22','2024-03-15 03:03:22',NULL),(5,0,'blog',NULL,'blog',1,'2024-03-15 03:03:27','2024-03-15 03:03:27',NULL),(6,0,'stores',NULL,'stores',1,'2024-03-15 03:03:29','2024-03-15 03:03:29',NULL),(7,0,'grocery',NULL,'grocery',0,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(8,0,'sliders',NULL,'sliders',7,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(9,0,'product-categories',NULL,'product-categories',7,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(10,0,'products',NULL,'products',7,'2024-03-15 03:03:33','2024-03-15 03:03:33',NULL),(11,0,'banners',NULL,'banners',1,'2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(12,0,'banners',NULL,'banners',7,'2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(13,0,'galleries',NULL,'galleries',1,'2024-03-15 03:03:38','2024-03-15 03:03:38',NULL),(14,0,'contact',NULL,'contact',1,'2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(15,0,'shapes',NULL,'shapes',7,'2024-03-15 03:03:39','2024-03-15 03:03:39',NULL),(16,0,'shapes',NULL,'shapes',1,'2024-03-15 03:03:40','2024-03-15 03:03:40',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(11,1,7,NULL,NULL,'/products/almond-milk',NULL,0,'Product Detail',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(23,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(26,1,23,NULL,NULL,'/blog/freelancer-days-2024-whats-new',NULL,0,'Blog Detail',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(27,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(29,2,0,9,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(34,3,0,7,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40'),(35,3,0,8,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40'),(36,3,0,6,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:39'),(38,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-03-15 03:03:39','2024-03-15 03:03:40');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(2,'My Account','my-account','published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(3,'Information','information','published','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background','[\"main\\/stores\\/cover-5.png\"]',1,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(2,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(3,'background','[\"main\\/stores\\/cover-1.png\"]',2,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(4,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(5,'background','[\"main\\/stores\\/cover-3.png\"]',3,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(6,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(7,'background','[\"main\\/stores\\/cover-2.png\"]',4,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(8,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(9,'background','[\"main\\/stores\\/cover-3.png\"]',5,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(10,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(11,'background','[\"main\\/stores\\/cover-5.png\"]',6,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(12,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(13,'background','[\"main\\/stores\\/cover-3.png\"]',7,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(14,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(15,'background','[\"main\\/stores\\/cover-1.png\"]',8,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(16,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2024-03-15 03:03:32','2024-03-15 03:03:32'),(17,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-15 03:03:33','2024-03-15 03:03:33'),(18,'faq_ids','[[1,3,4,5,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(19,'faq_ids','[[3,4,6,8,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(20,'faq_ids','[[2,5,6,7,8]]',3,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(21,'faq_ids','[[2,3,4,5,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(22,'faq_ids','[[1,3,4,7,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(23,'faq_ids','[[2,4,5,7,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(24,'faq_ids','[[3,4,7,8,9]]',7,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(25,'faq_ids','[[1,3,4,6,8]]',8,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(26,'faq_ids','[[3,5,7,8,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(27,'faq_ids','[[2,7,8,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(28,'faq_ids','[[4,5,7,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:34','2024-03-15 03:03:34'),(29,'faq_ids','[[1,4,7,8,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(30,'faq_ids','[[2,3,4,5,8]]',13,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(31,'faq_ids','[[1,2,6,7,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(32,'faq_ids','[[1,2,5,6,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(33,'faq_ids','[[2,4,6,7,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(34,'faq_ids','[[2,3,6,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(35,'faq_ids','[[3,4,5,6,8]]',18,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(36,'faq_ids','[[2,4,6,8,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(37,'faq_ids','[[1,2,4,7,9]]',20,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(38,'faq_ids','[[1,2,4,5,8]]',21,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(39,'faq_ids','[[1,3,4,7,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(40,'faq_ids','[[2,3,4,9,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(41,'faq_ids','[[2,6,7,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(42,'faq_ids','[[2,3,6,7,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(43,'faq_ids','[[1,3,7,8,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(44,'faq_ids','[[3,4,7,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(45,'faq_ids','[[1,2,6,7,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(46,'faq_ids','[[1,2,3,4,6]]',29,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(47,'faq_ids','[[1,4,7,9,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-03-15 03:03:35','2024-03-15 03:03:35'),(48,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(49,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(50,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(51,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(52,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(53,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-15 03:03:38','2024-03-15 03:03:38'),(54,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-03-15 03:03:39','2024-03-15 03:03:39'),(55,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,3,7,2253.00,0.00,2253.00,0.00,'USD',NULL,'2024-03-11 03:03:50','2024-03-11 03:03:50',0,'add-amount'),(2,3,10,4360.00,0.00,4360.00,2253.00,'USD',NULL,'2024-03-08 17:03:50','2024-03-08 17:03:50',0,'add-amount'),(3,3,12,7497.00,0.00,7497.00,6613.00,'USD',NULL,'2024-03-11 21:03:51','2024-03-11 21:03:51',0,'add-amount'),(4,1,15,3758.00,0.00,3758.00,0.00,'USD',NULL,'2024-03-04 11:03:52','2024-03-04 11:03:52',0,'add-amount'),(5,4,16,888.00,0.00,888.00,0.00,'USD',NULL,'2024-03-05 05:03:52','2024-03-05 05:03:52',0,'add-amount'),(6,2,17,2613.00,0.00,2613.00,0.00,'USD',NULL,'2024-03-13 15:03:53','2024-03-13 15:03:53',0,'add-amount'),(7,8,19,1917.00,0.00,1917.00,0.00,'USD',NULL,'2024-03-03 11:03:53','2024-03-03 11:03:53',0,'add-amount'),(8,8,21,4066.00,0.00,4066.00,1917.00,'USD',NULL,'2024-02-29 11:03:54','2024-02-29 11:03:54',0,'add-amount'),(9,3,28,1476.00,0.00,1476.00,14110.00,'USD',NULL,'2024-03-03 01:03:54','2024-03-03 01:03:54',0,'add-amount'),(10,1,29,5118.00,0.00,5118.00,3758.00,'USD',NULL,'2024-03-02 15:03:55','2024-03-02 15:03:55',0,'add-amount'),(11,8,31,639.00,0.00,639.00,5983.00,'USD',NULL,'2024-03-12 11:03:55','2024-03-12 11:03:55',0,'add-amount'),(12,5,38,1946.00,0.00,1946.00,0.00,'USD',NULL,'2024-02-11 15:03:56','2024-02-11 15:03:56',0,'add-amount'),(13,2,41,2613.00,0.00,2613.00,2613.00,'USD',NULL,'2024-03-11 15:03:56','2024-03-11 15:03:56',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,1,0.00,2828.00,8876.00,'USD','','{\"name\":\"Eliseo Swift\",\"number\":\"+14587459474\",\"full_name\":\"Della Prosacco\",\"description\":\"Evan Mueller\"}',NULL,0,'processing',NULL,'2024-03-15 03:03:57','2024-03-15 03:03:57',NULL),(2,1,0.00,921.00,6048.00,'USD','','{\"name\":\"Eliseo Swift\",\"number\":\"+14587459474\",\"full_name\":\"Della Prosacco\",\"description\":\"Evan Mueller\"}',NULL,0,'completed',NULL,'2024-03-15 03:03:58','2024-03-15 03:03:58',NULL),(3,1,0.00,108.00,5127.00,'USD','','{\"name\":\"Eliseo Swift\",\"number\":\"+14587459474\",\"full_name\":\"Della Prosacco\",\"description\":\"Evan Mueller\"}',NULL,0,'processing',NULL,'2024-03-15 03:03:59','2024-03-15 03:03:59',NULL),(4,2,0.00,1715.00,5226.00,'USD','','{\"name\":\"Nella Wehner\",\"number\":\"+12799522929\",\"full_name\":\"Mr. Laron Boehm\",\"description\":\"Dr. Rosella Bechtelar DDS\"}',NULL,0,'completed',NULL,'2024-03-15 03:04:00','2024-03-15 03:04:00',NULL),(5,2,0.00,826.00,3511.00,'USD','','{\"name\":\"Nella Wehner\",\"number\":\"+12799522929\",\"full_name\":\"Mr. Laron Boehm\",\"description\":\"Dr. Rosella Bechtelar DDS\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:01','2024-03-15 03:04:01',NULL),(6,2,0.00,606.00,2685.00,'USD','','{\"name\":\"Nella Wehner\",\"number\":\"+12799522929\",\"full_name\":\"Mr. Laron Boehm\",\"description\":\"Dr. Rosella Bechtelar DDS\"}',NULL,0,'completed',NULL,'2024-03-15 03:04:02','2024-03-15 03:04:02',NULL),(7,2,0.00,472.00,2079.00,'USD','','{\"name\":\"Nella Wehner\",\"number\":\"+12799522929\",\"full_name\":\"Mr. Laron Boehm\",\"description\":\"Dr. Rosella Bechtelar DDS\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:02','2024-03-15 03:04:02',NULL),(8,3,0.00,4619.00,15586.00,'USD','','{\"name\":\"Jensen Marvin\",\"number\":\"+13616917363\",\"full_name\":\"Reba Konopelski\",\"description\":\"Maeve Abernathy\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:03','2024-03-15 03:04:03',NULL),(9,3,0.00,2126.00,10967.00,'USD','','{\"name\":\"Jensen Marvin\",\"number\":\"+13616917363\",\"full_name\":\"Reba Konopelski\",\"description\":\"Maeve Abernathy\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:03','2024-03-15 03:04:03',NULL),(10,3,0.00,695.00,8841.00,'USD','','{\"name\":\"Jensen Marvin\",\"number\":\"+13616917363\",\"full_name\":\"Reba Konopelski\",\"description\":\"Maeve Abernathy\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:04','2024-03-15 03:04:04',NULL),(11,4,0.00,273.00,888.00,'USD','','{\"name\":\"Dr. Keshaun Smitham MD\",\"number\":\"+17857101711\",\"full_name\":\"Dr. Gia Muller\",\"description\":\"Ruben Lebsack\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:04','2024-03-15 03:04:04',NULL),(12,4,0.00,173.00,615.00,'USD','','{\"name\":\"Dr. Keshaun Smitham MD\",\"number\":\"+17857101711\",\"full_name\":\"Dr. Gia Muller\",\"description\":\"Ruben Lebsack\"}',NULL,0,'completed',NULL,'2024-03-15 03:04:05','2024-03-15 03:04:05',NULL),(13,4,0.00,7.00,442.00,'USD','','{\"name\":\"Dr. Keshaun Smitham MD\",\"number\":\"+17857101711\",\"full_name\":\"Dr. Gia Muller\",\"description\":\"Ruben Lebsack\"}',NULL,0,'completed',NULL,'2024-03-15 03:04:06','2024-03-15 03:04:06',NULL),(14,4,0.00,133.00,435.00,'USD','','{\"name\":\"Dr. Keshaun Smitham MD\",\"number\":\"+17857101711\",\"full_name\":\"Dr. Gia Muller\",\"description\":\"Ruben Lebsack\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:06','2024-03-15 03:04:06',NULL),(15,5,0.00,2.00,1946.00,'USD','','{\"name\":\"Grady Deckow\",\"number\":\"+15175683201\",\"full_name\":\"Johnson Gulgowski\",\"description\":\"Mr. Eldon Wolf V\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:07','2024-03-15 03:04:07',NULL),(16,5,0.00,393.00,1944.00,'USD','','{\"name\":\"Grady Deckow\",\"number\":\"+15175683201\",\"full_name\":\"Johnson Gulgowski\",\"description\":\"Mr. Eldon Wolf V\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:07','2024-03-15 03:04:07',NULL),(17,5,0.00,77.00,1551.00,'USD','','{\"name\":\"Grady Deckow\",\"number\":\"+15175683201\",\"full_name\":\"Johnson Gulgowski\",\"description\":\"Mr. Eldon Wolf V\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:08','2024-03-15 03:04:08',NULL),(18,6,0.00,1.00,0.00,'USD','','{\"name\":\"Zula Kuvalis III\",\"number\":\"+12072989415\",\"full_name\":\"Orin Osinski\",\"description\":\"Dr. Hortense McCullough\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:08','2024-03-15 03:04:08',NULL),(19,8,0.00,1962.00,6622.00,'USD','','{\"name\":\"Alexander Daniel DVM\",\"number\":\"+14408577183\",\"full_name\":\"Yolanda Luettgen\",\"description\":\"Domenica Hintz\"}',NULL,0,'processing',NULL,'2024-03-15 03:04:09','2024-03-15 03:04:09',NULL),(20,8,0.00,214.00,4660.00,'USD','','{\"name\":\"Alexander Daniel DVM\",\"number\":\"+14408577183\",\"full_name\":\"Yolanda Luettgen\",\"description\":\"Domenica Hintz\"}',NULL,0,'pending',NULL,'2024-03-15 03:04:09','2024-03-15 03:04:09',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','jaskolski.allison@example.org','+15207287566','4791 Gulgowski Radial','NG','North Carolina','Zboncakbury',1,'main/stores/1.png','Nihil rerum occaecati earum ex. Aliquid quas laborum illo iusto libero quod. Ad aut sed adipisci sequi id a. Voluptatem animi ut sed. A et dolores omnis facere. Fugit cumque eaque autem. Facilis at possimus ea nobis. Et quis saepe et. Eum impedit sint vel fugit animi explicabo quos. Aut debitis consequatur qui dolor. Consectetur praesentium officiis enim praesentium nam voluptas.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(2,'Global Office','jakubowski.stephen@example.com','+17547121190','2708 Jacky View Suite 122','SV','South Dakota','Port Rhett',2,'main/stores/2.png','Atque aliquam et consequatur quo magnam temporibus aut. Quia accusamus numquam esse voluptatem aut. Voluptas minima ea eos tempora quis. Sequi modi distinctio id porro. Placeat illum provident quis nostrum aut. Ut at error quia perferendis. Quia et rerum et reiciendis et velit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(3,'Young Shop','isac.koss@example.net','+12346733267','132 Hermiston View','CZ','Minnesota','Streichfurt',3,'main/stores/3.png','Cumque reiciendis exercitationem qui explicabo recusandae dolorum a. Nam sed quibusdam quo qui autem. Facilis ipsam autem aut est quasi. Et quisquam aut repellat recusandae porro et. Voluptatibus eveniet quasi voluptas alias quo eligendi. Consequuntur placeat voluptatem quidem beatae deserunt voluptatum dignissimos. Eos maiores rerum illum soluta debitis. Facere rem quia ut deleniti sed laborum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(4,'Global Store','schneider.torrey@example.net','+16575188567','3874 Hudson Bridge Apt. 863','AX','Hawaii','West Allenestad',4,'main/stores/4.png','Odit dolorum ut similique cum facere excepturi voluptatibus qui. Voluptatem hic doloribus earum aut rerum quam voluptatum. Molestias voluptatem accusamus eveniet ex repellendus. Ex tempora beatae et modi consequuntur. Aperiam cum harum voluptates pariatur nobis illo maxime. Est est accusamus rerum autem nam at. Est hic deserunt maiores vitae hic.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(5,'Robert’s Store','yoshiko.langosh@example.com','+12347152134','4513 Kyle Tunnel','FO','Georgia','North Wendymouth',5,'main/stores/5.png','Aut perferendis dignissimos quibusdam modi qui ducimus. Qui deserunt dolores consequatur sapiente quod similique quis. Sit delectus delectus magni eum quia. Non in porro sed veniam non. Et explicabo quam odit aperiam. At necessitatibus et quis tempora ea laboriosam rerum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(6,'Stouffer','ufarrell@example.net','+12293849432','10954 Murazik Trail Suite 449','UA','Louisiana','West Montana',6,'main/stores/6.png','Doloremque unde accusamus vero molestiae voluptate. Eaque dolor ad sequi voluptates quae voluptatem illo. Id commodi tempora quo aut voluptatum. Aut deleniti itaque incidunt aut illo nisi. Sunt totam voluptas reiciendis ullam qui qui. Molestiae ab dolorum alias excepturi. Non suscipit nesciunt maxime illum voluptatem. Autem exercitationem nemo eveniet aut repellendus vel aspernatur quaerat.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(7,'StarKist','tiara31@example.org','+13016756014','152 Spencer Green','TH','District of Columbia','Skilesshire',7,'main/stores/7.png','Expedita distinctio id rerum delectus atque. Facere voluptas excepturi voluptas facere maiores consequatur et facere. Magnam quae distinctio dolore quas veritatis. Et enim aut tempora est omnis et accusamus. Nemo suscipit cum in. Non omnis delectus officia fugit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL),(8,'Old El Paso','dhermann@example.com','+12726646247','3382 Rhoda Roads Apt. 481','NU','Wyoming','Wolfmouth',8,'main/stores/8.png','Iusto molestias odit cupiditate. Et porro repudiandae sit fuga dignissimos iusto. Nostrum harum animi cupiditate nihil et ut. Beatae non ut molestias est consequatur eum. Alias iusto illum molestiae in praesentium nulla voluptatum quos. Eum omnis autem doloremque ut. Aut esse et earum. Quam ipsa ab deserunt quia ea beatae ea. Ex voluptatem rerum sed modi aspernatur.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-15 03:03:32','2024-03-15 03:03:32',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,1,5019.00,0.00,8876.00,'$2y$12$yWoDoQwmdWOq4UY5G7h3p.BmDWq6OngV1AkPfO3uEtkMc1vxxXRpq','{\"name\":\"Eliseo Swift\",\"number\":\"+14587459474\",\"full_name\":\"Della Prosacco\",\"description\":\"Evan Mueller\"}','2024-03-15 03:03:30','2024-03-15 03:04:00','bank_transfer',NULL),(2,2,1607.00,0.00,5226.00,'$2y$12$m/XqPmqxTIa.oEIENwkJY.7J3bWGbYwmMRuKrlvk8htOj5i697kGO','{\"name\":\"Nella Wehner\",\"number\":\"+12799522929\",\"full_name\":\"Mr. Laron Boehm\",\"description\":\"Dr. Rosella Bechtelar DDS\"}','2024-03-15 03:03:31','2024-03-15 03:04:03','bank_transfer',NULL),(3,3,8146.00,0.00,15586.00,'$2y$12$W9KHrx.ppy1LRBTxnWNSveeFFKlNVRZlaGKy5tar.9vu8BhQSBWF6','{\"name\":\"Jensen Marvin\",\"number\":\"+13616917363\",\"full_name\":\"Reba Konopelski\",\"description\":\"Maeve Abernathy\"}','2024-03-15 03:03:31','2024-03-15 03:04:04','bank_transfer',NULL),(4,4,302.00,0.00,888.00,'$2y$12$tTFQ4BNTIy9KBlmKOYnSduhiFMCKLoCUKWLYez6/BIsNOqK9Onx9.','{\"name\":\"Dr. Keshaun Smitham MD\",\"number\":\"+17857101711\",\"full_name\":\"Dr. Gia Muller\",\"description\":\"Ruben Lebsack\"}','2024-03-15 03:03:31','2024-03-15 03:04:07','bank_transfer',NULL),(5,5,1474.00,0.00,1946.00,'$2y$12$tBQEuZSIqiYeb6/MRtiWTe/O2.0ZMwSRtm9HAiIDsvXH4l55FhUn2','{\"name\":\"Grady Deckow\",\"number\":\"+15175683201\",\"full_name\":\"Johnson Gulgowski\",\"description\":\"Mr. Eldon Wolf V\"}','2024-03-15 03:03:31','2024-03-15 03:04:08','bank_transfer',NULL),(6,6,-1.00,0.00,0.00,'$2y$12$w.X1Mhl1Bu6WplDcTyo4uuaMFAlbRzhKz9Kg7mYwQ8mjHvu1srGYe','{\"name\":\"Zula Kuvalis III\",\"number\":\"+12072989415\",\"full_name\":\"Orin Osinski\",\"description\":\"Dr. Hortense McCullough\"}','2024-03-15 03:03:32','2024-03-15 03:04:09','bank_transfer',NULL),(7,7,0.00,0.00,0.00,'$2y$12$IX1m1pn1IvLbq5xWt3e0Qet.2JY1VESSkfKIqKIIkMJ7O2e8N3CsG','{\"name\":\"Cicero Price\",\"number\":\"+15712976319\",\"full_name\":\"Felicity Vandervort\",\"description\":\"Ms. Stephany Turner I\"}','2024-03-15 03:03:32','2024-03-15 03:03:32','bank_transfer',NULL),(8,8,4446.00,0.00,6622.00,'$2y$12$0LgBbZlAzjHR95VbNRizyu8q1CRuET0JN1/7tyMpsfTrXWBukJlHi','{\"name\":\"Alexander Daniel DVM\",\"number\":\"+14408577183\",\"full_name\":\"Yolanda Luettgen\",\"description\":\"Domenica Hintz\"}','2024-03-15 03:03:32','2024-03-15 03:04:10','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"5\" key=\"home-slider\" shape_1=\"grocery/sliders/shape-1.png\" shape_2=\"grocery/sliders/shape-2.png\" shape_3=\"grocery/sliders/shape-3.png\" shape_4=\"grocery/sliders/shape-4.png\"][/simple-slider][ecommerce-categories category_ids=\"1,5,9,13,14,18\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\"][/ecommerce-categories][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\"][/ecommerce-product-groups][ecommerce-flash-sale style=\"2\" title=\"Grab the best Offer Of this Week!\" subtitle=\"Best Deals of the week!\" flash_sale_id=\"1\" limit=\"3\" background_color=\"#F3F3F3\" background_image=\"grocery/banners/3.png\"][/ecommerce-flash-sale]<p> </p>[ecommerce-product-groups style=\"columns\" tabs=\"trending,top-rated\" limit=\"3\" ads=\"GA3K1VZWNMPF\"][/ecommerce-product-groups][testimonials style=\"3\" title=\"Our Happy Customers\" subtitle=\"Customer Reviews\" testimonial_ids=\"1,2,3,4\"][/testimonials][ecommerce-products style=\"slider\" title=\"Bestsellers of the week\" subtitle=\" More to Discover\" by=\"category\" category_ids=\"5\" limit=\"5\" ads_ids=\"L1WDL8YGZUOR\"][/ecommerce-products][site-features style=\"4\" quantity=\"4\" title_1=\"Flexible Delivery\" icon_1=\"ti ti-truck-delivery\" title_2=\"100% Money Back\" icon_2=\"ti ti-currency-dollar\" title_3=\"Secure Payment\" icon_3=\"ti ti-credit-card\" title_4=\"24 Hour Support\" icon_4=\"ti ti-headset\"][/site-features][app-downloads title=\"Get the app & get Your Groceries from home\" google_label=\"Google Play\" google_icon=\"ti ti-brand-google-play\" google_url=\"https://play.google.com/\" apple_label=\"Apple Store\" apple_icon=\"ti ti-brand-apple-filled\" apple_url=\"https://apps.apple.com/\" screenshot=\"main/general/cta-thumb-1.jpg\" shape_image_left=\"main/general/cta-shape-1.png\" shape_image_right=\"main/general/cta-shape-2.png\"][/app-downloads]',1,NULL,'full-width',NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(2,'Product Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\"][/ads][ecommerce-categories category_ids=\"1,5,9,13,14,18\" style=\"grid\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(7,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(8,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39'),(9,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-03-15 03:03:39','2024-03-15 03:03:39');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'RNZZNGOG47','sslcommerz',NULL,2253.00,1,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'UQBI2FJHKT','paystack',NULL,6303.00,2,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'ZFDVKCKYOC','paystack',NULL,871.00,3,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'X2GYLM0P7E','stripe',NULL,1776.00,4,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:40','2024-03-15 03:03:40','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'DXF4EJPCY1','sslcommerz',NULL,2769.00,5,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'VM9NXBKGUR','paystack',NULL,1776.00,6,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'O4BCNF9BL2','paypal',NULL,2253.00,7,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'VUAJPUESVB','razorpay',NULL,628.00,8,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'7BZWEJYHNN','sslcommerz',NULL,6810.00,9,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:41','2024-03-15 03:03:41','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'LNZQYADWUO','stripe',NULL,4360.00,10,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'63AADTYX30','razorpay',NULL,6650.00,11,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'JT85AP89CE','paypal',NULL,7497.00,12,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'YYU6HJABHG','sslcommerz',NULL,2632.00,13,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:42','2024-03-15 03:03:42','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'MXUBEW7SK8','cod',NULL,9713.00,14,'pending','confirm',9,NULL,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'KMZVXSNTV4','paystack',NULL,3758.00,15,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'K7NFW0LSDA','stripe',NULL,888.00,16,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'JODMNQRFEU','paypal',NULL,2613.00,17,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'ETQHR0NGGN','paypal',NULL,6112.00,18,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:43','2024-03-15 03:03:43','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'BJSWUYJLDW','sslcommerz',NULL,1917.00,19,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'6RQPFSGJEB','bank_transfer',NULL,3758.00,20,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'YFTSVWVXEF','sslcommerz',NULL,4066.00,21,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'JHWGY57LSW','razorpay',NULL,3484.00,22,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'UYYQVPX2MP','paystack',NULL,462.00,23,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:44','2024-03-15 03:03:44','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'689DHVZDKM','sslcommerz',NULL,1278.00,24,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'0C3S9LSTCG','stripe',NULL,534.00,25,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'VLXBENVCI4','cod',NULL,1833.00,26,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'ZUGVOSPDOI','razorpay',NULL,1342.00,27,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'PGUP1BKAV4','stripe',NULL,1476.00,28,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:45','2024-03-15 03:03:45','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'NISRWZ3O0T','paystack',NULL,5118.00,29,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'1TJGO7W8HC','cod',NULL,1476.00,30,'pending','confirm',9,NULL,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'3R0BUROMPN','stripe',NULL,639.00,31,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'BBQNQFCPAC','razorpay',NULL,1386.00,32,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'CZCIIVJHF5','cod',NULL,703.00,33,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:46','2024-03-15 03:03:46','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'M2SULSK0RH','paystack',NULL,317.00,34,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'A9WIXP3A7K','bank_transfer',NULL,1960.00,35,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'96YMLXRYMJ','bank_transfer',NULL,534.00,36,'pending','confirm',9,NULL,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'MCUSUF55RE','paystack',NULL,2940.00,37,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'MEGCM5RFWE','stripe',NULL,1946.00,38,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:47','2024-03-15 03:03:47','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'O0AW1AQCWZ','razorpay',NULL,2270.00,39,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'UWMM1NIPLN','paystack',NULL,5847.00,40,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'KUIURZTG8Q','stripe',NULL,2613.00,41,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'9MOSEWPGIL','cod',NULL,924.00,42,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'2MM5MFLJ3K','cod',NULL,1278.00,43,'pending','confirm',10,NULL,NULL,'2024-03-15 03:03:48','2024-03-15 03:03:48','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'IP4DINB8KD','paypal',NULL,980.00,44,'completed','confirm',10,NULL,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'GGU6CZIQET','stripe',NULL,3758.00,45,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'BUZZPZV0ZY','stripe',NULL,1917.00,46,'completed','confirm',9,NULL,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'T3AFQQA9KO','cod',NULL,314.00,47,'pending','confirm',9,NULL,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'PUFYB2OJUH','cod',NULL,3387.00,48,'pending','confirm',9,NULL,NULL,'2024-03-15 03:03:49','2024-03-15 03:03:49','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (5,1),(6,1),(4,2),(5,2),(2,3),(3,3),(1,4),(2,4),(4,5),(1,5),(1,6),(2,6),(5,7),(3,7),(5,8),(4,8),(4,9),(6,9),(2,10),(6,10),(3,11),(5,11),(5,12),(4,13),(2,13),(5,14),(4,14),(5,15),(4,15),(6,16),(1,16),(3,17),(4,17),(2,18),(1,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (2,1),(5,1),(2,2),(4,2),(3,2),(1,3),(8,3),(7,3),(2,4),(4,4),(8,4),(2,5),(6,5),(7,5),(2,6),(8,6),(6,7),(3,7),(4,7),(5,8),(8,8),(8,9),(7,9),(8,10),(5,10),(4,10),(4,11),(2,11),(7,11),(7,12),(8,12),(5,12),(3,13),(8,13),(2,13),(6,14),(7,14),(2,14),(1,15),(6,15),(2,15),(7,16),(5,16),(6,16),(3,17),(7,17),(6,17),(6,18),(1,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','I can\'t take LESS,\' said the King triumphantly, pointing to the jury. They were indeed a queer-looking party that assembled on the shingle--will you come to the Mock Turtle yet?\' \'No,\' said Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',629,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Dinah my dear! Let this be a walrus or hippopotamus, but then she heard a little of the right-hand bit to try the effect: the next moment she felt a little bit of mushroom, and raised herself to.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',1698,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,'The Top 2020 Handbag Trends to Know','I\'m certain! I must be on the OUTSIDE.\' He unfolded the paper as he said do. Alice looked round, eager to see you again, you dear old thing!\' said the youth, \'and your jaws are too weak For anything.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',179,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,'How to Match the Color of Your Handbag With an Outfit','They all sat down at them, and considered a little, half expecting to see the Mock Turtle Soup is made from,\' said the Queen. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1326,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(5,'How to Care for Leather Bags','Queen ordering off her knowledge, as there seemed to quiver all over crumbs.\' \'You\'re wrong about the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',153,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Rabbit\'s voice; and Alice was beginning very angrily, but the Mouse was bristling all over, and both creatures hid their faces in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',435,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(7,'Essential Qualities of Highly Successful Music','When she got to see how he did with the Lory, with a cart-horse, and expecting every moment to be full of smoke from one end of half an hour or so there were any tears. No, there were any tears. No.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1468,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(8,'9 Things I Love About Shaving My Head','WHAT things?\' said the Queen. An invitation for the fan and gloves, and, as she had never had to be no doubt that it seemed quite natural); but when the race was over. However, when they arrived.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2091,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(9,'Why Teamwork Really Makes The Dream Work','But she waited for some while in silence. At last the Gryphon went on, without attending to her, still it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1828,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(10,'The World Caters to Average People','At this moment Alice appeared, she was to get out at the other ladder?--Why, I hadn\'t quite finished my tea when I find a number of executions the Queen to-day?\' \'I should like to go on till you.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',679,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(11,'The litigants on the screen are not actors','YOUR shoes done with?\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a large cat which was sitting next to her. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Cat went on.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',1662,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(12,'Hiring the Right Sales Team at the Right Time','I\'ll never go THERE again!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time to begin.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1289,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(13,'Fully Embrace the Return of 90s fashion','Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, quite forgetting that she began shrinking directly. As soon as she fell very slowly, for she had not a regular rule: you invented.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',591,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(14,'Exploring the English Countryside','Alice! Come here directly, and get in at the Queen, but she did so, and giving it something out of it, and yet it was the BEST butter,\' the March Hare. \'Then it doesn\'t matter much,\' thought Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1050,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(15,'Here’s the First Valentino’s New Makeup Collection','Five and Seven said nothing, but looked at Alice, as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a good deal frightened by this time, sat down in a tone of.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1070,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(16,'Follow Your own Design process, whatever gets','Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a fight with another hedgehog, which seemed to Alice severely. \'What are tarts made of?\' Alice asked in a tone of great relief. \'Call the next.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',1139,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(17,'Freelancer Days 2024, What’s new?','So she went on saying to herself, as well say,\' added the Gryphon, and the little door into that lovely garden. I think that will be much the most confusing thing I ask! It\'s always six o\'clock.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',1087,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29'),(18,'Quality Foods Requirments For Every Human Body’s','There are no mice in the other: the only difficulty was, that her neck kept getting entangled among the trees had a bone in his throat,\' said the one who got any advantage from the sky! Ugh.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',320,NULL,'2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-03-15 03:03:21','2024-03-15 03:03:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','cfcaf848750d4b1d021642a1db123232',NULL,'2024-03-15 03:03:40'),(2,'api_enabled','0',NULL,'2024-03-15 03:03:40'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-03-15 03:03:40'),(6,'theme','shofy-grocery',NULL,'2024-03-15 03:03:40'),(7,'show_admin_bar','1',NULL,'2024-03-15 03:03:40'),(8,'payment_cod_status','1',NULL,'2024-03-15 03:03:40'),(9,'payment_bank_transfer_status','1',NULL,'2024-03-15 03:03:40'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-03-15 03:03:40'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-03-15 03:03:40'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-03-15 03:03:40'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-03-15 03:03:40'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-03-15 03:03:40'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-03-15 03:03:40'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-03-15 03:03:40'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-03-15 03:03:40'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-03-15 03:03:40'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-03-15 03:03:40'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-03-15 03:03:40'),(21,'language_hide_default','1',NULL,'2024-03-15 03:03:40'),(22,'language_switcher_display','dropdown',NULL,'2024-03-15 03:03:40'),(23,'language_display','all',NULL,'2024-03-15 03:03:40'),(24,'language_hide_languages','[]',NULL,'2024-03-15 03:03:40'),(25,'ecommerce_store_name','Shofy',NULL,'2024-03-15 03:03:40'),(26,'ecommerce_store_phone','1800979769',NULL,'2024-03-15 03:03:40'),(27,'ecommerce_store_address','502 New Street',NULL,'2024-03-15 03:03:40'),(28,'ecommerce_store_state','Brighton VIC',NULL,'2024-03-15 03:03:40'),(29,'ecommerce_store_city','Brighton VIC',NULL,'2024-03-15 03:03:40'),(30,'ecommerce_store_country','AU',NULL,'2024-03-15 03:03:40'),(31,'announcement_max_width',NULL,NULL,'2024-03-15 03:03:40'),(32,'announcement_text_color','#010f1c',NULL,'2024-03-15 03:03:40'),(33,'announcement_background_color','transparent',NULL,'2024-03-15 03:03:40'),(34,'announcement_placement','theme',NULL,'2024-03-15 03:03:40'),(35,'announcement_text_alignment','start',NULL,'2024-03-15 03:03:40'),(36,'announcement_dismissible','0',NULL,'2024-03-15 03:03:40'),(37,'simple_slider_using_assets','0',NULL,'2024-03-15 03:03:40'),(38,'theme-shofy-grocery-site_name','Shofy',NULL,NULL),(39,'theme-shofy-grocery-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(40,'theme-shofy-grocery-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(41,'theme-shofy-grocery-copyright','© %Y All Rights Reserved.',NULL,NULL),(42,'theme-shofy-grocery-primary_font','Jost',NULL,NULL),(43,'theme-shofy-grocery-primary_color','#678E61',NULL,NULL),(44,'theme-shofy-grocery-favicon','main/general/favicon.png',NULL,NULL),(45,'theme-shofy-grocery-logo','main/general/logo.png',NULL,NULL),(46,'theme-shofy-grocery-logo_light','main/general/logo-white.png',NULL,NULL),(47,'theme-shofy-grocery-header_style','5',NULL,NULL),(48,'theme-shofy-grocery-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(49,'theme-shofy-grocery-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(50,'theme-shofy-grocery-hotline','8 800 332 65-66',NULL,NULL),(51,'theme-shofy-grocery-email','contact@fartmart.co',NULL,NULL),(52,'theme-shofy-grocery-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(53,'theme-shofy-grocery-homepage_id','1',NULL,NULL),(54,'theme-shofy-grocery-blog_page_id','4',NULL,NULL),(55,'theme-shofy-grocery-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(56,'theme-shofy-grocery-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(57,'theme-shofy-grocery-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(58,'theme-shofy-grocery-number_of_products_per_page','24',NULL,NULL),(59,'theme-shofy-grocery-number_of_cross_sale_product','6',NULL,NULL),(60,'theme-shofy-grocery-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(61,'theme-shofy-grocery-ecommerce_product_item_style','5',NULL,NULL),(62,'theme-shofy-grocery-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(63,'theme-shofy-grocery-logo_in_invoices','main/general/logo.png',NULL,NULL),(64,'theme-shofy-grocery-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(65,'theme-shofy-grocery-404_page_image','main/general/404.png',NULL,NULL),(66,'theme-shofy-grocery-newsletter_popup_enable','1',NULL,NULL),(67,'theme-shofy-grocery-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(68,'theme-shofy-grocery-newsletter_popup_title','Subscribe Now',NULL,NULL),(69,'theme-shofy-grocery-newsletter_popup_subtitle','Newsletter',NULL,NULL),(70,'theme-shofy-grocery-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(71,'theme-shofy-grocery-lazy_load_images','1',NULL,NULL),(72,'theme-shofy-grocery-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(73,'theme-shofy-grocery-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(74,'theme-shofy-grocery-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Online <br> Grocery Store','grocery/sliders/slider-1.png','/products',NULL,0,'2024-03-15 03:03:33','2024-03-15 03:03:33');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-03-15 03:03:33','2024-03-15 03:03:33');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-15 03:03:22','2024-03-15 03:03:22'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-15 03:03:22','2024-03-15 03:03:22'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-15 03:03:22','2024-03-15 03:03:22'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-15 03:03:22','2024-03-15 03:03:22'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-15 03:03:22','2024-03-15 03:03:22'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-15 03:03:26','2024-03-15 03:03:26'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:28','2024-03-15 03:03:28'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:28','2024-03-15 03:03:28'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:28','2024-03-15 03:03:28'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:28','2024-03-15 03:03:28'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-03-15 03:03:29','2024-03-15 03:03:29'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-03-15 03:03:29','2024-03-15 03:03:29'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-03-15 03:03:32','2024-03-15 03:03:32'),(52,'frozen-food',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(53,'baby-food',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(54,'strawberry',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(55,'ice-cream',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(56,'meat-seafood',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(57,'chicken',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(58,'fish',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(59,'beef',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(60,'milk-dairy',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(61,'milk',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(62,'cheese',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(63,'yogurt',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(64,'beverages',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(65,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(66,'carrot',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(67,'tomato',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(68,'potato',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(69,'fruits',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(70,'banana',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(71,'mango',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-15 03:03:33','2024-03-15 03:03:33'),(72,'organic-apples',1,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(73,'whole-grain-bread',2,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(74,'free-range-eggs',3,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(75,'fresh-salmon-fillet-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:04:10'),(76,'organic-spinach',5,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(77,'grass-fed-ground-beef',6,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(78,'almond-milk',7,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(79,'quinoa-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:04:10'),(80,'avocado',9,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(81,'greek-yogurt',10,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(82,'sweet-potatoes',11,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:34','2024-03-15 03:03:34'),(83,'organic-cherry-tomatoes-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:04:10'),(84,'honeycrisp-apples',13,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(85,'brown-rice',14,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(86,'organic-chicken-breast',15,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(87,'extra-virgin-olive-oil-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:04:10'),(88,'cucumber',17,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(89,'black-beans',18,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(90,'chia-seeds',19,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(91,'whole-wheat-pasta-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:04:10'),(92,'mixed-nuts',21,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(93,'green-tea-bags',22,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(94,'organic-strawberries',23,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(95,'quinoa-flour-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:04:10'),(96,'organic-baby-kale',25,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(97,'salad-dressing',26,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(98,'sweet-corn',27,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(99,'almond-butter-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:04:10'),(100,'whole-pineapple',29,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(101,'cottage-cheese',30,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:03:35','2024-03-15 03:03:35'),(102,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-15 03:03:38','2024-03-15 03:03:38'),(103,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-15 03:03:39','2024-03-15 03:03:39'),(104,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-15 03:03:39','2024-03-15 03:03:39'),(105,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-15 03:03:39','2024-03-15 03:03:39'),(106,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-15 03:03:39','2024-03-15 03:03:39'),(107,'home',1,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(108,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(109,'coupons',3,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(110,'blog',4,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(111,'contact',5,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(112,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(113,'our-story',7,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(114,'careers',8,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(115,'shipping',9,'Botble\\Page\\Models\\Page','','2024-03-15 03:03:39','2024-03-15 03:03:39'),(116,'organic-apples',31,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(117,'organic-apples',32,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(118,'organic-apples',33,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(119,'organic-apples',34,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(120,'whole-grain-bread',35,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(121,'whole-grain-bread',36,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(122,'whole-grain-bread',37,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(123,'free-range-eggs',38,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(124,'free-range-eggs',39,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(125,'free-range-eggs',40,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(126,'fresh-salmon-fillet-digital',41,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(127,'organic-spinach',42,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(128,'organic-spinach',43,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(129,'organic-spinach',44,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(130,'grass-fed-ground-beef',45,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(131,'grass-fed-ground-beef',46,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(132,'almond-milk',47,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(133,'quinoa-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(134,'quinoa-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(135,'avocado',50,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(136,'avocado',51,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(137,'avocado',52,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(138,'avocado',53,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(139,'greek-yogurt',54,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(140,'greek-yogurt',55,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(141,'greek-yogurt',56,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(142,'sweet-potatoes',57,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(143,'sweet-potatoes',58,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(144,'organic-cherry-tomatoes-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(145,'organic-cherry-tomatoes-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(146,'organic-cherry-tomatoes-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(147,'honeycrisp-apples',62,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(148,'honeycrisp-apples',63,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(149,'brown-rice',64,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(150,'brown-rice',65,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(151,'organic-chicken-breast',66,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(152,'organic-chicken-breast',67,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(153,'organic-chicken-breast',68,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(154,'extra-virgin-olive-oil-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(155,'extra-virgin-olive-oil-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(156,'cucumber',71,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(157,'cucumber',72,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(158,'cucumber',73,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(159,'black-beans',74,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(160,'black-beans',75,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(161,'black-beans',76,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(162,'black-beans',77,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(163,'black-beans',78,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(164,'chia-seeds',79,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(165,'chia-seeds',80,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(166,'chia-seeds',81,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(167,'whole-wheat-pasta-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(168,'whole-wheat-pasta-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(169,'mixed-nuts',84,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(170,'green-tea-bags',85,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(171,'green-tea-bags',86,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(172,'green-tea-bags',87,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(173,'organic-strawberries',88,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(174,'organic-strawberries',89,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(175,'quinoa-flour-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(176,'organic-baby-kale',91,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(177,'salad-dressing',92,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(178,'sweet-corn',93,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(179,'sweet-corn',94,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(180,'sweet-corn',95,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(181,'almond-butter-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(182,'whole-pineapple',97,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(183,'cottage-cheese',98,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10'),(184,'cottage-cheese',99,'Botble\\Ecommerce\\Models\\Product','products','2024-03-15 03:04:10','2024-03-15 03:04:10');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-15 03:03:29','2024-03-15 03:03:29');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/1.jpg','Developer','published','2024-03-15 03:03:33','2024-03-15 03:03:33'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/6.jpg','CO Founder','published','2024-03-15 03:03:33','2024-03-15 03:03:33'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/5.jpg','UI/UX Designer','published','2024-03-15 03:03:33','2024-03-15 03:03:33'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/1.jpg','Bank of America','published','2024-03-15 03:03:33','2024-03-15 03:03:33');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jwunsch@marquardt.net',NULL,'$2y$12$figIOSdbFddfipJSAGewweZbDHSLT2anisha0ZbG4emM1tRB/4H2a',NULL,'2024-03-15 03:03:21','2024-03-15 03:03:21','Graham','Koss','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-grocery',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-grocery',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"shofy@support.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"categories\":[3,4,15,18,19,20]}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(8,'NewsletterWidget','footer_top_sidebar','shofy-grocery',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(9,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-grocery',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(10,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-grocery',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(11,'BlogSearchWidget','blog_sidebar','shofy-grocery',1,'{\"id\":\"BlogSearchWidget\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(12,'BlogAboutMeWidget','blog_sidebar','shofy-grocery',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/3.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(13,'BlogPostsWidget','blog_sidebar','shofy-grocery',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(14,'BlogCategoriesWidget','blog_sidebar','shofy-grocery',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(15,'BlogTagsWidget','blog_sidebar','shofy-grocery',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-03-15 03:03:40','2024-03-15 03:03:40'),(16,'ProductDetailInfoWidget','product_details_sidebar','shofy-grocery',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-03-15 03:03:40','2024-03-15 03:03:40');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 17:04:11
