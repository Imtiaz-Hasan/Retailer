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
INSERT INTO `activations` VALUES (1,1,'QNHsAXh4wUN1Q6OGhAp0osc2AeK91XdH',1,'2024-03-05 00:57:33','2024-03-05 00:57:33','2024-03-05 00:57:33');
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-03-05 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45',1,NULL,NULL),(2,'Ads 2','2029-03-05 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-03-05 00:57:45','2024-03-05 00:57:45',1,NULL,NULL),(3,'Ads 3','2029-03-05 00:00:00','not_set','L1WDL8YGZUOR','grocery/banners/1.jpg','/products',0,3,'published','2024-03-05 00:57:45','2024-03-05 00:57:45',1,NULL,NULL),(4,'Ads 4','2029-03-05 00:00:00','not_set','GA3K1VZWNMPF','grocery/banners/2.png','/products',0,4,'published','2024-03-05 00:57:45','2024-03-05 00:57:45',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','🍇 Fresh arrivals just in! Shop now for quality groceries and elevate your meals!',0,NULL,NULL,0,1,'2024-03-05 07:57:41',NULL,1,'2024-03-05 00:57:41','2024-03-05 00:57:41'),(2,'Announcement 2','🚀 Explore new flavors hassle-free. Enjoy free delivery on orders over $50!',0,NULL,NULL,0,1,'2024-03-05 07:57:41',NULL,1,'2024-03-05 00:57:41','2024-03-05 00:57:41'),(3,'Announcement 3','🌽 Quality guaranteed! Hassle-free returns within 30 days for your peace of mind.',0,NULL,NULL,0,1,'2024-03-05 07:57:41',NULL,1,'2024-03-05 00:57:41','2024-03-05 00:57:41');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Odit excepturi dolor in vitae. Illum distinctio aut sequi modi amet quae. Temporibus tempora culpa sunt id inventore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,'Fashion',0,'Et facere harum beatae qui aperiam. Occaecati facilis fuga et unde accusantium qui quas. Adipisci hic consectetur alias dicta occaecati. Est quam distinctio deserunt magnam quam aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,'Electronic',0,'Occaecati expedita mollitia nostrum sit aut et et. Voluptatibus laudantium rerum maiores placeat id illo. Sit voluptatem cumque vel enim iusto unde tenetur explicabo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,'Commercial',0,'Officia sit sed autem eveniet. Minima et laborum sed nihil iste totam. Officiis ipsa consequuntur sint voluptate aliquam eum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(5,'Organic Fruits',0,'Tempora velit velit est non. Dolores ut earum odit quaerat animi. Corporis vel aspernatur sit consequatur velit consequatur atque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(6,'Ecological',0,'Inventore quis perferendis dignissimos et sint numquam. Quisquam et corporis quis. Rem adipisci totam ipsa dolores consequuntur dolore. Neque quia ducimus hic accusamus beatae nisi ullam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-05 00:57:38','2024-03-05 00:57:38');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `contacts` VALUES (1,'Prof. Cristal Bogan','alang@example.net','+1 (680) 448-5653','2646 Ankunding Cliffs Suite 483\nNorth Jodie, KS 54965','Adipisci et magni praesentium quia.','Tenetur provident nostrum ipsam iusto voluptate sit repudiandae. Reiciendis dolorem in et omnis consequatur expedita. Ipsum expedita officia ullam adipisci. Id sapiente rerum molestiae provident. Voluptatem maiores voluptatibus voluptas quos. Reiciendis eius ea sunt quaerat vitae distinctio id veritatis. Sit sint laudantium aperiam rerum. Omnis laboriosam sunt consequatur vel doloribus sequi.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(2,'Brian Kuhlman','qbernier@example.com','+1-951-556-1762','8034 Emerald Alley Apt. 434\nCandaceside, ID 21794-6322','Ut numquam amet perferendis animi quia.','Dolores est explicabo aut iusto quis in velit. Expedita animi repellat quia sunt. Dolores harum dolorum earum dolores ad deserunt. Laborum excepturi ut deleniti. Impedit temporibus odio quia reiciendis aut quia eveniet. Et autem ut sed voluptatem vitae quae blanditiis quaerat. Perferendis maiores ullam maxime rerum aut. Qui magnam eum odio reprehenderit eveniet consequatur.','read','2024-03-05 00:57:37','2024-03-05 00:57:37'),(3,'Meda Hermann','kristoffer.pfannerstill@example.net','+17699856485','6588 Sierra Freeway\nNew Kavonland, IN 78793','Fugiat et natus voluptatum non.','Est aliquid qui reprehenderit sed inventore. Est nisi aspernatur est fugit vel ducimus earum. Soluta delectus qui a in dolores hic. Qui natus placeat ipsum pariatur aliquid. Aperiam fugit saepe eveniet ut aut ab voluptatem. Non mollitia aut et voluptatem pariatur distinctio ratione autem. Magni deleniti voluptate necessitatibus maxime deleniti iste blanditiis. Necessitatibus error ea veritatis voluptas magnam ea ut atque.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(4,'Scottie Dach','gorn@example.com','+1.469.984.4447','634 Monahan Plains\nOlsonborough, CA 07062-0812','Molestiae eos similique et.','Culpa id quos tempora non consequatur culpa et aliquid. Harum et sit perspiciatis nisi et qui excepturi et. Ipsam voluptas et tenetur illo. Quod ad illo eaque nostrum alias dolor. Sint recusandae hic odio tempore quis nisi modi quasi. Id rerum sit autem et ipsam. Quaerat quibusdam delectus deleniti vel. Repellendus et similique nulla aut qui nam et. Ipsa quaerat aliquam quo ut nihil. Commodi assumenda magni dolor iure eligendi ab omnis. Non laborum nihil beatae vel consequatur.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(5,'Della Anderson IV','claudine.crona@example.com','+1-626-575-5114','830 Dorothy Mills\nHagenesmouth, LA 65393-9979','Repellendus ea ut cupiditate nesciunt.','Natus distinctio nulla et et asperiores vel. Enim voluptatem a corrupti sint doloribus quis. Sunt quia aperiam ducimus et consectetur rem blanditiis. Error dignissimos deleniti laudantium nesciunt sed aut. Enim nesciunt ut laborum voluptas iure magni omnis. Sit non voluptatem mollitia a nobis tenetur. Ut autem sit distinctio culpa corrupti rerum hic. Ab tempora sit non. Animi expedita corrupti itaque molestiae aut in aut. Molestias at vitae dignissimos at repellendus.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(6,'Mireille Metz V','destin.prosacco@example.com','(940) 510-7162','18077 Waldo Throughway Apt. 148\nSouth Richard, NM 55034-5341','Qui deleniti reiciendis odit odit voluptate.','Dolores id libero aspernatur qui mollitia. Deleniti sit nobis qui minima et aperiam excepturi. Eos placeat et aspernatur fugiat. Possimus enim odit enim. Dignissimos similique voluptatem temporibus ex. Incidunt consequatur quibusdam officiis facere. Aliquam officiis reiciendis nulla voluptatum sunt. Quia voluptatem ipsa sed voluptas laborum quia laboriosam. Id blanditiis molestiae et saepe sunt. Aliquid non iste aperiam et ratione dolorem.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(7,'Ettie Lubowitz','electa.blick@example.org','740.422.5192','407 Kayla Light Apt. 968\nCrookstown, OK 85197','Molestiae maiores quidem facere eos et.','Iusto fuga delectus illo officia ea et laudantium. Qui quisquam sit atque placeat ipsam doloremque sit. Harum beatae similique itaque eum. Iure delectus accusantium velit cum tenetur corporis sapiente. Ut laboriosam cum placeat sequi. Ut voluptatum eveniet voluptatem iusto quis. Rem illo voluptatem veniam explicabo recusandae quas a itaque. Non ducimus voluptate excepturi eligendi.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(8,'Prof. Dave Huel DVM','alexandria.windler@example.org','+1.512.921.5575','18161 Russel Manors\nJamisonmouth, NY 27473','Voluptatem consequatur impedit ut possimus.','Necessitatibus est consequuntur officiis quidem omnis. Nobis at sapiente ipsum. Repellendus temporibus quo labore. Totam ullam suscipit sequi minima quia. Ratione error dolorem sapiente omnis beatae exercitationem aut. Repellat hic distinctio quia aliquam. Temporibus soluta itaque aut soluta recusandae. Nihil odit architecto eum eum voluptas nihil voluptatem voluptatem. Et deserunt quibusdam corrupti nobis. Id sed non nobis officiis.','read','2024-03-05 00:57:37','2024-03-05 00:57:37'),(9,'Briana Murray','hickle.layne@example.com','1-865-570-5019','396 Halvorson Greens Apt. 590\nEast Marioland, HI 34781-7782','Sit tempora maxime reiciendis dignissimos eaque.','Et nesciunt occaecati minima et. Aut veniam amet dolor aut quia. Fugit ea qui dolor non corrupti quidem repellendus enim. Perferendis corrupti id non cum amet. Quia ut esse voluptatem ut. Eum voluptatibus vel veritatis. Facilis omnis itaque et nesciunt. Perspiciatis consequuntur sit occaecati expedita rerum. Illum blanditiis ab quos nostrum. Totam et aliquid velit quia error delectus distinctio. Fugit et aut voluptatem.','unread','2024-03-05 00:57:37','2024-03-05 00:57:37'),(10,'Miss Sarai Dare PhD','jessika91@example.net','(386) 587-7808','74018 Faye Villages Suite 332\nWhiteborough, NV 18349-3664','Ut itaque dolores soluta est voluptatem cumque.','Ut aliquid distinctio dolor minima enim. Velit facilis eos et voluptate vel et voluptatem eius. Quia cumque omnis pariatur laudantium explicabo dolorum. Autem beatae magni architecto magnam magni. Dolor cum natus exercitationem. Veritatis odio doloremque voluptates maxime ut commodi. Aliquid mollitia voluptates in quis quis.','read','2024-03-05 00:57:37','2024-03-05 00:57:37');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,NULL,'published',0,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,NULL,'published',1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',2,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',3,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,NULL,'published',4,1,'2024-03-05 00:57:34','2024-03-05 00:57:34');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,'EUR','€',0,2,1,0,0.84,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,'VND','₫',0,0,2,0,23203,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(4,'NGN','₦',1,2,2,0,895.52,'2024-03-05 00:57:34','2024-03-05 00:57:34');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Aurelie Gutmann','customer@botble.com','+17256930053','TO','North Carolina','New Ulicesberg','14507 Keon Coves',1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34','23539-1510'),(2,'Aurelie Gutmann','customer@botble.com','+12836768728','AE','Mississippi','Clotildeview','742 Bartell Pine',1,0,'2024-03-05 00:57:34','2024-03-05 00:57:34','27374-6973'),(3,'Prof. Tara Moore Jr.','vendor@botble.com','+16086809468','AX','Mississippi','Pacochaland','6667 Hyatt Mission Suite 192',2,1,'2024-03-05 00:57:35','2024-03-05 00:57:35','34655'),(4,'Prof. Tara Moore Jr.','vendor@botble.com','+12812217243','HT','Virginia','East Gerard','838 Cremin Street Suite 223',2,0,'2024-03-05 00:57:35','2024-03-05 00:57:35','98522'),(5,'Nels Pacocha DDS','gbauch@example.org','+16027962325','SO','North Dakota','North Lucile','87467 Considine Gateway',3,1,'2024-03-05 00:57:35','2024-03-05 00:57:35','80846'),(6,'Alvena Little IV','vivian.okon@example.net','+16034578287','VG','Arizona','Norwoodmouth','55529 Linwood Run',4,1,'2024-03-05 00:57:35','2024-03-05 00:57:35','64309-5403'),(7,'Jeff Mann','gquitzon@example.org','+14638395361','TW','Minnesota','Marcelinohaven','30435 Adrian Walks',5,1,'2024-03-05 00:57:35','2024-03-05 00:57:35','51912-2834'),(8,'Abraham Gutmann PhD','zemlak.mariela@example.net','+19067685116','SH','Nebraska','Haagtown','202 Crist Dale Suite 787',6,1,'2024-03-05 00:57:36','2024-03-05 00:57:36','15816-9519'),(9,'Dr. Leland Schaden','jaskolski.leda@example.org','+17863129229','BI','Nebraska','Satterfieldland','654 Alta Via',7,1,'2024-03-05 00:57:36','2024-03-05 00:57:36','96553-9359'),(10,'Al Kautzer','natalie06@example.com','+19703949279','DZ','Kansas','Lake Cordiashire','42277 Price Wall Suite 062',8,1,'2024-03-05 00:57:36','2024-03-05 00:57:36','21497-5716'),(11,'Noe Wehner PhD','viva.kautzer@example.net','+19404906480','EE','California','Vanborough','42685 Konopelski Manor',9,1,'2024-03-05 00:57:36','2024-03-05 00:57:36','49928-1742'),(12,'Vivian Abbott IV','hoeger.adella@example.org','+13856998194','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',10,1,'2024-03-05 00:57:37','2024-03-05 00:57:37','60264-5582');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_customers` VALUES (1,'Aurelie Gutmann','customer@botble.com','$2y$12$WODzOfqEeIP3OZKGCL3rq.xPN2IYk.12LjrjU8IeJcL0YoWStqX8u','main/customers/1.jpg','1988-02-27','+19018467686',NULL,'2024-03-05 00:57:34','2024-03-05 00:57:39','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(2,'Prof. Tara Moore Jr.','vendor@botble.com','$2y$12$3NIY7I9O0rJ5z9y5u5ASuucS148HRdeiFZFWtIjpD0UlQQGa4xEqG','main/customers/10.jpg','1987-02-28','+18625151455',NULL,'2024-03-05 00:57:35','2024-03-05 00:57:39','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(3,'Nels Pacocha DDS','gbauch@example.org','$2y$12$IOWc3qX73E9hyUrT8cnN9Og3joDEZW0dtCVprgE4Ail/6Hc/1cm8W','main/customers/1.jpg','2001-02-28','+19196426997',NULL,'2024-03-05 00:57:35','2024-03-05 00:57:40','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(4,'Alvena Little IV','vivian.okon@example.net','$2y$12$9gbbTkuKiBRyc0lr6he09uayi2l26ri2CwR3N.Ik63MbFd5AoKjxC','main/customers/2.jpg','1977-02-21','+14348250645',NULL,'2024-03-05 00:57:35','2024-03-05 00:57:40','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(5,'Jeff Mann','gquitzon@example.org','$2y$12$407j4TiZ9TqhEWq1XdvGWOc..yHn5VmyXvfro8pAzRDiSzDw45dTC','main/customers/3.jpg','1998-02-19','+16804800059',NULL,'2024-03-05 00:57:35','2024-03-05 00:57:40','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(6,'Abraham Gutmann PhD','zemlak.mariela@example.net','$2y$12$hWU8jRNS.TNq9yDAGV3JDeRAho9SCaz6UKLsxSJVy6zPMZflJOARi','main/customers/4.jpg','1995-02-21','+19407624652',NULL,'2024-03-05 00:57:36','2024-03-05 00:57:40','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(7,'Dr. Leland Schaden','jaskolski.leda@example.org','$2y$12$Y3CdGreffYbnZmm584kO4OswAUxK.omMsP7/JLAiZ52p8cchyCqIK','main/customers/5.jpg','1989-02-24','+15089065703',NULL,'2024-03-05 00:57:36','2024-03-05 00:57:41','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(8,'Al Kautzer','natalie06@example.com','$2y$12$c/YyFhkxZKmykX80GpN7t.ty9vJmFvrEEnXZm1rYtsTqlrdiuuDHW','main/customers/6.jpg','2002-02-19','+16603426649',NULL,'2024-03-05 00:57:36','2024-03-05 00:57:41','2024-03-05 07:57:34',NULL,1,'2024-03-05 07:57:39','activated',NULL),(9,'Noe Wehner PhD','viva.kautzer@example.net','$2y$12$kVNN2bk6FifpKQTHn4nl7e5u.ezs.iTb7/mr2zrA/kh.r4OFHCfJi','main/customers/7.jpg','1986-02-05','+17165724010',NULL,'2024-03-05 00:57:36','2024-03-05 00:57:41','2024-03-05 07:57:34',NULL,0,NULL,'activated',NULL),(10,'Vivian Abbott IV','hoeger.adella@example.org','$2y$12$M2q/mcxW77KDC82GHyt6FeDvMpqwR84kEvBJFkVl/fweqE9wEwTwW','main/customers/8.jpg','1992-03-01','+14802039486',NULL,'2024-03-05 00:57:37','2024-03-05 00:57:41','2024-03-05 07:57:34',NULL,0,NULL,'activated',NULL);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','GKGH2WMNIBXN','2024-03-04 07:57:38','2024-03-29 07:57:38',NULL,0,307,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(2,'Discount 2','LIJPWOW15V2A','2024-03-04 07:57:38',NULL,NULL,0,585,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(3,'Discount 3','MFYUQAOV0O5M','2024-03-04 07:57:38',NULL,NULL,0,823,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(4,'Discount 4','OWJ20B6VP5ZK','2024-03-04 07:57:38',NULL,NULL,0,222,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(5,'Discount 5','FGVRAISD5OSF','2024-03-04 07:57:38',NULL,NULL,0,30,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(6,'Discount 6','TTYN2GERQDKL','2024-03-04 07:57:38','2024-03-30 07:57:38',NULL,0,36,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(7,'Discount 7','6CZGT41PFDBJ','2024-03-04 07:57:38',NULL,NULL,0,94,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(8,'Discount 8','COVKOPKVZIP2','2024-03-04 07:57:38',NULL,NULL,0,157,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(9,'Discount 9','YBCBFYD79KCW','2024-03-04 07:57:38','2024-03-10 07:57:38',NULL,0,294,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL),(10,'Discount 10','CKTWPCSY1HIJ','2024-03-04 07:57:38',NULL,NULL,0,591,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,571.2,9,5),(1,2,967.6,6,2),(1,3,970.56,9,4),(1,4,251.136,12,2),(1,5,515.97,10,2),(1,6,183,8,5),(1,7,867.16,6,2),(1,8,1501.7024,19,4),(1,9,991.44,12,3),(1,10,436.05,14,2);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-03-25 00:00:00','published','2024-03-05 00:57:45','2024-03-05 00:57:45');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(1,2,'2 Year',10,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(1,3,'3 Year',20,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,4,'4GB',0,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,5,'8GB',10,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,6,'16GB',20,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,7,'Core i5',0,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,8,'Core i7',10,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,9,'Core i9',20,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,10,'128GB',0,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,11,'256GB',10,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,12,'512GB',20,9999,0,'2024-03-05 00:57:38','2024-03-05 00:57:38');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-03-05 00:57:38','2024-03-05 00:57:38');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',74,'Green Tea Bags',NULL,'grocery/products/product-8.jpg',2,1078.00,2156.00,0.00,0.00,2156.00,'{\"sku\":\"R9-169-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(2,2,'Botble\\Ecommerce\\Models\\Product',80,'Quinoa Flour (Digital)',NULL,'grocery/products/product-6.jpg',3,1457.00,4371.00,0.00,0.00,4371.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(3,3,'Botble\\Ecommerce\\Models\\Product',84,'Organic Baby Kale',NULL,'grocery/products/product-9.jpg',3,1237.00,3711.00,0.00,0.00,3711.00,'{\"sku\":\"SV-183-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(4,4,'Botble\\Ecommerce\\Models\\Product',95,'Whole Pineapple',NULL,'grocery/products/product-8.jpg',3,2488.00,7464.00,0.00,0.00,7464.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(5,5,'Botble\\Ecommerce\\Models\\Product',80,'Quinoa Flour (Digital)',NULL,'grocery/products/product-6.jpg',3,1457.00,4371.00,0.00,0.00,4371.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(6,5,'Botble\\Ecommerce\\Models\\Product',83,'Quinoa Flour (Digital)',NULL,'grocery/products/product-8.jpg',2,1457.00,2914.00,0.00,0.00,2914.00,'{\"sku\":\"VJ-120-A0-A3\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(7,6,'Botble\\Ecommerce\\Models\\Product',91,'Almond Butter (Digital)',NULL,'grocery/products/product-8.jpg',2,1654.00,3308.00,0.00,0.00,3308.00,'{\"sku\":\"CR-197-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(8,7,'Botble\\Ecommerce\\Models\\Product',42,'Quinoa (Digital)',NULL,'grocery/products/product-10.jpg',2,2056.00,4112.00,0.00,0.00,4112.00,'{\"sku\":\"QD-167-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-05 00:57:47','2024-03-05 00:57:47'),(9,8,'Botble\\Ecommerce\\Models\\Product',57,'Organic Chicken Breast',NULL,'grocery/products/product-5.jpg',1,2070.00,2070.00,0.00,0.00,2070.00,'{\"sku\":\"4I-165-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(10,9,'Botble\\Ecommerce\\Models\\Product',63,'Cucumber',NULL,'grocery/products/product-3.jpg',2,1423.00,2846.00,0.00,0.00,2846.00,'{\"sku\":\"0E-168-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(11,10,'Botble\\Ecommerce\\Models\\Product',95,'Whole Pineapple',NULL,'grocery/products/product-8.jpg',3,2488.00,7464.00,0.00,0.00,7464.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(12,11,'Botble\\Ecommerce\\Models\\Product',73,'Green Tea Bags',NULL,'grocery/products/product-2.jpg',1,1078.00,1078.00,0.00,0.00,1078.00,'{\"sku\":\"R9-169-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(13,12,'Botble\\Ecommerce\\Models\\Product',90,'Almond Butter (Digital)',NULL,'grocery/products/product-9.jpg',3,1654.00,4962.00,0.00,0.00,4962.00,'{\"sku\":\"CR-197-A0\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(14,12,'Botble\\Ecommerce\\Models\\Product',92,'Almond Butter (Digital)',NULL,'grocery/products/product-5.jpg',1,1654.00,1654.00,0.00,0.00,1654.00,'{\"sku\":\"CR-197-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:48','2024-03-05 00:57:48'),(15,13,'Botble\\Ecommerce\\Models\\Product',47,'Greek Yogurt',NULL,'grocery/products/product-2.jpg',1,765.00,765.00,0.00,0.00,765.00,'{\"sku\":\"EZ-117-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(16,14,'Botble\\Ecommerce\\Models\\Product',69,'Chia Seeds',NULL,'grocery/products/product-5.jpg',1,953.00,953.00,0.00,0.00,953.00,'{\"sku\":\"H2-117-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(17,15,'Botble\\Ecommerce\\Models\\Product',77,'Organic Strawberries',NULL,'grocery/products/product-3.jpg',1,2060.00,2060.00,0.00,0.00,2060.00,'{\"sku\":\"UW-200-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(18,16,'Botble\\Ecommerce\\Models\\Product',80,'Quinoa Flour (Digital)',NULL,'grocery/products/product-6.jpg',1,1457.00,1457.00,0.00,0.00,1457.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(19,17,'Botble\\Ecommerce\\Models\\Product',57,'Organic Chicken Breast',NULL,'grocery/products/product-5.jpg',3,2070.00,6210.00,0.00,0.00,6210.00,'{\"sku\":\"4I-165-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(20,17,'Botble\\Ecommerce\\Models\\Product',58,'Organic Chicken Breast',NULL,'grocery/products/product-1.jpg',1,2070.00,2070.00,0.00,0.00,2070.00,'{\"sku\":\"4I-165-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(21,18,'Botble\\Ecommerce\\Models\\Product',66,'Black Beans',NULL,'grocery/products/product-11.jpg',3,559.00,1677.00,0.00,0.00,1677.00,'{\"sku\":\"QF-151-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(22,18,'Botble\\Ecommerce\\Models\\Product',80,'Quinoa Flour (Digital)',NULL,'grocery/products/product-6.jpg',1,1457.00,1457.00,0.00,0.00,1457.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:49','2024-03-05 00:57:49'),(23,19,'Botble\\Ecommerce\\Models\\Product',45,'Avocado',NULL,'grocery/products/product-10.jpg',1,1944.00,1944.00,0.00,0.00,1944.00,'{\"sku\":\"EQ-193-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(24,20,'Botble\\Ecommerce\\Models\\Product',80,'Quinoa Flour (Digital)',NULL,'grocery/products/product-6.jpg',1,1457.00,1457.00,0.00,0.00,1457.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(25,20,'Botble\\Ecommerce\\Models\\Product',88,'Sweet Corn',NULL,'grocery/products/product-5.jpg',3,410.00,1230.00,0.00,0.00,1230.00,'{\"sku\":\"RE-130-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(26,21,'Botble\\Ecommerce\\Models\\Product',31,'Organic Apples',NULL,'grocery/products/product-10.jpg',3,816.00,2448.00,0.00,0.00,2448.00,'{\"sku\":\"QP-143-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(27,22,'Botble\\Ecommerce\\Models\\Product',61,'Extra Virgin Olive Oil (Digital)',NULL,'grocery/products/product-9.jpg',3,655.00,1965.00,0.00,0.00,1965.00,'{\"sku\":\"NE-147-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(28,23,'Botble\\Ecommerce\\Models\\Product',65,'Black Beans',NULL,'grocery/products/product-4.jpg',3,559.00,1677.00,0.00,0.00,1677.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(29,23,'Botble\\Ecommerce\\Models\\Product',82,'Quinoa Flour (Digital)',NULL,'grocery/products/product-11.jpg',2,1457.00,2914.00,0.00,0.00,2914.00,'{\"sku\":\"VJ-120-A0-A2\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(30,23,'Botble\\Ecommerce\\Models\\Product',85,'Salad Dressing',NULL,'grocery/products/product-1.jpg',2,554.00,1108.00,0.00,0.00,1108.00,'{\"sku\":\"RM-183-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}','2024-03-05 00:57:50','2024-03-05 00:57:50'),(31,24,'Botble\\Ecommerce\\Models\\Product',63,'Cucumber',NULL,'grocery/products/product-3.jpg',2,1423.00,2846.00,0.00,0.00,2846.00,'{\"sku\":\"0E-168-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(32,24,'Botble\\Ecommerce\\Models\\Product',64,'Cucumber',NULL,'grocery/products/product-8.jpg',2,1423.00,2846.00,0.00,0.00,2846.00,'{\"sku\":\"0E-168-A0-A2\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(33,25,'Botble\\Ecommerce\\Models\\Product',75,'Green Tea Bags',NULL,'grocery/products/product-3.jpg',1,1078.00,1078.00,0.00,0.00,1078.00,'{\"sku\":\"R9-169-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(34,26,'Botble\\Ecommerce\\Models\\Product',90,'Almond Butter (Digital)',NULL,'grocery/products/product-9.jpg',2,1654.00,3308.00,0.00,0.00,3308.00,'{\"sku\":\"CR-197-A0\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(35,27,'Botble\\Ecommerce\\Models\\Product',32,'Whole Grain Bread',NULL,'grocery/products/product-8.jpg',1,2419.00,2419.00,0.00,0.00,2419.00,'{\"sku\":\"J8-189-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(36,27,'Botble\\Ecommerce\\Models\\Product',46,'Avocado',NULL,'grocery/products/product-3.jpg',2,1944.00,3888.00,0.00,0.00,3888.00,'{\"sku\":\"EQ-193-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(37,28,'Botble\\Ecommerce\\Models\\Product',48,'Greek Yogurt',NULL,'grocery/products/product-8.jpg',1,765.00,765.00,0.00,0.00,765.00,'{\"sku\":\"EZ-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-05 00:57:51','2024-03-05 00:57:51'),(38,29,'Botble\\Ecommerce\\Models\\Product',51,'Organic Cherry Tomatoes (Digital)',NULL,'grocery/products/product-10.jpg',1,1055.00,1055.00,0.00,0.00,1055.00,'{\"sku\":\"EH-113-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(39,30,'Botble\\Ecommerce\\Models\\Product',68,'Chia Seeds',NULL,'grocery/products/product-8.jpg',3,953.00,2859.00,0.00,0.00,2859.00,'{\"sku\":\"H2-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(40,30,'Botble\\Ecommerce\\Models\\Product',69,'Chia Seeds',NULL,'grocery/products/product-5.jpg',1,953.00,953.00,0.00,0.00,953.00,'{\"sku\":\"H2-117-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(41,31,'Botble\\Ecommerce\\Models\\Product',60,'Extra Virgin Olive Oil (Digital)',NULL,'grocery/products/product-3.jpg',2,655.00,1310.00,0.00,0.00,1310.00,'{\"sku\":\"NE-147-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(42,32,'Botble\\Ecommerce\\Models\\Product',94,'Whole Pineapple',NULL,'grocery/products/product-2.jpg',2,2488.00,4976.00,0.00,0.00,4976.00,'{\"sku\":\"YZ-196-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(43,33,'Botble\\Ecommerce\\Models\\Product',37,'Organic Spinach',NULL,'grocery/products/product-6.jpg',3,819.00,2457.00,0.00,0.00,2457.00,'{\"sku\":\"3L-169-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(44,34,'Botble\\Ecommerce\\Models\\Product',58,'Organic Chicken Breast',NULL,'grocery/products/product-1.jpg',2,2070.00,4140.00,0.00,0.00,4140.00,'{\"sku\":\"4I-165-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-05 00:57:52','2024-03-05 00:57:52'),(45,35,'Botble\\Ecommerce\\Models\\Product',61,'Extra Virgin Olive Oil (Digital)',NULL,'grocery/products/product-9.jpg',1,655.00,655.00,0.00,0.00,655.00,'{\"sku\":\"NE-147-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(46,36,'Botble\\Ecommerce\\Models\\Product',95,'Whole Pineapple',NULL,'grocery/products/product-8.jpg',1,2488.00,2488.00,0.00,0.00,2488.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(47,37,'Botble\\Ecommerce\\Models\\Product',34,'Free-Range Eggs',NULL,'grocery/products/product-8.jpg',1,1348.00,1348.00,0.00,0.00,1348.00,'{\"sku\":\"IE-128-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(48,38,'Botble\\Ecommerce\\Models\\Product',38,'Organic Spinach',NULL,'grocery/products/product-1.jpg',3,819.00,2457.00,0.00,0.00,2457.00,'{\"sku\":\"3L-169-A0-A1\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(49,39,'Botble\\Ecommerce\\Models\\Product',33,'Whole Grain Bread',NULL,'grocery/products/product-4.jpg',3,2419.00,7257.00,0.00,0.00,7257.00,'{\"sku\":\"J8-189-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(50,40,'Botble\\Ecommerce\\Models\\Product',50,'Organic Cherry Tomatoes (Digital)',NULL,'grocery/products/product-11.jpg',2,1055.00,2110.00,0.00,0.00,2110.00,'{\"sku\":\"EH-113-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(51,40,'Botble\\Ecommerce\\Models\\Product',91,'Almond Butter (Digital)',NULL,'grocery/products/product-8.jpg',3,1654.00,4962.00,0.00,0.00,4962.00,'{\"sku\":\"CR-197-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:53','2024-03-05 00:57:53'),(52,41,'Botble\\Ecommerce\\Models\\Product',88,'Sweet Corn',NULL,'grocery/products/product-5.jpg',2,410.00,820.00,0.00,0.00,820.00,'{\"sku\":\"RE-130-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(53,42,'Botble\\Ecommerce\\Models\\Product',68,'Chia Seeds',NULL,'grocery/products/product-8.jpg',3,953.00,2859.00,0.00,0.00,2859.00,'{\"sku\":\"H2-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(54,43,'Botble\\Ecommerce\\Models\\Product',82,'Quinoa Flour (Digital)',NULL,'grocery/products/product-11.jpg',2,1457.00,2914.00,0.00,0.00,2914.00,'{\"sku\":\"VJ-120-A0-A2\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(55,43,'Botble\\Ecommerce\\Models\\Product',89,'Sweet Corn',NULL,'grocery/products/product-6.jpg',3,410.00,1230.00,0.00,0.00,1230.00,'{\"sku\":\"RE-130-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(56,44,'Botble\\Ecommerce\\Models\\Product',62,'Cucumber',NULL,'grocery/products/product-5.jpg',2,1423.00,2846.00,0.00,0.00,2846.00,'{\"sku\":\"0E-168-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(57,44,'Botble\\Ecommerce\\Models\\Product',65,'Black Beans',NULL,'grocery/products/product-4.jpg',3,559.00,1677.00,0.00,0.00,1677.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(58,45,'Botble\\Ecommerce\\Models\\Product',79,'Organic Strawberries',NULL,'grocery/products/product-7.jpg',3,2060.00,6180.00,0.00,0.00,6180.00,'{\"sku\":\"UW-200-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-05 00:57:54','2024-03-05 00:57:54'),(59,46,'Botble\\Ecommerce\\Models\\Product',83,'Quinoa Flour (Digital)',NULL,'grocery/products/product-8.jpg',3,1457.00,4371.00,0.00,0.00,4371.00,'{\"sku\":\"VJ-120-A0-A3\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-03-05 00:57:55','2024-03-05 00:57:55'),(60,47,'Botble\\Ecommerce\\Models\\Product',65,'Black Beans',NULL,'grocery/products/product-4.jpg',2,559.00,1118.00,0.00,0.00,1118.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-05 00:57:55','2024-03-05 00:57:55'),(61,48,'Botble\\Ecommerce\\Models\\Product',73,'Green Tea Bags',NULL,'grocery/products/product-2.jpg',2,1078.00,2156.00,0.00,0.00,2156.00,'{\"sku\":\"R9-169-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-05 00:57:55','2024-03-05 00:57:55'),(62,49,'Botble\\Ecommerce\\Models\\Product',84,'Organic Baby Kale',NULL,'grocery/products/product-9.jpg',2,1237.00,2474.00,0.00,0.00,2474.00,'{\"sku\":\"SV-183-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-03-05 00:57:55','2024-03-05 00:57:55');
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
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2156.00,0.00,0.00,0.00,'1','default',NULL,NULL,2156.00,NULL,1,'completed','2024-03-05 00:57:46','2024-02-29 00:57:46','2024-03-05 00:57:46'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,4371.00,0.00,0.00,0.00,NULL,'',NULL,NULL,4371.00,NULL,2,'completed','2024-03-05 00:57:47','2024-02-24 00:57:47','2024-03-05 00:57:47'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,3711.00,0.00,0.00,0.00,'1','default',NULL,NULL,3711.00,NULL,3,'completed','2024-03-05 00:57:47','2024-02-22 08:57:47','2024-03-05 00:57:47'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,7464.00,0.00,0.00,0.00,'1','default',NULL,NULL,7464.00,NULL,4,'completed','2024-03-05 00:57:47','2024-02-27 08:57:47','2024-03-05 00:57:47'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,7285.00,0.00,0.00,0.00,NULL,'',NULL,NULL,7285.00,NULL,5,'completed','2024-03-05 00:57:47','2024-02-24 12:57:47','2024-03-05 00:57:47'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,3308.00,0.00,0.00,0.00,NULL,'',NULL,NULL,3308.00,NULL,6,'completed','2024-03-05 00:57:47','2024-03-01 20:57:47','2024-03-05 00:57:47'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,4112.00,0.00,0.00,0.00,NULL,'',NULL,NULL,4112.00,NULL,7,'completed','2024-03-05 00:57:47','2024-02-22 00:57:47','2024-03-05 00:57:47'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2070.00,0.00,0.00,0.00,'1','default',NULL,NULL,2070.00,NULL,8,'completed','2024-03-05 00:57:48','2024-02-22 00:57:48','2024-03-05 00:57:48'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2846.00,0.00,0.00,0.00,'1','default',NULL,NULL,2846.00,NULL,9,'completed','2024-03-05 00:57:48','2024-02-22 00:57:48','2024-03-05 00:57:48'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,7464.00,0.00,0.00,0.00,'1','default',NULL,NULL,7464.00,NULL,10,'pending',NULL,'2024-02-22 00:57:48','2024-03-05 00:57:48'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,1078.00,0.00,0.00,0.00,'1','default',NULL,NULL,1078.00,NULL,11,'completed','2024-03-05 00:57:48','2024-02-21 06:57:48','2024-03-05 00:57:48'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,6616.00,0.00,0.00,0.00,NULL,'',NULL,NULL,6616.00,NULL,12,'pending',NULL,'2024-02-19 20:57:48','2024-03-05 00:57:48'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,765.00,0.00,0.00,0.00,'1','default',NULL,NULL,765.00,NULL,13,'completed','2024-03-05 00:57:49','2024-02-24 16:57:49','2024-03-05 00:57:49'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,953.00,0.00,0.00,0.00,'1','default',NULL,NULL,953.00,NULL,14,'completed','2024-03-05 00:57:49','2024-02-26 00:57:49','2024-03-05 00:57:49'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2060.00,0.00,0.00,0.00,'1','default',NULL,NULL,2060.00,NULL,15,'completed','2024-03-05 00:57:49','2024-02-24 16:57:49','2024-03-05 00:57:49'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,1457.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1457.00,NULL,16,'completed','2024-03-05 00:57:49','2024-02-26 00:57:49','2024-03-05 00:57:49'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,8280.00,0.00,0.00,0.00,'1','default',NULL,NULL,8280.00,NULL,17,'completed','2024-03-05 00:57:49','2024-03-03 18:57:49','2024-03-05 00:57:49'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,3134.00,0.00,0.00,0.00,'1','default',NULL,NULL,3134.00,NULL,18,'completed','2024-03-05 00:57:49','2024-02-25 06:57:49','2024-03-05 00:57:49'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,1944.00,0.00,0.00,0.00,'1','default',NULL,NULL,1944.00,NULL,19,'completed','2024-03-05 00:57:50','2024-02-22 08:57:50','2024-03-05 00:57:50'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,2687.00,0.00,0.00,0.00,'1','default',NULL,NULL,2687.00,NULL,20,'completed','2024-03-05 00:57:50','2024-03-01 12:57:50','2024-03-05 00:57:50'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,2448.00,0.00,0.00,0.00,'1','default',NULL,NULL,2448.00,NULL,21,'completed','2024-03-05 00:57:50','2024-02-23 04:57:50','2024-03-05 00:57:50'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,1965.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1965.00,NULL,22,'pending',NULL,'2024-02-26 10:57:50','2024-03-05 00:57:50'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,5699.00,0.00,0.00,0.00,'1','default',NULL,NULL,5699.00,NULL,23,'pending',NULL,'2024-03-01 00:57:50','2024-03-05 00:57:50'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,5692.00,0.00,0.00,0.00,'1','default',NULL,NULL,5692.00,NULL,24,'pending',NULL,'2024-02-29 10:57:51','2024-03-05 00:57:51'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,1078.00,0.00,0.00,0.00,'1','default',NULL,NULL,1078.00,NULL,25,'completed','2024-03-05 00:57:51','2024-02-24 20:57:51','2024-03-05 00:57:51'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,3308.00,0.00,0.00,0.00,NULL,'',NULL,NULL,3308.00,NULL,26,'completed','2024-03-05 00:57:51','2024-02-24 20:57:51','2024-03-05 00:57:51'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,6307.00,0.00,0.00,0.00,'1','default',NULL,NULL,6307.00,NULL,27,'completed','2024-03-05 00:57:51','2024-03-03 08:57:51','2024-03-05 00:57:51'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,765.00,0.00,0.00,0.00,'1','default',NULL,NULL,765.00,NULL,28,'completed','2024-03-05 00:57:51','2024-02-27 08:57:51','2024-03-05 00:57:51'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,1055.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1055.00,NULL,29,'completed','2024-03-05 00:57:52','2024-02-28 04:57:52','2024-03-05 00:57:52'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,3812.00,0.00,0.00,0.00,'1','default',NULL,NULL,3812.00,NULL,30,'completed','2024-03-05 00:57:52','2024-02-28 00:57:52','2024-03-05 00:57:52'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,1310.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1310.00,NULL,31,'completed','2024-03-05 00:57:52','2024-03-03 00:57:52','2024-03-05 00:57:52'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,4976.00,0.00,0.00,0.00,'1','default',NULL,NULL,4976.00,NULL,32,'completed','2024-03-05 00:57:52','2024-03-02 08:57:52','2024-03-05 00:57:52'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2457.00,0.00,0.00,0.00,'1','default',NULL,NULL,2457.00,NULL,33,'completed','2024-03-05 00:57:52','2024-03-01 12:57:52','2024-03-05 00:57:52'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,4140.00,0.00,0.00,0.00,'1','default',NULL,NULL,4140.00,NULL,34,'pending',NULL,'2024-03-03 06:57:52','2024-03-05 00:57:52'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,655.00,0.00,0.00,0.00,NULL,'',NULL,NULL,655.00,NULL,35,'completed','2024-03-05 00:57:53','2024-02-28 18:57:53','2024-03-05 00:57:53'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2488.00,0.00,0.00,0.00,'1','default',NULL,NULL,2488.00,NULL,36,'pending',NULL,'2024-02-29 08:57:53','2024-03-05 00:57:53'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,1348.00,0.00,0.00,0.00,'1','default',NULL,NULL,1348.00,NULL,37,'completed','2024-03-05 00:57:53','2024-02-29 12:57:53','2024-03-05 00:57:53'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2457.00,0.00,0.00,0.00,'1','default',NULL,NULL,2457.00,NULL,38,'completed','2024-03-05 00:57:53','2024-03-01 12:57:53','2024-03-05 00:57:53'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,7257.00,0.00,0.00,0.00,'1','default',NULL,NULL,7257.00,NULL,39,'completed','2024-03-05 00:57:53','2024-03-02 02:57:53','2024-03-05 00:57:53'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,7072.00,0.00,0.00,0.00,NULL,'',NULL,NULL,7072.00,NULL,40,'completed','2024-03-05 00:57:53','2024-03-01 16:57:53','2024-03-05 00:57:53'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,820.00,0.00,0.00,0.00,'1','default',NULL,NULL,820.00,NULL,41,'completed','2024-03-05 00:57:54','2024-03-03 08:57:54','2024-03-05 00:57:54'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2859.00,0.00,0.00,0.00,'1','default',NULL,NULL,2859.00,NULL,42,'completed','2024-03-05 00:57:54','2024-03-03 00:57:54','2024-03-05 00:57:54'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,4144.00,0.00,0.00,0.00,'1','default',NULL,NULL,4144.00,NULL,43,'completed','2024-03-05 00:57:54','2024-03-03 16:57:54','2024-03-05 00:57:54'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,4523.00,0.00,0.00,0.00,'1','default',NULL,NULL,4523.00,NULL,44,'pending',NULL,'2024-03-04 18:57:54','2024-03-05 00:57:54'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,6180.00,0.00,0.00,0.00,'1','default',NULL,NULL,6180.00,NULL,45,'completed','2024-03-05 00:57:54','2024-03-03 16:57:54','2024-03-05 00:57:54'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Noe Wehner PhD','',NULL,'viva.kautzer@example.net','+19404906480','42685 Konopelski Manor, Vanborough, California, EE',NULL,4371.00,0.00,0.00,0.00,NULL,'',NULL,NULL,4371.00,NULL,46,'completed','2024-03-05 00:57:55','2024-03-03 08:57:55','2024-03-05 00:57:55'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,1118.00,0.00,0.00,0.00,'1','default',NULL,NULL,1118.00,NULL,47,'completed','2024-03-05 00:57:55','2024-03-04 10:57:55','2024-03-05 00:57:55'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2156.00,0.00,0.00,0.00,'1','default',NULL,NULL,2156.00,NULL,48,'completed','2024-03-05 00:57:55','2024-03-04 06:57:55','2024-03-05 00:57:55'),(49,'Botble\\Ecommerce\\Models\\Order',49,'INV-49','Vivian Abbott IV','',NULL,'hoeger.adella@example.org','+13856998194','975 Rudy Freeway Apt. 359, East Amparo, Oklahoma, BZ',NULL,2474.00,0.00,0.00,0.00,'1','default',NULL,NULL,2474.00,NULL,49,'completed','2024-03-05 00:57:55','2024-03-04 16:57:55','2024-03-05 00:57:55');
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
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
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
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',1,'60264-5582','shipping_address'),(2,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',2,'60264-5582','shipping_address'),(3,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',3,'60264-5582','shipping_address'),(4,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',4,'60264-5582','shipping_address'),(5,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',5,'60264-5582','shipping_address'),(6,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',6,'60264-5582','shipping_address'),(7,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',7,'60264-5582','shipping_address'),(8,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',8,'60264-5582','shipping_address'),(9,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',9,'60264-5582','shipping_address'),(10,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',10,'60264-5582','shipping_address'),(11,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',11,'49928-1742','shipping_address'),(12,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',12,'49928-1742','shipping_address'),(13,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',13,'60264-5582','shipping_address'),(14,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',14,'60264-5582','shipping_address'),(15,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',15,'60264-5582','shipping_address'),(16,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',16,'60264-5582','shipping_address'),(17,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',17,'49928-1742','shipping_address'),(18,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',18,'49928-1742','shipping_address'),(19,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',19,'49928-1742','shipping_address'),(20,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',20,'49928-1742','shipping_address'),(21,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',21,'49928-1742','shipping_address'),(22,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',22,'49928-1742','shipping_address'),(23,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',23,'60264-5582','shipping_address'),(24,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',24,'49928-1742','shipping_address'),(25,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',25,'49928-1742','shipping_address'),(26,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',26,'49928-1742','shipping_address'),(27,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',27,'60264-5582','shipping_address'),(28,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',28,'60264-5582','shipping_address'),(29,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',29,'60264-5582','shipping_address'),(30,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',30,'60264-5582','shipping_address'),(31,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',31,'60264-5582','shipping_address'),(32,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',32,'60264-5582','shipping_address'),(33,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',33,'60264-5582','shipping_address'),(34,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',34,'60264-5582','shipping_address'),(35,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',35,'60264-5582','shipping_address'),(36,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',36,'60264-5582','shipping_address'),(37,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',37,'60264-5582','shipping_address'),(38,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',38,'60264-5582','shipping_address'),(39,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',39,'49928-1742','shipping_address'),(40,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',40,'49928-1742','shipping_address'),(41,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',41,'49928-1742','shipping_address'),(42,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',42,'60264-5582','shipping_address'),(43,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',43,'60264-5582','shipping_address'),(44,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',44,'49928-1742','shipping_address'),(45,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',45,'49928-1742','shipping_address'),(46,'Noe Wehner PhD','+19404906480','viva.kautzer@example.net','EE','California','Vanborough','42685 Konopelski Manor',46,'49928-1742','shipping_address'),(47,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',47,'60264-5582','shipping_address'),(48,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',48,'60264-5582','shipping_address'),(49,'Vivian Abbott IV','+13856998194','hoeger.adella@example.org','BZ','Oklahoma','East Amparo','975 Rudy Freeway Apt. 359',49,'60264-5582','shipping_address');
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
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-29 00:57:46','2024-02-29 00:57:46'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-29 00:57:46','2024-02-29 00:57:46'),(3,'confirm_payment','Payment was confirmed (amount $2,156.00) by %user_name%',0,1,NULL,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-02-24 00:57:47','2024-02-24 00:57:47'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-02-24 00:57:47','2024-02-24 00:57:47'),(8,'confirm_payment','Payment was confirmed (amount $4,371.00) by %user_name%',0,2,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(9,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,2,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-02-22 08:57:47','2024-02-22 08:57:47'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-02-22 08:57:47','2024-02-22 08:57:47'),(12,'confirm_payment','Payment was confirmed (amount $3,711.00) by %user_name%',0,3,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-27 08:57:47','2024-02-27 08:57:47'),(15,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-27 08:57:47','2024-02-27 08:57:47'),(16,'confirm_payment','Payment was confirmed (amount $7,464.00) by %user_name%',0,4,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(17,'create_shipment','Created shipment for order',0,4,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-24 12:57:47','2024-02-24 12:57:47'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-24 12:57:47','2024-02-24 12:57:47'),(21,'confirm_payment','Payment was confirmed (amount $7,285.00) by %user_name%',0,5,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(22,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,5,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-03-01 20:57:47','2024-03-01 20:57:47'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-03-01 20:57:47','2024-03-01 20:57:47'),(25,'confirm_payment','Payment was confirmed (amount $3,308.00) by %user_name%',0,6,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(26,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,6,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-02-22 00:57:47','2024-02-22 00:57:47'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-02-22 00:57:47','2024-02-22 00:57:47'),(29,'confirm_payment','Payment was confirmed (amount $4,112.00) by %user_name%',0,7,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47'),(30,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,7,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(33,'confirm_payment','Payment was confirmed (amount $2,070.00) by %user_name%',0,8,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(37,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(38,'confirm_payment','Payment was confirmed (amount $2,846.00) by %user_name%',0,9,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(39,'create_shipment','Created shipment for order',0,9,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-02-22 00:57:48','2024-02-22 00:57:48'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-21 06:57:48','2024-02-21 06:57:48'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-21 06:57:48','2024-02-21 06:57:48'),(45,'confirm_payment','Payment was confirmed (amount $1,078.00) by %user_name%',0,11,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-02-19 20:57:48','2024-02-19 20:57:48'),(49,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-02-19 20:57:48','2024-02-19 20:57:48'),(50,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-02-24 16:57:49','2024-02-24 16:57:49'),(51,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-02-24 16:57:49','2024-02-24 16:57:49'),(52,'confirm_payment','Payment was confirmed (amount $765.00) by %user_name%',0,13,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(53,'create_shipment','Created shipment for order',0,13,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(54,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-02-26 00:57:49','2024-02-26 00:57:49'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-02-26 00:57:49','2024-02-26 00:57:49'),(57,'confirm_payment','Payment was confirmed (amount $953.00) by %user_name%',0,14,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-02-24 16:57:49','2024-02-24 16:57:49'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-02-24 16:57:49','2024-02-24 16:57:49'),(61,'confirm_payment','Payment was confirmed (amount $2,060.00) by %user_name%',0,15,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-02-26 00:57:49','2024-02-26 00:57:49'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-02-26 00:57:49','2024-02-26 00:57:49'),(65,'confirm_payment','Payment was confirmed (amount $1,457.00) by %user_name%',0,16,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(66,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,16,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-03-03 18:57:49','2024-03-03 18:57:49'),(68,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-03-03 18:57:49','2024-03-03 18:57:49'),(69,'confirm_payment','Payment was confirmed (amount $8,280.00) by %user_name%',0,17,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-02-25 06:57:49','2024-02-25 06:57:49'),(72,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-02-25 06:57:49','2024-02-25 06:57:49'),(73,'confirm_payment','Payment was confirmed (amount $3,134.00) by %user_name%',0,18,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49'),(74,'create_shipment','Created shipment for order',0,18,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-02-22 08:57:50','2024-02-22 08:57:50'),(76,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-02-22 08:57:50','2024-02-22 08:57:50'),(77,'confirm_payment','Payment was confirmed (amount $1,944.00) by %user_name%',0,19,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(78,'create_shipment','Created shipment for order',0,19,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-03-01 12:57:50','2024-03-01 12:57:50'),(80,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-03-01 12:57:50','2024-03-01 12:57:50'),(81,'confirm_payment','Payment was confirmed (amount $2,687.00) by %user_name%',0,20,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(82,'create_shipment','Created shipment for order',0,20,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-02-23 04:57:50','2024-02-23 04:57:50'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-02-23 04:57:50','2024-02-23 04:57:50'),(86,'confirm_payment','Payment was confirmed (amount $2,448.00) by %user_name%',0,21,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(87,'create_shipment','Created shipment for order',0,21,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-02-26 10:57:50','2024-02-26 10:57:50'),(89,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-02-26 10:57:50','2024-02-26 10:57:50'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-03-01 00:57:50','2024-03-01 00:57:50'),(91,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-03-01 00:57:50','2024-03-01 00:57:50'),(92,'create_shipment','Created shipment for order',0,23,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-02-29 10:57:51','2024-02-29 10:57:51'),(94,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-02-29 10:57:51','2024-02-29 10:57:51'),(95,'create_shipment','Created shipment for order',0,24,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-02-24 20:57:51','2024-02-24 20:57:51'),(97,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-02-24 20:57:51','2024-02-24 20:57:51'),(98,'confirm_payment','Payment was confirmed (amount $1,078.00) by %user_name%',0,25,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(99,'create_shipment','Created shipment for order',0,25,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-02-24 20:57:51','2024-02-24 20:57:51'),(101,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-02-24 20:57:51','2024-02-24 20:57:51'),(102,'confirm_payment','Payment was confirmed (amount $3,308.00) by %user_name%',0,26,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(103,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,26,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-03-03 08:57:51','2024-03-03 08:57:51'),(105,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-03-03 08:57:51','2024-03-03 08:57:51'),(106,'confirm_payment','Payment was confirmed (amount $6,307.00) by %user_name%',0,27,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(107,'create_shipment','Created shipment for order',0,27,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-02-27 08:57:51','2024-02-27 08:57:51'),(110,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-02-27 08:57:51','2024-02-27 08:57:51'),(111,'confirm_payment','Payment was confirmed (amount $765.00) by %user_name%',0,28,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51'),(112,'create_shipment','Created shipment for order',0,28,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-02-28 04:57:52','2024-02-28 04:57:52'),(115,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-02-28 04:57:52','2024-02-28 04:57:52'),(116,'confirm_payment','Payment was confirmed (amount $1,055.00) by %user_name%',0,29,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(117,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,29,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-02-28 00:57:52','2024-02-28 00:57:52'),(119,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-02-28 00:57:52','2024-02-28 00:57:52'),(120,'confirm_payment','Payment was confirmed (amount $3,812.00) by %user_name%',0,30,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(121,'create_shipment','Created shipment for order',0,30,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-03-03 00:57:52','2024-03-03 00:57:52'),(123,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-03-03 00:57:52','2024-03-03 00:57:52'),(124,'confirm_payment','Payment was confirmed (amount $1,310.00) by %user_name%',0,31,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(125,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,31,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-03-02 08:57:52','2024-03-02 08:57:52'),(127,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-03-02 08:57:52','2024-03-02 08:57:52'),(128,'confirm_payment','Payment was confirmed (amount $4,976.00) by %user_name%',0,32,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(129,'create_shipment','Created shipment for order',0,32,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-03-01 12:57:52','2024-03-01 12:57:52'),(131,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-03-01 12:57:52','2024-03-01 12:57:52'),(132,'confirm_payment','Payment was confirmed (amount $2,457.00) by %user_name%',0,33,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(133,'create_shipment','Created shipment for order',0,33,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-03-03 06:57:52','2024-03-03 06:57:52'),(135,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-03-03 06:57:52','2024-03-03 06:57:52'),(136,'create_shipment','Created shipment for order',0,34,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(137,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-02-28 18:57:53','2024-02-28 18:57:53'),(139,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-02-28 18:57:53','2024-02-28 18:57:53'),(140,'confirm_payment','Payment was confirmed (amount $655.00) by %user_name%',0,35,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(141,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,35,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-02-29 08:57:53','2024-02-29 08:57:53'),(143,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-02-29 08:57:53','2024-02-29 08:57:53'),(144,'create_shipment','Created shipment for order',0,36,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-02-29 12:57:53','2024-02-29 12:57:53'),(146,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-02-29 12:57:53','2024-02-29 12:57:53'),(147,'confirm_payment','Payment was confirmed (amount $1,348.00) by %user_name%',0,37,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(148,'create_shipment','Created shipment for order',0,37,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-03-01 12:57:53','2024-03-01 12:57:53'),(150,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-03-01 12:57:53','2024-03-01 12:57:53'),(151,'confirm_payment','Payment was confirmed (amount $2,457.00) by %user_name%',0,38,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(152,'create_shipment','Created shipment for order',0,38,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(153,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-03-02 02:57:53','2024-03-02 02:57:53'),(154,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-03-02 02:57:53','2024-03-02 02:57:53'),(155,'confirm_payment','Payment was confirmed (amount $7,257.00) by %user_name%',0,39,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(156,'create_shipment','Created shipment for order',0,39,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(157,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(158,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-03-01 16:57:53','2024-03-01 16:57:53'),(159,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-03-01 16:57:53','2024-03-01 16:57:53'),(160,'confirm_payment','Payment was confirmed (amount $7,072.00) by %user_name%',0,40,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53'),(161,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,40,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-03-03 08:57:54','2024-03-03 08:57:54'),(163,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-03-03 08:57:54','2024-03-03 08:57:54'),(164,'confirm_payment','Payment was confirmed (amount $820.00) by %user_name%',0,41,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(165,'create_shipment','Created shipment for order',0,41,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(166,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-03-03 00:57:54','2024-03-03 00:57:54'),(168,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-03-03 00:57:54','2024-03-03 00:57:54'),(169,'confirm_payment','Payment was confirmed (amount $2,859.00) by %user_name%',0,42,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(170,'create_shipment','Created shipment for order',0,42,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(171,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(172,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-03-03 16:57:54','2024-03-03 16:57:54'),(173,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-03-03 16:57:54','2024-03-03 16:57:54'),(174,'confirm_payment','Payment was confirmed (amount $4,144.00) by %user_name%',0,43,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(175,'create_shipment','Created shipment for order',0,43,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(176,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-03-04 18:57:54','2024-03-04 18:57:54'),(177,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-03-04 18:57:54','2024-03-04 18:57:54'),(178,'create_shipment','Created shipment for order',0,44,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(179,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(180,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-03-03 16:57:54','2024-03-03 16:57:54'),(181,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-03-03 16:57:54','2024-03-03 16:57:54'),(182,'confirm_payment','Payment was confirmed (amount $6,180.00) by %user_name%',0,45,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54'),(183,'create_shipment','Created shipment for order',0,45,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-03-03 08:57:55','2024-03-03 08:57:55'),(185,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-03-03 08:57:55','2024-03-03 08:57:55'),(186,'confirm_payment','Payment was confirmed (amount $4,371.00) by %user_name%',0,46,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(187,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,46,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(188,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-03-04 10:57:55','2024-03-04 10:57:55'),(189,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-03-04 10:57:55','2024-03-04 10:57:55'),(190,'confirm_payment','Payment was confirmed (amount $1,118.00) by %user_name%',0,47,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(191,'create_shipment','Created shipment for order',0,47,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(192,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2024-03-04 06:57:55','2024-03-04 06:57:55'),(193,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2024-03-04 06:57:55','2024-03-04 06:57:55'),(194,'confirm_payment','Payment was confirmed (amount $2,156.00) by %user_name%',0,48,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(195,'create_shipment','Created shipment for order',0,48,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(196,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(197,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2024-03-04 16:57:55','2024-03-04 16:57:55'),(198,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2024-03-04 16:57:55','2024-03-04 16:57:55'),(199,'confirm_payment','Payment was confirmed (amount $2,474.00) by %user_name%',0,49,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(200,'create_shipment','Created shipment for order',0,49,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(201,'update_status','Order confirmed by %user_name%',0,1,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55'),(202,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-03-05 00:57:56','2024-03-05 00:57:56'),(203,'update_status','Order confirmed by %user_name%',0,8,NULL,'2024-03-05 00:57:56','2024-03-05 00:57:56'),(204,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-03-05 00:57:57','2024-03-05 00:57:57'),(205,'update_status','Order confirmed by %user_name%',0,13,NULL,'2024-03-05 00:57:57','2024-03-05 00:57:57'),(206,'update_status','Order confirmed by %user_name%',0,20,NULL,'2024-03-05 00:57:58','2024-03-05 00:57:58'),(207,'update_status','Order confirmed by %user_name%',0,27,NULL,'2024-03-05 00:57:58','2024-03-05 00:57:58'),(208,'update_status','Order confirmed by %user_name%',0,28,NULL,'2024-03-05 00:57:59','2024-03-05 00:57:59'),(209,'update_status','Order confirmed by %user_name%',0,39,NULL,'2024-03-05 00:57:59','2024-03-05 00:57:59'),(210,'update_status','Order confirmed by %user_name%',0,41,NULL,'2024-03-05 00:58:00','2024-03-05 00:58:00'),(211,'update_status','Order confirmed by %user_name%',0,42,NULL,'2024-03-05 00:58:00','2024-03-05 00:58:00'),(212,'update_status','Order confirmed by %user_name%',0,48,NULL,'2024-03-05 00:58:01','2024-03-05 00:58:01');
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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,1078.00,0.00,'{\"sku\":\"R9-169-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,74,'Green Tea Bags','grocery/products/product-8.jpg',1704.00,0,'2024-03-05 00:57:46','2024-03-05 00:57:46','physical',0,NULL),(2,2,3,1457.00,0.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,80,'Quinoa Flour (Digital)','grocery/products/product-6.jpg',1629.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','digital',10,NULL),(3,3,3,1237.00,0.00,'{\"sku\":\"SV-183-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,84,'Organic Baby Kale','grocery/products/product-9.jpg',2592.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','physical',0,NULL),(4,4,3,2488.00,0.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,95,'Whole Pineapple','grocery/products/product-8.jpg',2619.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','physical',0,NULL),(5,5,3,1457.00,0.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,80,'Quinoa Flour (Digital)','grocery/products/product-6.jpg',1629.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','digital',2,NULL),(6,5,2,1457.00,0.00,'{\"sku\":\"VJ-120-A0-A3\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,83,'Quinoa Flour (Digital)','grocery/products/product-8.jpg',1086.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','digital',3,NULL),(7,6,2,1654.00,0.00,'{\"sku\":\"CR-197-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}',NULL,91,'Almond Butter (Digital)','grocery/products/product-8.jpg',1136.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','digital',2,NULL),(8,7,2,2056.00,0.00,'{\"sku\":\"QD-167-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,42,'Quinoa (Digital)','grocery/products/product-10.jpg',1250.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','digital',5,NULL),(9,8,1,2070.00,0.00,'{\"sku\":\"4I-165-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,57,'Organic Chicken Breast','grocery/products/product-5.jpg',751.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','physical',0,NULL),(10,9,2,1423.00,0.00,'{\"sku\":\"0E-168-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,63,'Cucumber','grocery/products/product-3.jpg',1180.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','physical',0,NULL),(11,10,3,2488.00,0.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,95,'Whole Pineapple','grocery/products/product-8.jpg',2619.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','physical',0,NULL),(12,11,1,1078.00,0.00,'{\"sku\":\"R9-169-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,73,'Green Tea Bags','grocery/products/product-2.jpg',852.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','physical',0,NULL),(13,12,3,1654.00,0.00,'{\"sku\":\"CR-197-A0\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,90,'Almond Butter (Digital)','grocery/products/product-9.jpg',1704.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','digital',9,NULL),(14,12,1,1654.00,0.00,'{\"sku\":\"CR-197-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 4 Boxes)\"}',NULL,92,'Almond Butter (Digital)','grocery/products/product-5.jpg',568.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','digital',6,NULL),(15,13,1,765.00,0.00,'{\"sku\":\"EZ-117-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,47,'Greek Yogurt','grocery/products/product-2.jpg',758.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(16,14,1,953.00,0.00,'{\"sku\":\"H2-117-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,69,'Chia Seeds','grocery/products/product-5.jpg',895.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(17,15,1,2060.00,0.00,'{\"sku\":\"UW-200-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,77,'Organic Strawberries','grocery/products/product-3.jpg',549.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(18,16,1,1457.00,0.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,80,'Quinoa Flour (Digital)','grocery/products/product-6.jpg',543.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','digital',3,NULL),(19,17,3,2070.00,0.00,'{\"sku\":\"4I-165-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,57,'Organic Chicken Breast','grocery/products/product-5.jpg',2253.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(20,17,1,2070.00,0.00,'{\"sku\":\"4I-165-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,58,'Organic Chicken Breast','grocery/products/product-1.jpg',751.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(21,18,3,559.00,0.00,'{\"sku\":\"QF-151-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,66,'Black Beans','grocery/products/product-11.jpg',2298.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','physical',0,NULL),(22,18,1,1457.00,0.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,80,'Quinoa Flour (Digital)','grocery/products/product-6.jpg',543.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','digital',4,NULL),(23,19,1,1944.00,0.00,'{\"sku\":\"EQ-193-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,45,'Avocado','grocery/products/product-10.jpg',505.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','physical',0,NULL),(24,20,1,1457.00,0.00,'{\"sku\":\"VJ-120-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,80,'Quinoa Flour (Digital)','grocery/products/product-6.jpg',543.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','digital',2,NULL),(25,20,3,410.00,0.00,'{\"sku\":\"RE-130-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,88,'Sweet Corn','grocery/products/product-5.jpg',1965.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','physical',0,NULL),(26,21,3,816.00,0.00,'{\"sku\":\"QP-143-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,31,'Organic Apples','grocery/products/product-10.jpg',1752.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','physical',0,NULL),(27,22,3,655.00,0.00,'{\"sku\":\"NE-147-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,61,'Extra Virgin Olive Oil (Digital)','grocery/products/product-9.jpg',1707.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','digital',1,NULL),(28,23,3,559.00,0.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,65,'Black Beans','grocery/products/product-4.jpg',2298.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','physical',0,NULL),(29,23,2,1457.00,0.00,'{\"sku\":\"VJ-120-A0-A2\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,82,'Quinoa Flour (Digital)','grocery/products/product-11.jpg',1086.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','digital',8,NULL),(30,23,2,554.00,0.00,'{\"sku\":\"RM-183-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}',NULL,85,'Salad Dressing','grocery/products/product-1.jpg',1730.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','physical',0,NULL),(31,24,2,1423.00,0.00,'{\"sku\":\"0E-168-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,63,'Cucumber','grocery/products/product-3.jpg',1180.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(32,24,2,1423.00,0.00,'{\"sku\":\"0E-168-A0-A2\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,64,'Cucumber','grocery/products/product-8.jpg',1180.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(33,25,1,1078.00,0.00,'{\"sku\":\"R9-169-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,75,'Green Tea Bags','grocery/products/product-3.jpg',852.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(34,26,2,1654.00,0.00,'{\"sku\":\"CR-197-A0\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,90,'Almond Butter (Digital)','grocery/products/product-9.jpg',1136.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','digital',7,NULL),(35,27,1,2419.00,0.00,'{\"sku\":\"J8-189-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,32,'Whole Grain Bread','grocery/products/product-8.jpg',804.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(36,27,2,1944.00,0.00,'{\"sku\":\"EQ-193-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,46,'Avocado','grocery/products/product-3.jpg',1010.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(37,28,1,765.00,0.00,'{\"sku\":\"EZ-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,48,'Greek Yogurt','grocery/products/product-8.jpg',758.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','physical',0,NULL),(38,29,1,1055.00,0.00,'{\"sku\":\"EH-113-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,51,'Organic Cherry Tomatoes (Digital)','grocery/products/product-10.jpg',596.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','digital',2,NULL),(39,30,3,953.00,0.00,'{\"sku\":\"H2-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,68,'Chia Seeds','grocery/products/product-8.jpg',2685.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','physical',0,NULL),(40,30,1,953.00,0.00,'{\"sku\":\"H2-117-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,69,'Chia Seeds','grocery/products/product-5.jpg',895.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','physical',0,NULL),(41,31,2,655.00,0.00,'{\"sku\":\"NE-147-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,60,'Extra Virgin Olive Oil (Digital)','grocery/products/product-3.jpg',1138.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','digital',5,NULL),(42,32,2,2488.00,0.00,'{\"sku\":\"YZ-196-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}',NULL,94,'Whole Pineapple','grocery/products/product-2.jpg',1746.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','physical',0,NULL),(43,33,3,819.00,0.00,'{\"sku\":\"3L-169-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,37,'Organic Spinach','grocery/products/product-6.jpg',2685.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','physical',0,NULL),(44,34,2,2070.00,0.00,'{\"sku\":\"4I-165-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,58,'Organic Chicken Breast','grocery/products/product-1.jpg',1502.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','physical',0,NULL),(45,35,1,655.00,0.00,'{\"sku\":\"NE-147-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,61,'Extra Virgin Olive Oil (Digital)','grocery/products/product-9.jpg',569.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','digital',1,NULL),(46,36,1,2488.00,0.00,'{\"sku\":\"YZ-196-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,95,'Whole Pineapple','grocery/products/product-8.jpg',873.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','physical',0,NULL),(47,37,1,1348.00,0.00,'{\"sku\":\"IE-128-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,34,'Free-Range Eggs','grocery/products/product-8.jpg',648.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','physical',0,NULL),(48,38,3,819.00,0.00,'{\"sku\":\"3L-169-A0-A1\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,38,'Organic Spinach','grocery/products/product-1.jpg',2685.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','physical',0,NULL),(49,39,3,2419.00,0.00,'{\"sku\":\"J8-189-A0-A1\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,33,'Whole Grain Bread','grocery/products/product-4.jpg',2412.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','physical',0,NULL),(50,40,2,1055.00,0.00,'{\"sku\":\"EH-113-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,50,'Organic Cherry Tomatoes (Digital)','grocery/products/product-11.jpg',1192.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','digital',4,NULL),(51,40,3,1654.00,0.00,'{\"sku\":\"CR-197-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}',NULL,91,'Almond Butter (Digital)','grocery/products/product-8.jpg',1704.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','digital',8,NULL),(52,41,2,410.00,0.00,'{\"sku\":\"RE-130-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,88,'Sweet Corn','grocery/products/product-5.jpg',1310.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(53,42,3,953.00,0.00,'{\"sku\":\"H2-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,68,'Chia Seeds','grocery/products/product-8.jpg',2685.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(54,43,2,1457.00,0.00,'{\"sku\":\"VJ-120-A0-A2\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,82,'Quinoa Flour (Digital)','grocery/products/product-11.jpg',1086.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','digital',9,NULL),(55,43,3,410.00,0.00,'{\"sku\":\"RE-130-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,89,'Sweet Corn','grocery/products/product-6.jpg',1965.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(56,44,2,1423.00,0.00,'{\"sku\":\"0E-168-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,62,'Cucumber','grocery/products/product-5.jpg',1180.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(57,44,3,559.00,0.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,65,'Black Beans','grocery/products/product-4.jpg',2298.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(58,45,3,2060.00,0.00,'{\"sku\":\"UW-200-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,79,'Organic Strawberries','grocery/products/product-7.jpg',1647.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','physical',0,NULL),(59,46,3,1457.00,0.00,'{\"sku\":\"VJ-120-A0-A3\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,83,'Quinoa Flour (Digital)','grocery/products/product-8.jpg',1629.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','digital',6,NULL),(60,47,2,559.00,0.00,'{\"sku\":\"QF-151-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,65,'Black Beans','grocery/products/product-4.jpg',1532.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','physical',0,NULL),(61,48,2,1078.00,0.00,'{\"sku\":\"R9-169-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,73,'Green Tea Bags','grocery/products/product-2.jpg',1704.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','physical',0,NULL),(62,49,2,1237.00,0.00,'{\"sku\":\"SV-183-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,84,'Organic Baby Kale','grocery/products/product-9.jpg',1728.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','physical',0,NULL);
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
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
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
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',10,'1','default','completed',2156.00,0.00,0.00,NULL,NULL,0.00,2156.00,1,NULL,1,'2024-03-05 00:57:55','dISuxLKohoVRagi5qO2FWGrsZE7Dg',1,'2024-02-29 00:57:46','2024-03-05 00:57:55',6,NULL),(2,'#10000002',10,NULL,'','completed',4371.00,0.00,0.00,NULL,NULL,0.00,4371.00,1,NULL,1,'2024-03-05 00:57:47','Fm0Mn6wCefwBOIwawLqcQOesSKueL',2,'2024-02-24 00:57:47','2024-03-05 00:57:47',4,NULL),(3,'#10000003',10,'1','default','pending',3711.00,0.00,0.00,NULL,NULL,0.00,3711.00,1,NULL,1,NULL,'Ip4ax3BKP6Z3Jjf6U98gitgZNpuKs',3,'2024-02-22 08:57:47','2024-03-05 00:57:47',2,NULL),(4,'#10000004',10,'1','default','completed',7464.00,0.00,0.00,NULL,NULL,0.00,7464.00,1,NULL,1,'2024-03-05 00:57:56','vVubW6avMEEh5EGJzwMT9QGOFu5gO',4,'2024-02-27 08:57:47','2024-03-05 00:57:56',3,NULL),(5,'#10000005',10,NULL,'','completed',7285.00,0.00,0.00,NULL,NULL,0.00,7285.00,1,NULL,1,'2024-03-05 00:57:47','KLTfFHGOyujxAwJ68ssgLmrh6BAI4',5,'2024-02-24 12:57:47','2024-03-05 00:57:47',4,NULL),(6,'#10000006',10,NULL,'','completed',3308.00,0.00,0.00,NULL,NULL,0.00,3308.00,1,NULL,1,'2024-03-05 00:57:47','WsdYkzeBkEbMvp8dLYfAmRzOJFu81',6,'2024-03-01 20:57:47','2024-03-05 00:57:47',3,NULL),(7,'#10000007',10,NULL,'','completed',4112.00,0.00,0.00,NULL,NULL,0.00,4112.00,1,NULL,1,'2024-03-05 00:57:48','z4uSXJ0Noq0nAzYSbb3yQiyQbzg51',7,'2024-02-22 00:57:47','2024-03-05 00:57:48',5,NULL),(8,'#10000008',10,'1','default','completed',2070.00,0.00,0.00,NULL,NULL,0.00,2070.00,1,NULL,1,'2024-03-05 00:57:56','IS1oIxpI0MdjnBcD2ySNLK9sYTMjd',8,'2024-02-22 00:57:48','2024-03-05 00:57:56',1,NULL),(9,'#10000009',10,'1','default','pending',2846.00,0.00,0.00,NULL,NULL,0.00,2846.00,1,NULL,1,NULL,'l4Gti8uPxrBp62aEGjJQ7RjTWexHT',9,'2024-02-22 00:57:48','2024-03-05 00:57:48',4,NULL),(10,'#10000010',10,'1','default','pending',7464.00,0.00,0.00,NULL,NULL,0.00,7464.00,1,NULL,1,NULL,'ae4bWb8loqIiiwFctOK2dwreKop71',10,'2024-02-22 00:57:48','2024-03-05 00:57:48',3,NULL),(11,'#10000011',9,'1','default','completed',1078.00,0.00,0.00,NULL,NULL,0.00,1078.00,1,NULL,1,'2024-03-05 00:57:57','UCZO8mlIiw0mIap5pAeu7eHig7DmE',11,'2024-02-21 06:57:48','2024-03-05 00:57:57',6,NULL),(12,'#10000012',9,NULL,'','pending',6616.00,0.00,0.00,NULL,NULL,0.00,6616.00,1,NULL,1,NULL,'Q56TS4KKNMOhTtLyTHDvqTsLBnRRZ',12,'2024-02-19 20:57:48','2024-03-05 00:57:48',3,NULL),(13,'#10000013',10,'1','default','completed',765.00,0.00,0.00,NULL,NULL,0.00,765.00,1,NULL,1,'2024-03-05 00:57:57','MNZuXSlVpOZWFNicbW3A2R3bh4TTk',13,'2024-02-24 16:57:49','2024-03-05 00:57:57',2,NULL),(14,'#10000014',10,'1','default','pending',953.00,0.00,0.00,NULL,NULL,0.00,953.00,1,NULL,1,NULL,'nfA6FAj0RVXPGnlJQm8KigCuI9xZM',14,'2024-02-26 00:57:49','2024-03-05 00:57:49',7,NULL),(15,'#10000015',10,'1','default','pending',2060.00,0.00,0.00,NULL,NULL,0.00,2060.00,1,NULL,1,NULL,'ezQj4HcCHBPLqzyOoSPinlUcavZuT',15,'2024-02-24 16:57:49','2024-03-05 00:57:49',1,NULL),(16,'#10000016',10,NULL,'','completed',1457.00,0.00,0.00,NULL,NULL,0.00,1457.00,1,NULL,1,'2024-03-05 00:57:49','JHmEdsSZN8aTK6PDuYY1LKKVRmyL3',16,'2024-02-26 00:57:49','2024-03-05 00:57:49',4,NULL),(17,'#10000017',9,'1','default','pending',8280.00,0.00,0.00,NULL,NULL,0.00,8280.00,1,NULL,1,NULL,'EGbMru8wAwmV3yrecZuVxpl0YjmeM',17,'2024-03-03 18:57:49','2024-03-05 00:57:49',1,NULL),(18,'#10000018',9,'1','default','pending',3134.00,0.00,0.00,NULL,NULL,0.00,3134.00,1,NULL,1,NULL,'e7isx2DK1Qf7T5LBl6qtuO7eYSCk5',18,'2024-02-25 06:57:49','2024-03-05 00:57:49',4,NULL),(19,'#10000019',9,'1','default','pending',1944.00,0.00,0.00,NULL,NULL,0.00,1944.00,1,NULL,1,NULL,'bzUmDdvlBqfRZ5opqMU8qAEDKgxq4',19,'2024-02-22 08:57:50','2024-03-05 00:57:50',1,NULL),(20,'#10000020',9,'1','default','completed',2687.00,0.00,0.00,NULL,NULL,0.00,2687.00,1,NULL,1,'2024-03-05 00:57:58','gM7WKi8m30R8MW5hdgpUvPO3P5lWe',20,'2024-03-01 12:57:50','2024-03-05 00:57:58',4,NULL),(21,'#10000021',9,'1','default','pending',2448.00,0.00,0.00,NULL,NULL,0.00,2448.00,1,NULL,1,NULL,'C6ra4dOHlnRDoFrJ778PghRj5dD0a',21,'2024-02-23 04:57:50','2024-03-05 00:57:50',5,NULL),(22,'#10000022',9,NULL,'','pending',1965.00,0.00,0.00,NULL,NULL,0.00,1965.00,1,NULL,1,NULL,'VF3p0vvqouHLtTY8stxKYljskcTl0',22,'2024-02-26 10:57:50','2024-03-05 00:57:50',4,NULL),(23,'#10000023',10,'1','default','pending',5699.00,0.00,0.00,NULL,NULL,0.00,5699.00,1,NULL,1,NULL,'P0eevoLhkgZvLUWORoUT2lXdNHsVo',23,'2024-03-01 00:57:50','2024-03-05 00:57:50',4,NULL),(24,'#10000024',9,'1','default','pending',5692.00,0.00,0.00,NULL,NULL,0.00,5692.00,1,NULL,1,NULL,'yt8yLWhVwIC0rkFVPGB9sEWYbxtXy',24,'2024-02-29 10:57:51','2024-03-05 00:57:51',4,NULL),(25,'#10000025',9,'1','default','pending',1078.00,0.00,0.00,NULL,NULL,0.00,1078.00,1,NULL,1,NULL,'ZtP0rY4JSOmX8TNP7dZMcWiWiIyLD',25,'2024-02-24 20:57:51','2024-03-05 00:57:51',6,NULL),(26,'#10000026',9,NULL,'','completed',3308.00,0.00,0.00,NULL,NULL,0.00,3308.00,1,NULL,1,'2024-03-05 00:57:51','jl1DVbzk04PZz9YmZkJjqPoRXEMur',26,'2024-02-24 20:57:51','2024-03-05 00:57:51',3,NULL),(27,'#10000027',10,'1','default','completed',6307.00,0.00,0.00,NULL,NULL,0.00,6307.00,1,NULL,1,'2024-03-05 00:57:58','GgPqbFY97kcOEmsF5dFnkSJg42gym',27,'2024-03-03 08:57:51','2024-03-05 00:57:58',1,NULL),(28,'#10000028',10,'1','default','completed',765.00,0.00,0.00,NULL,NULL,0.00,765.00,1,NULL,1,'2024-03-05 00:57:59','6ezuY8z1P9m0DYmsZ79Zsq2rsiwR6',28,'2024-02-27 08:57:51','2024-03-05 00:57:59',2,NULL),(29,'#10000029',10,NULL,'','completed',1055.00,0.00,0.00,NULL,NULL,0.00,1055.00,1,NULL,1,'2024-03-05 00:57:52','MCdkhTwtqQbv53pgTbY2Jrs00uprR',29,'2024-02-28 04:57:52','2024-03-05 00:57:52',3,NULL),(30,'#10000030',10,'1','default','pending',3812.00,0.00,0.00,NULL,NULL,0.00,3812.00,1,NULL,1,NULL,'GAwlR6IcIAZ7yhn8n3mbfcdgdoUDd',30,'2024-02-28 00:57:52','2024-03-05 00:57:52',7,NULL),(31,'#10000031',10,NULL,'','completed',1310.00,0.00,0.00,NULL,NULL,0.00,1310.00,1,NULL,1,'2024-03-05 00:57:52','rhrluFlfWh4K5XuvNzSQ1EiEbH60i',31,'2024-03-03 00:57:52','2024-03-05 00:57:52',4,NULL),(32,'#10000032',10,'1','default','pending',4976.00,0.00,0.00,NULL,NULL,0.00,4976.00,1,NULL,1,NULL,'oufKMtYG4rcuzwIQG35Gu5OgI7Tnh',32,'2024-03-02 08:57:52','2024-03-05 00:57:52',3,NULL),(33,'#10000033',10,'1','default','pending',2457.00,0.00,0.00,NULL,NULL,0.00,2457.00,1,NULL,1,NULL,'zwwFE6OGFUe1opIRd4JiX3skWe9A5',33,'2024-03-01 12:57:52','2024-03-05 00:57:52',7,NULL),(34,'#10000034',10,'1','default','completed',4140.00,0.00,0.00,NULL,NULL,0.00,4140.00,1,NULL,1,'2024-03-05 00:57:53','UcoUAFqAyKtNCWeWkODSJskW1OuK8',34,'2024-03-03 06:57:52','2024-03-05 00:57:53',1,NULL),(35,'#10000035',10,NULL,'','completed',655.00,0.00,0.00,NULL,NULL,0.00,655.00,1,NULL,1,'2024-03-05 00:57:53','U9hNEP6OWzuGtDkDBcjoRFAHJe6wL',35,'2024-02-28 18:57:53','2024-03-05 00:57:53',4,NULL),(36,'#10000036',10,'1','default','pending',2488.00,0.00,0.00,NULL,NULL,0.00,2488.00,1,NULL,1,NULL,'Ec5W0Ov4diVuoD7sPqZpXsd2F2Iky',36,'2024-02-29 08:57:53','2024-03-05 00:57:53',3,NULL),(37,'#10000037',10,'1','default','pending',1348.00,0.00,0.00,NULL,NULL,0.00,1348.00,1,NULL,1,NULL,'nXTliPkaLj6DjCVaLZwcankm2i6P8',37,'2024-02-29 12:57:53','2024-03-05 00:57:53',2,NULL),(38,'#10000038',10,'1','default','pending',2457.00,0.00,0.00,NULL,NULL,0.00,2457.00,1,NULL,1,NULL,'l9xssOHKrJolCxxwlwiHsDclY5USV',38,'2024-03-01 12:57:53','2024-03-05 00:57:53',7,NULL),(39,'#10000039',9,'1','default','completed',7257.00,0.00,0.00,NULL,NULL,0.00,7257.00,1,NULL,1,'2024-03-05 00:57:59','mNWxRL70VmVFBZQPvr9sgvZcT4oPB',39,'2024-03-02 02:57:53','2024-03-05 00:57:59',1,NULL),(40,'#10000040',9,NULL,'','completed',7072.00,0.00,0.00,NULL,NULL,0.00,7072.00,1,NULL,1,'2024-03-05 00:57:54','vaL6QWSTSCKjVAzLRiMtnM3btpxFB',40,'2024-03-01 16:57:53','2024-03-05 00:57:54',3,NULL),(41,'#10000041',9,'1','default','completed',820.00,0.00,0.00,NULL,NULL,0.00,820.00,1,NULL,1,'2024-03-05 00:58:00','aLbty9LPRE4O0KiVllX4COqPFF0al',41,'2024-03-03 08:57:54','2024-03-05 00:58:00',4,NULL),(42,'#10000042',10,'1','default','completed',2859.00,0.00,0.00,NULL,NULL,0.00,2859.00,1,NULL,1,'2024-03-05 00:58:00','jwZNWoiqdStKltXZr8ZziEhKTdw3b',42,'2024-03-03 00:57:54','2024-03-05 00:58:00',7,NULL),(43,'#10000043',10,'1','default','pending',4144.00,0.00,0.00,NULL,NULL,0.00,4144.00,1,NULL,1,NULL,'S16Zo7bIspcya2f6CUo6wzKfXQpLd',43,'2024-03-03 16:57:54','2024-03-05 00:57:54',4,NULL),(44,'#10000044',9,'1','default','completed',4523.00,0.00,0.00,NULL,NULL,0.00,4523.00,1,NULL,1,'2024-03-05 00:57:54','FZxQqrlIWTmeINdVH4oggpi5CNCSW',44,'2024-03-04 18:57:54','2024-03-05 00:57:54',4,NULL),(45,'#10000045',9,'1','default','pending',6180.00,0.00,0.00,NULL,NULL,0.00,6180.00,1,NULL,1,NULL,'nJji783AhGLACMY3Vr7SRFDk7t0EZ',45,'2024-03-03 16:57:54','2024-03-05 00:57:54',1,NULL),(46,'#10000046',9,NULL,'','completed',4371.00,0.00,0.00,NULL,NULL,0.00,4371.00,1,NULL,1,'2024-03-05 00:57:55','nLDRHyMnXUiHlOiAPOKDVEkA4V9fP',46,'2024-03-03 08:57:55','2024-03-05 00:57:55',4,NULL),(47,'#10000047',10,'1','default','pending',1118.00,0.00,0.00,NULL,NULL,0.00,1118.00,1,NULL,1,NULL,'erSVQRkn5dy2DPeNLJDFSOfzhcsxF',47,'2024-03-04 10:57:55','2024-03-05 00:57:55',4,NULL),(48,'#10000048',10,'1','default','completed',2156.00,0.00,0.00,NULL,NULL,0.00,2156.00,1,NULL,1,'2024-03-05 00:58:01','gBNkcEUjFSPtpvqj013MQ2bqMvF2y',48,'2024-03-04 06:57:55','2024-03-05 00:58:01',6,NULL),(49,'#10000049',10,'1','default','pending',2474.00,0.00,0.00,NULL,NULL,0.00,2474.00,1,NULL,1,NULL,'DGmb4hDEjhJCEBLtf7jFJB92NNlnT',49,'2024-03-04 16:57:55','2024-03-05 00:57:55',2,NULL);
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
  `display_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-03-05 00:57:34','2024-03-05 00:57:34',0),(2,'Size','size','text',1,1,1,'published',1,'2024-03-05 00:57:34','2024-03-05 00:57:34',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-03-05 00:57:34','2024-03-05 00:57:34',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-03-05 00:57:34','2024-03-05 00:57:34',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(6,2,'S','s',NULL,NULL,1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(7,2,'M','m',NULL,NULL,0,2,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(8,2,'L','l',NULL,NULL,0,3,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-03-05 00:57:34','2024-03-05 00:57:34'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-03-05 00:57:34','2024-03-05 00:57:34');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_categories` VALUES (1,'Frozen Food',0,NULL,'published',0,'grocery/product-categories/1.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(2,'Baby Food',1,NULL,'published',0,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(3,'Strawberry',1,NULL,'published',1,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(4,'Ice Cream',1,NULL,'published',2,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(5,'Meat & Seafood',0,NULL,'published',1,'grocery/product-categories/2.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(6,'Chicken',5,NULL,'published',0,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(7,'Fish',5,NULL,'published',1,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(8,'Beef',5,NULL,'published',2,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(9,'Milk & Dairy',0,NULL,'published',2,'grocery/product-categories/3.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(10,'Milk',9,NULL,'published',0,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(11,'Cheese',9,NULL,'published',1,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(12,'Yogurt',9,NULL,'published',2,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(13,'Beverages',0,NULL,'published',3,'grocery/product-categories/4.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(14,'Vegetables',0,NULL,'published',4,'grocery/product-categories/5.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(15,'Carrot',14,NULL,'published',0,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(16,'Tomato',14,NULL,'published',1,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(17,'Potato',14,NULL,'published',2,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(18,'Fruits',0,NULL,'published',5,'grocery/product-categories/6.jpg',0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(19,'Banana',18,NULL,'published',0,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL),(20,'Mango',18,NULL,'published',1,NULL,0,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,4),(1,5),(1,12),(1,14),(1,16),(1,26),(1,27),(2,3),(2,7),(2,10),(2,20),(2,23),(3,5),(3,11),(3,19),(3,21),(3,23),(3,27),(3,28),(4,3),(4,4),(4,6),(4,9),(4,11),(4,12),(4,20),(4,29),(5,1),(5,17),(6,13),(6,14),(6,20),(6,23),(6,29),(6,30),(7,11),(7,17),(7,25),(7,26),(7,28),(8,3),(8,6),(8,16),(8,19),(8,22),(9,13),(9,15),(9,22),(9,23),(9,24),(9,29),(10,4),(10,5),(10,17),(10,18),(10,22),(10,25),(11,2),(11,15),(11,24),(11,25),(12,8),(12,9),(12,13),(12,24),(12,25),(12,26),(12,30),(13,5),(13,6),(13,8),(13,12),(13,17),(13,27),(14,1),(14,2),(14,4),(14,7),(14,9),(14,10),(14,16),(14,18),(15,8),(15,15),(15,16),(15,18),(15,19),(15,21),(15,29),(16,1),(16,6),(16,10),(16,15),(16,21),(16,28),(17,7),(17,12),(17,14),(17,24),(18,3),(18,7),(18,9),(18,10),(18,14),(18,19),(18,20),(18,30),(19,2),(19,8),(19,11),(19,28),(20,1),(20,13),(20,18),(20,21),(20,22),(20,26),(20,27),(20,30);
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
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,6),(1,11),(1,22),(1,30),(2,9),(2,10),(2,13),(2,16),(2,19),(2,23),(2,26),(2,29),(3,2),(3,3),(3,5),(3,7),(3,12),(3,14),(3,18),(3,20),(3,21),(3,24),(3,28),(4,1),(4,8),(4,15),(4,17),(4,25),(4,27);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-03-05 00:57:42','2024-03-05 00:57:42',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-03-05 00:57:42','2024-03-05 00:57:42',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-03-05 00:57:42','2024-03-05 00:57:42',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-03-05 00:57:42','2024-03-05 00:57:42',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,7,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,9,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,11,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,4,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,2,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,14,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,5,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,16,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,9,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,7,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,13,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,6,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,9,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,18,0,0.00,'fixed',1),(24,4,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,11,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,13,0,0.00,'fixed',1),(25,14,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,18,0,0.00,'fixed',1),(25,19,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,6,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,16,0,0.00,'fixed',1),(26,18,0,0.00,'fixed',1),(26,19,0,0.00,'fixed',1),(27,2,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,13,0,0.00,'fixed',1),(27,15,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(28,9,0,0.00,'fixed',1),(28,10,0,0.00,'fixed',1),(28,14,0,0.00,'fixed',1),(28,16,0,0.00,'fixed',1),(28,17,0,0.00,'fixed',1),(28,19,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,3,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,16,0,0.00,'fixed',1),(30,2,0,0.00,'fixed',1),(30,3,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,9,0,0.00,'fixed',1),(30,12,0,0.00,'fixed',1),(30,13,0,0.00,'fixed',1),(30,18,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,36,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(2,36,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(3,36,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(4,36,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(5,42,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(6,42,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(7,42,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(8,42,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(9,43,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(10,43,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(11,43,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(12,43,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(13,50,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(14,50,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(15,50,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(16,50,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(17,50,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(18,50,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(19,50,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(20,50,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(21,51,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(22,51,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(23,51,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(24,51,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(25,51,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(26,51,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(27,51,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(28,51,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(29,52,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(30,52,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(31,52,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(32,52,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(33,52,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(34,52,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(35,52,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(36,52,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(37,59,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(38,59,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(39,59,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(40,59,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(41,59,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(42,59,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(43,59,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(44,59,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(45,60,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(46,60,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(47,60,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(48,60,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(49,60,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(50,60,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(51,60,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(52,60,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(53,61,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(54,61,'product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(55,61,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(56,61,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(57,61,'product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(58,61,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(59,61,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(60,61,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(61,70,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(62,70,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(63,70,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(64,70,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(65,70,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(66,70,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(67,70,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(68,71,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(69,71,'product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(70,71,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(71,71,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(72,71,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(73,71,'product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(74,71,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:43\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:43','2024-03-05 00:57:43'),(75,80,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(76,80,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(77,80,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(78,80,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(79,80,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(80,80,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(81,80,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(82,81,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(83,81,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(84,81,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(85,81,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(86,81,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(87,81,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(88,81,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(89,82,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(90,82,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(91,82,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(92,82,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(93,82,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(94,82,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(95,82,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(96,83,'product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(97,83,'product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(98,83,'product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(99,83,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(100,83,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(101,83,'product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(102,83,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(103,90,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(104,90,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(105,90,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(106,91,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(107,91,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(108,91,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(109,92,'product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(110,92,'product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44'),(111,92,'product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-05 07:57:44\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-03-05 00:57:44','2024-03-05 00:57:44');
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
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,27),(2,21),(2,24),(2,30),(3,9),(3,12),(3,15),(3,18);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#cb4321','published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,'New','#00c9a7','published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,'Sale','#ba591d','published','2024-03-05 00:57:34','2024-03-05 00:57:34');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(1,5),(2,1),(2,3),(2,6),(3,1),(3,3),(3,6),(4,1),(4,4),(4,6),(5,1),(5,2),(5,5),(6,1),(6,4),(6,5),(7,2),(7,4),(7,5),(8,1),(8,2),(8,5),(9,1),(9,2),(9,3),(10,1),(10,3),(10,4),(11,1),(11,2),(11,5),(12,1),(12,2),(12,6),(13,1),(13,5),(13,6),(14,3),(14,4),(14,5),(15,1),(15,2),(15,4),(16,2),(16,3),(16,5),(17,1),(17,3),(17,6),(18,1),(18,3),(18,6),(19,1),(19,3),(19,4),(20,1),(20,4),(20,6),(21,1),(21,3),(21,6),(22,3),(22,4),(22,6),(23,1),(23,5),(23,6),(24,1),(24,2),(24,5),(25,2),(25,3),(25,6),(26,1),(26,3),(26,6),(27,2),(27,3),(27,4),(28,2),(28,5),(28,6),(29,2),(29,3),(29,5),(30,2),(30,4),(30,5);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(2,'Mobile',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(3,'Iphone',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(4,'Printer',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(5,'Office',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(6,'IT',NULL,'published','2024-03-05 00:57:37','2024-03-05 00:57:37');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(11,1,6),(13,1,7),(19,1,10),(39,1,20),(43,1,22),(65,1,33),(67,1,34),(73,1,37),(79,1,40),(93,1,47),(3,2,2),(51,2,26),(59,2,30),(83,2,42),(91,2,46),(95,2,48),(97,2,49),(23,3,12),(25,3,13),(33,3,17),(35,3,18),(41,3,21),(55,3,28),(57,3,29),(75,3,38),(81,3,41),(89,3,45),(5,4,3),(7,4,4),(9,4,5),(29,4,15),(31,4,16),(47,4,24),(53,4,27),(61,4,31),(63,4,32),(71,4,36),(77,4,39),(85,4,43),(87,4,44),(15,5,8),(17,5,9),(21,5,11),(27,5,14),(37,5,19),(45,5,23),(49,5,25),(69,5,35),(16,6,8),(28,6,14),(52,6,26),(56,6,28),(62,6,31),(64,6,32),(70,6,35),(84,6,42),(92,6,46),(94,6,47),(96,6,48),(24,7,12),(26,7,13),(32,7,16),(40,7,20),(46,7,23),(66,7,33),(90,7,45),(8,8,4),(10,8,5),(12,8,6),(14,8,7),(38,8,19),(44,8,22),(50,8,25),(58,8,29),(60,8,30),(72,8,36),(82,8,41),(4,9,2),(6,9,3),(18,9,9),(34,9,17),(42,9,21),(48,9,24),(68,9,34),(78,9,39),(80,9,40),(88,9,44),(2,10,1),(20,10,10),(22,10,11),(30,10,15),(36,10,18),(54,10,27),(74,10,37),(76,10,38),(86,10,43),(98,10,49),(115,11,58),(129,11,65),(99,12,50),(105,12,53),(107,12,54),(111,12,56),(117,12,59),(131,12,66),(109,13,55),(113,13,57),(123,13,62),(125,13,63),(127,13,64),(121,14,61),(101,15,51),(103,15,52),(119,15,60),(102,16,51),(106,16,53),(110,16,55),(112,16,56),(126,16,63),(128,16,64),(130,16,65),(114,17,57),(116,17,58),(132,18,66),(100,19,50),(108,19,54),(118,19,59),(120,19,60),(122,19,61),(124,19,62),(104,20,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,31,1,1),(2,32,2,1),(3,33,2,0),(4,34,3,1),(5,35,3,0),(6,36,4,1),(7,37,5,1),(8,38,5,0),(9,39,5,0),(10,40,6,1),(11,41,7,1),(12,42,8,1),(13,43,8,0),(14,44,9,1),(15,45,9,0),(16,46,9,0),(17,47,10,1),(18,48,10,0),(19,49,11,1),(20,50,12,1),(21,51,12,0),(22,52,12,0),(23,53,13,1),(24,54,13,0),(25,55,14,1),(26,56,14,0),(27,57,15,1),(28,58,15,0),(29,59,16,1),(30,60,16,0),(31,61,16,0),(32,62,17,1),(33,63,17,0),(34,64,17,0),(35,65,18,1),(36,66,18,0),(37,67,19,1),(38,68,19,0),(39,69,19,0),(40,70,20,1),(41,71,20,0),(42,72,21,1),(43,73,22,1),(44,74,22,0),(45,75,22,0),(46,76,22,0),(47,77,23,1),(48,78,23,0),(49,79,23,0),(50,80,24,1),(51,81,24,0),(52,82,24,0),(53,83,24,0),(54,84,25,1),(55,85,26,1),(56,86,26,0),(57,87,27,1),(58,88,27,0),(59,89,27,0),(60,90,28,1),(61,91,28,0),(62,92,28,0),(63,93,29,1),(64,94,29,0),(65,95,29,0),(66,96,30,1);
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
  `date` date NOT NULL DEFAULT '2024-03-05',
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Organic Apples','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-5.jpg\"]','QP-143-A0',0,12,0,1,0,2,0,0,816,NULL,NULL,NULL,12.00,10.00,13.00,584.00,NULL,179146,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(2,'Whole Grain Bread','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-5.jpg\"]','J8-189-A0',0,20,0,1,1,3,0,0,2419,NULL,NULL,NULL,11.00,16.00,11.00,804.00,NULL,57758,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(3,'Free-Range Eggs','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-2.jpg\"]','IE-128-A0',0,13,0,1,1,1,0,0,1348,NULL,NULL,NULL,18.00,10.00,19.00,648.00,NULL,166841,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(4,'Fresh Salmon Fillet (Digital)','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-8.jpg\"]','MR-141-A0',0,12,0,1,1,2,0,0,872,697.6,NULL,NULL,10.00,10.00,12.00,843.00,NULL,57496,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(5,'Organic Spinach','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]','3L-169-A0',0,20,0,1,0,4,0,0,819,NULL,NULL,NULL,13.00,10.00,18.00,895.00,NULL,145541,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(6,'Grass-Fed Ground Beef','Green tea bags for a soothing and antioxidant-rich beverage.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-1.jpg\"]','7T-181-A0',0,16,0,1,0,3,0,0,610,NULL,NULL,NULL,17.00,12.00,13.00,616.00,NULL,51311,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(7,'Almond Milk','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\"]','XD-161-A0',0,10,0,1,1,1,0,0,1141,NULL,NULL,NULL,18.00,11.00,19.00,688.00,NULL,108550,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(8,'Quinoa (Digital)','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\"]','QD-167-A0',0,13,0,1,0,3,0,0,2056,1809.28,NULL,NULL,18.00,13.00,14.00,625.00,NULL,161370,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(9,'Avocado','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]','EQ-193-A0',0,16,0,1,1,4,0,0,1944,NULL,NULL,NULL,10.00,20.00,10.00,505.00,NULL,195497,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(10,'Greek Yogurt','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\"]','EZ-117-A0',0,13,0,1,1,5,0,0,765,NULL,NULL,NULL,17.00,17.00,19.00,758.00,NULL,80516,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(11,'Sweet Potatoes','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]','ZO-146-A0',0,13,0,1,1,1,0,0,1661,NULL,NULL,NULL,20.00,17.00,13.00,563.00,NULL,119895,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(12,'Organic Cherry Tomatoes (Digital)','Green tea bags for a soothing and antioxidant-rich beverage.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-2.jpg\"]','EH-113-A0',0,18,0,1,1,3,0,0,1055,812.35,NULL,NULL,14.00,16.00,10.00,596.00,NULL,164528,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(13,'Honeycrisp Apples','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-2.jpg\"]','Y1-121-A0',0,13,0,1,0,3,0,0,2135,NULL,NULL,NULL,14.00,18.00,10.00,775.00,NULL,168978,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(14,'Brown Rice','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-4.jpg\"]','R2-182-A0',0,17,0,1,0,5,0,0,1132,NULL,NULL,NULL,15.00,16.00,13.00,857.00,NULL,186254,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(15,'Organic Chicken Breast','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]','4I-165-A0',0,12,0,1,0,5,0,0,2070,NULL,NULL,NULL,17.00,13.00,10.00,751.00,NULL,77166,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(16,'Extra Virgin Olive Oil (Digital)','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-2.jpg\"]','NE-147-A0',0,20,0,1,0,2,0,0,655,478.15,NULL,NULL,11.00,19.00,19.00,569.00,NULL,133738,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(17,'Cucumber','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\"]','0E-168-A0',0,13,0,1,1,1,0,0,1423,NULL,NULL,NULL,18.00,11.00,19.00,590.00,NULL,175975,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(18,'Black Beans','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-1.jpg\"]','QF-151-A0',0,20,0,1,1,1,0,0,559,NULL,NULL,NULL,12.00,14.00,16.00,766.00,NULL,67229,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(19,'Chia Seeds','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]','H2-117-A0',0,17,0,1,1,4,0,0,953,NULL,NULL,NULL,18.00,14.00,12.00,895.00,NULL,114059,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(20,'Whole Wheat Pasta (Digital)','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]','FN-135-A0',0,16,0,1,0,4,0,0,1230,971.7,NULL,NULL,12.00,12.00,16.00,683.00,NULL,176820,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(21,'Mixed Nuts','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]','ER-195-A0',0,17,0,1,1,4,0,0,1986,NULL,NULL,NULL,20.00,17.00,17.00,781.00,NULL,109897,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(22,'Green Tea Bags','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-4.jpg\"]','R9-169-A0',0,14,0,1,1,3,0,0,1078,NULL,NULL,NULL,15.00,15.00,10.00,852.00,NULL,21411,'2024-03-05 00:57:42','2024-03-05 00:57:43','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(23,'Organic Strawberries','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-1.jpg\"]','UW-200-A0',0,10,0,1,1,1,0,0,2060,NULL,NULL,NULL,15.00,13.00,20.00,549.00,NULL,174272,'2024-03-05 00:57:42','2024-03-05 00:57:44','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(24,'Quinoa Flour (Digital)','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\"]','VJ-120-A0',0,13,0,1,1,5,0,0,1457,1136.46,NULL,NULL,14.00,12.00,20.00,543.00,NULL,61751,'2024-03-05 00:57:42','2024-03-05 00:57:44','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(25,'Organic Baby Kale','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]','SV-183-A0',0,12,0,1,1,1,0,0,1237,NULL,NULL,NULL,10.00,13.00,16.00,864.00,NULL,174190,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(26,'Salad Dressing','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-10.jpg\"]','RM-183-A0',0,10,0,1,0,5,0,0,554,NULL,NULL,NULL,15.00,18.00,14.00,865.00,NULL,170762,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(27,'Sweet Corn','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-1.jpg\"]','RE-130-A0',0,14,0,1,0,4,0,0,410,NULL,NULL,NULL,19.00,16.00,15.00,655.00,NULL,189737,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(28,'Almond Butter (Digital)','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\"]','CR-197-A0',0,12,0,1,0,1,0,0,1654,1223.96,NULL,NULL,12.00,16.00,15.00,568.00,NULL,64910,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(29,'Whole Pineapple','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]','YZ-196-A0',0,15,0,1,0,5,0,0,2488,NULL,NULL,NULL,15.00,11.00,15.00,873.00,NULL,134598,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(30,'Cottage Cheese','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-content pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div class=\"tp-product-details-desc-content\">\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"tp-product-details-desc-content des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-5.jpg\"]','5I-164-A0',0,18,0,1,0,2,0,0,962,NULL,NULL,NULL,14.00,17.00,16.00,856.00,NULL,116443,'2024-03-05 00:57:43','2024-03-05 00:57:44','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(31,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','QP-143-A0',0,12,0,1,0,2,1,0,816,NULL,NULL,NULL,12.00,10.00,13.00,584.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(32,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','J8-189-A0',0,20,0,1,0,3,1,0,2419,NULL,NULL,NULL,11.00,16.00,11.00,804.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(33,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','J8-189-A0-A1',0,20,0,1,0,3,1,0,2419,NULL,NULL,NULL,11.00,16.00,11.00,804.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(34,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','IE-128-A0',0,13,0,1,0,1,1,0,1348,NULL,NULL,NULL,18.00,10.00,19.00,648.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(35,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','IE-128-A0-A1',0,13,0,1,0,1,1,0,1348,NULL,NULL,NULL,18.00,10.00,19.00,648.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(36,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','MR-141-A0',0,12,0,1,0,2,1,0,872,697.6,NULL,NULL,10.00,10.00,12.00,843.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(37,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','3L-169-A0',0,20,0,1,0,4,1,0,819,NULL,NULL,NULL,13.00,10.00,18.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(38,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','3L-169-A0-A1',0,20,0,1,0,4,1,0,819,NULL,NULL,NULL,13.00,10.00,18.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(39,'Organic Spinach',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','3L-169-A0-A2',0,20,0,1,0,4,1,0,819,NULL,NULL,NULL,13.00,10.00,18.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(40,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','7T-181-A0',0,16,0,1,0,3,1,0,610,NULL,NULL,NULL,17.00,12.00,13.00,616.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(41,'Almond Milk',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','XD-161-A0',0,10,0,1,0,1,1,0,1141,NULL,NULL,NULL,18.00,11.00,19.00,688.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(42,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','QD-167-A0',0,13,0,1,0,3,1,0,2056,1809.28,NULL,NULL,18.00,13.00,14.00,625.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(43,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','QD-167-A0-A1',0,13,0,1,0,3,1,0,2056,1788.72,NULL,NULL,18.00,13.00,14.00,625.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(44,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','EQ-193-A0',0,16,0,1,0,4,1,0,1944,NULL,NULL,NULL,10.00,20.00,10.00,505.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(45,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','EQ-193-A0-A1',0,16,0,1,0,4,1,0,1944,NULL,NULL,NULL,10.00,20.00,10.00,505.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(46,'Avocado',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','EQ-193-A0-A2',0,16,0,1,0,4,1,0,1944,NULL,NULL,NULL,10.00,20.00,10.00,505.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(47,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','EZ-117-A0',0,13,0,1,0,5,1,0,765,NULL,NULL,NULL,17.00,17.00,19.00,758.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(48,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','EZ-117-A0-A1',0,13,0,1,0,5,1,0,765,NULL,NULL,NULL,17.00,17.00,19.00,758.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(49,'Sweet Potatoes',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','ZO-146-A0',0,13,0,1,0,1,1,0,1661,NULL,NULL,NULL,20.00,17.00,13.00,563.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(50,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','EH-113-A0',0,18,0,1,0,3,1,0,1055,812.35,NULL,NULL,14.00,16.00,10.00,596.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(51,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','EH-113-A0-A1',0,18,0,1,0,3,1,0,1055,875.65,NULL,NULL,14.00,16.00,10.00,596.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(52,'Organic Cherry Tomatoes (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','EH-113-A0-A2',0,18,0,1,0,3,1,0,1055,886.2,NULL,NULL,14.00,16.00,10.00,596.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(53,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','Y1-121-A0',0,13,0,1,0,3,1,0,2135,NULL,NULL,NULL,14.00,18.00,10.00,775.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(54,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','Y1-121-A0-A1',0,13,0,1,0,3,1,0,2135,NULL,NULL,NULL,14.00,18.00,10.00,775.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(55,'Brown Rice',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','R2-182-A0',0,17,0,1,0,5,1,0,1132,NULL,NULL,NULL,15.00,16.00,13.00,857.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(56,'Brown Rice',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','R2-182-A0-A1',0,17,0,1,0,5,1,0,1132,NULL,NULL,NULL,15.00,16.00,13.00,857.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(57,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','4I-165-A0',0,12,0,1,0,5,1,0,2070,NULL,NULL,NULL,17.00,13.00,10.00,751.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(58,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','4I-165-A0-A1',0,12,0,1,0,5,1,0,2070,NULL,NULL,NULL,17.00,13.00,10.00,751.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(59,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','NE-147-A0',0,20,0,1,0,2,1,0,655,478.15,NULL,NULL,11.00,19.00,19.00,569.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(60,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','NE-147-A0-A1',0,20,0,1,0,2,1,0,655,497.8,NULL,NULL,11.00,19.00,19.00,569.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(61,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','NE-147-A0-A2',0,20,0,1,0,2,1,0,655,530.55,NULL,NULL,11.00,19.00,19.00,569.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(62,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','0E-168-A0',0,13,0,1,0,1,1,0,1423,NULL,NULL,NULL,18.00,11.00,19.00,590.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(63,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','0E-168-A0-A1',0,13,0,1,0,1,1,0,1423,NULL,NULL,NULL,18.00,11.00,19.00,590.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(64,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','0E-168-A0-A2',0,13,0,1,0,1,1,0,1423,NULL,NULL,NULL,18.00,11.00,19.00,590.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(65,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','QF-151-A0',0,20,0,1,0,1,1,0,559,NULL,NULL,NULL,12.00,14.00,16.00,766.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(66,'Black Beans',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','QF-151-A0-A1',0,20,0,1,0,1,1,0,559,NULL,NULL,NULL,12.00,14.00,16.00,766.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(67,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','H2-117-A0',0,17,0,1,0,4,1,0,953,NULL,NULL,NULL,18.00,14.00,12.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(68,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','H2-117-A0-A1',0,17,0,1,0,4,1,0,953,NULL,NULL,NULL,18.00,14.00,12.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(69,'Chia Seeds',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','H2-117-A0-A2',0,17,0,1,0,4,1,0,953,NULL,NULL,NULL,18.00,14.00,12.00,895.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(70,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','FN-135-A0',0,16,0,1,0,4,1,0,1230,971.7,NULL,NULL,12.00,12.00,16.00,683.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(71,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','FN-135-A0-A1',0,16,0,1,0,4,1,0,1230,1020.9,NULL,NULL,12.00,12.00,16.00,683.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(72,'Mixed Nuts',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','ER-195-A0',0,17,0,1,0,4,1,0,1986,NULL,NULL,NULL,20.00,17.00,17.00,781.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(73,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','R9-169-A0',0,14,0,1,0,3,1,0,1078,NULL,NULL,NULL,15.00,15.00,10.00,852.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(74,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','R9-169-A0-A1',0,14,0,1,0,3,1,0,1078,NULL,NULL,NULL,15.00,15.00,10.00,852.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(75,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','R9-169-A0-A2',0,14,0,1,0,3,1,0,1078,NULL,NULL,NULL,15.00,15.00,10.00,852.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(76,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','R9-169-A0-A3',0,14,0,1,0,3,1,0,1078,NULL,NULL,NULL,15.00,15.00,10.00,852.00,NULL,0,'2024-03-05 00:57:43','2024-03-05 00:57:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(77,'Organic Strawberries',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','UW-200-A0',0,10,0,1,0,1,1,0,2060,NULL,NULL,NULL,15.00,13.00,20.00,549.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(78,'Organic Strawberries',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','UW-200-A0-A1',0,10,0,1,0,1,1,0,2060,NULL,NULL,NULL,15.00,13.00,20.00,549.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(79,'Organic Strawberries',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','UW-200-A0-A2',0,10,0,1,0,1,1,0,2060,NULL,NULL,NULL,15.00,13.00,20.00,549.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(80,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','VJ-120-A0',0,13,0,1,0,5,1,0,1457,1136.46,NULL,NULL,14.00,12.00,20.00,543.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(81,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','VJ-120-A0-A1',0,13,0,1,0,5,1,0,1457,1282.16,NULL,NULL,14.00,12.00,20.00,543.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(82,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','VJ-120-A0-A2',0,13,0,1,0,5,1,0,1457,1151.03,NULL,NULL,14.00,12.00,20.00,543.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(83,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','VJ-120-A0-A3',0,13,0,1,0,5,1,0,1457,1078.18,NULL,NULL,14.00,12.00,20.00,543.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(84,'Organic Baby Kale',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','SV-183-A0',0,12,0,1,0,1,1,0,1237,NULL,NULL,NULL,10.00,13.00,16.00,864.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(85,'Salad Dressing',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','RM-183-A0',0,10,0,1,0,5,1,0,554,NULL,NULL,NULL,15.00,18.00,14.00,865.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(86,'Salad Dressing',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','RM-183-A0-A1',0,10,0,1,0,5,1,0,554,NULL,NULL,NULL,15.00,18.00,14.00,865.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(87,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','RE-130-A0',0,14,0,1,0,4,1,0,410,NULL,NULL,NULL,19.00,16.00,15.00,655.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(88,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','RE-130-A0-A1',0,14,0,1,0,4,1,0,410,NULL,NULL,NULL,19.00,16.00,15.00,655.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(89,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','RE-130-A0-A2',0,14,0,1,0,4,1,0,410,NULL,NULL,NULL,19.00,16.00,15.00,655.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(90,'Almond Butter (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','CR-197-A0',0,12,0,1,0,1,1,0,1654,1223.96,NULL,NULL,12.00,16.00,15.00,568.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(91,'Almond Butter (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','CR-197-A0-A1',0,12,0,1,0,1,1,0,1654,1157.8,NULL,NULL,12.00,16.00,15.00,568.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(92,'Almond Butter (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','CR-197-A0-A2',0,12,0,1,0,1,1,0,1654,1389.36,NULL,NULL,12.00,16.00,15.00,568.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0),(93,'Whole Pineapple',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','YZ-196-A0',0,15,0,1,0,5,1,0,2488,NULL,NULL,NULL,15.00,11.00,15.00,873.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(94,'Whole Pineapple',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','YZ-196-A0-A1',0,15,0,1,0,5,1,0,2488,NULL,NULL,NULL,15.00,11.00,15.00,873.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(95,'Whole Pineapple',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','YZ-196-A0-A2',0,15,0,1,0,5,1,0,2488,NULL,NULL,NULL,15.00,11.00,15.00,873.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0),(96,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','5I-164-A0',0,18,0,1,0,2,1,0,962,NULL,NULL,NULL,14.00,17.00,16.00,856.00,NULL,0,'2024-03-05 00:57:44','2024-03-05 00:57:44','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_reviews` VALUES (1,6,11,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-13.jpg\"]'),(2,1,28,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(3,2,14,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(4,1,11,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]'),(5,8,18,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\"]'),(6,6,26,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\"]'),(7,9,30,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(8,9,29,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(9,9,15,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(10,4,20,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(11,8,22,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(12,7,9,3.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-20.jpg\"]'),(13,7,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(14,10,21,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(15,8,20,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(16,9,1,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(17,4,24,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(18,7,16,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(19,1,3,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\"]'),(20,1,15,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\"]'),(21,10,9,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(22,6,18,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(23,2,21,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(24,6,28,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(25,3,30,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\"]'),(26,1,25,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(27,3,24,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(30,5,25,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-16.jpg\"]'),(31,9,18,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-16.jpg\"]'),(32,6,21,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-17.jpg\"]'),(33,9,9,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\"]'),(35,1,7,5.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]'),(36,7,3,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(37,8,29,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(38,10,1,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\"]'),(39,5,23,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(40,6,24,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\"]'),(41,6,1,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(42,5,26,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(43,1,22,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\"]'),(44,7,26,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(45,8,3,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\"]'),(46,1,14,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(47,8,5,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\"]'),(48,4,26,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(49,8,26,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(51,1,1,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\"]'),(52,8,30,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\"]'),(53,7,14,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(54,2,18,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(55,6,25,3.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\"]'),(56,5,15,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(57,5,9,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(58,3,17,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(59,4,15,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(61,4,9,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\"]'),(62,9,16,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]'),(63,8,7,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\"]'),(64,1,13,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(65,1,16,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(67,2,4,2.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\"]'),(68,9,13,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(70,10,8,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(72,10,10,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(73,7,8,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\"]'),(75,3,8,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\"]'),(76,6,2,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(78,9,21,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(79,9,11,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(80,10,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(81,1,26,3.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(82,8,8,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(83,1,29,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(84,8,14,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\"]'),(85,8,23,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(86,10,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\"]'),(87,9,2,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\"]'),(88,8,16,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\"]'),(89,6,7,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\"]'),(90,9,12,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\"]'),(91,9,28,3.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(93,2,9,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(95,6,9,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(96,4,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(97,9,27,3.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(98,9,26,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(99,10,24,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(102,5,16,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(103,8,4,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(104,4,30,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(106,10,22,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(107,3,9,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(108,2,20,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(109,3,26,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(110,3,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(114,6,29,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(115,5,6,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(116,9,17,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\"]'),(117,7,27,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]'),(119,1,2,3.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(121,7,30,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\"]'),(124,5,17,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(125,7,18,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(127,8,15,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(129,8,17,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(132,4,21,5.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\"]'),(133,8,25,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(138,10,29,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(139,7,15,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]'),(140,8,11,4.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(141,5,22,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(142,7,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(143,5,3,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\"]'),(144,5,28,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\"]'),(145,1,21,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(146,6,15,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(148,1,5,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(149,7,4,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(151,6,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(152,2,7,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\"]'),(153,2,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(154,7,7,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(155,2,3,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(156,4,8,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(159,3,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(160,9,24,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(163,7,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(164,7,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(165,7,13,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\"]'),(166,7,23,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(167,3,14,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(168,2,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\"]'),(169,2,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(170,1,4,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\"]'),(171,5,8,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(172,7,20,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(177,4,11,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(181,7,17,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(182,1,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(183,2,15,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\"]'),(185,4,14,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\"]'),(186,8,13,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(187,10,13,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(188,6,20,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(189,4,17,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(190,3,1,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(193,3,21,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(194,3,13,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(195,4,28,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(197,3,7,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(198,10,16,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(199,10,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\"]'),(200,7,28,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(203,3,2,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(205,1,20,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(207,9,25,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]'),(209,3,28,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(211,10,20,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(212,9,23,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]'),(213,5,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(219,7,25,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(222,2,25,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(224,4,13,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(225,5,7,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\"]'),(230,2,24,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(231,10,25,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\"]'),(233,10,2,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(235,1,19,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(237,6,27,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(238,10,3,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\"]'),(242,1,6,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\"]'),(247,9,20,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(249,6,5,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(251,2,10,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\"]'),(253,9,14,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\"]'),(257,4,6,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(258,5,21,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(260,3,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]'),(266,7,1,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(270,4,1,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\"]'),(275,4,22,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(277,6,22,3.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(278,6,30,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(279,8,21,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(283,9,3,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(285,6,23,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(288,1,10,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(289,2,1,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\"]'),(292,8,28,5.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(293,8,1,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\"]'),(297,10,14,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(300,3,4,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-13.jpg\"]'),(303,3,3,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(315,5,12,5.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(318,6,3,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(323,8,6,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]'),(327,5,10,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(328,5,29,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(329,10,7,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(336,1,12,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(337,2,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(340,10,27,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(344,4,18,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(347,6,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(348,5,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(350,5,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(352,2,29,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(363,3,25,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(366,3,5,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\"]'),(367,8,24,1.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\"]'),(373,6,6,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-14.jpg\"]'),(380,1,17,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(384,2,26,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(389,7,29,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(390,1,18,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(391,10,12,2.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\"]'),(392,5,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\"]'),(393,7,19,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(395,4,5,5.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(396,2,5,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\"]'),(398,8,10,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(399,2,16,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]'),(410,5,20,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(420,5,2,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(423,5,27,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\"]'),(426,1,23,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(429,3,29,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(435,8,2,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(437,8,27,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\"]'),(440,3,27,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\"]'),(443,2,28,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(446,10,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(450,2,11,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(453,1,8,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\"]'),(457,10,26,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(461,4,3,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(473,3,6,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\"]'),(474,9,6,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\"]'),(479,4,25,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(483,2,27,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(486,5,24,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(491,2,30,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(500,4,23,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(503,5,13,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\"]'),(504,4,7,3.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(506,10,17,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(512,4,29,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(518,6,14,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(519,3,16,3.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(521,9,5,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(525,7,10,1.00,'Best ecommerce CMS online store!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(533,1,30,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]'),(537,10,4,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(542,9,10,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-11.jpg\"]'),(564,9,7,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(569,4,4,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(572,8,19,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(573,2,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(574,3,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(584,10,5,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\"]'),(596,2,17,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(600,4,10,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\"]'),(601,6,16,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-10.jpg\"]'),(605,2,8,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(641,7,5,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(646,9,19,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-16.jpg\"]'),(649,10,18,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(654,2,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(656,9,22,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(671,9,8,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(682,10,30,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-20.jpg\"]'),(685,5,11,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(732,4,12,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(736,4,19,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(740,6,17,5.00,'Clean & perfect source code','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-17.jpg\"]'),(744,6,8,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]'),(766,2,2,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(772,7,24,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]'),(781,5,30,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(789,4,16,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(812,1,27,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\"]'),(822,6,10,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(823,10,28,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\"]'),(826,3,23,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(856,5,19,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(866,9,4,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-8.jpg\"]'),(923,8,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\"]'),(930,7,21,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(948,3,11,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-15.jpg\"]'),(987,4,27,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-05 00:58:12','2024-03-05 00:58:12','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]');
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
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-29 00:57:46','2024-02-29 00:57:46','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-03-03 08:57:47','2024-03-05 00:57:47','Botble\\ACL\\Models\\User'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\ACL\\Models\\User'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,3,'2024-02-22 08:57:47','2024-02-22 08:57:47','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,3,'2024-03-03 08:57:47','2024-03-05 00:57:47','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,4,'2024-02-27 08:57:47','2024-02-27 08:57:47','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,4,'2024-03-03 08:57:47','2024-03-05 00:57:47','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,4,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,8,'2024-02-22 00:57:48','2024-02-22 00:57:48','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,8,'2024-03-03 12:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,8,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,9,'2024-02-22 00:57:48','2024-02-22 00:57:48','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,9,'2024-03-03 12:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,10,'2024-02-22 00:57:48','2024-02-22 00:57:48','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,10,'2024-03-03 12:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,11,'2024-02-21 06:57:48','2024-02-21 06:57:48','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,11,'2024-03-03 14:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,11,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\ACL\\Models\\User'),(19,'create_from_order','Shipping was created from order %order_id%',0,8,13,'2024-02-24 16:57:49','2024-02-24 16:57:49','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,13,'2024-03-03 16:57:49','2024-03-05 00:57:49','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,13,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,14,'2024-02-26 00:57:49','2024-02-26 00:57:49','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,14,'2024-03-03 16:57:49','2024-03-05 00:57:49','Botble\\ACL\\Models\\User'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,15,'2024-02-24 16:57:49','2024-02-24 16:57:49','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,15,'2024-03-03 16:57:49','2024-03-05 00:57:49','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,11,17,'2024-03-03 18:57:49','2024-03-03 18:57:49','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,17,'2024-03-03 18:57:49','2024-03-05 00:57:49','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,18,'2024-02-25 06:57:49','2024-02-25 06:57:49','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,18,'2024-03-03 18:57:50','2024-03-05 00:57:50','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,19,'2024-02-22 08:57:50','2024-02-22 08:57:50','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,19,'2024-03-03 20:57:50','2024-03-05 00:57:50','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,14,20,'2024-03-01 12:57:50','2024-03-01 12:57:50','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,20,'2024-03-03 20:57:50','2024-03-05 00:57:50','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,20,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\ACL\\Models\\User'),(35,'create_from_order','Shipping was created from order %order_id%',0,15,21,'2024-02-23 04:57:50','2024-02-23 04:57:50','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,21,'2024-03-03 22:57:50','2024-03-05 00:57:50','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,16,23,'2024-03-01 00:57:50','2024-03-01 00:57:50','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,23,'2024-03-04 00:57:51','2024-03-05 00:57:51','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,17,24,'2024-02-29 10:57:51','2024-02-29 10:57:51','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,24,'2024-03-04 02:57:51','2024-03-05 00:57:51','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,18,25,'2024-02-24 20:57:51','2024-02-24 20:57:51','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,25,'2024-03-04 02:57:51','2024-03-05 00:57:51','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,19,27,'2024-03-03 08:57:51','2024-03-03 08:57:51','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,27,'2024-03-04 04:57:51','2024-03-05 00:57:51','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,27,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,20,28,'2024-02-27 08:57:51','2024-02-27 08:57:51','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,28,'2024-03-04 04:57:52','2024-03-05 00:57:52','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,28,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,21,30,'2024-02-28 00:57:52','2024-02-28 00:57:52','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,30,'2024-03-04 06:57:52','2024-03-05 00:57:52','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,22,32,'2024-03-02 08:57:52','2024-03-02 08:57:52','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,32,'2024-03-04 08:57:52','2024-03-05 00:57:52','Botble\\ACL\\Models\\User'),(53,'create_from_order','Shipping was created from order %order_id%',0,23,33,'2024-03-01 12:57:52','2024-03-01 12:57:52','Botble\\ACL\\Models\\User'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,33,'2024-03-04 10:57:52','2024-03-05 00:57:52','Botble\\ACL\\Models\\User'),(55,'create_from_order','Shipping was created from order %order_id%',0,24,34,'2024-03-03 06:57:52','2024-03-03 06:57:52','Botble\\ACL\\Models\\User'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,34,'2024-03-04 10:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,34,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(58,'create_from_order','Shipping was created from order %order_id%',0,25,36,'2024-02-29 08:57:53','2024-02-29 08:57:53','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,36,'2024-03-04 10:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(60,'create_from_order','Shipping was created from order %order_id%',0,26,37,'2024-02-29 12:57:53','2024-02-29 12:57:53','Botble\\ACL\\Models\\User'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,37,'2024-03-04 12:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(62,'create_from_order','Shipping was created from order %order_id%',0,27,38,'2024-03-01 12:57:53','2024-03-01 12:57:53','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,38,'2024-03-04 12:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,28,39,'2024-03-02 02:57:53','2024-03-02 02:57:53','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,39,'2024-03-04 14:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,39,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\ACL\\Models\\User'),(67,'create_from_order','Shipping was created from order %order_id%',0,29,41,'2024-03-03 08:57:54','2024-03-03 08:57:54','Botble\\ACL\\Models\\User'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,41,'2024-03-04 14:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,41,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,30,42,'2024-03-03 00:57:54','2024-03-03 00:57:54','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,42,'2024-03-04 16:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,42,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,31,43,'2024-03-03 16:57:54','2024-03-03 16:57:54','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,43,'2024-03-04 16:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,32,44,'2024-03-04 18:57:54','2024-03-04 18:57:54','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,44,'2024-03-04 18:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(77,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,32,44,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,44,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\ACL\\Models\\User'),(79,'create_from_order','Shipping was created from order %order_id%',0,33,45,'2024-03-03 16:57:54','2024-03-03 16:57:54','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,45,'2024-03-04 20:57:55','2024-03-05 00:57:55','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,34,47,'2024-03-04 10:57:55','2024-03-04 10:57:55','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,47,'2024-03-04 22:57:55','2024-03-05 00:57:55','Botble\\ACL\\Models\\User'),(83,'create_from_order','Shipping was created from order %order_id%',0,35,48,'2024-03-04 06:57:55','2024-03-04 06:57:55','Botble\\ACL\\Models\\User'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,48,'2024-03-04 22:57:55','2024-03-05 00:57:55','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,48,'2024-03-05 00:57:55','2024-03-05 00:57:55','Botble\\ACL\\Models\\User'),(86,'create_from_order','Shipping was created from order %order_id%',0,36,49,'2024-03-04 16:57:55','2024-03-04 16:57:55','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,49,'2024-03-04 22:57:55','2024-03-05 00:57:55','Botble\\ACL\\Models\\User');
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
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1704.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','JJD003160711','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:47','2024-03-05 07:57:47',NULL,NULL),(2,3,NULL,2592.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','JJD0037725170','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:47',NULL,NULL,NULL),(3,4,NULL,2619.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:47','2024-03-05 00:57:47','JJD0086424163','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:47','2024-03-05 07:57:47',NULL,NULL),(4,8,NULL,751.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','JJD0045446904','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:57:48','2024-03-05 07:57:48',NULL,NULL),(5,9,NULL,1180.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','JJD0020526387','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:48',NULL,NULL,NULL),(6,10,NULL,2619.00,NULL,NULL,'','approved',7464.00,'pending','pending',0.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','JJD0094665713','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 07:57:48',NULL,NULL,NULL),(7,11,NULL,852.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:48','2024-03-05 00:57:48','JJD0021580640','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 07:57:48','2024-03-05 07:57:48',NULL,NULL),(8,13,NULL,758.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','JJD0031277160','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-09 07:57:49','2024-03-05 07:57:49',NULL,NULL),(9,14,NULL,895.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','JJD0059139810','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-10 07:57:49',NULL,NULL,NULL),(10,15,NULL,549.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','JJD0062529894','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:49',NULL,NULL,NULL),(11,17,NULL,3004.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:49','2024-03-05 00:57:49','JJD0075367933','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:57:49',NULL,NULL,NULL),(12,18,NULL,2841.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','JJD0048372358','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-10 07:57:50',NULL,NULL,NULL),(13,19,NULL,505.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','JJD0093103828','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:57:50',NULL,NULL,NULL),(14,20,NULL,2508.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','JJD0086397516','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:50','2024-03-05 07:57:50',NULL,NULL),(15,21,NULL,1752.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:50','2024-03-05 00:57:50','JJD0092612165','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-15 07:57:50',NULL,NULL,NULL),(16,23,NULL,5114.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','JJD009147710','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:51',NULL,NULL,NULL),(17,24,NULL,2360.00,NULL,NULL,'','approved',5692.00,'pending','pending',0.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','JJD0039955325','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-09 07:57:51',NULL,NULL,NULL),(18,25,NULL,852.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','JJD0097199264','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:57:51',NULL,NULL,NULL),(19,27,NULL,1814.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:51','2024-03-05 00:57:51','JJD0078929824','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 07:57:51','2024-03-05 07:57:51',NULL,NULL),(20,28,NULL,758.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','JJD004558978','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:57:51','2024-03-05 07:57:51',NULL,NULL),(21,30,NULL,3580.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','JJD0050511567','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 07:57:52',NULL,NULL,NULL),(22,32,NULL,1746.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','JJD0080849163','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:57:52',NULL,NULL,NULL),(23,33,NULL,2685.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:52','2024-03-05 00:57:52','JJD0081306108','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:57:52',NULL,NULL,NULL),(24,34,NULL,1502.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','JJD0085427316','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:53','2024-03-05 07:57:53',NULL,NULL),(25,36,NULL,873.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','JJD0051060880','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:53',NULL,NULL,NULL),(26,37,NULL,648.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','JJD006082723','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:53',NULL,NULL,NULL),(27,38,NULL,2685.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','JJD0050451206','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:53',NULL,NULL,NULL),(28,39,NULL,2412.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:53','2024-03-05 00:57:53','JJD0017157996','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-08 07:57:53','2024-03-05 07:57:53',NULL,NULL),(29,41,NULL,1310.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','JJD0093457285','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:57:54','2024-03-05 07:57:54',NULL,NULL),(30,42,NULL,2685.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','JJD0081966440','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-11 07:57:54','2024-03-05 07:57:54',NULL,NULL),(31,43,NULL,3051.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','JJD0034595568','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 07:57:54',NULL,NULL,NULL),(32,44,NULL,3478.00,NULL,NULL,'','delivered',4523.00,'completed','pending',0.00,0,'2024-03-05 00:57:54','2024-03-05 00:57:54','JJD0017848884','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:57:54','2024-03-05 07:57:54',NULL,NULL),(33,45,NULL,1647.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','JJD0024660166','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:57:55',NULL,NULL,NULL),(34,47,NULL,1532.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','JJD0067847397','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-10 07:57:55',NULL,NULL,NULL),(35,48,NULL,1704.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','JJD008464749','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:57:55','2024-03-05 07:57:55',NULL,NULL),(36,49,NULL,1728.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-05 00:57:55','2024-03-05 00:57:55','JJD0068843933','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 07:57:55',NULL,NULL,NULL);
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-03-05 00:57:37','2024-03-05 00:57:37');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-03-05 00:57:37','2024-03-05 00:57:37');
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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-03-05 00:57:38','2024-03-05 00:57:38');
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
INSERT INTO `ec_tax_products` VALUES (1,1),(1,6),(1,11),(1,12),(1,13),(1,17),(1,21),(1,29),(2,3),(2,5),(2,9),(2,14),(2,15),(2,19),(2,26),(2,30),(3,2),(3,4),(3,7),(3,8),(3,10),(3,16),(3,18),(3,20),(3,22),(3,23),(3,24),(3,25),(3,27),(3,28);
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(2,'None',0.000000,2,'published','2024-03-05 00:57:37','2024-03-05 00:57:37'),(3,'Import Tax',15.000000,3,'published','2024-03-05 00:57:37','2024-03-05 00:57:37');
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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(2,'PAYMENT',1,'published','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-03-05 00:57:34','2024-03-05 00:57:34'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-03-05 00:57:34','2024-03-05 00:57:34');
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `galleries` VALUES (1,'Perfect','The Cat only grinned when it saw mine coming!\' \'How do you know I\'m mad?\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back by railway,\' she said these words her foot.',1,0,'main/galleries/1.jpg',1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45'),(2,'New Day','Alice heard it muttering to himself as he could think of what work it would feel very sleepy and stupid), whether the blows hurt it or not. So she tucked it away under her arm, and timidly said.',1,0,'main/galleries/2.jpg',1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45'),(3,'Happy Day','Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse slowly opened his eyes. He looked at her side. She was close behind it was the same.',1,0,'main/galleries/3.jpg',1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45'),(4,'Nature','Everything is so out-of-the-way down here, and I\'m sure I can\'t see you?\' She was moving them about as it was growing, and growing, and she felt that this could not even get her head made her look.',1,0,'main/galleries/4.jpg',1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45'),(5,'Morning','There was no one listening, this time, and was a general clapping of hands at this: it was all about, and shouting \'Off with their heads downward! The Antipathies, I think--\' (for, you see, Miss.',1,0,'main/galleries/5.jpg',1,'published','2024-03-05 00:57:45','2024-03-05 00:57:45');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Pigeon, but in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the table for it, she found this a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house, and have next to.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Rabbit came near her, about the right words,\' said poor Alice, \'it would be only rustling in the night? Let me think: was I the same size for going through the wood. \'If it had lost something; and.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"I know is, it would make with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to twist it up into the sky. Twinkle, twinkle--\\\"\' Here the other was sitting on the.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-03-05 00:57:45','2024-03-05 00:57:45'),(2,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Pigeon, but in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the table for it, she found this a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house, and have next to.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Rabbit came near her, about the right words,\' said poor Alice, \'it would be only rustling in the night? Let me think: was I the same size for going through the wood. \'If it had lost something; and.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"I know is, it would make with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to twist it up into the sky. Twinkle, twinkle--\\\"\' Here the other was sitting on the.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-03-05 00:57:45','2024-03-05 00:57:45'),(3,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Pigeon, but in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the table for it, she found this a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house, and have next to.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Rabbit came near her, about the right words,\' said poor Alice, \'it would be only rustling in the night? Let me think: was I the same size for going through the wood. \'If it had lost something; and.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"I know is, it would make with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to twist it up into the sky. Twinkle, twinkle--\\\"\' Here the other was sitting on the.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-03-05 00:57:45','2024-03-05 00:57:45'),(4,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Pigeon, but in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the table for it, she found this a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house, and have next to.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Rabbit came near her, about the right words,\' said poor Alice, \'it would be only rustling in the night? Let me think: was I the same size for going through the wood. \'If it had lost something; and.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"I know is, it would make with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to twist it up into the sky. Twinkle, twinkle--\\\"\' Here the other was sitting on the.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-03-05 00:57:45','2024-03-05 00:57:45'),(5,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"Pigeon, but in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the table for it, she found this a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house, and have next to.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Rabbit came near her, about the right words,\' said poor Alice, \'it would be only rustling in the night? Let me think: was I the same size for going through the wood. \'If it had lost something; and.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"I know is, it would make with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to twist it up into the sky. Twinkle, twinkle--\\\"\' Here the other was sitting on the.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-03-05 00:57:45','2024-03-05 00:57:45');
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
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `language_meta` VALUES (1,'en_US','539bea195e84132f787b01128255e29a',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','60197236d3456aaadd9e9d13fb5db3ce',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','354ebb6c0df0941201d6b5ac0edb9810',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','db12f2e182bdd3e8df382d2e10d57417',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','f24fff5715be60c6366d933b3c2efe67',3,'Botble\\Menu\\Models\\Menu');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(4,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(5,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(6,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(7,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(8,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(9,0,'logo-white','logo-white',2,'image/png',3793,'main/general/logo-white.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(10,0,'logo','logo',2,'image/png',4122,'main/general/logo.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(11,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(12,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(13,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(24,0,'1','1',4,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(25,0,'10','10',4,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(26,0,'2','2',4,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(27,0,'3','3',4,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(28,0,'4','4',4,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(29,0,'5','5',4,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(30,0,'6','6',4,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(31,0,'7','7',4,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(32,0,'8','8',4,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(33,0,'9','9',4,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(34,0,'blog-big-1','blog-big-1',5,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(35,0,'blog-details-sm-1','blog-details-sm-1',5,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(36,0,'post-1','post-1',5,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(37,0,'post-10','post-10',5,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(38,0,'post-11','post-11',5,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(39,0,'post-12','post-12',5,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(40,0,'post-2','post-2',5,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(41,0,'post-3','post-3',5,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(42,0,'post-4','post-4',5,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(43,0,'post-5','post-5',5,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(44,0,'post-6','post-6',5,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(45,0,'post-7','post-7',5,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(46,0,'post-8','post-8',5,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(47,0,'post-9','post-9',5,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(48,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(49,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(50,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(51,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(52,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(53,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(54,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(55,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(56,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(57,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(58,0,'1','1',6,'image/png',9133,'main/stores/1.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(59,0,'10','10',6,'image/png',4263,'main/stores/10.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(60,0,'11','11',6,'image/png',4420,'main/stores/11.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(61,0,'12','12',6,'image/png',4908,'main/stores/12.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(62,0,'13','13',6,'image/png',3441,'main/stores/13.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(63,0,'14','14',6,'image/png',4209,'main/stores/14.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(64,0,'15','15',6,'image/png',5113,'main/stores/15.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(65,0,'16','16',6,'image/png',4563,'main/stores/16.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(66,0,'17','17',6,'image/png',4896,'main/stores/17.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(67,0,'2','2',6,'image/png',9008,'main/stores/2.png','[]','2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(68,0,'3','3',6,'image/png',8006,'main/stores/3.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(69,0,'4','4',6,'image/png',8728,'main/stores/4.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(70,0,'5','5',6,'image/png',10689,'main/stores/5.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(71,0,'6','6',6,'image/png',10989,'main/stores/6.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(72,0,'7','7',6,'image/png',3730,'main/stores/7.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(73,0,'8','8',6,'image/png',4030,'main/stores/8.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(74,0,'9','9',6,'image/png',3810,'main/stores/9.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(75,0,'cover-1','cover-1',6,'image/png',4208,'main/stores/cover-1.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(76,0,'cover-2','cover-2',6,'image/png',8798,'main/stores/cover-2.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(77,0,'cover-3','cover-3',6,'image/png',3888,'main/stores/cover-3.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(78,0,'cover-4','cover-4',6,'image/png',11893,'main/stores/cover-4.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(79,0,'cover-5','cover-5',6,'image/png',8798,'main/stores/cover-5.png','[]','2024-03-05 00:57:39','2024-03-05 00:57:39',NULL),(80,0,'shape-1','shape-1',8,'image/png',1299,'grocery/sliders/shape-1.png','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(81,0,'shape-2','shape-2',8,'image/png',1379,'grocery/sliders/shape-2.png','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(82,0,'shape-3','shape-3',8,'image/png',1972,'grocery/sliders/shape-3.png','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(83,0,'shape-4','shape-4',8,'image/png',2115,'grocery/sliders/shape-4.png','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(84,0,'slider-1','slider-1',8,'image/png',10852,'grocery/sliders/slider-1.png','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(85,0,'1','1',9,'image/jpeg',4294,'grocery/product-categories/1.jpg','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(86,0,'2','2',9,'image/jpeg',4294,'grocery/product-categories/2.jpg','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(87,0,'3','3',9,'image/jpeg',4294,'grocery/product-categories/3.jpg','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(88,0,'4','4',9,'image/jpeg',4294,'grocery/product-categories/4.jpg','[]','2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(89,0,'5','5',9,'image/jpeg',4294,'grocery/product-categories/5.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(90,0,'6','6',9,'image/jpeg',4294,'grocery/product-categories/6.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(91,0,'product-1','product-1',10,'image/jpeg',9803,'grocery/products/product-1.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(92,0,'product-10','product-10',10,'image/jpeg',9803,'grocery/products/product-10.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(93,0,'product-11','product-11',10,'image/jpeg',9803,'grocery/products/product-11.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(94,0,'product-2','product-2',10,'image/jpeg',9803,'grocery/products/product-2.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(95,0,'product-3','product-3',10,'image/jpeg',9803,'grocery/products/product-3.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(96,0,'product-4','product-4',10,'image/jpeg',9803,'grocery/products/product-4.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(97,0,'product-5','product-5',10,'image/jpeg',9803,'grocery/products/product-5.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(98,0,'product-6','product-6',10,'image/jpeg',9803,'grocery/products/product-6.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(99,0,'product-7','product-7',10,'image/jpeg',9803,'grocery/products/product-7.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(100,0,'product-8','product-8',10,'image/jpeg',9803,'grocery/products/product-8.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(101,0,'product-9','product-9',10,'image/jpeg',9803,'grocery/products/product-9.jpg','[]','2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(102,0,'1','1',11,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(103,0,'2','2',11,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(104,0,'banner-1','banner-1',11,'image/png',18708,'main/banners/banner-1.png','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(105,0,'banner-2','banner-2',11,'image/png',24098,'main/banners/banner-2.png','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(106,0,'banner-3','banner-3',11,'image/png',24098,'main/banners/banner-3.png','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(107,0,'slider-1','slider-1',11,'image/png',8207,'main/banners/slider-1.png','[]','2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(108,0,'slider-2','slider-2',11,'image/png',7768,'main/banners/slider-2.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(109,0,'slider-3','slider-3',11,'image/png',6182,'main/banners/slider-3.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(110,0,'1','1',12,'image/jpeg',5896,'grocery/banners/1.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(111,0,'2','2',12,'image/png',19187,'grocery/banners/2.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(112,0,'3','3',12,'image/png',18807,'grocery/banners/3.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(113,0,'1','1',13,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(114,0,'2','2',13,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(115,0,'3','3',13,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(116,0,'4','4',13,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(117,0,'5','5',13,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(118,0,'icon-1','icon-1',14,'image/png',4469,'main/contact/icon-1.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(119,0,'icon-2','icon-2',14,'image/png',5977,'main/contact/icon-2.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(120,0,'icon-3','icon-3',14,'image/png',6082,'main/contact/icon-3.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(121,0,'deal-shape-1','deal-shape-1',15,'image/png',14480,'grocery/shapes/deal-shape-1.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(122,0,'deal-shape-2','deal-shape-2',15,'image/png',126431,'grocery/shapes/deal-shape-2.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(123,0,'deal-shape-3','deal-shape-3',15,'image/png',16670,'grocery/shapes/deal-shape-3.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(124,0,'deal-shape-4','deal-shape-4',15,'image/png',128346,'grocery/shapes/deal-shape-4.png','[]','2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(125,0,'deal-shape-5','deal-shape-5',15,'image/png',4820,'grocery/shapes/deal-shape-5.png','[]','2024-03-05 00:57:46','2024-03-05 00:57:46',NULL),(126,0,'deal-shape-6','deal-shape-6',15,'image/png',23321,'grocery/shapes/deal-shape-6.png','[]','2024-03-05 00:57:46','2024-03-05 00:57:46',NULL),(127,0,'deal-shape-7','deal-shape-7',15,'image/png',8935,'grocery/shapes/deal-shape-7.png','[]','2024-03-05 00:57:46','2024-03-05 00:57:46',NULL),(128,0,'line','line',16,'image/png',6152,'main/shapes/line.png','[]','2024-03-05 00:57:46','2024-03-05 00:57:46',NULL),(129,0,'quote','quote',16,'image/png',595,'main/shapes/quote.png','[]','2024-03-05 00:57:46','2024-03-05 00:57:46',NULL);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(2,0,'general',NULL,'general',1,'2024-03-05 00:57:32','2024-03-05 00:57:32',NULL),(3,0,'users',NULL,'users',1,'2024-03-05 00:57:33','2024-03-05 00:57:33',NULL),(4,0,'customers',NULL,'customers',1,'2024-03-05 00:57:34','2024-03-05 00:57:34',NULL),(5,0,'blog',NULL,'blog',1,'2024-03-05 00:57:37','2024-03-05 00:57:37',NULL),(6,0,'stores',NULL,'stores',1,'2024-03-05 00:57:38','2024-03-05 00:57:38',NULL),(7,0,'grocery',NULL,'grocery',0,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(8,0,'sliders',NULL,'sliders',7,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(9,0,'product-categories',NULL,'product-categories',7,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL),(10,0,'products',NULL,'products',7,'2024-03-05 00:57:42','2024-03-05 00:57:42',NULL),(11,0,'banners',NULL,'banners',1,'2024-03-05 00:57:44','2024-03-05 00:57:44',NULL),(12,0,'banners',NULL,'banners',7,'2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(13,0,'galleries',NULL,'galleries',1,'2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(14,0,'contact',NULL,'contact',1,'2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(15,0,'shapes',NULL,'shapes',7,'2024-03-05 00:57:45','2024-03-05 00:57:45',NULL),(16,0,'shapes',NULL,'shapes',1,'2024-03-05 00:57:46','2024-03-05 00:57:46',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-03-05 00:57:46','2024-03-05 00:57:46');
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
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(11,1,7,NULL,NULL,'/products/cucumber',NULL,0,'Product Detail',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(23,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(26,1,23,NULL,NULL,'/blog/were-crushing-hard-on-summers-10-biggest-bag-trends',NULL,0,'Blog Detail',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(27,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(29,2,0,9,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(34,3,0,7,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(35,3,0,8,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(36,3,0,6,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46'),(38,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-03-05 00:57:46','2024-03-05 00:57:46');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(2,'My Account','my-account','published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(3,'Information','information','published','2024-03-05 00:57:46','2024-03-05 00:57:46');
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `meta_boxes` VALUES (1,'background','[\"main\\/stores\\/cover-1.png\"]',1,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(2,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(3,'background','[\"main\\/stores\\/cover-3.png\"]',2,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(4,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(5,'background','[\"main\\/stores\\/cover-4.png\"]',3,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(6,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(7,'background','[\"main\\/stores\\/cover-2.png\"]',4,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(8,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(9,'background','[\"main\\/stores\\/cover-3.png\"]',5,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(10,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(11,'background','[\"main\\/stores\\/cover-1.png\"]',6,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(12,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(13,'background','[\"main\\/stores\\/cover-5.png\"]',7,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(14,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(15,'background','[\"main\\/stores\\/cover-5.png\"]',8,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(16,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"x\":\"https:\\/\\/x.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2024-03-05 00:57:41','2024-03-05 00:57:41'),(17,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-05 00:57:41','2024-03-05 00:57:41'),(18,'faq_ids','[[2,4,5,8,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(19,'faq_ids','[[2,4,6,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(20,'faq_ids','[[1,4,5,7,9]]',3,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(21,'faq_ids','[[2,4,5,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(22,'faq_ids','[[1,2,3,7,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(23,'faq_ids','[[5,6,7,8,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(24,'faq_ids','[[1,2,3,8,9]]',7,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(25,'faq_ids','[[4,5,6,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(26,'faq_ids','[[3,5,7,8,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(27,'faq_ids','[[1,4,5,7,8]]',10,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(28,'faq_ids','[[4,6,7,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(29,'faq_ids','[[4,5,8,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(30,'faq_ids','[[1,2,4,6,8]]',13,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(31,'faq_ids','[[1,4,5,7,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(32,'faq_ids','[[2,3,4,7,9]]',15,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(33,'faq_ids','[[1,6,7,9,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(34,'faq_ids','[[2,3,4,5,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(35,'faq_ids','[[2,3,4,5,9]]',18,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(36,'faq_ids','[[5,6,7,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(37,'faq_ids','[[1,2,3,7,9]]',20,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(38,'faq_ids','[[2,3,4,5,8]]',21,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(39,'faq_ids','[[1,3,4,6,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(40,'faq_ids','[[2,3,5,6,8]]',23,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(41,'faq_ids','[[2,5,7,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:42','2024-03-05 00:57:42'),(42,'faq_ids','[[2,3,4,5,6]]',25,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(43,'faq_ids','[[2,7,8,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(44,'faq_ids','[[2,3,5,7,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(45,'faq_ids','[[1,4,5,7,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(46,'faq_ids','[[5,6,7,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(47,'faq_ids','[[1,2,4,7,8]]',30,'Botble\\Ecommerce\\Models\\Product','2024-03-05 00:57:43','2024-03-05 00:57:43'),(48,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(49,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(50,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(51,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(52,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(53,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-03-05 00:57:45','2024-03-05 00:57:45'),(54,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-03-05 00:57:46','2024-03-05 00:57:46'),(55,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-03-05 00:57:46','2024-03-05 00:57:46');
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,6,1,2156.00,0.00,2156.00,0.00,'USD',NULL,'2024-03-04 00:57:55','2024-03-04 00:57:55',0,'add-amount'),(2,3,4,7464.00,0.00,7464.00,0.00,'USD',NULL,'2024-03-02 02:57:56','2024-03-02 02:57:56',0,'add-amount'),(3,1,8,2070.00,0.00,2070.00,0.00,'USD',NULL,'2024-03-01 06:57:56','2024-03-01 06:57:56',0,'add-amount'),(4,6,11,1078.00,0.00,1078.00,2156.00,'USD',NULL,'2024-02-27 00:57:57','2024-02-27 00:57:57',0,'add-amount'),(5,2,13,765.00,0.00,765.00,0.00,'USD',NULL,'2024-02-23 12:57:57','2024-02-23 12:57:57',0,'add-amount'),(6,4,20,2687.00,0.00,2687.00,0.00,'USD',NULL,'2024-02-27 00:57:58','2024-02-27 00:57:58',0,'add-amount'),(7,1,27,6307.00,0.00,6307.00,2070.00,'USD',NULL,'2024-02-10 16:57:58','2024-02-10 16:57:58',0,'add-amount'),(8,2,28,765.00,0.00,765.00,765.00,'USD',NULL,'2024-02-12 06:57:59','2024-02-12 06:57:59',0,'add-amount'),(9,1,39,7257.00,0.00,7257.00,8377.00,'USD',NULL,'2024-02-07 08:57:59','2024-02-07 08:57:59',0,'add-amount'),(10,4,41,820.00,0.00,820.00,2687.00,'USD',NULL,'2024-02-23 12:58:00','2024-02-23 12:58:00',0,'add-amount'),(11,7,42,2859.00,0.00,2859.00,0.00,'USD',NULL,'2024-02-08 22:58:00','2024-02-08 22:58:00',0,'add-amount'),(12,6,48,2156.00,0.00,2156.00,3234.00,'USD',NULL,'2024-02-09 12:58:01','2024-02-09 12:58:01',0,'add-amount');
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
INSERT INTO `mp_customer_withdrawals` VALUES (1,1,0.00,4922.00,15634.00,'USD','','{\"name\":\"Alexane Emard\",\"number\":\"+15868428282\",\"full_name\":\"Oliver Ledner\",\"description\":\"Dangelo McDermott\"}',NULL,0,'completed',NULL,'2024-03-05 00:58:01','2024-03-05 00:58:01',NULL),(2,1,0.00,3027.00,10712.00,'USD','','{\"name\":\"Alexane Emard\",\"number\":\"+15868428282\",\"full_name\":\"Oliver Ledner\",\"description\":\"Dangelo McDermott\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:02','2024-03-05 00:58:02',NULL),(3,1,0.00,2346.00,7685.00,'USD','','{\"name\":\"Alexane Emard\",\"number\":\"+15868428282\",\"full_name\":\"Oliver Ledner\",\"description\":\"Dangelo McDermott\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:03','2024-03-05 00:58:03',NULL),(4,2,0.00,479.00,1530.00,'USD','','{\"name\":\"Johnathon Senger\",\"number\":\"+17606303453\",\"full_name\":\"Christa Jacobs\",\"description\":\"Dr. Madison Johns\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:03','2024-03-05 00:58:03',NULL),(5,2,0.00,188.00,1051.00,'USD','','{\"name\":\"Johnathon Senger\",\"number\":\"+17606303453\",\"full_name\":\"Christa Jacobs\",\"description\":\"Dr. Madison Johns\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:04','2024-03-05 00:58:04',NULL),(6,2,0.00,171.00,863.00,'USD','','{\"name\":\"Johnathon Senger\",\"number\":\"+17606303453\",\"full_name\":\"Christa Jacobs\",\"description\":\"Dr. Madison Johns\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:04','2024-03-05 00:58:04',NULL),(7,3,0.00,2234.00,7464.00,'USD','','{\"name\":\"Jess Hodkiewicz\",\"number\":\"+12728613030\",\"full_name\":\"Miss Allie Russel\",\"description\":\"Dr. Cortez Leuschke II\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:04','2024-03-05 00:58:04',NULL),(8,3,0.00,914.00,5230.00,'USD','','{\"name\":\"Jess Hodkiewicz\",\"number\":\"+12728613030\",\"full_name\":\"Miss Allie Russel\",\"description\":\"Dr. Cortez Leuschke II\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:05','2024-03-05 00:58:05',NULL),(9,3,0.00,194.00,4316.00,'USD','','{\"name\":\"Jess Hodkiewicz\",\"number\":\"+12728613030\",\"full_name\":\"Miss Allie Russel\",\"description\":\"Dr. Cortez Leuschke II\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:05','2024-03-05 00:58:05',NULL),(10,3,0.00,268.00,4122.00,'USD','','{\"name\":\"Jess Hodkiewicz\",\"number\":\"+12728613030\",\"full_name\":\"Miss Allie Russel\",\"description\":\"Dr. Cortez Leuschke II\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:06','2024-03-05 00:58:06',NULL),(11,4,0.00,145.00,3507.00,'USD','','{\"name\":\"Prof. Josianne Wisoky Sr.\",\"number\":\"+13605791216\",\"full_name\":\"Kamryn Mertz IV\",\"description\":\"Julius Halvorson IV\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:06','2024-03-05 00:58:06',NULL),(12,4,0.00,348.00,3362.00,'USD','','{\"name\":\"Prof. Josianne Wisoky Sr.\",\"number\":\"+13605791216\",\"full_name\":\"Kamryn Mertz IV\",\"description\":\"Julius Halvorson IV\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:07','2024-03-05 00:58:07',NULL),(13,4,0.00,359.00,3014.00,'USD','','{\"name\":\"Prof. Josianne Wisoky Sr.\",\"number\":\"+13605791216\",\"full_name\":\"Kamryn Mertz IV\",\"description\":\"Julius Halvorson IV\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:08','2024-03-05 00:58:08',NULL),(14,4,0.00,699.00,2655.00,'USD','','{\"name\":\"Prof. Josianne Wisoky Sr.\",\"number\":\"+13605791216\",\"full_name\":\"Kamryn Mertz IV\",\"description\":\"Julius Halvorson IV\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:08','2024-03-05 00:58:08',NULL),(15,6,0.00,712.00,5390.00,'USD','','{\"name\":\"Mr. Ramiro Klocko IV\",\"number\":\"+19797890116\",\"full_name\":\"Arden Hill\",\"description\":\"Ms. Antonietta Wolf\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:09','2024-03-05 00:58:09',NULL),(16,6,0.00,723.00,4678.00,'USD','','{\"name\":\"Mr. Ramiro Klocko IV\",\"number\":\"+19797890116\",\"full_name\":\"Arden Hill\",\"description\":\"Ms. Antonietta Wolf\"}',NULL,0,'completed',NULL,'2024-03-05 00:58:09','2024-03-05 00:58:09',NULL),(17,7,0.00,124.00,2859.00,'USD','','{\"name\":\"Bell Langosh\",\"number\":\"+12256545197\",\"full_name\":\"Dr. Cydney Rippin III\",\"description\":\"Prof. Elroy Corkery DDS\"}',NULL,0,'pending',NULL,'2024-03-05 00:58:10','2024-03-05 00:58:10',NULL),(18,7,0.00,653.00,2735.00,'USD','','{\"name\":\"Bell Langosh\",\"number\":\"+12256545197\",\"full_name\":\"Dr. Cydney Rippin III\",\"description\":\"Prof. Elroy Corkery DDS\"}',NULL,0,'completed',NULL,'2024-03-05 00:58:10','2024-03-05 00:58:10',NULL),(19,7,0.00,342.00,2082.00,'USD','','{\"name\":\"Bell Langosh\",\"number\":\"+12256545197\",\"full_name\":\"Dr. Cydney Rippin III\",\"description\":\"Prof. Elroy Corkery DDS\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:11','2024-03-05 00:58:11',NULL),(20,7,0.00,518.00,1740.00,'USD','','{\"name\":\"Bell Langosh\",\"number\":\"+12256545197\",\"full_name\":\"Dr. Cydney Rippin III\",\"description\":\"Prof. Elroy Corkery DDS\"}',NULL,0,'processing',NULL,'2024-03-05 00:58:11','2024-03-05 00:58:11',NULL);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','bridget.botsford@example.net','+14803410225','8403 Destini Cape Apt. 797','LT','Maine','Zulaufside',1,'main/stores/1.png','Laboriosam voluptatum accusamus autem aut velit ipsum numquam reprehenderit. Pariatur omnis maxime laboriosam excepturi quia autem beatae. Sint aut reprehenderit ducimus vitae corporis amet. Harum autem quam sunt a iusto quia dolorum consequatur. Sequi accusantium error voluptatem iste temporibus provident explicabo. Quasi facilis pariatur corrupti minima qui est tempore.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(2,'Global Office','julie.miller@example.org','+17169249885','74660 Wolf Common','WF','Tennessee','East Lauriannemouth',2,'main/stores/2.png','Accusamus placeat recusandae eaque doloremque iure vel. Nemo fuga quia unde et eaque. Debitis aliquid impedit ut et eius fugiat.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(3,'Young Shop','dooley.emerson@example.net','+13376426706','5190 Reichert Roads','ME','Virginia','East Generalchester',3,'main/stores/3.png','Ut ad ut eius itaque architecto quis. Nam est ipsam dolorem. Excepturi est facere rerum autem. Vero dignissimos ut hic cupiditate numquam quo. Officiis consequuntur qui quasi aliquam tempore. Voluptatum amet odio similique eius qui minus. Eius fuga eveniet atque asperiores vitae consequatur veniam. Non eveniet deleniti ipsam vitae amet et ex.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(4,'Global Store','dibbert.joel@example.net','+17658223842','89436 Roberts Fall Apt. 932','MR','Maine','Port Oral',4,'main/stores/4.png','Aliquid consequatur ad voluptatem iusto vel consectetur reiciendis. Dolores voluptatibus qui voluptas quibusdam. Dicta error totam quo ex necessitatibus deleniti optio. Est est quo vitae assumenda. Aspernatur voluptatem sit magnam laborum perferendis autem ad occaecati. Nostrum repellat voluptas qui. Ab doloremque sit dolore aut reprehenderit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(5,'Robert’s Store','jarvis.herman@example.com','+16827273128','7410 Little Meadow','DJ','Vermont','West Othoborough',5,'main/stores/5.png','Tempore vero doloribus aliquam dolor qui totam. Occaecati quia ad omnis assumenda itaque quia. Qui nihil omnis est ea tempora quia necessitatibus. Fugiat velit nihil explicabo nulla ipsam ratione. Ut rem facere veniam. Laborum debitis animi sunt ad et aut natus. Sint nemo eius amet in in saepe sapiente.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(6,'Stouffer','kutch.denis@example.net','+19407959845','182 Hester Ranch','YE','Texas','East Frederick',6,'main/stores/6.png','Aut quae aperiam dolor tempora. Tempora cupiditate eos sit error. Sint voluptas quam necessitatibus vitae. Est ut nesciunt eum odit. Consequatur voluptatibus culpa eum qui molestiae libero laboriosam. Quam quia est neque voluptatem repudiandae voluptate fugit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(7,'StarKist','torp.maeve@example.com','+12564937368','5720 Champlin Port','QA','Idaho','O\'Haraborough',7,'main/stores/7.png','Tempora quas porro eveniet sapiente omnis sint at. Deleniti rerum dolores et delectus. Maiores alias accusantium qui debitis ab odit. Reprehenderit suscipit ea minima illo et non expedita. Similique esse ut assumenda nihil laboriosam ratione ut. Praesentium ut assumenda fuga et ea. Ut beatae eos sint rerum reiciendis esse.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL),(8,'Old El Paso','gerhold.titus@example.net','+17799860169','84454 Bednar Stream','ET','California','Donnellyborough',8,'main/stores/8.png','Eos rerum a vel. Provident cupiditate numquam minima et aperiam sint. Aperiam fugiat labore aut porro est voluptas corrupti. Et dolorem ut aut perspiciatis natus sunt. Nostrum placeat porro ea alias rerum modi. Modi accusantium laudantium explicabo et vitae quos. Libero odit et iure aliquid quia. Blanditiis cupiditate ea in error. Enim illum nihil magnam eos.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-03-05 00:57:41','2024-03-05 00:57:41',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `mp_vendor_info` VALUES (1,1,5339.00,0.00,15634.00,'$2y$12$kW.YxyCpWDrCmBia9FrCuuE5NnNR9neBDrbQGxHl5BgFVu22ie1UO','{\"name\":\"Alexane Emard\",\"number\":\"+15868428282\",\"full_name\":\"Oliver Ledner\",\"description\":\"Dangelo McDermott\"}','2024-03-05 00:57:39','2024-03-05 00:58:03','bank_transfer',NULL),(2,2,692.00,0.00,1530.00,'$2y$12$9gV..qHxC8cETj8OX9U49.rQSH8FwNDm63mjWkcTO8lHz6tAec7Ne','{\"name\":\"Johnathon Senger\",\"number\":\"+17606303453\",\"full_name\":\"Christa Jacobs\",\"description\":\"Dr. Madison Johns\"}','2024-03-05 00:57:40','2024-03-05 00:58:04','bank_transfer',NULL),(3,3,3854.00,0.00,7464.00,'$2y$12$GHlEaCGMfSEX.AEB8JFbqe/3JQBZ811EP/d1/.8Pwntb992Mybpc2','{\"name\":\"Jess Hodkiewicz\",\"number\":\"+12728613030\",\"full_name\":\"Miss Allie Russel\",\"description\":\"Dr. Cortez Leuschke II\"}','2024-03-05 00:57:40','2024-03-05 00:58:06','bank_transfer',NULL),(4,4,1956.00,0.00,3507.00,'$2y$12$WJx16zNTGpd5BLSjsWy2Auqyc8.DZqlv9POsrf3c.bGGcDUZaWiJu','{\"name\":\"Prof. Josianne Wisoky Sr.\",\"number\":\"+13605791216\",\"full_name\":\"Kamryn Mertz IV\",\"description\":\"Julius Halvorson IV\"}','2024-03-05 00:57:40','2024-03-05 00:58:09','bank_transfer',NULL),(5,5,0.00,0.00,0.00,'$2y$12$LN08nanbBG6sc7bO/JFGGOjhlVhi7T6Xy9u1gskPiydZCjhRoSI9C','{\"name\":\"Dr. Kaitlyn Kerluke\",\"number\":\"+15099383973\",\"full_name\":\"Jedidiah Rutherford DVM\",\"description\":\"Ceasar Pacocha\"}','2024-03-05 00:57:40','2024-03-05 00:57:40','bank_transfer',NULL),(6,6,3955.00,0.00,5390.00,'$2y$12$0vQpN4Y9AIqvMIazpqY0T.CbY20RBT5miKxxzV/61L.mQheBgCUNi','{\"name\":\"Mr. Ramiro Klocko IV\",\"number\":\"+19797890116\",\"full_name\":\"Arden Hill\",\"description\":\"Ms. Antonietta Wolf\"}','2024-03-05 00:57:41','2024-03-05 00:58:10','bank_transfer',NULL),(7,7,1222.00,0.00,2859.00,'$2y$12$5EPDjOKje1pGa4YjJqNmc.ly8PBh4CLYqmUnZ7dBtJzzVkZpudySK','{\"name\":\"Bell Langosh\",\"number\":\"+12256545197\",\"full_name\":\"Dr. Cydney Rippin III\",\"description\":\"Prof. Elroy Corkery DDS\"}','2024-03-05 00:57:41','2024-03-05 00:58:12','bank_transfer',NULL),(8,8,0.00,0.00,0.00,'$2y$12$Gz1XuKqnCKPYOr.ImziVRuVeWF6cnCgyTwfeYy4frq6z14q.Um0NC','{\"name\":\"Tamia Christiansen\",\"number\":\"+15035267940\",\"full_name\":\"Keara Jast\",\"description\":\"Berneice Ullrich\"}','2024-03-05 00:57:41','2024-03-05 00:57:41','bank_transfer',NULL);
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"5\" key=\"home-slider\" shape_1=\"grocery/sliders/shape-1.png\" shape_2=\"grocery/sliders/shape-2.png\" shape_3=\"grocery/sliders/shape-3.png\" shape_4=\"grocery/sliders/shape-4.png\"][/simple-slider][ecommerce-categories category_ids=\"1,5,9,13,14,18\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\"][/ecommerce-categories][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\"][/ecommerce-product-groups][ecommerce-flash-sale style=\"2\" title=\"Grab the best Offer Of this Week!\" subtitle=\"Best Deals of the week!\" flash_sale_id=\"1\" limit=\"3\" background_color=\"#F3F3F3\" background_image=\"grocery/banners/3.png\"][/ecommerce-flash-sale]<p> </p>[ecommerce-product-groups style=\"columns\" tabs=\"trending,top-rated\" limit=\"3\" ads=\"GA3K1VZWNMPF\"][/ecommerce-product-groups][testimonials style=\"3\" title=\"Our Happy Customers\" subtitle=\"Customer Reviews\" testimonial_ids=\"1,2,3,4\"][/testimonials][ecommerce-products style=\"slider\" title=\"Bestsellers of the week\" subtitle=\" More to Discover\" by=\"category\" category_ids=\"5\" limit=\"5\" ads_ids=\"L1WDL8YGZUOR\"][/ecommerce-products][site-features style=\"4\" quantity=\"4\" title_1=\"Flexible Delivery\" icon_1=\"ti ti-truck-delivery\" title_2=\"100% Money Back\" icon_2=\"ti ti-currency-dollar\" title_3=\"Secure Payment\" icon_3=\"ti ti-credit-card\" title_4=\"24 Hour Support\" icon_4=\"ti ti-headset\"][/site-features][app-downloads title=\"Get the app & get Your Groceries from home\" google_label=\"Google Play\" google_icon=\"ti ti-brand-google-play\" google_url=\"https://play.google.com/\" apple_label=\"Apple Store\" apple_icon=\"ti ti-brand-apple-filled\" apple_url=\"https://apps.apple.com/\" screenshot=\"main/general/cta-thumb-1.jpg\" shape_image_left=\"main/general/cta-shape-1.png\" shape_image_right=\"main/general/cta-shape-2.png\"][/app-downloads]',1,NULL,'full-width',NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(2,'Product Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\"][/ads][ecommerce-categories category_ids=\"1,5,9,13,14,18\" style=\"grid\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(5,'Contact','[contact-form show_contact_form=&quot;0,1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;0,1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(7,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(8,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46'),(9,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-03-05 00:57:46','2024-03-05 00:57:46');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'ZAE4DHNCTW','paystack',NULL,2156.00,1,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:46','2024-03-05 00:57:46','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'TXJTLSCDWR','sslcommerz',NULL,4371.00,2,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'DK4Y9VZJZT','paystack',NULL,3711.00,3,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'WZ1FTPMTHA','razorpay',NULL,7464.00,4,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'0SGLU9IM7R','sslcommerz',NULL,7285.00,5,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'MKKV9FIXMC','sslcommerz',NULL,3308.00,6,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'MY5IHKCWGP','razorpay',NULL,4112.00,7,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:47','2024-03-05 00:57:47','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'USQPLFQYBW','stripe',NULL,2070.00,8,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'WT1YAIL7JB','razorpay',NULL,2846.00,9,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'1B3DIAAVRI','cod',NULL,7464.00,10,'pending','confirm',10,NULL,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'30QZPUJZZK','razorpay',NULL,1078.00,11,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'EEIILXXO5Z','bank_transfer',NULL,6616.00,12,'pending','confirm',9,NULL,NULL,'2024-03-05 00:57:48','2024-03-05 00:57:48','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'MIKCT6DPKM','razorpay',NULL,765.00,13,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'CKJJFR8EEV','paystack',NULL,953.00,14,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'N5DY3PCDQS','sslcommerz',NULL,2060.00,15,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'2N7BFPES1R','stripe',NULL,1457.00,16,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'XPLSLOZLSF','razorpay',NULL,8280.00,17,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'AUWOAEEFBD','stripe',NULL,3134.00,18,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:49','2024-03-05 00:57:49','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'VYEIDY04CV','paystack',NULL,1944.00,19,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'CXCUH6B9WM','paystack',NULL,2687.00,20,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'V60NOSZWGQ','stripe',NULL,2448.00,21,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'K5J9H0TBQO','bank_transfer',NULL,1965.00,22,'pending','confirm',9,NULL,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'GT5MTJD5WI','bank_transfer',NULL,5699.00,23,'pending','confirm',10,NULL,NULL,'2024-03-05 00:57:50','2024-03-05 00:57:50','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'B24RV6ABGG','cod',NULL,5692.00,24,'pending','confirm',9,NULL,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'PS5UGQDH4G','paypal',NULL,1078.00,25,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'MOFWFUZ6F3','paypal',NULL,3308.00,26,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'GZLMCVVOQB','paypal',NULL,6307.00,27,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'P9FWKFSDOZ','paypal',NULL,765.00,28,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:51','2024-03-05 00:57:51','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'SBUY0GRAZR','sslcommerz',NULL,1055.00,29,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'CSGL5UBF1S','paystack',NULL,3812.00,30,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'RPCOQG3VY4','paypal',NULL,1310.00,31,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'3QHTJLAB1I','paystack',NULL,4976.00,32,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'3GSAJD9K6L','sslcommerz',NULL,2457.00,33,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'LZQZZ5CDTL','bank_transfer',NULL,4140.00,34,'pending','confirm',10,NULL,NULL,'2024-03-05 00:57:52','2024-03-05 00:57:52','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'CMYZOIRJFT','stripe',NULL,655.00,35,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'Z5G0VGO6GD','bank_transfer',NULL,2488.00,36,'pending','confirm',10,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'8FJIQKZPJT','stripe',NULL,1348.00,37,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'SCD66MBGP5','razorpay',NULL,2457.00,38,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'1OM90XGIMG','sslcommerz',NULL,7257.00,39,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'ZNURWHB7KF','sslcommerz',NULL,7072.00,40,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:53','2024-03-05 00:57:53','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'FFXYYEWQSC','sslcommerz',NULL,820.00,41,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'VGKRGGQKFP','razorpay',NULL,2859.00,42,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'BQJBPEESSU','paypal',NULL,4144.00,43,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'YS4SWGDFN9','cod',NULL,4523.00,44,'pending','confirm',9,NULL,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'FAXVOHTDPX','stripe',NULL,6180.00,45,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:54','2024-03-05 00:57:54','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'QYO91V1XCU','razorpay',NULL,4371.00,46,'completed','confirm',9,NULL,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'HLGKHA3KAU','stripe',NULL,1118.00,47,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'EAAORBWAQT','paystack',NULL,2156.00,48,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'HOGCVIMYJZ','sslcommerz',NULL,2474.00,49,'completed','confirm',10,NULL,NULL,'2024-03-05 00:57:55','2024-03-05 00:57:55','Botble\\Ecommerce\\Models\\Customer',NULL);
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
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `post_categories` VALUES (4,1),(6,1),(5,2),(2,2),(4,3),(6,3),(6,4),(1,4),(4,5),(3,5),(4,6),(1,6),(3,7),(2,7),(2,8),(5,9),(2,9),(2,10),(4,10),(4,11),(2,11),(2,12),(6,12),(6,13),(2,13),(4,14),(5,15),(3,15),(5,16),(2,16),(5,17),(1,17),(1,18),(2,18);
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
INSERT INTO `post_tags` VALUES (8,1),(4,1),(2,1),(5,2),(6,2),(7,2),(8,3),(1,3),(4,3),(8,4),(4,4),(1,5),(7,5),(8,6),(3,6),(2,7),(3,7),(5,7),(4,8),(6,8),(5,9),(8,9),(3,9),(4,10),(2,10),(3,10),(8,11),(4,11),(5,12),(3,12),(8,12),(5,13),(7,13),(5,14),(8,14),(3,15),(4,15),(6,16),(8,16),(5,17),(8,17),(7,17),(1,18),(7,18);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Just then she heard one of them didn\'t know it to half-past one as long as it was good manners for her neck from being broken. She hastily put down the chimney?--Nay, I shan\'t! YOU do it!--That I.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1330,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','His voice has a timid voice at her rather inquisitively, and seemed not to be no sort of way, \'Do cats eat bats, I wonder?\' And here poor Alice in a low, weak voice. \'Now, I give it up,\' Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',1011,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,'The Top 2020 Handbag Trends to Know','Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of such a hurry that she let the Dormouse began in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1931,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,'How to Match the Color of Your Handbag With an Outfit','Alice desperately: \'he\'s perfectly idiotic!\' And she went round the neck of the what?\' said the March Hare said--\' \'I didn\'t!\' the March Hare interrupted in a hurry: a large fan in the direction it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',2066,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(5,'How to Care for Leather Bags','Pigeon had finished. \'As if it please your Majesty,\' said the last few minutes, and began staring at the Queen, the royal children; there were any tears. No, there were no tears. \'If you\'re going to.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',858,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Gryphon never learnt it.\' \'Hadn\'t time,\' said the King exclaimed, turning to Alice, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to encourage the witness at all.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',2301,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(7,'Essential Qualities of Highly Successful Music','By the use of this was not much like keeping so close to them, they set to partners--\' \'--change lobsters, and retire in same order,\' continued the Pigeon, but in a tone of great curiosity. \'Soles.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',2152,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(8,'9 Things I Love About Shaving My Head','Dormouse\'s place, and Alice was not a bit hurt, and she hurried out of its mouth, and addressed her in an offended tone. And the moral of that is--\"Birds of a procession,\' thought she, \'what would.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1165,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(9,'Why Teamwork Really Makes The Dream Work','But they HAVE their tails in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the right words,\' said poor Alice, who was beginning very angrily, but the Mouse replied rather crossly.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',2169,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(10,'The World Caters to Average People','SAID was, \'Why is a very poor speaker,\' said the Hatter: \'as the things I used to do:-- \'How doth the little glass table. \'Now, I\'ll manage better this time,\' she said, by way of nursing it, (which.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',420,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(11,'The litigants on the screen are not actors','Mock Turtle repeated thoughtfully. \'I should like to have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was nothing on it were nine o\'clock in the air. \'--as far out to sea. So they got.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',343,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(12,'Hiring the Right Sales Team at the Right Time','I,\' said the Queen was close behind it when she went down on her face like the three were all ornamented with hearts. Next came the royal children, and make THEIR eyes bright and eager with many a.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',2123,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(13,'Fully Embrace the Return of 90s fashion','Alice would not join the dance? Will you, won\'t you, won\'t you, will you join the dance. Would not, could not make out at all what had become of me?\' Luckily for Alice, the little golden key was.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',526,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(14,'Exploring the English Countryside','Dormouse say?\' one of the court,\" and I never heard of such a neck as that! No, no! You\'re a serpent; and there\'s no name signed at the sudden change, but very glad to find that she was going to do.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',1252,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(15,'Here’s the First Valentino’s New Makeup Collection','Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I\'d gone to see it pop down a jar from one minute to another! However, I\'ve got.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',1595,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(16,'Follow Your own Design process, whatever gets','Alice, she went down to look through into the jury-box, or they would go, and broke off a little nervous about it while the Dodo managed it.) First it marked out a history of the officers of the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1293,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(17,'Freelancer Days 2024, What’s new?','I had it written up somewhere.\' Down, down, down. There was nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it was all about, and shouting \'Off with his tea.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',2292,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38'),(18,'Quality Foods Requirments For Every Human Body’s','Alice would not join the dance? Will you, won\'t you, will you join the dance. Would not, could not, would not open any of them. However, on the end of the court. \'What do you call him Tortoise--\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',303,NULL,'2024-03-05 00:57:38','2024-03-05 00:57:38');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-03-05 00:57:33','2024-03-05 00:57:33');
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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','42305cc7f8b684dd0d45f03a54e05f0d',NULL,'2024-03-05 00:57:46'),(2,'api_enabled','0',NULL,'2024-03-05 00:57:46'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-03-05 00:57:46'),(6,'theme','shofy-grocery',NULL,'2024-03-05 00:57:46'),(7,'show_admin_bar','1',NULL,'2024-03-05 00:57:46'),(8,'payment_cod_status','1',NULL,'2024-03-05 00:57:46'),(9,'payment_bank_transfer_status','1',NULL,'2024-03-05 00:57:46'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-03-05 00:57:46'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-03-05 00:57:46'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-03-05 00:57:46'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-03-05 00:57:46'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-03-05 00:57:46'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-03-05 00:57:46'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-03-05 00:57:46'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-03-05 00:57:46'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-03-05 00:57:46'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-03-05 00:57:46'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-03-05 00:57:46'),(21,'language_hide_default','1',NULL,'2024-03-05 00:57:46'),(22,'language_switcher_display','dropdown',NULL,'2024-03-05 00:57:46'),(23,'language_display','all',NULL,'2024-03-05 00:57:46'),(24,'language_hide_languages','[]',NULL,'2024-03-05 00:57:46'),(25,'ecommerce_store_name','Shofy',NULL,'2024-03-05 00:57:46'),(26,'ecommerce_store_phone','1800979769',NULL,'2024-03-05 00:57:46'),(27,'ecommerce_store_address','502 New Street',NULL,'2024-03-05 00:57:46'),(28,'ecommerce_store_state','Brighton VIC',NULL,'2024-03-05 00:57:46'),(29,'ecommerce_store_city','Brighton VIC',NULL,'2024-03-05 00:57:46'),(30,'ecommerce_store_country','AU',NULL,'2024-03-05 00:57:46'),(31,'announcement_max_width',NULL,NULL,'2024-03-05 00:57:46'),(32,'announcement_text_color','#010f1c',NULL,'2024-03-05 00:57:46'),(33,'announcement_background_color','transparent',NULL,'2024-03-05 00:57:46'),(34,'announcement_placement','theme',NULL,'2024-03-05 00:57:46'),(35,'announcement_text_alignment','start',NULL,'2024-03-05 00:57:46'),(36,'announcement_dismissible','0',NULL,'2024-03-05 00:57:46'),(37,'simple_slider_using_assets','0',NULL,'2024-03-05 00:57:46'),(38,'theme-shofy-grocery-site_name','Shofy',NULL,NULL),(39,'theme-shofy-grocery-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(40,'theme-shofy-grocery-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.s',NULL,NULL),(41,'theme-shofy-grocery-copyright','© 2024 All Rights Reserved.',NULL,NULL),(42,'theme-shofy-grocery-primary_font','Jost',NULL,NULL),(43,'theme-shofy-grocery-primary_color','#678E61',NULL,NULL),(44,'theme-shofy-grocery-favicon','main/general/favicon.png',NULL,NULL),(45,'theme-shofy-grocery-logo','main/general/logo.png',NULL,NULL),(46,'theme-shofy-grocery-logo_light','main/general/logo-white.png',NULL,NULL),(47,'theme-shofy-grocery-header_style','5',NULL,NULL),(48,'theme-shofy-grocery-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(49,'theme-shofy-grocery-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(50,'theme-shofy-grocery-hotline','8 800 332 65-66',NULL,NULL),(51,'theme-shofy-grocery-email','contact@fartmart.co',NULL,NULL),(52,'theme-shofy-grocery-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(53,'theme-shofy-grocery-homepage_id','1',NULL,NULL),(54,'theme-shofy-grocery-blog_page_id','4',NULL,NULL),(55,'theme-shofy-grocery-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(56,'theme-shofy-grocery-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(57,'theme-shofy-grocery-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(58,'theme-shofy-grocery-number_of_products_per_page','24',NULL,NULL),(59,'theme-shofy-grocery-number_of_cross_sale_product','6',NULL,NULL),(60,'theme-shofy-grocery-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(61,'theme-shofy-grocery-ecommerce_product_item_style','5',NULL,NULL),(62,'theme-shofy-grocery-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(63,'theme-shofy-grocery-logo_in_invoices','main/general/logo.png',NULL,NULL),(64,'theme-shofy-grocery-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(65,'theme-shofy-grocery-404_page_image','main/general/404.png',NULL,NULL),(66,'theme-shofy-grocery-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL);
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `simple_slider_items` VALUES (1,1,'The Online <br> Grocery Store','grocery/sliders/slider-1.png','/products',NULL,0,'2024-03-05 00:57:41','2024-03-05 00:57:41');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-03-05 00:57:41','2024-03-05 00:57:41');
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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-05 00:57:34','2024-03-05 00:57:34'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-05 00:57:34','2024-03-05 00:57:34'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-05 00:57:34','2024-03-05 00:57:34'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-05 00:57:34','2024-03-05 00:57:34'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-05 00:57:34','2024-03-05 00:57:34'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-05 00:57:37','2024-03-05 00:57:37'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-03-05 00:57:38','2024-03-05 00:57:38'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-03-05 00:57:38','2024-03-05 00:57:38'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-03-05 00:57:41','2024-03-05 00:57:41'),(52,'frozen-food',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(53,'baby-food',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(54,'strawberry',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(55,'ice-cream',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(56,'meat-seafood',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(57,'chicken',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(58,'fish',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(59,'beef',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(60,'milk-dairy',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(61,'milk',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(62,'cheese',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(63,'yogurt',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(64,'beverages',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(65,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(66,'carrot',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(67,'tomato',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(68,'potato',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(69,'fruits',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(70,'banana',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(71,'mango',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-05 00:57:42','2024-03-05 00:57:42'),(72,'organic-apples',1,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(73,'whole-grain-bread',2,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(74,'free-range-eggs',3,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(75,'fresh-salmon-fillet-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(76,'organic-spinach',5,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(77,'grass-fed-ground-beef',6,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(78,'almond-milk',7,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(79,'quinoa-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(80,'avocado',9,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(81,'greek-yogurt',10,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(82,'sweet-potatoes',11,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(83,'organic-cherry-tomatoes-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(84,'honeycrisp-apples',13,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(85,'brown-rice',14,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(86,'organic-chicken-breast',15,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(87,'extra-virgin-olive-oil-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(88,'cucumber',17,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(89,'black-beans',18,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(90,'chia-seeds',19,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(91,'whole-wheat-pasta-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(92,'mixed-nuts',21,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(93,'green-tea-bags',22,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(94,'organic-strawberries',23,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:57:42'),(95,'quinoa-flour-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:42','2024-03-05 00:58:12'),(96,'organic-baby-kale',25,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:57:43'),(97,'salad-dressing',26,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:57:43'),(98,'sweet-corn',27,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:57:43'),(99,'almond-butter-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:58:12'),(100,'whole-pineapple',29,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:57:43'),(101,'cottage-cheese',30,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:57:43','2024-03-05 00:57:43'),(102,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-05 00:57:45','2024-03-05 00:57:45'),(103,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-05 00:57:45','2024-03-05 00:57:45'),(104,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-05 00:57:45','2024-03-05 00:57:45'),(105,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-05 00:57:45','2024-03-05 00:57:45'),(106,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-03-05 00:57:45','2024-03-05 00:57:45'),(107,'home',1,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(108,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(109,'coupons',3,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(110,'blog',4,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(111,'contact',5,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(112,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(113,'our-story',7,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(114,'careers',8,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(115,'shipping',9,'Botble\\Page\\Models\\Page','','2024-03-05 00:57:46','2024-03-05 00:57:46'),(116,'organic-apples',31,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(117,'whole-grain-bread',32,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(118,'whole-grain-bread',33,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(119,'free-range-eggs',34,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(120,'free-range-eggs',35,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(121,'fresh-salmon-fillet-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(122,'organic-spinach',37,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(123,'organic-spinach',38,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(124,'organic-spinach',39,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(125,'grass-fed-ground-beef',40,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(126,'almond-milk',41,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(127,'quinoa-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(128,'quinoa-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(129,'avocado',44,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(130,'avocado',45,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(131,'avocado',46,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(132,'greek-yogurt',47,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(133,'greek-yogurt',48,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(134,'sweet-potatoes',49,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(135,'organic-cherry-tomatoes-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(136,'organic-cherry-tomatoes-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(137,'organic-cherry-tomatoes-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(138,'honeycrisp-apples',53,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(139,'honeycrisp-apples',54,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(140,'brown-rice',55,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(141,'brown-rice',56,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(142,'organic-chicken-breast',57,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(143,'organic-chicken-breast',58,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(144,'extra-virgin-olive-oil-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(145,'extra-virgin-olive-oil-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(146,'extra-virgin-olive-oil-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(147,'cucumber',62,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(148,'cucumber',63,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(149,'cucumber',64,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(150,'black-beans',65,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(151,'black-beans',66,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(152,'chia-seeds',67,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(153,'chia-seeds',68,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(154,'chia-seeds',69,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(155,'whole-wheat-pasta-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(156,'whole-wheat-pasta-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(157,'mixed-nuts',72,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(158,'green-tea-bags',73,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(159,'green-tea-bags',74,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(160,'green-tea-bags',75,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(161,'green-tea-bags',76,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(162,'organic-strawberries',77,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(163,'organic-strawberries',78,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(164,'organic-strawberries',79,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(165,'quinoa-flour-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(166,'quinoa-flour-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(167,'quinoa-flour-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(168,'quinoa-flour-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(169,'organic-baby-kale',84,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(170,'salad-dressing',85,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(171,'salad-dressing',86,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(172,'sweet-corn',87,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(173,'sweet-corn',88,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(174,'sweet-corn',89,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(175,'almond-butter-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(176,'almond-butter-digital',91,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(177,'almond-butter-digital',92,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(178,'whole-pineapple',93,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(179,'whole-pineapple',94,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(180,'whole-pineapple',95,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12'),(181,'cottage-cheese',96,'Botble\\Ecommerce\\Models\\Product','products','2024-03-05 00:58:12','2024-03-05 00:58:12');
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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-05 00:57:38','2024-03-05 00:57:38');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/1.jpg','Developer','published','2024-03-05 00:57:41','2024-03-05 00:57:41'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/9.jpg','CO Founder','published','2024-03-05 00:57:41','2024-03-05 00:57:41'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/9.jpg','UI/UX Designer','published','2024-03-05 00:57:41','2024-03-05 00:57:41'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/5.jpg','Bank of America','published','2024-03-05 00:57:41','2024-03-05 00:57:41');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `users` VALUES (1,'mkonopelski@hessel.info',NULL,'$2y$12$9zvSxOmkA5mpOnv2PN7o.uJvS4o8JN6rMRYvC8weblL6ors5W9Rnu',NULL,'2024-03-05 00:57:33','2024-03-05 00:57:33','Leilani','Ratke','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-grocery',0,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-grocery',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"shofy@support.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(5,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-grocery',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(6,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-grocery',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(7,'BlogSearchWidget','blog_sidebar','shofy-grocery',1,'{\"id\":\"BlogSearchWidget\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(8,'BlogAboutMeWidget','blog_sidebar','shofy-grocery',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/4.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(9,'BlogPostsWidget','blog_sidebar','shofy-grocery',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(10,'BlogCategoriesWidget','blog_sidebar','shofy-grocery',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(11,'BlogTagsWidget','blog_sidebar','shofy-grocery',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-03-05 00:57:46','2024-03-05 00:57:46'),(12,'ProductDetailInfoWidget','product_details_sidebar','shofy-grocery',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-03-05 00:57:46','2024-03-05 00:57:46');
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

-- Dump completed on 2024-03-05 14:58:13
