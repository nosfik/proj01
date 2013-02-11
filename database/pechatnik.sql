-- MySQL dump 10.13  Distrib 5.1.48, for Win32 (ia32)
--
-- Host: localhost    Database: pechatnik
-- ------------------------------------------------------
-- Server version	5.1.48-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'Ğ¿Ğ°Ğ²Ñ‹','Ñ‹Ğ²Ğ°Ğ¿','','','','','','ĞºĞ¸ĞµĞ²','',220,3484),(2,2,'wrewer','werwer','','','','','','fwefw','',220,3505),(3,3,'test','Test','','','','','','fdghfdg','',220,3501),(4,4,'sdfsdf','sdfsdf','','','','','','fgjhfghj','',187,2922),(5,5,'asdfasf','asfasfa','','','','','','dfgdfgdfg','',220,3501),(6,6,'werwer','werwer','','','','','','sdfsdf','',220,3505);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(9) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL DEFAULT '',
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL DEFAULT '',
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL DEFAULT '',
  `paypal` varchar(64) NOT NULL DEFAULT '',
  `bank_name` varchar(64) NOT NULL DEFAULT '',
  `bank_branch_number` varchar(64) NOT NULL DEFAULT '',
  `bank_swift_code` varchar(64) NOT NULL DEFAULT '',
  `bank_account_name` varchar(64) NOT NULL DEFAULT '',
  `bank_account_number` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate`
--

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate_transaction`
--

DROP TABLE IF EXISTS `affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate_transaction`
--

LOCK TABLES `affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `creation_date` datetime DEFAULT NULL,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo`
--

DROP TABLE IF EXISTS `album_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_photo` (
  `album_photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`album_photo_id`),
  KEY `album` (`album_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo`
--

LOCK TABLES `album_photo` WRITE;
/*!40000 ALTER TABLE `album_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8),(12,7,0);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_description`
--

DROP TABLE IF EXISTS `attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_description`
--

LOCK TABLES `attribute_description` WRITE;
/*!40000 ALTER TABLE `attribute_description` DISABLE KEYS */;
INSERT INTO `attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed'),(12,1,'Ğ Ğ°Ğ¼ĞºĞ°1');
/*!40000 ALTER TABLE `attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group`
--

DROP TABLE IF EXISTS `attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group`
--

LOCK TABLES `attribute_group` WRITE;
/*!40000 ALTER TABLE `attribute_group` DISABLE KEYS */;
INSERT INTO `attribute_group` VALUES (3,2),(4,1),(5,3),(6,4),(7,0);
/*!40000 ALTER TABLE `attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_group_description`
--

DROP TABLE IF EXISTS `attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_group_description`
--

LOCK TABLES `attribute_group_description` WRITE;
/*!40000 ALTER TABLE `attribute_group_description` DISABLE KEYS */;
INSERT INTO `attribute_group_description` VALUES (3,1,'ĞŸĞ°Ğ¼ÑÑ‚ÑŒ'),(4,1,'Technical'),(5,1,'ĞœĞ°Ñ‚ĞµÑ€Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¿Ğ»Ğ°Ñ‚Ğ°'),(6,1,'ĞŸÑ€Ğ¾Ñ†ĞµÑÑĞ¾Ñ€'),(7,1,'Ğ Ğ°Ğ¼ĞºĞ¸');
/*!40000 ALTER TABLE `attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (6,'HP Products',0),(7,'Samsung Tab',0),(8,'Manufacturers',0);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image`
--

LOCK TABLES `banner_image` WRITE;
/*!40000 ALTER TABLE `banner_image` DISABLE KEYS */;
INSERT INTO `banner_image` VALUES (78,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','data/demo/samsung_banner.jpg'),(85,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_banner.jpg'),(83,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/demo/palm_logo.jpg'),(82,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/demo/sony_logo.jpg'),(81,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=9','data/demo/canon_logo.jpg'),(80,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','data/demo/apple_logo.jpg'),(79,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=5','data/demo/htc_logo.jpg'),(84,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_logo.jpg');
/*!40000 ALTER TABLE `banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image_description`
--

LOCK TABLES `banner_image_description` WRITE;
/*!40000 ALTER TABLE `banner_image_description` DISABLE KEYS */;
INSERT INTO `banner_image_description` VALUES (84,1,8,'Hewlett-Packard'),(83,1,8,'Palm'),(82,1,8,'Sony'),(78,1,7,'Samsung Tab 10.1'),(85,1,6,'HP Banner'),(81,1,8,'Canon'),(80,1,8,'Apple'),(79,1,8,'HTC');
/*!40000 ALTER TABLE `banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (59,'',0,0,1,0,1,'2013-02-02 15:05:53','2013-02-02 15:05:53'),(60,'',0,0,1,0,1,'2013-02-02 15:06:18','2013-02-02 15:06:18'),(61,'',59,0,1,0,1,'2013-02-02 15:07:14','2013-02-02 15:07:14'),(62,'',59,0,1,0,1,'2013-02-02 15:07:33','2013-02-02 15:07:33'),(63,'',59,0,1,0,1,'2013-02-02 15:07:51','2013-02-02 15:07:51'),(64,'',59,0,1,0,1,'2013-02-02 15:08:12','2013-02-02 15:08:12'),(65,'',59,0,1,0,1,'2013-02-02 15:08:25','2013-02-02 15:08:25'),(66,'',60,0,1,0,1,'2013-02-02 15:09:12','2013-02-02 15:09:12'),(67,'',60,0,1,0,1,'2013-02-02 15:09:22','2013-02-02 15:09:34');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_description`
--

LOCK TABLES `category_description` WRITE;
/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` VALUES (59,1,'Ğ Ğ°Ğ¼ĞºĞ¸','','','','',''),(60,1,'Ğ¤Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼Ñ‹','','','','',''),(61,1,'Ğ Ğ°Ğ¼ĞºĞ¸ 10Ñ…15','','','','',''),(62,1,'Ğ Ğ°Ğ¼ĞºĞ¸ 15Ñ…21','','','','',''),(63,1,'Ğ Ğ°Ğ¼ĞºĞ¸ 21Ñ…30','','','','',''),(64,1,'Ğ Ğ°Ğ¼ĞºĞ¸ Ğ¸Ğ· Ğ´ĞµÑ€ĞµĞ²Ğ°','','','','',''),(65,1,'Ğ Ğ°Ğ¼ĞºĞ¸ Ğ¸Ğ· Ğ¿Ğ»Ğ°ÑÑ‚Ğ¸ĞºĞ°','','','','',''),(66,1,'Ğ¤Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼Ñ‹ 10Ñ…15','','','','',''),(67,1,'Ğ¤Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼Ñ‹ 21Ñ…30','','','','','');
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_layout`
--

DROP TABLE IF EXISTS `category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_layout`
--

LOCK TABLES `category_to_layout` WRITE;
/*!40000 ALTER TABLE `category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_to_store`
--

DROP TABLE IF EXISTS `category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_to_store`
--

LOCK TABLES `category_to_store` WRITE;
/*!40000 ALTER TABLE `category_to_store` DISABLE KEYS */;
INSERT INTO `category_to_store` VALUES (59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0);
/*!40000 ALTER TABLE `category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) NOT NULL DEFAULT '',
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'ĞÑ„Ğ³Ğ°Ğ½Ğ¸ÑÑ‚Ğ°Ğ½','AF','AFG','',0,1),(2,'ĞĞ»Ğ±Ğ°Ğ½Ğ¸Ñ','AL','ALB','',0,1),(3,'ĞĞ»Ğ¶Ğ¸Ñ€','DZ','DZA','',0,1),(4,'Ğ’Ğ¾ÑÑ‚Ğ¾Ñ‡Ğ½Ğ¾Ğµ Ğ¡Ğ°Ğ¼Ğ¾Ğ°','AS','ASM','',0,1),(5,'ĞĞ½Ğ´Ğ¾Ñ€Ñ€Ğ°','AD','AND','',0,1),(6,'ĞĞ½Ğ³Ğ¾Ğ»Ğ°','AO','AGO','',0,1),(7,'ĞĞ½Ğ³Ğ¸Ğ»ÑŒÑ','AI','AIA','',0,1),(8,'ĞĞ½Ñ‚Ğ°Ñ€ĞºÑ‚Ğ¸Ğ´Ğ°','AQ','ATA','',0,1),(9,'ĞĞ½Ñ‚Ğ¸Ğ³ÑƒĞ° Ğ¸ Ğ‘Ğ°Ñ€Ğ±ÑƒĞ´Ğ°','AG','ATG','',0,1),(10,'ĞÑ€Ğ³ĞµĞ½Ñ‚Ğ¸Ğ½Ğ°','AR','ARG','',0,1),(11,'ĞÑ€Ğ¼ĞµĞ½Ğ¸Ñ','AM','ARM','',0,1),(12,'ĞÑ€ÑƒĞ±Ğ°','AW','ABW','',0,1),(13,'ĞĞ²ÑÑ‚Ñ€Ğ°Ğ»Ğ¸Ñ','AU','AUS','',0,1),(14,'ĞĞ²ÑÑ‚Ñ€Ğ¸Ñ','AT','AUT','',0,1),(15,'ĞĞ·ĞµÑ€Ğ±Ğ°Ğ¹Ğ´Ğ¶Ğ°Ğ½','AZ','AZE','',0,1),(16,'Ğ‘Ğ°Ğ³Ğ°Ğ¼ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','BS','BHS','',0,1),(17,'Ğ‘Ğ°Ñ…Ñ€ĞµĞ¹Ğ½','BH','BHR','',0,1),(18,'Ğ‘Ğ°Ğ½Ğ³Ğ»Ğ°Ğ´ĞµÑˆ','BD','BGD','',0,1),(19,'Ğ‘Ğ°Ñ€Ğ±Ğ°Ğ´Ğ¾Ñ','BB','BRB','',0,1),(20,'Ğ‘ĞµĞ»Ğ¾Ñ€ÑƒÑÑĞ¸Ñ (Ğ‘ĞµĞ»Ğ°Ñ€ÑƒÑÑŒ)','BY','BLR','',0,1),(21,'Ğ‘ĞµĞ»ÑŒĞ³Ğ¸Ñ','BE','BEL','',0,1),(22,'Ğ‘ĞµĞ»Ğ¸Ğ·','BZ','BLZ','',0,1),(23,'Ğ‘ĞµĞ½Ğ¸Ğ½','BJ','BEN','',0,1),(24,'Ğ‘ĞµÑ€Ğ¼ÑƒĞ´ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','BM','BMU','',0,1),(25,'Ğ‘ÑƒÑ‚Ğ°Ğ½','BT','BTN','',0,1),(26,'Ğ‘Ğ¾Ğ»Ğ¸Ğ²Ğ¸Ñ','BO','BOL','',0,1),(27,'Ğ‘Ğ¾ÑĞ½Ğ¸Ñ Ğ¸ Ğ“ĞµÑ€Ñ†ĞµĞ³Ğ¾Ğ²Ğ¸Ğ½Ğ°','BA','BIH','',0,1),(28,'Ğ‘Ğ¾Ñ‚ÑĞ²Ğ°Ğ½Ğ°','BW','BWA','',0,1),(29,'ĞÑÑ‚Ñ€Ğ¾Ğ² Ğ‘ÑƒĞ²Ğµ','BV','BVT','',0,1),(30,'Ğ‘Ñ€Ğ°Ğ·Ğ¸Ğ»Ğ¸Ñ','BR','BRA','',0,1),(31,'Ğ‘Ñ€Ğ¸Ñ‚Ğ°Ğ½ÑĞºĞ°Ñ Ñ‚ĞµÑ€Ñ€Ğ¸Ñ‚Ğ¾Ñ€Ğ¸Ñ Ğ² Ğ˜Ğ½Ğ´Ğ¸Ğ¹ÑĞºĞ¾Ğ¼ Ğ¾ĞºĞµĞ°Ğ½Ğµ','IO','IOT','',0,1),(32,'Ğ‘Ñ€ÑƒĞ½ĞµĞ¹','BN','BRN','',0,1),(33,'Ğ‘Ğ¾Ğ»Ğ³Ğ°Ñ€Ğ¸Ñ','BG','BGR','',0,1),(34,'Ğ‘ÑƒÑ€ĞºĞ¸Ğ½Ğ°-Ğ¤Ğ°ÑĞ¾','BF','BFA','',0,1),(35,'Ğ‘ÑƒÑ€ÑƒĞ½Ğ´Ğ¸','BI','BDI','',0,1),(36,'ĞšĞ°Ğ¼Ğ±Ğ¾Ğ´Ğ¶Ğ°','KH','KHM','',0,1),(37,'ĞšĞ°Ğ¼ĞµÑ€ÑƒĞ½','CM','CMR','',0,1),(38,'ĞšĞ°Ğ½Ğ°Ğ´Ğ°','CA','CAN','',0,1),(39,'ĞšĞ°Ğ±Ğ¾-Ğ’ĞµÑ€Ğ´Ğµ','CV','CPV','',0,1),(40,'ĞšĞ°Ğ¹Ğ¼Ğ°Ğ½Ğ¾Ğ²Ñ‹ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','KY','CYM','',0,1),(41,'Ğ¦ĞµĞ½Ñ‚Ñ€Ğ°Ğ»ÑŒĞ½Ğ¾-ĞÑ„Ñ€Ğ¸ĞºĞ°Ğ½ÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','CF','CAF','',0,1),(42,'Ğ§Ğ°Ğ´','TD','TCD','',0,1),(43,'Ğ§Ğ¸Ğ»Ğ¸','CL','CHL','',0,1),(44,'ĞšĞ¸Ñ‚Ğ°Ğ¹ÑĞºĞ°Ñ ĞĞ°Ñ€Ğ¾Ğ´Ğ½Ğ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','CN','CHN','',0,1),(45,'ĞÑÑ‚Ñ€Ğ¾Ğ² Ğ Ğ¾Ğ¶Ğ´ĞµÑÑ‚Ğ²Ğ°','CX','CXR','',0,1),(46,'ĞšĞ¾ĞºĞ¾ÑĞ¾Ğ²Ñ‹Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','CC','CCK','',0,1),(47,'ĞšĞ¾Ğ»ÑƒĞ¼Ğ±Ğ¸Ñ','CO','COL','',0,1),(48,'ĞšĞ¾Ğ¼Ğ¾Ñ€ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','KM','COM','',0,1),(49,'ĞšĞ¾Ğ½Ğ³Ğ¾','CG','COG','',0,1),(50,'ĞÑÑ‚Ñ€Ğ¾Ğ²Ğ° ĞšÑƒĞºĞ°','CK','COK','',0,1),(51,'ĞšĞ¾ÑÑ‚Ğ°-Ğ Ğ¸ĞºĞ°','CR','CRI','',0,1),(52,'ĞšĞ¾Ñ‚ Ğ´\'Ğ˜Ğ²ÑƒĞ°Ñ€','CI','CIV','',0,1),(53,'Ğ¥Ğ¾Ñ€Ğ²Ğ°Ñ‚Ğ¸Ñ','HR','HRV','',0,1),(54,'ĞšÑƒĞ±Ğ°','CU','CUB','',0,1),(55,'ĞšĞ¸Ğ¿Ñ€','CY','CYP','',0,1),(56,'Ğ§ĞµÑ…Ğ¸Ñ','CZ','CZE','',0,1),(57,'Ğ”Ğ°Ğ½Ğ¸Ñ','DK','DNK','',0,1),(58,'Ğ”Ğ¶Ğ¸Ğ±ÑƒÑ‚Ğ¸','DJ','DJI','',0,1),(59,'Ğ”Ğ¾Ğ¼Ğ¸Ğ½Ğ¸ĞºĞ°','DM','DMA','',0,1),(60,'Ğ”Ğ¾Ğ¼Ğ¸Ğ½Ğ¸ĞºĞ°Ğ½ÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','DO','DOM','',0,1),(61,'Ğ’Ğ¾ÑÑ‚Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ Ğ¢Ğ¸Ğ¼Ğ¾Ñ€','TP','TMP','',0,1),(62,'Ğ­ĞºĞ²Ğ°Ğ´Ğ¾Ñ€','EC','ECU','',0,1),(63,'Ğ•Ğ³Ğ¸Ğ¿ĞµÑ‚','EG','EGY','',0,1),(64,'Ğ¡Ğ°Ğ»ÑŒĞ²Ğ°Ğ´Ğ¾Ñ€','SV','SLV','',0,1),(65,'Ğ­ĞºĞ²Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ğ°Ğ»ÑŒĞ½Ğ°Ñ Ğ“Ğ²Ğ¸Ğ½ĞµÑ','GQ','GNQ','',0,1),(66,'Ğ­Ñ€Ğ¸Ñ‚Ñ€ĞµÑ','ER','ERI','',0,1),(67,'Ğ­ÑÑ‚Ğ¾Ğ½Ğ¸Ñ','EE','EST','',0,1),(68,'Ğ­Ñ„Ğ¸Ğ¾Ğ¿Ğ¸Ñ','ET','ETH','',0,1),(69,'Ğ¤Ğ¾Ğ»ĞºĞ»ĞµĞ½Ğ´ÑĞºĞ¸Ğµ (ĞœĞ°Ğ»ÑŒĞ²Ğ¸Ğ½ÑĞºĞ¸Ğµ) Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','FK','FLK','',0,1),(70,'Ğ¤Ğ°Ñ€ĞµÑ€ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','FO','FRO','',0,1),(71,'Ğ¤Ğ¸Ğ´Ğ¶Ğ¸','FJ','FJI','',0,1),(72,'Ğ¤Ğ¸Ğ½Ğ»ÑĞ½Ğ´Ğ¸Ñ','FI','FIN','',0,1),(73,'Ğ¤Ñ€Ğ°Ğ½Ñ†Ğ¸Ñ','FR','FRA','',0,1),(74,'Ğ¤Ñ€Ğ°Ğ½Ñ†Ğ¸Ñ, ĞœĞµÑ‚Ñ€Ğ¾Ğ¿Ğ¾Ğ»Ğ¸Ñ','FX','FXX','',0,1),(75,'Ğ¤Ñ€Ğ°Ğ½Ñ†ÑƒĞ·ÑĞºĞ°Ñ Ğ“Ğ²Ğ¸Ğ°Ğ½Ğ°','GF','GUF','',0,1),(76,'Ğ¤Ñ€Ğ°Ğ½Ñ†ÑƒĞ·ÑĞºĞ°Ñ ĞŸĞ¾Ğ»Ğ¸Ğ½ĞµĞ·Ğ¸Ñ','PF','PYF','',0,1),(77,'Ğ¤Ñ€Ğ°Ğ½Ñ†ÑƒĞ·ÑĞºĞ¸Ğµ Ğ®Ğ¶Ğ½Ñ‹Ğµ Ñ‚ĞµÑ€Ñ€Ğ¸Ñ‚Ğ¾Ñ€Ğ¸Ğ¸','TF','ATF','',0,1),(78,'Ğ“Ğ°Ğ±Ğ¾Ğ½','GA','GAB','',0,1),(79,'Ğ“Ğ°Ğ¼Ğ±Ğ¸Ñ','GM','GMB','',0,1),(80,'Ğ“Ñ€ÑƒĞ·Ğ¸Ñ','GE','GEO','',0,1),(81,'Ğ“ĞµÑ€Ğ¼Ğ°Ğ½Ğ¸Ñ','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(82,'Ğ“Ğ°Ğ½Ğ°','GH','GHA','',0,1),(83,'Ğ“Ğ¸Ğ±Ñ€Ğ°Ğ»Ñ‚Ğ°Ñ€','GI','GIB','',0,1),(84,'Ğ“Ñ€ĞµÑ†Ğ¸Ñ','GR','GRC','',0,1),(85,'Ğ“Ñ€ĞµĞ½Ğ»Ğ°Ğ½Ğ´Ğ¸Ñ','GL','GRL','',0,1),(86,'Ğ“Ñ€ĞµĞ½Ğ°Ğ´Ğ°','GD','GRD','',0,1),(87,'Ğ“Ğ²Ğ°Ğ´ĞµĞ»ÑƒĞ¿Ğ°','GP','GLP','',0,1),(88,'Ğ“ÑƒĞ°Ğ¼','GU','GUM','',0,1),(89,'Ğ“Ğ²Ğ°Ñ‚ĞµĞ¼Ğ°Ğ»Ğ°','GT','GTM','',0,1),(90,'Ğ“Ğ²Ğ¸Ğ½ĞµÑ','GN','GIN','',0,1),(91,'Ğ“Ğ²Ğ¸Ğ½ĞµÑ-Ğ‘Ğ¸ÑĞ°Ñƒ','GW','GNB','',0,1),(92,'Ğ“Ğ°Ğ¹Ğ°Ğ½Ğ°','GY','GUY','',0,1),(93,'Ğ“Ğ°Ğ¸Ñ‚Ğ¸','HT','HTI','',0,1),(94,'Ğ¥ĞµÑ€Ğ´ Ğ¸ ĞœĞ°ĞºĞ´Ğ¾Ğ½Ğ°Ğ»ÑŒĞ´, Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','HM','HMD','',0,1),(95,'Ğ“Ğ¾Ğ½Ğ´ÑƒÑ€Ğ°Ñ','HN','HND','',0,1),(96,'Ğ“Ğ¾Ğ½ĞºĞ¾Ğ½Ğ³','HK','HKG','',0,1),(97,'Ğ’ĞµĞ½Ğ³Ñ€Ğ¸Ñ','HU','HUN','',0,1),(98,'Ğ˜ÑĞ»Ğ°Ğ½Ğ´Ğ¸Ñ','IS','ISL','',0,1),(99,'Ğ˜Ğ½Ğ´Ğ¸Ñ','IN','IND','',0,1),(100,'Ğ˜Ğ½Ğ´Ğ¾Ğ½ĞµĞ·Ğ¸Ñ','ID','IDN','',0,1),(101,'Ğ˜Ñ€Ğ°Ğ½','IR','IRN','',0,1),(102,'Ğ˜Ñ€Ğ°Ğº','IQ','IRQ','',0,1),(103,'Ğ˜Ñ€Ğ»Ğ°Ğ½Ğ´Ğ¸Ñ','IE','IRL','',0,1),(104,'Ğ˜Ğ·Ñ€Ğ°Ğ¸Ğ»ÑŒ','IL','ISR','',0,1),(105,'Ğ˜Ñ‚Ğ°Ğ»Ğ¸Ñ','IT','ITA','',0,1),(106,'Ğ¯Ğ¼Ğ°Ğ¹ĞºĞ°','JM','JAM','',0,1),(107,'Ğ¯Ğ¿Ğ¾Ğ½Ğ¸Ñ','JP','JPN','',0,1),(108,'Ğ˜Ğ¾Ñ€Ğ´Ğ°Ğ½Ğ¸Ñ','JO','JOR','',0,1),(109,'ĞšĞ°Ğ·Ğ°Ñ…ÑÑ‚Ğ°Ğ½','KZ','KAZ','',0,1),(110,'ĞšĞµĞ½Ğ¸Ñ','KE','KEN','',0,1),(111,'ĞšĞ¸Ñ€Ğ¸Ğ±Ğ°Ñ‚Ğ¸','KI','KIR','',0,1),(112,'ĞšĞ¾Ñ€ĞµĞ¹ÑĞºĞ°Ñ ĞĞ°Ñ€Ğ¾Ğ´Ğ½Ğ¾-Ğ”ĞµĞ¼Ğ¾ĞºÑ€Ğ°Ñ‚Ğ¸Ñ‡ĞµÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','KP','PRK','',0,1),(113,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞšĞ¾Ñ€ĞµÑ','KR','KOR','',0,1),(114,'ĞšÑƒĞ²ĞµĞ¹Ñ‚','KW','KWT','',0,1),(115,'ĞšĞ¸Ñ€Ğ³Ğ¸Ğ·Ğ¸Ñ (ĞšÑ‹Ñ€Ğ³Ñ‹Ğ·ÑÑ‚Ğ°Ğ½)','KG','KGZ','',0,1),(116,'Ğ›Ğ°Ğ¾Ñ','LA','LAO','',0,1),(117,'Ğ›Ğ°Ñ‚Ğ²Ğ¸Ñ','LV','LVA','',0,1),(118,'Ğ›Ğ¸Ğ²Ğ°Ğ½','LB','LBN','',0,1),(119,'Ğ›ĞµÑĞ¾Ñ‚Ğ¾','LS','LSO','',0,1),(120,'Ğ›Ğ¸Ğ±ĞµÑ€Ğ¸Ñ','LR','LBR','',0,1),(121,'Ğ›Ğ¸Ğ²Ğ¸Ñ','LY','LBY','',0,1),(122,'Ğ›Ğ¸Ñ…Ñ‚ĞµĞ½ÑˆÑ‚ĞµĞ¹Ğ½','LI','LIE','',0,1),(123,'Ğ›Ğ¸Ñ‚Ğ²Ğ°','LT','LTU','',0,1),(124,'Ğ›ÑĞºÑĞµĞ¼Ğ±ÑƒÑ€Ğ³','LU','LUX','',0,1),(125,'ĞœĞ°ĞºĞ°Ğ¾','MO','MAC','',0,1),(126,'ĞœĞ°ĞºĞµĞ´Ğ¾Ğ½Ğ¸Ñ','MK','MKD','',0,1),(127,'ĞœĞ°Ğ´Ğ°Ğ³Ğ°ÑĞºĞ°Ñ€','MG','MDG','',0,1),(128,'ĞœĞ°Ğ»Ğ°Ğ²Ğ¸','MW','MWI','',0,1),(129,'ĞœĞ°Ğ»Ğ°Ğ¹Ğ·Ğ¸Ñ','MY','MYS','',0,1),(130,'ĞœĞ°Ğ»ÑŒĞ´Ğ¸Ğ²Ñ‹','MV','MDV','',0,1),(131,'ĞœĞ°Ğ»Ğ¸','ML','MLI','',0,1),(132,'ĞœĞ°Ğ»ÑŒÑ‚Ğ°','MT','MLT','',0,1),(133,'ĞœĞ°Ñ€ÑˆĞ°Ğ»Ğ»Ğ¾Ğ²Ñ‹ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','MH','MHL','',0,1),(134,'ĞœĞ°Ñ€Ñ‚Ğ¸Ğ½Ğ¸ĞºĞ°','MQ','MTQ','',0,1),(135,'ĞœĞ°Ğ²Ñ€Ğ¸Ñ‚Ğ°Ğ½Ğ¸Ñ','MR','MRT','',0,1),(136,'ĞœĞ°Ğ²Ñ€Ğ¸ĞºĞ¸Ğ¹','MU','MUS','',0,1),(137,'ĞœĞ°Ğ¹Ğ¾Ñ‚Ñ‚Ğ°','YT','MYT','',0,1),(138,'ĞœĞµĞºÑĞ¸ĞºĞ°','MX','MEX','',0,1),(139,'ĞœĞ¸ĞºÑ€Ğ¾Ğ½ĞµĞ·Ğ¸Ñ','FM','FSM','',0,1),(140,'ĞœĞ¾Ğ»Ğ´Ğ¾Ğ²Ğ°','MD','MDA','',0,1),(141,'ĞœĞ¾Ğ½Ğ°ĞºĞ¾','MC','MCO','',0,1),(142,'ĞœĞ¾Ğ½Ğ³Ğ¾Ğ»Ğ¸Ñ','MN','MNG','',0,1),(143,'ĞœĞ¾Ğ½Ñ‚ÑĞµÑ€Ñ€Ğ°Ñ‚','MS','MSR','',0,1),(144,'ĞœĞ°Ñ€Ğ¾ĞºĞºĞ¾','MA','MAR','',0,1),(145,'ĞœĞ¾Ğ·Ğ°Ğ¼Ğ±Ğ¸Ğº','MZ','MOZ','',0,1),(146,'ĞœÑŒÑĞ½Ğ¼Ğ°','MM','MMR','',0,1),(147,'ĞĞ°Ğ¼Ğ¸Ğ±Ğ¸Ñ','NA','NAM','',0,1),(148,'ĞĞ°ÑƒÑ€Ñƒ','NR','NRU','',0,1),(149,'ĞĞµĞ¿Ğ°Ğ»','NP','NPL','',0,1),(150,'ĞĞ¸Ğ´ĞµÑ€Ğ»Ğ°Ğ½Ğ´Ñ‹','NL','NLD','',0,1),(151,'ĞĞ½Ñ‚Ğ¸Ğ»ÑŒÑĞºĞ¸Ğµ (ĞĞ¸Ğ´ĞµÑ€Ğ»Ğ°Ğ½Ğ´ÑĞºĞ¸Ğµ) Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','AN','ANT','',0,1),(152,'ĞĞ¾Ğ²Ğ°Ñ ĞšĞ°Ğ»ĞµĞ´Ğ¾Ğ½Ğ¸Ñ','NC','NCL','',0,1),(153,'ĞĞ¾Ğ²Ğ°Ñ Ğ—ĞµĞ»Ğ°Ğ½Ğ´Ğ¸Ñ','NZ','NZL','',0,1),(154,'ĞĞ¸ĞºĞ°Ñ€Ğ°Ğ³ÑƒĞ°','NI','NIC','',0,1),(155,'ĞĞ¸Ğ³ĞµÑ€','NE','NER','',0,1),(156,'ĞĞ¸Ğ³ĞµÑ€Ğ¸Ñ','NG','NGA','',0,1),(157,'ĞĞ¸ÑƒÑ','NU','NIU','',0,1),(158,'ĞÑÑ‚Ñ€Ğ¾Ğ² ĞĞ¾Ñ€Ñ„Ğ¾Ğ»Ğº','NF','NFK','',0,1),(159,'Ğ¡ĞµĞ²ĞµÑ€Ğ½Ñ‹Ğµ ĞœĞ°Ñ€Ğ¸Ğ°Ğ½ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','MP','MNP','',0,1),(160,'ĞĞ¾Ñ€Ğ²ĞµĞ³Ğ¸Ñ','NO','NOR','',0,1),(161,'ĞĞ¼Ğ°Ğ½','OM','OMN','',0,1),(162,'ĞŸĞ°ĞºĞ¸ÑÑ‚Ğ°Ğ½','PK','PAK','',0,1),(163,'ĞŸĞ°Ğ»Ğ°Ñƒ','PW','PLW','',0,1),(164,'ĞŸĞ°Ğ½Ğ°Ğ¼Ğ°','PA','PAN','',0,1),(165,'ĞŸĞ°Ğ¿ÑƒĞ° - ĞĞ¾Ğ²Ğ°Ñ Ğ“Ğ²Ğ¸Ğ½ĞµÑ','PG','PNG','',0,1),(166,'ĞŸĞ°Ñ€Ğ°Ğ³Ğ²Ğ°Ğ¹','PY','PRY','',0,1),(167,'ĞŸĞµÑ€Ñƒ','PE','PER','',0,1),(168,'Ğ¤Ğ¸Ğ»Ğ¸Ğ¿Ğ¿Ğ¸Ğ½Ñ‹','PH','PHL','',0,1),(169,'ĞÑÑ‚Ñ€Ğ¾Ğ²Ğ° ĞŸĞ¸Ñ‚ĞºÑÑ€Ğ½','PN','PCN','',0,1),(170,'ĞŸĞ¾Ğ»ÑŒÑˆĞ°','PL','POL','',0,1),(171,'ĞŸĞ¾Ñ€Ñ‚ÑƒĞ³Ğ°Ğ»Ğ¸Ñ','PT','PRT','',0,1),(172,'ĞŸÑƒÑÑ€Ñ‚Ğ¾-Ğ Ğ¸ĞºĞ¾','PR','PRI','',0,1),(173,'ĞšĞ°Ñ‚Ğ°Ñ€','QA','QAT','',0,1),(174,'Ğ ĞµÑĞ½ÑŒĞ¾Ğ½','RE','REU','',0,1),(175,'Ğ ÑƒĞ¼Ñ‹Ğ½Ğ¸Ñ','RO','ROM','',0,1),(176,'Ğ Ğ¾ÑÑĞ¸Ğ¹ÑĞºĞ°Ñ Ğ¤ĞµĞ´ĞµÑ€Ğ°Ñ†Ğ¸Ñ','RU','RUS','',0,1),(177,'Ğ ÑƒĞ°Ğ½Ğ´Ğ°','RW','RWA','',0,1),(178,'Ğ¡ĞµĞ½Ñ‚-ĞšĞ¸Ñ‚Ñ Ğ¸ ĞĞµĞ²Ğ¸Ñ','KN','KNA','',0,1),(179,'Ğ¡ĞµĞ½Ñ‚-Ğ›ÑÑĞ¸Ñ','LC','LCA','',0,1),(180,'Ğ¡ĞµĞ½Ñ‚-Ğ’Ğ¸Ğ½ÑĞµĞ½Ñ‚ Ğ¸ Ğ“Ñ€ĞµĞ½Ğ°Ğ´Ğ¸Ğ½Ñ‹','VC','VCT','',0,1),(181,'Ğ—Ğ°Ğ¿Ğ°Ğ´Ğ½Ğ¾Ğµ Ğ¡Ğ°Ğ¼Ğ¾Ğ°','WS','WSM','',0,1),(182,'Ğ¡Ğ°Ğ½-ĞœĞ°Ñ€Ğ¸Ğ½Ğ¾','SM','SMR','',0,1),(183,'Ğ¡Ğ°Ğ½-Ğ¢Ğ¾Ğ¼Ğµ Ğ¸ ĞŸÑ€Ğ¸Ğ½ÑĞ¸Ğ¿Ğ¸','ST','STP','',0,1),(184,'Ğ¡Ğ°ÑƒĞ´Ğ¾Ğ²ÑĞºĞ°Ñ ĞÑ€Ğ°Ğ²Ğ¸Ñ','SA','SAU','',0,1),(185,'Ğ¡ĞµĞ½ĞµĞ³Ğ°Ğ»','SN','SEN','',0,1),(186,'Ğ¡ĞµĞ¹ÑˆĞµĞ»ÑŒÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','SC','SYC','',0,1),(187,'Ğ¡ÑŒĞµÑ€Ñ€Ğ°-Ğ›ĞµĞ¾Ğ½Ğµ','SL','SLE','',0,1),(188,'Ğ¡Ğ¸Ğ½Ğ³Ğ°Ğ¿ÑƒÑ€','SG','SGP','',0,1),(189,'Ğ¡Ğ»Ğ¾Ğ²Ğ°ĞºĞ¸Ñ','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Ğ¡Ğ»Ğ¾Ğ²ĞµĞ½Ğ¸Ñ','SI','SVN','',0,1),(191,'Ğ¡Ğ¾Ğ»Ğ¾Ğ¼Ğ¾Ğ½Ğ¾Ğ²Ñ‹ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','SB','SLB','',0,1),(192,'Ğ¡Ğ¾Ğ¼Ğ°Ğ»Ğ¸','SO','SOM','',0,1),(193,'Ğ®Ğ¶Ğ½Ğ¾-ĞÑ„Ñ€Ğ¸ĞºĞ°Ğ½ÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','ZA','ZAF','',0,1),(194,'Ğ®Ğ¶Ğ½Ğ°Ñ Ğ”Ğ¶Ğ¾Ñ€Ğ´Ğ¶Ğ¸Ñ Ğ¸ Ğ®Ğ¶Ğ½Ñ‹Ğµ Ğ¡Ğ°Ğ½Ğ´Ğ²Ğ¸Ñ‡ĞµĞ²Ñ‹ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ°','GS','SGS','',0,1),(195,'Ğ˜ÑĞ¿Ğ°Ğ½Ğ¸Ñ','ES','ESP','',0,1),(196,'Ğ¨Ñ€Ğ¸-Ğ›Ğ°Ğ½ĞºĞ°','LK','LKA','',0,1),(197,'ĞÑÑ‚Ñ€Ğ¾Ğ² Ğ¡Ğ²ÑÑ‚Ğ¾Ğ¹ Ğ•Ğ»ĞµĞ½Ñ‹','SH','SHN','',0,1),(198,'Ğ¡ĞµĞ½-ĞŸÑŒĞµÑ€ Ğ¸ ĞœĞ¸ĞºĞµĞ»Ğ¾Ğ½','PM','SPM','',0,1),(199,'Ğ¡ÑƒĞ´Ğ°Ğ½','SD','SDN','',0,1),(200,'Ğ¡ÑƒÑ€Ğ¸Ğ½Ğ°Ğ¼','SR','SUR','',0,1),(201,'Ğ¨Ğ¿Ğ¸Ñ†Ğ±ĞµÑ€Ğ³ĞµĞ½ Ğ¸ Ğ¯Ğ½ ĞœĞ°Ğ¹ĞµĞ½','SJ','SJM','',0,1),(202,'Ğ¡Ğ²Ğ°Ğ·Ğ¸Ğ»ĞµĞ½Ğ´','SZ','SWZ','',0,1),(203,'Ğ¨Ğ²ĞµÑ†Ğ¸Ñ','SE','SWE','',0,1),(204,'Ğ¨Ğ²ĞµĞ¹Ñ†Ğ°Ñ€Ğ¸Ñ','CH','CHE','',0,1),(205,'Ğ¡Ğ¸Ñ€Ğ¸Ñ','SY','SYR','',0,1),(206,'Ğ¢Ğ°Ğ¹Ğ²Ğ°Ğ½ÑŒ (Ğ¿Ñ€Ğ¾Ğ²Ğ¸Ğ½Ñ†Ğ¸Ñ ĞšĞ¸Ñ‚Ğ°Ñ)','TW','TWN','',0,1),(207,'Ğ¢Ğ°Ğ´Ğ¶Ğ¸ĞºĞ¸ÑÑ‚Ğ°Ğ½','TJ','TJK','',0,1),(208,'Ğ¢Ğ°Ğ½Ğ·Ğ°Ğ½Ğ¸Ñ','TZ','TZA','',0,1),(209,'Ğ¢Ğ°Ğ¸Ğ»Ğ°Ğ½Ğ´','TH','THA','',0,1),(210,'Ğ¢Ğ¾Ğ³Ğ¾','TG','TGO','',0,1),(211,'Ğ¢Ğ¾ĞºĞµĞ»Ğ°Ñƒ','TK','TKL','',0,1),(212,'Ğ¢Ğ¾Ğ½Ğ³Ğ°','TO','TON','',0,1),(213,'Ğ¢Ñ€Ğ¸Ğ½Ğ¸Ğ´Ğ°Ğ´ Ğ¸ Ğ¢Ğ¾Ğ±Ğ°Ğ³Ğ¾','TT','TTO','',0,1),(214,'Ğ¢ÑƒĞ½Ğ¸Ñ','TN','TUN','',0,1),(215,'Ğ¢ÑƒÑ€Ñ†Ğ¸Ñ','TR','TUR','',0,1),(216,'Ğ¢ÑƒÑ€ĞºĞ¼ĞµĞ½Ğ¸ÑÑ‚Ğ°Ğ½','TM','TKM','',0,1),(217,'ĞÑÑ‚Ñ€Ğ¾Ğ²Ğ° Ğ¢ĞµÑ€ĞºÑ Ğ¸ ĞšĞ°Ğ¹ĞºĞ¾Ñ','TC','TCA','',0,1),(218,'Ğ¢ÑƒĞ²Ğ°Ğ»Ñƒ','TV','TUV','',0,1),(219,'Ğ£Ğ³Ğ°Ğ½Ğ´Ğ°','UG','UGA','',0,1),(220,'Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°','UA','UKR','',0,1),(221,'ĞĞ±ÑŠĞµĞ´Ğ¸Ğ½ĞµĞ½Ğ½Ñ‹Ğµ ĞÑ€Ğ°Ğ±ÑĞºĞ¸Ğµ Ğ­Ğ¼Ğ¸Ñ€Ğ°Ñ‚Ñ‹','AE','ARE','',0,1),(222,'Ğ’ĞµĞ»Ğ¸ĞºĞ¾Ğ±Ñ€Ğ¸Ñ‚Ğ°Ğ½Ğ¸Ñ','GB','GBR','',1,1),(223,'Ğ¡Ğ¾ĞµĞ´Ğ¸Ğ½ĞµĞ½Ğ½Ñ‹Ğµ Ğ¨Ñ‚Ğ°Ñ‚Ñ‹ ĞĞ¼ĞµÑ€Ğ¸ĞºĞ¸','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'ĞœĞµĞ»ĞºĞ¸Ğµ Ğ¾Ñ‚Ğ´Ğ°Ğ»ĞµĞ½Ğ½Ñ‹Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ° Ğ¡Ğ¨Ğ','UM','UMI','',0,1),(225,'Ğ£Ñ€ÑƒĞ³Ğ²Ğ°Ğ¹','UY','URY','',0,1),(226,'Ğ£Ğ·Ğ±ĞµĞºĞ¸ÑÑ‚Ğ°Ğ½','UZ','UZB','',0,1),(227,'Ğ’Ğ°Ğ½ÑƒĞ°Ñ‚Ñƒ','VU','VUT','',0,1),(228,'Ğ’Ğ°Ñ‚Ğ¸ĞºĞ°Ğ½','VA','VAT','',0,1),(229,'Ğ’ĞµĞ½ĞµÑÑƒÑĞ»Ğ°','VE','VEN','',0,1),(230,'Ğ’ÑŒĞµÑ‚Ğ½Ğ°Ğ¼','VN','VNM','',0,1),(231,'Ğ’Ğ¸Ñ€Ğ³Ğ¸Ğ½ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ° (Ğ‘Ñ€Ğ¸Ñ‚Ğ°Ğ½ÑĞºĞ¸Ğµ)','VG','VGB','',0,1),(232,'Ğ’Ğ¸Ñ€Ğ³Ğ¸Ğ½ÑĞºĞ¸Ğµ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ° (Ğ¡Ğ¨Ğ)','VI','VIR','',0,1),(233,'Ğ£Ğ¾Ğ»Ğ»Ğ¸Ñ Ğ¸ Ğ¤ÑƒÑ‚ÑƒĞ½Ğ°','WF','WLF','',0,1),(234,'Ğ—Ğ°Ğ¿Ğ°Ğ´Ğ½Ğ°Ñ Ğ¡Ğ°Ñ…Ğ°Ñ€Ğ°','EH','ESH','',0,1),(235,'Ğ™ĞµĞ¼ĞµĞ½','YE','YEM','',0,1),(236,'Ğ¡ĞµÑ€Ğ±Ğ¸Ñ Ğ¸ Ğ§ĞµÑ€Ğ½Ğ¾Ğ³Ğ¾Ñ€Ğ¸Ñ','CS','SCG','',0,1),(237,'Ğ—Ğ°Ğ¸Ñ€','ZR','ZAR','',0,1),(238,'Ğ—Ğ°Ğ¼Ğ±Ğ¸Ñ','ZM','ZMB','',0,1),(239,'Ğ—Ğ¸Ğ¼Ğ±Ğ°Ğ±Ğ²Ğµ','ZW','ZWE','',0,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (4,'-10% ÑĞºĞ¸Ğ´ĞºĞ°','2222','P','10.0000',0,0,'0.0000','2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','3333','P','0.0000',0,1,'100.0000','2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 ÑĞºĞ¸Ğ´ĞºĞ°','1111','F','10.0000',0,0,'10.0000','1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_history`
--

DROP TABLE IF EXISTS `coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_history`
--

LOCK TABLES `coupon_history` WRITE;
/*!40000 ALTER TABLE `coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_product`
--

DROP TABLE IF EXISTS `coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_product`
--

LOCK TABLES `coupon_product` WRITE;
/*!40000 ALTER TABLE `coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Ğ ÑƒĞ±Ğ»ÑŒ','RUB','',' Ñ€.','2',30.17600060,1,'2013-01-29 00:45:27'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2013-01-29 14:11:27'),(3,'Euro','EUR','','â‚¬','2',0.74309999,1,'2013-01-29 00:45:27');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `skype` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(9) NOT NULL DEFAULT '',
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(45) DEFAULT NULL,
  `transporter` varchar(255) NOT NULL DEFAULT '',
  `send_email` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,0,'Ğ¿Ğ°Ğ²Ñ‹','Ñ‹Ğ²Ğ°Ğ¿','vittalik@i.ua','23423434','','30cac757d89a393f566d4e17d24c0dcfad1b78e6','9d25d5d56','a:0:{}','',0,1,1,'127.0.0.1',1,1,'','2013-01-30 15:59:56',NULL,'',0),(2,0,'wrewer','werwer','dfgsdfg@dd.cc','23523','dfghdfgh','2d7d057a45cf7481e0e1636136320f03ec6341c5','7847aa2dd','a:0:{}','',1,2,1,'127.0.0.1',1,1,'','2013-01-30 17:11:23','sfgsdgsd','sgdgsdg',1),(3,0,'test','Test','test@test.com','235235235','fwefwe','03a330cac34aa5d89bd71f046e33e9f14a8a9285','9cb44d6d1','a:0:{}','',1,3,1,'127.0.0.1',1,1,'','2013-01-30 17:29:28','gsdfgsdfg sdfg sdf sgdf dg sdf gsdf gsdf g','sdfgsdf',1),(4,0,'sdfsdf','sdfsdf','sdfsd@ddd.com','23423','sdfsdf','2f5d31a81ce618730d286535552314791379c485','456a08637','a:0:{}','',1,4,1,'127.0.0.1',1,1,'','2013-01-30 22:31:51','fgjhfghj','fgjhfgjh',1),(5,0,'asdfasf','asfasfa','admin','3152353','sdfsdf','9dafedc42c10b6044ebf81aa36f2ce75b6bc818e','3c7c03e72','a:0:{}','',1,5,1,'127.0.0.1',1,1,'','2013-01-30 22:59:40','','dfgdfg',1),(6,0,'werwer','werwer','w@w.cc','2535235','gfdgfg','d132601ddeed37d4a15e73b30fe55d706d101020','e3f641c59','a:5:{i:41;i:1;i:40;i:2;i:28;i:1;i:43;i:1;i:33;i:1;}','a:1:{i:0;s:2:\"46\";}',1,6,1,'127.0.0.1',1,1,'','2013-01-31 20:57:43','sdf','sdfsdf',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (1,0,1,0,0,1,1);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group_description`
--

DROP TABLE IF EXISTS `customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group_description`
--

LOCK TABLES `customer_group_description` WRITE;
/*!40000 ALTER TABLE `customer_group_description` DISABLE KEYS */;
INSERT INTO `customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ip`
--

DROP TABLE IF EXISTS `customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ip`
--

LOCK TABLES `customer_ip` WRITE;
/*!40000 ALTER TABLE `customer_ip` DISABLE KEYS */;
INSERT INTO `customer_ip` VALUES (1,1,'127.0.0.1','2013-01-30 16:00:08'),(2,2,'127.0.0.1','2013-01-30 17:14:52'),(3,3,'127.0.0.1','2013-01-30 17:29:29'),(4,4,'127.0.0.1','2013-01-30 22:31:52'),(5,5,'127.0.0.1','2013-01-30 22:59:41'),(6,6,'127.0.0.1','2013-01-31 20:57:43');
/*!40000 ALTER TABLE `customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ip_blacklist`
--

DROP TABLE IF EXISTS `customer_ip_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ip_blacklist_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ip_blacklist`
--

LOCK TABLES `customer_ip_blacklist` WRITE;
/*!40000 ALTER TABLE `customer_ip_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_ip_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_online`
--

DROP TABLE IF EXISTS `customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_online`
--

LOCK TABLES `customer_online` WRITE;
/*!40000 ALTER TABLE `customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_reward`
--

DROP TABLE IF EXISTS `customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_reward`
--

LOCK TABLES `customer_reward` WRITE;
/*!40000 ALTER TABLE `customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_temp_photo`
--

DROP TABLE IF EXISTS `customer_temp_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_temp_photo` (
  `customer_temp_photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `photo` mediumblob NOT NULL,
  `size` int(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_temp_photo_id`),
  KEY `cust` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_temp_photo`
--

LOCK TABLES `customer_temp_photo` WRITE;
/*!40000 ALTER TABLE `customer_temp_photo` DISABLE KEYS */;
INSERT INTO `customer_temp_photo` VALUES (14,5,'111.PNG','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Z\0\0{\0\0\0|Lè\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Á\0\0Á¸‘kí\0\0ÿ²IDATx^ìı\r¨dÉuïu·ºTVùÊe»«İu-K¥k<F\\Q<¸0Æy0xê\rfd0‚j¸cŒá®¡\r60\ZÔ 0=ƒÀcAMù¦ºÒ ò!Í4Ğù„è§g!Rƒ¤‹üt@×9ë‘+3rŸı_û+O$ìÊS¹#bÇÏµş±Ö½íõ×_ßİÏoÿx÷¦?8¼ñ]ûçîëìÉw=İ\Zßÿşâì}ÿåÿwö«ÿí“µeüO_û¯ò _8ûŸÏşÏgïxÇsÑÏ¹	¿óïœ}÷»ß½öªO>Yß¶±mò_ÿë={øğalöIå£ÍÜÏù/ÿåZıxßĞÏTÛç?ÿçÿú*½¤§MsË^*šP(ïxïŞ½³ç{î¬©İİ4	šEÖÛ·¿söœ]ı¿¿~öÜ÷‘£:ÿOÿıŸıâû¿=»sççÏşûÿşûg_ÿúw[ÇÇÏıÜÏ™våsûÿöß½÷Á»‚Úàı§ŸœıÏ¿ü<{Ç¿ÿƒ |¾‰§2Ï|ë[—îÚış÷Ï~îìÿ{ö¿?{#¸XÚû]?C¶·;yröæ7tvöøó³w<÷ÁÚ2iÇSÚoš\Zî+_ùJÖõĞí;ıûßÿûÜo?şñwÎş›»ÿ÷³ÿåÿõ?œıïşOnß]/êüüäìî£_yí…³ÍfXYMÇÉÔö”Üë{×8Ñ¹¢² o{¤ÔóÇÿùÿyvöÿù¿ı7ÌÏúù_ÿéGgoüÌ¿;{îƒ/•ûãï|şì}_ú¿ÈšòSYŸ—¯°Ÿœı/ÿôã³üà_e>¼ıì?óÌÙİÿÍãÆu.ßs‡))t|\rS«ÃSšöŒ¾÷å˜5¶±m\0\ZÊUßËÕrk¯ÅáZËßr­v×—6ŸŞêµ\\<Ø®··Û7ïÔ^ëËÛÛõòáv¹\\”6÷w———Û¾¯—^zi¾X,[÷jz/êsõÙNS^ú|ï²é³ôsJË»1vmï9Ô\\šÂxd\rßn_‘õş\\¾?›Õåöjcï¯dïğúNËÇ·¶›‹{×İíâòa/ëı>§±ZW×Öö¿¸Ø®.î¶wsÿ¬ÎooÒÕ1ê¶£;Ÿ¦0–û¨ïë3î»ÆVS1kÍf}¹]^ÜŞ^-›e4d·Èp«Ë»ÛÌá1eµí×Õ¾±÷s_÷us¤)mİ;¤Ô>_<Yı\\Æ@ğZÜ¼6,Îï4®Ñ«¨u?tŸğIWŞûÎ–ú°-Îïm——G)}é›wÊs­i­ësoY_ÛÚúÌ·#Jºn@fµ¥hØ¬ü¤Í5Vb7Á|¹\'Tİ»Oyói«\\ıÙW9>ï0Dš¹÷s“’V@†ëkÿhXÖ\0\rëåv³¾0@ÊÊååE«²î®AKpc„Û…(Ë}Ì¯!æMŸÏğš“6,.o×Ù”Š»FH_..ö}ÒT>úlJezµÃ‚îm ¼®M]ïà·º¼×zÈ\0ñú·(¼˜„œ¢\\÷9ªe§ÈMÕ>k¥ª}ªci(°{qñ@î¸õ¸º†›õ å€1vİÙ+Ü<€)¼£©Ÿ\0¼³»nuÍ«S¹Ÿ²N\r1ïšÖ¹¾ê2¿ëÆD\Z<NÖ}\'“/Ğà[ŞMO××$r†Üê_anÌñ:ÄbïóŒ!Æ¬O=r¤ÑS¥®ÓÉ!æĞ˜c«éÙWW‹ífu.JÉúÈ¤ÿó;@×bÑl™¥Ê”>cyŠF¾¾Ú¨«ÿsŒµ¾Êš=Y7¥õÕÿ©åÆ*Ë!}×VG<xV·\Z­MÕ\n•4ëÕÃíZ,VSß;gş¶èk.å›´Œ6‹…ºı¤úşu TûJ÷òñÓQà¯*ôÆ:ÀëÆÅâ<ŸUU3øàZ+ˆåÕ\r±Vğ™‡S›_¾V:}Ö;§Ü_€†œ@ƒ æm\r«K1‹]=Ôæ3	CÒ´¹„Ü>\'‘»á…¼_LÚ!Ş£Oá\"´ßbÚ(G>Û ¤ì¹÷·*>–¤ÍÑws,kÌ±7bÁPı¬÷@Š\nÆ®€\\7¯8QŠ9¥â4ªï6™SH;³Z7\0tyqŞhÑ¢ãa.klÊéĞ´mõÂº(Ôe\"å=ûÊØô1cÆkÕÔ[ûØm/•İßÚêï“˜:ùô•q¥õ—‚Ğµ™<‹‹n·6Ür»j¸Ö\nÔŸz,ôöyç›–¦9’³Ì&-dŒ©O®qP€†¬@ƒøtµøÿ–oÖç“›èmÜU¹ëÿ]›BÈÀí{éÆR§˜´C¼GÌ\"â›§¯\r<¦-»òø¾SßéæÜçM§M¾({WÊ}N=áb€“á:Ğp°hñóFàÜ\\„ûcú:D»ÎÅº!yşë†8ĞÇUF\0€ºöÄ!Aï!ÆHÛ3|”å˜¾kz¦u™“Ü—Ö)ºL´µaLûäŞïbÆQS½ëö-ß§Ş*“ÆÔ)$<8¡\\\nm¼î³Ù#ÒÜ4*Ö\nâJw¸Bú¯-mŸ|>c¸+MĞĞ•/å~N¡4d\ZÌB!ZÑP. a(` eÖå\r¸Cl¨¡uŠYØ†xÜ}å–7\' şé³-BÊc¿‡}1sá”ò Ä4B.…R\\+”Ò÷½1±99\nhĞ÷˜úØÎU¿ëú±Ëš¡º´Í?ß14õtm`•kñã³Ö¶íßÈdë —	q¯9=õöÓ=.×÷içT0¬ëMÖ\r!ï8ÄÜÁ\"ÀövƒÁ]¼ÕqBl­”°QÈ€‹µBò¼\rk]ã¹ûMrxÏÊ}[€†œ@Ã…%jŠ:aüÿÄŒÏw#ÓÎv­ú\ZTC”ªÔ5ñ}û#6İPïÑWÎ\rh(`C\\´AMÇXì\\8¥|‡È¸IT#O,·WâV¡„¾ï{²…ĞéûŒ\\é|N§ûZ“|­²<?ÂºEàòüQ«ËD×;äê§©–S7~BöÊ.y—	CìØek21Õ¶jªWH{¥ÎŸı¡®!§ÅúŒTË©¾ûNœ6@Ø‡—¡ZÇf~û,\\q#Ä¿ËËóI•öİÎC–?ä\\Š‹uíÑg½sÉşhÈ4?ÀU3Ğ°\ZBèØ;d¾.Á :‰úœ@î{÷½˜\rõ}öeßmÔGùSi÷©Ô£K±Éµ©ôÑ—S,S†D¸Úlj!mä	®ú‡šçbª?Ğ0Eë†>çZ¨uÃJÈÖ.¤¨³Zğ©g¬b2ÖÆNë*”>mâki·w¦0—	9©iØñ!¿˜ñÚ¯¼Ïùy3¯‰œ3ÄÜÁ5¡n­öåe¸4ˆkÆÆpAT¬.%R]áVÚC‡\Z§>c1Wš&ı)f~…Ô)¦-«y\nĞh\0=o²fàwî¯å”Ë·ã\nĞğÒ fğ}+X}/!‹FlZß1;µtSiû©Ô£®ÿ‡Ê¦6.rÕÇD“ÓÍzu§Á„¾´@CˆbB«|\0ës	Q6¢0:¤²Ó˜Å®q^ù\"¬–Âõà¡kA(@ŸklYZmzõÁ.fSıB]&LDŠ™¸L´õIè¸\niëØ1òM«c!õ}4Ÿã¸Î•Â——¡Z/C:iÂKNÇ­Ï6œJÙ1cuÈ<Ms°Ï:ÄÎû4dê	 ¤İwb ¡\0\r}.\"!eûÙ)¦KXBÚiT%¨!}WúÚ¦8&rÕÉBJä	Ã×püY‹À4„Çn7¦µ!Ôr½sS9©æÎ©ólÈy¾Hk±$ñe¡_‹uybëxÀ@ßñÓ%üŞ—‰¦9Øà;öbåWwÄ\0PuD}ïqYØ‹{ÃL-cúŞ¦^~ìxMİ·|ó7­{}Ö»k­õíÓbÑ	xX\nù—ĞF6ä;ç.tĞÆ\ne¡mÑ÷&ZŸ)¦÷]P¦šn¨±ÔÕwS©‡\n¤}ı©‡\\õâ$«†õ7‰\nĞ ¿µBšÓ0ñµ]ˆi,\'Yøè¥`ùèIoö èJ^1åÍõ^)åô¡ìLr^‰uÖ\n¾`Ãòq{Š®wÔvMé›)çU ¡K¹l[³n’ËÄÖ\r1ã&f¯kÊS–;Ÿ†±nŞ„­Êbú¨äyıhÏLg>kxjšº>ë³Ş9dÄ4d\Z:š]\'àn€Ã!ÔD¯Ï”:àCó !¤/´ûH\nÒTæÒê{Ju\nã ç;!±^¨BZk‡&BÈåã§w±Ó»Ì»•YË<óİRÊò=ÎµV9§ŒuƒX,´õ‘@q¯!æıOuîVû°©O›ÆåMu™èÓº!TfÓºÄë¶yÜ@ù<3ö}RÖÂ’÷X™Ÿr{Œ¹¤Œß¾ëÚghÈ4U¢‰£æã•D¥(@ƒÿ¢Ó÷äÑ‰±k›ˆ>ÈÔÓ¤.4SÉ?Ô˜êêÏ1ëqªŠÊcÌ%„Ün	!ámØ¬,!$–\rÕúÅ>¶)³°‘Ñc¯}cÎ%ç+±Fië›Ëó‡Ùù†NIij;ÉÖ{]ïæ2!ÀĞ&ÌºtjsË·>±ó£«½›kÊí[OßtM{ğÖ\r¾}SÒùëC´UêØê’ûRï7ÍÉ>ë»¸ıU€†l@Ã¹\0	@Ã¥°É’õ9€R}hşĞ;ä»÷¹ˆÅn¼¡íÛgú>Ûgè²‡Wm}2F=\nÈ_°1„(\\mª„›-)šx\ZbH[Qv‡K>ÏëÓºaŒ9TÓÔ¡Í…\"‡ËD›ÒÔ7PîÓÇ)i|ö­®uK]&6ª²›L,n’/}Œ;Sì¸Š™“¡yHš§nŞ¦ŒÛ’7ÿ^:v›ú¬Ec¦iÒ¡ú¬S¨ŞV×‡hÈ4¬–ê¦hØ`ÑP€† A8u#	™|}.ps\Zr,4}¶oLÙC­©€\r®°+DÆ´uhÃ¾ığmÂ]0W€¶w0„M¨òñ`@1ÖCÛzÈô!ë±oÚ)Ìc­ƒ	Y±lX	A\\.—‰®udÈ¾Ìõ¬ªé™Æebù°UşRğmÊQ&ú?BæKJ‡\0) AÈûÔÍŸ.\0+¥\rJŞù¾ûÎ˜éêd·¾uŒÔ±\\€†l@ƒ„Hºl¶h\0i_-$Şy±hğ†S7‘Å u\"µåï{yÏ˜´§4Ğ_C¯¶É!êá\nT®Øç¸-{!\nóæâ®añ†$1¶œ¡ò)!ä¦R\"O4Bæ¶h ¼¡Ş9ö9!Še×Zå3o°&X<¾+nyøêNE~ƒ Òğ5àJ!Ï½x”İeâ”¬|ú°kÿ9—	±@x[ ˆ_>ùº@€®ööyi|çº\r>c¡	,ˆÍë–çû^%İü\0„¦>ó% íÚ‹†¾_÷>9æ@Û{¤Œû4d\ZÖ—Íf{\0\rëÅı`s½¾Ï$tòİS&‘OŞ!Û9÷³BûÍ§=¦’fÈ16ØPÜzLÍ²äVI³äzèM‘{À¿í„—b¦MèËW®ù„/Hé&yô¡8 AÛ-uŞùä_œ\"B¬¼º‹ƒœkckäYr>Ï§¬9­Õ9ŞçT\\&¨ëX‰@Ós˜Ä¦ñ›{OhÜ:¤X6(xâ³.œPç#GÑş¹ûÔç¹SLã“”±â³võ•¦iïó}R÷•4ä\Z·İ@ÃƒàÍ£ÏÁÓ×Dh[ÈCŸ!ëR¯˜´sîÇÔE&¦½†Ì3…¾I²|„§¦Ó ©!(f.Èp6È½!ÇDÈ³ö@ƒác¨DX/·œ¸ÖB.;CAÈ%Cê=vZßÏ¦qÛº?H$ˆëcI\"sH›ç°nèš¯c¬). 8vßú<ß§ÿÛÖ¦Sq™À‚páx¾Ğ€…ƒXDù´elš:ë†Ø²ºòUŸÕ4GºæVÛ¼OÉëÖ¯ë]¦|_-hİ¶8u®©?r\0PCê!>Ï*@C&¥}Ê“¸©n« aEÃ²\0\r!}ë3ér¥	©WLÚ1Ï\\ms6©)ôOªTíï6KM;å«¬\Z•kQ±vˆ™{Cä±„â&±Y!\rüŸßë!-°’rá^Â%ÑŒäÄ³ë!ŞÕ}ã(¨\n{éÅ}¡-\nÄÊ„šL³nèªC×ı\\ksµœ¡û?Çóê”]}¯¶òOÁe°„yÛ´Xë†şAVİ{rôgWmıíç”9”º—Ne_ìjKî×uë‹OYsOãºBôµÆN¡Üº~ê³^©:@±hÈ¬Ä5¢Ùuk‹BÍáRÛ>^lÙ!Yì3Bó¥N\"Ÿwšs?Ñ>>mØwš)ôQª€T øX;ôİ¶må/.Ä\Z¬\rdØ+ã6L”ğPy!Å‚¡úY/ê	!Wê,8,?Å@ÀRÁúo˜€+‰(pW,.™ÏåârP€¡zJ”c}È©|¸.Í@œcİ  DÌ~Ñuª\ZZfjú}0ê\Z æİîúÛõ>\'ã2áeÕ¤Ö\rƒÎó¾ÆCÈXOÙSòºëQ_í[®/°pÁ†¹ó¡…Ì¡Á†”…4d\ZDhì\ZV\"úİMAù	ü]iC×®²rİïjBêÜ”vÎı8DûähãÔ2|Lys¹.E%e¼ÌÊ’A”åëfÃí§üFé\\GSÇFW~y°auY4,\Z\\2àååãI]ïØ&¸§!ú\\Ÿù×9/j]&šÇ\0WˆuC—òÒY?±\0É½†ÌéôµkŒ©‚—×eB\"‚’pwÕ3Ç}æ¿ÀjÇ/L¦ÎWÓÕ.>s¼n~¤Ì«®9Û5Ç–R€…ª…HWÿœÂı”±Ò5¦r¿iLöıî±ã£\0\r\r„U\ní¨¾ÎĞ\'D ªnCl$9ûQ7Î¡¾é‡Ğq;×ô±‚Pî±\Z+Í	d@ĞFxq˜\ZØ€\"ƒ{ÄZ,®ñ4,›	!ç4OÚÖ°œkh“uCç\Z*Ö	Õğ’¾c‹H>Ö\r]uèºŸ{Ğòæ4Rëêí2!V¤DúÂÚ(õ™¹ó[—		µì:5oë†”ù»\'V-°bæàĞ`^:Wß3ç\ZíÎ‡*’{®„–—2ÆbÆÆyÆ\0\ZRÆO\Z²\r²¡µX4úr³z¼áÚ¤	\Z†2ƒJ™@¾‹ û.ÊìûíûŒ’.OØ¥)\r!›XUª[;†˜šÆär!~ôQ‚öátÚ„‚Øm ñ}Dq°@nş„sš³]c±mmw}g}Ş¹:}öÁå9®(ñœ€‹–p”]uèºßÕ~1÷‡Ø»|úk¨4\'ã2aBøÆUÖÎ9„şuÇEÌøšuC_ã¼`¡®íBäïºw­‚\nÕ5o\nëQ®q6åršÚ¹Ï:§ôm\Zr\r—’mÙÌÑ°º aÎ ÜçÀ£ì…î”€†¾6¨Rnp¡Úsš\0÷=¦2\\&ƒ*¤[°a|ße<QO¹i$„œÓüíZÛW \r‡¾øBÈS77ïªÆº¡DèºßÇ^›\"øÅŒ»½;¦ü®<áQ&¦é2a9i!|ãÇ­Z7Lßâ0÷~:´uC_s-w»ø¬3]ó¬ÍZÁ§üœë„ÆÅÔÙ§®sL£c¿\rêë½bû¶\0\r€6ÀU\Z¼|OCj—`›k2õµ‰„,%m?€AJ»!Äœàt)nú!s/¥İÚòbĞÆ²#t²Ä	€\r1„}µs_åv)Ôuc¬-O=;ça‚ËD3Û¿cİ åw½w×ı\\{UµŸöË‘&Ô\"%Ç3«eœ„Ë„¬©–\\Õ1;ë†¾æGJ¹!`EŸ{g_kC“,Ñ47»¬Bê3ÿ›#Ÿ§Œ‹÷\"­;N}ÆaßïÓ·Ñ@CWû4H]…»Êmºû¼˜F«æ1@ÃÅíU‡EÃZâ©‡>/¶=¦š/¤Ÿ\nĞ0=å;tüÎ=}§’Ó¹[ØĞ2L©ıãı’»MŒ\rØ œc¾¯!„$Ì¥p2\\‹<±¼0÷p¯˜\"1o»uí+U¡Ğ\'½ïĞ$@­]&ÚÀ-¬R]*ºÚ æ~ŒğíÛÇuéb-RRéæµ.ş¶Å=uû¦•Á–·…˜U\0Í‰Æò>q¼İëcÔD¥™ˆ+™Ûw}+>!€Au®ùäí{®õİ>î;»ïRUìcÖ¡P0CÇE¨ÓşC¶i®vs­÷´ş1ëgŸïÓ¼CĞà#|ÇV(¶‘bŸÓ‘u@ƒÙÜ\nĞĞiÕà+TjçœÄMe9vrŒ¿RF¿€ŒÏz7Ô8­\n\r¡ói¬±Ò\'È Š\"Ä’K‰b1Ö;¶B\nY$Êáq@b¬:æxnÛí_¾@qˆPUg9]&º¬i\04ª„‘±òJèz¡ÏQÅ(G?ú–ÑôCí›§ã2ÑÎ¶Hè\Z›Ü\'‚ÅÔxBÇyJzĞ M¬çCŒñ¡Ö}÷”vòéŸj›…€\n±ÀEu-ºM}Ú¥éİ´®¹d¹>ß=v>D\r]\rÛx±Û\0¾›m[:#D‹¢Şt½şÂ-0Ã}é|…µ®ş˜ÊıĞÉ4D½Ç;9Æ_)£_ ö\ZØà*tsèNÛ|„åÔ4„ÊÄzŒ6Q†õ²&òÄz%=hÀ²aŒúåzf›âé®ï¡{¹ï:¼Ÿ‹¸L$êÅŒ5N/%„¦+´÷½G9×»Şmˆºí]&Ví2ÖzÊQ& ¿Œ°ã7NÅÕG€†\\s<W9¡k@×xëºŸªD×Õ7W[4•3tuµaûºäz·)ê\r¡í¤c3V7ö‡¡õ\nMÚI\r¾•ó´cfès|;Í\'1Ñ ¡\0\r~1Â}Ú4u<øO5W\n©SIÛ¿b?Å6\nØp~~n€)¶Q]€79ÈÏüNşÆ:Ù;BŠ›ÄfU=!.\0¯˜kŠfİôÍ%Dçâò¡\06÷këY][ë”Í”}Ügl\0ş1cj¸qå*|D§ˆ}Ç½IÓ1×CÖ»¾ä/_—	ˆ¸§ê21ˆ5Q(F´æj\ZŸ1c=GÀÁU‡˜w9ŞwŠeĞv9×È¾˜Â­;}ö´÷kK;Ä»‡Öµ7‹ñ©TìÀìk£ó©ûR|r}€†ßÜ!ÍP‹”ö­O› ae^–¶1Óo!}<§´!ÂwójˆÄœı±€]=ÃºÈ Ê î\rÆ`­€‹ÄF\\%®ñ4ˆ? a)JúòRÀ±üXñíEN]-#ş]cŠİÄ{ØÕ4s{ŸqÒïIqı¸[<¾Óé&˜£Æ”kBe±ÜkÓŞeBBƒ·âpÏFõšh”‰Ö?³æÉ|ö™7C¦kÏL†ROIÆ¯ê}¡kHÓš³æz¶ï:>°P7—û|÷˜¾(@C–¨‚¦7o†WbòÚ40ˆ|zŸé\\”·ëïj=XHõ\nİàúœ0±`Xè;L9}È˜™ò{Y·1§¡„Ÿí‰˜\'Œ[Èp\00\'¾;¨à­„k!“ÒD÷rL|¶iLÀ½DÁ„v³l\"/„¹¡äœ¾Š+Gl$“a¬V¢ĞU¹\ZBÖQß´1]y›CæÈQ5áÀÅRù©\rh˜´Ë„ÌA\0\0?÷‡¸uî¸ìİ\\Ÿ æ²\\İÜŠrŒaß2Æjßµ(4®]¡ùæ\n4Œ¹V AÙC; vÂ…>ÇwğI·¡D½i3„$’¨±@CL›tÕû9ÁŸ6óMóî¡‹Û˜cÇ·úJ‚¦÷U‡9–Òn¡ã±IXšÈğ``»IHeYNŸ‡\Zc„ÂÓƒU¡0SëÔ&ÜñÚ•À¢zæ^¯}­©8ıPé_©†óGƒ€ÿcÍ÷`‘/HÔ4¶ŒË„ÈL]Q&nºËD€ğ6…¿ÕşÍ1¶b÷SßµiyĞ·n±ï>F>ú>—œÓ\'C¾sLıBöÕĞ´}¿{èŞT,\Z²X4œw\r—w“€†¹\0¡¢+ığÔ‰®6Éy?d#ÈùÜS(«ïÅÜµ¸	]ØÇl_|…95î¯ë$p¸S¾=OƒácØ5\\mÖâRF‰²@{¢ğ_·LP0¡ëıãï‡X„ô¹Vû®ÑXqXë†øwnË;”Ës¬9œ»CßÃºL<p–3w™ˆ\0·i¼â\n5EŞÆCî1æ³ûZ6Œ±×Ñ>m–š&g_‡öKˆl›úä­_èº’~ˆw©Oo@ƒ;qB*zï¦yNÎ´«¥ø¶X4€º¯€†œu[YC,À¾BìÜÚÎ§¾!’Oy7-M\rª­ŒÔ“Á¡ûEoŸyÅ‚¾I÷@ƒD˜ØH¤‰ëî~<\rÆZAf{B?ŒK@]ârá3†ú”ï;¬u L^“uÆuq™ğ#|vÇƒo¿é8q™X/$ddë Ÿ1’—£1İÆö!±l˜ …v!ßU×ıÓšÒÏ9ÒiåÑçº­ruÎ>mïœÏöi«Ğúõ™¾ÏwÕ™z\Z¦„îôÙ™”m€†ôİ\r÷¢-\Zú®ÿ”Ëïs²¸\'ÆSnƒ>ëæ4„.,}Öyjeûl@1iBô±Û…hœ¢ù(ıc¥1`ƒ(ñ}¶•	a™H‰r0À†öêj«1å®:EF\"gä„µ||ò.1ë”OİÇ»úí$\\&d}É7îÒ,sB,’ºú¦¯ûCÈxuBÕç!ã¨¼åúÌŸ9¦É\r4ÄôÏPcKÁ«¾æHL¹}¾{h_D\r¼t—åÁÜ€(uïÕÕÉ«¥˜\nKç&üAŞ§Š,w½ß˜÷ûœ,hğ÷¡]XÆ3c<;· 0?Axj&2(¸aı—û8a%úÄÚ¸O6¡ˆ{€]œ=ShO aˆ5º:¿|ç‡µüJ³\nAaË=ÇëÊsí»»ŞíT\\&ìxKrä7ëÜD­ª{t—•AÊÜkwîsûÒYêt‹”÷™K^m÷\\õíZ?êä¾¾×´ªåÖ²gÓ3û~÷w\ZB2‡´m“¡«ş«¥˜É ¡óä««ÇZ(b°˜w*åÃgóôÙN­úèŸvôIã«Dõñ1eª™áx¨2¬eÃE/kÖòñu a½—\nKI„Š¶ö‚ÂØÑVÇ¾…™¶ù²&}cé3O¾ËË‹Ş†1ç}ßıèónë•”	nºæOÌZ–š.•TP+Ç\ZG!lSßgèü¹Ç¡Ï\Z¡V¹ŞÕšÀD9àTÒøZÍv½¯O_ÖX]åæ¼ï#oç\Zg]åä|¯¦²ºê ÷Ğ°#ƒlë”®Á³Z´\rk,\Z„Üh.è²ïà\"]î\'uÂäxç*Ğ´uY\rÕİ¯;ùëª³OÇ,ò]Ï=Åû©‹»@>¥vcM›‚B#œ£D÷!Œ+Ğ°Å	H÷c	!-O–\rm}É)zÌ{åÌƒûFÛ¾ÕçId×\\êÚ—«mkÃ`†Y7àg?”Ëï;ÆÜÎ¥tõWÛ»†Ë„XuM‚wø°¾9Çm®5e¬½´Kêºß5æt_åÆ\\ïºæ3.‡j/}Çœs!¥¬¾×õ \0\r@C—\0°ZH(7š\\\'°vX‹ÕC\Z^¤r-P]‹MÌæ»œŸŸï]ºê‘û¾ÏbàÓÆ>åø¶Ç©§‹íÃ±£Øş˜3Èp Klx¼.µZ\"øbBX\ZBÈåuBÈ–¯˜«mOà>\'hS„Šm–\nšú¬!±ó\"78¼8¿ç…´¹ëİ,ÇÎÃÔ|}÷]×Ş¡.kï(Â³J›Ún×€¬É¸Ltóªä~÷>ÊË1.û¨WW™]õîº?Äz3Ô3r\r]ºX]ßôÕŞîA_L½ºÆQû}½»‚¾u,@C AÌåº€†Õ£4D„ís¢¸‹mŸ@ÃPï+ÀúÔ¯KXô]pnJºĞ|n ıHD‚åujy8…ÌN#O\\	Wœ×\"Oi¦ò4´\r\0 ã3×KhĞ F…>„É¶ù“c-Â’¥+æP.¼kŸûOÛšë³ö‡®enzŸuM]&šjôws`3U—	c}4¾’q™õåTöÙXë†kDlúÌ—¾çO†H“{oˆé×m]ÆZ¯CÇdwo\Z\'!}Q€ ¡«AW„Xê\0\Z64„’’~¸xË}.}Nö®Í¢kì2Æ|êçSN¯Ç;]}£÷}„ñ©µíâñ¸asƒèXäjg!\rƒı×!WB¹»ßv2÷Eîáí&fØª¯Ú.ÕH:†û@‘sjƒi]&Î±fë4Ìw}JM×6§NÂeÂ\0‚yC©†ÏSÈ\'™«÷²­a¹ÖÂÔrB×”±÷S“u™+uŞM%¿O{øÖ5fı÷-»\njõ©¤Î®ü}3-»«Ü/@ƒsÊ^õ×ÿw5äj!‹|Ğ@èËÍ*¯ynWNå~Ÿ¥X4XÅØ§cøSƒ)ïÑµÉ-Å¼›åÿô.NofƒGY€Ì-¦Mªy ª3@C]ä‰õÊ¸UøByBú˜6yôôQ›t	ş¾kJ×Ü¨»ß‡Ğ‡5Kµç÷ÆZW»ú0¦oªyºŞíà2ÑìvªÖ«‘¡ÖÓs™˜’û˜O„˜kÛXe„X7ŒUG}n—LÕu?Çü›R¹À†®5¥®ßCŸóŒ±Ç[ÓósŒ×š£îoŸw¿‘@Ã—¾ô¥í×¿şõíf³Ù~÷»ß3Ö+sñ7¿q4>\rHšÕ¥dËæÍÒl’hğnO·İsLŸ2ú`}7ŸúÅ¦ñY4}6=Ÿr|çËMK×fzÖç¸ë£QÄÇ7çï/tœÄ/?µí„5„Ù/ü!û%ÚÜFòÎ¼7Vkñ37ßæ’SZ•&Ïm®õBÁ³ÅÀw}Kí—¦ü6r\nï,®\"%ÊD2Èâ â2±ÙhÖ.q3¤­=EÑékÎÅ”ÛMENéZ#ûX}×Ğ¡ÓiŸø´‰Oİbd¦gOeÅÌjPÅµ²UPÁı-LÖúÜ( á«_ıêö;ßùÎXP€¡é›´äiëpm/ AĞøç¦•á³ğäJÓWÛ†,r¹ŞÅ]ºŞË§~§´øvµG÷«mì#ˆ÷Q”2q-˜†‰p@ƒ±’@¹%;¥­ö<\rÊr³ª#„´@C!ä2É$[„» a\"¿†)»Û:Å=)õY+\\!ºK1ğ]ï†Zãç“mß÷Jc±y}ë–š®­~á.İFd­Øwî+ßòÑà©Áe\"%V_í”»Ü:E}¨5Âç]|ÖIŸ4©sp\nùs\r¼“O„€ãn;Mi…¾g]zŸqVµT¨7uåø¶Õ\0\Z¾øÅ/\ZKVßúÑö}‹oŸú£ŸlŸøıİıÊÖ\\üÍoÜ#¦\'/eÔu¢\Z.îl¯:,\ZÖb*›cĞÜ´2†\\(ûj[Ÿ‰Ş×{ú,>õó)§¯ö;•rµg	2ˆy9§Ü¹İ¦[\'ù·£×ì=Ğ !,7KÜ$?kùÍ‡¢½po¨Ô\"!ÕÍEC\\Æ¬Q®uCL~U(bN±b×\\àHÛûµNáİŒË‘º„Ü±Ëšaª.:¶¬%ÌÓ£®‹§î2Ñ4İ±<µ=Õg­ó‘»|Ê™CšœëNÌÚÒF1åÇî5Cäk\\pÁ§}šÆ«ÏŞ|ò@.?øÁhğÆæGÛŸºø—íÙ/¸ğï~\"—~»ó›\\¿ü“ímIKòRF;…ñÑ»¸]€†ˆˆ>“ÌgäJãSŸ˜4cn(>‹¦Oı|Ê‰i››–gj‘Oûu`\Zñá{¶dÀšáèÂŒ^Â_F¤*PO¹—\n\"R¼Ò\Zªş\0uc \n\\¦N\\Â`¬zçÌ°‘\'|Ö‰¶“XaÓGñÇ¡iêNMsì5c®±}èûŞ>ïv\n.îXÂÕ*Ì‹\\Ízp\\&Úæ®ÍĞùİwú®9Ó÷\\ìzş\\ïÇÈ¢¾.ª|÷=6†,¿j­;îÚòu½ÏI\r\0j•ğ§Ÿÿ‘X-Èğ@®÷¹—€üÿûîÿšæW²%¯–SĞ \'}mÈüë/ˆß«˜ĞvuF¹ÌÚO{¹öÕş±;Ç»û,Ê>õó)§¯ö+å^ŸCµ	¡ÒÆ%$\Z\\¸ş¼X°A	!-ÃæÈ¤á\nBÈ•!$}ÀÉiµÏ‡/Š2è:¦J¨Ïzã®}Cõºç¤¾sÓ\Z>Æ;åØO|Êh{·½ËD‹(²œWÆRT¢³Ä}C´±\rA;–¥.ù\"åÑ^7é>ëœO\ZŸ97õ49,ÛÜ}$fUÛºz¢? ó.!yræMÖ]õ9Y WµdxÏ\'dxğãíÙ{×Søãí¯¿ü“íßã_·ÿò¯Väo~{êvéœ<ïùäÁ²Áu£0› \0	hèG\Zríš,±÷ÇÜL|\0Ÿúù”Û>%_?s\'µ]9)»é \'öÔ0(>\"„`áøãOÙÔKcÉ0¨¡õH\\\\³kİ™Òš“òÎî6Ö;ùè¥ì·]ïf]&„LÖÃe’È)F™pç\"kÂ˜ëãMu™Hİ×†Êßµ¾åZSRæìPyumğiŸ:Å€\n,P~Lş¡ÆMÏÉÕîh¨˜î+\'Ã¼z%\0ƒ\0\rïÙ]¿ñÏÛ¿şÊY¸æ9{ø4g’öì—vù¤Œ?”²°l lË¥ @C[¼ô>Ö©”9„€Ô·éÏÂÙWš.áqâ³ù”s*c®¼ÇëF±î7âÁ0\nrª\"Îi%§–1cbÏÓ .›á.+<\rb©àCÙôlk²=Ì…BåÖ#ÇI[\nHÄ´{_yr¼óXïå³Æ§ìA>ï…Ëœ]¼\0†ÃABÄöÕ—9Ês}Œ?s¼w)Ãï`Àg>õ=/}ê0DšÜ@u.ãĞoúÊø>ã \Zh¨ŞÒC™îÕÇ\0qËÿüç?¿ı§ú§íŞú\'á[øáöìİrıÒ·OşŞ¶ßşa7È â iÉsön+$?e­şÑ‚\r\Z¢h¸Z‰ *hğŸUÖg¤¦éS‘­›kÒ•ú·Ï‚ÜfRæ>¿y[ÊŒ›}¶›\r?.ÁÙP\ntÛsL¨KáHˆmk—òÇê’HBÈF ¡“(2A[ÔYu¤Ê®uCİ\ZÛî}çK=‰ìs¯©{÷”>\nÙ»ÚÚİºLˆ‹Áˆ.Ú9ÆÇ¢w^”æ¹KÖÅÅÃèu)Çû—2º÷mŸC²¡æfÈ<Î‘Ö•]‚\\ï;ô\Z:÷ñ³İëÆGnpÖ4¨r6l\nÒ¥Dù(IÔ³ú_ÿú×·ßÿş÷·ïøÓïoÏ~ñÈõkÿ2¸`yÏŞ-—”uûÏşÉ\0\r„¾äÙKÛPz¢QàkX€†î…¹nÌù,Ö¹Æœc¾,©nC\0p>ïÔ7èS‡’&n~än72ˆÙò@\'åS}2ø?!_\Z$ìå•p÷tB6\r$¡kVnRNúU6¨2Èç×¹ËKyg_¹&G}öF}OÚº4]BŒËDn^·Ş>Ömmo	Z	\r›È)ËucÊ1FJıí½>\nOšØ¹9T¾*°Ğ4¦rÕ§kÍ)cúxLçjwd×>÷ÙÏj†.t\"´c_Òw0¹Êè§?ıi2¼òµï	0 ×}{}ìÍ¹&èÁÍğüç·Û»\"ëqñ·ò5¸‰ÿZòı[)‡ë¿»ıü[?4`Ã—¿üe\ZÚÍ\rĞpY€†Ğ1£éOhˆ}÷’¯? ´m}Ûá(ùâÒo„Ì BÈ+q¹s?W›µ7!d-+\nO^¶{8l¨Ìã··œàvñT¤Ì®uÃœæf¨uƒ¯L“£\rºÀÁgµZ™‹OİÁM›üæ£´¯WµÆ×eb™ße¢N†H±nXÊ¼‹›¡¸LÌK&ğY}ÒÄêP}ås•Ì}1—<?ä:šc-B¹ÆYÌÚ9Ğû‚¾ƒÉ¼_øÂĞğ/~W\0†ïÈµÙ>ù¡ï_¾ôİ>ñ!á`Pî†İ7¿q¯ú¡Œ³ç¤<¹{É†ËüÆ7¾±]-Û7QÃ|y·X4$„¿ìk±¬rLa1(u˜— qJıµ0§tÃ†œâ\r—V@Qªsõër}!ävUBÈívm\"R¼b\\(BŸI4\n@ÿ¶DP Á	“‰õQ%Ä‚>Š”py¡Šwu\rö9	m§¾Ów)ôú¾òL®úvÉ]È8÷ïßßŞ½{×\\ïÿûØ²ßv½.¸vºL,¬å\'À\\nk†¶vèªS_0G,(2ÿÒ, ¬+Wq™È5?†(§i.U­¹CæÜic…º6îZ—|ß/à¢¯§şŒ\\í³fĞ nOşÖf{öß`à[Û,®pƒ‰qÃÙˆxNÒÔ]r4î‡2Îû¶¹|´Ù»O|ñs ¡™àÈ\rÂ\\.d`SˆS­_®	Òu23Õ÷/õ*àCßc`LŸcE9MPï~ Ã¬ëô1!$nÇŸu!$ÊÎ±	·	²ç)C¯=ğp$ôK¤å«x·	á}÷>ÊïY†Œ»„uêÂç©§ÚHı;æÔ±®=§à2á#;ÄœĞéûĞ\råF±p\"¿ô1~K™ùå]Ûõ˜ùÖ5¿SïçªãÊgNúÖ¿ŒYÿ1›³İC÷²“\ZˆEÃÙ{¾¹={Ö^_øö1jğëáløù¯¶^¤q?_ø–¸Oü‚”ÇõŞo ç|ñs¿µıê_¿cû¯oÜ1W•QyR/!r£ô7i‚åœ §&ÜŞ¤qPŞÕS	i«…\n†Œ÷­ğS~áâ!\r¨püÙHÔ¢«{EèAz”¥á“¸oN;±rèrq)i}…Åºt>&ù)uë+oÈÒ×3«åú=ŒD,=zd.şµhPp¥îİü]&n‰eO~—‰ĞñsRÇ{+ ymhH(õËĞ’·Ÿı³«]}”²!d\\ë\nÒøÔ·ëÛîçz×ØùšR÷9ç\r]»Ò‡´E-ĞR€OÚØå;\\Dğ{ßû\ZıúşúQ…xá^oÏşÍ«­iÜeÊüÆö‡?ü¡¹^ÿì¯n¿ò±wlÿåKï4Wp\0h vtÙ$âùØñÓ5QŠëD|ŸøÌû’fúí‹¹üP\'rİã\0Ô«/AuO)nv×€q§Øˆ[E,!äÔç˜¯ÒÛ¶VOıëêçZ7øÊ1¹ŞÓg¿T‹u™ÀmB†ĞÖº÷Ûe\"vÜÅZ7(è×`›\Zı&×¸:år”{¬wô™³!òl—õ®k±0ô;ç|¡ë>÷çÕö×€†>6ÅØIRmÀ=ĞpïkÛ³gìõ«cÎ…[¾¼=»ı©Ö‹4×€†gÄ\n‚2¥lÂgşà?Ø~î¥÷mWõí¾ğÎí?Ñ‚\r\n8`İğµO½Ã õhˆWºbÇOÈ¤\nks_lJıãÇâ)µ\'àd\0dxº×õyO¹’p–B\0é~ ˆ„(ÒFŠeÃ)/÷]RÖğXë†Ø|¹ú@•İ¾Oİúúîy?’öŞ½{ûáÈßü¦÷|ÊªÛ7}]&ııúÂs°+œÌ§õ)ã­ÍJ£kl\0Üæ&ŠÌíÎÕõ7á¾‚i®ÂM¿õî>s-6MŸn1í\nd+ä|òjêº¨}ª/Ğ \r¸w¸ÿ•íÙÏ½i®å[?>æ[xQ,\Zn}´õú€¤9vøñ¾¼³û_5 !.?ıÑç¶¯½xkû½W~jûƒ×~j{õùà€uÃ\Z‹†¥˜´fŞHc&ø\\óäš](ï\\Û§Ô;ßB|SÚsßÕ¹´¢m*Ï5–‹~L%„$”åF¸zªŸ†9W÷”?Th=iÖô¡ùæÔuuõİ+Èûöíıpäo~\Zê”³¹¹L´)21 QN¢È¾AĞ¡ÇûX–MÀÂT¬Zs)ßºÆê:3~‡¾ëT×>1D]Oé¹Ú=ÔÅæä€%ƒ|âb}ğ³_ÚİıòöWÿî{ÇÖ	?şÉöì4¼ıOë/¹÷#Iã~~õo%´å][Ş“ÿá«Æ=ãk_ûÚöoÿüÙígÿâÖö?#Bû?Ü6€Ã_?€\r_{I,\ZVhH™¬9\'GAG‹R2O!ïòRBòöìS< ¡­6TÜEï§XG<\rKÜ$ª<\rbé Q\'°j8u@:Ö¤=ä$¥nÛºaˆu#tŸdÂÍ\0ÀÀÅß!\r§ä2‘ûÂ¸Rì\"¼Ä®…X›1vúz†«øºà__ÏÓr}€…jŸ‡Òæ~‡Ğùë®‰Sªmû®uó4w?œry]ÀMè}ß¶š4ĞbÊ¤WÃ[Şûsáhø™/ÈõÅí“¿vM¸[~E€ƒwşÅöì©ÇÇ—üÆ½ê‡2ÎîÚòù³õö»ßı®…Ëí‹ü®ígÏŸŞ~åïŞ±ıúâpø®DšP°¢ÈÍêÑ¬7ßÁÔWºœ‹R\Z\nĞĞ×8C¹(Öd(@d8d]V  ÁZ/T€†ÕRÌÇ‰HñÊ‰NÔ—uCqÊÖ\r1\'¢ÊÓàFßrš\\& ¾^_Š•„¸6]Sv™Ènİ€åX$¨›3Ìî{“¯rß—B_=ÍUšBOis·©œ«ns\nĞ0\r¹Ûw}÷™;!óøä€†OúÓÆÚà¾\"á+ßõº>¾f¾_üâ?]ğ°Zø|i{ûsñwÕ’Lä5e½Ë–uùÚ7·ßşö··ıèG·/üşííß>~ûöó»µıòÇom¿öI6`Ù€ÅWä÷ÍjŞ¨tî5´<ŸØgbä>µ}’~\Z‹íMí\\úfG=½2.#CŸªÅ|ğ2¸x6+ËÓ°^Ÿ.OCuŞõaİà³Wœ¢uƒÏ{7íjÎ²‡Ö™dûºL|\nQ&BŞ7Ä¢¦:Îíº‹›Ú]oWµ¹¹L„¿&ı9€…)7Yb)¸rğ:u\'fî5µÏÔßujõ«9gOh QÔ}âÖïGÃO/åze{öÜ¶ßùá±;Ä5ä¡æò×”ÁõìëÛo}ë[Û¯~õ«ÛøÃÛ?şµwl?*@Ãgÿ\\ÅşêÖ–M°áÛ/ßŞ~ûkÏo¿ùæ‹\"X®ŒßãÔÜ\\ê“kb ¡(úsó¹ëÉ©zˆy[Â@oa€`%ÂÄf½¼¶Ó¬D¤xÅ¸Päîû©——\"tº AÈ>qJÖ\r)í›·:¦V¦uy!Ê´Xs¶Y3˜pßwñiN7¡œ\'u]mT‚Ö‡‡5\n÷¶©Ï[·~!sOÛ7ôı˜tï®¾\n½rJZÿ®ôîûm]ÑUWîW-X´_Bò†öO5ı˜ıåóSL3W›úÉ÷ıNhÀ¥«†×¾ú±@ áÎ?ˆ›ÄËÛ\'¬¶ßúÁ¿øà&\riŸxßJò¿,ù¥)çgÿèËÛüÇÜ~æ3ŸÙşÚ¯ıÊö÷ùéí_üîSÛ¿ûã§·ÿgløÒßˆuÃkM^}õUÙTí	–o§”tÇ\nqÎ‰‘›sÿèé•ûİÖ&®©^Óß§„´Ï¹o›ê^@6Ó„‰Vø1úxO)\nÖF”²êg¥Ã\rái¨kÿTëÌC÷Š¹ªC*Øz‚|íÄ^@Ì —‰ÍEVú„ö{ª‚ÓÔ]kË(²)”ï]ÃíĞUÎÔî‡¶¿Ï¼óuÅÈÑ—)+Së‹¾êãÓ>ıªõ3©Ên_í2·rsÎ_Ùÿ$^¢FıßûÄ7$øÌáº÷Êö¯¿øƒN°4gÏŠƒ›Wş~íol¿ùÍonÿàş`û¼oû[÷ŸÚş§_{jû×Ï¿}{ùoß~æ…§·¯~ôÖöŸûFœmïÜEù«†¸õ\\ÒT-\ZªÊªâßä^db®¹-Îs®o±d\0d^NÇêÇn†…X¾İ,†º¾HYëõ¤9t›³uCJ{Å´Ó]&†lƒºÕP7\0K)ÉäªºŒ±VµF¥<7ğªSH}ÙĞ1“>´?SÚmªyë¬|ÛÒ·ırÌÛXë¢©¶ûõ\n«9ô¦I\r¾¶ÑşÄ\'>ax\0û3q¡ø©…\\¿û^ˆuÃç·¿úÒ7·Ÿ|ãÀİÀßïéÅŠáóÛ³Û¤—K¿%ïÛ¾jÜ2şáşaûË¿üËÛ÷½ïİÛÿğì“Û?ùÀ“Û?ÿí§¶ù½·o_|şÖöz{ûêg„HÜ%\0$”tiˆAtŠÏÈ± u-’!HllW€®:ÍåşmÛæ7=ß\"Ğ7xH®„á5SBµXÀz¡ú¹Z¯„§ˆ7‹§¡n~*x³şé^c!1·u,¦}RóTûk%QTB]&r®É©ï“3è{áÂåE\Z—‰jCëê“>TNsåûóóómÎ¾H-Ëç}O)®¹¹ÜR|Ú&d¼ÔÉÎ!ú¡O}nRš¶/@ƒ˜Ìµ™á0\ZŒeÃß­Å:áS|Â¹>¹û[¿¹çş­iùíSÛ—^ş²\Zşøÿxûîw¿[®ç¶ï}æÉíóïjû‡Ş±ı“?ùí‹/¾¸…òK_ú’árøÑ~$ÂãFH¾Ö³Dª§0ùrMŠ&¥=†xÔ\r6&ÿÜô”>œS^LpCÈ†Sü›Ì†ûø]@†Çw&±öîy\ZP\0X¨sŸ‹§Á¸×LHÉ‰\nÜµKOºB×Ü¹X7¤¶Oè:_·Æ3fV±ò2‘Ùebè6èj³˜ÓU%èµn]÷&±NÅîq¡sÍ5»ÉÛÕ±÷O]éÛrÄ·ıê¬ƒ\\@Aï@!Î¼mçšo¾}=˜EC‘ªû à»è55ƒË†ï}ï{ÛWßüÖöégÃíoÏŞÁõ·•o÷w÷Şßnoÿæçäg?ûÙí¿ı·ÿÖ\0\rÏ=woû‹ÿæ‰í£_}Çöÿğ…³á×¶·nİÚ¾ıío7q©ï÷~oûÏÿüÏhğ}SNWåğ]@rMŠ4\\örjà»ØœòØÚ»!´â.pšà? ÛûTúæÀÓp)ÖClèËWÌ•“(Ïçı­)·eÊ˜úÙmõ‹Uô„ÎªCÊšúš6Ä¨íÕ¤@‡E™x˜=tëm2v\\Úgî‘f‚Zßºù¦m#wå4ç­GÂëûÎsK7„åHÈÚ©sØW˜[{Oµ¾©sÄÍïÓwg]\0@µ@Uûj@W\ryFÕÏ]ÿÿ©O}jûñ|û•¯|eûï|Ç€ŸùÂ×¶÷_nŸxN,~öï¶g·^’ëòp½Cşÿù?¿¿ëï¶«7Ş4@ÃoüÆolá~A@†ç¶÷î½kûÜ·m=úU>ÀÇğÄOáïx‡ù?ß|ædÑĞÅĞ5fº@$W€ñéã¡\nŸº¤¤ê=r.\">e…l,)íWòú!ÛÖùÿŞ4Ğç))ÍÊÓ€…?D^	YäĞ@ÃââáÑx1í¶¸˜@“zrbİà#D\r½.ù¬É¹ÓTß1ÈeâÒF™ÈÙN¹ß/wy1Ö\r9Ûgè²t†È8U¹!$oîşª–7ÅyŸ£O‡jãu-eøÉ{1í”ØëªÃ5‹†	¢pj¹]Ê}ÿµ×^Û~ìcÛ^\\\\lámøüç?¿}ë­·hğæ›onßxãíë_”È·>Öpıõö?ıİLÚ^xaûÌ3Ï˜ëÙgŸ•ëg¶ï~×“Ûßşíß6V\\Ÿüä\'·_øÂLd\nÜ,Şö¶·Fä¾¢NT­ºÌ‘ºú,¤ÿSÓú*¨©ÏñÍß÷æ2Ô\"ïû¾¹Òùöcî¹]Ê»¾-.•Æ›.èûN\rd`¬B.	gY\Zàiğ—\0\rX?1¾1İvıÄµıøm¬Mï²~ªâ³æMm}Ki‡Ğ÷¯{÷â2ág8µq“s=i2¿›S\Zb¬Rr¶o_e…Îÿ”ô}½C)7\02WÛÆÏ:—4„BŸ\nõ1ˆàM\0hÀlèw÷w·¿ó;¿cşş›¿ù üå\'¿  ÃGäúhåû#Û{~Ù€XEüôOÿôöç~îçö@Ã½{w¶ÏıôÛ}èCÛ§Ÿ~ÚX2@ù¥Wn¿ùæŸlÿå_şÅDœxøğaĞ0%P ´¯}ÒûŸ²r¤)@ƒŸ\0Ufõ1oK™a\n±×1¿©àÂd0Ã¢@Oqüp²\0ñãÕf}„4\\Iä!Š”û™O€›Ú¢-\"‰‰Ô!®\'S²\nIµn`íŠ)c*\'Ô¹„CŸı²i^/…ÄğâÖvû¦DÓj¹H³^Ş,—	×Z³oybÈõÍ×¯?f|ê{øŒÉ¡ÒøÊ¦CöAgå>ÉnêSm¿}0•2bæj]ûôõÉ\rjÑğ‘|dûgögÛÇ.…_üÅ_òÆ?1@Ã½ßÿ¬\0Û³§ÿÒ~ïş~òşßm¿üå/ +†Ÿú©ŸÚ¾ë]ïÚşìÏşìöîİ»Û{?w{ûKwßf\"KüÖoı–q›ÀEã»ßıîöÇ?şñö_ÿõ_·O=õ”ñ‹×ÏF„Iß–k µ8‡>Çg€ÒV¡åÆ¦ï[08åşì»í|çÌMN×£İŸÛ`®`\'ñS2û¯Ç=OÃz|Â}ú….p# Ö”æVÊZª AL¾{VmÕ·’ íá¶Ëµñ»‹2qµ¼İ\n2l··«KáˆÉ˜Åîícäëcô]¦!…%ü¦p›ÑfzØåÛ~¡sÊO}oßwĞ÷î»­Ç*?´BÚÍÚÆz¿ò\\¿ªœã Kş?y A÷×ı×Æ}â¯şê¯Œ%\r<Øşıßÿ½ŞösÂÉğôŸ_ïüÈöåWW&zÄøÿÁp-pa¡\0È€eÃı_¸½ıÕ_xjû—ù—†NåixòÉ\'\rÈÀÿ±t ÏóÏ?oğÂ^úL†œ!f±è;¯ĞÖw=´ü®ÉâÓgmiN¹?ûn»Ô¶¿)ù-‹ùÓ7ÒªÁ‚ÓRˆ«ãîˆ§A”¶kîâ2qµ˜î×}\"Ôú²È©Í!Uböw-]—Ç²n­gL»ĞÇªğÕİÕ¥G”	!^á–€úR”Ö\\ãfJŠh[ÛúÊ5¹Ú%¶*€ài.ÖM+±ˆ»<¿Ÿt¸2N«m’7f|‡ä9U™fˆ6Ëˆ;CæC¦Ã1·l2|Ò¶µÉ\Zø€\r€ôGdBTÂÕğ©WŞ€á¹şÌ¹^ØşÉå«\0˜\0DĞ÷	@!éş;·¿õKOÊÆüQÃÍğÑ~t‹åÏÁrâÑ£GÛ÷¿ÿıÛû÷ïqä=óÿ4Ìó}#ŸA#MßË|vˆ-cÈÅ·<«µ¾‰`òòòq6¥¦¯ñuÄÓ°¸ÎÓàºO@\ZÙG=Œ‚!J…¯ÕŠp¦éŠãá®o)Ö\r”ÓGÿÔ•»&ûæóÙ‹‹ËD·káX ”Ï8DQ1\n‹€†Tp¡.2Ñòü^\Zdn9¿}ú/W\Zß5!5]ßòt®ö˜Z9Æ¢HšuZbo‰ÕC­\\:I×şq#€·1±nÀ²ásŸûœ‰@ñÌï½¼={û¹\\ºû>ß>û{Ÿ6 i]¿ÿÍ¿ù7dø¥_Ú>úµwmÿâƒOm_ûÄ¯l¿ÿıï›P–¸K´}ŠëÄt†¾7–\\“:uè+ÿÔì›\\ŸPeÒWéœb:–ñòÑ`J_ê¸Z¯w<\rBü¸Y/¯mk±t\0dèËªëß~\\ËiçåùCsÊúŞ}æOYÓRÖå!Ë¾Oò}ŞA£LŒå2‘ÒG)c#&oŸãÜ·lÜÇPVL¸Z*_ÆNaéšû€1ïíšÍ‡äw×–|}§íR|ûbjéú^OÜ~™Ú»O±>Ö²èña®\Z­ë¡É™Ã¹ëŸk]íš+7h A\0ˆñ½ï}OBW\näÛÿx=õÜK†·n¬ yT°¸\Zp»øÍßüÍíŸø™ígÿøÖö[ßúœ\0¤ÅU—	>XC`ÉbÅà¤\\ƒ ï9¶ü®Á©mq*ã©÷gîE°”ççk×ÔN°áú¦Õ%lÎå>ÂóÔ¢#tÛÎ0—DŸ²È>H!dBBŸ..Î÷¾Ú}±]íÖuÿT­†Ø7ÚÚÖD™ÀeBxÚÈ!úp™ˆ•/†Îç+ÏtãÔû\0¾ Bı:/@ƒ§Ç¶_ÌxCÖëz¿©ôgêx¨ËÓG]íU½?DûñLã^}´W_e\ZíÑ“µ–EÕ¹	\0˜Ûj3×8èêë400?ıéO„Ï}ù›0üááºıçÛ¯|ã[&4%‘\"\0h\0d€òøÀöÃşğö/şâ/¶ÿ‘_Ú~ãÓ¿²ıÉO~bÀ\\$(Ÿ<|ÖëµôïĞÁšk„.C¥ï\Zœcl>¡}’ş”ûÓ·/CÚ+wZÂÎŞÄ‹È>¤s´&*‚œ¸Ï±O÷Ñ\'$ÊD5ú„Ù/ÄÌ a$Ç;6…²lê÷åÅ£kÊó<G]ú,#eÕÓı˜24oÎwë{/öéÏ—‰\\m\nõİ~î)~®wN-ëÔµkˆ”¶™?Õ1’7¥>y§nÉ+#\rÑÆ¹eB‚ÒÜÏŒmß|!nŒX(…”İ•Ögø¦i›+7h€à Á¸M<õåzŞ€\r—ŸûÚö;ßùáZ\0dxûÛß¾[	ùã»ßın©‚†ÿÌg>³}ıï~iû­¯ş±P ±%ôÃï\0!.:8†X|Q_éº&÷‹EC·oh_ıã[îøTnÎù¹¼lR©ètòÈ ï3×>Ù[5ñãfuˆJ¤û¿¹¤9Ş3D 1.\r§š}(Ô9ŞÏ-COº|×¯¦t¡{°¦Ïñ>C(Ù<£­®1.9Ş]ËmÿÔşÍßÕ9Û¤«,M&-Âşá±m:÷¦4LİŠËG~®K“Ò·!ycëG¾ªµ‚ïsç!ÇøÎWöğ”6í{,4ÕíF\r\Z~òì! Ãcs½û_1 ‘(d\0hxç;ßi8°pøıßÿıí§>õ)Ãïğê«B¹x°ıö×>¼\Z\0X4‰LQ,\Zü”cŸE¡\0\r~mé»÷‘®\0\rÓ·–XÉWˆÙ¼ïæ7|:@†;³TQP«†µ)d—rÑuß7”¥ö¥¯ét×sÇ¼Ÿª¨mİ0„’İÖ?±.¹ú¼}ª2}¬Brµ‰O9ğ3¤®ócğ4è»õÑG±eÎA®‰Q<§&SûX+„ôaL›Œ•wˆ:RÖ:¹Šy;|w®}¦m®Ü8 á«_ıêö_şå_¶Ÿxõ«0ü¾\\Ş¾ıÿÖğ5p–¸Aàşğ3?ó3Û÷¼ç=&Z|D¬X.—{DiµäxùÀ€\n€\\¤%*d’\0jİàÒÒì!k®i}€E7‡xÇ>›\\zˆv}Æ6d!íÔÓ p¦\n¡ÃÇ§s¸‚œB?­$”¥áah\"…Ü»OlŒE\\ì;#˜•Ã·ßê\\&ÚNü§tš[×F¡\'¬î»êš³v§X7„®¿¡é}”ã —‰ÕC‘yò¸øĞ‡© Qh{Ä¦÷iÇØy›’â8ßùŞ”îrÇÏÓ61óEßwH%¸ëİæ ×ÄÊ¬1}ÔÕ^Õû¾íZn[zßgÆ¶[ùBæ+F9ëk A¬t`\n\0(üô¯B@†mÏnıáö»ÿôÏæ·ç{nûä“O\Z+†_ÿõ_ßşÇÿø·şç¾}ñÅ\r‰¤ÛÁ«…À$!,Š Ğ€«„^\0\rü¾İn¢FÎÉ7Õ²|†\\“¡«rNàjYC½C×;¦Şç=ªeöÙv9ÊNÜúÎë\nWuí›óùøß©!U#?¦ƒ¹8r¶ilYD—à²œÇ‘bc@nÆGØ`	AŸöîë¡í‰àRêØvÍ—ª¸¦¡`Lß{EW}ŠË„ŸaW;†Ó\\é³ğ4œ[Î±Ø+dOÙ}ÂWFÍ!£YFHÿ¤ŒŸwÊ	.Íh™¯¹İ\'bû¶._Ó\\Ô¢a,eÄPˆr¸Hœİ–p–bÑğÂß,·ßøÆ7Œ[ÄO<a¬~ù—Ù>¾ğÂ†¯Áü€abŞ,ïŠ/-\'Sö£\\ğ2è\'ÆšaÈSüœ-¦,Ÿ…hJ‹¢O}ûö…êBtë”Õ˜ßô9, sßps	q!åh»i;64]ó&·@KôSî1@…ê3O\rd`í­\Z)$ ôñ¢ÈçŸŞìK|ØK‚ÆŸñÿôõMg›©Ûi»æY×ºÊı˜½(Œ‰)?ä½ºNá‹Ë„¿r=Æöyfö‡qUwší›Ê@ÃXzK¬œé›¯ïuF×Ê¡ë3G Ãß}šy¹Ìn:\'ÈÓ4WnĞpuue¶³\'gûÜï}rûÚk¯m/ä>†ŸıÙŸ5®ÿé?ı§íG>òcÅà.”î\0¶›±€ës.N1%tEFßÉvÓ\\\'|ñ©-ŠuıÙ¦ÈóœLVÇSŒòß•Çws¯¦›;Ğ5Ç|4ß4>\0BÎ1›hà=ñ\r1ÙlàT¨	¾ı3—tÇ¤Àz\\K¨K>¸ó1B¬\Zl”	k†T¦y,û«9ûsÊÖ\r¹…¾:å¯«-Ã\\&°Ìì2»\r™¯¬éjã¾ïgãi´nªÊ7!}â®!ùúN;GÅµK\Zò ÓW®Ì)/ùê>í4D\Z£Oz[™mëaVâ\\mß4WnĞ€5x\ZŞzë­í\'?ùIÃ£€åÂŸşéŸšï}ìcµ§×†;†œèºL¸Ã×À\'f°ö-tô½@û–ïÓ6¹&B×‰•O]šÒtÕQïû.¼îsºÊömë®t)ï?õ¼¾Â]—ÃP}Qí+ßú‡¤[^Ol0–\'2h?©UCû{\rXÛ6„Z5 øD›X‰åC×Úà{?äô>d¬æN›25oLmíSo¿èaH[;—‰nkúhê`š±–ÊÂÓğ8z]ˆË:6§$û*Ğ€¼ÓG!ë¦õ‘\rcÊmÊ3Ç>óÙ§õ°WŸ6õM“k agq€ öõ¯}ûƒüÀX-<óÌ3†ğñ›ßüfç‚z\rh¸\0h°&å*ªû„ºKğ]€†öÍÛg2èiYİi~®*uqò™¬1 ÃÔ6Ÿşšbš©¾ã7·¢¥åqú²É\riÙ€°Lıúz÷)”«V\r›Õ…XÈÙı‚Pp©5îübÕ`,Wä´©•\'õLÖi.mÂŞÚ·­º¯øÎÁê‰mŠuDõTÜgÿˆ©§æé:…W+Í5¼SoJä¬†ëj)BîğOÉº!c+W÷ış)m7è›«÷ëzÃ|÷]¿×\"sQx\Z¬•§(×¤Ôiˆ9ç+Wç—|Ÿ™Òv¹ó†¸;!…>Ÿµº)OÎµ±NÇÔ¢!VÉ\nmĞjz÷$†ÀšzáîĞÕØU ayq[€†¥É$ş•×fÍ÷Ú<\'ærN¼®wë~ê‚s¡ª.1c!ç{¶õuLİÆÎããÆ0ÖøÎõÜ.%!UHÅb „4ĞWXMIg|Å½#õİæ½†Ò‚ºŸ`Å€5ƒ~ç\0ÖªaÜ.¶o_‹:²8Ğ¹÷Åã9œşÆ€ú^)ë²;§ûŞë}Ö1]&bÇ×Ğù|Úq*ëMˆâÂ:\r°°ºx fÙbÅ°s™Hß¡ ŞĞÀ[èØ[Îéãù©ıëÓ†!ru®ú„<³v)3ÄİÉ„¹Ù¨é9†ZîsÀÀ!’9°i\'rî?um£€&€×ıû÷·÷î	Ã¶ü¦Â]×¤©\r ú‡œ2)Y×^*Üÿ±)@Csqê‚kaÒM1fĞ<¾u‰y†oÙ]c¸ë~Lİ†È£ıC;T¯®w:…ûC¸VM‹–.h^¢b@X9¡½ïzX«†íöıïÿömo{ÛöáÃ‡G[‰@±5ía?¯DûÆ#€XPé®|ßé\rdúx!JÒ,ò”=tH]“]óûÔ²|êŞå2aä±Vh³fÀÚnªXræš1@ÏûæN3Ä\Zœ«M%“X‚µ…2®êÚ,el†ä­¶oîşK)/UNBFŠyFJ›4åUùŒû¡u\n/]uë`;ôİômò×ZÜ0ÀÒÈµP0V‹\"/-$8P8&67-V\r¹Ú¾\0\r;…vrk@_4§h°¬à‡€\r„¸„— ¡‘AÄ\'vğåêü®I9ÖıÔ<gûU—˜±ó=Û6ˆ˜º\r‘gˆ÷kø<w(!×†Cl@8†[ §Ğ=‡²®®,®{ÓuĞúğ‹µ~xEÒÇ+|(æÇµ>c16\rc¸/ßvÀ\rÙjˆC…{$¦Ï}”Ş”µHóºó9¶=}óu­á.HF‚9u}’Ò¾m+]Ì˜\Z3ËÓà,TÛ*¥bòºí•«ßRËI•\r‡‘bŸÓGn{¦\0Õ:§öS5l›Œ• àpP#Àà€Èc@à€`p(´¸|(¿°°`ˆ$»¢K	‰¤€Mï–:´íG\ZÆê¼>\Zp¹´ngÑÀ{q°\0À\0Ğ\0à\0ğÀ³ĞĞÌÑº€çê[&Éu‰}FÎ÷,@C7áWî\r/µ¼.e!§0kĞqãßÛµqIx_1·ÍyYá~”’˜³\rÆ(‹vlØ‹¿J>ÂP€qóSnº`C¬âç£X§İªPšlàä¶J|‡à•2ºÖÛ®ûMmÆ¸â¯¾ÛßÜY/ŠÉ¼„Omáeài6«¼Q&r­>Ë\ZrıM]{T–1cTÜ \\Wˆ˜6Šë®âáûÜj;§>Û÷¹>éæxB^Õ¹ŒÕ¢¬—îï¡mœX¨ÖÏ÷Ğ×§¿beí±ôT»\\œkC,ó‘³,¨Å\0T—Ï\0,šŞÏ§MCÒ¸ÏÌubÌNH>ŠØr)Âl¼Wë;ïzt•9¥Š¼¹ê2@†L›:.r¶Ïu‰}FÎ÷ôß±ãµ¯|CÉ)>kA´<f3‹qŸÂTA{Îù\rWƒ˜¥~>ŒG\"a9Ç»ÀöœWÌ…){,Ø@™C¬/UÀ!G?Yœ¦˜‘ZsÑ˜gÕ\0®²N4Íß!Ú½¸L¤Ëc¬½¾ãU³Øqé3†SÇhHş)\r´U_òMÎrÍš(û‡=ñÆGßŠÆ¢ òÀAŸÙÕ?}uïİUŸ1›ãà0gŸ„–d\\¥ïl¿å‘ÅÆâi(@C@u@»Jâj)aá\ZN®Vw·W+!ÖYÜ7~´¡ƒ,mô„SI«xû.’!ï9D]bŸ‘kñmkØº¥Œoß¼!ıxŠiÇvAÀ«¾~ñ@B›õ Ã(…ĞW(ŸK:öŒ««Åv#`6 ±’ƒpX]ı”ˆH\n6\'V©Ö“ö!çc:ÕºÁÇÍÇ„GM ÕµWëº7½gßmİµf„¸LXâë›é2‘:Fs®;C\0uã2tÌWAEß±^³¾ù†H75ùÈ(£øå‹ á¦Ù	XsÙ=»şÄ›{¸–©ìU§çhûÊg9Ó¥Œµê»ÌÅ\nÅ\0Côã°×Z¹\rî†1x\Z\nĞĞĞ€™áFH• MjëTŸÉ™sÒ\r±‡>#uñÎÙ>CÔ%ö9ßs\r9MêBÇèTÒ%ğ.`$7ˆzşOËÄU#§@>÷²¬ÅÊ\0ğÿ¨e¡.!1Æ5ïøs°n\0¨ˆ}ÿ¾Mùë„ÚèºœòrQ¿±Ï¢Ş±äuó¶ïvöqVÅeÂ‹5vÌäÈ7°P7Oc÷ÁPÙ¥:_BóÇÖ³+_¬ìæ#çû¤1>útÈşbO¹ñÕXë>áS¾ÓtõCèı¾ëZ~]Dˆasß,×CSsÍµê\\9sÍbB;0$ı˜“´Æ[-·ú5Z A¤bÑĞ¸™ëØ¨}Y|¤QŸq¦ïì~û ®>e‡ÌÇ¦S‹”¾è;oêûÍ=ÿX@3f|}\ræÄ9Ò¼=‡0?Õ2a©\rÔ‘DÆ€\rŒ\\)øKÆ¶ıXWŠ’È!])bÇ4§?áÂ™eäÆl8GŸ·¶ÜÓ5»îYC¬çù\\&hL ­Öc. q—EH1ÔÔ6CÉå¾{bêx\rÍï¶Kh^ßwŠIç#«õ%a½°©Dˆÿ‰ZĞW=SËÍ¹>¤Êô©ïB~Ÿˆ±ı“wš¾æõ9gîé`½š‘:E©î·:D4G§Å”‘k¡ríjùh»¾sB8\Z6øÓÊµ~,×#¹\ni’æ’æ€ß>wÓÕ™0¹ã+¦ëòÄl}è§Œ³®öÈù}½×;¤ŞOiß!Úoˆgô!Üú–É)ˆ2ûÇlpuyñQ\Z_\"P°nâ>» È‡ùMu®66\ZEŞWYîklû=7a\"fša¡SÕ\nÁGêÚÈ<éÓ¢¡KAV—‰„ªl#€$ÔåMu™ğ±‰»uÀB›ÜÔ×¼-7uï\rÉ_¿!yCß+&}ª›¿+\\iÈZˆ«El=†È—«ÏÇ\0\Zâ\"Bôg-Zm<\r1ó¡-O-Ğ{\0¹Šå˜H`îA‹9kÈ‡S¨Ø¶\r­{((P7Hú\0bßß\'Ÿ[ßĞörß?uQJyv×{æ^\0æhÑÒ¾C´ßÏÈ!Ü¦”‚†Ÿ_ˆPÓ”Ö€™N—SŞiêy¸_ì=êNÁ¾¢\"qé‡è€\r)¼\rª÷1ïÚ”aNîšÀ§º1cÑD7‘ÓÁ¾×v¨*¡UĞ ¤Ì>Àœ. cL—‰>ÆR_ënH?ú¦ÕşV9­¯º÷QnJß…ä­®\r}¼Kl™©2b—œ×vß\0„&Ú@ºRÚ¦l¦Ô1WŞñÒÖ—Cô—2D„ÈÑ¯>e }Í¢®¿úhû#‹†\\ƒdjåän8õ—e€óá4	Vp.üiŸxâ‰½I+÷S¢N¸SuBMÈ™R§˜]¥.J)ã¬«\rc7Æ|©ïßõ©÷SÚ7¤¦š¶M9óts¤ƒHª\ZNĞgƒsÓä4aÏñNS/Pac¬l\nB]º~cí Ä2ß.ØÃÛàÎ·œs¯ª¨Y+˜P•@qUÛ#LÄß6*…OßWß¿îèŸ²šNµs­;Su™Èõ~}—“s3°Pmç”5 4oáix½öp2ußÕ=xê@Cî9*{ºùûŠ*CÅ¦·d Ãò4 !‚R…=\0 ‹( $]Lóósã?ûèÑ##¦\0\r9\'ÈM(k@ƒ‚Ÿ{á-\ri!Ï†è:A/F‘é#›­ãİfhuÉßG½N½ÌõÚDâ6¡–u®e\0î\Z¡b»#‰lZB†¦yR×OU ÁZcÇ[“@fÊ—Xå]c¦k®wå÷½ŸjİĞ¥ é2Ñ§«HWÿ„ÜoÁºúq*Ä!ï’6uî‡æwÛ;4oÈ{…¦Ó:;×\ZÈ<e} E¯“›RŞu¨ˆ±ÀAL¾!x\Z\\½¦\0\r‘@\0@€„=\rCæ4q²”2ÈKŞzd·­]|6%5]¬~§´·ÏscüœoÓÆêx¤´OjŞØö\r$¦š¾K‘è„sßÇd“çÎ„W‹ˆÜu¹Iå±¿0Øo° àæƒë„r80†•ÃÁ õëâÄh[kt½Œ#mcxñ¸.²‰%p$*IS¸¶ñç¦õ	§ê»îæ\Z)\nyq™ÈÇôeJ¿ÅÎ¥¡ó¥î¿!ù«ëDHŞ!Ú%U–‰ÍVìzçædeÿ­Çùrõyˆ\\;nDˆ«¼¸<}ó4¨œ ã¤\0\r‘@‹.4¤û!Ş9¿ë)\'PCLÊòŒ QÜ§O4:vƒóY}ŞØ:h¾>Û\'uŒæÚxRÛh¬üS\ZÈCÀb0‚„/Fğ?å<voÁRAş °›;—?ë! ‰$\\¦I¤Ï<óIb‘c£šÔÇ}·²Ş»¿½ZB¼,á?W—Û”ÆŞ>‘NB”Ç®ñzRjİĞµ6¬¤Í^á–´];äZ\"‰–•3ÊÄXëeès»ÚĞ§CŸ9·ô1ó^ß1$oµ/†’|úÃG^K•ušòÃ+³ŞUóXóyYD™ê2^Úú­­¿¦\"Gßú”ÑeÑâ3Üyí@Ô§“\ZºNaB\Z®íÄWX¿Õš“$ı?nx¸RPŸ¾&rUVÎ†¾WÊm_”cÇ˜ÏÆ5ÔF;e !¶}O%_ª Ü%(ÇŞ·&ï·Z _3õØ:ÜÄ|\n*\0nc½@è§jİÀØáãKé#äù¤©îQµ.†—Áã¤î’O¦°Ï²V™w’PÓ>Â•¦±®;İ|\n>ïG=ºÆ^uıéJ¯÷}®u!Ôeb³K¥L‘`|ßaì5º«\r}úÌg¼Œı©ÏOyÇĞ¼…§áº¼	 ²Ö]O{×\0º6òN³ŸşdıÔ±ZwÀxˆa-å,¹fğ&­_,˜n¢ze“Úêc€¦E3ĞÔ6W]PÁW_8 !t‹ÄL@N‘ÜÀ¡Ç°dPsV€~S·Š>&®Ï`¨î»ÿ¯¶A*ÒĞİØ1å4(Hì3|óù.}Œç®2}ßaÎéêæ+ï£sÓGà#Íl¸¾i[á~§B6F½çşÌãHv_BùUëı[÷(»wùñ6øœª»BG×¼óáeh°` öUŞk\riC¢rÈøòôÌXô°ªézmİƒ›ÆQ@cİĞVŸN—‰ÅÃíêBd‘7ï´^¤Ù¬›Ü¹æÅPr™O¥´¡O{¤ÖaùSû34ái8–IY»|cIÖ:(˜K¬	å78i°dh‹:Ğ%‡\ru?ËáÚÅÅöââ±¼»¸ŠH;ØğÜÓÖ•zå!Ş´/\"“5õeuêÿcû¾\0\r®®2È$]/äteõàphúOlçtå]´C6²6€¢I¸TehÊÊjW›¦Üi_7í”€ê•Ò}æÍ²ñxÎ÷Ø¾lË×\"(à#ÌN=Í5_z„‡ĞoêõŸBı¬@ø HÙC9ÄZúÃÛ Ö\r(ãJJŒrnïÀ†.3yŸ}¦ônTÄkyêıNqÿà˜/úá}Œ‰X;t\rŒÅî–>s¿ºÖm§ù]\0Eµ½šÊê:‰÷v™¸—‰Eq™H™ÿsßŸ|Ç½Oº¦4>k‰æ­í”çö‘·OY§©lH”Ô¬Lx`¬¦ÎÁàÓ~:^¼m.Ï\n§µX°m5m`áÚ¾5PŸšúÀÒsèshğT<ª@Ãêòø‰ï-ªV.èà3¡bÒ„,Ú},´¡JU›¢åÚÆ´ÅòÄ¶q\Zü,I¦,ÈİÁWçôÀšÿ¡Øİ	R˜}Ÿqªé¨ñ=ywÛa³Yn Æ\"ûßêVÁïÌ„°®~¼\r>&ğuûQÛé}7/Ã1à€‹„rS¨åïg€‹Ï®qãóM–ÕwõÙŸÛÚ§®®U€ºí}Æv™ˆİ‡Ì×Ôt—ê}Ÿ>òır<Ë[Éó¥CÚ§Ú7SÚÿ}e¶>äRDß7–Y\0}<c*eêø­·èPáB€çóûÆb÷»vŸ8âÄn\0»©\\ë\n±·Xp‰Âª¡‹§!ç(@ƒÇâ¨‚…6¼ÙÀ/hØ,Œğ†›DõÂtÕšuöÇÑ²hçØp†,#ç ª¬Øöñİ´†êï¡Ú+æ9CµAU ¯	z¿Ël9TP=•ôX1,ÈĞ©Øj[×“c³Î˜\nx£€‚=‹\\úØ“°àÃ½=ÇXB@yuÕ‘¢kşÕ)%µ.¾¼†Ò¹6d4ÏÁ…‚÷5¤Õt•ÿçäeˆiƒ.Pû¾sßCÚò¬ŠË„±~i»r¯ß]c£«>S¸ïÎáºöIyÇ®¼î>[7\'ºòÕ~¾2[ŒŒSòÔ<]œ?ÚrÙ`aRn…`á:Y§gQÇ×µ\'ÚÈ#Ã\0Uhˆ\Z–·Å¢–íöşıûæ¤H˜(@C\\È©9.¶±›œï¦5Ô&;å¶ÏİU\0Á-ê¼¾ŠII÷o%nŒ¶j#ÓôUİzó6XÛ:øĞE}¯¬ï,|À†®SwNÕ‚T	‹j„&‰0Áf8\'TéŠ<Áé¦Ä]}Ûõ^®9iÓZŸrú›ót}L—‰Üktì¾ê“¯kL„Ş÷yæÔÒt¹­6t|TAĞgJc+‡Iù”e­±ëY!–ÖZajü\n²Œ8‹….À¸{ì]d|,1lzSsÕ…Š¾^NOCÎş/@C$Ğ@¨(È•®„¡YOX\04…ï6Æ”5g‡¹eMiÑÍ½yöÕf}–Û¾@Ã¦ƒSß<CÆ|ˆ ùˆ0må;TÀŸkzŸˆ(å1Q\0à^àOÃ;B(¬\0TI\'Z@9Ñì^öŠ¹|»Né›‡E\0/ƒ+]I¨hµdĞşÖ(PÍ®˜ßë´¼&·÷]}¸Rö…«ÛeBM	UÙF\0I¨Ks`’1ÊDì{/\'¨Sí‹¡ß%ôy¡ÀBî÷ãù±c<ô]ûNß§<yÓÊ†¤ÒZ+H4,L…[a§ êêÄ¥évŸØ{`áĞ^ëóö(`º¯¶ñ4ähH\0\ZÔ¢Á‚\n[*`¢ª~£ú[S‡¹ä‰1\n^ˆÒÕ÷‚›³ü˜¶È9)bËŠ|†ØzR>wÌwY#Tß{®Êh©÷i‚\"> ÃA èæ¨\'€İü°À\Z‹Ÿkñ\00®ûÕ•p<@¸¨¼\r]$‘”[§t·)¡¼.Ğ @	õÕÄ@ú\rd>¼Õvó%^¬‚9÷ãEx%DÕ!Q&b@¬º±æc’SNˆ-+EÑõY‹sƒØwtó¥uó#¥^)c;VÆJ©o›õÒ)ÉVC¾‹ÙûÄÊlÀ‚*òC×H!­ÚÂ`vƒüŠ§¡\0\rQ@ƒ0ócÑ B‹\'F<œqaÙ\06^Ó®ÛšNaİßUïcñœB™s\Z|ú¯.Í‹üœŸ¥à\\Ì;ø‰%Íi*õSë×AÆ±ˆy¼Ù—\0ÂõÃŞÄÿYØ«\0ø›,°lØ‘\"ZUº³ò2ì|Q¯–fÏ­^Wb¹QgŠjÂº	‡RL›‘§\njÖÂºÊun3F!Ş»L¬Ú­Ö=D™Èış}Ê\"±cÂ\'ßØíà>õI“ú±\rÕyÙçé*»ù‘x#«`!ŞªáàAcGÆİå¢1OC\Z¢€†{b°\Z8]Ñ8å˜¥*ñ–\nm!@C×â¦÷)³íD×·œ)¦›+Ğ£ü–<ş›Uj[ÅT%OrÂ¡w	×Ã^…¹Po»Ù“p›\0çÒP—ì]ì€ü‹{™ıX7\nŞµn ¬¦ö‚x*ê½#H¯,/Ãy4ÈPçJÑ6R¯®}Øg*Iu—ËÄfç2±).Éã£®_ºú2ç}Wl›{>ã\'$Mñò<7mgçêƒ\"«ÖËo¬EDÅ B†u…˜ZD‡cAÜ§ÁĞ^ûZ¬ûn><\r6”vªlİ•¿\0\r@§hğûô4TËÒœ²w\rÚr8åü”Ú:V°)ù\nØkX!‚q\'”˜°—½$€.,íôà\0¨\0Ø€Uƒë}€†ªeƒ/oCW;´o¡sş­«.9ï÷mÒícİ`\\&.-wTÛ…ì²\"kKŸ6*.××Ç¾d±±€…ê8H‘ïÔúÉgl\räø¼ç)ÉH±ïr\rX˜`Dˆ=yãX®^ÀBœåCİ¡…¯ûÑÁbûİ7_\Zb†KK®Eø0\rvµ~¸39İšßè„P×	Ÿ…­	Eíksó©S®4Å­€¾‹WhºXÁ¦ä+@C1\n2¨0áEAë¬ÄpYòDÜìG#8¸9 „î%¤W7\nÀŞŸ¶,Á?4ØªÃCXÈğ©CÎ4Cì½m¾íK9üÀóª¸L´†³ÌÙçCX¸T]f‡ª×sRµ¶±Ü÷³sÉª\n˜„Ê!§½ìÈbaÒÀÂÎbHûÇ©¤ñ\ZdÎ=&«ÀÓ™a´Æ—Ñ\\bnÈE|MNÌ%, f$wEr—×÷Fï*À«åc99°æ¥p3(£·\nkü¦¤[M@CÊBİf®å–ÛÆs±ÍYV\Z\nĞ{mĞòº˜r¿\0\n}hw‰ÁÈ†½¼ˆV¨‰*à\0 î’ëF;`éÀÚn?•bÓ—·¡«-m’O\0ŒĞÑU×!”Ê¶}´Í¢¡¸Lt‡ĞNQlcÆF¬<êò+¤ğÄÔ94Oì;ê8}›>õÙ¹dÖ›\"¯\Z`AÀa£N1Ô¤	Ù…áTÀƒ ÷¸F&Yo-ay\Z„wPÆS.ä‘Å9áHÅU¦<uW\\|l0­HyAå+ÈµxÔ•s4<2&Š^˜¥âÿÊÅéf§hÔ‰OSxËX !çÂ¦Äzîû\rNä|¿Ô1Uò§-<Sk¿Á¦ä- Dìè‹›À(Õ\" ÄÖ‹½	 ^!Àq%4V’H\\,H§ÛOoƒOİˆåí{úÒ&¯ Ü¤€/>u­¦‰İÇcd•¦úé2ón!Úoh~ò}¯9Õñ—CÙ™säÉñìÔ±«ùO‘§¡\0ù\\ºuì¾e£Tt?†‡Q ƒby8Ú8!<€±h(@ƒYØTqZ-mam¾Fnıà‹B›†ã»IÙŠ]äÆVÄ«àDn`bì÷›šr\\ê“ìˆjJ¾2Äß¾\\ Œ%¢ğÄÖo#!-\0ØÃØ³nİºe.\"\'ñÍš¬îjİ €–±Ïvóa5™Æ]aI­rÔ%¤Œ!\\.ë…\0:¡#äıú²äpC¬2¦xÊDî½X9©\nfäzçrêÆÆœ…ê»§öM\n\0”úìÜùç.§Y`ác±á`w„b±Ğ\r\\,||_Ÿ(NÆ²E<kÖšÁ@CuO	7—srö½á\rÈ÷ŒÌ¥~Z´ÃO<aN€Ô\'¶Í¢Aó….xsSÄC­&æö~9Çp)+¨P×–!BbI[À…Ô1€òÜ\'È ‚G*\'Áz}àmÀªpA-HgŸÂj ıàNa­r)¯Æ¯Ó˜¿úœÂUÉ“Ú_¡ùû–9TFhª×˜.)ïÀ;aı‰Û)cº\n0öƒš.TFªZh†ök®ôî!ušº+Dè{ûZm4õ_\nĞúì”1UÍ;G™Õ˜¹,ìÆ)wŒ¥›½¦V¿¾¬ò–ë\r4´ğ4ªÁ%Âü\ZÚ6˜¶ÓmÉ­+R•,İ”«uğYP|ê]\Z6ËfsdCÄUk†êÅı6«UÂ›Í¦z¥¶UÉß¯B[Úwší*H•ôlˆ„Vd°½åSŠ­«æƒ‡¿QôøTĞ¿)™$–ìMWb\r¡–\r¹xxîRÂ¢…´İ¼Ô³ïh´q›r:–Ë„LÕ–†1/m¨ójÉ\0ğÀK\ZRÙÔ¹tSò§\0N©ı“òìÔ1\\³¦.óY`ÿy=‰šânÍü°h°®İH†`º§1ãSFè4äœ CMÖ:…¾Š6w½×1Ğğ`»YØ¨Õ¤e÷næh˜úÂÔGıtcğvª}ÔGJ™Óúè—›\"ü•÷ Áo1DQö=hKgÃ^¦»àJÁGI\"Ù;Ò±Ö#Âû›©bcH%óó6`¢‰€Óeš™JŠ™c®ô©ğ4[3øG™Èé2‘\\q->‘•°lPy	9ŒqÆo©@Ã©Yä«¹ËHû)}”úì.™?äşÔx\Z°¦»,dVb“\\&_…8Ç^y³Ê°.\'İïÜÌÓÀ8êÎß>¶nĞP§´„.RÇ@ƒ4üÒšûáÛzğ_µaÃX tãìCašk™¡m>5×ö,õIrY¥¼qú)¶ÿ ƒö’c©í²Z-Í>†ğŒi»p8pÒè\0Ø @ºÛÙû,à‹·ÁX\rxÒÚpåòaòû¦¶ùc]!cÌÊçê2á¾«Æ0¾Tà7à¥¿J„(|nÚıZÊh_ãSd:í«Ø6}åS›°P\\!†}|İ\'p?¬ÃŒ­wFœ(@ƒ€>Ohøç·>jNwp—ĞXãW+ËÛ ˆ|±h8VS6¥9úÁ¹ñ”g_!bš’¯\0\n>cÀ˜ü›°NÃ	ÕgÙşódåÛò6XËålàÿ(€\Z“¿\0¬ü!&¼\r)$•n{¢v¸\'3yÜE|úÕ7MÓş.^ê‚ËÄZ¢^mß«Ê–ku!\\ëÇÙúÁGNòIãZ40¦\0­p— º	ßü·têŸj’ïÛß%t@Í§}}ÆÛi†–OqÍ[œ[2àR¾áö¦â\n1\\[·Ë¾@c©IoHµĞ,@CĞpyÏDœ`„ ‹ÏÕZÂÉ¦µYšÎB\0k\Z¦B¢9¤BZ€†°ø!ûæ&<ËGp)i\n¨3°$ğİĞû@L$Š„°—úşjÙÀºí‚\n(Š\\¸Tğ!=`ƒZ9ôÁÛ`¬D°Ö6æcúiˆ<©ŠM›9ùri]&º@¢bMÍeBÛ…1ƒå‚€Y\0Œ3ÆP\nĞĞÅk1Dÿß´g¤Êu)í•òìÔy:”Å-€­\r#X€…¾÷ÎS,ß×\ZÁ„‡–±VkÕ`x\ZâP\nĞ4³ÅË»h CTØººZÉoæT‡Á«\rhğá+p²S\0&R6…¡ã› xß´wLhJŞ@4Ì÷§2¨0‹ Ñº\0Z—@”Ck¹`¹‡\0ÓY—ÕŠOÉ#7Ë‹íÕ•ånà;§+\'yp7ä\0RúœÓ)Ö\rMõ:—	d\Z\0ÀÀ+¬?±˜QWS%„Lqè³_KÙ×÷¹ñPx\Z®@Y¦ÿ,¤(·%¯à´PŞÌQ¬åÀ¤N/À…1¥=ƒ†ÔE¥Í„jHÅ\'ô=TÑİ\rb’È‹6EêÎ&Éû)q÷k;M,!bÑÔ6\"E-sjÄ4Ú±ï¬ù†åY§g}Q„ÄäÄ”\ZÈp\0òú«+íÇÀğ\0 +{*‰WX<,/x¤È3wÿõ]^ˆœÑeòæ2!€ŒŠäx¿Ô}»šù„F7Ñ¿5ZÌğ{ˆÛDWûåh‹RF~ ~m×Üc3µ¼\\r# ƒŸrÊ¦8Wˆ°ö\Zª_Üçì€…]HĞ‚M¢WÕó4\\$ñ4\rŠÒÇD\rˆÉÃ¤Ï5q«å„\0ê7Izªpµ$ê„0\"ï†¶TV6ÌÜ@ƒÏB8ÅÓÿ¡éû\Z¥ÜÓêú4V˜)ù\n@Q7@ù}ÍÇRà1°V9.ôôY-ØûTy4\ZäîsHgÁ†œ!0s¼ÏPe¨üĞ¶ww™üã2±Î…1\\&|d˜4´?c¤N60®22dÈ3ÇcæDLßWİb«yBeùÔúqXŠ«DWÄ~÷”¢ßöÍDäï£¾x\ZÎ y¸~I¸¡*Âi‹rô5IëÊ\rQ˜}€Œêâò.®EÃòâööj%¼»ÆW¿Ã««u#H²†ÔQÓ†´ÛPJvwª®å9§	<¤3%ïx‚ìÛOÓ¬ ƒ°J]sµ!¼\r±T`c¯Ã¢AIû\\ÁåpØ¬ÄºÁq¥ÈuÒë†(ÇÇ•\"§ËD®wšŠç#åzçRNøZŸ2NRA¢”gûŒ+ß49åns iLŞs(¤>eäWZ‡«ûîı.	ÃX\rÅ(ÿ¿Äì?=DãàïS×÷²Ÿ£“¯ÏoíäŸĞ•>ıoÓ¬pKlâiC‹Ø68kRª	—ø\n¹i|\']t!7f±ñ\'Ü4jÑ\0ÓÕúáŞW\"#ÌHaMVŸU¬šÚ6GÛtLMY.@Ãi*ïSgmõ)d¸\0YÚìz›Íd8„½ÌëÀ6kS?êƒÏÿq¥0ßNôsNc´é@¥íVµ„Ü±ËšÁF™Èç2#Sõ-ÛÄ´ßœÆÇ\\ëš:V\nOC\rOCß@şû	fö±Jgö|‹‡²Ç°·ØÏ•ìE€W+ë¢µÿ}u­(g¯s0€d†şİiî\ZâÑf†8`£hKI®Zø*2©]×éZ4 A„&GÌF!ÁÂ]®ş¯± q«¨«×³Rï‡\04¾í›š®\0\rhHC©ùç*Ä•zO Y+xd,eõøél>û:­+…\ri¹!n-$úaÔ(ìƒ€ğUW\nB`ŞÄ±íZ7tæ.2Àe\"ñfª2Tş®ö»‰ãkŒwÎ!ÇÖ{¨±æûœT9Eó[†¾.kÁĞ_ù}Õ»R®X1°l³çp©ûz™Œ_É5×wŠŠqWÏÓp-û\rA:.În//äûâ\\¾/ìuÉu™ı\nQ˜s,t>VK!¹Z]ÀÏ°İb5cpC”EY|\nĞ`ìÔñ1U‚Ë\\›J)§ &V)ù¦£èÙ6¼b¢?¦p0@ÒGÛaõ÷‚‰0±‘ˆâ&Á‡=P- Š|øğ¡ù]ÁÀ‰›ÌÛ@_tó2\\\nÈ ÊÀ²İšûÈ$ôC>öqóHİÏsåO9	ÏÑV¥»7¤ög*`Ô·üïû~!:K—Ì×7OÃPŠkŸ{ß•p×(Oûkô#@ÕÃ°¼#Â\r–}Ö§Ï²‡ê¯6îÅ¼cĞ@X)kºa/„.„ø”çÁ„’kñX„Ìç÷·—çäztPx€!“¶ï…æ`Ñp±\Z8¥ağZsÇ»ğ–6˜\nVu‹ÉPuíZÈ†¼ï»P7¥+@CÿŠøãaŒg¡°\0±c\0¢ù‚ù8\ZšÚŞsch¸øØ5\Z…Z\0âjhöÌ+ü\r7‘·¡k,úºL`ñp]&ºÚ°ÜnÍO‘ñ\nĞPã:ax\ZĞ¹ú±°aû){°r–\'O¹ñ+!ç×C^=Æâ}gÎ@ÃÆrôĞ.Ÿ›§!hÈ10­À¶¢kaš.Ğ`2‚Uõƒ€¥HšNW±*@C¸õK\Z\nĞ\nN¡s8¡ó”ÚšÈ\rv“Ÿ—Pf-úÔJ=BB`øŠìI–\r*ğ!Z\0pÂF¥Èeö\nc—	8ºxànX/dk».™l*÷SÓS#S{‡T¹6å}RŸs\\ç”UcO}öª¡NÈ}ê’”Føøàª‡î¥‡¼p5¨¿³O]‰Å]Ò³F–úë³Ñ\0 CĞ@8ï°c Á\nk¬:Ü-¦	4œoW—Öu‹80E°ÒSåià¾ú©2ÈUQ\ZbQLUÊrçïêë®û9ïÜïVÊ›’\"È”¼é sxn¦Îdà!·ğ3ÈÀ¼`oãHàÂÊOO˜„XPK~#‚ôájP°Ş†›nİ`H¸ƒ\\&òœìÏÅe¢Ëå¤¬ÕékuLækcK`]2hÈı\\2!–t¹÷†}y”İgùC(å—ÇDì-ì5´¿Z5ğÆ‡µf˜wô‰\\V(ö›€\næ@â~¸h` ã™à1`GĞ/ÜŠøÎ<¶\ZÚ.&¶ï„í*Kï‡,Õ´Ôeµä¤A|&å$áŠ4”ÍI\r~@ iQ€ø)+w\ZÂ­Üö÷¾cÀ\']ÈØó©[I3>+Ä”|é‚«*1*ŒÎ¡M{WÁ9Z2<Ô¬¼\n,X†­±nà4IÍYùM­Ôâ^‡Íê|®1ÀİoÆ›].Wkq=yó!‰,.ékÓØıíû|•5§jÍ‘\"[ë»ù¶E]º@Gê;è{ä’÷àièè#±±¼\\		1m­Vì/J‰ÌÁ¾s !w=átè\r¸\0X±ı\n>¹Ö\nBk `ãªÉ=¢kìÆXÙ\r¹ü…$¶÷å#o¡ëÅ¹²Èø(šÕ4ªx®–Ä¢ Áÿƒ6¤ëÄ•äş©.ö¾–-)Ïˆ}¦ÏØ,iÆèƒ!¦äMè«ssªÂ²ösÂû[-´\rã°ês€å6Ò]t#,Öâ.\0_ƒ!–”ï!])ÜÑ1Çær!á)@¸Z?’8_Ö÷Ü\' Ü´Ÿ‰ô‘«r(XC”1fß¹èxl: ›¢eXªUAjßæ”ÿRÆ²¯¼ê#¢öÊÓ`B&ÎH?ªï£@›=«9úÇ>Ãïør±jyÖïÈĞ-Äğ&î\\ °ˆA×ÆÁg¼ù¤±VacÆh°&á¨«áhhˆÕéó¢ui†Xd¬EÃ#ˆdó—(\Z–nşÆzÁ¬\'5Má-û®ëİRŞÙwáNyF\Z¦ÄÎŸ|C\nŠåYEµi^òûÔfc¶nH²BO\rÂ6ŞĞÚ\'½u—Ö’¡kœB`Ú8çì•®uƒ×cÚºEÛ*Ó–·a¨˜u@ØĞcÓ(¸L¬Z(A„b>W›Çl¸ZÛß¨2Æ*@MUS”²¼S\\/ºÆ¿ïı.`¡N>ñ-{Èt)2X*Ğ2–úN›S9AöÙ/Hcï[öPé®V€Ó–3OC[òÿªLˆ>v%¤ÅCÕ«¯ç¸}f\\ ,:v8Ï*ÔÉÕ\0>ò‘uÏ€óáö6\0h8ÙÙ€1ûóğñQ4MÊç³èèÂ±Z>”xá–5p¤Ôá	ŸS¸\ZğSåS€†ƒòšÒ?h8} d®Ç¦Rà*Ï²@ƒï¼ŸB{@†ñAƒP!á¢¦)´cµ´+&ØÙ#«n.Ø`öMb¯/ö`Cß®]ûÿPmºRGÈ±V Np=á’iÀqE¹2aD·×dŒÔúùÎÑ®v\Zâ~ê»N%¿ëÓş©Jy_íó.î¸I÷¦˜ÅÊ)Õ|½ñ4ˆ>—Ëç?t¿Ê^, zÄ•b³ÂB¹p“¨^!ÌşìÀÓı”ç£ƒ/=i#;J@…ˆØñi\0ñKS?³®1?Ğ ¹Â{™Êd4åuˆÙ÷@ƒ`„«e4u?\ZÆKsy†tÈ‰¦ÆÆj¾”\rh aŠî\'¹úâ¦–Ó—pUÊ­7³YgÇœÈî*:îm„	ûáT¾º_º{éFN©6Š+E¼\r>ÊÉ\'éKy××_—	\0b8¬P²i2êdÚ+´ªéSöåùšvìõ!¦¯€ËÇOïûI†Sm±ßk*ãÙWfõ‘Å|O½XÀQí©øü¬ö¼Şq@Å¿ßúÔp+d> ÷uiV6‹\nÃıĞP?o a!ì¹&>G±/Ø”/uëÊ¯Ï5§9uSFcÎ¸ó™Ä¢.Òòiªkß‹aJÛ2XØ}.üI}Ÿ•òÎ¾‹vÊ3êúß÷İJºyX\\Ä‹%Oœê£À¹sne®©/g2ÈŞ<—qºÓU>(ÑÖ”ÕºTÔ}®”·Áœä÷ÓwÏĞt}´³9!º¡ç2AÛ¨Ÿ1m¤²…F°¢­\0#8ÈH©O—Ì3•ûs8@3îrªg}ëQÄ´Ypú*t]lëƒ”Óÿ”qÓ–7õıRûÚw>÷=¶}eVÙ±íÙKÑ-àÂL¬ªÀ‚_$Ÿ1”;ÍP«\n€TÙ¿ºÊ?c1Tâ2.!Ø)›Æ,cgyÀoù€~$×•º¸u-:î¢#ôÆ\ZÄ¤‘üœ@°ñãƒÊ	Ÿ1,\ZR86Ã• ï¶Ÿ»/6Sß>LÙ\0|ß)åhÈ7}ÇÄĞéú®J¹Ç`Dh˜¼2Ä¹jw	ñ—œÛø³¼\rF]6„†q•hD¡6¼\rëü¼\r]û~İıTE¨®¯Vb%¹‚\0R¬$‘\\—	m@~ÇUSe‹”~£1m•+Ïj·í-¸€à-àBÃI1fÎš\'§œ’2úÊ›ò~©ó+×˜ËQNNËâ`†.Ì\0\\°À‚åW@iŸ.°*«Ÿ5#b4‚EcY$¹¼Ğ3³•Õç‡\Z°dPÒª­!€T€új|ğ& !Ç\"ÖT†¯R^kHøÒ©›Ï8HyF\Z\nĞĞ—àuÓÊ™‡c´\nfÍ¹öµ!ËA¡™#È ılyv&Ä*Ğ’@\\+ªÀ` „Z6¤ò6¤È9±¥¼—q™Ø=òŞğ2\0*phá~°n ıø¤Î—˜9Ú§ÜÒ&Ï¤¾kù]pÁÇY)7Ğª”÷Ñ.”™:¶R€¥”yİÇøö‘[}Òxñ4ìô5Ÿñ8ä^U¥º³,XâæÜ>ciŒ4-@ÃX0¤™ˆ t!\nªO£ô±@TÍz÷®—÷Lè)=U`ó‡R…:Âª4Y4ô½&\r\"ü…°Ğ†ôcÊæãûN)Ï¨¡œh´Ï.iú:ú¬J¹İ&ÚÖè1Úoî Ãr†–Õ~l\00Ğp–„·$ÌeÓg³Z\nQdŞ†\\{EÊØİ»L,˜Wvy”8YÂ’gêe-%SÛ·¼”«ü©)ÒX|\ZYX@ƒPbtå%£ßNµ}tLæx¿”ñkn§¾‡¯Üê#ûùğ4„ÈîEùÏwpŞ~X¯äˆ\0âf™›Ğgì¤¦©˜7 ·=Çh0>gùâ­RVêË»ùS„®üG®âK	/‚€r2T¿Û\\\'¦4Ğ¦Ml¢u“	—ß~LYü}ì”g ¡Eßw¬ô•.Ex)y»¹\ZBçßXŠÄüA†ÇIŠæÔÆ2!,l€\0\"ÈfW\n\rÏÛĞµß‡ÜOiË•0¥[—	øExÛÛŞ¶ˆÒÁ~åkX	Ğ’ò<ò—‰îuìØ-âÜ2¨G€U™	÷\níƒ1Vx\ZÂú,tÊÕÕr|åVyÇ‡§¡\0\rC€mÏØñ±Wˆùîx\\n®¶w?ñõ}Eö)şÏï>ãVÓx\0\rÂÙ §\'Á>B-.tBH%»Òö½°è‚¡\'„šÒ’2QG\Z5«ä~]½\'4˜ò~¶\0\r§¯œwÍ½9İOÒKşf/TXd¸Èº—ù®•9ÒÁ§oÒ)Ã•€êJAhKB\\6,oÃ¦ÂÛà•\"‡¼:~—KqÛ¹èUK¹ÖÍ«r@¡‡¸fbÅ@_s¡©}ŸãİCçzlúÔwÍÉu.pÁ÷}¸OĞ¶±ïÙg¾”q–:·bÇ[ùrZÆvê`Æê¼D’È±×ú•qzÀ‚+Ï+¨pö+ŸÙn®6FŸEßåÿ.øà£t\rğ4°ğvrOå”d÷©œoš”EÍgq9\Z.àgXšú«P€@À©¿Û°—\"	òSWŸç¥¤IEQü&Ù=C\":Dù¾SÎqsƒğm£’®_à¦OÁê&—\n*;t›aúÜ¸ÉéòQŒmâpcÊo¢-ù¯}¦3„Í\'\n2è8¨çmhJ±e}³:¸R„ğ6¤î±)~ä¼ïJ\\0‰^7ÃÕú¾€,«½•$\rúá9D¡PWÌ”9“òÎCæMU4SÚÈôMO¼-6ú„rÉ*c·US[§¾_Êü\nİúÛ¹äºE§ûº€iÆßËúÜ\'û-Û	åˆÅ‚Èst…ğTxüú°\0À\0ĞÀïÜ÷-ËhYCĞ®ÎÆÏÍ·‚>éRµ®…Æ\ZÌ)„€	ü¦\\	dŸSX´%„WS½»•zßW)oª_H?O\rhHm;7¿Ï¸+iúr·oª\0Zò_·h5Åd¨_ÛDÉ“õÚúÁD|ù`rQ#ÌâÆD]\ZGH³ Ãù$O.sÏ‰k¼\rKx\0ïë?Ü[K\Zµ†ÀëŸz…]wğ)¿)ÍJ\0¬rÄÎ=Â}3%‚tù\ZÌ¸”ñ™òÌ©)_M{õXëÃ‘»DÀaKØš@D·¦sÉ*S\Zr¼_Êxï[\'ğ}¿TyÜ•Pl»,ŠûDÎ=Úv–ı¡sË­c”Ãbm­ôÂ]Âı?÷}ëÖ	4`®Ia!\nhûâk[ß\nú¤ë{Q9\Z•X@ xòÉ\'Í·nÔU„&´ÇwŠM—º°…X®ÀçàÓ?¤Ié#ßwŠm³>}ë|Û§¤ë´H\\JŞz·‰˜y=t[b‘W»í@6Õ=h¼Sèğ\'’ßÜ¿ZÉéù@ÃMÜqX°çm«¬š>Wåm\n6¤*v{—‰»ãË\\wŞ»½õìeĞõÌ{ÿhû¹Ïùñ6ÄÌÓ\\ûih9C¯Õç!Ÿv)t±kºOä~RÇc_mú~©ï5•ñî+»úÈæÀ×„OmV¦Ğ4Ü\\`¡:ş\\·	\\pÿqŸğ\0\Zä4EPœ®î¿ğZdÈgbù¦é{QqŠJN\"4®õO<aHœ\\BÈGlTŠºúUWß¶«¦\ZŒ) \'Â—òŞ>‹uêÆæ\nC<Ï½¸Û%_ÿ\0‚o÷%TİÔrcæôĞm…%@H%ï€¢§!‰Y·!ß£|¸OD!B/úïq)ÂÎ!ïM\\WŠ}8Kác€—ÁF_¨ÿÀë\0¿CLLe8Uù1fù‹ûÛõåÁš2ßñ®_\\@°¡kNÅÌSŸöÈ&Gûvµ…Ïı¼òîñZ`xVDfÊé>‘âfàÓ±iRÆ]êXÈ=6SÊËé†Û)Ÿ†€}Z€æ£X0áÎo¸=õ_™s®éØaÕmbÿ­Ö\r;w\n~oÒs«ïİ	4Ğ	ø¶††óiÊçƒøšæì€”Íw¡¾œF\04 ìÒ’¯êK½Æ\0\ZR•âÎ…ÌAS5d“O_¦ôÑĞ@C±p˜8à3¶|ÓÄ\nL%ßukæHÈœNcú€}¦Í“p„@Ökµh¨®ç\0Êïÿû;Å@ƒD±yïSÊsäJAtiú¢Ñ•B,!ˆ\\¡®|û’D¶iµZLiÛ¥¸L,M”	ë\n¢®9·ıØhø‹7·‹×¾İø~ÜûÍŞp€‰[Çˆ¯|3vºí›Ò7Õ¼!rPØº€EïÃ¬@Ãk«O[‡ìuãÏçMir<å˜¾2JW:ˆô»,Æséjaã:¸Şç3Ñ=]`ù \0×eıªÛ„q¡pÀ×¥‚¿}Â]ú\rr*D\'åV9½˜)Ğ db\"(ğAøT’¦«õ#Ã}µ>AMŸºøú,z]‹UÛı\r6¤/}êİ–¦ëúÜX|€®ú•ûãƒ)‚KÉÏÏ0† lA†ÌB\0©J«\rH EQåÃš‚µ\ná§å¹NXáâÆƒ®eƒsmB`¶ñ6±¢(õ¹yRÖ\0sJ‘´È|8¤À\në×BAA†Ç/~uû¼\\|»›q)`ƒ›§MÙ\ZBŞHİÛ5JûæÎÛ¯ûÄíÁÓcì¥ôkççÛ9åG@ª.·â>aA,È^j,î™î,tËáGn;ÒGø®#‰ìÒo<€†ÛÆ¤¤kpû\na!§à]•×û9ƒ®2¬EÃ…!qR!0Á|Şbu×Aê§)êÄ‹Ÿo»Õ¥\ZlD’®çå\0†xFÓÈ¹Qt½G¹ß½Æ¶QŠĞrÓó2‡İËm¶5mŒ“Jö+oW?!Øâ³çhØpïUˆuÜZ3CY@†æªÊÛ€k„!]n	‰«‹µ~çm¨šµç\0ÊV‹R=×JÆó	×K4àşùÇ×Û[Ï}¼ö:ÿkÍá4!ktÉM>÷s´oîõ¹_÷	ëœC.R+œÜïŸ£<Ÿ¾oK“:.¦2şsÊğ4t	]÷}uµ¹¥+ÀBÙ ş.µXPğoµxĞ4Mº®+§w\r„ñ0ä8yLc”\\2VY¨æËµXw-ŠhßË;û	|wíç¹,ÒÃI…šãÎÓu¢ãğÈu7? Å¶íòiÿ¶1Óç8È¹Qä\Z÷¥œğE5‡ğ4å2\\  n>uÍÁ¦ûu®DÕv¨3;d´*@ƒQôdà¤YMÛùí\n“üL{`S9ê¦8å16vİB`îx\0š>€€±¼\r©Êí…Ü`¹lK8ôBé*ĞĞ2èï>@C×~:•û9Ú·¯1rè¶6Xğ* •Ò\'…§¡Ş½/¥Msæ–§ëó<èaã:èûÌ:`¡ÈÅárq]›±?é¥÷]+ıºûmmß	4`r²ÈxšÑgĞô©`êB£‹ÄJÂh­ğ±†FH@ å£§ü†€:–ECê‚¶ì27>¶Ãø6ÚúªK	ê\Z}ƒ\\@CìÆÕÕ6Cİïêƒ©ßïK õ-·jˆW±ùš”ƒ:ß¶É‘³Ò µ¬hà´Ù½p“3@r@ÃÜA†!OV¯ó6à¶¸³.¬A6ánÃÛ:.ÍÉø¥ıKkÍÀAV”‹eƒ‰8áD›0 Bƒ5ƒ/Ğ\ZI#vÈ‘oª\n2ıÓ«û„iç\Zè‹Ô±ÚGş«‚ T1š«Œ\\òQ7On]\\- €¸$åïiŸ¼,træjóRN\Z€Ñ\r4ˆ5Œœ¹„,ªœ–kh+çh¸ a%ƒµ`À¼pK+ÚOÓ;¦,¼>ïš4-PaD|êß”¦kÌ¤”İ•7ĞĞwßw½GÊı\\mĞÕ}Şï¤úæÜïM`H[[êûvµwÎû(qÂ‘]Ë»>Wëe¶=°º—.?-.hÓT|úÈ#9”Ÿg¢À»¼\r@(4}lL$Œ{#ˆ¯ÈaeÿïóZ	ç‡9œÀµR¢U!3Àí¤Qª8°È\r4Ìe½j¬ÄöoßîÔ+eOcŞ…¶e±úL7}ççè£œòSV†¨\0@o/\0\nÑ÷øÎ¨÷ÅèÔÅr,ˆû¾vû¸i÷)?]6‡ÕÕû‡ùâĞuíz^Ğ°ù¤|¶›ÏÌhØ›,ÙĞTL1-˜  ß:0Örº2ĞĞÕá]÷Ã@%ÆÇCoà(eÁîªwJÙ]ysmSÙôºŞ·I¹ìêƒ¾ï à2›`\Z34ÏÔ„xA÷*á_…Ğò0ìşæÿzÉ\Z#(ùä9%aŒñqÄÛ ¡-	qÙü±¼\rq¹P°°Â7*E¨Â§“q™X\n¯S…ÇÉµ€¬\r] —±zp¬ Üz¥Ìë!óNm\riêÛ>İ\'–â>‘Ësªí™:¦Rßk*2W.Ëò4´[,Ô[öYK(Ü²ÖL¨?H¶L´d¸éÀBU~fW@Z¿9Ølè[ÖÎ]~+Ğ`CQDÉGhòICY9_¢ï…Ä] VK1Íİ:Ş’Î×ÈX3à{ÉÆ1–ECÅ,hÀ­¦ ÁÇJ#uCkËŸ£]ó}Õ9´Auî«™o—ûGŸïVÊ0R…¿P…­-=\']B—Ï¾4Fš¹ƒm&úC‘#Ş!ì)aª7+¢?XË†X9äÔeb½° ƒ{]­î­hàyrAƒ¯¼uµ…ğñÍ·~x\roàŞ_~ê-s¯hÈ¥´±NÙeÂ]oúuŸ¸“Õ}bªm\Z:T _ê;…>»Ïô>r¬¯nÔ\r€Y«_P¡nÿëh(ÀB»;‚\rÊçÃA6:\'.wüírH‘V-ÜßÕŸûJäÈoîïMÀ¶ëşOÙn¾º2ÔÚ¢j‰a¢T´	X\Z!¢{Pû“€à_ä;™šÒU•“>‡# .Ì‰‚øVò\\>p6ğ!æ:`ƒvj]ıûT6s(ÄprøİÄ„~àİŸ±ıä³@Ç–í“/G» ¡~Qõiÿ’&è»½†T\"ÈĞ¯i,èãÃÀ8IU|ëwÄÛp%nâ&±w—¦÷\\Ş\0‡œ`ÃJB§â2Qôÿ6J••\\Ğà¥—ÿq{ç}Ÿİò]ı¼ôò7åŞgÌ½: ¡OÙ\"÷šâÛ¯c§Â}\"g¿İ^uÏ÷y?úX/|Ÿ{|7•—ªûhş…—•y¢Ë»ºQ$Z*X}ÂZS»BˆÅ—À•«¾\r\\ AÁ,ç\Zøp¸íZ<( x­¿ëA8ÿ×º+\\A|4Ì²¦ç>—oíÀÇ»\Zëş®y]’c·^ğ]µ\r„c¡Í	4pb:°†ZxÎ1Ğ Ñ7–\Zi‚nøêâFqµ±±±µcÚ€†>ëC!%ş$½oÆ¾ûĞ@ƒ‹¨WÇ€ï»\r2Å¶­o¾c«®M|Ÿ_ÒMl˜Ğ\0 Z,Æ!|@¯C‚\r(9G¼\rbµ°YYe¾îcyC`æàmXŠÅÄRÂ`_­îíä‘°b¨X6à†¹wÌP×‰Í~|\rh˜’2Õe8Ee¸­NXù¾øÔX‹áÇÙÜá¦°.û\r®ŒÕ÷x˜ÊÜÈ)Cõiiãõø=¶\n,<—,„èªğWİ\'Œæ)V(ö\n@ Ì0°7“^-TùW ˆZü­€ù¸`|d¸@ƒZ>hDE€À	\0MG>>ü¦í.°aêß¶€j„¾s-´ˆ!=¶rr4à¿GÃuÒ)6W:š& ¡oÓÆYèÒŸ±ÊâĞ@õdÜ¹ı•:f‹EC±hˆÿSË7¶@XkO\Z²œ¹»K „\nîCƒ\r×xLh#ü„×a#ü¹\\)V—¢l®ì©“\n|èxÅ€†¯Ax\0#ÖÂá\rÏıök&å«o|÷Zô‰×Şø¹÷î}á(ÏÔÖ‡¦ú=RXØ‘}û[kXËrÉ…c¯ËMí­‡5ºnôaµĞÖ×¡ëU_ó)‡|®r¨OC}mí­ûY`ÁDO’jôˆ,¤Yk¨\"8@¿3.«‘QúŸzê©½?V€U×Ôİ¿\n4`¥P\ZˆÄ¥V< ßTÇU@ú¹\0¿£óœN A‰WÙ8\ZÂLí›”»!]V+a7¦˜–¡œÔxë®Ù	î|ê˜Asm(myªBìÃhë.`!*±øĞ@ƒÏóbÚyÈqÛÖ}­º6ë{Nän‡RµòJâSò\Z™2ŒÖş±kØĞJæ1oƒu¥À‚¡éCÄ\n\"W¤†ÀÄeb½°Vzz„|@l=}ºZ&[@#¨ç­g_Ü?ÿÁWŒkÄ{>üÅk@Ãı}ŞÜ{æƒ¯:@Ã‹ÁÀÏ˜kXÊÜ\"/\nkŒ=\\ë`P\n;¼«ëÃ1×å!ú&öc÷ê³sÊ–9-Í›@‰}Škî.°pg,ØºråiUÜÑ%•“A÷Ú˜}+şf¨\r¬	Êí@\Zuğ\Z”Ópk	€ÀÀ·\\£ï.E?†‹aç¢Á·Z-L´Z4ØØŞİ§şÈYX8Ä)\rz2¡±¯iH\ZœÎão%´ Äºv²õ­Tå@L‰\"²Á.\\ab|Ÿ…+¶ìº|97·î±BzÎw‹-+ÇØ*@ÃtÜbÇNaò«×öts=4ä°ö’°Èr\"¸¿Ä’\rë\'s‚‡É°¹äÄœ‚pÉ	ïş\"¤Uİ…	sÿÂ¿ÿ~æo&m,D©Œ–sæS ´ÌÔõk°¢GcI\0o!0[yD ´š\'Ä•bï2!œM‡*l©pˆ¼Àß|®6¤±ãáŞƒ?:²Pp-ºş~×sÊfzŸ²&tåƒÌz–ïPÍom°<hçÙÀ¢¡­B×±Ò§®]]ã;ä¾<ë“†½³½ê¸L(Xöè[²,<4º¡O=ozš—_ş‡í3ï\r_ãßıÁìÁ°Ñ=ÙSPøÏj¥  @ƒî;ªÃFS\0p ß(»Î¢AõUÒ\0Pğ\\¡îìcìi€ä„ÀºBÒq™ÈŒmÕ~âWï§s¼ØªOZêÀrÑP‹Æ£Cè,õ…¹Ú,E`XšÆæ6*k³¶f.c¸|äPQB„ùrÏØ~ó/!}WÚ4\\WˆsŒ­4œĞpy.§¶&D–†Æª~[ò§u¤ÉOğï£4™\0ÈPåVQşºÖLŸû!ÏË©(oƒ‰0±7	áPhú\\É©L•·ü>õY‰%ÃzùÀĞ…œÀ?XWPÔe^PîRNƒbÑwİÿ½íG>òÑÉ\rcõ»OŸ¹iì¡Z¾k¾k	\0¬ÏüñI3—¶í›Ôô±²§O›‡¤É)G…º9ûGÒ±·º)à_€…x+…gŞû‡Ñ@òÛßñfÿàPnö”~tO~gÑ{ê‚Ïßº±ÿ³çği]ëµÀ×=‹2õ¹úÏP œß÷\0¤ÕCwÙù¸ù©g;Ğ\0Ú*(o.X‹Ş¦‚¹h¸@eÌ@v`\'WW6äˆ1m?Ï¹\r¡ı?–ËQà»0çh(@CˆğpãÒ^£&êñ”ÿ¡ê?¡Í%ªKˆÏ1¾ÇV€\\Ş†+áE°`‚uƒ¬ûŞ%|yVKë¡®•È	Èz¢£Ï@xÃ\n’÷»Ú¾é~!gşK-#ö=‡Î7„9zuí1§Ä\"[¦¶±Z›\rİfsx^Nù0¥Ÿ|åY™:ß!p…¸ñ\\¸I°XpÜ§%M;áºÆıÎÅ›ÛÅkßnÜw¸÷›/¼á\0Ûóü(ï‚¶·ºS¨µ½^Ò\r?©¡)5\\e5Ÿ‚úûşşZBZî¢3­.åàre9Hß,]’ã&z’=tÒc…øØş¦—P¶	\\ÆÔ5Ğ”Ş\'\\fêÀrÑĞ…a-®~S’N\'Ô„…ûøÂç0W‹†ååy°„Õ‹oÆô›ïÂSvÓ†áû>¡érÖ1e³‹ÉëÛ¡m’KÀŠy§’\'ÒÂâB6›™º00ğœ©€>ëN‘[ê<dĞw«åmpöõªôçËÛ€ËÄêBwá*)GùÔäTËve…Í§OSû-Gş©ô½o[‡FİÊ±è\\>[{ûöKW:YšŞJrFÎƒ¬¢~k­`]+£èxÅ\r\"Şb¡KæuİßdxüâW·ÏËÅ·û7ûiÜ<]åçºÏXŠEûÙE	ÏLd$ 4…iöı½hØùÙæ*1ÅÉÑ(9dßMT,OY„kˆœ°bàdÌBÄ¢ÌQTÀ¨{Ï¾ëCÄ_0Ä‚E	C}ú5æı}ß)¦ìº1àû<Ÿ÷­¦ÉUGß±«éxnÌU}NÌ;ûä	}Ÿ’> S·,mW€†N‹©€!\'ßuÂ|êx™šâÃ>îò6@\0	 ĞôKÁIZŞ®*oÃjñ@ÒH4	ù`RªáÂø?+y–X4¤Z3èZÚ7}çŸZßw)«ÆeD÷‰\\òÁMàip…ºv«ëë\\í›cŞøÈE>i8èk»TØq+àæl£A4»wû<³¤	%ªá‹Ï?.îÏ}¼ö:ÿ›ëÁ³‡hDÚŞè›ì\'ì1\\JÛ†SË¢ëT€…«•?¸°2¸Ú@‡ Á7bÕµ¥\r—Û0n¾*uaà¹(t†6¦‰‹m{zÁ\0À\'†>c\0\r¼gjÛ†šc ÁÑi3_ÎP¾°èwêx\"ÿ”€ÔµBó#è¨	\ZD®r\'QÎ…˜•‹†Æ}q* ƒ\nÛ!§yM`CÌ²¢YåmÀU¢ùcy6âr¡`ùL @Åë/Ü’ÎPöæ0B- Ñâ0¢,Ö>>Jo—²Ó\'C®sUxÇrŸÈÙ7±ãkªùTŞ÷ÙšÖ©Ì—œ‡YÇ<\rU9™..É:Qª\\\Zš@ıı¡Î¢AI5Â„ZÓ×E8¬«³Ù¯4_^\n° xì[ëK‰®#„[öµN¨¦;üH¸dÿ“°ÍMW#Ğ`‰Ï\r+x. !D)õéÜœs[Y\n4Ğ1Õ†¼Zã¯r —Rß˜ù\raQFBú4f¡÷]”cÊÚ¢¡\nä4¡ó™/SM“«ï†Zº£\0ƒô¨\\W¾ÙÜ a]€†Ú}qj ƒ*¾c+\'À”A}GË±´‹0!{xo$’UŞ\\&6¦R?¸T*yVpÁz£ĞÕ­“S^;cŞq\nyÆqŸ¸-{Y\0é9Ì½®~VpÔX¨®mMïï»öÎW¦õ‘×Œ¹ûQ$ˆt<Ÿç–4şŒ¹=PVàÿ«µû@óÇá—û°”pk-­EÄÕJ®õ1B~c×Ë¤Ù<Ş>x@ºˆ\0–&4³€>°k–”Íÿİü¤Ï{-@ƒ%nì6Íñ·xQJ}rß‚–o±¨\Zö+Aé0ÃÑ°š¯E.\"ÌË!}\Z#ù.Ê1e\r4øŒé›˜&Wß\rµ´=‡h3½¤Å\\ZcO¡Éu\0h0\'ü×ş›vª ƒ\nõ]óÌGøï*ƒ±5\'Eçˆ·˜\",mÚxväX6\\¦\\i‚k© <¬X:â^©lİ9AÇ>}’<çÜ®æÔÿucŞuŸ0ü	ÆŸĞº}®wbA,&Ì©}©ù»æòÔî§\0uc»Îš&Ä²«ïùR™üõ¹ËÄ¹dKö¾±¢gOáP÷ıK+	±7²aeqaCc\"‡ò\r\0 ã¹\0™1c™p~nÿ†àÑ¦•Ì;kÀ	¬öØ7yÆ…¤¥.÷ïË÷ø¡ùoêè†@@ƒñë‘E6×Bè3¸ú^(_„. X\në4§$MuOİDºŞ7×âK:Ä&æıĞpúrÌ¸èšcİG€SW*=ÑdáçYäÇªWÖç ¡²\'Š’ ¾²SŞ»Lï]EÕ·î].‹sT2ëyÚB`®`xd]&Ä‚ù®ñÍùAÌWr2rÊ£–¾íì¦óY}Òd]\Z€ê1W—	·Í\rI¸\r#(ó{Nâëò´õ£\Zô´àBn`¡nlWç\ZrùTæ‰Jûè9%Í¼eà*ĞĞâ£w°ŒkàhĞ}ğ@ù/…3k-’˜S€—\n\n$\ná+¸†ìo7`Ÿp€„«(4­uÕ¸k,°nĞP–üÅ‚\r=4÷¨ƒî{È¾Æu°	DP2+Ğ èpÎI3Ä¢q\0\Z.g“\n>.§4øƒKh˜÷\"˜s>Æ–5Ä<BÈÖg¨ë„’¾©E‚ÏõèóYÅ¢AO7ç2ÔY6Ä\0M`ChYn91\nxî<G¼\rªÚò6Ô‡À\\]JÿãÛj¸š,çhœä()´Jü?¦¾!kcHÚ>×†˜÷œzPîªîÃ9˜ÿEf”Ëô-Ìøhë—,ø“×­ES\Z|Ğbeª’o:r¹4|å­«-„o¾õÃkx÷şòSo™{m\r\0\Z%…_­puÀº}h%†Ö\"áÑ[qmÀZO÷¨;ÏşÖÑsÜg6ıı®û¿·\ZŒ\\+V}h¸¿·„\0¡NX[ğ; E#Ğ &ñ1áSšYPâœ`ˆU†•>u\røk†EC\ZrÓRVû¢?Ä<îS°®+[c\Z£tpŸÿ]‡>ŸW€€†ùætV”\ZUZR<wŞ¦€S:¯çm°Là{Ğ@N\\YÀr;@ÿU9sÚ#s^İ*bÚ9f]ŒÉ“k1m2fôC7\r+¸ !E¨¾kŞ¯sT-kÇ|÷Ğga±ĞÊÔY4ä\Zë©å a:@@ßò¹«´¿ôò?nï¼ï³[¾«Ÿ—^ş¦ÜûŒ¹çæ±!\'…ÀñÒº:\0*\\œ?Ü>şÿXÈ‘3QøqsPòa\"%qK,ø n†˜øÖÏƒZ§\'Ş. …¬]\0\rÄŠÁ\Z,áñB\\5¬Uë@«ëD?@Ã½Ù\r:½€†KÙHFrÈ¹p…€KÅ¢áæ,˜}-Èc\nÇ©CÈ€ÃâÏ·Z6ôñ¬±ÊÄw¹ûÔ®OŸæ±Ë\'È Â·Ó†*Õô1€EEÄ”À†k¼\râ¿ºnûÙËE—¥W÷ƒ0‡Æ‰ÎıĞvNYSòÆ®\'Sê¿Ğ¶öMÏAYøš·p¸¬ªÏŸ#° Ö.8;–rå«ºğ ¿†\"¯ö%Ç6•ê:±ùÁ@€õ¥„0ÅzNØ[¸/qW¸Zß7(ùì9ğá>Á¾„ƒşNtÜ\"LŞg?ºÆï\\¼¹]¼öíFîıæoêôÌGÄõbi.êÿ×BˆIİºñÿ««•BZ,\Z,GC1`×\"Œ‰XÎNî{Cu•w:²Í¢a#®«\Z,ñ›j÷U€†²p§Îé¾çq.ÁÅ§.N2YÜYğUğ:)2HX£„î±Á\\Ïd¸e\nï«Ôœjº6‡))«.o!-‰6AÔ‰õâ¡|ÃÈ-+DÓ°–ZYnÄ	%ˆ%€Ì±æ(Ãg½sÓœê˜Õ÷\"T %i‹Æâÿ\\g¹p\nmEßO	XèâiP9eŒ¹Ñ4—Re§’úò·4<÷Û¯…şÕ7¾»­†¹|íï™{ïşR9\r®»>\\îu|‹!\'7	Ò~×{nù\n2<~ñ«ÛçåâÛı›:‘æ0yE~õ¿šØv…§óäJÌ96BŒ´´¶háLİœ£ïã\ZĞ 1G›8\Z,Ğ äAÎŒA™Ó¢°¦˜öy]}\ZÓ_¾ïSv¨ å[—œcü&”5Dß…öulz”\n.L¨İÁ’ßcËZ¾›4@W@†E©‹HR—˜²ûÊƒ…¢\nT!Óâ0A­ôˆzC‚…o*äZ°acæ|Hİr­…C*€§î2áö_“µ§‚„ƒéó¹¤u…\\ã´Ï}­:.§4yrú AùûÖ³/î•ôŸÿà+Æ5â=şâ5 áş‡>oî=óÁW¥ş¯\ZuÎ&]´í÷«•µ¨ZYœ|}­>\n„À)Á§ Á0îŠÂÙŒà_Óšª/\"ÿßˆ/Ià@9,À9:n¨ãhx´]·\rÒy«E;ĞĞ÷¢š³mû(+fsò]ŒcÊíßºôÑv§\\æ}Ú×)é•R™æù>™ˆ;¶ù›	4!V)òtÎMMqUWŠÕ¥œêK>\0\n˜®$Ø°b6J…š­òw(È²æÔål˜Z_ÅOß|\0	*ßjèK\\*N\\p¹\\æ¸G7\r¹çYLy:7OY®+ïf”ŸÿÅßæCx÷¿{.hà÷,ò—âÂÅxjÈÍkÒ6X4Ø˜¾X Xóùë&§WÂÈŒğŒ/~\Z|óÿ«•ŸÕ¤7‹²XHä|}/~×†ÛÍ\r4S»É¢¡oß°9(Á1ıåû^1e‡n¾uÉ9Æ)!†‹ùx¸Ôâäa­6ó•K\0B{‰ğcBtñ-sO¯Ó5l×6>xóEy¹ß¥®¼!ú.´¯Kúv†ï4ìæ’¯BRÒ}aª2Ll€]{-	úQÙÇk‰›”~\0`ıæ3r¯…}ƒ\r§Ê2¤ŸÌ^,®¥f_]œGõqÈó†L;6c{®;>Uöè[oıt~!W•gŒc1k	åàYûWÿìÖöÙû¿6\02\\}şÁ@ƒ,‚+<ö¯DRºº²zÓ\ZÄ¦ÉëĞ{.>l®˜^mÖ\'\n4ˆ !¨P£ë@ÃRÂ5¸Nô½¸¥‡,f1B”ï{Å”³±…¼o´X­Z93,û}?JÌ}À‰ïĞUÆP}Óß%O=àp“€¬ñP,†úOåY± Ã”ØQ&äH­ˆ(¡üp3à6Ø€ü£ @Dlæ^ûnš5ClN5ß)m<\r®’{UŸ«so\\×%•ûã\0©í¾ÒÃ}d,Ärà@àØ¬3Æ¸>Ôå˜xE½<÷\0,ˆî.Öw\n,T-&4¨›\'šm@“‹M—ÂªI5ĞĞ·â®şh:Wœh´\0\rtt\Zò‡1¼ñ@ƒOJQ°PÍƒÕCê\"ì“¿ïM¿€şñÇ}Ûj%V39ÆØÔË( ÃÁ2!TaŠtß\nĞÀÁ–ŠWX¶×{.†½	ÃÎuTCŠÑF±Önûæ^sƒ\rdˆŸ¡ó(Wú›,¸{˜;Nû\ZÜùU€…y>²ª±0–=hËK±`ÇRØDéÏ 4•°\0ÏÂJ\\ù\r°pqÇèÈ‰w]®\r¡‘0º8\Z–›«íİO|]ŸÃ+æ›ÿó{£ë„º9´…óP Ñq™€üˆo&˜álÀubp añÀ FMyJ“Eƒ¯\0›ÎW!÷L}¤‹|ß+¦ìĞ¶vQjı»vrË-í$d-@ÃÉ,†É±Ò/o\0Ğ`A†{Ñ\'Ó¹„9–2LÉuÂDS!9>ÄPàsµ‘Ğ]+kå\0\0á~‡r34õoî=-gyS‚æ87†ªóMê,´½]¹*uß,ÀÂiƒ	G2¸ÎX‹uÙ¬ÕÀ-rr@`PÃ\0~CN|u7ôMë\r_yëjáã›oıĞÅÏÍßÜûËO½eî5‘A*¨pö+ŸAû7õÙ\\m¶üß‚«zBZ\ZÔ¦%V:•ÀšAÁ6WÀ4\\·„ÈÍÑºPøäw•ÜµĞ°zØxìó¼”4¾\nyßŠq[ù1‚ï{Å”ÒŞU‹—¾ÚÕ\r‚`ö&´•C_ïÕçéBj¿–üİËófk·1Æjîg²_!îÔ6d˜\nØ°^KW!€ÜHür>¸Eà*aNmL14 )/CŠËDš{_ËUŞPÊryÿ,ÀBı¾¥ ˜+s„T`á¦wwVâ1°°‹±\'p¼°ü›Õ#pÇ\0m®Dº¸ó¾ÏšˆÕÏK/Sî}ÆÜk:! Âã×`ÁZ3\04ğ;àC-$!|Œ‰ˆ˜N7	pTt¡€Ï©\r+:ºË¢AB“bÖ·òâ«¡8ælß÷Ê%@…ô“oİRÚÀà/·\"åSŞP@CH›—´İ ÀmtÊ@ƒØ+J¿’£m•dèô~_}DXËµìçø½šØä;@P§4WkÁùä“Oîä M/c&÷Ş–R^q™Ÿ}QÊÕ”>b¿û´UUkk³,Ü`Áèº†ÀQ,Ò…ïÌº#X`bÅ¾]!(ÿZd!fÿ¹Ú\\dº8\Z®!•6?øq#Ğ°X[ë½p—pÿoî×) AÌC\ZNR¯Ö3qaYÆ¤o„Œ«õªÅuâ2Û	éPë£Áhhß9ÄB›¢Ğ‘7¶\r|ê6Ôx¨úÿùÔ-5ÍªğóbÓ a\ZJ}ì¼é3ßò¼™(8v¼M!Ÿî÷¢0ö©pL¡ìÜ CØP×¹ßİ¸Lˆ€‡‰*‚ ‚¦eËM%ƒ„\0 Á‚kq£Xô2vrïo1å‘§¸LŒ4`!|OVp¬\rh(ÀÂM‘!ö#\0G‘!Ì~c#Côy¹Ö	Ïıökfÿzõïno=÷ñ£ëµ7¾gî½ûC_¨\Z\\·	\\pÿ6Ö\ruÂ*|7\nB„qµ±°ú(\Z\"Hñc©/òËÅl”1‚÷hÖé6‹|vÖâ3Ó¤TQßT…¶Ïü¡¦jn_ùÔkˆö­óÿó©[j\Z€¿1”°4„51kÌó,[\"1Vs<³€ñJT_ ClhzNN°°`%ò\r&Ÿ›ÍÆ\\«å&Ïyúé§·\0\\€\n:¨`xÊ`CÎv.euÏ7XCÆ™ãŞT\'§ÕY4¨LZÈOdh‹1˜ÅB`dˆ~†÷ÀÁÏğã\Zññ\ZĞpÿCŸ7÷ùà«Ğğ¢‚l÷nê>±vîæ÷z Á‚^\nÎâ¡b<%üQ«2¤V©J—æjÑ5f5˜¯K,Ò63\Zƒˆ ¡h)@Cübî5{àpÈ=gsºÔœ‚\04çwX^H\\fVµŸĞª9€ƒ2,Èğ —ÓèSW¨ú\\°¡mßÏÑÎÆeÂ0xcÕ°Ù>ñÄ{P¿pàpå\00pÜr|uj`Cq™èrŒ?Kî	ûœ÷‰©Ô½€	ñòg.mÈr#CXÅ}ÈÉ¬rD†èhø¥ßøƒ#×Â¡ëïwğÌ~‡¥Ÿë6aşvÀ…#—ŠZ A„.4äó\rÏ}::M á|4‹†©/¤hˆ_è“¬Œ\Z,Ú”±4Ü,‹n}¾/Îsdq$´¥- Cš5e‚z¤({û(b½È·\\Bù\0:]+y©á¼ê„Âp8¤Ôg*Ñ(ŠËDÚüh…Àq˜=v>­!éò¬cyú\0,ŒâV¶È}\r?úÑg¶\0] Bõ>y®®>»Ö7×H\\àÛ@*ğP\'€Ö2wX½9\rª¼‹ü5[0kÑP€†¦°o aaw¨Í«Õ…©Ã’ájeÉZ°ÜauT]†\ZRÆÆı>…gú€nšº:Óîz¥(Dmas}•S@†<JÔæuHáØ£·†²Trkæ%~t9°zèRæ×¢Qä®ÿM-¯\0Ã\0c¹¹\0 ş@-¤í,° !\'O32D×Ş2ş}	!ü\\\0† YxŠlHËõŞâ¡‘£S*X8Âr	xD°H]i‡°h\Z.ŠEƒXÂÔõ]Š2Ù5¸?† ;y A€>\Z†öju4Ÿ±hòiûÔ4)ccŒ~}f((P·¶åúğç\n4Xáav%°6C™¡ó¢ô±§ï¸L¬„é{³†åÛ®™X/€†K#8@ğ»„“Ê¤Å@6‘xõ6ôá®R·î—‰4 ®\0ÃU€]×ÎT9¥äDhjçÑ#CÇÂ>ä¤D‚c¿è32Äø@B7!¥,¨ õu­ü|¨áh¸»]æãò±\0\rùüo;wŒ\\“u AëjĞ3‰ez%ñM›ˆCs¨(rc‘Aæj×¾ÊI*»ê4–¢:i A\\%0]zôè‘‰ÿNû\r²˜2ö»Ú?õşXı×4&Cj9SúPXç4¬el!M‰ªKms*eÉ\n6—		%¶^>Ü»Iğ‡ºJ`Å ]O÷Vbë¥ä³‘)Öò÷)\rdŸX˜°P]ŸRå”’X Á62Ä>ääå8!\'mdd \"Ñ‘!æ\04øÖñ\ZĞ\0¸\0È\0Ø“èkq.ƒ¥á´;æ÷¾W‰4Ê–´6vR44‡ïì³¾C)¼1ı¤yBE7­÷ÄXŠêPíã:q%B/mOèYæ eª”~÷É›Ò9A³ë>ø¹”97 Á€²¿Í¥}çVÏ:³å>NàÛö_°Áò2ˆ@ËAäVâNDT	ığŒ·½ím¬}øğ¡ù›4îgCHocÑ †·¡Ş¥bn–\re=ì\Z\n°0.°2F}d‘’fX0ÁmïCdˆ{Û%ãx‘!D^Ÿ`!1Üf\rĞpÇ¸Mà>‘hFïœ“ ªdÄ*³uù\nĞwÁ‰í›4HÔ“@²½«å¹!/ÃüWIÌ”Àlcæµ˜{\\˜–4°.Ôm–>ã¢ºŞÌMa›K}ç4XáQ$LcŸã«:wyÖÁ†õZxˆ(%f±WÂÑÀz	˜ğüóÏï±]Kq™p­ÖK‡ÿ°AÜ/ºÀ@ˆÜœ\r}´k±fh®ì+×”|€¢ëNeƒT–œúGÎ²pÇrË«ş?ç³¦TÖRÖÏåâ±€¼âª_Ú¬Çspî­	9yyËZL\\ŞÙEš°\0ñbõÃoİ®C¥©\Z¬¹4>Êˆ_\ZÜ1e\Zê&Œš,»‹xÓ‰g×B4È©®—EC³™y×bÚUŸ®Ó›)- uu‰}?…2åD<¶^*lÑîğ›øÍ3;gñF ¾{÷®˜oß¾m¬\ZÉf@4hhv\Zâİs>£OÅê&—= ¡€ı‚Õ9 k¤û{Jq›»FÛ‰§\reùPünïn¯Öäºo¤5öj@³^Š•‚Æ¶Ûóósó;‘(¸\0ÛÄÁâ\06´¹Q°aØq˜º6`!¯Õ‚(\0Y\'³§spXn®yë	²ßüŸßsÊ>S(kJ‘!¬+†\09x[?–uĞx:ŠyH]ØãØ—ÜKf\\§CÊé3í5 A™æ—‰ ­;FsD†1&A—â4ˆ²Õ4€¾az‰àÒô.]Ï›ƒÂ›ÒO±ï7e wJiß¼1@í†`ÌĞ\0ğ€`4}fZóÖ·ÍêÒ¥\nœ%½‚0 aU,zµ`}î‡ª¶ÕP–Õó ÖL,ÂølVFHD)>(ü¾\ZÄ’¡€\róºÆjÕZ6Vv)ù,@QÚ¸]B\\!ºúqê@ƒ‚\ng¿ò™íæjcdId4şï‚)2Ï˜yKdˆa€\Ztc\\€rH\Zmxf.>– ñğ»Íw°ŠP‚ÇÃXg1q¸{r½ïş1İÒ.T¹éŠS>”	¶ÏÄò9w†•œZà/Ôd²ƒ	èXĞàó¼”Mi(®\0Ÿ¶mJû~h×‰PĞoñPˆÅŒ×„_³¤f>®€Œîµ|üt±hèÙÄ<TXšbú…¸ÅÆ˜#ŠR5Œ½ Ö+§•œY€ğM±ínrú|ø6¸L²Z80U†—A-Àø¿\nkvİÜl ¿»ÒØ«l JE;g\'HÅb|B­l\\…8V^)ù…>ƒĞµ3E~í#¯¿~,˜P€4ğ;÷ûxnŸeN*2‡¿D¢ß+!pìóÄ~Ì²›€xâ	ãøÀß\n˜ó›şÉ1k—{ŸôTò©ZLÀWÄz	wÑ±å„u=dŒQ¦Fhº4àN¢P¿ğ6 Áz°×ûN Åÿh8/@C\"‘gì\\€†×Åéî^iCq«^msRÈ=’)şpmiuîûÎ£¹¥LJú8%Àdà	k4ÄÂù\"€Ü?¸å1¦Ğ\0´íuk¹ {G=há^¢µ€qı8ÄøÏ\r6ø€Æe“ÙÕã½Ğ…P„¥‚ÂQU0c\rÕöP â\04\\®\0„ºl(nÃÍBàØŸ+Ä”€…)[4°†,ÖÖzA/Ü%Üÿsê2ÖX(‘!Æê\\\'°ÈãƒŞeİ(ì‡½±Ç^§{\n´“–}\0BhĞ2ÔB\ZâÉ\'ŸÜ[-X7CûÆ-ßì›”;Ğ°/¦2i|”Ş aƒEƒøy6)>À†OÚ|Q§Ò¶¹]G|Ş+¥íRóúÔ/5ÍŞMÜpep¯nÒV¨¶E¦ı¸\0\rÃ½C(ss~ÆhÁØWàâàÂ-\\àBA±È)–“·äÈ6ø€6”¥„î Â€ûA8¢,,Á\0”\0Œ¹t0¨UC<Ø€€\nø‘söÁ…1W‚È,ÜL`aÊ@ƒë6á‚îßStŸ(‘!†q‡-ª\rªä+¡1ûÀ‚çÜg_cï³nÖ5B~\'= ‚kÑ@\ZÀhp-x\rü®\0ûçu AN™¨§J]Š‰ïı©)0>Êå1Ğğ¸Õ¢¡hğy^Jš9¸NÄ“¾ï•Òv©ySA„Ôü(R¹¢ÃLm¦¶M5NA¾”U@™2ÒÇ@êú«ù}@ú—	ÊRLiéòDK*#LmÄílcİ$Tˆd }½5C¦4\n°Ğ°à;Ç¦4Üºä–\'RÊ3\nÙÎmbÿ­Ö\rÎï¤KyNj^BdÌbz\0ƒ‚.Ğ`­\n6†°EŸÀ€qàZğ@„Z!¨{µî‡ìs>@ƒZ4è^ªuQâd\05Ü,®\r˜´ Áú™é$]-h(M\r„ÆÂ¨É¢!—0uÓ,\Z\nĞĞbëëïï³Ş”V‰`S7§©æŸª\0Tê•®°–6œ_æÚ} \reIH³«õC#xa>\n?–†FP[/×MƒkŸfkl¿h€>nÅ²!n`!/°àKà8·5w*rIÕmÂ¸P8à‚ëRÁßC†»¬‹±İÇ„ÿËí\\¡%ÛøîxÏ<¥È!\n¡iU¹,àbc?ãwx‡°N`ìsOdàou­ÀÂÁ¸8Èoj™ @ƒ¦m²hà¾±ZØEjR×	~co5|GU¥sT¾±9”ÊÀw*“œzøœ®»JîzùH~ó$3CL1Ç\Z Sjßººø´yUğ,@ƒĞpa|ØsÌÕ4Ä	ºs¸J}K?=r™öû‚ìÍ&”åòÁÎTÔš‹\"!dÑj^ªÄ¹<ºlİ	lˆÍUêş6HzÎ†6tÏÍ,`!fıšŠŒ|ä6±#}Tpï:’È¾ê~B¬Ù	û(J¾c‡\0$bŸ Ô—G±6³ü98Î7äd(X’ŞŒ\'ô(°v,ñ;€å€¬Ÿ|ø›ß¹¯Öz>‡IO9üfv‰Z\'X+¨Î©Ï$–À îˆünÆó±‚rWü^\Z¯\\Ê‹\Zvî}M–Ğr]Ä¶MÖrĞĞ­ğvõA\ZÒÛ°®\0	\\ìêÇ9ßNJnÁ¿´Qi£Ğ1h6km¸J­,ÛDFÊÃÀ7¾¬GÜ3œ0¬ÄâRâ­ÿíú÷Í÷BÊãZ®%\ZEğPÄ¹‹ ²/°!—‰ë®Úï±é«§ì¹ßå¦•çr2¶¯¦šo*²‹Qş$º—Z,(øÀ·Z<h\Z~ËYwÃñ%œ]K‰e­,°€xß”_nBdˆ ¡+¯\rW¹®\\¸şYw¦{n>›Î–Ó˜OöÀìw!˜\'¢›°Ö³×î7qM´¿õîğ÷Ğ€	¶ñÇ¹Ìg\rĞ\0ËxÎ‰’»,*a£íÀœ„´X40I9)i²hˆQ²C7¾Üm’»¼˜6(\r~àÌú9,\Z\0§†6÷œª\0TêUõ›8RÀ_Á’7îBYÊ)LB1ïÄ¬Ó2anrn³‹7n~.%\0CÛÕ\n8°aÃ«ˆ=Ø€`ÇéR½ÿïZ„¹œã\"T¦ğIßAdòZ-¸ÀÂ”#CäïS\'ƒTPa é\0\n.ŒòÃ¨u•‚ ¾òÑ$#C¬$»ğä´­]\nv¹ßoı‚EÉf%ÀÂò\\¾Ï·ÿüÖG£¯\nĞ`\rÂ‘å\"˜3@ƒ¸cøNŠ)¦ó\Zšê£dûlòšÆ\'äØí\ZÓhğ\Zò·Z ábÖsµmœ÷)Ä”²XPÆ@øˆ‰Èä2X}m„¤õåíÕÊ†ùBÀÇdË…ƒ›„<Y$yÈ ®> ƒ@,¨u«˜\0Ø³ûÈ!9À_+SŸú”4–cLûû¦S\ZBäq€˜şH¹pñ‚`ßëƒsQn‰ÑŸ>pc#\Z¾’o\\)ø­­î¹…*(q4p2Ê@%ŞyR[†¸cˆ™NÈÄšZZ¬°Zh2+ÂÚ0¢\0\rÍŠqŒ3u a*\0O®1Æ¢IÌê¦6ÿrÕ§(‚áŠ`i³Òf}ÅĞd ÎÕ5é´|pŸpÉ¯øMßu!\'9]VM÷b^:5°!fÿ\rí—q¢Ö,®Bò¼’öØâ¡\0İët.9\"g9†OBÛê…“^LÕåÂ\ZŠu\npq¯Œş¬_6<¡˜½ïLØ7®.ïì±\ZP÷ÇbÊşÀ¬Wâú….sµ‘ğ†æÿü.Öü}té}±“ô&Ïêî.­¤×|âB¶YŠ®gÌê1¯¿>\Z9¬¦¬]õïwÍò­•~ÿj²øÛšû~wóW×2æ\0QÇµ¸60^\\€ê\0T:Vö}Àør,Œ«ƒ\\u–îïš®)­æwïW€aú4@ƒ  Xì)Cİ1rNÎ¡Ë‚\Z¿¢4ø°×õOŒ S€¿ö&,eùj]§†_C=/D.i»·ÒF¥rÅ1dP3c\\#²8ÕQ²*€ÀrB.µvH|€¿¡–4²Å²Á*ùİ(bö^Ÿş¨#on\Z…À±Wˆ9‘k®Îµœ¡äŒ¶ç¨õ`‚¿Û€\Z¬õ•uÁÂÂA‰û˜[Jd‹R¹‹-\0Òó;k FÍá„”ûü¦Ü4ü+™^üésŒ+™\rëGèĞòHÇT«¬Ä¨Vaš_ËÔhüÎs©—FD Íô}\0T¸øğé¸ /Ô5Z£Q¶ÍG»ÜlK}\Z”oaÿÚWlÑ?´\'ßk¹\0h[öIÚ“¦‹ËÓ€XÈĞŞŒ™óóÇGã„4€dô,ÀãÀØ\0Ü7)\\…Å\0\r™ÂåY aşæØ†µho,‹†), ]uˆv|†˜²c©j©X4,Ä	«†ôKágéêË¹ŞŸ«€Tê]ú›0ÚÖäP…\nÁÓ\rû…\0®1Âš¬”‹áU](p}ˆµd¨æƒ4²–(2l\0ˆCïêFQ€…¼ÀB•³\"t”ô_M®Q«…6 ±]I¶@J Ê¡®eÊì¯ ÿGqGé3!wà`ª†ä›ÿëo\n°²&¢\"Û¹áIÏ:ypŠe·DàÓŠzZÎ}”T^À7Š,­ã—¿)å@‚:ªU÷ùzé7é(—tšŸ2©3ÏPR_Ò á\0²(°À8Ñ±B[BàÈÿÛ\0üm£E\\˜¾0\0H =5\"à‚ò\ZhßF<|øÀ”AÒª5åë˜3œHÇ@ƒu JDÒ{&LfIâ³H,Ä,¨hÖÖUóIpŸ›½¯2>v[Ç´ï»Å”}J@ÃØ};—ça«(ìeL{Ô­Ë¡ §…˜ñòA E@çƒ@LYE\n: ´rB§\'e¹@-Ç‚\rËë®	`2‰Ï8k_Ôğg9öØ›\\†ëáÓß%MûÚ6”œ¢ÀB˜ÕÂAQÄÒ(9(ö«KN…-PÀZ†’hNˆåÿjÀºÆœÓˆ9\n¤\Zsyã:ñxª*ĞÀ=Ò¹@ùqP€V!tDÙ$¿šÎ,¢ÆªÀúM¹Ô›ß(›¼(²Ö”ß®Ë\n$PÆ½ZnĞg€¼»–é‚)º A#Lˆë\0´ ıe\0#öE±4¡/èSSÜ§}	4RÄãÇÖå‚´Úö\n40îH«i\0\Z\\ k\ZèkÓ·. €%ƒ\Z2±ØS6§¬CMğ>c\rñyjıbâÎŞ\0 ÁÌDúğÇ=hğsècÜŸb™E›¶’Yú§ôcÀİ+BANeÒ	Û†‹@¬¦¸¸zš†Ğ‹Å)\ZŸ…Fæ\Z´¼Z’ÈÁ†±ô˜ı~ì:ıü,ô»şõ%ÓÄ¹CT€áH€ç\r`ar	9‰B®––Káb¯˜³¾q¥…‹”H”srËÁğÈ\0š–t€¯¬…\n4ß!Î­\r”¥ë&iX39åfUw4\\ AŸ‡¢Šrª¼ä´°@ÃÆ¬¿\n4(Áz¬ày•—Ba,¾é\r˜:D‡P `À€²êø¡­è‹‹sÓ\'JÉ·\Z@Ğ±¡¡Éß4à–A¹jÃ7åš¾?\ZvÑ!òù|Ÿ\nĞp·h í‰\0\rD ê<\0O€NŒ\0#Ü`ø‰L#x ¡\0\r9…ƒ¢Èö+È•ö-í›k¨ÒÂ˜À`½¼Ø	èB\\† «B,eº¾Îœºèg¹Zö2xjH\"{RB‡æR¸cöü\\ÏC9.°2ÎsÍ±›VNNY\"Õ°\0ÂD¬¥—bõ½B‡ØU.8\Z/\ZS£P¸ \0kJ<ÊºFX÷\nFèúÇßü^4`=Q\ZÔÅL#¨ù¼–§–Ê¡Pu½PNå–\0áCŸ¸J°º|ğ\rè \0±®á®õƒºTÜD Á€è{\"Ç‹#G\Z,×Å¬õÖjé€Õ¸AØ>°¼Ê‡¡iÕ¢†1@uÿ~½EÃ…€G\n)Ètµ{¦4Âòä\Z”÷!ç$²,kÑ æK‚,6‘A²H¬	ƒ£ÁW×ºôU¬ˆ²8g‘½¿ƒ·V\ZÉ@ã$¤b„ßw‹);‡ 2†~¸Éioš`UŞ·(şs!Êû\Z>ĞìÕn„(Nóø¨ù§’³äÅC\'ÊDÖÇá/ëÁ†+×äƒ`¶ğ\"¯ım~İÜks£(`C~„¹¡\0ã®Ç)²ëC:\0º`¾7€Ğ=° .ÙW«fİÂDz“ãç.Ê ^(|j‰…U¿+È€2ïZ¨‰<¿©òòÈx$­šÖÓ>¬;|«¥CÕÍLyt0ÀÚ€<š–oş¯À‡Ö™úñ;J(õ×ßÕjM]Ü°š\0”P ƒò4rùV–‡Çæ;}2H;†ˆğq^âÀ°0û^ÖjÏò\'\0&Ğ–€F¬e&r‰X1ğ;c<\0X¯W\ZHKwÜ¤×ûJ	¨Dz}ıpˆÏsµì=Ğà†¶Ë.eõ$€†™ì@ÃÅd€G÷±	SZµJ€3ƒ¾nKÚt	Ğ å†.Ú1`À”]CÛ¡¤ÏJcÎJW©û¸Bjiÿé¶ÿdÓAN¯î\\(t•e}½x´Èß—ËD]¹KÂ¿É‰İÑ¸6`6[À†i\n\nF`aZkFˆì•îRøØ\0+Ñ–j±\0°Ğ¢KÔf–ÚÎ÷á%×÷EÉÆ\rƒĞ6ÒƒI\'yŒ)ü.¼¤†<3iÁMıh”\r;©<	‡6ü¤–òğ·µœ°7d¥ûÍoë{üÜC¨ËëÏ=ªæîy–ã–{:‘\'XÛáL0à‚\\ua\'çò›4âÒ(«Œ\rœ˜‡Lğ©¥5 ±@ƒ²/§ á×ò^ˆ–¹Î·ë],˜ĞÄßS.¾š;Ğ Àı©WÈû—´ãÚöEYœ–àWú£ôGêPÁø7‹0_+¨›ØïVågòÑg_öÈÍĞ`¬ä¤¨lØx[6°a\Z@ƒ¡¼\"©s ä÷[GÛd0ÇKK˜Ù&kë\'/À–R,ánƒD>Xh²œnûgğ,€V@•è,&Z€¬}1V%Ïğ ÅoáÀÙ\rJÚØ`ÍçãÑ:‚É¹*Z,<\0\rm“Ü,*r\"Q÷Á@Ã@¸¼„s,ÄÔÊp%À &WÆ\"Abáî­úšÆ@xt\n@Ã\\Çp©·9Š@æ\'•v*í4‡1ÀŞ¬>Âu—	2à¦\Zş\04<\ZÔ¢AÁ‡¦hË†6d=  )wy…Àq>keUJ‰Q±\'pe¿8>D¸f¡%ÀérñX\Z™—wÜÀ ­pİ@)ÀÇĞ@aY“‡~î\\Ÿg,p‡€Èq,Ìİr¡ÉÂb4¨‹DY†Áä\\•&‹HĞ€_J=Ğ ››c°ØK şó®¹\0Ò\\\Zò\0C>\0SŒ;L\ZÆ?ÑŸëÌUï9(O¥ó\\K_×W„CÀ„TÍD˜ğ0GÆ|X?XĞÙ·‡t›pŸeC_®j,„)~ïFá6Ğ¹Ü(\\:§r#ä|~jYXoÎ§®·)î`¡>2D\0¡«\0,\04ê\\\nÊÀú†¢gHUq~û7!qÏbm±\0mnh¨+ÇğÖ\0¹ß\'wyvxNT¨®\râÛŸÏìş‡3w\0Áh@BNM«×âRâáf´ñúNS€†\ZäRş‡,\'UP)ùç+d–¾;¾SW	2\\]\Z3eL†»„tĞÕ]ñ`¾Ç\Zx.`ÃÚl€² 2‡Ê´Î—>€>ÊLšò`a¾ëFŠ;Äd€YÛp	³İ>0À@,ÿøğCÖØ@hA”¼•€§°ÿ?z$Ö\r;ğR¾óóÇæwÂ¢ğ’~³Bñµ®Øú±®’N/ÒÀË\0YàFã*ß±~ç7Ö$îCNiÉ—ûüüny^1é°&à7, (Ã-“¼9ìVĞÔZ­­L]‰ à–—ÈYŞŞZÁ}äï¹p*ä®§4X.¢ÄVOÕÅÄG€‹!•‰ÜÏbÒv\r&<\r–µ@Ã£ŒíÙ`µp	)f8kù–‰/DW}‚\rêfÒÖ1Â…/¤·w‚»ŠëOéó7‚HÈû–´ÓcŠ²9_¡±ô]é;×,AÎD˜¨!¬‚\0KÙDÀvÇ‘q‹\\m¢\rÌXH®ñ5@)²{:,ˆFa†v°!Å²¡_ fïîRüû(³ë™>÷ã¼×7ìdÈ©ı€¬²ˆ˜s\0ÄE\Z…%‘d€€\0\r°ú\0(˜•»hü\ré-QHÁßX?h„	\r#É=\ruHYDĞ(\Z©GÃcVİ\"ˆş Qîİ»k@B)ò›–A\ZÍšÅo\Zâ’º­ÂFŒ8X?`h¢á9\"¨é\Z( \"\'(£,nR] vV$¹•õ9—·\Z”ào!®¹€7’Å\\/¸ğÿl:1Á/Ô„«i\Z$BCŸJÿF€!>l¢,.L^>}‚\rkVXĞCúÔg“¯KòŒ’vzÊı”ú¤(«ó\"KÿİÜşSW	\n\r›»­uY2`nÌşŒK¨;~Ø¿`YÇ¢`L‹}¶Ø€À6 “4Í™ºĞ—m$†}\0}”*g`aŞkJ¬;ÄT€@PÖ1k± ÀÂCá›i2 @ ¡\n5¼%üzæ`Bù&ô Š9 ¥ı^šu¬°¢2¿É\Z¨n.Ğ`Ü+$½Í·6ß\0	¤ÁACnò›3Äê\0 @~£oĞI¨uQP´ÖbâÜ€\nü­–\n\n4hØLÖ{æ4À e\0Vä\0bË8²Vp\\Sæô]÷Ğ°Y¸Ş€\\Š1.\ZÉbJ\nGH]\0\ZšØ¬MŒ[dLøšÅ\0\'W{Ö•ƒ‘¸¨¼“IMœÜ¾kûµ9œç5÷±6\04}H_•´hhEQ·PYúïæõŸë*¡‚!ñèÛödØ›à!N;0ù•ıQŞ)€°AÌ—«a/+–\r}\r>‘ú\0ú(³MÖ(ÀÂ¼×Xwˆ)\ZÂP*c@øB\Z.DA7®r©¥€Z\'Ô[/X\0\0È‹ß4ìÒ¢c¨•ÃBt¬\0ø½\n4P6e*à@:]Ãy>@ƒZ9–:Ó¿ü\0Áß¤×gªUÆĞ@C±Vøh²ËÇh.a.EH\'¢@.•(	M‚¿šºë¦Àÿ§¨(®±ê\Z.›†œíy½_ ^Ùš	Œ©ÑFK.şîhÀâEÇ‹OŸù¸24	>å—4`ğEQ·YúïfõŸF•8òáb_òGöí¥XüU-ğFĞİ\\-\'4\08,Eilğ™_}\0}”©òD	9¶f|îsËí3ïı£í­g/ƒ.ò×g…¦‰q‡˜° ÖÎ\ZrÒ¬E¸X`…ÇÑÊÛhşYË°0@IGGà›ß±\\P«¾áfàwëò`Cı¢Ğ³*Ğ°·tp-\Zv@ƒYwi±dP×	¾9ÜT0ë~3kìÎ\ZÀÖnkM¡®¤ãø\r9:izuÛ òò\0±Ö]ùŒµ‚!l75µV—ˆ¾OüO½|4¸\'ÔKò\rbäğ¸‹~U±ñÇ÷Q*BÒ”tqnø)°èàoÍ¿Z\n3t‹ë¦™øŠ6Y4@œ˜«=¯•#Ü|ÔœˆE“#4ÀÕ)Di]9‹Œo;ûğ TÓL|ò}ç’nZ\0H¨€SÒ‡	©¥½J{å\ZUW	aâÒ¸Aø„Ãyyyÿ\ZÈ@¹¶S\Z,Ø°lí³>€œeÇøuèŞƒpAA	À†Ğ±T—>&ìä€,©ö‘!”ÀCà,T•Paä|s½‚¬)ò›r#`Q\0\0è€Ïe,v\0€!{”òøMÁsG2iİ\"ÖFÁ×üèp9ğL,(pwP°µªP—\0@\0­/À„r9h¹ü˜Aù¤§€šOß)\'ĞP¬Ò­|@4¬ŸûœŠq5:AÛfÒ7Ğ€Ä”(È¸3\0¨P?ˆ\ryÿChI9­°A•ÄµĞ àDƒëDÎöl\ZX$øĞÖ´H¬ú\Z¤\r‹\"=-EºôG{ä‚JñBli»Òv]c ÎUÂF˜òÇ€K±º»nÉ`Ì§4\06¬ÁŞk#§m\'v€,]íï{?\'0àZÄ¸X`!ßºrëÙ÷–¿sñævñÚ·\\Y÷áŞo¾ğ†cùğbÔøŠq‡˜>°ğ¨×SpË¡à\\¨Â§ü\n,°\'ôÖeÂZ$ıß½WI¯yywÏ«ä9º¿såpë¶\'I+ë¶a£PØuõØ^îoî=û·µhĞß»,êî×Y+ø(É%M:aQ¶UIÉ©	4¬	˜pß¸€ğ|lˆI?¾ò\r-¤S†ÌeÑ4Ğ¶ı)üÖudÑºKX·	ë%PC@í[Û4Ìiø\nÑ%]>Áµ´eiKß1`	\Z¯+Ëd=66Â„‚ğ2(È0e‹ålXÉ©aˆÅ©€\r] Fú[S\\—	¿øÕíórñíşŒI\Z7OÈ\\çôº;(Ÿ°ú‰áRÂ3Š•€%O¼eÖ§.ÒXßûÆbÁ#2DQNÛ•SBtZ×qQ Zƒ¹,ß–k‡knàÒà\\]@Ã°Q#Ağ¼^rìñ(@§ûO\\2*ÆX\rT]\'Úâw)-ÇV	¢Ü7Z%¤Zºnk	-Ó&à,aÀ®³h0&`b-Ñ§ÂæE˜2AÉûTA¤®¾+÷(1öğ‚JºşÙÒ¶¥mëÆ@5tš+HâÓFşxaeÆ2¥[—‰ƒEÃ´È «Ä”DÄ(`Ã¥±ÒTğwÊ²†ô·†¸ @ÂùÇ×Û[Ï}¼ö:ÿzÕhu‡˜”ÅÂÀ®rXıÿØŠãÏ·z´\\€%¼d¯Ö41}fø=ÑĞP1¯ï2‹c!šDƒÖ*áØÅº\\ÒÀ„få_\\\'.:\r~@CÅ»XKŠ¾ê*å.ˆ)k]&l\\İşÃ[ ¡€cƒ1Ï/jjiÛÒ¶1c ëTßf@ÂH·:rß®U\"Là.\0ĞPôÿSŠ:QW6@ aZåßh|­íçúòT,°0ìºR\Zš@ı½	hpİ!ê¬”ª\'Ò7Xp•·åæj{÷_ß‡£Äİ€ÿó{Œ’Wò¤›ş—6LkCã:¡§Ó¹Oà]®U®\r,\\<PAN-ÄB!ÄÅ¡ş8¢¦Zm\r˜QqâR4\'„¯»FÒ»,$î.\'60³B)àCRyÀˆën£ô•<¬zÄ(B%Ï°‚niï›ÑŞm\0ÃÕ¬ß¢`C{J„	KüĞpì2á‚Qäç\06ÀÔî\r6HZ°\0&×|ërwè:drïû„ÚÌUïRÎñz“\n4t‡Å¢]aSPáìW>cÀCÜ\rQäÿ.øPß4Å·´ß°íw4d>w]LT±R0Q„q%ßk¹úVˆÃË+\n\rŒOVÓiJĞÀû‡?ŠmR­“¸iˆ»MæĞ\ndy^-|ÆÀM*QPÜ!pù-w{¸!vû(?w}KyÃƒ\ZuŠÈá4Säõ¿^$Ü}|§m\\úã\Z\ZSCY6Y4,Åï{ê@õñ¶rğ!–”`ûx¹&´¹Ğæ¨K)#nn§\rM¾óÅbÁO±3á¿î\0+0\04ğ;ëXQ’ıÚ²´ÓtÚéˆry)d+â®E9—Åc¦r=NÛSêÏû\r\"ä`õP§è\0ª¤Ôeœ¼GÚ\0Ë‘c×‡ğa­ÃDí×ÜB|”»’¦€\0Sc	ŸjFÚõrä{qZk¯Ëı™’û\"Ğ~ì‰}ıèÑ#£TckCëÿÌº´î;Q—–¿Z-\résåì@­‹~WOƒs>¯”Õ­ÔTÈ¾6«G–H™øò‘Än\0ıD˜p•eå{pCY6\r+9ÕŸĞ`Á‘Ïê\\(øÍ¸QÀÊn?.ØP*ÔU±l˜Ø€%C™Kİs©Ï6ª\rGuÃóh4BŞªèB„¸XĞ\0¨°»p—pÿÏ}\ZZ~I?Åû¦õ…\ZOÃÁßÔà@®Rº&D¤(¥æÛp)@‚8pÁUè\rĞ Ö(Gl¾=¶¬pšÒ4™a° \ràØwˆ@]çbq\"ü\0-oNEA,õ(`E1€€Ö¦ôv)İuÊızÏ˜¬ÌÉBF$\n½ÄuŠKÌÀQª¸Ö+qÅÂË\\b-Å%kÌÑe˜µ%\Z\\6äÛ_˜”KTaİîº0G1ÑØD£!B\r±¬÷‘iV—¢ìQ”¾ûR¶\0ŒÄşŞÕq_Icê$Š¡‰\0@síê.éùÀC¼kdHÛŞUŞƒw7m`ÛâpíÚHÛkÿí¶¥şí²TØªX\0Zxg>XWp©b¦€ÃAVY†LúT(ú,ÛõÏV€áÈjAÂT2v\rc¼\0]üMV\r0ÀS{•¾ÏF‰Fyns™p‡åæâtÀ±d˜+ØĞç˜,eû.hğ•·®¶>¾ùÖ¯AÜûËO½eî¹yJTˆxe po½à€\r.ĞPÜ\'âÛ÷¦)÷Sz_4\0 `ZSP0ÁÇ—(ÑÆú¡	L\0„˜¢¢İne  KĞğ¨£A¬\0†\Z­4¼g5Bq{(Ê{å}ˆ2ê¼&P \nØ°Iâ¿Sú\nÿAY6J´(ÙæeÈ^œ˜Ú«N±_ÊI,§±µ—˜¯ä2`dåBÉÆL’ŒÒ(\\QÄ]E¸í4éjı omËX\0h@ÑÖ\n8`ÕÏÕêÁÑÉ¨{ÿŠvD1”úêÇÄÅvşÿüóÏï›F¬„àİÄuÎ[b•±½BÚƒ²ŒU†éÚ FşbN¼@\0%¬ÓöŞ¡oHRÁû5]ïÿûM\0l\"7\\¶ï-ĞbİXØ>\n²X ¥\ní@#Ì·*Iù\0Hæ’:`Ç½\0wİëÜ\0ŞKaĞ¶×Å/[Ç•Ô›÷±`Ø@ÛP:§öáè?ø¸Dt¥Ù@^>0}®–]¼uÖ\rXÌÇ²×ˆ\ZrHcÙ ¼µ`é¯‡u-h·±,\nàôİN.hğÒËÿ¸½ó¾Ïnù®~^zù›rï3æŞĞPÂMF»6ĞÆê6±ÿVÀaçNÁïÊİ0%E²Ô¥\0 Mc`#rÁh¸gÍâu‚Z%ìˆ[Á„.¥}hE;İUÁ\rö4ßcŠPÙfÑ`	iÈZ2ÈŒ¡B2.\rÅ\Z¡X[ÈøBÉ}FÓ©o0 àÀÁ\ZÀ0€€Ì\r¨\0ëªâ‚ï^¢qRŠ2´¿:ï»¢ºû(;êÎ`Àø\r–uµ6àwÂÕ>ñÄÛ·½ím{ÅÙ¤ßHt™7ï4^˜¦£Œ ló£\\­ïÉ%\0…|P¶)—é(0‚|z_êc£Ù`¶ùpáFòQÏ[·n`ƒrù?ùx¶~x7%z#Bå»\0÷-Ÿ„5¿uİ0ìoöSµN0uŞµÅ•XCT?Ú®;ÅµD» ÑÓ>––¯¤İ¤ı®\0oìÅ}\0-ÌZ@2 VÊ{{ EöYöc…!ïl€±ğàÿ†Q€}QÔP± ‡-ƒôğÅºŒ~yÌ©˜9â›Ç¼¿€FÊn_Ê²ÉuâğûÊğ ÌlX2®‚Á,|¦6(dßÊs)¿ÄĞıZ‰SÛ\\\'¾òõ·¶ïùİ¿9ÜôM¿ûß=·½úü;³€‹ìÍ¸K1ç-xÉZ)VÇ\"ƒ„ÏUá¬wİ&Ìß¸P½w%óx®ïZê}Ú sÑÈ,‚%Àå‡Îº\Z8ıÆ÷>§» Å°\'ú9€QV`Ø\rÒ`,nMBrä”­N!Ã5Áÿı‹5B¨R[Ò6¸àìÍÕ÷V.0ànÚÓßªÅ@À€¯r2z:QœÕ²Àr\ZX‹”ó»wïîuZ”wr%WDiæÓ4 ˜£ä×¦¯ÜÓz˜rw\n5õ\0,à(UÄNÍßäãóôÓOà Ğ.À¯œ\rú\\+xG\0‰C¹[ó7ú¡Z~ãÿ§|^øÍÔÙ]\0S\0Pìù-b&Ï‡ºò~Ô‰úğlEøæwÓkkiÁ»ò÷h.úE/@>€úîî»p¼0ç•}Ÿêûj{êÿ¯»{l÷áş´¯\0FË-€×Pu3û0V&&ÒDs”‰6Àa#ù\'9°Á‚‰õÑ(\0¤âÜ(†°l(‘%Æ³`0hÂÍƒ{Q•¼Ñûí×ÌRôêßİÎò]¿ô§Á ƒ–Ø³œ*°PU¶±ö«’>*¸`xˆ<Q!‰,\nûi+ìséß:`Aq„+ñ˜àÚ\rÆ__Nò-·BºÂn¹ò••«N]å`- \n¬YÅ|6ĞP¸\n000àÛÎm\0‚v<øÕcm|ø­I¹ºT]B-b„SÈ£–(æ{¾QRQŠUiEÈCW…U-¬²*\ns›Eƒ(Mó ANúõÔ_gÁ=Ki])\\^ê¥Ê¶>×¨·ş’\rğ Ò)`AyšO•rø?\n¿ZI¸ ‚–EZŞI?\0¤7V5maÀùh›\ZÒÉ €ß< ü_•6Hxá>mXÀß\0%ÊuÁßÔƒ¼Ô‰ş€ Ü¶Ø\0±€Dõ¾¶±ÖOA\'ÚpE­[h+×ôî§0GBßëBÖ§X ÁX¥\\ÉÜ˜Ø`­€rƒ\r(¢¹,ª&\nÈ0<È à‚ZıÔE‡àŞ­g?º~şƒ¯×ˆ÷|ø‹h¸õìKû{¿sñævñÚ·÷kqõîıæo8ÀÄ_y\r7X¨*‘´@—d¯RÎ¾ÕâAÓğÛ\\ÑRÏÓDp…5n¥Æb(,…‚Õï=Ğ ÜX6t)ã¾÷mò€C•CÃ\rwZ}J­Eƒ%¬^C°x©¡p#LKÙöUÊç–®D°Q	ö¼{\0Aˆşvü.šd~u/P—‚Ü	B‹¹§WW	Up]~ua@u]4-÷íiû…\\rz¿+÷TßŒBê¸ äª\"€£œªÄªµ€\r¤AÉFÁ˜pÁ”e%$*Ø*xRyù¨;+@^Êp\0µŠàÛ\Z\\+ wt·^Z>ÏÒò©³*ùúÎ.\0¤¿¹¡Cİ÷së¬ùª Rµ­ìÑşp-xWå– l%ö4mÙÁ×1×y‚KkëPØï¾@g:Ø€Å|8V&úL(ØĞÎÙh`<6\00”ÈÃ€\n,tºÊ8Ñ_V¢,Üßo{Y-(ÈğøÅ¯nŸ—‹o÷oÖ%Ò¹bÔ€Á7X¸fÑ r™„óHşÖûü¶ÿÛ¤±œHEy?-å}ªı‰;’!x…¯l,läï.`¡h°„¶fSêø²Õ!èpc&.ÚF^e†êqnŠø\\ëÛ Hô\0ÁåÜöî\n;¦w%eÓprÊünx\nv Â\\“¹Õ €`Š/ßÊ‹ @Š¸Ës Ê¨*²ÊqPµpPEåùP¦5+×gª%…*¶{~,¨b ¢Ö”åº; ˜+×ƒ\r®Õ‚«|«%€U-—ï§Ê½jÙÀ3İ²ù¿ºM(ÂoÍ\r2vÀHĞ ïïöƒ¶•º¨+„¾³uÉ8ğ_ë’»	i¨¯Z2Ğô—EjA_«u‡ÛVÜ§-(Ç%êT‹kÉbûğØ-æ`­2·9àÖ÷šÒQç.:	–Sş`ƒ€râ’bÙ@Şy\rËH°ë\ZË‰â^¹æ€[.+‰RÎuÀ¢Í%Bûö(ú‹ğ¾E‘uìßøÆö™÷şQ\'ØÀÚ}şñµµt¨¹ˆVÁ§\n4`¡(ÈSUªK½>jôø¡° ü\n€Th·Xh²d¸æ:b¯!ó)ùó‹<Q\Z8ám¿eLÇĞ0IbÂ¹	Í ‚±\0Qœ²ºÛP„6:‚’Y ÔX!ÌY	9Ùº‹u*ñêÊ \n¿\0.a¢Ëy n†ì‘“ÇÊäJ0(&ıä4Pa_¹ôÄ\\Ë±Ïµ¤‹(À{ aç‚ Ê½C’Vëèšü»Ê3Š·	X¸ü®ËÏ¤|åoĞº»@íÀÿ•D’ôÖ•Bê\\ë:q\0\ZxÖŞªCr[WX~·®îÿ\01<\Zòœ& ºk;«\"DÛjÿÑ¼?iXª\rÚ7ë‰ÍŞ=…: 6¸àP\'_Ç8jûGÆ«Z-ì‰İ$Z‡!Õ3nWñå7öâ °A„#3/ B¼ ]œgÜ«uØ\0Xf¹, Ï<jk_¹¢O@ _?—K2k#å@<‹œô½Ì©£y)ë›îº³æ\0œbuV%Šlô÷*Ğ0òF\ZH~\rÑoqS(o&@¤ë‘»,q#†XèBîï]\'Ğ\0OÃ¥,HÆ!ËÃÜx\ZhUPAõa±oSrLï¥RQ®ÒµÑG„ë£\Z[~…‚løU\0Áò X\0A#(\0„]¨ÄŠÃÉ*áU\\DYr#T ]•¨¸ ì¯]G2”Tu1àÿªüëÉ6ÑøpÚ­B Ê3ŠªQfEYĞ0œ:nˆ†ÃeaQ‰yÎÁ,ß*²êş@D>¤±ÏŞ˜°’|PÕ•ÁXÎˆIå7Ğgğ>ár(¯ßä¡,åo å PÅ¡×uË ,7\"‡Ëy\0ÈR„±òP~‰: Ámo°­›‰%‘T}gUè\Z4wá=y/80…8$Òò5½ëŠA»»–+Gï°„©ï¾^X‡Ì`®PGs¢¹s‡`œš¨N&´)‘QÍˆR¤–Y¢ñ›\\(Ã¸}°AæÏûZvz€¡4°a%u›Ø@d‰7\n\0\r¨`?k‘[H»E\n{Èû°d(`C>°ÁÇ%Â†w•µoçKmæÌn]§ßYkÔJîj-¤·{îke¦‘th%}*Ğ0õ¨¬=º®³şêÅz\0QN¼OSÙ¾Iıj€Âz›È….°ĞÌ¯(tr4\0,¬ÄmBH*‘\rhÈÈù«N‡P‘;‚F\0sİ÷‘ûG@@B\Z\n€Ğ\"]·B`³r\0ãÆğà@¤€ ¿ëÂ`B¤/åÁGÁØN°WşÅß(ü´ûî2dr5á±ZrCfêßªØ33.1E5 ‘¹ Í”îs’¤cA.Æa\rw\0J£ş‰hAıp¢¯ÆñoÇáMèD4äp©Ò\\Uzís¬%„û©{rìc]ƒ‚h]1P&\04”4Qı±mÙ‡ˆ\ZJ”há;ªâ­8”¿B­*HëZC%ôÔ¯\n²ĞG´‡*éF¡’ÿƒÜóQĞCÁ\r×ÅÁ†´~ïü®ï¼6ı+å:©y;ºre„TÊSŞ!]¡=ÁäNèçİì¨r>¨°¯¼+Ï\0r9°^9\nÇZ\rÏÚãÿ«óªmN™5Oæ†\rİI„š  GÖåëâH˜7ı\'Ê0Ê±Z$ ‡‚\rË6ÀÀ†~ŞFì€&\n ÈÙ–ş.vM^K4ómÂ>\n\0+n@¬/êö¦\n4kWÕ\ZÊğØÈG#	ñ·‚©@ÃÔ:hĞ=Q@›ˆ6‡}×†Œ†+É†Ö½Î’7ZËåTĞÈv¿=¶˜pÿÄÉ`úÂºæÙ}ÖZWèß¦ÿ´KµÂ°ıi÷_­Oµ.¶|­—¦³d“‡gÂ8»SïÓ›^¿ë!Ôb¡_`¡…£(Â&)&ŠÁq-\ZlÈH‹Ş8`Â ë\r€•&%’Sg S€bÍpZ`D€°Ú»0T\0QB\n€ Œş	\'«æTz§Å. @@€ò¿SüWø¡™Kˆn¸ˆık.YDñY.ğU³BÛf©BúBU¹`äst:-¾İàQ0o­’AÙS_— Êg3İM²©c2)#@9$TFp2Ï·uA0q9¢Ügê‰1ï‚ríZØw°VüîLZA×$G‚šŞÁüx¶{:gÊà4Ö(ªÇWµÀÒğQ«\nH×½²éwŞÙ¨²‹Ù±1=6§¿ÖÌØˆeF!¶§Êé@ùU0…ÿÀc÷n€\'êVB>ÚÇu“lP Eï+0¢íh@ºÆøVP­\n¤¦íÚË|ËÜ2óHÚ¿k¼šö”½×\0»qè‚\rŒeÀ@\rŸõN~‹x7Šµä?\rË±`™¥Îò!§‚\\ÊŠ.¼\\\"°ZXÁ\0/²»YT¡ÔÕÒ*|\0)5]ĞÓ¸ÜÕDìá7Æk²¦ŒgV\rîÚşvótÍû±ï_\ZlÛ¹Öe´¡5k½i[ı}@Øòú /k;m©ûVzU‹	ö\ZúÈµœàoµX¬ri~µˆCÿpËÔıßÕåpš~å®0\Z%I£Âh:ÊÑC\0µ®Ó²É§rÁØıUİÂÄa!rX,t•qä:ÁI?\'úp5ä²pC_ä*ó¸µJpÀíAŞåò¡Qb#=p2İ4˜“41/@Ã|€DÀí\r\"‡ìO4”c%Ã>”cƒB—‡@<×4€µ\'›À€±\nS/s9À€(ƒ+sí€ÀéGúó¸n+¡‚/§û}nfª€£LªÂ9ÅÓ„-„¤®:’AD-\0\\0„{(ÎÕ{]í«í¡\'GG\0\0‰ºÔ•u\0X,¸â‚ê¶¡\'FûgíNõ4Òu¯‚;êËë‚. 9¶4ÑS(÷Téº%É±‚°%ûz9×ÅyºT¬AÿûÌîÚƒ<ñsÆÖ¼_÷Ûşnyø€%lØJÆy.|S¨#nMîò{è:YÒÇ\nnÛuÇDX]Y8ı *­òòè=7RªŒ^‹Xdø}@«òä¸ ÁWŞºÚBøøæ[?¼¶0qï/?õ–¹7W AI‡i7UæQÈ]\"dî°ëïªğë7£`FW\"ŸZª)àMÙ½ƒ…Z:Ò”Yå5ì \rÌóÔOAİ·Ùïô @¿µN”£à‚IÊ­« a\Z.$‡ˆ`!&\"DHãş5 ¿IÀ†l @†ÈX%\0X\\·J¸/`Â#ú‰ú\0Ğ€)u“ˆ‚U€†é\0VDØEb0Ê*fíb½³sa(‘ê-ö\0‚ò\nà[í¸~¬…ŒÛ€ë.Ğ,ø×ôÜ…\nÄ]Jpû® 8UÒ)u0\nw1VÕ¬ÔmŸ£÷ÙßU¬ªıh\\UäJ¹,†òÏ­‚&UpÅµ4éXrŒÍ¡Ê°\\5X‰ÔUĞaoİ`À‘\rd]òi÷–\r;Sçh°áj))¦65£€\ry@€Ğ½#$=rUT:á.1Q¤pƒ\0Ì3VYÖzA­§XÏTÑDIDÕpåâAIä$eS¹t‘tÍ{hğÀ\0JZkÀ	Ç¢á¥—ÿq{ç}Ÿİò]ı¼ôò7åŞgÌ½¹\r´\'—r÷¨5‚ºğÑv\nŞğ·=é?¸V¸€ƒºÓUöh <úˆò /ÿW;Êàÿl]p€4j}G?kÿ*Ğ @¹öi\0.@²„°k˜¨e†ŞSÀŠ÷ç¹Œ‡4Œ4Y,˜ˆá¡&s\0¡e\\\Z!¤lPÙ!-HĞ\\¤¹8ô¡”Xô°h0¤}Å¢¡w‹N.¬ds¬‚]V>ê©¥©Lüù?Á!ŠÅ@8²&\0ØÃŠàØz ¯9˜³Üá´C)Zu§õC=;÷sÚŞÅZŒ¼8Q?eÌª®&¹Ûì¦–\n0Ô[77¼¾`ƒ(Q†¿C¬•bòmfş²€\rÓ\Z`¨†U\"Gã¶ç¸‘,¸Ñ P9m×Óqu»BùT…Q•[WQQbõdÜ’ß\n˜±³><D†8\0\rÊê:±ùÁg4XPİò ˜Ó´¥¶Ÿ	\0:\Z•CÓ£”«â¯DššF•Ûî×uåSk	@”{µ,Pk\ZxÏĞç©;é]«\nöeÊ¦¾¼F7RRPÒÓÏš_-CÁ‹42\0*\Z®/ oÜ]:-Ôd(H#ıh¨Xˆâ1d.«\r™a­ò»8äTFÜ²ˆĞeÑ`NÆĞ\r4Ô‡t„ßDeØ…t<\"T¬	éXÈmØ=uaØîIÜvî{~‚ù¾óª@ÃMU4§şŞ§d50•¶FÁ`°<~unÇÜ\r€\râ§>0Ø€/;ŠüÔİ(,ØĞ‰¢ã÷Ğ5³¤ï6yàqã!r„Âë@@Á—Ëñú×ºOĞÇœ:£’¥Ğ‚ãš×“^Ãù¢´\Z°Ğ²;u1CÁVhxî·_3Ï|õïn«a._{ã{æŞ»?ô…Ù\r´—‚ü\"®¼\Z’šoÒ\0Ğşj¡\nºZ\"(Ğ ¿7\rÜWkí/ş¯}©nü¦ô\räwÃ^c!A^@(Æï .ú?ÈK:Æºqğ·r.×‰şAæŸ‰<7pTˆ`B[g–ËàºûA<!d´0|	âCÔ£‹ƒ¯¢šn\ršÔâ:‰Y\Zš]\'\ZAB˜f|ÈÁ\\RÅ\"ÔÆ›÷ù!.{ÂC%9”ql\\ùBçÃÜÓ‡\nÁSQÎJ=úßàK÷ÛÆ``İßf\0ÀÜ(L¤—ö(Qûˆ4jÙ@Ä‚Hò.åİ\nØĞ­`‡®¿§”¾)r„±^°rSÑfe-	P`”+\0¥P#Ó\0> \\ª¥Áámå£\'Õ\nR¸Š$¿¹ ÿWe•Sûkîc;ÂZµ~ Í­g_Ü?ÿÁWŒkÄ{>üÅk@Ãı}ŞÜ{æƒ¯:@Ã‹ƒYÆ®åzêr­Ê¹º1 ØĞ\'ªt«ûı¡nÊ¥@Úğè°Fpß„İ)û\Z‚²¹È£Ï$ŸË«À=>j½B9\0jíÀ=%ŸÔ2ö‘’¤ÎäÓ:“`D]Ap¥¡<K(—g«Û ywX_h¾â:‘w¯4ah™ÿ†›ìX¸u¢Iyğ!„ÔˆûĞ\r Å\\4´.h¸wã,\Zš|\rD€^y¡C”Ét0Ë·¦ú79¬£FY0>‘5<nEL˜D¦Bü9BB×X¥äË»—öœo{\"Häê¸ilËá€äZ%ÙƒdŸOVb~>}°Á†{¹B×Î’Ş/uj½`\"±8ÑuLQèÕ­¡\Zş%QILİ«|P\n•àV•b—R£ŞØ‰Ö-@Ã#ÖéîB6jšwÿêïY(¸]ÿÛ_ùİÉ\r†,Ø\0 ¸5èeÛÊ	;Qkv\0‚FUÚ“Ôî¸åXÂâ}xÊ]¨Ê}XÌ]¸J\r‰yx®eÿo#7Ù¿wV`\nî8“êò+ùñ!Ô¦b¥!2µ^ûÿW\0W†ìÂzîŞaª<Rs“\0­;ÄgahåÈç5\0‹1£Úù‚ğí’1\Z¹ŸÑaà¾ëM>ú(‡œÏá]|ëX\"@TÄ…¹üFL1ñBá5f>;¡\ZŞñFƒ‚Æ–W\"E„[C¤h,8É³_ HH8@ \ZÆM·Bğ·>éB…ß¹m^¥¾óUÈO­ïêBT¶¹@äºQ¤q\0à-ën®ƒKÙ÷¹P\\C×Ï›œ¾`°Öìó‡P”j\0@ \\œ~«ËÃÕF,nÄbáJòòÑê:Á	4¦òj¡„‚|sª}°Z°vmÀB×\Zôı¯üÅÀ T¨Ş\'Ï÷Şü‹Y\0\r]mPî—=6ÇÀ5½zHeÌg5\rË…˜Yãö (¬ÛÃåI)Ô>ŠÉšù¿O4ÜŸE»´Y!X\0¤óàÒ@|æ:rE%TÿÚ€yN‡N4±Ë¡\n Ğ6{\0Á˜Bº\0íi]@X	Óºö‹Ïx,iü­êÚ*TğÍ±¡”2Š`r“ÆÀX\0C¨P°Á\'ä0{W.°a-ûè©X6\00è»¬\nØà\r´°§k	k½ ‡2±By`³¼o~L×1‘Ç=K\0u…8\ZÖâJÿ’±@°Ñ%\0ôCZş¯–\0”­Ñ&¸`N¥åD¼#ğMZ§|ß\0ÚX¯óÇtKhL?ŸË˜W4ß÷(é¦%‡¬/‰ìX€†Y(Ï}+^æÄ¾h\0¡î»]å«²Šâª—k…Àfwu…ŸåE0\0\n§çÆ\Záæ±5BÃê´ŸHn(Çƒ‚Œ	ˆC…ä@(D¡ià@×Ø¹_€†im¶Eø9ş˜\nÀàF¹ğ×lıÍ‚\r“- ¹¼œxøKx%Ú\\(\\á\06,‹eƒ¸C4í#n	áºFìÑù—¨QYÒ(·‚!w\nëRaÁ	>\0®[ ‚Fœ°ÏØ¹DL ÂÏÜ×xÖr\0‚4üä˜ \rÏXZ‰¬9÷ö½©õ7à£X5Œie0ä³-\ZBøSMÛ4p¢ÍÉI_ïße…à¢æ˜ÖY——¡+V£1tEb8¤-w\0ÂJĞcqŠÂtÀƒ¹W€†ÓQloª€2µ÷¶\0ƒœÚŠËB.÷‡œåìÁO‹;6ÈêF±¹ZJDŠÇ“¶nXîBŞU‡:°ğd%ı\\Ü(®ƒ\rÈ„Å5‘#v8&ªéa±\0·À‚º9¨eß(°(³ö©e‚FĞ¨ó¹¬Å‚\0\n®Ï}²+Ş\n4(Oë}Åÿ‘\0ˆèÙagé€õ7@ıjdF Xdíf­´!\"2.LëE\ZÊÀåÅ2HËsø¾¸8ß^àdI:íÿ5ÿc!y4ãAæõãÇöäŸü†õr÷KÉ{yi#\0iıIC½y\'òŒ	¨Lm¯Ë]È‡Tö‡~–Z	íÂím\Z„ÑµIY±§şÍ\'ùFi•4!Ê¦m²BØ»1ˆáŒ5.\r;·càò\"H\'ÚØÇ7“\\±ÎAÛÂ¸1&æÈ\0¬.d±&C±BˆÃsËS€†4änjy¬`È=\"\'ÀpdÙ\0ï\r–\r`Ê¢=M¶¬ñ1×fá/«`CÈ V\rlX°agÙ`¬v!é\0µPşİ\'à(\Z¢%UÃUjä\0Øü$”’oÀ€	Ò«{…kµÂµpS×¬˜÷V áş}\0\0¡ˆ£¼Ó¯(ä(ë€@†gCÖDú%ıáÃ<Âú„|\0Ú§”Ë}~Ğ²×+2îZ\"XPàcb!Ïµ‘Fn›2¸÷èÑÃ}‰ËKë£¡1\"Ü6à=¸wïŞ]óN™×ZwÀşæ}bÚ­äé–µVÂÑ†2>4\0Ğ×ó\\`…÷´\'dg\Z\Z€³x\0\r+1µt._+„cAPE%W”ï\r‘ˆ5.—eŒ=ş0‰o/Bˆ`¸5ÛEc€ÔËD1–Å\nan`@Ÿõ-@C÷æW„ÒFmc`N\0Ã1ØğØ\0òŞ`ƒ@¯Ä6l ÿB,\r§ÌÛ `CÈà‚\rë6²GLäd6¹ÔíA£Aàê€Bhxv\\—	\0Àı¨•ƒ’BVå¾.¿6€†ûF)X@Ç\n\0Å\0	ú‘{ü\r˜À\ZŠ5\0Ö(í\0\n—æ[-\"\0\Z¤Å2{\n4\0<ğ<òé<”%åº@¿0\040æ( Ãè	\"P\'~§\\@	€À~§,µ„°Í³yæR¬.ŠLĞÏ¸Cg™3OÃ5`AuÍ;‰îU3½\r/¿üÛgŞûGÁµä!oŸ\n‡OÙh Ñº,\Z8ßEdPW†=ˆ°çEàôgÇ‹ À„0[r@ì&bÙƒ— Ü|@CY@&¹4>îw¾şÛwÿ»ç‚Û—<WŸçèÄµ ÂİPñ:ˆPÈ€%ÂL±p!ÌÓ¡n.\"pq±‰s1øö™·mi\nĞĞÏ†Y‘Ón×\rşüX0˜}nš.>Öì·ì+€ô>ÄÅDœ‚À/lXKä†‹Iƒ\r‹Àú¨ËEèº:çô&Òš\0P´Ú4ªÌ¦	(ƒ|\0PîĞ°†ûC@§™#òÊéPUQ´éQ0°…Èq…·ê:AŸh?¡¤0àÖ î€ô¥\r¸G(Ğ@>#jÑĞ4X‹ˆ‡ÔØgÜ*¤.Ğ VZ¾.hÀb—¼ÔA@%$ŒPkÒ1†OhØ@8¶Ü‚B>\'†Z`RKY»Ú²7 á™÷şa°¬aq\0R•Š”ü\ZšÈh\08Á Ú;9ü¸L˜BR\\SºÍÒşŸ\rZYù[ıòØ`”E˜Í‡ú¡lV*Ğ/şÚŸF·/`ƒ ›¦\rD8í(>lX\"LÚqµ‹Ê°4aˆ2†§–·<`L×]\n0¸ß¤K}§P·kñ,÷O[Á¾éık@qGá™1Ğ`üªEß·\0\0uøIDAT¸A,¦Ò‰n$¬ÄıqÊ–\r¡usÁå]cçŞÈ\"—%µXO\Z!qƒ{&(©#Ê™ò(pw3æç\"ã™Ã\'İË‚jµ€¢IãŸ¿;\\R>€›¾şLáıhÀ=NärúOÜ÷Qî(õêr°¾•×ù~ğ\0nk€r?J}E–\r<Ó\ZÈc½\\\r”_åQu• îü¦V4€+Ë¸Zğ›ZM\0ËZ[\0ˆÙºó~Sè‡Ô: Ÿ¡­Î<~,sX¾áàK-75ÿ”y\ZÀ‚¬{¸BĞfDÎñ\0³h¸õì‹{Eøw.ŞÜ.^ûöş´¾ú÷~ó…7ÅùÅd¥ÂW)q¹LˆÇ7ƒ\rG$¡…$ÄĞÕZÌˆi,Â÷ª¾x¼›“U	øÍ°€o›w»ŸüšG×G¯ÚFÜc3R½[Ï~,¡}ÿ*\Zh`ƒ5@a-å²äŠˆ}xGÎV™Ø€°ğ²”ĞUÁ·ŸJºéY,¸VjyàÔ	m¿ ¡(õ©›zÉï7†¦AÂÇbÁ7\rïw¿e<?6\0²Dò5h¾ÕÂ_†\0XB¨eÃ©\rj½\0ƒ	)}wtø‚Œ(r™*é¡‘ºJpzŒR§Uu§¨Êx(x…|Ïo\Zj-gÎÓ‡z¡8hˆIú’{ô+}ÏQ9ğ…]-\n°µ¼—&¼$Œ\0k-ôY\0P†QÆy([-4ê.š4\0	<\0ƒºİcG0©éX/`İ`	&ó˜{äã›ú\0vÕÖ9Ÿc¬Ğ=àh%ËÜ”¿s>3¦,\\¿§â>q,ˆN(c€…tëŞ,\ZÔ:o¿øÕíórñíşÍ‚K\Z7OªbÉ ¤:Š[ÂRA…=Ù¢„ò… bÉ}?”É\"ÁÂb\'¢Ød0RŸ\'7tï£àÈ¢‹|ë}õ£<¢Hğ!–N~ò„RÚU¯˜öm²V8²F0 ‚\rû¥.\rK!øPrEÃ®ˆ°a!¬¶K„Ô>,ù§.Ğ\'êÊ\n¤¦O¡§g1GÉ3-A±ô‡œ:Àà{°¡Å5Òİ#M„)\ns€\rëÜP™sP\n±^°ÜÂ‘µãVĞĞ’æ°‰ƒ\'ù¶NÛ½[+rrŸ’=rö@.T…TÉüŒŒgÜ#¬+RY§ü×©¡ÛÊôÓîª>[¹\rÔUÂº+È1!I±b±.0êNmîíÜ`ª ’û{õyGQ(*uñ­[S:·î6\\17ĞkƒU4\0‚ÄEÎªˆ(Õ€C¥êóY\" ö¤\n,l°Ô+,Óƒ[É @‹êùÇ…E÷¹×^çc	S€†C,ácÖ_UÖÕ4Eİ„­Ü¹:R™ün¼csú°Â\\rm¬ÔÄHC)1À€š„³¸$>l,\ZëX}º¤P´Q!İˆ(WÈ äB¤WÂm«˜öEpª‚./DXX#,k@„T…¯äŸ&€àÛ/c\rÌ5ß:Ö¥+@Ãt…¹±7ü›üü›0\r\"Lœ·ñ0UÁÌçs€\r„¿$‚CˆõÀ”ÓºÑ+æ6«V9(AŞAÔ!•çÔİAe³ÊÙÓŞŸı‰C •]ÀA-ı4/ÊçM^sNùİízÅğ°a`CÿZKèXõò»ùnæ`Øq‡Øœ[ë\0ßH\0CÖ·îYW†§Aø^\0\ZjÚk\0’Á€†&AO\ZØ(”û€ë|”t}.Ì†”A{6×Í¼j‰`QHëæ`B¿ìüçøÍø.É¦¢õ‰ÌPbÀ”iğ‹\rq£ùÕôJù Ğg)šÎÿÕ´©\n4„¶ïòAü÷––\\1E‘+y‡|,R•óº>-@CQØÇŞ ËóÓÇàM®ƒ\rbJìiÙ\0(aÀ	ãföRóÙğ—§6¡œÈTÊA\nìŞX`\"ÑŸF9´åZP—V~S²?d17ì¤Ê”ê‹OZ~SïƒÌÉî³Å=âÔ×î=Ğ 1úa­µàÃ<]¦ĞgWĞâUu;D¨²Î	>eın¼‹/8úx+ÃMAÈIÙëXú½\'4èfUUtœ\n„m‘·‹æÀ\"Î¡q‹5<‹0éù?nl\nB\0\0ğ<À\0~PaHÏ†£fu€äã‹îñ\'ÔßÉ8ÜML	u“S&b:Ô$gä\Z\n(0,(ĞG{û(ü9¸\rªu÷y®“&¥CÙ±7 òüteº´áõ6´\0¾¼ó áËÇà“kF,‚ÁLŒÁ†9„¿±¤XA„=a°ÁZ/X¢ncÆë‚ğoñAnS÷W\rM©¤Ü\Z-‚ƒ\"ö?d;eòW9Íu—İòG±^¸Yë¸\rÖmÂZkfrO*ëoÙ—üÆfü˜óEyï‘ÇÕ\0—>ÜBû6\'OƒXIìg†ªm0Y AjÃ©`¢ˆ»ƒá°Q\n²u)Â<rÊÀ‹U?”Ydñ«ŒĞÈ\r€\Zb‹€>(?JîÃÿõojh}ß¤Ñ03öyà`ƒª~ÔôĞC	4$Ò·á˜Rë\0ø`ylˆK6<×\"#Õ¢!Ea+y§Rø(üh8ôUĞ€@\Zºa”ô~ÂCi§qÚÉ„¨,\0ÃŞ/şØ²AäÀ‘\'|¢-í-0Î\06L=üeØ°šØ°Ò=ÂRZ)BSZ‹T×½ÙÏ%jäĞˆƒ+ığ·†ç7dF•‘ÍÔòÔ˜ÌïÂS–µnœµnÌvß\rB,¿‘õÖh	€º;¢ùâ>Ñ<&Œ;zŞÄ1Ì\"äÄ¥×‹1Ç\nÏÆÂ –§áZÈI˜[°±ßË}ş`@Ã5-¼æWyÖŸØ×k*dá®Fz0<o\n£ïî2±ŠÍej\0„½u‚¤asQ–àƒ+„\\ @CbëïWbâoCuƒÑEÔ×0ÒÊf…rÇ¤7 ’?b:ÅğÁ\rq© ÄZÌùš>\nŒ¶\n4„¶o¦¤ôC\ZÂú°\0\r7Oè›Òf;V]ö\0ÃÌCSúX\'¤¤Á²21o°A¢/™P™²§§ƒ\rëíR Cú)¦]JªEÃØ–\r{ëúÔ{[ş.Kähe0|ÜKÖ¨Üj«#ñ8Bæ«ºã^‰B9Ö</ÏÆşfHDwÖeÂ@\rf0îSÇ\Z7ûÈi5:DpšÖB\nğ8Öûës±60n<\r×€´àşäÇÔ @ÃWŞºÚBøøæ[?¼¦sï/?õ–¹ç*Ïê® ›‹¾º<\0 ìÃ­î];p6³¹ˆ5‚n0Ê±`…ËKàn8ºÁğ7¿4äx±çrXYK	6UÀò\0*ØP5;³)©»+áD¸røÔeÃFÄXí9Ü¿ë”Q·­bÚ7EÁ-yÃÜ¾Úk, !Æå!GTëŒ4LC{c¿	ÏG¨5\0dÇ`¨µb¨%DQÄTw,°a%æÖSºê×Äj}°dl ,%ÄR™‚»Èz¤B(r\ZrŸË…\\©²%é8tRkT•ÉwOIUHşnÂš\Zò{Paw°h †OÃÜ¢9„¼wSÚvPÁŸÀÑGI3BHÚÌº…HxÔÊÕ,< 	ÙPdb¹ºŠğK/ÿãöÎû>»å»úyéåoÊ½Ï˜{n”yu`ÓiF‘gG‰W“6,jMEù˜pÓ™´òQòE@ì\"K(Ğ`Ùa­¿¿©©œFi€Ì„[7\Z64ÃV¼óÅrßOÁÙÏ¥t¦¶o®z”rÆæ4(ûvÛ·JhT—¤–h(@CÈæ8Ç´`¸´\nV¢Û\0şÕå-/7\nBBËÖ. ’üsé†·¬îÿûŒFAXJjÛ˜ãâj­Xó•\\Û•¹‡|‡,é†\Z\'­ë.¡ÜzPäF3}-–¶å„ºì+Õ½÷ˆ=\'ƒ\0ph\0ô²×©™°@èDÂM\náê˜°/âÃ€AÓÖÑÖÕºäµçcI§3ŒK‡DĞ0X,>™yÙ8\Z,)£ø½™°@²ÀQNğÃç$Ô´óƒåañW%¿ºAèâo€Ìà÷‰ıß‚2+ß‚¦»ÂúA>ŠRkÔ	×Bb³3”\n©–øWvâKx,a±Bpm6R½úVÀSÛ·ïú•òû Æ\Zº\0ƒ¾À‚”qU€†\"%HôıÜA\"?±¥‘iÄŸß‡³°a)i	›lÀ\neÊá/©ÛBä$—ü±\rdèÃb–Rq€¬P6K+ã!#âÚÀ…|§*Óq“z¹œ\\Gî²r¨¤‡N‡$áû—]£,–P…£)f}¯§©å[Ğ~\\%¬Î`\"œh˜ËCDˆëÀB\00T«Ô[dLëCzi€!q<`á\ZĞĞf¢oÁ	{hLÑ¤!#~-wÌÂÎ&¼^ˆ¹Ç.^,…Şù¸Šğs¿ıšùíÕ7¾»­†a|íï™{ïşĞò¸D;êÚ\0ğ€%¦m.Ic p%şjêF~ã3e\\6À ?V\Z-Â\0;@ë×‚Í(EÁé#ojûöQ§Rfÿà‚ÛÆc\rsíç4 !U€œZş0ä\\KP°ÁÈD\"4f®–“	À`yšİ$º\0‡TËk5+\\\"‹âqè/ş9\0B¾;vo°P2!jøqÜ`Õ]Pbï*aœv¼Æıâs+†²øì{P¡.ÌåÌ#O`A”Ñ­Å¦ÿöT~( ÷s°\"˜»å€Ï¸#Í	‡co\0ëçÎ:Á Å°bîBê@°ˆ©Ÿ(âœ`ê‡…ûéŸûË=pğó|Å¸F¼çÃ_¼4ÜÿĞçÍ½g>øª4|Ì¸=°èë‡òù?5÷\0ö!&+\rW«Û{BHÒ±áff)È¨¢ké å»Ö	üÆF¤&u]|	c(^·}1¡}_œp2FÎı™hv\nĞPÄ16Ù>Y\0†~†#°ÁÄn².‘+º¬°lÈ6ˆ«¦õ]	}ß±^ÈáFìu(GBgròGX:‘Gõ£îuú\rMiO‘…˜Ï!¯†©$\rû¨ºÎäX\0,ì†bÅP,ä0Õw=WN…¤&Ì¥o9SI·1ÀÂõP“Sr…HŒUÃ¢PL¥¿sÖãP@‘_ü:At¬‰\\Bt¨œê£Æ¢¬ä9\ZİëE„QĞîà…#÷¾ëïwğ#Æô­ÊÈ şv4*\"­ü	lğ\0#Æ}C„>Ê\nLıAÂ±VPs9õ·«	äS’Fş¢BúÌ{ÿ0º}ŸyïMò¦ØÎS®S\Z\nĞs3(eù‘cµU†\\°¨Ş`ƒ\0lX8°]\06`½\09åFße¥s¿Í²{‡È`{LaÇ=bCjXqäBdE\r5éêZ«á,Ééİòİ0—–<²2.o{¬µqjÏİó4¸a.WN˜Ë‰GŸ0æüràlÌùá2\0à3V×ISü©ä5Q(ä]§6N¡>gêF ‹41¨®q70¾h+£Ük˜GµpÃú¸\0\0ÀeşèG?Út\nÕûO<õNyæöæoú0tËqMßØĞ\rÒ->s+x#ŒË‡5ïc3q]\\à}u3«*“ú;i§hÍ@}ÿáşa`Ú¾äyùå(@ƒ´á”AŸº¥\0\r]>÷uğ©ëÒ‹†é+Ò§°©öñ` œxì…äq”6Øƒ\rbµĞeÙÀ}ëZ*‡5YÀ±ÈSş¾-(\n)­üw ·ŒºòTÁ†•(bj5Ë=u“ud@7Ô¤Ê¬¤aW×	=”Rw^=˜\"¯F\r³€Ö–{¡ÖŠaâ\naëM)3}¯¬çi Ì%ÖßÓsi«lß`¡à“§á”çœqPë5c&ê_|Æ‡Mİ\nÔ:@Ña~×¼äwIù¿JTïñ\\õ#­ºGğ7gÌ†`ÃFÚµTQdœÌ“BŞ§¤?hÓ‡©@CjÈÉÔp“1ïœ’\'h rÎ)/üåİÒÉ!ÛP•ddá@ÒG\\$|Á†•¸¢V•öXğ\0 ÀÁp/Àk%¼muëbî#_\ZŞÒ4T8r ‚È}j¥ OúäN\0dE,ôÀL#ù)ÙÓ\Za†cË…â*1¯uqÈ58æYû0—u<\rÆ”™;Ïgá´-|,\',OÃ£IôKî~³¼3\rùˆ’¯‹4J½«ğ+1¢Uô­[ÆÆÂ\rDŞZ¼5ej¹\nX¸V”£¦lÊ¬@€k5áşF}R£;LÕR!E‘*yoàP€†°ş.@C\"ÇÜlSŸ]À†ñ¬I  ÄEÓl0™Jæ, î‰ ÃÂ;Š¨¸G„Ô-LhÎƒÕ©½Ö¢x÷İ™#–î0Á\nH§äü­fš†/<\\ª‡aÚ~­ ƒ´m‰*Qö‹Ô5Ûr‰(slæÒZ4L%Ì%§êá.¸i\nOC?sşÌFbØ\Z+Xà\0Ô÷M¿]_%dP~p%¸ÏÂè@Yp*ğíZ;(á¢‚0áØí!T(\nx˜BVÚkí5U yïZKø¸a´¥É5ĞĞÏ&’*Œ•üşı²–Pi„>,îã¶\n`ÃÆÓ²amÀñm®¸#ÄZ6ç³ €Ö¸>\0\"_çÆbÁp.0~ê¡<W)€À‚¾àV†x\\¢˜ñÁ\"AåQ\0«ôPJ] GİC.=\0ÓûG(ÅÎúµ\r\\Ø“>ÒFÅ]¢œê?6ía\n4XW	{P»ÀÁr†Èo‘\nÃœ£E„‚	Mé[Ğ AŠLâ/“ø´ÕhØì}Ş˜ÊÃ€€¯—|&_> É,ş(	G*#ÿgPS6Ò¨?·™h†usÄı –¹”ŠRÎ<”åÒOñı4U !Õ%£\nRä\Z#hÈ»yøl0%Mş6l(@Ã¸@í6I¤õ)J~`âÀ»[^Ø`-\0Ãå.\\:\0ÃÁ%LA= â[ÁhäI©°¦Õ0ç€ÛÈ›z©%„rŒÕq/4˜º!ÿšu“÷=¨0Ñ0—p3à2KaŸK9\n,¬X€›ae‚Ü/ó?ÀVïâ:qß€,ĞÊ» ¦k,ö.‘‹½uf³P@‚ôLÍEgv?U\ZQ”¤k‰*ac.Å¢”¯Ä–¶›~Û !¬\nĞPÈSxØ0>Ğ `Q®ü-ˆH!`ƒ±*HWøÇ,Ãº;Ø(^m—.P_”yÃf/\\`PÎ•IÕŠA]h•›Ë•UÕbÀÁuµ¨‹ÑeÍ\0áê©¬å=¦³×Â\\r@/ˆük@ëR1…¾BÑ@[ÏkÀ‚\0Xf2HåNp]#Ô\nÁPYPAMÒ629ø«k`	}TAuÃá[§à‚{ß$\ngB˜ÒT€€Ò^7hÈÙ¢\0\rÃl*SœnBˆBQ,ÆP\ZØP£4×FrzÛiƒ\rÇ+8°ÂRÀÏ5\0Gm%J˜Ê¥Ê\r¦‡^x¹QÒÜPä]u`ƒñ•Ÿ€	ûMX³nâ;…¹}Ê\rDu±×,hN‘§Á†â¼+Ö\ZÅbaìyw¦¨±.Ü¸@ğÁ,Í’ê`­`3D¬l¢­!ŒTğ¡Nñ­’9ºa&•ĞqÊ!$‹2_”ù)4„Ï4 aì\r7çó9.`Ch+9\Z€!d](Ø°<9°áØ5bOZ¹ÒI<9-”¤PAÉÅY¿ùÿR#Ùï‰=C&q¢s]œZYõa.e¼j˜Ë	€\\ğÇÌ§á:°pÇ¸óOÈ™Ú˜º>g\0Š*bÈr((¨`]Ğoîcª¦`B“BÆı&„)DSVnKİ¦Ó—S\Zªd©œ\r”—cÜ ¡\0\rCo°}?Óôµé\r­XOñyÈ/¬5¬‹&ö€¤™ÖòSBOŠBíò\r´…ÀÄÂ€’oLˆ~-rŸ	\n/…„·½¨—F’P	7zD—+D×}ÌÖ‹Rö„¾×hÊßƒ\n\rs¹0pn<\r`Aˆv\rÇB†Ë1Ï0®\Z»8D˜×PAä.nÓQ>Cú°¤w¿ !¬ÿ\nĞp³…Ê+aãÙ$§°Á*º7ûBPyŸ°Î´mÂ·^ÚFîoš®éuiÜßå›ÓÁ¥DOˆ^W+ácX?ë¡\\Â‡E”¯İÅÿ7Ëû&ô¥1oÎSşóáv‰ÿóåmï u€ÌÕÚ†·Är–he™?÷W’.¿2Üìı`Èuı(Ì¥ä\n©ï!Ìåøü Sçi(ÀÂ|çëYQ6Ã”•Ò^¥½¦2¦\n4Ğ>©Vnşq,\Z¦AÒ4¤0tÊÏ‚ô	Aj-Jà)¾g,„Ö¸bmi_kQÉ\Z‚¢j\0ùÃ€G>Ö¢ÓZ@ğÍï¤å›t¸‘ZËM›Ÿ÷¿¬?]KP›ŞZYhZ|è ÏáÙ\\”¯uSÒC¡÷ùÖúR7÷÷ı»T`•™²	Q™0@¬	Ö!J§b1îUPÂF–_±;Åu¨¼S½2xÄÓ°s	¸8¡0—B˜K¶˜3Ÿ7Z…c‹…«zvv2L\Zvn!SQ‡¨Çrq‘Å}ˆº–g4;S\Z|êæF a¾HöO@¡^øF!\Z«^}¢®o°e\n)\'ß\0¬+JR\r_¤Õ\Z•@•x¬4\rV(ñ¤”àŠ?\\\0˜ìsšÎo”Ë‡ÿ“—oò\"piT.î~@@C.â¢JyÖ­ck\0ÊQpÄ‚EáC9J|È·F£êC^.şŞ»‹6ÀM±’ùe\0O2Ì&wŒ	´˜rkPØì8\04R¬úœc­)å¹Óß™Û{Paï>!üw2ßÏS—k,«ˆˆ3ØàSº®§j‰x“æm\ZNh Èòòñvq~o»|Ì¶¿%~ŞÖ>Ê<iêúÙ\'oĞT6ÏËQ¾ûüc5Ìu¢X4œÂFˆƒë{jÁ	«\'æİC¿ñÊ\0%ÏïëÙl¸q.nŒ\"¯æõ(ßj©\0Ğ€R¯¤‚\nD(Ğ\0` ¤Ö\0ğ\0hÄ[ŞÆ¬g(úÇÏ±–äQ oòó¡7ä\"Ïàâwê§ê`\0g\0\n»U>,ĞàZ]¸@ƒ¾é\0!†\ZPøqÁò `0Q8D.‘—–8¯Í…„¾Jd‰é+ã}­‰S)÷\0*Øùm¬Ÿ4Ì¥\0vc×Óò4ˆ»Ó\0@Ãu`Aæ?\0£ìËX8½¹Z€†\Z°VX\\<É;X0\'y„yUöp-.äâÄŞı¦½2ß\'ĞĞzÒ§n]@F\ZNoÃR˜Bq©#¸bDáG°\Zª>d%Ò¬Áw{Äÿü&\r¢˜¢Ğ4 ts¡ÈcáÀGyw,ÔµBWñWåßVÖı‚òQü±Ràc]-ì€grO£uñ;–\r€”Å}4\0\r”{@­\0\Z®Äm\0°pã\04X@c\Z@ƒ´Åâ¡DR-ö\0ƒÌ‰%‡Oıá6¡ì#C­ómÏÙ»OP¶Y[,Â\\x\ZÆçê‹§á\0,Hx[,¸\n°0˜ü1öø/@ÃŒ•í½µ‚€ËÇÄŠ•Óê€…*Ğ@ú›¦˜ŸÚûú(óh8X­‹†›#p®\0We-l:9€\rıw.È õ±`ÃíŞµİrH=ıPĞ9H‰»J¿\rX.\0H À£¸+@~À\0½Çÿ]ğ—\n·\0å«Ee¸\0à€FæR‹·|€u\0h0’6À×4XNu5ÈK.‰µQ$à`h‹¦Ñu€\nC‚)\'¹~àBõ]üÀ†Yâæ¬ùc+S]Ï¯\rs)€ƒ™÷¸OL!Ìe&†#`Áx,ğ_,’ö|cu\"®Ÿ¢\0Ôt¹©Ü/@ÃœÈÍÎ¯[+TA…ºÿJœšâ}ÓŞ§\0\ra®/h¸B\'pÈpPö­eCŸ¦šu CrFÇ°¤XX+Kª¨àŠ¼\rÊ»\0à@½Å‚XD†2¬«a¾W{^şÆê€²ø\0ğ7¿\0 ¸\rÜgmVk%£Ä¢Aİ*H£n®ëÄ>\"ÅU=Ğ@YÔ_ù ¨ÏÁuÂòG&Ny¯ÏçºIÀ£Ğ$ÔFXY€Â\0Ä¶ÏÒ³Íc\n¾ïSöK=Æßÿö B]˜Ë	”ÂgÃÓĞ,Œá¢x*ãœ¶3€‚€?ÆåÒ$«…ºµÖœKû aÖ@ƒšâ»Eø\0\rÒåB|Bgüş7½îh(@Ã©lª¹ŞÃ€„VjÕĞĞĞ2\rrJœëı«å¬Å4÷¤-$`DY×Èæ}åw¬\ZPö±^°÷·{UØ5’ÜjP¡–ªÔ+( „‘\0JI¹\0š†ç)$ éø¦>¤á>ÿ7`ÀZø“võ»Úˆï¶†¾ AAü¸©¾à†òOPÊT.ê•h«vSÜ$°ÎP€—í›Ü@ÈµÈp•L@qëk^—rÇ\rbú@9Œ%áÁ}bæRÀ·˜2sæ˜óáiØ¢GŞ7,àXû(çûO©¬%î;·÷:ËLc)m>¥:7Õ¥\0\r3V´ÆM\"dĞEbq!BÄŒßÿ¦×ı¦\0\rm¤“!c X4ÌS8óİH•Æ‡ÌŠMšœ«Dáløÿ·÷í8+Ë¶g7öFíl§~ÖvSã¨9ôB›×,ó¹Ğ4Ç¹ÆqÊ½¦¬ëj5€z±\"$E%ÉÈ“”¢\0¡«KÉ_f23cåŠµêĞ ‘ûşØ`\Z®©Ìf°%Ø½AR	zkJXNÊÎ½ş 	’ò –·‚ãó‹Õåğ¼z>aTô÷ÔÛ3Ş–gúwDªÄ…	dĞÿóßÎDàoD@(Éø\\\Z¬ï¥Tê„¤I8¬*‰Ëb€•ô/é“Ô\0†`…j6°ƒÛßí\"ø°ë%Ëa\\^S›g|ï·6—¢ñryØ\\n ï†t\Z‚Œ^½¯ıouR$æ6Mx£¤¢°tÉ÷Î†Ú\0\n,zS`Ä‘Ò.b5/·ƒ^»¾hˆk\ZêLˆ%\'¤Ôs¥‚8cAVAÈĞƒ\r´3T)çRlÙ njM™ÂÜÀ9À€ˆ#À!,\0+@RÎ{{wä¤€à\0rK/îM‰±\nrÓ$Ô¢²ˆ™Q’½0w.€\r[ÈsOÃü¸:óÇ4¶\"€“·epÔi 1G€ÄmØ\\¾Ó\\(q…Ğóo,¬õ\n»„æˆ´ÍZ÷“s\Zv4ÀaBÄÓX\rp¥¨ûùã‚á˜úr !®n×\Z°°aêÛŠÎ9ÁÅÂÑ.AL†_ÂdÀ¸YZ/!dèî‹:ZÜÕhJj#´>—XZ ¸®:»á\Zè^YÂ8À½Y	¼±Ø±ÄMBhÍÊpPD<Î1¼Öà÷+[‚ƒbº×ûh²ğwŞí{¬†ÁçLZÌl\0€˜\rôİ.*T~(ö¨¿™7Œ‹Y»HÕeèÓ$Rì*``%y\Zó>V¤n¥!‚ZãıñsÖjÔk\'˜7\0†óCëàlÎæ€C:‰9\'\0ÍÓ+¯ÎXhŞK. ¤Šî ]Å†\rJ{Ë´x°ÇÂ¹\"&¸õ²qÁmÍúr !®-Ö\Z†–²b£XßÙ\0¹ÔµvÄc)k–…¶B,È€òcál :oÊsä€z¼ƒT)ïò¡À†«€#´ ¬¨¬€Ğ6PvÂğÿH¿Hİè&`…¶ˆ=JŠÊ©K~ÃÇ÷:ı9\0Gà;è&à¼ê$¡:\r\nNàX”Áıé×ÆîeøwuªŞÛ…S2>;-\\Ku!P^Ï¥úx&Õ¦˜c ğ‘4	êû‘i(ô\n/»µe…(Mçx4\0ÑlØ(2ÎŞ¥#°Å¢yHƒ£ñ½w^û+¸¡à–”¼\'li	;Û«pm§Óà©?Iso‰~´Ås¨æÔ”VÃ^t\ZhØ9Ğ\0›ÊTF+N‡_4ì´lhÀ¾Ôg/\Z\r¡Àï¦0Ò‚WËä‡PìxÒ©D¿·ÜÇšeP×*–dÓd\0e–¢“a|,êâw±`C	a6œß«,¸ÎÂl@À­\0‚iqs¸0 \0÷uw\0\0\0‘GŒ!ÊÌ{*†À‚2%„P;Lµ­T¦®¥ö•p~Àÿ°ÀùP×”òÂ’\0ø€287îEï¬Ü+şséµõqen€ÅÁ\\\ZÔ9åõşğ7<¯:k0\0èŞ©Ÿ±„1…c˜æq¹ÚT²eİê†1s¥gØ\\è¹lxl°ã3Xª¿e@™ÖÁ™\r’*q”w™m.ñû6l.×œËıZÓï*¯+¨£¯‡Ò(ö¢Óà@ÃNƒLİ)?şŠg2‰ãÛ\ZvÚhØ£ÅÓ®*Á¡àµ–¢L@$ØvMÀnM­ ‚Ø\0¼Æ\"b®®C‹Mf	\\i´Ãt‰©…©\nEZÁ¡’ ƒƒ\r–”Œ^¬c t€¼U[:~|ãƒrøNƒtí\n.àxâ\n0 ,t†b‘`\"àX€úq.=Î¯®¸¦ºK¨+…\rHµ\0Ğ ,e+à½ìpâÚ8şENŸ ûÃõõç€”Q{Mƒsİ\rH“xe@-+M‚@ŠR6•&æÂ,YJr°á1Á¤F0SpF‘tØBpÖ\nC›Kb	øğVd®1û9×{Ç„½y›î)k•/›ï/4ì4ÈT átø™%	FDMz¿Ÿ;.©/\Zâê¶VêÄpá3¼–¡ € z|M\0`9”^àœLO­Dí·Ü/‚]dZv°PJ«µ€Ã4\n¥ÈĞƒ\r ¥ÿ(Ş¨gaØùÍ:\\ÿ\0\0ÀD@€¯é\0ÀlP ßc|D°$­àÂÿ° ì\0-@ƒx|¯	ƒq@Q+J°p-ü«@†\0p½·h @y	h@ğ¬@ƒ÷ãÆ€hÀ=áÚxfeGh 4	İ&‘Àb4	ÚAn•&1Ô½0ô_Ö„,ãw‰2‘¼¥¹¡¹N*0¸ 6—ò7¤T”¨\'?Çcõ}a®Òš\0kš«[;STdË–êC4ìh É	Oc6`À	n½l\\p[³¾hˆk‹\Z@C2ôHó<ØğµÈ\"¢`/„ı•‰MïuÉ<T5dœ¸Q“515qö ƒ¥®å~qŸL,sÏD¹;!èYd¸ˆµRjÂAØş€ˆ8~~şãÿà@_m%±k¯Á¿(£ 3LÀ¿ø»j\0h@0®Ú\nø¿2ÀxĞô\0(§Z`\nhê„¦0(Pcğ;îçët&€,ğ¯º`àypïzo¸oeiàşõŞÔ-CËª-\'®¯¿Ë³Tó=§I€u’ hê`Ãc\\ÃRÇô¡ËOK½›KêÓÌP¢4\nØ³nÅ}¢Æœ³§s²¨(Öì7b#‰>»`aÜÎ4ìh@ ÷ˆT AÃéxp°a‡ı`Ë@æ®Ñ f\\[BGAí§é¡…´!XI~jk¢|\0¬ìƒĞ¹O¯ÿ0†€NUdûXÁ†5@†[°¡<CE™\rû$mB…õŞ±P¡ÿNşá\"ÙƒÄ•rèÁĞ¿cüÒ´œ0\rğx `‚ÜÇ\':Şá8M{@ã\"€ÊZF™¸·¡vşc4¿ãŞpD|òõõ^†ÿª–Î‡cPNu*‘’&ÖÀ	h9´L“èÜ;,†Pv°á±ÀÉ[b.Ì‚ş•~,Áô”Í%Ø®ÓĞ¦¯òœÎÀwW+TMÏaQúŞÒ¶^æ¾ıhØa€9Ş%?eX\\âE:^hØa?p ¡£]F9sÖE˜©éêha¹–\nQæè*Ì]OÀ†—b“¯,…¥2‹¸ÄLàü[^5Íc©¼µÅ=D\Zk‚µÁPwÏØIKàÖ?Nì*{ÛIMİP»JŞdöÂÍ¿tuîª¿€óh0Î<§ö—r¼C¯yó·î\Zı=\rm%û²·–š*&©”éîÚL”aÖÒ™¬\"I$êÏdƒyşûªV6Êğ#.\0Hô‡ÓAÎä„4‡wÒœ »Ì˜Ï&Ò$Y6´	ÖÖ\n²xg÷:WXÆğ €Üx—úƒ¬,U“AßYè3hJÅZuù¬×`´ÀBPg«aÊèŞÛÈ†˜c áøFy:‰©8îHî5)ş~î¸€ØZ_4ÄÕk©Ô	Í•Ë	b9ı BG!ÖÊq¨5\0° v¢².ª¨V	¤?ÄÒƒ\rK©2üABwe2¦˜\rÂ’¸eJYèÆÓ³4Ê;Ú\'ö6¤éB ÈÀ)\0(ˆUwåk‚&œ°d	W°‰Èİa	 \0\0¡ ë0”H“ ñ©™›D¤ƒµíœÙğ8\0ÆáØqtXf;§Ëw6—80Šô	Bá¢eû*À©XÀ\rs\ri•º¶Èmóg=Ş†\0\ZNG²úÉ`5 õÂ\ZÜz¹¸à¶f}å\0\r¥Ò\Zæ¯Ô5¶do©Z9İu×ò¥ÉÇôÏ§QjÆ[Ä-{ ãªqİí_z–Ğ÷Ë¬‰>E‹…¡ËÆí}ë !ÅÚ–œöRÀ°^å:°ê ¥çÁ¢»ßÖ€m—åî˜6ô®i\0Fj]ØÁGH„q	lÀ÷å¤±üğœ}š˜È¿ÖMƒS´æÚA-/Â”~wü|eBk}¦2\n‡:\r\0¥­×+]îF§¡³¹\0é6—¹uÍö§\00g3c!XÍËl!¾áÅÜº«q|Ğp:¾}b7İwÄÛŸºË–ÂlpAÈöí—Hlh°ÜŸŒØ\nĞ€I+äò,öi¶œûX—…Ğ½\0¹ÇÎ¨eI	Ôí@a¹Æ°Œ,ç=ĞÇÌ€=CÚlgGYdP1ÌØö.Y¾g‘”_ Ø°n°\Z¤?Îq°c2 \'\n­`ƒ—Ñ4‰3½Ã-fšîƒèÓg·Œ›cÇòµË³nÈÂÜ±ÀçÅ\ZÏ†ñ¶DÊÄ\'½—«l.=\\›Õ¨Gœ“¸b]m¬u]ae,Xæhœ+†…ZëY÷x^3Ğp\"wX)}gñAÎƒå]tY|Ÿ¿|W¼!;\"O’¼X‰‘ìú1í@\nK ?¤[|K™¹ö·ÜŸå\Z[\0\Z„Úvy°LR7©FªG‹0ÀĞ;/X&\'I9HKP°Öc–kÅ¦‚ŒÁeAt Cç­ï.±Ô~2Ç‰ãÆRÙ5¾ï1Ä©lXh1±\Z€\0Ø@ïsSax\0âDbX@«`e+ ¡Èuf\ng1XÆä½•#0øWĞ¶ås‹½%@\Z$}âjsI)-ïmË×æ\rè+ĞºL„eÃ¢$°ÖõˆOCİr=®uo“@œo/,ˆÀÀü;%Ÿ%ô9¾ığ@µ!Ğ\0VI\n›Añök¤‚5–@Ş†¾]S4\Zbâ¥@“Ù†4†fÁøÚªW`™L =L÷¬†e uúßÿµÌd?ÏlÀ9Nğ’f:ãÏj)\r[îRV*€\rØı­ô=¡aJO°áığ§)b`¸M“ qÓõ+¥RÔ`1¾ô<U¢MZƒeÎ)QsÜÒœ;÷}s†Ó/Ñd Á×ËY\\qnu\Z–çÓõ¸õs\0X`}¤X@<\nğ\r™Ó7BÇ¢¿m½®¶xĞ€m›\'†lkğŠãR&?.?È(¤hµÍ†å¼ıòÛ`í~ü,@X%ê6h8ŸˆÖH“‚ÙÒ“Ù’5$‹%2†“£Õİ\"7%$&u\"Woâ^ ²&È\0[Ï¯YÙÒ›ö½Š_Zµ>b 6ìÆ‰¢Bà¿ö³cÁìØpzLI‘À1›I“ g®hyªÄcƒ·©wyL3’[ê4Ğ\Z@ƒ°\Z Ié8<»Í%6X ùW*Y…üÿ‘ívÍùVÒ^‰ÅŸ¡G3?RÙßú4ˆ¼ql¨‚â‚mÛ D0sg\Z S7¡²1@Ã;í4Ô\0t\"ä€9°ÀG‹´ô…°€Të{1Åñä•›2ˆ˜bŞ.„‚\rK.9‹,`Ö^Ä¤Üo_ÿå=¾yGxí€ûI¯gO¡¸¦QÀ\"2iïI“¨¡Å\0ÆŒ§J<È€¹s[Î|Â¿\ru\ZX_€lj\'m.Ÿ$í‡°µf€…)Æ”y3õî/Fê#%å·”İïĞ1¬Ó@Ánn0àÇ§Ë9‚X¼{û¥×}‹~ë@C\\{Y¼2ÔËÉåÙç¦/LM!P£TJˆu¡V\Zàñêõ÷*m´á6‚úk…€\rò°cÂÂjˆg4tiØ„•^Ë4‰J,<Ub‘Ö­;Å)Â½%ÒçàçÉ`mÁ¶P5øİ$1ÈJ©(]g[8§†2°€´|0ìV“ÃuNNºg\nØ°]-´_ì=\Z°à<^hh¨Ó€ô‡tàí÷êí×°ıbÁ\n\ZÊ\rpÒQaÕ”‰(æ˜! „mæÔµÇ F	\'‹»™]¡Ò\Z\n¢›¯ñ`i›yŸ–ûZ*ƒ68»\0°”w°a% n³ @¼FÃbÌ‚›„È¨¤Ã€çª Å\0€ÁS%¦YS;Å­wñ-ãµL®Næ\0ïÖë•.wcsIc€\0\r°—½Ú\\\Z–KßWÉó	° V“éÀÂ½@£@.Í%¿o­ëQ²]Ö:WA á»Û\\6R¿@#‹uZşî6¥qk,0Pºü£\rx>ı¬‘:çœ!+¨ää4`g>G=ÛrŸ\njˆ³Dy¶3¶’ \0Şı(Ë6éÎ½ò¢ÅÒv–2Kº¹Š3¾OšÖ°æsO¦PPİÇZ\\\"MÇ´v“\0xRC‹ÁS%îËNñvñsÇ£v„J6[ÛøïA…«NÃïŒ¦T´AJ´³\'¯)“µæmËYªLëşR¢MÖ>GQ Áu\ZÚª°sY¼ıÚ¶_,ñh@ƒ>O	P!V£l±LìºRÓÜy4çP?cî‘Á€\n COá\'›\\œÿºSdÀ5Î,™¾ œ{öÊdàzÁõŒG‰EÔûlX‰Ù0f\0dˆĞd@ª„XV¾4N“C5ÁS%>Y8¸Û)î-ç—ºGÚ•…®QÎ¼`Mÿ+1N£îm.ñ]Ík¯qî\\ÖÉÜ:‡)…7f×l¬ëá6—1ı¦(Ğ€İÀØ`ÉË—nO§#Û.\nSß{û•k‹5úu*Ğ€@N%>sÏi¹¿á=LYq–ªË)8¶h®ßš@ÃšZ\0}ºAY&@ˆÊ¨¶š¥A\ZõåL»xr‰/gg6Te8ŒÒ\'.”£}È@)—‰lË»¤Ó ç®%$úì©¢ÆOlNKËmçã\Zº-Ä)Keá•l¶¶-Äû*6—Ği8?œÍ%€Ò0hh¨wî©ë¶î/KïÄÖ¾/\n4`7ôãRŸ\'>ğÕüò°ÛlN½Şãë½EYùPğî@Ã>t€ğã”ˆj-”¼O(¿;ºgòlÀbê¢&s¢$ó ¦ÖCL}¥–]ƒÉ0^°Ø°ÒÎş¦jS\'°“y-Ü\n2@åYğ‘€.ôÁ­-¤×¼q\nÊ›;M=?ÔfÍŸ†ZĞ@ºĞg`¶¹¼ê4Öš}¬ôµrY\'Kƒµ¢xBB¤¥ëéQÏWhÀúøöÃÕ†Z\r§kşr\nĞàí·€AA\r\ZâÚk’Ñ0ÁJ\r\0ç\'Å«Î@æBÑzo-@†ZBxfi8…\"™±ÃÃÚN±åZ€ºr°¡>Ğr¦À‚™	ÄP01:\"r\r™|¬\0á®Â>*´=šz~îùòî;P€4ù¹Ø€ßÿ½{pM]®bç9Kyİ¸±”-UF€ºï4ĞxdGŠ\rp>h±»ë×” ëø&ùj©@ª½.ãØVõå@C\\;M\rH9R;Ëš©kï ‹şÃ·Õò×z>OR\rkƒ/©÷9u\\KAgg6T	¨Yà\"b@v–\05™v?[‚µ˜.Ï*1^È—\nÚ‰ş-àKú\\·	T`palsù\0:\rœê“·A07\'Ö:w˜%*Öœ– ÛËüßÏ\n@ƒë4´\n<q]Øó‰\'mšû„BÆ¯-ÛÚ†¸¶š\Zğwvœ¨(Ù¹>dx~Ç¬5ô–è‹5™wZã@dr¹ÔO*ì^×ØßË9Ï°#!G:Z˜çÃW*ßØY¢¦à£§JƒÑgÈÚxøşºÛ`‰™UÊ55ğğƒŞ²q~ğ7c=µ^:›K®=šÍ%Ï9•˜œâD•—Ndí\'Z)·\"4b4`ğBŞsË\0ìÙ¯=•sn°[æíÀ¶êo4ÄµÓĞ€ïÀ\Zº¶ÄN<SådPOóÚ,ƒËÕ²Ôı/g-&ƒŞ‡Ö§°Pâ%Ò.–ê£Ö÷%˜ºÚéhdæ™‚Î¾— ~ë÷	—ˆhè»c—ŠS\'ª±<Ub6ˆ)´í‰ş\r\r°Ä}åáïïï¬µ„Ÿ\Z‡À8ŸÏ7¸XÇcÉ»o§…0es	HIŸhwo95[®R»±Ht¥fq\'l<XûF˜Õ@}ñAUsÚ×rlqF\Züxxq ¡¥NÃ5‡Ù,Ü—Aû½zû5l?+pá@CY Á†«ıcînQ_-%İ™‚ƒZ`ÎûşóKön—un2èn¼ììÙÁ†½2\ZJ€X¨Á™!\0fY,L•q°!_³áNÄd°°Peß±[Ûd¨g[é©Ë»„ŞrçÑiØ¦M\0Q4@Õ”`\0\n///Ÿıõ×ç?ÿùÏÏoß¾]5\r>?¿|ùÂÿÇçõõ•Á‡¨¹ŒÀŒœ±0÷ØrUM}(074¥\"÷üku‹t^Ùª¯dmØr¹Î#±×ÛBºÍší™s­\n@	B’{5XòrqÁ’¥¾Pÿi ƒ¤[xû•oK»Å–q !®\rôŞÓb\';z?ÀØv\"°ˆ:1`-÷¢Á¨,Bë{K¯2„ëóÑÁ†R ƒ(³ßö9òA‚\\¦DÅbAaÍ@†Šé2gRÜvW	ë‚ï³e^˜+Ó:]@ŸõX\0ùn<üÍñ÷ÂjÀÏ×¯”>Dì°† ƒ2¬uÄc!9zXë¿F¹Î}Î1A›Ëı8®„:kº_Õ<÷°Il%N^xÆ\ZıàÑÎYhğ<ÿ¸\0(6À\\*FB– $1\"–®áß·mcÔ¿\rqm0)I©^b{ĞY(aZ1ì¨0œ4Æ»Ê9×¦H0ÚïÆà÷Ü¯yMu(–L§Ÿ„A­ÛGÊ€?egi\"W¹Ø@b„ƒĞ‡;7é€>Ø˜Ğm\0 ºn+ÑGO•Xf¬$¨¦PÎÒÊ¦êÇJ©×ñÛ¾Ó{ƒ\0ÿú×¿:pë¡?ÿü“\0\0>`ÅkÔh@¹ÖÀK§ÓpcsIÏ@ÿgVÃl.Ñ¾cÎo‚ÖY3©ˆ¶ŸK}í€šGñŞ‰¶×T–µÆ§áuª\0\rĞğ@4.*Y_ĞXPt/…Ùàí×®íbú\rqí4ioI–¼2Ş\n¨Æ,PnoÆ:„·rı¾ïYXIğ1¾^‰<Ş0ˆ\"2VÆ¯´hÕç´¹{ŞK£(2 ?vd‚U\\.C³;ÑØ‘~8@ xrÈ€]1s´¤Kô Ãk¹îÚªÔ¬+÷³SÛb¡º&;™ã/PtÚÏt,Ğ8=¢Ó™Õpa @Àü~<yó?øgV•·Îåíu\ZŞzPájsùqÍå>u\Z°6Ïåµ´°¶õ°€ûÄı£¯‚u–37Ö~¿¶~ş*@Õ â4yÙ¸ i©¾d‡6ÍyB=ß¼ı6®Óà@CÜ;3ooyÿ¾¤LX@ğCôKŞ½¹¾“)çø‘*šhp¹Ñ0°Ñ¤jZê™Bé\'1tÖ4fC¾‚{éç/2Äõ¹ÌV‚§ ºF@ú(çDĞÀ¢vdKi.Äd\0¨ÛK·[Qì×ªÅb`+OO•HòY 1S\\¯fºÀ…ºË¸,Î\0ÑÀÂpWúš:6ƒü\\X‹š\räôÁ;‚Ÿßÿ]€YµÏk/s¡Ø[Büÿ^ŸòªÓ\0\r‡­•Ãû¹£äöÙ¹¶LMU6„öUôÛ©uÕê+÷Zhà<Ú%\\\n†ıû¸@)¦¾N?d¤\rÒ~¯Ö~§Ó‘€©Ÿ¤\rñ)ìÈvÄ<ï3–u !îı™µ·DA¦,†Xˆ‘&¨`Ğ¹Û¾´0êƒÂ5A†ûô,v-;æKÏú~®>ç&Ğ$°áš:“rŸ%aÁ¬+53g‘ ©3ñ\0J9°¡Îî÷ŞÁ€\'\0€‘ +ÒƒM\0VÁZ@CEÛJØ¢BDAUN?öcKŒ½¥ÒX T Öx<-\0,Œ©ï\Zà¢\n6@k!€\rø(£)Âh°[\\nA ³Ói ·‰³€&vÕø7³öDÙ±njj)ˆÆÖrjÆÎÒ!ø%æË(ÕõÙÇ—RÏ_\rh@ ûŒÁßV@OĞpªè#µãøöÂ¢“,ÀVh”ï:ËA´\rËu4|—Ä Ñ/‡Ö°1$&8¨,O\rÌ İ•Xâ–‚Á:L†i°5JïRp°=SŸKàÁ¥~æ>;w9‹¹¥şµT÷ø^˜\r6ÔIÈ@`—§ãnÎ³ØP!EBŸÁ]%Êé<„÷bæ-”å]à„\0‹mk¡{IDj€|\\\0›áû÷ïë„h4»*2O¿ğb\'CehV\0\Zpèl.w¤Óbİ¨El»XÊs°¹ì±Ùìu~:ĞIóuj_µWhp†– RWÂ’\n6”ô‘††ÀœWÁó÷†2üZÖáÖ¯í@CY @Ş›˜‡˜è9Ş›“…ø%Áô…‰ÅhI\0EA”;ú¨x°Aİ–Ë¢\'¦Œ‚zí%àjj‚ëÔ¯Ñ‹ë¥ë‚bXy÷6Ø‚7kšP\Z„)]BAVŸ6µR(êÙVzªDù=X¹9ï<ö4~Æï|3`a@sáš¡éH+\Z¤\Z0“ Ãÿû?Ñca+Ìa}w B }bo, ñË3_Îé+ôútˆ1Æ:ahÊüæÇØÇ³j@ƒäù{ Ø*XE:Â{Fú?œ#åş¬QVÕ\r|tíÀÇ_ÌzH¹ş³ã@Cy `\\[,Áš€Ô¿#¼·¦.—@®3ÎÖ\06lùUd\08SŸK“}\ZØP^ÛbnÕƒßoÅ±`;vsRp%˜\r6PŠ\0A\0 èh É€áœÖE\rVCMÁGO•¨¶k˜ks‰ñ\'dÓ\'À	ÿ^S!†ë¸Ô1¥èqH‰=XÀß\"Ò%BÀú\Z™³:\rWM€\nƒ”ô	Ñnø¸PúÄRXï`Î ›3EûÂ\0Œ:súµ¤C\0ˆ[Z#ø÷vÀ µ®ª\rèXÇƒŠ-ƒŞAHi¿×Å@`Êui,¤3)†@DÍô–íRêÚ4Ô\Z\06¼#Ea&h“ ,ìö°4§°x1h¤¸¦œ?2@sbÚ\'º¤…¦Ög…Á–Á^¿L\n¤YÁióoÑ»wK‹½2`ÃÔ®üã§Vˆ…_,È@9ÆAMf‹Òk¨É<ñT‰ºùàŞÒ{=ü^t	ˆmW¤Xøãfƒ(æ|{/»	Jè4è= \ZjsI©¥uÆV¾`5ÀsRû–ú—•¡³•úy†û¨4  œ¥‚*?O\\P…úB ngÜGBœq\\ïª¯ i!}…œkŞ\0\rn“:ûş8Ğ÷N,i4¿?ŸŞuÁ×„ÛƒeâpY´HÒ	¦YS×ÊÕi°\n1–\05–„--õ¹Tf‹`ƒ¶+ïÎ8’,\r:/-ÀR¿w°!\rÇ Ã»Éğ~µ8ÉÌŠŠ‚*Q`Ğ1YrÆ¹dj3OSÇŠ-#ğ¼†T†Ò¦€ë„h7ìh`¦%145’ç=Ş¶­bûŸŸØ}Kkÿ~ñ	õ\\h(™çï@C\\P…úBêÁ’Â(€ö;K¤A¤¹_¸NÃ|›·\Z È4÷^Zîïp8|êåk¾ç±@C(Ï¿DĞ…óZİ\ZÄ.sšU07Y¦ ±b„1š5´\0¬†-\rBWîSRÀä˜³æ\n\rp‹}¦ØE›–/Ñïá2°w×ëı¿u ƒ%UePÇXÏÏº™Œ8?Ä\\/¦¬»J¬·ˆG\n›%Õ/õİßóq*ˆqòôÌ1[p»8ÔLÙ\\â;ë¼·…r,¾xMÁ˜Z³0Ó6f¶PG|U,@k~îù@\"Œ’W—èuÌ9>õºıq®ÓÈ‡‚w\0Ã\0?õ÷g\0\ZÌ‰í¥ä2O»“SUv²‘ß˜s­˜@4FØrxOVĞ$”+õ¹ŞîLL}èŒŠ×–ZpOG’Š2-ä8PgÚ/Kİ×ÒyrÁäŸAÿ­ànáÜL?\'v‚d\0Û [«EÕK“¡®à£§J¬2è8œ«Ó°ôîïé{Ñ¼ºˆmaÈjqœBr3Ïg0sæl=öÆæ’Ø{¶¹DıçùEjëÚ@>Äf(µF+Ñ~ÊŒäêCĞx6B©:ÚõÅş½zk\ZP{½Py×i˜î;Æ€\r}ı¥0\Z†ìƒ9·‡ÔÉd*¸ŒeL]”ÌMä)Â–7`èÿĞ0Z‰ÅhN¤ÖídZI¤³„0Öİ°ÙzÆxN÷‚]#¦µxM©µA†RÌš=,Ø@º\n\0!æhHR@†;ÈÀ–¡ CEÁGO•X`è€†‰4?ëx¼çrÊZÀœÙ‹\0Ş» Em¨c£Çé\\¤ÇBW%Åî³ô<Õ\r¤Ë\0}±¹Äûß)}bG6—¡ºIÇBíÍ@m‚Eké6óó…Ç@b4”î›\n*á>P*höóÄY‚,êX·,~ã@C©÷>\nh š÷pÒ¨9‰1òKeÌMp´û=¶˜\Zïä0 ™©Ğl‡LÑœ(=‡˜\rìï=ä—\0pnKîèX¥û	\",µVÁAÏlHc¢\0l˜uTˆÚÙ¯Gÿcœ¸mc@†@\n~¬×‘T‰t¡ªàãJ®x7j\0¾¥Ç—µÏ‡à¸ÚjL‰½n—‡8A§biÈ©fWm$qÒg‚­\0ã>#WP¡³¹¼°ã„¦T¬İÏJ^Ïªït, \rãøcU&dÉçŞò¹z§™+hGïI‰ûı­65‡¥?O<Ğ\0AÇ¥`~ú{\n€2R/Ò¯Ûß³ë4<Ğ€šïxĞ€²ˆJ²–s¨B¬]¦åÜCVÆ8@í‚ÆB4QKœª9a}Vk¹!Ø  ÃØ€Åpj\Z…2ì÷¶®ÅfÌB_úTêÓSˆlØH`\rö§ÊIŞ±Ép!&ì.±ci½n–CeÁÇµR%záij‚¿Ö÷tKåğNÆ¼Ç{*Û›÷)1m€\0u«ÀBè9:PÁ…±Íå¾t\Zî€ÇîÙ{A`ôkræ›˜>ò,e‘º{f-¡T@{èæ2Æ«ÓÙRı–C­·’¾#”¶`=™ÃJhŸ>á:\rSıáÑR\'¶4¼“uëÒ\0Zê{ö#¤>“U0w?˜¨‡Ì†Üœû©kMé X,JÕ©å<¼Fõ>d2”–\\#bë±e€Ğ€©Gd°i2\\_É\rŠú-ë€uÁ¤ÁÔdC¢§Jw·¼ãÏR&×æ²å¸2\'ì×¥D€ùW`ÜÙS@zÛ\\³ár~ßµÍe¨Şë*ÎÂ2CeOíØú^Y0–@6lò›ë[P!üR™kÒßÀ8°\0©eğ0°D,<û¹ìàÅ‰‚%Ù	Hc6œ¯bu©Ç—8Îu\ZÂíí@ƒı=À˜Ëh@ùóŠ¬†5&£l¨GA¥j”Òœ(YG`xg9.¡“ğÔâÛÊlçş‘X	ÕB¤íÒ$Â)6÷ùÏ©í‚÷kÏÌv—ˆh÷(d`0âƒlí>5ëU]%RÛİzÜœèéØ¹ÅzÎG-Àkïé²)ÖÂ5%âÉ)òÌz\"I•Ø\\^®{×iĞN‡p…Òc˜_\"ê/É![Á,–²\nı-Zo	^iGúğâ@:­\0’†–ŒQ&[\"ÒŠhUwk_NsŸáı8Ğ÷N¥\0\rœBA´ÅÒ@Ëó±Û<i9ö–{@ƒ‚økº–ãÖ*ƒû[T\\Œ ±iŒÀ.BÎ3¥:zX1eJ2Æõ±W°}Újay“´T²¥³2rD«‚”ò²\0;E§úª€\ryÎ<9ïç–İ»Í%ÚÀoMVß–ÚËz/³6—µ6±ÖÉË‰¾GWğdk«Æôø*é¹õıÛé\0Şº‚Ç\'\n×L-×cªf\"£éœÔûuÅ’ X6=ŸË±d	8ĞïµÍ—Ê#aO®[KP`bÍŠÜ}KÇc¢…wùÖb+jc\nÌ\rS)¥Á•qÊK@P¢lMAûë™vë°KnÂÛ–H»|äJay>	REëZW®‘*>óâ=„à–Æ¾V÷’ªä_bœÈ=‡€Fß¼©ÿûºOH²¹t°¡ÅûÆÀm\n,RxÎ¤¸«Å}\r¯‰y*—å„1%÷9~Ë¥Ö[I×iˆÛyµ€1e´[Ú)\\¦ $À­wĞ7\0Dß^>ÅÆƒqKy\ZÒì-Çì‡ÚyÈ¹¹o³–è¡LËÂXAƒñdÍ\0l å¢4È íÊ»%lË¹n\ZÅ\Z Ãl°â­ËÀ2†É€àé#dHu–¨h])‚­ÀîŠ}GU¤5—=ôc(3ÕV#,ã¨µL‰ æÚñhP†±Í¥¦Tì<}b/í…TF˜E´OGÏÉ[èË%XNüœ™ì×ß°æPë-,v1±—-L€ÃZ)‘>Ñ¥A0°ğıL\Z€\\ŞÖ}[[€\ZÒßÔÔ	=n/¢ßgt`Åñ+»ËºğE¹1Ø\0Ğç¹·„+E=ê¯Ø‡Ş_7æYbÊ®	2ìl€%@†÷e‡	?F3´X¿¡\"d-W	ôéãi€\Zë¡l,Ekí±¸ÄfÌSìtZÙ¬öM†›ÍÚõ½ÆõXÓ¥Ói€ûÄ\'½ï°¹¼ê4<˜Ô\Zuj½ÆM:KÒ·-ï;8R´ŞëT¹\\–¯w2ÇU\Z*[\"È=‹¿µ\0:Ç]$^RâœA}ëøFêã›ƒ\n:4ÔÍ\ZŞOû¶“Ê°ö|<r\'vZS\nèºƒ\n„„*Ydèq¢jæ<‡õù[€L™§sĞókÎ©çî@²§üüŸo³v—Àîr“a{¢k¥J0ÈÀ};HÓwp‹ûVc¥:tXßóåîì)ÀV\nYF²+J‰ÏµªÿZ×íl.	TĞ\0âHáë’Rõ>—‘Ô—7\n”Ë„,¡ƒÃ@hëµóğAßßZğıL÷“ÃZYb4H\Z´®id©éN#ñ;ï4lh`aHß=ÈÎ×+µ(°GèÄé ƒ.0ÙgËÛ>(Y¥n\0š”xY(<g#+9¼c[Î\'bàÉ2X…SõÎÕ;ÖL•À{AÇ\0Z÷.’‹u|x´r¹ÅR@ÕB!g[æ€;DÊ}hû=Z›ä>ê4\0Tøèl.…Ñ\0¶C.µ=÷şö|<ƒbÆtˆ¥wcüıÒ\'0¶ZYS›,¹‚Âh İf±ó²¸H¤•Àß3ö[{Vè $·ï ¤,X ÑÆ_$ÚèiEúv,Ğ€4Š¥k4”Ñh²!ö<©>Ó½ëî^Î$N«(M«`aÉ•ƒrOlÎ˜ÅQ+&Ã¸_l°²R\nÖã°ˆ‡\Z¾	d  B˜a£¢k¦JÈ€µg>Ø‚Ä.Â;ù¤|\"Ë\rJWÛI¾ÆÂ˜—r2ş‚òáŸi®ZzV\Z†6—>.WëK×iHî/\"]ö}Ñ±Hô\r~&ßÛR¿°|_\"*0a Ÿj½%€uAÈøî’`E:kåÊVxıâi•-JhØ>£€ÃÙS(šNœ–ÉÕb_€ËŠµ¥ìè--¸-÷›RFvË-¶2h]ØĞÖ]\"\Zdà…%åT/h&ğsmPôqÍT‰\Z@à=Øğ|+Æ£\\vÈT:D\0`	pî®ã:“s+Ø4Ü§O¬!Òš2Gíá«UÊzARÚ:â`ËIIÃsç&Ğ€İi`Z†­u‰’ù£uoa­Ó \\´±ca©O­4,± ¬ßóbÖç^o©r¾ÏÕhï)6—‡k¼”ÅCÌĞœ†îÏˆkbÑ*´³5a`Şq´ïÅ’.Ae¸¬dHÓc`ÛË\nÂ°…«ÄZ}‹ßR}w>è9wÇcõ¬é1ı#à„rEËTµ¹¯½–UM€\nƒÄO¯Ó€ô	·¹Li[aT•ì‡ã‘êÆ¤ÜWÉcbÇƒ{&\'!$ÏĞ\0\'€TÁvY^V	Ør‚‘G>öµ\"i,Úˆ4ÒÑ€CÅ#×Á–ŸÍ\Z˜ë3X\0Pê„å8K™g\Zà˜Rr\"ğs•.R¬ñ²À†ÆŞï¾Ã¸>â±l‡¹UAß‰sfR8Â\02 ¥B@†_‹ €0Ò@€U@¶®\\/H©Í6º]èÓ\"1m|…n‚ÕæA@K:Dl=*-;¢sz±ç}Æò—¡Í%½³4pnçHñ|ìıÀÂ¼ÉY#ğüÜ8(f<ë4Ğ8š!lÙ3\Z(Ï>ÇÑ6@\'`ËŞ£ßÀ„ÑFu–IÛ”–aŸs ¡.ã©$£ÁS(Ê\0%\n]@šh_™³ˆ`¤P4 GN*\Z8°ç÷‚UàÖA†°¡R =Ş¡\rqÂ.9G,¹KÄ€|T¡R\nÉš©hK€5©Ê“‹d\ntK5[?WŒ>BÍ]W¶+\rEn½ş¶xdv Ò(`sI egsé@CJ»•H-˜[C”°‡Ly®á1XŸä°6rEZ{ vèõ°€)e\\§¡mP‹]X|PÙëó9Ğ°/ Á](¶6äÚWæ‚\rØ±Ë¡Æ.$p-u\níàê\n/ô\',÷2ô`ƒA`±\0ÁFNp¤Xf\Z¤:K¼WÑ©PW‰Ø~—S=é9Õg™e“û>Ş«¿ƒqÒV”-§îbåà~®Z¦€Å>Û3—ÓjJ§€Ã3×MÎ³ç¦„…ü~Ñ&œª¯ÿhÚ6`>æ\nîb“:µ; İ\'Øº«^\nnt¯A ßw[äêß†ı\rïB‘<ù¤NZããJÙWæ76Ğ„^ê¹°p„ªøxÉTÏÃßŸø‚6v¢ÅÍøúJÜªúï\rdXlÀÎÏù``2¼;A†×y!ÇY‚ôjˆa®í*¶³°krß¿0›BfÔNùÅ¥Şç5Ï3„TmŞ]¥úà4bíğXâúÅÆìÚm|csIlIŸp›ËÜz—5D\0ÚX u‰Åí/×µ!÷ùTx7gŒe¿Dw­[ ¡²Å%R3N×\0x† ÙŸ1˜q a@§P¬˜ßœ;á<Òñ5UëS&ä’Á;Dÿn.8ŒÿşA‹L\\w)˜/mJŞg‹şÑÂeA¼Ã,¦KA†lg‰ìŒq=­*! C˜}“òÅ£ı¼$ø×¢¿§\\“ÇFŞ8+r¤P1°@@hë|ñ”çñc„=Ø\r”B}\ZX÷Åm.súˆ…HàîX—ÅüÜú½Ëemğ³&¦ˆŞ\0\réˆv=B½Î¿ÎhØ\'Ğà)ë§P¬)(Ü=<ƒ¦-ŞèŸŸıõ×ç·oß>¿~ıú‰>†ü‹ÿãïøàç| š´I!»6bWœº3‘³˜+u,T×0—XïÂ\02\0„`&Ã‘¶  Gô±äsé¹4Ubm<fˆŒØ41ïSjYİEÌyKõ×Vça¶Bâd«{öëÎÏ¥âjs:›Ë\r°¼ëË-Ô!§IÑ»€k@Æ‰%È¡c\nû,¸*Œ…¥qŠƒtÃ]³írY¢å’¦usËh8Ò^™Õ\0ABš?hö6oc\Zö4x\nÅz`ÃZö•K‹‡©ïû \'Mœ_p}yyya î.\0ğáı]ØøÀ‚Ië…­¼ øÀ‚úL¢%‚rh,\0<ø ¦Â›áı@;Ã´C_dx”T	ôGîkM@€i\0ûÒŞ?ë»äåÖó½®ûº‚\nÊzëm.××i`1EfƒËi9Â¤Q\rÔàtí6ïøwéFĞY¸â­0à¤5®ùŒ¼!‘iã™šr4 8¼·@´³,ú.€zĞşuöì@Ã’]fî{PÚub|>O¡¨¿ğ\\Û¾2lË¸º¤2\Z˜K~éÿüç?TÀï\0\Z0Nàox_ğƒòk.X¶r-,®á‘6àÂƒ{ÄÈ\0íìÒÍ_/Uôñ\\E¡EªDË”&^Ğo€¦¼•wÄï£şœ´vw6—4î_Î:K\ZÅ¿¯¬†º\0ïşØŠrıÎ~xw?58]»^Å¡é*à¨éWÀ$u ÇÕtv±Ö6hrÙe©cëĞ\0Æ0H-ƒuKÅçœsÃg;Ş†º(µN¡ \n£uà÷rñ‹@qFŠßQÈ](¤¯AOJ;‹e™°\0.üúE9×Ädøı÷ßùo`<üñÇWFÃûÓö9âõ\0@Áı„tÈ@.Ø‘ú˜ºVèãGyÑÇV©ØİÀÖâe=jÏ”÷Í‰‹½ÎÚÔYØæ’\0Î‹:R”\Z†i·ÀÂrÊ\0æM\"2R	kö3©eqT\0\rÇ”9î˜×†Ru€{Èy.fª$¤€Ü\rÇ_e÷€Ä_ŸÇÃ‹§O{äÙiŞù6w aÿ@Ãûi}êb©Ihçù @¦•E^Ê-”ÉoQÁ‚àñÏ—/_(Uàü‰õçõõõŸsÔù÷ĞÎ1÷˜6€	qÂ¢É`c‰2HL±\'r@ıœ/Å [¸J ½L´z7Ùqåpï¸Ó¼l›ÀÙë=¾Ş{PÚò£é¥6;˜µğúeaB¢‰©\"‚µû†ê¥Ìí±Ç°,±\nj?ÓÜù…µ‘Ö\"$Më™„qöÑp€(†P`j}t~:hğ>pÛhØ?ĞàÂñ‹¦Ø‰;:­šØÅOÎl;ià,ñ¯ı‹AMŸP€,¤Pàé`:@Ó!¶­<Ò–b˜\r`\'œ- ±d˜sºHL—\0È&L×\"U‚Aˆ¿1“!}›ôn]wLŸÍ¾òÑŞ_¸y³0.Õ±¹Ä[[äÔwt«:\r,˜ºC2Çµ¡ÔûÁº9Ï›šr4/¼ĞSë\r®Óà ƒƒ÷}À†Ç\0\Z\06”šü<áØ^À†ŞşÊ6@àBâ„ªÇğıû÷Ï?ÿü“uğƒ”	ü_)Y£aün0Ø`ÜÙ	ô–4 Û\0ıQzŸJÏHb@¡©-ÆÖMÉÜ)K`ˆ\nÜZÍ½Eû5ãóG«¯N§m.…‡KÛ\\æZ\"ê{½UÕ“IbÉqm(ÕK\0+)my4 \0Ph@ˆš6xpF\'ıì]r¨á)õ‚-©Ú–E˜\"”%»¼¢Ù0C~£ÒO4}ü ]âJŒ%ÁÂŸİî•şì‡R‹G8Ïù}ypºª£ÿ¹2ÛXrïdh£\r&Á°[Ş‹e:g—pPy„÷ÎŸ¡ş|7¬c?	dKKÑóù ¦˜W%m.uÓ9÷İ²NÃš iJ^òİ²ØxÛºsŞ\0EHË\"‚©÷\Z*[\\\"5ãtøå`ƒë4xôg4<£ÁS(ÖYxml\0å4äË\r°ÅòÖ{“*ı‡¿\\8’Ã’Nÿ¿_(n›ïYrTò\\S`ï¼x°ÄdÀ÷2PÏ²	HúöOyÑÇV©h/f† VÇ1ı;ôÓA6j‡’ïŸk?õ¹†Íe	KDÙq®-ö/¤Ñå¤ÄŒ_¸”ëŒ­Ó)–Ê-¨ \"lWJš˜;¡{­Y áøFVZ\\ùõÒ\'o?<Èt Áû€\rÉh\0Ğp¢4´ÔÙ³/ø$?<Oä(f±°TV4„½ZÀ0³ÁJ‘ÈPégoïègè[c°Ì€ÄTX\ZŞ´¸¢ú)Ó¢\0#\n‹>¶L•`¹¾@¶XËXô>Cÿ÷g´Ï{­+Ì`/@ò£³¹FØ%ÚØğ©¹‘Hu„Áúa­±ŒS)I¢eŸS‡Äø`*@\Z×9½¢ğø\Zf4ß©®	4ÀFÓ©ó>á} ïÎhx,FÀ†³»P¬2©ÂriM\näÔ‚j¬~?\r6ĞÂ‹À†+@¡CCÀ™\rã…vû°ÛÏ6–D3†Ö4–@h7`§¾8È`Ğ°h1ˆ-\'¥€Ğ3µX¬N²oV\\J=jQ~ÍÇè·ÚÆ\n4Hª„¤Ú]pø¸\\S*Né;ĞÃg~tNi.^Ú@(ñ}ŠUéşf	3Tø±Šõhh@ğ§;DµÀ„tÁA†}k4,µŸ8yD†¡^Ò“…Ÿï~‹İ}ìò¯­|¯N—  uÜ6s`Cî½v¹êõ)oÙOñŞÙÀ»ï\\(ÀD™²›La2XÄ)­\0ÊµL•èX©V\0†×pûJè[%[½ö\Z6—¥t\ZÜnµ×Ø¤ĞÔ„-×C­ö™\ZÀ8¨2à¼˜8NÇƒ³\Z<}ÂûÀµXs\rğ‡BŠS¿ãœc@Àrœ¥Œ\rÿù\nS¿¿{\nÅjĞşBÚµ£)A\'î)°¡Ä}õ`C™¬Z‹çE\nÄ™R!–˜ÄÆRXãOÈ€‹BL†Ö© Pç°oRû¹¬¿òÎ[‹şã×t€cË} ·¹|Ÿáê>ß‘Rô‰üMŞõÎ°DÔwÿÂ€ïË&ßcl”xÆ\"ƒ¤Ş]ç	6À|CJŠ¦‰L\rÇ_õôÙ9^<Èt Áû€\r¬ÓğH®cĞá|ÊŸğ·¼àÙÒ½©~jp{œ5ª6ˆÈ$&ø-µEË{Á‚S&tÀv!ìX‘2”Z§J ıZ	®jjD9[ö#¿¶ƒ\r[í76—lŠÍ%¥êHQ }L¦àıÒ¦Ú±„E/¦`R®BŠ¸·ÚJİ4s°î:¾üƒı‹0KY©??§\r‡ŸT¨² $iWÔ¿÷‹géÎhx<O¡h³H°á[uŠ·d€\r¢•õrA%‡}»ôÔR‹\Zëy8e‚˜\nslè6\0Œ`»¸I&å=Çˆ?Bø±“¡eª÷YZ%áÒ•S%Ü¾²Í¸i}·¼Ü6Ú À½Í%ÄgÕæ²ğ\\jŞjmï8×oS±Tì­ŸI ™ç\0*œ²Jxk;ö©u*~9\r4İWssj¥P¸NƒƒÏ\"XÓ;Ğ0Lí°2!,i5Ëx\nÅº‹3Ğ!k\r=¥Û¦ ÍÖŠ+8cly×hÍà”M‹•%ÛXÂB4°»D¡uªÚ\nL‚5r—Ç¢¡+Ëš}Æ¯µîøìõ]¦¾?ˆ‰%‚H™M©Àw%ê%R¶`ï8U–gTÖBçÔ@õ‚¹æY]pÆÖ \n6ôé2´ùAÀÃ$Ğ€À@@-Aiq–\0ÌË8 ñ}àÙ†˜6Õş6ş…&HÔ,çöŠ2‹+ëâ‰\'ÂÂÌ†hu#Ö©D.,¼¯­uôhå°Ëgq™€Ã/§@0b˜\0%\nè2´t•Ğ¾ éGë3$¨´½ZJçÜô\' =§Ô³î<6WßÍ%§~¯@CY›K¶<,¢Ó\0{Çmê­„ñX¸êÅla|ÚÂ;Í\r¬7z`A4u”éµÆóy ¡²Å%R3NZ¸N×÷’cD-e÷$3Xëj\\GS`„$(U¦„@Ó&™½ÜSè,’0™\nÈ€]p[Ş¸°*¾VOáï\n‹8å6tµû\r@€s)ªËğ1!şø\r2œÙv27e¢uª3\ZõÙ-ÙW2#†Ü¾>-`Wû=õó—+: tz›K°±ÊÙ\\ŠNéİd¦PñóFß©¡uï3\n8¦¾`jŞ81A²òÁ8:4ßÅªÉj8¾ığ ÛƒlïÔ¬Áó£ºN¬4„ÀÔ{)Ár÷S:cêÄğŒÇYh‘K‹(Y$ÙA8\n³)–îñÖPvìŸ©½±ÃbO™ üæ –B,“!dØBªúI«>Ë{z_¶ĞW‡l-ç”o¡®üÊ€9õ(ú2WP¡KŸ¸ğ)î¥66R4BóÕ–ß)€Ôø8“é¾_ˆañ‘…÷0½±‚‘NÆöyFÃ‘|¨+³\Z`£`xYO£xÔ>Úm¥<\"Ğb^Ìµ³”±²>,\0AÉ2¥&ÿœÊ³›ãú ©~V{.±Ù¬/F9<(0ò,‹&,„Ø=‚çØgˆdÖÃ{Èe¢Èp¤{iïJ“ó~Ä\0`c8T-^[Mc]^ÿzúÄ&\0 V}b×‚\nw:\rB”x†RÌ@§ê‚SÌ>aÀ]Ä¡s$,öğe ø(N½È¨ê4ğ86Ã3ê4Ì\rXè«€U-VƒB:pğ¨ÀAíç²Ñãû°g)³ô|1`@Ğ\0­ËıÅ”)	\",ËE!ëN´s‹*UG	ŒzÁnSÅA/«õ÷\nÌ1×,U¶SïïnŞ‰^H™è]&Èç›vüªpÃjˆÒdÈg2l!UbH.Õï,çéBaİ0ø4]\\µİX]\"8~–st6—*\\ÎïÍ%\rÂjÈwŸ@ğZb>ãwê‰5„J÷I$%l‘°0)ø·^“m>ù\\â¢!DÉjè€¯}ê(ÛmjsÇ.\r`Ô$ß•Ä\"g5xú„÷È>`	¤ki4X€\ZşLÉp6C»Å+‚*¶34\096{À5°¼WñÇbc{ÖOl9,vĞ®sL|Ç.ƒÀï\"ûì0A¶p1ŸË­¤J \0iˆå¼W±}ÃR~.edËToË³y™vóÍZu´¹$À¡¤Í¥’ÑÂ´[«nõ:2v	‚ãÊ) ‰ÙĞßƒ=°ršÒ\Zë5è±‹@Ãñ—`Õûüõy<¼xd.í&û÷Ïq áPŒÙ°ÄB(õ½ƒí}V¶AÏ°3Æ‹\ZLä[ğì¸ğâ@‘R\"f ‘2Ğ8Ÿˆİ+şˆò‰@Ã\\%Ğx\'ª¶5ûÊ%ı±äKñ}ógj?Û îm.ÁŞ*Ñf¥,š±cş¨sQ‰z¶c*°¿MOëª³€yğ–ı0\r,í‡\'ôt¦t<†Ó¨äQhøşy¤ó{`üø±·qÙ6Ş:Ğ`¹?-caHÄhSÄ\\{-ÛK·¶ÜÎâ¬ßÉ\rO°%SZt¡vı­‹˜½”c‡\0b*,±˜É2J!åêìP­`CÈ°…T	ˆnÛdØŠ}%êÁ’JåTïíŒÛ{“ZÜ\'618M‚m./Ul.Ké4àz6¡â\Z}b(Ä8Å\"A]Ÿ®\Z:ŞÙW÷¸X]5Øg\"õE@Ûû5Õ2Ğp:2­¢&Ğà:\rePèŸ£>-Át«Ô‰k¿Ås/	gZêFË¬4¸.Ãö«Slƒ’ ƒ..¶\06ğ‚ƒ	5<­Î©)Ğ^˜€$í†±»‚]³	l &C‚åVR%d€P[Ùw±réÒb\r+¢b[ØÉŒÕ¥ğô‰íß­Æœ­^·Ói`›ËS§ÓPÔæ’u\ZòE]û¤Ìû¤BŒK©*c…iPBÆi€\n(¼~XUJfÃœ¸$æØ!ˆ¡çZ\Z°øPhÀ¤g\r2¼ÜsÑŞÎËíl	¦[\r–{–A°_²Íq>ı¯(J¥EÌÇS&ÊL¬¥yc\0 ÈĞƒ\rmv‘5ÈÛÒNr©vd¿¥”	!àF1pÇ ƒl`-‡È”‰Ë9ÎU¢æNŸv5\06d_ùÁéLv¼?’>ñó¡@ºRï Ÿgs[P§áÁÚCa›K€”Şå÷›B(cãeğøˆq20WÌµ˜rÌ|P V¡4nÚ€†Ê—HÍ8H¤Ëu\n¼¼˜û€%˜o4ÄAâ9J\r¡±d\r@!t\rò\'Ôš‹ÙlÀ[W4‘¢Wô¶´“\\²ÅÂk9ee†…Ã¹Ã‘F…LbS%Ø’;I9°9õÇ®Wvj‰@Áz-ÙWö,¦87OŸØöó^<Ò±ó6—‡\"@Y©ùËÁ»üwŠ5À‹\0~„4Ğ³N¯¿3¸pë,!©-p³§Yğõf´˜Õ0eM@ÃñíïÎâ¢³áøöÃ`9 ±¼ÛíuôØu¤éK`Ã€†}†œ~İhp]†üÉt… ç¬ó®e}±DÈkí*c§¢FĞºF›Ì]ƒ56jH™æ“2Èp‘¾¹Ï™XC°!dHI•üg¡%ã_€¥ê9dİ³8M)+®b·.¥\'å<9Â¬ÊtJ¹®³9àÚ	}ã\ZÆ¸Ò’ÁÏå]Æ;Ö¢)0¿a,±æøÏSú)˜¥@öê½å3L	0*“QÒ&ä£l¬$}s(¥Ãm}…Å…cnÅ%é<{KË³›€†Ó‘, *³\Z`£™Dø±X?sûªŞÒş—À…qªÀ¸îbŸ*»Ä0\Z–ÎUªí×\ZŞOev,¹—Ù×bV(ì·xJ07wælìH<bßÀõLºsºĞmÈ<Ò¿% ßŸ¯–—ñ C\\ªÚ\'$²Æ Qö›³n,İçz¯õ«¥jä‚´V_-¡‘â;°û\Zckõ¥-Ÿ·\ZT8\nĞÀ6—ø„\"Iü6÷şÁ+£Ó€|ÿÇ\'Î­ßØã‡Œ7€¥?`Ì:‘ÎÀ¡ø¯¦A„Ü+úïş¸\Z¦Ä §îİ4`¡¯âAµ\rÈ-PøytØkƒ\n1{pFCÿ.¬	4œHD·”¥TìÄãå÷± V*{é`Ov’ïÅ¥_¨\0ä’ËR&†zº·€ºx¦İÀM†ØT	8!LåX”³ëŸõ»1}´¦ÎIJ.2tb–€Ÿ”gğcö1¦o¡:P](ä§K©(hs3&L•E\\¹…:Ûó=è:uy¾jÏÓ  \r1ºïéœòt\Zn$D2®İÌ@eA¡q@hòDÿß^hp}‚§ë9l3Á†6@ƒë2øÂĞ²xáùm1g\'A-86²“l©ƒØ2Lİ]€¤ï‡)#Sâs Ã‰¨a¡ğ`	lHI•X´ä€Fk\rêlR‚¢Û/BåY¥gÊ»Ä3ø9|.‰é½Í%€µ¹ëKIŸxËîKé40…ÿçª˜vK-Ë:\rH¸Š7†l­FYsH§ 5HH‹A,HI×‡Ø—c°:VÈÓ4‰µEê‚ïV\0X8ÒïÇÃËçéxxºÀr¯;í~ßù,‘Òl…­\r5­-súáZŒ×eğ…aÌ¢ç`C·“LÁUÌõ÷T–ÇÈwM™—€%ñÇØ€g\r–±0gÍ†	·	¸J¤,ŞÕÓÜ,	ØğwR»Æ\\Çr/s~í[±¯äv¯`ãÉÚ*òÜ÷ôÎù½îk>»±¹¤ô/Ñi€æL¹ô‰P`š2v¸ÍeÙ¾b-h­\'…¥%ìq‹¸µ-U+K¸ôŒ\'YJ!Â…Ç4œ…eÊåØ\n”_¶\0)p<èÄ9‚›ì¶¨C´;t>­ıU°1E[Á\"XÊ´`4<3Ğàºe\'ÎgYä†vbn[£«×j7®§6Ãù€”‰=È`‚\r!Ñ4\0	\0Æ`CJªv bƒÿNX1a÷¯WhWdØ˜è(;’Tpwá]>OŸH¼j	~ŞÛ9wÊæREpK\0e\0|K0ñUdµD„úı8ÍáL¸vÄ÷N\\çˆñøŞé4ŒÆRe;Xß=;Ğ@Á¢>Ä=Ğ@l…k\ZÄ‘&¸T °lÔú5Û‚`©¯.],`²0ğÄŞª\0Ÿ®î+?€¨a¶¢Ñ{¯kX[b\\¨Íhp]¬op‘\0è‰\\ı%õnhÕZ¼ä<SÉc-v–p¡€…ÚoÅˆ?vÔâ	Á4N6¤¦Jà¾¸­’Úùºû”ÀXÉq\\X¼Ø3}CÁ·\n­ó”—Áú½§Oø_rL«u.¤}±øãP§§ô	ú®ÄuçÜ¬ïÊ©@‰{Úê98½v‘‘}1Ï×Â¸+ù\Zš[T#Èx¸¦¯„@ŠNÃáêZq#öKÏb½w3Ğ€…:DAÖ‘!Á¢¤A¼>D°è EH0	Ú\Zèèœ|µMYf½(3Fİ“FG‹ˆØà]Ë·`4Ä\nX®õŞÕ\ZRèÓÖÚË•·ZŸsÂ€¡ÅÓ\"|­·ú¬1÷Å:\0„;K€¼îúÇŠ?ZTÙ9‚hÈç„<g¶äLnİ„ê\ZS’Bò³(³¡·¯öÈ>µV‡ïPóÕû·P_~Ûè·¥Û¡sŸ Páãr®csYˆ1»;^º®jŸ¯×‰‘Œ\0–UÖ^s\\.ø0Å4á¸i‡6“Ô\n0µ~ÜüÀ‹ƒ%–‰4`§\Z;Ğ‡_ÎVx\"áFN} Ôn{ê°é Â\\Ú\0¸ÎZ§õ:[e+XÀ‡ĞX™ZŸ1ç_ËÚ²6£ÁusÁV{¦?Ğ»XŒÁÚªÅ=®}M ì,‘R¡)â5ÂQ°Ü®K»9i2²è•\r£¥ëÌ³h¶\':*Âªu-c§‚„µß¿Ï7s}àF§¡³¹$6VA†©İóØqEµ\0µO<êĞÜ-,=°½i£Ÿk\ZCN]„¬*5å‹õ Fk‹á|2?‡.Ü³×xS™XtßÖûŒ\Z¬™—‹cl©¾‚©¢2ësX4<¦Ëà…ä”‹F©7{b+,\rª\r1î_1@ÀÔ5æ\0‚˜ó?Ğàº¾è³N¸–rz=§¢Ñ‚Ár¾½—Aşßÿõ§‰ÍÀïT^Ôf+Kv˜ÈWcÕu	&Ã½’¸äÖ¦ì€aqË¢†‰`C¿0½gU€éq:®¿Ût‰œqKäé>Şo}LÅX6¶¹ü¸\\z›ËcĞe€½Xƒ­×ÿøş˜u8\Zo9-šCœ–0`:$èğ¯’Ì@.®y/ÂÒ\n¥VhÛ ½SæÜ›\rOÄLœ\"ĞøKô4²Rò€…©f7¬àJ²g¶ÂP`Aı)íƒ À†ÿÌj;à=ÚÛ¤ç÷»ı…2”C~BW\'à—hÏÒ n.±Î`3`·†Ø’Ÿlı&J×iét…[FtÒ´9TÇÀXß^i³ákIÛâpxãÏš`„pm±Ö…¤+=“¨ôûàç[oîQ}š NÃ¥Ìº¥œN\\âÓÁöÒŸ¬õ$©\nySÂÒCaÇ{àZ¬,5u“lè\0æBşXç@Ã\0\rØ»Ô‡F¡ÑØõê€\nÓ`ÃU´?€·t‚Xb\"X¿>CŒ ¢\róàAŒ–C­]Ğ½L ~Ÿõc?İIMµ9Üc[!P›áó¾Í~P†w\\Î\"xfı°ÃÄ„øcn}Õn5H5<A3@ôîw·&%fô@Ş;á@@>oŸø[n.E°%ÍÈ\n\",•SM”¥ûòïë‹^·¶ºíÒ\'T¸œßot\ZD(2ÿı	.½C“ZC”-ÑÇ8MIR\"î\rázò9×ÙXâZªå4=$şÍEN=»ºõ€-‰ûÏ¹á±4<Ğh”Éx«€ÂÜ}1³¡°-jŠı¢5ø¯UnÌVÈI·©	4¤ÔmÎ³Ä XÊº.ƒmÁSj²zÆóôÁêu\'¹àä¿‡úd–Â¢¥0<bÅ÷2ô`ôÄ¢,¶M¹~\r`ÃœØÂdP¡RD3­Ï+œš\0İ±92ƒ\0ë³y9Ÿ[rû@Ğæ’\0‡’6—SAmì»öéH·ÀônÓ\"¬u’›F2•ÒÂi\Zª	1ĞYÀÆE\nPÓ?hØ)Ğ°@ãº†)ÀáH,Œ˜€ÒR¶D°½¨ÃVXëÙ§´RêÄrÏ%ÊXÀk×eğ…`ÌD›S–ÁVº/o‡•s_µå…¹HÌ±àBÁl†ÓÏh]†;z¡:\08”öb]h¦”ËÙiŸ¢Úê}0…v‚Î{$ağ0ÈĞƒ\r¥Y_ìùÎ\ZùÂšÖºÎ©ßÚï‰Ÿßç¢©>Ğƒ\n`zÉ¤R£Ø_¹}§¬Níú\'€¥¹Ïs<X\0*â˜\n,µ2Ù&ÊZ˜ªOƒ\0Ğ€ç­\r,ŒëÔ†\0\r­\ZÛ3!ÈB•t$J›)Î)ÁsÌ1©)©õQd)4”QæêÄ\n\",•{w]†ìJÎäîÇ>ÇÂšà6Ãû”Ïñ CEvd`WÒ0HZ´¾“ôãÄ÷; Ó¡‹Ğ³.ƒ°¡P}#a`ÉAƒ7b©ºåù¨`sy¹\Z˜Ñ•ĞâÙ­úKcÄ™Bˆk·E±^ì>ÿÎz¿üàÁZkÌ„t ac@ƒ\n4\"°®c#¹\r–B,x×Øk¦×5œbÀ-kl,õœ¡óÔ\ZbÎ½¦ãDI{ËÒ;tK“#ï\ZL,ö—õïŸ#(´vÛ¯y6Ã…Ø\'äèÇê2XdwX˜énKqË÷â‰&Ş5d	ˆ³8…?êû°Èd§QÄ§uŒût\r÷¥:u&ƒŸ{[ol.Ï§+Ğp,jsYT§!Â2±u»`]Æb¼…AeÃíÖ‘­ëÁrıÿ{?‘;oüQ%\0\0\0\0IEND®B`‚',95764),(15,5,'fon.jpg','ÿØÿà\0JFIF\0\0\0\0\0\0ÿá¶Exif\0\0II*\0\0\0\0\n\0\0\0\0\0†\0\0\0\0\0\0\0Œ\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0š\0\0\0\0\0\0\0¢\0\0\0(\0\0\0\0\0\0\01\0\0\0\0ª\0\0\02\0\0\0\0Æ\0\0\0\0\0\0\0\0\0\0i‡\0\0\0\0Ú\0\0\0\0\0\0\0Canon\0Canon EOS 20D\0€ü\n\0\'\0\0€ü\n\0\'\0\0ACD Systems Digital Imaging\02012:09:23 16:02:43\0\0š‚\0\0\0\0$\0\0‚\0\0\0\0,\0\0\"ˆ\0\0\0\0\0\0\0\'ˆ\0\0\0\0\0\0\0\0\0\0\00210\0\0\0\04\0\0\0\0\0\0H\0\0‘\0\0\0\0\0’\n\0\0\0\0\\\0\0’\0\0\0\0d\0\0’\n\0\0\0\0l\0\0’\0\0\0\0\0\0\0	’\0\0\0\0\0\0\0\n’\0\0\0\0t\0\0’\0\0\0\0984\0\0 \0\0\0\00100 \0\0\0\0\0\0\0 \0\0\0\0À\0\0 \0\0\0\05\0\0 \0\0\0\0|\0\0¢\0\0\0\0š\0\0¢\0\0\0\0¢\0\0¢\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0è\0\0\0\0\0\n\0\0\02005:11:12 13:15:49\02005:11:12 13:15:49\0>÷	\0\0\0\0-²\0\0\0\0ÿÿÿÿ\0\0\02\0\0\0\0\0\0\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0€w5\0u\0\0\0¥#\0N\0\0\0\0\0\0ÿÀ\05À\"\0ÿÛ\0„\0\n\n		\n\Z\Z(\"&#/#&)*---!141+4(,-+\r@+$+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿÄ\0¯\0\0\0\0\0\0\0\0\0\0\0\0	\0\0!1AQaq\"±2Rr‘¡Á#$%BSbs34Cc²Ñ&5áğ6t‚’¢ÂñDTƒd“E„”£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!12\"A3Q#B4CaqÁÿÚ\0\0\0?\0ù´\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.`T¦ÙH\0	‹±\0	{ò .× \0\0\0@*ÖŞämp\0—ku \0™.Ö *Á¥nd\0`\0Yx€\0±\0\n¶·26  %¥b,€.TiÁx–À\0\0Tí¥nB±\0\nš^$Yx\0+\r€l¼E—‰\0ò˜\0K·ˆ²·2\06­Í”®`\"ËÄ€ËÄK\0	ÚÄmrHõE9>}r•Ûv[“	$·\"ZeıÀRÉLÌª_˜kÌ´ìTäœR)jÀA)/\0Z>,†·Ø„Hn„­=nA\0T”|BÓ~l¥ÀJ×öyy¹„K°v» \0ØX\0™;y\0lJ²d\"X\0\0¸°Š»°éqßReu%weÉr(°·sò¤ô]¯BîOöwêD¤şmù›{¦ÅFö³¹:WB½öeIß—0&Ğğ(•¯±ZW{s)ÜÀ¤¹IG›Ü¶W@WhıÔoÈ…ÏÌMÛn¥DOJ[-ÊkĞ•İÊß\"Â\"ãÕ\"\'$İ–È‡ùÛ´£ÕX¥Å_b¥ÈK^´šÙ	\'{‘k½€‰l#¶â[ò	\\¿R	{s.NISP^òJÄ\0\0Tbß¡rSÙEl‘j.ÅPoÀ5r·¡Sz¤ÃZ§oBS·\"-oœG]ùSm&Ù2µ¶)hÜ«SjÍ”ô	»!·Ô_pÀ€\0\0\0\0\0\0\0\0‚*Œ\\·è\Zhªğ¾Ñº-°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‰`@\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0RŞ.% \0\0\0VÜ‰+\0\"@€,Å€\00\0]\0˜ä\0\0€b›vBÍt@IR§\'ºL¥s¹™J%ÇuÔ‹SÓR›ı—öİÍ?šî_xÑCÄx\"7P¡Q›ı–OÉêx,C[[˜x™2{|¥íb*Ó•9ZH»ßËEËujJ¦òæH¶€\0\0	à îà ½	”lùHò\0	¶Ü‡¸ÙøE]î¶€\\ĞµrØ¦I&\"ÄÛÈ€%«\"\0\0\0[L€\0m· “ğ$¤ü	³é)pŠ\"Iòq–AU¾h³ú R\n¬íóEŸÑ”:•nº%İ^ÊàZdgà=À@%\'ÌYø\0›0•ß  TJ6±H\0LUİ‰’W²æ /Á/Á\0›?¥ø0 ?mäìV©¶®;·â€¥Hsez–+¥M-äĞØ²N«.FDb®Ûh·4ïÍ-êd+Ü¹İÉóaAò¸&ùø“­®…Nœ¼UˆĞù\\t)r|È»*ÑâÊá»½ÉâÚØ92TB{¿wd´ÓÜ•ÙSÙXróe,	dÇÒå)]’Û=Şû\0\0\0S±sUùºD¤›{“¡[›Ø³+ÑãWcb‹1fÊ’KÄ•¦<ùCº#¡[Qó¹^`S`Uhù†—@)JÈ4€¤\0\0\0\0.`”QŠç-ˆ›oÉÙ\0]:n£it›N×@P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q¸%Û 0“ ›Ü	wñ!‡{\0\0€®÷¦Ê\n“öZ)\0\0\0\0v.Àwâ\0\0.Â%bì\0cÔ\"X²ØnB\'{\0Ü…êHwÊä1Ô•ÖÊà@&IÇç&ˆ\0\0\0:[WèvNés\"Ä¥`v!\\©Ù‘{\0wñ\rµÔZèÀn7÷‚À/}ÅÂD¤€YØ•~¡«l‡—P!¦G¢*Úû‘$¸	’¹Ü’S_´D¼€‡¿2	d.`V¶‹o©V\Zq§QJjö(“½ŠXµ1º¦ä¶^…©b·»»æcî7#Æªx©AY?¸º±±·´“~†TyXxÄíd/óSò±]|e)Ózi¨Éò<ø-Ê‘_\r·/h/BRKÜ‘>]z‹jõ`\Zm…tÉè˜„+u&ßaµö\Z»ò¹7rînFåVw-qºDÙXe^Æº–›dÄ!‘ĞŸ2^È°I%âRTš¿\"ì{¨Ájİõ XCtîÚV,KfíÈ\0\0\01nåËE%~¤Ùõ\"ˆh‹_‘U…•„½¹‘êUÉì4ÚÜ¦Íì9¢DZüÅòòkö†\0\0\0\0\0\0\0\0”íÈ6ßR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.f^áTÿ\0JŒš1j§O!«…iYT¶×o™c!Àeÿ\0,tó\nÔçMÇg[©®¢¥).L¥Æÿ\0«y6ÜÛ-È!ÌVq~R¹¬c©R§Qª5ÇÄ²Û|Û)Üœq×ìµ\0—È‚Ê€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€–âÌ˜¦Zá­Éİ²T\Z›Êô¶ùMøJm†è€\0\0\0\0\0\0\0 ¦‰\0B%‚9\0D°\0„O#¨—QĞ\0ê\\§ZTÓJÅ ·`W:vÕĞª9ÏæÅ¿BˆlïáÑæWÔÃE*P¦­äˆ·I;òf/ºu~OWDwrÒì‰ÃåXÜM÷†«RJ1m}N#ÅâòÚ¸IªzjÇL­¶Æ<¯–`^£\nNNV³{™ÿ\0&M<qjõğXš)º´gX²Â{Y¶aœc1-©Õºê¬y’ŞM®o™ymöÎÉ=)³±)[˜³\'NÜ‰B4¦ˆµÉİ1g{ !¥ï\"ı	Òß!º,:nö%¦À¦Ê×D¤Ñ<—2R¿ ÷„¼G.dµtYsE.7*Ó°µ‚Té¸Ùz•Õ‰H\nŞá«+ø•´ß¡D¶ğ%\n\nãì«ø”%v\\è\n·Ü‚d—B\0\0\0\0fWM®l¶Šé¦ÕnŞÄZû„Šƒ^/rUº‹(¯0¼HHüK¡Q‹>¡/m·P“éö\r[‘—·0£àMÆ‘dÄ !­‰Šñ&Ë jêàS;(¾E‚üÓĞZ³±h‚¹±SjÖ‹)$B^!­ì™.İİò»—pØw^vÕz”I+!NOZÜ„ÆÇ•pŒqÏ|Æ…7æcñ\rK(QtëÃ©éüßBÎ\nµEFm/.u¤’öœŒ¼®×ÔZ—\nâ£ƒ§ˆï¨>ò7ÑªÍ>\'\rR„œj+[Ã‘ìbkNjú¤—‘æWö¤õn[·UÉb?4›_™6ŞË·BÊ¡ø2/nd­<˜½À‡g±}‰#MËvêC¸h‹nÈ€.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0WKN¯oc×ÀTË!núššş#ÅÜ‹6™tõñ!XµZƒÓïİ´fâ³²­,(>¶F»r#Å>KØ™Ò“}Ü4¢Ç¨‘nÀ\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0RĞ‚­>hÜĞ§—2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”ìîB&ÀVê¶ïdJªùø–ÖÌªÛX¼èS««\r~W6L.a’:NppWV½¯ï5».®V¹L±ÚÒéíå±Ë0¸×<T•ZrOÙk“èÌ¼f;\"”%áaËgk.~Í‹s±ı§É°ò©|\"ix6c?:»škJûE®GR¦ƒÛ˜B¤²_‘\0@\' ò&Û\0	È&ûl\"H±) …rm¾ÜÇ>@\"9òl-`d&Ö—`€°_Ã6™bÅì?Ï\"f“]Ú¹c6¢M%)Ãb*ÂN-[‘—í¯éæÕùÌ¡&Ûğ.Ô…›º±E•¶4gQn‚ÎÄ¥âº!«¯Ä‹y“Ğ\\¹u$Sk0ÃIy“kËp)·Rwh›+†ºÛÌnM[ìÉÄÙZè;ZÄÛb¢,7~„Û¨·€4†—Ad¹•%µ·ˆYN”È’Úİ\níäDš¨Un	(¶S¦Ê÷+’VæCQÒ´–rvèKµÃ*£¥M9«¯\0!+½‰îçÑ;FO›å˜XÁ,®”êu”·=\\×ˆpøŒ&•<¶7V‹§¢•¼ùŞM]i§„ÓAP“ä™-;3mË3ÉùZÁ<-Ê-·9E>¾‡‰˜×XšNœ ßÑIä0#M5»*ŠJ6L•º2U,OuÔ—¾ÁZö!’æ4´·ò%.»ò‚çrZÚÂÀ\Z¹)7ÌˆìÊ‚ªW2t¾„Ù ïn{éM›	2RµÉjÊŞ$nÄ?SÚŞÄ’¼wæYµ—©}¢‡Ğ´¢Ó^$[wà\\pl‡‹m\n\ZDX¯»l8;ò QbºQ¼‘\n÷+ –µà*cÒÂ«Gbüşnş…8t”6*ª¹~×ÒÅ]àaTùÆMkßs\Z{Ü´V¨äÈw½ŸRZ ²ª]ú‹Ù•H¥ø\0{‘{¤^Ì°I»nSÌªL¥ì\0„!‘Ğ\0\0\0\0\0\0\0\\ÊéÂU¢®PLdâö`fĞÊ±U—±Nşò1¹^\'J+E(Ï“¿2Õ<]hr¨Òòñu«$§RRQä›äWµ˜àÊ€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&\nòKmüO_/È.[b)Fı<ˆóØ»GV‹½9Ézeı&=<ã‡ñb‹”áVå(_c\Z–S‹«8Sº’ºŞÅqÎñŞ‰Ö”¢ù¦Êc›×§1{tô+<–üX¸œ-l;jµ9FŞ%ƒ3™W¯\r3{}÷ûVëô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0’	è\0”V%-®&‰Wº*JË¥’ÓµŠ’¸¶öd\nm±\r7Ì®Öô!Å1¶ÕØä¶*µ˜i\ZV•¹\rxöa«„\"ÛlE¼\nùdŞÄŠW‡Rwµ‰i÷@E…˜æ‡@*°Jä»( \"ËÄX1m®ˆ\\‹/¸mÉ·ˆ@,\Z°»åk•E]Ù;¢E)6N†zùv/‡Šïpq©/¶gâ³,¾¶p§§	8Ù5Ğ¥Îÿ\0‹É+YPo‘z„$¤z¹>/—º’WrIZ¤n“.âs\\5ue¡úÅr\"H±‡¿vEKé{•ÓQÓÖŞE5w[ìQgŸ]^[–¬›/âíï±are¢–!§Ğ‹_™W~E‡kÄ5h‡¿QÒÛJOŸBZºû-€…v\n­Ô…É	lJI’J7EVd[Ì „ÛÀ(·Ğ…³·Uì·æBÈ&Öê›Û™6`Ğ–åª—orï‘#©\r£K\rn\Zğ.Ê‹I»¯BÙd)³äLSc“\n6`f`W¶Y&à¼¶<|*´¶=ZNöLË6˜Å5`”ìyµÒocÕ®Óƒõ<Êé¹;SV4´4·ÎÄ».c£¹u¶%D\'bwh$œRa\"RúLçÈ[À¿ˆJŞd·&ÃKk;y¿ 	];‹È\ZBWDÙ¤<‡]Á¤iÜu±6³¿AÍìöy–õ>iU~ÑC»[Š¥½÷+V’Û‘jÍ\"¨½!*eÏrö˜ÃÓ‹mÍ\\÷ršØzm_N[sdeuŒÚÍ\nmSÜU‹Òìz˜‡OÓî•4Ÿ(•bq‹¹P\Z{muÌ|šøµÊÉÆ^ãJìÏÌ-RZ’³ğHÀšw4ÅSJlE„º¥È¦ö.¢d¾Â-âüÈkì& ^û2…ÉárÆàK±‹–\0-°°\0Ár\n“ù”½Å»‹™/ŠŠ¼¨Í/CV¤\\¡NRKÁ\ršYS„¡u%oTR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜EÊI%vA0n2Ms>†O«\rT°ó’ò-G/ÄKò~ê]ïĞ¶æN<Æab”*=¹[¡TóªÓÅ,E¢ª¯ÚK™]ä¿â¢yb¡©áªmä`U§:Rq©FK£G©ˆâmdõTif\"¼ë»Ôw~$ÍşÑuúZ¸\0² \0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"@‰@ÉéfBğU×\"UíuÔ†J\0U¯æE—¼-À­2tİÜˆ»r/Ñ“ƒºæRÕæ‘ÜÎqöc\'èN	WUR¥	Nv½’ÜË:´#¥4“ò\"&TkªôæãQ+&Šî-×Ê±t·	¯TaT„©ÊÒVõ319†&³n¥YJş}L9I·yoêZ\"¨jäyZåM.„Y½×$YT[ølïdO49ìoâ:vG>`Bdùk\0v[¡e^ë`\"áJÃ—&9.Ä]\"míı	Ûšè¿2ZÛk×˜½äÚÄµµÊ¥];n¯dYŠº·R«{*ÄTÅÔœ“)†òµ„uZÉØšqz¶|ÊÒ³è«E.ió\"£ö¶*¤ıx’ëb«ş˜8˜İ»ÜŒ¼BvØÅißË¡|}(‹¢Z½…“äŠ¢‰»ºegì—$ŠTu)[s×Ü›_anTmî&Ë äµ·	G7ê(©GÄ„)ßĞ•àÊ´¦®-°YÀ›>¤Yß™W%â&®J»æ‚Ü–¬BK\\>^d¥gÎäÛkØlPÕºZöŒ…XxÅKÚ‚˜”bio¡\n.ü“	<\"™`iIµÍÜ­á°­\Z¯¢’³†­Ÿ˜ó‰ğxXDÛG§G“/b)aµşf„câ”Åµ*ËâRå´É¥Íx}{9ûŒú›«DÀª·²&iû[\"6\\¹Ó¸I[bÊ!ID‘gĞ^Ïp&Û]‹Xt°ÙlÉ‚·Bz\"©-}Å¼	ºK­ÂiíÔ½†Öå¸htØAeÔY¤,º€Û µ·v¿6ø”»\"§±MHİa«¶,Ukì†ë’.ª‹ïbnÉ¶÷ê\Z|À¹íYr=l¶ö~™F)Fìõò¤¯¿3<—ÅéF/BØÇÅ$º®Úmcus(Ò¼¼bİµÏ©;oàgbÛ÷õ0j%vmåÚD2]¹\"9s.¢<ˆm\'ì‡nÛ©1wl‹İ’ìS¦ä†Á»ób.\0mÈ”@`H`@\0æfaó\ZÔl“äa„5±ë¼û(5+Y«(æu0ôİ:QI=ÌÌ¶×q8™×•æÑd›¶\'ZU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ì=	ÖšQi_«,“5ÉØÜn]S\rB5gR¾Ö‹äeÑÈ{ì+GMjWÒúTªÎQ´¤ÚódºÓĞ£©¤ˆÕâpÃ³©	z3™6÷wd\0\0\0\0\0\0\0\0\0\0%rzZÀBL$H¿@	_`×Af˜IZì\né“e{‹X\'âÙ=ü	A><IÛÂäŠ’k’2)ÇU¶1ãêeQM«HªP[ø–f¶2¥bÅXì¬SkXµf¶ñ,É8¶eÛÙöŒjªÍ—Š¨çÈ?\0·&Ér,ª˜ì’}Iv[xcg¹)G2\Z*ß¡gÌ€JÂİCİ†‚qÜ›æZÄô½ÈçÌ¬Û\\(ï·D	¶À,Jğ#Í•¹R—æ6”›{1½‹øl\\D—u–b•÷{àÜ_¦G£G!ÆNv‚QW~Úøù^_Wˆ•:N*PWnRKk•Ò•IFÊNŞ¤ÆêL¦ÖÓ.¾[[ntİ¼$™‰;[ÛûŠîô¾¯Í–åçÕYˆF2\\Ìšª×,io‘x¥RÕº’®N•Ë ·4HYøfT‘\r?p»²—Ëšv\"Í’­[JûÑS[Ø”¶³˜§î&İIŠèUek0„%°Ó§rv\\ƒÛr!e6¸¶ûkòäTÒkÌ”¡+{‰Qv	gÔ©¤$Û%.„Ä—À§™](ûJüÊZ´¼ÊáÏ~@zt«—Ú[ÜÅ¡6–ÆDh¥iæ“w]D“ÜšŠÏ˜wqæVef·0«¤gJËtÌ*ËÚe¢µc›¿2ò\rE=Ø²,ªÉ°²\'¡	}›\ZoÈ›;X\ZR‘)¶W	nvûÉëaÔä’èE¾‰6Iì.ù !\'a¹*ërm~@Ò›0×B]¬M¼ÂÊm±L¶ÛÄ¹¸QWJ°ye\\Sö\\Rñg±ı®ğs­ßÑzc}7wg…©(»&Ñîàqt´¹?´®Vş—ÆGŸ–ğµlV¥zÕ#‡Q{B¢jş‡ËÙU„½\r«9ÊƒZŞf¹êx‘V­–2F(Ú¶UO¥5%Èõrµ²ô+#ÔkÙ¹çã%³V¾æ|®ö¿#hÜ¤_/O/Í»îaTò2ñ·sKw~FÑ•[’ö®ŠovTöäCM—Q‘IT¬öE-!ùrêSk=Šš]Hwe„4Ñ¨\0³%ú®u%…Ì0 \0\0 \0ï`ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I \0@€LVäìÙo¡;Ü·²¾áíÈ	¶×b×æB»%_‘\0’|‚ŠêTÓH…{x„–Vµ‰^;îN—î!	†ÆM\Z–~,Æ~Šwò\"­.{mBÕdé-™EkÈ¢ÊöK5\Z|Ê¦ÙKµ·/SĞt\r\\”J¨òEB[ ²‡àCH¯¦Å-TØl5æ\Z,“­‡±<Ñ”Mº†¼E¶ÜÓäJ·RÈ$ÜQ\"¦¶ºa\\„­ÈŸB¨åQğ!FÜÉê‚Êé¥}ËĞïâZ‚wFLŞå*c\'–åç%º*Ñä]Šw±KZE\rY=Ê$¶/Ê*Å¦¯t@Ã®·±bÖfUe¿¡aÅó/±Kµ¼º—ÿ\0%vv\"Ï«ß¡(E…Š’ÛrzYBBİY[[	&–ÜÁ¥·gĞ=·*µ™]B4hE–ÅZw”¥Ğ%g¹SöW ’\\ÂÚRÕ¹\r;»sv\rX+¤Zè›_p–÷%¦E­ó‰Zz„™]·R½.V—‘÷— •ÕşÂ*WiÍÇn†E)jŠhÇkt‘‘EYoÈ­Z]äŠ^ûÏÚ•Ñƒ÷•ƒ{«%·S®Ò²èfÎFŞ&-h—ˆ«.ëo›2§~¤[À²ˆ¾É!bT7İ[k0)¶Ü…œ‘R·@—U¸YJÙó\'Mß™:mÌIxs!/RRŞÁÛ¨eÏ©i•4Ğ·Ú6ñW1Nöû‰³NŞ\0D­È%·²ìw%ÆşBQo\rÊ£¹½\n£Îş ]¡´ıÇ­’TùM%íò÷¦{¦IŒÖßtÒêx8ÖµûÏr*ôÙâãç\ZêF+V<Rg«–¤ytï{–_7	sObÙ+·¦öæãd›ÜÌ«Zé¤yØ›µêSkV}›ÒbIíuÌÉ¯ÎİLy/±´g’Îám±\\’èCE•PÕŠz7âV÷\"ÎH˜ª†®¶#J*k£!¯Â–ƒD´ìBçbÙ_q.{‹7·1bD}PÓ\"Ã~@-Ô0ì—‰ì	”C,2\0\0‰`@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À GR¤ÆÖ%$˜Íß2}ˆ4‹ÛÔ+°¢Mˆ4>Vd+ò%¬KÈ_~E)¤J³$Uk ŞBöˆæŠ¥Z³V_iz’ñEˆs2¨Ùó+S_kÛf[«kÚ[îY«wóˆ‹V;i>d;µäTÒ¸µ‹*¶Ñ*7&ÖeIu\n©[-Ãi²«Y6Ü,¤‹{M•s\r/y*­Ëb¿\"½ºÜ„ì†ŸüÉkab^ËÛb,Ê­eqeÌi%æ¹6¿0è¹ã°µÕŠ’Mo2¥2Rû\nÒV	„æD!í{<‹0MrV2¨«®e*ÌŠi¸ÚÅn>E0ºWè\\¾¤V¯ÕÕß\"ÛI]XÉqN<‹RWDl¬J«~F<•™—Z+{˜ÒŠR²-QaÒÅ{%¹VÜ°¦İ|J”oÈ-üáú;şï=Ûµî¸¶ğ·+Ø­-¬RÒ|Ém¹¼\nœR¼(·ËB—Ïa³Ùó*³çâC]|@‹xf–İEŠ’W»JÌ”·äU¥6·Î”Ò{¹İò+Š·¨KÄ%Ûbå4Ò¶åM¢í;j*iV†·ñ.Ó‹lF)ø™\"›äE«¡CNû•8jWûŠëİGd¯ä[ƒ¿Tˆ4·R*)ìab\"İìgUºÙı¦^dÊ‹]ïÌEl\\’]\n\ZZv/µ‰^ğqA;€µşpåÈ«{x&·[ø„¬Wm¬Å—/ •6²*µ·èÉµ£¸óßÀ†İöÜ©&¹¥u-~DXªËÌ(© „XZÅH$º•J²V&Í\"¤¼B´K\nè4¥æzx[Ëçm$“Øôp®+æ™ÔÆbmA¤xøôÕF{	-;s<œÂ>ÛûN^˜±İİõ3°»r[u0©¤ùØ=ì¼Uc\"WHÂÄÉßc:kL©ƒˆµö+ûZ°*·«­Ë2EúÎ×±b[%ÔÖ)TZÛ×‡2ZKx¡$írÊÕ¹oÌ\"¹$ıJz’ª‡ÌmĞªÄ^ÀSÈ†îTÕÈ’E„z»“krä.@‹X‹u*vèBDˆ~d;õ*¶å/o@\"Ä§dJ±).h\nPeMx‘t –B\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÎÀ&ĞaÕ’€]y’¶²°\'–Á„—Pï}ù!r¿ˆ^,›nÅ‚K_—0·æ\",İr$¥ò±1äH•v¶%\\2S\\Ÿ\"¢¨¯&’[3*ÜŒšO•ŠÔÅÔ¶½‹Uwvğ/ÙŞåª±êUv<¶ÖÜ—Ì¥é{øR©iòèLmÈI•Ñ(TÕˆµŸ²UrZØ„ém&·\"{üÒ¶Š_2M(³\"Í2©\"-æ\rortì,Òö·Å­Èª1ºØ›0)Ò-åb«;r\'@¦·&1¸İ«Ø\ZE¼\n¢³Kb¨E·Èªê ¶ö®dĞ]WRÄnÏ™—F+‘M/B+J±yRi¯\n{\\È¥%í>¦v¯¥ª‰B?ó,µtÜº™Ò³ğLÇ”•¬@Ç¬î¬ÌY-ö2««úí.~%âª|¯æJÙ“äè‰Ak6î-àM¯Ì%öl„¯Ì¯{ £ÕƒJ,–Ş!¤’ø4©|Ò™§ÎÜ¥=?—\"¦¶¹L­wâIİîRÊ´øŞâË©\"\"º•_bÛÙ%Yò‹¢Q6¶Ş!ìÚ*i	ÜÂğ&>ƒWEÊjûÈ¢Åú»\"š^¦’é{™”\"”-ÑŒTvFD9Y”«È³ˆğ)§×Ü]­t(^Ï§P-ÕŠ³Fhóß‘ŸRiò[••®Ñ0a?Kü¹—%Q%bê(K.¥[4‡=ÃMX“IJÜƒ]z­«rW²•ÙTéM¼\n”oëÔ•eÔ”\"KvSor§ó#4‹;!n…V²ğ!\'Ñõ”¥gÈ5Ô­«ò\"Ë¨¤£Ğ”®‘1H› \"×æJİrêKÜ”¶öHS[«†¥Ï¦Ìü:zQyĞŞÑåæÛİ\\ôé¥§sÏÇÆò~bl`Á+óß©›AiåÌÆ‚äºTS¶Åê±y»ÄÅ®–ş&TŸ³kncb.Óe^|ö“e™s¹~¤¬İË2Jæ‘[²}—¡_‘Cµ÷,…->l§kù•>`²,[{»–Ş%M6ÊZK‘(Ò\Z\"ÖæTE·Bó&ËÔ[¡w·@¶ÜÈ~MÙµmËæ¶\"ı	äF÷\0’!]²«mÈ?\0ÖÅV\"ÛG&ÄÈÀ07Ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0y2SD^È•víĞ	ó*[«—Bv\\€¡/¤­º~d‰VcÉ²Ä¶ùÈ–¶Ü¤˜©\'±Ÿpõ%)%\"¹¢¨ø• ìdSnİ,bÁ]™c~¾â•fZä›êY¬¼±vŸ\"ÕVÊ­¥‰\'m¹õ(³Emï¹MOÊ(óê#{n+Ø”®¹mêY*â®KÛ‘JWÙt&ÎÖ*\'MÑD¢½åq[lCödíe½$¥àŠß˜KmÂºS§b\\}…b­\r­ÉÑhš[KÀ%wr»\r,Šm±ğæUk—_h[ó%nN›¡°4ª*åqŠoÌ¢;—!`²å5í/#6„uZæ%WÛ‘Ÿ‡öy²•1“GEß‰]4¢¹¢œnŸ¡\Z[|ìQ¡^Î7Ûs¥m‹ó–Í7tXÙ¡X®¼$º;U\"š²1çŸBĞQk«ó+Ò›Ø¦JÄª‹;1mW¹ZŠ|À¦ÉE\\–Ñ-yM\nü—R&’Û¡_K”´ú„-¶¬BWEM_-mü@¦\\º£ãÈ—p“,ÙnJIò#›&êÛreAxkr)¹)İ%x¢«tñ\">Ej R“oÚ2ğË}Ìu÷30ñKeÌŠ˜Ê„UËÊ<­èSMmuÔ»í¿#:Ò-Îú¬[©ÏnEÚÊÛuèZ»åkˆU§£¼lf¶´Ùó1+Û{ˆaIoÌ¥´¹Ü¹4ÛÜ¡¤¹R­É\\”·EJ6İˆ¥ápƒMÛzoÍnB‹½­°J-mÉq‹Š&Û´¹t\Z\\@¦×[}ù•¸ío—€5w¸|¬W³æRÒéâ³µÉV%oĞ’ÜÛ¡)n.–Ï›hí1mß‰1L”Õù™˜m½“HÍÃ«+²*c.-é³0qÉ·c6\rnÖÆ3r“ÚÕ‰ÙîeQI+E\\±úó2hEÅr-U]š´mmÌLJÙ™’ù»£½·dD×[y%»ØÉ®š•úõhÒ)T7b%àM¼Q¿\"Ê©~lTÖÛ–B™r)eMxs\"Ş D¹ß™;^È‹ooUF×±èUmù´›Ü¿N„]òêM¯êS»Ø°_Ä†Évè@eÈ«ó)[¥e¹E½¢d‰^(6º-K™™T£àR“e Èr\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&<À$ÃL¹\\¯ºVÚÃcÀªq³)\0\0\0\0\0\0\0\0\0$	\\\"»>„$JMí`*µ¶bÖ\nı9n¬¨$­æ\ZØY.A¶6\nÈ”‚Ü%/tSmÊ¬ß2›6Ö	tñØn¶ñ,&Ìª)“*Šñ**Œ72èEZÌÅ=™•FnÅjbûJ4÷æX©k+¹®eŠ—»]\n-Veó·ûJ¡Qİ”>eQeJšäP¢“ä]’l¦ÏÜL4$J†û¶/Ao¿>„TÅ*/UĞÊ¬ÑTSµÈJÓ.¸¹6Á¥\nù—-´•F›EÅFÓ¥‡I.E¦Öı“$ü.[’o¡šc8¢-äd8ø”èW¹eTyXˆ¦ŞårÈÒß=€-›+JŞò\"ŠÔZÜ”¯Œú\nü®aÒƒë¹Ÿ…ZQiŒdR„’öºâî”y>¾&M$œ6E½:ªx\"»^Å¹aÖ†Ûß‘©ícÒqMY&X•4İïÈ+¦án|ÌyÆ7ÜÏÄA\\Ä”Uìº*ºYh§NıK²O‘OfXÒÔ ¯°µ§¹S[Ù2Rú@P¢İüo±V’­—\"[~DìBR%›.=‘t6-Ê;éKç;®…Û6ŸÀ¢KíJ‡Û·\"—|âä“|ˆ³·0¢İ›wKaf¶*”[)?¨¥Ô”›dÙ !%räçân¶*Œw­6hÊÃÆîıYÜÌ ¤¹«ÆD½Ë©îÓe¸­¬ß2ºk{>eZE5—…‹6Şï’2jÁ²Ôéy“V*«|Ó£¿3\"nÏĞ±Qİ²bµ8¤ö(Ód‹ÓMmbÓÙîZ+bÛŠ¾ÅJ=y+J/¡*>D ·Ñ\'MÑU‰¶Áe´ƒWùÌ¸â¹Ü‹!´-Úü¹“ùu+’ğæS¦ït8Ø¦Kr§É\\zR‘6\\º•¸¿q!\ZQdŞáGd¸“éĞY·~O¨4§M÷EJ-_Ô•·0²`¬ù3.ƒæc@Ê£ÉOkñÕÔÇÄ¦ìdÇxŞü‹×7æU5bÜÈ¤•¬ú–â¶öVıKĞ‹v·¼U•¹\\Å®¹¤¹nÉmËÇÄÅ¬®Ñ15Y-[˜ó^UeÍr1ê+\"ñ•Y’²Ø†¬ŠœQ‘eTÚÜˆ’ñ*·R-â-ù•µÿ\0Á\ZYd)h¥¯§·\"°Ór\ZW*diz™\"ÛVdiÜ®WäSmşâbª	E]H‰\\QM¾Ò¨\'Ì‘<ˆ’¶åW\"WEE9‘ºæTÓæFå…2L†™Z‰L–ö\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¨.¥(®*À\\‡.„·n|ú¥§—ØCw*)›ğ-²¹+lº²`€ \0@,€\0\0\"	¥áàT›½‹iµ±]ì^œÊÕšÜ¡nJ*˜)°ŞÁ+ô‚Pâ%ÛŞ4…B$®LSäÅ‚TŞêÄ¥n]¶á6¹7ßrU½ä;6 …È™$×-Ìh»ì^¥m[•«ÆK½¶åÔµU]î\\^+r‰»¯‹ieÆÏbªh˜Æò.*vE!BÄNÚn‹«æ«s)”|H¢®]‚\\‘N•r¤’õ»8®W*µ—\".ÙZİYLS¢îö*Œ-²%]\"¨E®Ck%A•8;yÁ_vŠÜn®Ší:cÊ=,[pvfKŠ\\úªFû\"eEŒyE§ks!lù´ï½ÂŠı¯°£Kjùà‘mö\r$®†Åîëbì4µ¹‹[ôğUùyr	_LLêí}ü$¤îfaz(”«G§B	Å\\È§=ãrÎ)E_™•I«Ø¥^.Ñ§	A¹DÆ«B“kì2Ü›^ÊVñ,TM»õ*<ÜM5k¤`ÖŠå}ÏK¯+¿‰ƒˆƒæ‹Ålbµb™YsEİß>}J\\]îYM-Ù°“çÑ•=÷\rlLb2lùt\\™aò%&ÖÈFÜ‘R[=Ê‹mx\"\ZŞÖäUmƒ{r,-´E‹–mx”´ù„iV¹N•{¾¥i4N›+JTS[¢-nV“·-Š¢½Äí:P£áºepüÊ£+•éwäWfˆÂÌÉ¤’ÛöK)]y—©Æër«ÅèŞÏÄ±Íé½¼È«*v[Î	ÅÛÄªQ»ñ\"¢”cì­ˆC¬¿‰‡Z-~&cOUìùjÁ½Ñ1†Õ÷e\r+—š»ió)Òî]E\n6æ·%-Ê’¿¨İ\ršR–÷$˜­Ù+f\r\"Û\\;t&×)ode× qÙx•lÃò”iWWWi\"¹Fë¡KW4‹.OÀYZÍûó*”wŞ”B³ëb½;¶-v\r\"×[²cÔ%¹)oÔƒF•©U‹[ó¹‘M.a1zêQQ«Ùî•—2™-‚T¯gq\\w(K•Êà½§rvN7k‘]_uÍ\r6¯àX¬€Àª¹ø˜Õc~f]efbÔç±x¥Ze;É+nŠy\Z*‰.¾%6éàWkz²\ZkÙ”´RÒ¾è­¦úÙµm‚ª\ZK™=ÊšêCJÅ†CØ”“dINÄ[M¼\n´ß™\nıIUKkÀ‹+Ü®KÌ‹x¢È•f…­È˜Å°Ir#fUË‘Cİ\rÛ•ˆm_rm¸·ØJdPìWË™L¬H \0\0\0Â.RQ6W^”èËLÕŸ©l–ÛæÀ€\0\0¹€¶`Tá%Í;—;ÉÊé¾|ËoÈ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	6V“µº­ÖåJÜ€–“D=—2[ñ)m=À¥½È%²\0\0\0\0.\0\0\0H,Àn\0+’®˜C~`U¿>…Q\")>dÅ[™QT]–Ãv54¶Ì,ˆÙ½Év\\ÈÙr%o¸U*Ü—BZv!XªöD,¡&Eš~EV¹Ü”!®¾$¥utEìüŠ–á	Š~%Ø_QDl½K+V‹Ô½®~Í_¦ÁY¥o´™]½ÙUÔÆ6{—\\v¹Jæ‘]¢–äQE’I§Ì¥¦™ZİÚ$Ke¹\ZÛ—¼‡r«íäLb›².Æ6æR¢ºÆ7çÍÕF)råĞ­FÛ®]BJŞl®)õ*\'§²\\OÙÜ¢on…ÈÆÈªò\"PúE…ıËtN‹«\rša8Ú[²™SƒOÈ¥Ó²&Ut±¡¤J^ÙEÚÊÅ*ùlNÑ¥§ŞäE$ö/÷ms\"QH\Z[³º^eâüŒejÛ‘™†VV}£>„í¹q7©\'Ô·Gæò+}\n¯TåkÜ;8û,¦“M^Û—-â®Š,Ã¯›Ôyõãy_À÷14¨è¼fõxXóqÊ’ş¦M¯â_ih‹k]SçĞ†›m*+.…¾·.¢—Ñn-eeÔ«OÚ7ä\r-Ê7Û›E-[Ÿ\"ô’M·Ôµ+ÊÖÒ\"İù•n£r Ÿ$Ugö„éF–·\"Ûó.YşQÒ¬J4´“¾Ä¸7Ëì+ĞÙZÛ!³KJ	|Õ¹_w½ù—5½ÃiÒÚ‹\\¶*QêÊÔSnåj\Z[¹SKV+²º\ZÙ¾\\Š¬Şİz’%-÷.A.EL½N-$U:Wüv.Á}¤F7W¿\"¸\'u{È®1Õ-ÉœSÛÀ”­¯r%ì¾~EVQV;ZI3›º3§ãs¼\\ŞÛŠ°d¯\",Ÿ2íH¸²;Um«r#rä£n\\º‘§ì\né	;n%{mË©U¬¶DI7Ât¡Ç§‰	]\"´¶W&×³ñ”5}ù\\8ÚÅÇy	>@QgÍr!ÇÙ½Ëé»sdˆÒù>FŸgÀ”¶\rn\r)I‹nUmö%«{/ŸR*iÛqk¤U¥ßp…6ê×2õ$‹it/Sv/B(¦I4ÙRºd¸¯yTéDbT¢—§Bmt-u¹cE½—c²fCiG~eŠÎåh¬:«í1ª­÷v2ª«z˜Ó‹lÒ)V\Zø|H¶Èº×´S$‹#J\Z¹\ZJù\"6Ó`-Ø¢I§f]h¢I2È±M¶!¦ú&‚id4ù5nD[Ä±¥ßĞ†¼Ë›&RÓiX\ZQ»ùÁ¢¹$•Ÿ2‹nÒ-¾ä¥¾åJäÛ`š†—åvVİùí}ÉUK_D©+«ø“OÙoœ‰+”n™uE>E2‰1 @\0\0\0\0\0\0\0Å]Ø™ÅÇÄGç#6½l5\\V™F¼]¾l t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\"@+É¶İ)tğ)•¯·\"¯2–›{ä\0\0\0\0\0–@I\0$À\r’[ÄMr%Zäó¿@%%Ğ«Éó)²\\Šíer´Jğ¤GšæJó\"ö5æM’{…nTÆ÷væUÈ¢/rz²¦®E¯Ğ©o¸²On`P“¹Z[ZåI.œÈŠiÛÄ„¥&W¶¹ˆÆûxÚjäTÅpÖ&ßq	Û¡=¢©ŠRj[“©øírZÚè§ĞŠÉ´CZº¶Åì¶	M’Ûî+Š·O\"˜Åó‘r\nÛx•¨M­Ì®)­í¨)rW+µäRÓæU	4ÙV‹óØ©Cªëæ6*»±qGÙßÿ\0’\ZK—ÚÄUâb—$Š“Û‘…ù—”y&U:Zq¿A¡ÛeuÔ¾ãuÿ\024+³LYÓw¼v¸TüL‰Er!FÃhÒÖ‹®Eª”ï¿–‘DĞÚ4ÆŒ<ŠI¦#út/Q¦½XÙ¥ê+TlÑy$)ÆÉmÈ»µí¹[WÒiFè¹mìM8¹EíòÜª¸…go­–îÖfuw{£²Vß¡h0êFíírÔãáöçÉØ·±ejÜ¯È…e¹\\íæPš¾ëvY½İº²–¬üÊöó-˜$îT¢¥ÈI=•ÊÖıT(ïdJ†§í\"ä‘1şÓÓ…¹•Exs+’W³!G}‘TiN•}ùt6vnåÇ”¿KÜKm¶*I’šİrÈ&\Z|E›ô}	L•víĞ,(—©Ç¢)VçÎÅê~nÀU¥î]JÄFÜ¼\nãeº½Ê%\r¥È”ÓZ¯{”MÅrêQï°gkØÇ«œŒ˜ïõ-TI\\#L\Z‘»êPö/ÍnìZq{l]-ÛR4ØªJÌ…ì„\"Ís!¯…v)µã¸´’Ø•ÖÄ»\"¶÷,ƒpãrv²³ËÙô RâîÕš){>EÄÓL„—$I¥´¬MŸ™S²[sêEºÍy‹$TšßÄ›Üiô&ÌˆVnï¡f¹r/RNåI²ìS¶Ä¥r7\\ùô*’|Ó\"r+zm±QLİüD’èLvV¾Ì‰oó€·7Ós²2d•º–kòäÛnÌ³Qy\\¿Q%Ì³5~Eã:µmíÈ¦V{\"½¹2—oÀ²¨jÊŞI¹$C’· (·B)¤EìíĞ‘C÷#¯©T¬Óò(MÕ‘\r¦EÂ©µÈ’¶ÄìÃvˆ[ì\"Û+¢­ˆv¹d >AµâJk˜²\Zñ*v½Ê;>€ÂßxOk\r6Ü\n¢­±O\"U¬Dö\\‰ÀÊ€\0\0\0\0\0\0\0\0-Ã\0ç¸~@\0\0€`\0l,\0`\0‘\0	³òd\0™:[DébÛt \0±6 6d[p\0X \0›1¥ù\0,†\0Ì®¹B*ì\n£~…ZRæÑJğ%­€‰Eø”Æ.L›6ˆ»\\€ikÀ‹;†ßR\0«MùX‹4Àt»t\n>h§© T©6ù¢\Z·UqMÙ‰-À…Ê»»õE!WvüWÚ6Ù¯´Œ„Æ.L«»væ¾ÒŸ$:y:_\"¸Ò¿TR’¾åqI‘EJŸFÑ.šñB6_9‘b¢{½ù¢t.WE;şÑ)Ü,™BÜÚ!Bëv‰´^ì•\0‡MŠ•=š\"1±rÛ³HpÓÍ  å-‰KW¡ZK”HÚÚSİ¤·’L˜Siôdh]C[ì‚t¿N•ßÎH¸àüQb–öñ2)ß§>¥mN”(+îÑTaNH¸àšó&4l¯¹4±*i=äŠt¥{Is2\'M8–ã‡“~ÈÙª´Õ¶µÊ©ÇV×I/òÃ»«s.Æ„ÜlñªiÒÔ•š¹uP²ŞÜË§¦ÅÇŠZ¼ÅaB7İ¢µrÜ¸©6‘z~Ò6-*Wî—¨ttø2ú§³¿‰=Ù]­¥¸ÒMs±S£¶Ïbâ¦ù•èKŸØ6-Ò‚/F	ó{•F	4V•–Åv™÷I.e*Ÿƒ/h‹æ÷%ÃÙò¸ÚÚcÊ*ÖL£ºÉÉldi\\¬Râ†ÑbË¢“MH¦t×4Ëí.W-Ù§¹;F‘N1k{ûŒšp†Ú~òÊ‡©~Œ[Ù¥øRO©R§%rªpW²è^;•F	Bë™Ş÷æ\\pé?RÜ·VÜªõ µs1«ÒMó¹—Q+ØÇ¨÷/Á©I&ìÕ‹2†—¹—R-7n…š‰s.®–%M%{”÷kœ¤\\’ò%CÄ”imA5»\'»VOR%¤LS{26\"4£ÕØ©A.L¬­E¤6\"1\\îJ¦¬÷&\nÉ§}Êô¯¸-¥­%ÑI\\º£9=ÊšZîÕ¶{î<ï÷lÛ²!Åø{;®‚)ß–ÅçßB4«[©‘&®º•÷JÛ²cE6½J”_N@Ò#Mj.Æ)í\"›_—2¨\'&ìı}J¦.A]ïoRê¦Ÿ&D#‹:ZtÕ÷&Reè¤İ¢\\„Ró#f–eM$X­¤ÌÙ$¶,T…“\\ÕÈ”`Î)Kn¥¹Ò+õ2\'½Ñi­ËÅt³İ%×béxúê-ŞÄ(®¤ìÓÂÉîGv¥ÔÈÓªö-é&‚,ZîÓêS4º—ZèˆĞ“K§RQ¥Úñ\Zq¥«tQep!Ó^%2ŠIY—ZêC•ì\n+›•Ã‚´Uk!tÑaF”¿h¦QOæµbâK{lSklŸB¢˜«u+P¿7÷¡±U5~œ¶,%SWç¿]ŠáâR’oräS|¹Å[’¹sDm»³JÛ[`²ÛK’#BäŞÅRºëb%mú…j‰ÆÜ™n¤WRâ¿ínŠ*;r\Z­ø˜Õ!|ã.{³¢MlZ(Æ”cMÜ¶ÒIÜ½4ü-}Åâ*”ÓÛ¡=ÜZæÄyó*·*­8$ùìF„¢ö|ÊÚ³²ô\"NÛnpŠå¹ÜZöŠÔn,Ÿ©anpKæ²Sæ÷*š]ŠA\ZJ‚kŸ\"˜¥mÙVë‘\r\'ê\r!Â›ûˆÓWdìù¬€¶ãº‘¥r+i!bv…:aÉ\\i‡™^Š$ìJã;t)²Oeq+xíÔ$ívMEsDIFÛ?qRİ{E2JÄŒPeEÌ©ÆZogoB•Ì«\\ôÛS·…À¦À—{Zä\0\0\0&)·d®È&-§tìü@©R©ÏD¾À ß+ı…]õ^•%ö²•RiİI§êN:vßì!-üIœ¥/œïêÊS³ç`&IÇgtA2mómÙÚä»6v¿Bt7$¯rv\nM=˜[Ñ™6ù¶@¢ß$J„¾‹ûRk“±R©?¤şĞÜ¾ŒşÂ\ZkÈ•R}$şÒ™6İŞş \"®ìT©É­¢ß¸¡6¹Â¤ãódãè8µ³M{‰Ò×4Ğœå?œïêÃœšİ·êÀ¥.dÆ/ŸORšä/}€©Aµt¼lU:5cÎKÅ¦S¸ì¤Ò~{:õtiu&ãÑ6À¡AÉ{)¢ß$İ‰ŒåšÚ¸Rk“jàT¨ÔéıÄ÷5>„¾ÆZ©YTi/1ŞÕŞIûØäšv{Å¾BM·w½È\\À¸©MşÌŸ¢)”\\yíêŠ•j‰YNKÑ”JR“¼À…Ì­E¥~Œ¥r+„šVèÀª1R.*wo™Bmr+Œœš·ÚTéS¥h_üS£+]\'öã->W«=:T™­ÓA·b4½Eé9&Úº“æ[nR•Ûİue¢£¥+lŸØÇu+|Ù}…J½eÊ¤¼÷ZÖïeö²E\nú]¯Ïpá¥ÚIÇÔJS“öß‹&R“ùÍ»xTiJÚ¬×¶\"Tæ•Úv}lUEhÅG¼’¶I‡^£§¡NZ~ö ZÒì™T)J6-ú+¤öOt‹´ëÕ¤Û¥7Oê;kM¥g÷ì\\îåk¤íãk”I¹É¹;·»¶û•Æ½XSpŒÚT›°J›Š½ŸØU\nR’öTŸ¡S­Q§y»r·‘41U¨mJ¤á¢ìOiéOvÓJÛú£Bkv½m×«R§yRrrños!ckÉ{U¦×…ÙK³¥.„´]¦½Ì¦ÛvÂå×Œ¯(¸ºÓióW|‹têT¥+Ó“‹µ®¶!n”Ê?:èª4š³³·M‰Z•êÊSúÛ•Ã^+J›²ó$Òíß“ÛÈ$Ó/F´å}wÕ½¦R¢×=üÊ§HPrZ¢L\"ù-É„êF6„ì¼\\–÷³	\\Péb™EÇ™.¬İ›—\"§RsV¨î¹¦TÒ2Pò\"1iÛÄ­V©éObªZ¦îîÚ4®^ÛcM—)Ôª­vÙTkU½®ìSkiM=7÷—\\S^\\ŠŞö»EÄßƒ!dÆ’~\nû…k¡Nua1œ—¡qâ+µhÔ“^dZ¶–Z\\’Ü®0ºßŸBc)yõ/F;{W·‘4¢4[±\\¨è·‰}^ü×¸ªsœÚÕ\'+x•ÚÚ[§M¥²/*Q[şê5*Á8Æm/•9ÎP´ç©.Iô#kéc»Ô$Ößôe8»&ÒüJõÕ¶m§æFÍ1eNÜ“÷*6èíâ_njÜı“\nµWûOí4·\Z{Ûr¾íø2¨Êzõ&õ>o©v5\'.RŸÚWf–{µkİ¥¶ş%Åª.éî»«^ş$ìÒÃ†áÓ\\Ú/KU÷W\"£‡ÎÌlcÊ)rûÊ{¶’º.56Ów²[*,Š;?\"õ(+{%¸ÆOv·ó¹‘JIl6…ú	Y(ı¦C²±n”¼KÎœ¼\nìÒ†¼Ks†—º/:s·/¸µR-xßĞlÓ\ZªÙ§{®F-H·¦]W9?k¡ST[k›/³LJ°v-I-’ğ2*:ÒúnYµ¥wÎäÅt·(Y«¢\'?:ås•M¹ì[“”¥ªM²Â.ÍÚÁ&÷*©9¸Úí.„\'\'o¡\Z]„EØÒmr)§Z¬vRiÄb%xë›¾ì‹S\"Ò§±ZƒŠäW4•¶~Koq_ç$­+²»[K»rEåJo£+Jq»Õú\ršch³·^„÷vè^”&ä÷éb_{mõYó^cf˜Ó†Å*L†¤ÓÕvC‡V˜Ø·\nwOk•hi]¢¸)Ç’eRÔùÜl[Tå.EÚp_`IÅ\"¸Eh©AIlU\ZzVäÆSŒmĞ­9;¿6•\Z~‹Ü»m³ÜF.÷äUªm5vÑåÏrÍTß3%7M;.e–İ½—`1jAÅïÈ£Mšv¹‘WTö-ÊSµ··‘m‹2ŒnúîS§m“±uíµ’¸Õ%7Ø™UÒÄ©·È¥ÁÏ’{¤¥)9$ß¸˜*°MÆé?\"vi(;«HwOÁ²ë„›º‹OÉ*˜·›Cf˜ıÜ¯gtPâÓ·3)Îµï\'6[—y)ê³¿‰Ú4´éÊ×èD`íÊåê½ìí¯RUJĞVM icKOÀ¥Ó¶åé:ŞïnNÅ”å´Ó{ß‘(ÒŞ›ûI{üJt¾eÔ¦£f‘Fêş`Ò!ŞÏb¨ÆîÛ•ÓÔ¶Wßrb¤¯dÕüˆÙ¥ßâ\\„RÚ=HŒenK‹çºN•F›ç¹Z‹å¹Te4öl”äİ÷#bÔ¢Û¶å3‹Jì½4ùÅ7rÜ¢å¼“¿ ¼Êd›W|‘zQ~\rÛÈ·.ò;««ùÕ“æŒyBüùu»é¥©_ÜXüå8Ú³ç±2©c¤Zñ-ImtdÕï¦ôÊí/\"‡Bvù¯ì4ÚºcÄ®tÜ,Ÿ7È¸©Tƒ¼\"ÕÈÓY;éhm\ZXq³³|ÈÓ½—Bë§SvâËrŒâùy£J{¹7±ƒ\\Ó¹“F\"ÊÎÖò)­WQ%=íä‰ØÆqiõÛÓ¯§BìİYÉ9«ø;IM]oè¶¢ß[“¡¯¨U«Kjn×*jò–şåÈ°¡Å¸İ/yF–‹¥d´¾V·BŞ™[urBéØFœ¥ËÀª.p¾”µk.H#J{²Û‹m®…äêiq\\ì£Dº.E¡¥µ›…Iô*šÒı®eqE½‚4·¥òEMìúfç6µÉNNòæJ,a`]Qvˆl.ì€.\0‹°bì]“v]‹±v.ì]l\0¸`Ââûp	ØCuĞ+®€@¾ÅVDYõ_p}ˆ¹VşpIø	²§7où\r}u;_Kc¡=ãä­öòV\\¶òDwsú,(KÁ„÷²éo±Q¾vû\Z%kYìF‰x1ĞnË—Ø5¿/°ğdªr{$ÇA­ù}ˆ[ôû	tä¹¦½ÁYòÀOşw—2mü!EËö@¥=‘.Oş‘6iòø}ÀR¤ÉÕâJRé¸3Mû?pêòCW’\r]îUwô}à¶µ‰Õà‚Õÿ\0H®7ç¦şà•ŞÈ©Iß—ÜUä¾oÜ_„]¾jû\nZ-¦¥Íìºtû7qûˆ›º¶•oB©ÒŞ»x}…©xû6ÛÉÊœº-½\n%àLÑ¥™U•ù-÷äJªîío±:Sğe*µœ_Ø[¤i=ô×;}ˆ•Z^ìDw3µô»xØ*ro“ûFª]iô·Øˆï¥ËkuÙMßæ²4IşË!.¼ŸÍI{‘ü—‡Ø‚§/¢şÁİÉò‹¯4ß/±«Iìíö\"	¿Ùd:Sì¿°t‘Ê÷Oà û·u¹*[[J÷•&’ù¨ sn[Y¯B¸Ôob•/¢—ØWKÁ}„U•©JÖÛo\";Çùjvä¾Â—\'.eR)HM»EX«¼m[ğå)Yß¡TªH¦œ›W.)5²·ØUe\nrJÿ\0€ï%Ì—\'½’#¼kÿ\0€#S–ì®5$®¢ìˆŒÕìÒmu¿2µí;Ùû‡KB¦ÿ\0ø/S«Q.~í‹J›}‹‘‹·&EĞ½\Zóµ¿WN½GÍü\n#IÛxïè\\9=’)VÒä\'\'»—À»\Z“_´ÊiÓvµË›K“*¾‘®V¼eÌBu/Í2Ou÷Â\r7t¥ÈT›{±ªNûã%Ëo´¹Bö²±Wu¹z*WIŠwëÏĞ¸åe¹]U;òûË—èÙn-ÚÏ©r-½·ØŠ#Kmõ%_•ìWªêÌª)/š¥™EÊOv,Ó|÷2Ú%ÅÛ¡Ó0¿©q&ö+ßËbä\"ß0ia\'Êï™U¥½Ë®.D8»îŸ¼lÓZ¯óŠ\\¤¹¶—©•*oÀ·*Mt#f–w|›ûJ\'&¾kiyÓk’(”|Qd-Ór“Úæ]	4¬ß\"Õ*mtß©‘F\r¾­ù~Ûæ^Œ§m›E4âà÷[x4ËŠJ_³÷KÔùÉ˜õïe½Ì½që·¸±^Ï‘QƒV-¿jå™ÅÚÊö2ª·É²Ää×Rãª•¬îcÎéo{ô2êM««ó1ë·mİÉŠ±ääü~ÒŞ©&–êÅç-Şä7½ÛÜ”if¥äî ßKÛ¥‹ÛË†è±¢.NÏ{õ/Ñº½ÛE0“Ù2ìnÚ^TÅÈJVºoí+Íİ±>l»¡¥ÊåÒ‡5³#u-ÛûKıÛ[…–Üú‘´éfÍx†¤®®÷/im\'mÈpkÄmkÊüüˆM§n…íÕ÷±ÜÛ$[Ôîì7ewÜ©mî·+‡™%Q²VBI¶·%^ıD_Š¯æ-¤J•Ÿ²•g·B˜ÉßÁ[vÙ«–§ef‹Jûó)”˜\'&ËmµXºå¾îÅošÜ‘m·‡».©uêÊunµ)-ß^IÚúŸÚU/o’¹\Z_+)r—FşÒ™6ù6\\•6ú{Ê{¶×±;œŸÎoí\r9roÖåZƒ\'KjöBÜµxıå/SäË“ó#æÉïa±e©Ùó)Nj;\\»wº¾ıJu5Ôª·í>w(•ïÔ¿yrww\"W²Ú”¯mìUªK•É»·1yt“bäßR¨¹y”så»ñğ.Ó¾a*£9rßa-ünEß8¾ej[l@^vº¹D”º§±qMÚ×)ri;¶µ=V¾ûô,ÍÊÉoöå\'ÕßÔ³RO“eÆ=F×\'yb¤›ME—ªE·}ËNK–äÅT/VC“QæÊô5É2‡¬JºS6í³e»¶ïv]p—J¦÷vchÒ†ÚêşÒ“¹T”ãmˆqi¶‘m‹v“×(jkÄ»ªK—.¤9?E¥«Ì¦jSñ.·+=Ës“èÂ‹Z,-4÷*“mìC½¹–µ9tdÚiòa6¶w”É8ó&1›^¤É\\Yé^=¤(Ít#DÖÄõêKw{r$[iò’÷£\'È¸ä×\"‡{?Š2NÒ)’}9•Jí\\¥» ‡¶ò:2Ş»ÛÄñsl\"Á×ÑšÖ×fç-š¿ÿ\0i÷†VÕ³Ç§Œ\06d\0\0\0\0\0\0\0\0\0\0\0\0È\0bïÄ\0&ïÄj~$\0&ïÄ•»)D®`l\\3•QÇÂn¬díàì{ôx5RÏ§3‚PšèÍ§KG&yY}ºpÆiáK…ğ2oÙ©¬Gô[á?üÇ½‰µİÑO;ş­ãá|\r­¦§şaıÁ7ójæ=õ´hCÎÿ\0§Œx…°+¥KıfWO†°T¤¥Q5üG¹ea¢ÿ\0;˜óÈñÃx:T”“ş\ZV>—Éñ3§Qm/´ê5£x»œË8VÌ*ıfmÃ•·¶\\˜±o»ó „t1J“\'Sñ Tg%µÈ×/›\0*»}H»år,NÖnÚæÊâİ¹”Gbc~dQ‘JOŞÅ×Q¹^ÿ\0ib›±[µÊ‹º›\\Ù^*uáwwbÇO##o”Eÿ\0\"ú_Ûs¥Âø9B2”ª¦ÕìÙ[á<\noz¿iîQé«¾H¯FÇ%ÎïÛ§Æ5×Âxó«ÿ\0›şD>Áo½_üÆÇ¥?R4¦Õ¶#Îÿ\0§Œx”xg	Jœ©ÅÔ´¼Z-D0-îêı¦Â ¯·2T;<¿ÓÆ5×Â¥Woâÿ\0şˆ`R¾ª»ÿ\0ü‹@Pwwı<c]\\%€çzßùƒá_üßò6=iºwı<cÀ£ÂØJ3S§*»yÜ·Œá|i:ÕR|Ô\ZHØ´}¥•—²Lä¨¸G\"¯OMiÅtvçàSºV.ãxº­t“ø–¹³³{kíTy­åÌ¦*6»êTŸDE!-ö,:ô+Q¹”¥b¯y:6¶ì,ª›KgÍ×\"ÔyÜ¸­k²–ÒVE[lTìÛÒìP×N`Laq³pÆKK‡©*“¨”ee¤Öè-Íë –»ş3>K¨¾tş‹a¿}Y{Ñv1†Vüı_µ¡ïBšh­SG7oãáºİz·^dÿ\0F¨-ÕjÖò±îªi8\"¾TñxË$¤â¢ëOeÍ$U<ŠHÙÖ©÷¿vŠ”>ŞƒÊ§O\rğå	}WíEÑê_×UûkG‚Ü•ŒySO¾CF4§.ö¥Ô[_a¯B:Wúæ\"Ÿæ*}W×ÈÑû·?–Æí\ZWI»[Ã™uFş%¨Ú>¥êr|Ú{“EqŠéÌ¸•Ú\"7±\\\"ï·†äU•iÛŞJJÖHª\nüŠôÙmË©T©ŠeZVéÆ\\¶+Œ@-wi¡\\!·‰v1+Œép-Ñ¢§Z	Ş×¶Ç©ù.Œşãb©íûKcŞp_ò)jcÎ–UEÙŞe(¡É:ŸiéµgËb—ÆÒóá•ÒÔGrÓÉhøÔôº=K\'°ÑÓÀy+§—š…şuOBı<¢‡O´ÎÑgnŒ»!äi„²ª-|êŸiU<¢	?ÎKÉô=òŠÓ¸òTršq^ÜÛg“™¨ÑÆN¬m3‚5¬î)cê.»Æî¢Ç™Y-;µ#½¼Ùß©f¤WNe¶F£³ÔcÔŠ÷ÓË¥{—•F¤¯°îß&dÊ=B	ræNÑ¦?v×5¹:bâ®·2%.[”Æ\nÛ|á³Kq§º}C(ÂÆ½u	]+6¬cB•ú¶C±–şW*™#29M&¬¥2¸e”“¾©ìzVƒ-Õµ“àÚ”¥?´<ºœ·“™è8Yy§«[O?òm+ìæCË)K¬¯sÑÓäFù´iªâ¡¦´â÷IÛrÊû™XÈÛ;¯Úe	³U8¿Ú\r\"TZ¹-4\r![¢ßÄ©/+£Ñ•i@Ğ¶v{rAGÃ—R%á]\0›¯y”¹ìWõcº(›»Û—Ræ›\'à[q²³–d·)H¹(¤öæQn¶$Ò†S%³ÚåËu°ĞÛW[Ü\Zfäø\Zx¨ÔRrV·#ÑKFÖr¨[áU½QìéÛ‘\\ªdyK&¡.r¨ƒÉ(u©6zºv&0»ßÀ¦Ó§‘ù\Z„j¡É(ôu/ê{6AÃd¼IÙ§‘G)§\r[Íİ}ç‰šPTq•)¯jÖ6÷eš¾{¶cVßH¶7´W˜à¹¦RÒ½‹­[r—³Et´Ô“Ü‡ú\'ïàB‡‘(Ò”•ßˆq±^›	GÀmmÉlUd×²U¥o¹RŠİ	tİY%æ!Ì­­ÉiÛ˜Šo•‹±…ÖÅ-4À³V)ìËNÏÉû\n*&¢íàLF¾\"£[\n­Dæ“³.> ¹T¨zÙ\\o€¥á¥\\¿(mäer»[Q¯¾\Z¡ûÚ›y‘ı¡ûUjö‡eb4»şySQàFèj¿yQ¤]«Ñ«ÇSŠ-6=§«[‘ÚµüG<c_|3A¥j³,cø~…%JŠ¤ÛŒo¹³hğ13š«ª¥Ò,™™âç“KSºº)p]Kó…¤ËrWò:g¦v³(¤[©_qW½®Q8]ï±diiErAFûé·MƒNÛ -¸¤F_8»£ÙÜ•M,¸29\\c~v)”R@QæB°’ßqm‚µkØ¡İq_iaE¶)P¼‘vI%Ğ¡[R\nÙ¶ëN\rÓ\\¹\Z·$±>í¾\nÔİÍG‹vÅÛÁñı—ÏÓÂ\0,@\0\0\0\0\0\0\0\0\0\0,²	d\0“vA0æëÀ´ïNwämJ\rk€¿¨š~&Ô’89>Î¼=-8[— ãnœËª.Äèñ(²Ö¾àãeoëŠ\n;$•ÊÄé¾Åí6vÃ\Z²Zv9vvšÌ«\'ÒoâujÑN/Äå9æÙ¥o¬Íø=²åôÂû.p„MÀæ6`6%ò!’¹\0Š¹\\|\nvEq[Ø‘V&×ù¿iL¹´RšE®dåñı\">¨²’¶æF^”q1³ÚårôÓê”cù¸óåş…Å\"ª	N”\\zÆÿ\0µ’8«ªN–ÜnF¬‘{BKncN×êUQ–ÉP‘qA¾D¨İØ%oNÄiM—”<^áÂû.ƒiYÓ!¡¢ú‘§`……–ëCØ—¡•§Ä¦´}şÁ=¡Æ±ĞKWOÓe•ö2q±ı&£èäËq…ıB^œùNÔ(¾BÎåİ	t#Näm])º— Ó[”w[•®V	‰²½Ñ\r_™TV¢µÈÚt³¥¿µÕß\"â¢ït^Œ4­ÑN˜ê›[¾¤*n÷ŞÆLÒ¶Å*.ŞCf”Ò¥ÓŞo|Oõ}oæ\Z]8nš\\ï€á|¾¶Û÷†<·¦¼~Şê…È©GÄ»¦ûB	#—mÖTmÌ6ä^P´oâOwr6,h²ó*Œ\Z/iØ8¥mD—sM„S½­ÈlÓ¼?3?ªÍ»o¯Doõáª“ôf“\Z-[Ğ¾,(4Ó/Ó…×\"µº\\®1ou±j…1…Ùv	\'±*/¡\\WÛÔ­Jc·dÆ\"«o²*Šğ#i‰‚Ø¹]¡VÙ$WâEVN–Ö¿‘R·DÚí\\–ºd¾UOk­Jç¿(íì®G‰„ét¼u£`IßÜE\\_;nRã~eı>%.Ÿ26-(ô#NÛ´ìF…‰\\#¹REÈÁZñ	 ­ÍT|Œz—,Ò·PªÜÖÖ±¬ç1_”*xìmM«šær¿O©~[(óek²ÄááÈÉ©‹RO‘}¡RÑ8[ÔË©{X¶ã«oûEb:[?0©8òmû»­‡wâ6…—îß2Ü¡½‘’ÕŠoE0Væz¹ucU×ì³Ï§WæzyLKÆ,­L{ªn4¤îËŠ{EJlºm¢ÓV[âÙ{E¹‡–ÃbÎŸÙ#Bo~eİ\r¾AÄ\rOÒªyH±o´ÊÌ#ú]O¬XÙsf‘Q£{¾¢ÖeÍ/§RtZ*ÀÒÛäÚåV³Ü«KŞÅ(İ/!k{Šã·©-+İ¢\r-ißr¥h•éëĞF	ˆQVØ¢¢w/iMÊ7LlcN7ÙÜµ(%&dÊ=|z-¸ØµgÉ’“*qÔ÷[øˆÁ–Øö8Y&«_È÷±ãğ´n«^ÿ\0²{Êš2ËÚbÎ›;)=ËÚ7Ü8«•—ˆhöUºœ7ä4ô|€²âj™ìs\n¾¦ã(ß’¹¨ño˜Õ²êN>Ñ^UüŠl×2ì¶äˆÒŸ4lªÃäM¶õ.JæPÕ¶ñ$Sk´ÉÒÒvñ	xò*Óì¤º)³±);ZÅNÖ½ŠTw¬Ñ+^„¥ô‰IõB¨l¬ù/ˆ’MÈ˜«5½ˆ¨öií¸MZ—njïb¹»ä¬J­Ó\'_«h}DdÊ;rX~­Ãß÷hË”n¼Œ-íx±§Ç‘K™BD8&±¦ÎãA{»ğ#Fû„ieÂüÌ<Ş\råµß„èéñèbæ¶Y}vºÁ“\r9ÍDµ»ù²Ì­{uê]¯´Ú-K™×¦7Ú›nPä½J›¶Ş%-4÷êJª¸›orRèC½ì¸Ù¾á~Œ©[À\n\\[æıÅ,©«rAÊË¦ä‹N:¼nF›y—-¿àL“·WK\Z]Ù\rl\\Ón‚QDšY±\Zwç±rKÀ†½¦ô£ù›u4)ï>[-i#}P}Ñ¢ñzK0—N/²y=<0ÔÀ\0\0\0\0\0\0\0\0Qƒ|‰•9Gš€\0	ŠodU¢Vä\0©¯\0€	}‰ƒİXE6¬ŠáNZ–Á1¼ö~¿16¹ò6çÍ\ZÏg”×É&ÚæÍ­CmKù:°ô´©¯mù\\½¡[}ˆÑ¿;«íe§ãgoö‹óDèØm:XĞ£Ôi¿Î/ºovÈÓq³Lj±ZÉ³õúÒ·×g_«`äYı6³JëøÙÓñı°ä<ºıµÑÔÀØX\0ŞÖñÈ$VBÀ©. wEqK©Ù—\"Ÿ2´LbºRÛr˜Å¾»T‘Z´S$¬]À¯ÒbüËm5ó‘“–Âø˜z•¾—İgòx]tEÍí±V¡\\¿î‡cƒ+Û«],Øieíòt]{Cf–TIÒ]P~èİ„éiÃb>¬¼©îJƒ{K*	nº…v_ĞÒöˆpvÛ˜;ôÜ·ZCÛ¡—¦è·Zº~„ÊiÅ1‰¼EEüL¢*Üùô2qtj|ª§²İ¤ËN-sM7ävÊæÊv¡İs\"Öé±R‹Óp–Å•BN÷a¸¾jä»ølBö|Ù•E%ÈÈ§f¼Ê!B~bì!8îÖäZ´‹´¡u¹[ŠKŠ©ÆÑ*Pm™ím,ºz¶]¢ÚÛ‘•Ü­¬\\íÓ Údbááv’ñ7®ƒYm_æ~Ô£A%·3uà8[-­Şòz_÷t$½”NKª*È[$s6ZÓ}¢N”‘wM¹t\n/—€”	Ó}‹ºFŸş\0´ãå°QEıè€±V)Ò’O’4I&®¬ou¡ù–Õ¹3E‚w·‘lQ¥j	®[Æš\\‰§k¥}üÍ)ŠQ^ÑR†û4;rØ©A¥º[Jwiò*[r\'Oµ±1|âú4†ıË‘M[Q\n;ÙõW+ŒWN•E_kéº#§\"RvêXHÛJüõ¯‰±é²±ààáúM/¬Kmú•¢ÎãµËÎ>ve2‰Ê„_1¦Ü‹Î;nR¢O¸\"TJâ‚©Œob­$Æ=z•io¨YmÆËc\\Î ¾_RşFÎ£²·C\\Î×éÕ.ü>¶*¼š‹Ç©eõHÊ©Æö¹eÂİ\r\r1ç§r\rr]òƒ]\n6ˆt6D¢ÔQzÅ2‹&!bQv!Á>EÇdSg²Ü°FèzyOW_²Ìg©GV`’ç¥•É1î¨yßoµ­7W1YmÄ‡\rü‹®[À=	Ü4ó)ÓÔ½£r%§ä6i¨ãã«Wë-c32VÆUå¼›1­½ì™¤QmlN”U¥·Ñ!d¹#B½®D¢×\"·¶Ë‘:[ˆÅ.WØ­S·úø•¨»x’±Y\rØ¹¥=ÊÕ)ôNÃf–mdS(ßÄ¿¢Ü“·¡m¥}Ğ4°à¯º)”“İÉï¦è¦T¥§æ¿°šc8ø©İØ¿İµ³‹ßÈ…}ĞÙ§©Â°Ş·şŞĞy<\'MÚ³³WÒ{ºv´ŒíN–-btm¹yÂëq§¯Î¸T×}ÂáÅ¥°4}#Pâ/Ê5mân®+©¨ñÌêú–ÆšxÒ…ˆ²Qi®}<…ß‰¡RÊÑa¬ªiˆÕ“(Ğï¹z¤%\rŸŞ‹zŸ?E6I»‹Ç“\nÉï¹r4g%ìÁ¿Bh¦Û½ıÅ-$_•\Z‰o—¡C‰SJ!ùH«Kk}¼J ¯Ï©qGVÑ¾¯\"ÛˆÒÌ¬£ì–›Ûs.xj–Ş¿£,T„¡³V÷Ğ³mî÷)šÿ\0à¯ËÃ©niû‚ŞIåX8#)ÓKÔ³‘A<§ãİ£7E¶ğ0¾Ö‹r¸Q¿=‹Î8¶–%ò#O\"ş‡ÌJ;M1Ü.bfÔÿ\0W×_ÀÏEÁ70Šx*ßQˆ9]}§.e†•ß‰“‹_—MËäuãé†^Ô?g¡\rØ©¤¹se.ÿ\0™eQ³Û©	]ÚËÔÈ¡…«]~j2Ÿ¤K’Ë±0‹”èÍG«i‘¹\rmˆÒŠ\"1\\º\'7W.a°XœRn…TKk¨Ü¶á¦3{oÈ¦éîfWË1”©ë«Bpš±‡ÙXŠ·L©Érdii†¾Ñµ.o˜•íæ-µ‘•†Ë1xšz¨P”¢ù47ÛMödiµQäY‚şO/B×ä\\Ãkáê_Ğ(™n®-Sw9ÿ\0/Ös÷E©³œñ”\\s:—wÜ§Ù<\0ìs€\0\0\0\0\0­äˆDÄ\r¿‚04q:åVœgo¤ƒ5É°QÁU”pô’Ğìô£Éìí?ÎzVoòúÏÂâÎß\'L9&*5$—FZ¶×/cWéß©dìœõ—•ÒUqTÔ¬Ó’[/ÃÙ{ÃGV“vİ´sœ“ûe%üHë¸(_\ro±ÏÍ•¸ãšñ¾]‡Áã\"°ôÕ4ã{#\\[ìmı¤n…ş‚5n;¼YgìJá\'`-rê½Š„kæ¡Q]9%ftÌ?\re²¥,5;ÛÄç3ÊTŒÑØ°Ğ½%s“Ÿ++§ŠtÃÀå¸|\ZÃSŒğ2ToöônÖáA5êsomt²£¾äéWØº–üŠ´\\\Z~•Æ·/:mïk[rE•¡¾Åí:wq±U˜î	ÇsÊÄğÆ[ˆ­*µpñs—6›Gºàß\"‹L¬F¥s;È°yv\n5p”´7+=ß¥=™Ò»OMePúïàsW·#»†ï/$ÕG’\\ÈI“º¹«$[¡;’¼|`4¶Š¢¬ATVí1½‹‘^Ê±LW‰\\W•ÊSL¬5ÕIÛwÔê˜Ëgƒ§)á)6â·kÈåÙj}üvêvœ® QÁ—Øêãò¼&8yá(Æ–§$ôÜ×rèş“¯tí6™ÂËÎ_iùz¶\"¨¾x£_“®á`»ŠkÂ*ÿ\0quÅt(ß	Mõp_î“÷[Å®ëÃÔ?qyErdºoš	XPdèº¹{CèN›6TXÒÂƒ¹‘§©=İÖÄŒuJ…¹—Õ2t©İ‡ìö2{·Ñl;­¹£O.y>Rr–Œ¤ùµšGi¸6äŸ%£N–­Zœ:ò:S‚M\ZkI)`Sê¥ø\ZñÛä¯$é ¨\'íE•(²R}qCk+ÜëÛŸKnÜ½€¦ç‹‚—\'$ŠgOk—²ÈÊXº[ï­X‹zLºİ,›©+á(=¹èNû\ZhxJ\\^a¨Â–¨I½	+ît:4íJ_e]#´¸[„\\½‰|QË…üÛÙÓQ¤ÕÌ7eºk¡‘·6ªÈ6^aI•Â6³İ£sßr«iTbö¿;›§AşOªÿ\0ğFŸNšŒ¶7~‡êÚ¿_ğF|–‘í(»F>+rî‰Q¹ŠëJ	ò%@º¡±*E½6W%CËrî†‹kKiˆÁ—´İ6J 1kA÷r²ŞÌÑ ··‘Ğ«S½)ú3CtÓòiÅKmŞÆF?Ÿ¦šMj_ÔUí~eü,=¬‹Q·,×îióú)/Ò…\ZÔÔ!\'û;#fÓdıæ¿Åq¶&’şg/k<UöØ7wğ*Šè\\Ót[bÜa©—T¹nJR‹a(q¼}c\"£	á¦çÉëÚş<½6Ü÷xv6ÂÔÇø¨d,5%%%Jx$\\Ò¹¿Rò‹[‡×ÔaA7%³ğ/éğ#C XÓ½ÆŸöö!ÂÄ‹j/‘T\"Û.(]\"ts°¤T¡rµ­ŠÔn†Å—\r¶5ÌúÌ&½\r§OC\\ÏclÆ¥¹Ù±äÊ›ä‹s…æ[¿$Yª·æY\ZzÙN3ÀÒZÛ·ne9å,¶mF+xî’32H~­§µÿ\0ù-gĞ“¤¹{Q+¾Ëéªiné2‰AûÌ‰­º–æ—K\ZmyGÄ„‹®“å}Š\\eĞ‘MŸ‘êğòo0¾Œ‘ç(«lzœ;æJüôÈ­b¹\"c$‹‘‚êŠ´í¿35–œ\n\\l‹ú<ƒ‚ê™/éO‘N˜\ZgòÊ«øÌYDÍÍ#úud¹ëf-›äi=!i­Ñ:52··%r,ùò!(·B¤¯»\ZoÌ®1“,ª)r%&½åÍ¼[ø)Šwµ¹]*Iá`ô«é[ØÖ-ÔÛğ±¾\ZwZQ\\¯K<~\"¤”)ÙukcÃîõO§£6%†éÇ–û$“½ìL½#M:0ö\"ı•Ğ¸¨Â/æ/±0ĞüÄ-Ö(©Åî¬Ty9åÇ/“QŠz£ºHñrØ~°¢¥ºrFÅŸÂùlÓ\\š<,º)f˜‰ı\rš((û1Qú¨¯FÅÕL©Ãb¢Ïwv4Ùî^TÆ›°,¸&B‹îâÖè±£©§q$\\s:¶ñ¹¼8ØÒx•iÍk[Ä¶>Õbä«õ¥ÑË°Üû˜ékJ~ãOÈ·Î0êß´åSúE²Dsî%Šo^0\\¤Ï-Æöº=#ózí}#Ì”’øúEYÓ~fñÂ´¡,ãw½ö4»;4oœ\'äÔux¿‹#?DaqM¬ºrŠI©Årò5“[›§BÙ{\\–¤Í5«îİÀÉC²Lõ8V1sıgF¤zœ)	O9„c--FVfˆn’¥\r/Ù\\¼{ÄÓ™âTW÷âtHÔ·³Y(M}ãgÛæuÚßÛ—ÄÏi¯5¢–º•½Óo©KM´ú#e]‡ãú›ÿ\0ÃF{…îcpÔÉ0¶ıÚ3Ü,sßkE‡£äS£©‘İ·è4t°ÚXÎF‹«ß‘‘£q¢û¾£cÓ¶í\\³‚–¢ş·¸Î”>ÂÆ:šx:ßQ“=Aç¤’äìcµÑ™¸èÚ¼½^æ+ƒIÙ{Î¼}0Êv¶Öâ1z“Vµ÷¹U¶W&6%]7Î©EĞÄ_¬—3İâ*0y6\"é/aô<^Ím(bWƒ‰±q%;äØŸ\ræÎöÛåáí·Òı\r·€°°­®Ü¥ªYè•º\Z¾\"?œ÷›—fğrÁWO¤Ó5Îş*Iù2xŸJQZkSvç)3œ8¶Ú\\çUâÊiä•mÏc™T¦•FGNqâ“İ‹$ìº%Ğ§N÷5¬ô¥®¦ıÁp_‘aõ¤h–Û‘Ğx\Z\Z²hıylW’ôœ=½WNûáÒßqáĞ§Kæúûm§•(~aœÛœÒªş#¨¸Z‘Ì¸ñ5šTõ:8>Ì9=5 Úæ\0\0\0\0$0 ˜­È*†ò@oİœÂúä–ö±´çŠÙe{¯Ø\\ìÕ~n¦£hÏãú«ÕhgŸŸİ×ÕÆqßÚgêË=øû|¦mueG~>œ¹{z9\\±´¾²;ÂGÇM™È¸r7Ìi}dvl<ÉSTr|Šéã9§i›fú‘4şFåÚ|tæq·Ğ‰§ntq}Xgí×	hÑG³ÂÑÕšQ¿=hì¸jv¥{ƒ×ël;Jş×âvŠ0üÒ¾Ë¡Ãò/n¾?J‹;x™‡FN„ùûk¦;†îÄªvæ_î÷½ƒƒ¸Ù¥6æC‡ŞdiväÙİßEèîŞ¡BÆF›«0•¹sÆˆĞdiVØ‡\r›DíJ:rªwúoàsÌê]«Ãõ=/æ»Ÿ#¿ƒêäåö¦Ïš¢w|…®lÉ\näİ!bZK{D˜¯\"®W6.Ax•ÂI‚väWŞÖ)jÒ2òØ·^>§jÊéş®¡õ\"q¬®/¾N+©Ûr¨7—PÛû¸œœõÕÇ\ZWjPÃa}eø\ZfI×‡ª7~Õ’XL-ş”¿EË[ùTnº¢pú+~ÎÑƒ‡èôìÿ\0e~årûF?¡Òó‚üêŞG5½¶‹*ÜÉÑĞ½o±:7½ˆÚV•5û$èÛkc÷ê¹F”ºe@([¡‘¡Úİ‚½¢6…*o¡‘İxîş	\r¬± ww2;ÿ\0òOvFÆ3§{ls®Ø#¾ÿ\0àtŞíØç²Sµ\\½yOÿ\0i¯\rü”ÏÓŸAmn¥Ø­ÕÈ;Hº©¶ÕË\\úD•ù£#-§ú]6¾’!.WFn]M,]7}ÑKz^Nİ?ÍE%É\Z/iĞı7·÷rø£¡Â›ÓövW4^Óißƒş\\¾(åÂşMlé¤Û§zœ]ÿ\0¥d©EÅ;WJ’mŞ×Øª0o¢±rœofú—´¥©Š)G—“7ƒyeWÑÏğFF“º¿>¦õÀ´­•Ô^5/÷#.J¼zê7èJ}CË‘:ŒVYÑbt;rØº©Û—2¥s!e˜Ó¶Ïv‰pò±{FïÀiA\n)lº“2ö›\\(]b´?4öèÍÆïÜtJÑüÔ¾«9ò»/ˆ¥Er±‘†IU…¹jE¸ÂåêVƒ]Z-åÁ$ıæ»Å©<E×Cø£hÓv÷ı£ZâøÛ‡úâWcÄŠ·>¥ØG«)‚]K±Š¿!R¥ìŠáíz‰/#dï{ZÆÁÃi¼$ù[_àxº6WÀÔ¿ïÁPô4ørİË¶º\Z~Â¢Ö‹íĞik‘u¯¥°,8>iÓ‘{C°ÑdL´Ù\\ª1ë÷—U·+ŒÔ.Ê´;Ø¸¢T£±\"Ë“¿>†·Çõ„î­²6§\r¶5œú?¬ª]x/cÊ’±jpÜÊ”n¯àZšÙÛ‘mw$‡êÚVó-qVM®&fGÕ”º¿‹,q\"K*Ÿœ¢64Ú…wKÄ¿8İ©ôğ-±mEïê[’öŒ‰E”÷Nû¡mA6îz|6¿ZEŒHÒVöOO†áúÚëRØã\r¹£¿/y}Gk\r73\\:‘¡¾eı7 î)*a‘*w)qñLÍ\"ÿ\0(WOé³\r.g¡š«æ5¾»1$§©”Y¶û¦ÏrëÈQ]IØ¥$¹’£¶×Ü•ÊÌ¸¢’SÛ–åVº¹)¡$b­í†/äÔ¶¿°J<ùô7,E¦ÿ\0\"(ñøš+E5âxM-Ù±qBZ(ßÅJä\r¿ÜÁ%Î%Å·±V	Ğ†¯£ş…Îí]íĞ+>…òÉíôO-If>²6n ŠYU[y\ZŞ6Ì(9}8’6èGdúõ*ÓnEÈSZlN’¥%°P³/¥µíÌ…\rı¥Nä$d*méô	XÑvŠ©Û7«îr7÷\rìh¼\\¿\\Ö·‘l}Œ.WÎpß\\ß{·eéø\Z/§ùo\r·íBİ2rUÎ¸š.9¾!?¦Ï*Hö¸¥7œb5sÖy3Ùr/¥jÌVæûÁÑÕ‘Ğµ¹¿‰¢(»îoüÔtoô¥ñDf,ñ…?Ôûtš4YGİNÆq¶Mìõš4=	ŞãÕ7“¿íp„Wåè%ËL¾”×4ºÏEË?§nZeÓÈ½U»ºjKÚK—S™ñ4æØ…eµF¦ãäs%‹ü¯‰¿ïL=¬òZ½ú‘§ÊåÔŸ.AÅ³U]…£ú‡	ÓóhôÜ[çÈÃáuú‹	ü¤z]Ú9òö˜ÇTö\ZL:vd%İÜh·C%Ò»š{Šé¢Ö*•ğõú/c7Ak¨TIs‹KŒæ	¬D’\\¾óVNèô³\ZzqS¿ÒQWÛ¡×é±ç\r®ùô)QØÈœK…ŞÅ¶­¿³(¹<U×HüY´gÔ»ÌŸ¿š×eñ½lZş›vydø‡üçÎö×ÓbaùçêmıšÆølKğhÕqQ½W¿SoìÎ+¸ÅEr¼lk—ÑYíìqM+äµ×†ç.«­Û©Õø®-dµÎUZ-I•âFkrZVÖ,¸´îËÖv(—=”ª-¹Ğ¸	jÉUúNHçï™Ñ{?WÉ[ÿ\0•äôœ=½·÷”8óM]Ûè¶)”-¹ÊÙæJ›TÙË8şKò­e×Y×*A*Läz­œV_ÄÎŸöaËé® z\Z¥]á	KÑı9VA‘W^Ú¥4¼\\YöÛt7´Ù ªps•’¿BØƒ)`kµıLŸ¹‰`1	]Ñ’O–ÌÅ¼kA{H»,=Ho(µî(¥ıb¿4ÆÑ­:?fPÕJ¦ŞÑÄk)ÄmıÛøe±O4ùìÍ“‰â¿#âlÿ\0»gw_ı?\Z¿HŸ«,—ñß×Íy²ÂæùéÉ}½ó\Z_Y£\rJØX¯#p¿*P¿Ò_¶P‡èÊİcÈáù>İ<~œ«µ%úÍyB&–¹›·j±_•ß”2”Êû\\Wñaœ»SmÉ[—>OQ+¸2…?koq¦ÔÓßà˜~¹Ã§ÖKâv¼=;ÒŠòG\ZàêÎ°ş\Z—ÄíØx%Mz#‡ä{vqıV•2t$·ädwjÛr9Ú1ô\\•ú†ä÷v`cèwòÙ‘İ¾ˆ*{l6–:¦3!Óæì45èFÆ6‹l627\"P¸Øçı­A¬š¹kwûPög_ín”¥’RµşyÉ9®Œïà¿‹“–-Ûk]Ùâú’¶{‹]b§“æM¬JWeÎæ|ìFÓ¥}K´×\'âPá§šeÚv±_§ìË±…äì¬QNÒ\\‹”ÖöeWı3ò¸Ş¼}y·*‡êú:Àâ¹R]ü}Ná–Gõu\rg7·OFíjä˜f×íÉ}ÈĞrèÛTt.×ıœËI| e)¼T9|äiÇôVÏÉÜpQı—”à_pv*ÂSOOm´+ıÅå#–¶‹1‹äŠ»¶¶.¨$÷EJªVT\n»¿em¹yCJò+Pçq¡ ×‰R¥ãÈÈT®JƒHİ«JæR¥~DÆ»h•LÊîúÈ*{y1]4kÛLtÔË´øOÿ\0iÔåNÉØæ}µÅF¾]nZ\'ñ‰¯ü•ÏÓA]îËÔ•ÛV(§MÏæ¢ı5TìâÓô:íc\"aNîíUI<]?¬‹4¨Ê6×tzYTË)¥ËR)oKã;vÃó{ôFÚd?MÂíıÜŸş£¡*kO¸ÑûI¤¥Âß÷rÿ\01Ëüšø´eE»4‹Ñ£¶ë©—\nQ8ª4¢§ÈÛjø±aM§~~%åô³õ2OtŠã‡“ŞÍX‹S¥š0i­º›ÇÇõmWoÛü§Â›Ô½Mã¡ú²®ß·ø#<ı&G¯İİİøÜ<¦fºË¤¶Ò;½­Ô¿¡±¡òµÂ4Ûà4X¿£Ü4À°¢J…åşì•5H~nIuLç*\rIú:¬-	mû,æú}¦Z\nv.á’ùL/ô—Äˆì·æ\\Ã©*ĞñÔ¾$¥Ğ4\'SZãiÅĞ¿Ğ—Å[î×WsYã8µ‹¡õÅÊ<Æûø•¤íæJ‹“Iº3Kt[b_“Kd\\Œ4óMz•J)«øbI´lœ$¯—ÔñïÁ\Zú´­âlÜ%\r[ı?Á¨zzŸî‚T<y,èh‡di¹`ÒÆ…mÃ‚»/¨;ƒK\nò­ä‹º\n´ó@[TİŠ´m±r0W.(îÀ±¢êÌÕsè~´©è¾Ü{»š§Á~RŸ¢ø\"ÃÉ—\"Û§™‘(¤Q8]X%°äPıWKÆîßk,ñ,ä™¯â‰›Cõe%àßÅ”qò¹+^î<ŠşÆ*OksÜfK\rRûBOÜ[7œ­äÓ/³LYA¹nU\ZkÀº©ï¹R‡€Ú$¬z\\=æòŒŒ8SMîzœ?Nù¥7áRØ4\"T-{—ôl4E­ÊìXĞ;¿\"ş„‘\n	,8%Ï‘C‚|Ñ”áäPá¿ 4œŞ¬kxkf_ÒÎü¥^ËöÙ‚áRğYĞïrŞÅæ¶ä¯êW-I+Æ2~is\'f–Tv³=Ò¡RòŒ£~WE)¤6inQiò!+¾EéGb4µ°–Û.FéOäT¿a\ZtbÓFë—Âø\Z6ıÔ~Z<~-‡³KÕšşé›?Ãó4¶ı¦kr[?$@İ°ĞüÌ.¹Æåq‡´­Êû†èSÚşÊøt$šk˜^²š¾‹âk~Ù…şò&ÛÄ0_’+ûS¶aGïàì£tï±=Ú±v0éæVÕ‘Â:n_Qê4nF­Ÿ3!CÅİÜ~îÌĞ8½5V¿+££ºjŞfÆªùåm¼>±ö<şKòæOïÑcbşG=áÅúû§÷ˆéJoÔœ•Óšq\\tç8…oÚ<f¯±ïñŠ¾yˆ¶Í;}Èñ\ZV¼¹¾eç¤U™Á¨í±Ğx-ä¤ş”ş&;_ÑĞø.\\?KgóåÏÔŒı\"EoNÙ+k÷‹ñ9ûM6t®1£:™$£J.mÊ<¹šäÜ[Ùê½¾‹#Òl`Y;ÇE¾!¤—Ñ—ÀókQ•ÕD”º®G¯ÀÊÜEJßF_öô«pÛÔåÜMNÙÆ\'ùŒë*¹œ»Šl³ÌU¹wÅ0½¯úxN-lE•¼ËÓŠE«4öFÑGOáH7aëIŸwãÌÀàê2‡aİï×’ğ=uMt9ïµ˜ıØîî‘‘£~C»±E˜îìd¸\r‚Xİİ‹xŠz¨ÏoÙfgwäQR\rE¯ 8mmH¾jNÿ\0iƒ(îz¹í¿(VÛœ›øs[ùxzgbÓ‰D£kçbW´•Ë«¦ÕÙ\\IÅ/ğâşósÎè¹e8”–ıÛ5.Ëal~%-¯I|Mç2†œ¾½ÿ\0w/Ëí¦1Å1Pµwuº“FßÙ¤¡N8·9ÆÙµİcŞÍ%ºfÓÙ•\nUkbµÁKJ¯ï5Îş\në·½Äò…\\“İÏ[[½ÎU^+[¹×8³OòEyèĞâ¹§Ìä¸ˆÚn×#‰9úXqe6³.¤º”J)ËcfV(p»Øè½ÁşEÌg>…Ó²:?fğıG-¶UZ_b+Éé8{{Î[¸Û~FT¢º”8#™³¥;Ògí\n9Í_¬Îİ8~iøœ_´”–qZş&ÿ\0şL9}5(îÒó:?eØjsuİ’9Í?ë©Ó»\'å/C«ä_Å—í´ç™t]]Æ4í¡ó‚8†gOR+Äú>¦–U‰k÷oàp,é?—Tõf_\Zû[š0W3ÓÈ)Æy…4ş’<Ë¿\rÇVaNŞ(êäú²Âví¸‡éÓåÕ#\"Yu³¥M¯ªŒŒ²¢Bşèd÷k™å\\šé«ñ._†Sˆ}Å/êßì¯ô8®**8¹F<¯àw®+§ú›ÿ\0ÃgÆ+ãä¿ˆëø÷¦<±Ó;-¤r^66>*‹ü‰·Ğg…ÙLCŸ©±ñ|täx—üÇ?»Oú¸&9~“4üYe-Ñw‰Ÿ«,ÇšHôqôã¾ŞïC^m‡úËâw*4í‡×Øâ<æØ{íí-ıçw¡ÌBèáùİ|^œwµtÖt×+Æ\'‘Á¸hWÎ0ñš¼\\Ñìö±e´¼#ğ<ŞMæøt¾’ø›Oëe¯É×¡Ãùl¨-X<;Û­4ÎQÚfƒÏ\'=(ÒV^Ìl¾ã¸S‚î8Çk?ö†¢ô1àËy/Ë:cvu\rYæxËñ;…\Z›KÉO³X9g˜{;{Hî´©ûMtE9şËá:YP²Ü•Ms2{»®DªjÛ˜mv:¦ƒ§c#»ğ!Ólm+\Z6#»»¹“İí¸î×^AgM[‘Ú·ÀÊtÈîÈ‹1»»lù”è÷ØË”?6Ñetó1ÙvCºÅQ…h^úf¹3Ë­ÂY.²ì=½³w{1Tï{r&eK:|áÄ¸ha³¬M\ZQQŒfÒ^\nçcŒWûÅ‹ò«/‰äoî=Lnñçkø)b\"¥âw.áü®¦M‡\\\ZR•8»¸\'Ğâ9jk¬}	ÃQıE…¿î£ğ9~EtpÎœûµ¼£‚ËhTÂahÑœ¦Ó•8¥ucœRK{xg¶ˆ[&Ãÿ\07ğ9=;®—±§\rüYòÎ×–ü‹ôÕÑfü–åèy–ª½®Ê¼tøÓ)²ÚQ|•ûU£o½do+Ã¿\Zkàróºxı4>Øãlù’ø#@É£|T}QĞûhƒYv\rÿ\0‰%÷#ä±+‚ñh¾Bı£¿`éş‰Oê¯‚/Æ›*wÂRWı…ğFDac‘ªÄiïÈ¯»Úéu/ª}YRTé©ø•hèdª{r&4ü9KŞÅ]Úè_tÉîúK\Z·äJ’©í¿2{¦7v;³+»v\nŸ!S¦,©û,åı¸Sµ|¶Ëœ\'ÿ\0´ëR§ì»Û‘Ë»t§lN\\ŸĞŸÅã¿”W9Ó@Èè©ãè©nµÅ?´ï4rÌT¢ğ´ÓîÓÛì8¤ñôW^ò?èÓµX¾z£ÿ\0?Ä¿5í\\#˜ö±…£‡Æ`»š0§zRv„R¾ëÈÖrDŞ:’·9£oí‚ò†ùSÛÿ\05l	ãé[é¯‰;üSûv—NÎË¦Æ‡Ú\\\\s/òŸù™Ğİ3Bí.?¬°«üşc,}®Ô!EÅ¹ÚÅêpErKÈÑVİÀXZU2úÒ©J3µK\'(Üö³<ÉÕßqKjRkÙ^ÈÀìú7Ë«¾¢øŞgÕõü;©|•½¬åğú}ÆïÁ¶[U‰ø#P…$÷jæëÁ1_“*[eŞ»}ˆœ½%ëè²\n+™yAu\'B÷tõ\Z.‹îŸ€îİùcEĞP24Çwm¼	Pl½İ²t;s¥4âî¯±Í%Í¤º³©T‡°ïàré/Î5æËâ)ÚÖê]Â«Ö‡ÖE¹n‹Ø[ºĞúÈQÒ{»\ZÇ\ZÁ,V·Îø›z£º5~7ŠùVêKâR/‚ùe+ÛçÇŸ©¼÷ì–ˆsİÙ\ZV\'‹£oŞGâoúÅKRâêQ&Š‚Óìt±ãF\nÛòèl<]\rXœ:_»ÆĞ”|Äc4Í“„á|Oæ~×Òz’·Sfá(ş¯©üË}È”½-r\ZÊ¸ynUU…\r¹n4YìdhòÜ8»–>‹¾DéÚÖ/(mÈh¿2E­k”>Â¥µ[Ô­Au+?¼¯G@,8«Y\Z¯EG3©éqPİ\\ÔøŠ?­§¡€;Yéøä´¢RßÈ²[Cetíçñfc…ËY?Õ4½_Å™®6EhÅ•?#LÏ ¿*b\"¾›7¹ÁÛÍš^}fµÒ\\ä@òtßb¨ÃÃ—\"·\r÷EQ„™e£dz|9æ‘·Ñ‘€ÓµüS†¢Şm\r2cPğ\'K»24X‡ª¬h]C†û—ômÈáàŠeg±’áĞ¦PÙíĞ‘£ç‰Ç2¯o¦Ì+{ùNºş3QÛbbV$‘¸d°RÊ°û~Â5;^Fç‘ÃVQ‡ú„¢¼î+¦–\nß·ø\ZÒFÕÅÑ¶Ÿ×ü\r^Û˜i^ŞV²&Í­À¥/Fí—Bø\nÊÀÓ-ì®~¦õ—E,¾Šÿ\0?\0‡ÅñüÅş“5y®‹ì6Î1æhıfk[{˜Ö7ÂÒó‚üñ†×ñHş‹Kê¯Iy\\Aùõj8(¯Ê?˜¾(İx‚ŸêlKë£´Ó0i<}ùk_ ßcej¹[r½\\‘eR¸Ğîdh\Z4_©ùŞÃA\"ÆÎ{Çôç•-Ö)ıÈé.;ã¨5Õ]-‚/†áúû¿ÅGOŒv^7ÿ\0CšpÚıƒşj:—wì¿OÀœ‡0ãX¨çu×M¯ëdxill\\sñ+ë~¾×|U«2Z¯c¥öøj“ğœş\'6±Ó»;øj×ŸÄœı!ìèO˜îı‘” ;½ö2YÉxÂ*9î)E/Ë¼\nšâZ)uŒ¾<ceâÒúr.ğüQErö\'ğfŸ¤WHPºv³9_GF}‹K÷ŒëšÜr~0‹Yö.êÿ\0œeqötğZŞã»Rò‹\\Q·4i¶zu‚şà’ı×âÏWEŒ§~Á;wø³×tÌ¯µãÓÚä*w2»½¹\\h²äBX½İŸ á·#)ÓÛT×P1;¢\'M4ïÈËt×B—Né«é.ÄÑ™×Qé6½ÛsŠ~§³Ätí™×²ı·øf‡}ÑÓ…éXq~¥²ü¢ŸMîQ(İ\\¶Õm•«æØ…ãI¿½ş>šù{şî_Bì™ß<ÄG§rïö£¢æ4ï—×¿îåğ9ùÅÃs-«É$­vm=”E|·ô\"×ÚÍ[3œTöı£kìŠ-æX»şí|MoÑOÛoâzqY&%¾Z68Ş!~qîv®+¥|‡õQÆ11µIi]Jq{N^˜²‹±E·±NÏÆåêtE4¡\'}‘Ù¤udµ.¶ï_ÁêÍræt®Ëá|§ó_ÁåôŒ}¶Nîü‘L¡{x™N6[”ºg,lÃ©Nô%Út4g5¾±Ş*Rj—.‡íZÎjÛÄèø×ócËé¤ÓMÎÈêı‘RrŒß;$SKyú{±äœj/Ùi4tüŸ«>mËˆal§ü¹|ó½±õ/âÏ£8–ò6&û~mŸ:ç‰~P«êÌ¾*ÜŞSÛáXjÌèÛé#Ääö=îºÍ(Ûé£«’ş,xı»öYNØH]]YNš¶èe°O·$d:|ı*ûv~šçA,—ü¶p,lo˜I/¤Ï¡8Î*9-øÓ>}ÅÙãåêÎÏé$uÉé9eò—ƒŒã§ Å?àg‘Ù2o,–ÖZ¹xl{œs÷{õ†Wói\'âùë¾*~¬²•šH¿²ÄÏÕ–ck¥àÏON;î¶^†¬ã–şÒ·Úwš4Ú ——Şp¾\0_®pî+}kâwêpüÅ?şN¾9ø¸‡k–şJŞàŒÎã¯:Ã[é/‰èvÂ­ÄUğF/f‘¿áüu~&ÿ\0ı¶r~né\niPV]#ÚêKˆë(ôÛîGxT¯C—C„vº´ñ5Vsüo³NYÒ;-¤åŸáıNñFšT×!Ù:K? ×‰ŞiRN\nèsı“Ç?°©7È«B¶ÆB§Ğèæk¦/wÓÇ Tîe*KÀì\Zb÷aÓHÊî¬ i‰İ¥·‰öµÌÇH¦Tï»˜½ß‘İŒ®ítš·˜ŞÉ–1Tßw)yƒ§±geìLFŸ4q²·ãoûÙ|OÇ¹ÇQ·ãRıì¾,ñ’G«ÇõOl¬ª)âbß‰ôOSÑü\'ò£o°ùï\'‚–\">§ÑÜ1Ô8Fÿ\0uÉò«~M¶ºwÈğíòUılrJtÜ“·‰Øûl¦ÿ\0\"aÚ_Ş¿ÉhSrÙ\Zp_Á^Iµ4é´¶øéÒ“é±‘Kk)+Üõ0¸E8¥m‘l²Ò¸àÄÊè5^6O™ß2jVÊ°ÊÜ©Ää9~Fª¿;«)¥|¶ƒkû´^l¶èÃ9ÏmJ+-Á§ûÉ|ÎrUúT=N¥ÛnK+Â8¯ï%ğG2É!l\\ÛrüDkò}\r§|/©‚2,04›ÁÑVåü’¡¿-Îkí®–;»•Æê›êV©¢…OÈ­S¹}S+Tö»1•?\"µOí2#M^ì©RºÜ!Œ©²¥Mu2U+ ©Ü%İøîÆOvN‹\n1];#•öëò¬µuîê™vTMÛ´tæjÿ\0\noÿ\0R/Ç%rh™\r;cèÇüHõó>ƒTõ»ôŠ·¼àÜ;ü¾y‰ô?v­Bü¾Ìc”öÍfxäÏüÆ©‘E¼Æ’\\Üãñ7Ú)¯ÊywògşsUáè¸æt-ûÈüGıQûvéSçoÿ\0´øÛ6Â%ÿ\0™*tùßÄç]¨Ó¾m„·îùŒ±öµj´â›ó*Ğõy)RQJåÕó4Dn}ŸSk.¯~]ïà{Y¼-–bNêyÜù6½¿x¾³šÓO.Äß÷Sø3ÚÚrø/fÍòèn¼,²§óÁ\ZjŠMÛ©¼p4?TÔ¿>õükèÓØîßB{¶Ëê\rö*,¨tğ\'IyAs°Q]\0²¡r\\ÚZ\'C[Ø\Z¸ô>d¨2F4áì4üS8şrWç©ØëÒÉeóŸ«Ñi¦ız—0qı\")ßç/‰\\b­ËŸRöšùD=WÄµ©tİÏ‘«qÜÄaU¹Â_qP½W\"»ü\"B_Pkùr¶6ïıd~\'CÑ³Fƒ‚…±T¼5¯‰ÑgwñF¥Æ	,VùoâM×‰°q•7òºéİ¿‹<U”/¿³pœ/«ü×ğF¿§uêl¼ò\n¿Ìü+ÒÑr{¿¸½£Àwi®AU\r:—´%¸Ñp•ÛÄíZåŞí¥íì!kMù’¡rò‡:·°´ ]PÛbT[	ZĞj|E³I/àÀÜÔ¥êj|CÖ“msŒw÷<i+\"2¥OkÈ¥Ãg~CccáØ~¨¥o|Y£ÄÇáè?É4×œ¾&vcJ“4¬şšk‰úæıİ¾¦“Ä1Õ›â-ôØF‹»ø’ ‹Î%]Ş×ÆeøŸCõ¼.¿fFa©Øõx^óxxi—Á³iñ\Z72;½·*ÇĞÈpfN›t\"Q@c8j|Še¯#&PE=Úl‘¡q-šâ/ôÙkïâz\\Gg«ı6yîÉ+xä—#táø/Èøk}i’OKfñÃ°¾M‡úŸ‹%æñ6°TÚ_Ş~©müº›\ZÅşO§üÏÀÔ6¾àˆ²µüIŠ¿;•E$¹ˆ¤Ü˜MJI›ŞWå´/û¨ü\r\nÍ§Ğß²¨~®Ã*?\0«Åã(~BßIš¤à÷ôfãÆ‰¬=®ßÜRQ´¯×Ğ\rÿ\0Ñ)}EğFDawäS€‡è´mû´d(åñäLU¾£à’ü¡Cù‹üÆÿ\0Ä_‘1i/îÍ¿XaïÏ¼ùˆƒ£ÆÜ¶¹Vì!·¡Z‡ÚH°¡äT£v^Ñö•(;cHP·##@ÑâTXĞîsÇÔ´g•<\\bşã§*w’Vêsn?‹ü½Rı!÷G\rÆüC_ãEıçV;[ş¼[ÃQÿ\0x°?ÎÄë*Íx¦2§`áÄ8„üSû‘­N»gh0o‰1^Nßq­hw/EŒu5ë±Ô{6ƒş‹QúóøœÍÆÒÛÄê}šÅK…©_÷µ?Ì3Uî÷}HĞß##»]\"•gãŠvâbş6WÀ\nÜW†ô—/FUÇ1oˆñwıã+ìîúW„ÿ\0ÅşSOÒ+¨(+ròØäÜg Æ+rªÎÂ¡xœSş‘c?šÊcí?§…mˆq·2µìK‹µ‘ª®¯Ápk†0/›îö~özî\rwBü1};¿ÅÎ…mŒjcAÜ—##»~@%Œ©®lhğ2{²;½ÀÇîüƒ§µ¼v2{µÕí>DQÂ¸¦œaœbcáQ;Nç½ÆÚÏ1Wæê»,·ètaé\\–¦›E¹Çuá}Œ7(”7öWRÊ¶ÉUøŠ¤~–_Ó±4µaªGøÍ;%_ï;Ms¡?ÀêØš£NÜôíöæ¼|û›Á,]EÕ6¾öm]‘+æØ¥şâs:ƒùmD¼[~·fÑØı;gx•ÑĞßíEÿ\0ê­öİ¸–yâ—ølâ8ÅùéoÕß‰áú‹§š¦Î‚X™z²8¯iÊtÁ’³Ø˜ÃmËúRé×™\nô7Û=-Â’r^¼•Ùd-“ÕVåWğG=Œ7[\'²¨ß\'¯·÷«àŒù/I¢T®¼‹n™™İøó(”/}v‹5)~i³…v»î·…Ï jQ½\'æÛ==9ÕWæÍş?Ù—,éÎè%­Y“±š^ÍK»ì9‡_œGpìR	áª&¹Xéù_Vw[wRıIŠÛû¶|Ù§ùB¯ÖgÔ<M†l›\ZQr“ƒI%sçŒÿ\0†³\'©5„Äo\'Îı¾.R^ÖåÆÙÓW¶èØx2.Y¥\r¿i|O¯…œE*”ßñÅ¯À÷¸ß–pşS_«–Ë‡L8±³.ßCåôßÉ ­û(Ètöex\ZkäÑ~ûİ5¾İ/öîÓVãšîş.ÿ\0@ùßÿ\0ıYôÇOböıƒç:é,Î_Xëø×ÛHìı’RıTßñ#ÚãØ%Ãx«ı²H©d‰x=ÏO´¨ğÎ)¯¢Œ?îÒÎŸ7ã¿µMy²Â[«—óú\\İº²Ìwi¾‡©§^ÛO\0Tî³œ<¦kuêwhg9gÉÒxÊ=/{ÿ\0¡Ã;<Â|§7¡µy.^§Ñ0á…Œ4GekXàç³ÉÕ„ü\\µÌE<FRt¥©mf¼	ìÂóü7ÖüLŞÖòiÇˆjºbúF6^âçex*”3ü;«NJ:¹µæi•ŸÄŒqü½SüÇªGí½)4}İ^Çís,¯[‰ñ§J¤£©òF<L¶¶xï¥‘Sı}Fë©ßiÒµ5·Å; ÀÔ£Ä{ØJ;[twjTõA[Áå»É¦Ì{XT¶ÖÖ2´mËrU=·1Y‰¢Ä÷fWt¹ìnìîİ®é!İ„±7àGws3»)tü€ÄtÊ{³3»)îúˆéµÌ±Š§h;.‡¡İßĞ³ˆ¥ù¶¼‚/ñå&¸«·÷Óø³ÄîÍÃ2ú’â|l”/ùé|Oä:w’jş(ôpÏ¨äÏíg%¤Ö!Y_sèŞ§l‡fÿ\0ª‰ÁòŒ4a‰•à}ÃpıC„²ßº‰ÏÏ–ÚñÏÅ¢ö×Jù~õüY€Â¤ÑØ;f¥¯%ÃõüéÍ08Vı—hqå¬L±Ù‡Á©ËOéPÃ8{‹Øl$ÒÚ-ÓÓNİ¹moDa ÕDv¦«h7û´r<*]úß©Ùr¨\'–Ğëùµğ2Î/úsŞÚ“Yƒşd¾æ9oµ‹ƒŠê³ÛM8¼¯	©xşæf|®I«4m‡ÕOÛè\\¶\nX*-\'ı\\zy#*4Êpı‡òÓû‘•\Zw9ïµÖ£\r¹Ær/FŸ‘\\iù²Ìi•*eøÓ]\nãK¨Ú#L«»V/ªkÀ®4ÂXê™*™’©+¢ÈŒnìwFJ‡–ÄèDnïÇ™È?Ú(cr«~ææGhÑ¾Çÿ\0hd–e•B_¹›ÿ\0Ô8ı«“Dá•|Î‚ğœ~\'Ò=Õ£ö:p¤Záÿ\0™‰ô¬¡u/Byof>œ‡¶Ôã›åëü	ÿ\0œÔò8Ê…\Z‰9{QÙuÜÜ»p¦£e÷_ı¼¿Îjü3ÖX}K•Xïï/>£¶:ô¥ı½úi{yr9çiU{ìæŠÓ%QI9&¯»ò:J{»ø¿‰Î{S…³|\"}(?ó3íf¢–Ö.ÓŠIE¦ì‹°W’òeÆùÙô/–×şbø#ØÎ!ú¯åFy½ÇVOUÚßœüìgp¶Q‹kŸs?ƒ+û¥$Ú¹½ğSÊ*5Ö«ø#CNüßıXè=ŸÓıG\'ãUü£ÚŒ\n”Kº\n”\n‹*Û“£kt/i¹V‚F:‚*P/(ôd¨nTYT÷ØîÅ÷İİ‹:i«#÷o\\•·Şÿ\0iÙÜ6µ¹œ’¥;Wšğ”—ŞZQb”-²èfai¥Z?YN‹’¼S—NF^\rS¼‡±.k’b¬èú9z#Sãè%[â¿fsPÚ+nœO´~s¿‚_TF·_¥R¿ÓÄé3‡Î¿ŸÄç8l]æGâtÙGÛ{ujÍ?Œáúfùrø\'CbãxµŠÂ¯ğåñG€ ¤öW—R»OÃô\n¯üGğF¹òzÖ³„“òLÚx>Œá­­I^§UåÌé¨}„èEı\r*°ãtCá±\ZUÀ³§~ASl¿§¯B6ùgGB¥¬]P|‰îÂ´ôDèVÜ»£rt[˜\\-ÈÕ8Š)fõSåecrĞj<MoÊõ=Á£Êh‡­,ÑK‰-‹‡¥5–EJ•GiJÍ.hô5¿ÜÕûk‡\"OM¯¥/‰è÷kŸRÃs|ûš¿a¥çªO4ÄJqqzİÓ\\¼‚ài¼A„ÄÕÍñ§B£­š‹w%/»ñ*Œn·äeUÁW¦µU£RÎ-/jÏªÖ…ÔõxVòÄë|ZxLDéê…\n’‹äÔ[=nÁÖ§›BS£R1Ó+¶€Ù,ˆîÌîÃBdŒníàö±é§¸pñ\n±]4ù”ÊVFWwÒÄi³œq,ZÏ1?\\óœ_Šclóõ¿yz	•1kMínF÷ÃPıE†~·ŞÍ!ı¦ùÂÑ°ø~,æñ½;åĞ²¿ç9øliŠ-ìÍûŒ0õ*å°\Zn¤µ§ì+ífjK)Æòù-oüŒm$¬‰„/ÌÏY^6ëôZşè2Ş#[“¯Ftîìµ&†ÖcY(…ò¼7òãğ4=\r\'ê¬7ò£ğ,­x¼mMª]¿n[ş©(ó}MË#l¯ø\Z›¦•ÙQĞ2úmàh_ŸwıˆÈPÚÅ9t/‚ ¿Â‹û‘’ ùPòóè_$ÆySg?Ã/Óèÿ\02/ï:N}ò\\e¹÷,æôWét›ıâø—R„n¯ãwğ*PğEØ@­@!gCeJ\rãàN€,h²\'C±A=ŞÀcª~óšö‰\r<ARû{0øIS9¯i	H%njœûí1àğÔoÄûÄ~\'_TíÈäÜ1q¾]ü~\'`îÕ®¼ÑjW&í<I‰Û›OîFµR»´e~$¯·%ü(Ö*CÙw&0š¼®©Ù„/Â´¿›=ıç1•%m¹W²Ø[…£oßOğ\'/Jé°èô\r\n%ÅøîŸûÇŒmx÷-p^!àø—	YBU-))F*ííc;´(_‰±rS·Ü;8øÃŸñ¯ı,ÓôŠè;‚Ûä…–ÿ\0Ôßc—qTåˆÎñUT\\uTm)^ö;u•–Ü‘Ë¸Ë\"Ì±\\C‹«‡ÁV©NuŒ£™Mê’4Õ­7G©Èó\'[„­F\rÚó\\ÙZV±}£N³À±ÕÂ¸å¿ó3ÛîüO3iµÂ˜å¿ó3ÛîÌï±c»Øi·C#B°îí¹+1û»…OÅ\ZîÈîšèB§v—¸Êîö¶\"ÑÁøŞ“†Š‹æ¦Ï\rS6~Ğbßã¿mšò[µc\\j™E…º#Nåù-îg,áç2ÂGƒÂj£R/Lµ%rşHÒ¾Ì{ê\\Q	R†¶éMZöÚÇN­[1†£©„„•´ÅBW~¦³Ùÿ\0f¹^}^6Š¥N0”[rWnÖ:éµMİ]ÙØÇ:¼óZrX¹êV–®FËÙô†­ºĞxüGM¬Ö³·í¿‰îö@Ÿô–KÆ„¿_ú«®İˆ¨ëÈñŠ/û¦p¬u+V•ÕÛ»>„Í0Ó¯–×£I\'9A¤›9n+³ŒæUÛŒhÛªr)†Z«Y¶‰\ZmÚë¡^„•£Ğö3îÅd˜ã£©«û;ìyn;ó6™Ké–´¦1ñ^ó£öOÕX….•WùQÏèt®ÉÒyV)xUÁ‘Ÿ¥£kîÑD©¥·S-ÁÛ‘D¡sŠªRüİís†öÓJ?”+·³Ö­öşt_vp.İàã›T±¯İ–~«•á’x…êwÃ¨¯‘ÎOšI3ƒPiWLîİ…×‹N”–ò…Î¯•õŒş<u7FüËupÑ³“F|i«]\"š”ı–p®8\'o!z•–§ğ5Ï)ëÎè.âø£víş	câÒşí\ZgÜ³ªüEñGn?Ôç×æúCE*·…­à]îírîŸèñô.º}lq:?MC´:j<3Œºı“æú‹õ¬¯ËS>˜í\rp¾.ÿ\0E4Nß•_£³ãşÜüİë²:Id1•·½™èvp¶/ê£²(_!‹ş/¼Ïí.6ál]ùiG=ûµÿ\0«æ,Å5‹šóe˜ßc#1_¥Nüµ2Ê[¦>£‡/m÷²JQ}†Oé#è|=/Í-6÷Ÿ?vCK>Ãí¾¯Äú.…?Í/qçsıİ¸}#\Z¦Wz´©ÍùÅ2iåøx4áB’ôŠOàfÆß\"¾ìÅv<h«YX¦x\Z]êÒ¥7ââ™›\Zh®4üˆ4²ü<\Zp¡I5Ö0Iü•Om‹ıß‚+Tö1»²{½º*™=ØC»›÷z™*•ÉîÓD%ˆ©ùİ³+»¿0éƒLNîä:{}Ù˜4ÃtìSİõ3;²™STÊ%Jës5ÓèQ*~<Â4ñëä¹}z®¥|¤ß9J’mš/k9F’QBœ»Ë^œmYóØêŞû\ZlP¶CE¿Ş¯ƒ/‡µn.K•PNº|’;×ÓK%Ã%û¸¿¸â]5ßFş\'váØéÈğ¿Ê‰n[´ã5\Z‡k4uå8uáSğ4<«zÑMuGHíN)et.¿¼EÊ–š¨Kø«“å¸g–aÜ°ô›îã»‚¿/C]í/	B†]FtéSƒu,Ü\"£}½\rÇ&ò¼?òãğ5Ô£l®‚ÿ\0ü\ncìÉÎğV–!9«)…²Ü=¿v3ëÅø»\'ŠyVÿ\0†¾æ~š/l”\\²¼&ß·/‚9®WFø¨«u:¯kÔueØU{~v_åG;Ëh/”GRæi/â‰;w\\;`¨ıEğFLiõ\Z_¡P·îãğFLac\Z-BŸ¡v4Ó.FK‘Š\\ˆYj4üŠ”©–ä«µµL©D¸¢T¢Š£kzF’î‘¤ZÒÆ’ö£±mYÒq¿öˆë\\¯şï?ó¦QöYÇÿ\0Úš–m–§Éaåöê\'¬‘k@áß5Ã+s©‰ô¼¡Íx8pùc³ş¶?éYGºlO7µ½9n‘ıq—\'ÿ\0ãNÿ\0ùÍ[… ¥™áÕÿ\0¼ŞômıºÅ¼ï/ÿ\0»KüÆ§Â«Nm‡Ô¿¼Ä™õLw™Ó¶¥ás™ö·×8®_\'oÿ\0QÔekoÄæ­Óıu„ÿ\0ÿ\0s)´´¸««\"ı5u¹*Ÿ\"ªi9+¢ôtNÎ¡ú«ñ«ø#×Ï`¿#coû‰ÿ\0•g0_‘jµû×ğG­Ä¾Gÿ\0åe*+F+¯ıs:/gĞO\"¿|şç´ôÙ×‰Ñû=Šüƒ+~ùü+½Å’¢¹tlJ‚·™UV»´™V…½‹Ú<	Óµˆtİn^ÓµQÖô>¡AôEÕü‰Óo@mkB[xœMü¢ªO•I|NÃo#“Vé56şò_bvÙû7¤­vWö?mt•öKì5Îc¶.şüM²Â£kNÆ¥Ú;‚ú³øÄÜ´šh‘J¶\nÿ\0FûD6Ö01ı.—×_§Ê>Û9û]+}5ñ:‹¤ß˜©µ§ñÚ¶\'	ü¹|QáåöXÚÌÄ÷¸ş6Äá<4Kâ\0­Œ¡guŞGâA·DĞ®ì¹24Üo\'ÿ\0]Y)„mcNäélºã}ü¹-8_ıÑåböˆÓm€µ¡%ÕtgNÅQ‰qD”¶ÖÔn‚‰sI6Ø#kzM;ŠU³yıXü\r×Nêş&›Åqk8¾„~1åEu\"Ü]¼	^|‰isdUãláˆş§…şœ¾\'¤¢`ğ¢ıM¯#ÔqMö³¦äÙ®EÍ>Û™dÚñ8¾?©*5ôãgï47fõÆ+õ$ş¼~,Òl×6U8·\Zê+_Cñf~–bpÊ¾E…úŸ‹=+¨Wk:‚õ—\"K\'kÃ¡}Ä¥Àƒlw—LÉpØ¦PØmÅ±_—1\rtkà%Á®g»ÅĞK<Äú¯ã8İ•›o¹Ğ8Záü/ÕüY¢F<ÑĞ8Q_ Ãú?‹;@qñæ^Ñ¶èh¸UfQÙ¯#_ã¨/‘Qoš¨Í›M{ ¾EE¯¦ÂZb\\Î‡’ÆÙVùQøù­¶:FMå8K~æ?\0‡‹ÆÑı‹¼Pkvnœw\rşñü\r5­¯Ğ%Ò²è_‡şT~ÉP-åp¾]†şT_ÜŒµ\r‚n{Oõ&7ùøÆKOù‘øW<êloò%ğ9rŠxª^?mÖ£Ò².h±\\cì¢TwÚ$¨Ø¹¤•­é&ÛF®\r­¸ìs^Òé¯ËÍ®´âtí9·iı}/©€N7·ÃŠÜAÿ\0¼Câv=M‹‡£úÿ\0/·ÿ\0‘‰Øšçÿ\0^Œºr¾Ò¸Š½­ºùQªÍ]ÜÛ»F…øŠ¾İ#ğF«(-îD[ôÆ”wØê•ÇıÔ¿Sâc(+4§Ùb_ÑD—Jó_Uµ²i\ZU‹®#OÛv‡qN2İf¿ÊŠ{;Vãÿ\0MéfWhP·ã/ôÿ\0[ìòş™`Ÿ[Ïü¬´YÖ£Åz\r™{NÃNÏĞ­RÖ«Údá™_Ÿ}ÄäÎ|Î½Ú\\5pãşl“N+[±8®ë¼ğùoüÌ÷4¦y<¸G/ş[ÿ\03=·®Ö´ì4—tùÁµ½;Xiè]h(\\©µ­>#IyÆå.;2)·í&’ş“c-oîk\Z~ãní\"œWâ›úlÕ´­ö5ÇÒjÚII£³8jà¼òŸù™Æ\\m·‰Ú»,»àœ”ª/ıC/HÛßt÷\"TşÃ\"Ûò\"Q¾ÈÉ;|ûÅ´ÒÏqJ<»çñ=^Ècşõ/:_Œ)éÏq)ô¬×Şz]‘¯÷ÂŠ\\İü\rg¤:Ú§²)=ŒµOÄ¦TÑšc‘vÀ—åZ[oİFÿ\0 ´Ü®º¶8(çÛû¸œòÊæØzFB^¨é]Æùn.ÏeR7õ³9Æ”tÎÆ£«.Ç2?sô¬n¦Œ·\r¬Q*f+ÆLé¥Mœ·úvÍenv>‰5İ´|ûşĞ¶ü©=•í±¯üÔÏë\\kÖ¹Üïİ…e•%Mâ-hÆ:W¯3‚`Sx˜ŸIv\r,¶§…£ğ:¾Uüc?êºLi[§™MjmE™ÚäSRŸ²yî‡Ï¿í´ãÖ½…ÌÔ{/¤çá×^ó©¹´,m™%oØÀÔû*¿åÜ>“Gv?ÔÆOÍô¶æ\"™uÓÚÅì$/B-x=ùm+Ií2›\nâ­ÎÈù—N¬Ú[~Ñõj0ÓÂ˜Ÿr>cŒ\\³yxk«ãşÙrNãènÈh%Ã°—G-Œ¾Óâ¡Âx—â‘Od1o‡`¬¥±‘Ú´-ÂxŸwÅ˜O²ùz|³éSõæYIå|MORÕ4õ+Øõ1½8²û:?ct¥<ûeûGÑ”aji£çÎÅ\"Ö{‡~hú2”/’<Şkù;±ú­ªmó+?°½X­S2ÚV2¸Ó/($T¢‚vµ\ZeJ‹º\n£µ£nEíFÃFÖtİ“¡t\"t«\rYqH*÷/èD8ìAµ$8\\¼ãÔBv²à­æPàd8îRã°6±*e§tdéëbBXn™¡öÃOõ/æ/ƒ:+…·F‡Û7ù•–İê¿ØËãQ\\›*§ˆ‹wÙØîü;MşCÂ¯ğÑÃ²ÔşP­Êûç†¡|‹uıÔIä§é§ö·eıë_qÏò†İX¥ö#µØ_%£üÓšåz¾QrDÏ©‹·ä’°÷çİFÿ\0a¬ö§ù.ş›ønGY>¿İGàk=©S’°şëøˆsœ-Y6º£¶äĞ¾[‡şZøkß$™ÚòjvÊ°ëü5ğ,Ó;\\¦Ş[„şl¿Ê/¦ûèµØ~­Âÿ\05ü åŠõÕ‰ßDöîY|-‚£İ¯‚2J01ı\nÿ\0v¾ÈŒJ{VÕ\n)ZÛ¢½$¤µ*,®1eQEj!]¨ÒT¢\\QÚÄé%]­¨’£±qD!ZĞ4t‡\0mbPö_¡Çÿ\0Ú6ÍrïäKüÇeq9o¾i—mÑçşrØ{[ÛEàø¹g8k­ûØïï>Ñãæ|ñÁÔŸåœ;ä»ØüO£4İ·ê3[>œ‹·ß9ÀGÃÿ\0Ìjü1A<Ï\r·÷‘ø›wm°¾w€Vÿ\0íŸùw†iiÌğÛy÷¡=/ŒÜÛ·[}üZûÎuÚ¥7<ãÿ\0wÿ\0ÜÎ“kß×ıNyÚz¾q†^ıÌª1öÓ%•š&•JèÈĞÌ¹+«t\'k·ŞÏ £“U²şûÿ\0j=N!…òıŞågŸÙú_‘fúºÏàW>…ò<oıŞådUkÂšºÓãø/³¨ß‡wıì¾çq§f½ÇHìé?èûMlªÊßbk^ò‰TbUb¥Â›Qb¤Š´ô%Dª6£HÓ±sJ\n*å‘µäéê\\Óq¤ƒkzw96\"/å5<;É/¼ëºNOŠ…ñUoÒ¤—ŞJø{m=œGØÆÿ\0àüM³I«öo£¾§âmºoÈ)•Õ[Q4îÒãi`}\'ÿ\0´İ”M3´èÛäçùÏı ÆöÕ°0¶2—×ÄêÚ/+x3•eÍ¼]æGâu©FÍ„òdÒ»Açğ^p—àx9~øÊ)ı8üM“´X¾ût¬ã/´×2èêÇÑ¿>ò?Uiw*Qöşß‰\Zlì]·´ÿ\0ëÄiw,®Ö´‘bë‰Ü\'kv!­‹ºFŠ›Z¶Ár.iÜXQ`’+·RRØiR‘:QZDØhÚŞ“Mâ¨ş·“ş¿¸İœMCŠ¡|Ú_R#/KcíâZÜ…™wM¹¢—?R«¶Ş_©cõäzºWSÍáş¥×‘ëédÆVöµ¥X8lËª!ÇfJ6ğ¸Â©dü\'ÄÒô^KI¼ñ|SÉxÎ?‰¥èÜ­öÓMß†WêL\'”JÛ˜\\9d¸D¹w‰èé,¥½­8ìF’ö”F•p­8”¸™;é#IÚËE:wüÎ$8„íÎ¸¾œö¿—÷#Åqwò=ş/WÏ+û¾ñ´.l5YÓÔß¸:7áÜ7¬¿ÌÍq³ß©¿ğZ¿áŸœ¿ÌÂµéhè4n^q\"Ş†ÏĞ×xş? Q—ø[Üm6[\Zßh¶_GÁTw$hı=™‘E¼›·÷1øÖÛ]? Šy&ß¹À&¼^>…òúÂ£ø\ZL¹]ô7®?ºËèÿ\03ğ4z‰ÚäÃôêYLVa“•¤ÇÉ×ê¬\'ò!ğ2ôŠ­¬<â)åX»şæ_•(¨Ö§õ—Åg5…òÜW‡q/ƒ9T¡ùØ%ô—àBeuèC‘^’`•·.$Y•«zv%D­D$#j4‹l\\ÒN‹¢Qµ­>8í6\ZsÖßZqgLpİÛ´äÿ\0/ïû¸‘Wã¿“_áèß>Àx|¢v=)=¼Ğã¼:—åì\rÿ\0üˆ|NÑ¡YÜ““ªå}¤Á®!«ç?¸Õd•ìÑ·ö¿Ş\n¿Vå59Âòß‘¬ú¬¸u:eqÿ\0u—ıâÌ’JNÇPìª)ğ¿³ÿ\0äOğ%\\ı6w4]XqönmÈ;F¦×bôõ’úQk³¨ßŒp~³ÿ\0+2;FOúKŠOé+ziE¾ÎR|e‚]}¿ò²ZÛÓ­¥°ÒW§‘:C+Z¿i0¿I®•cøœtÛlë}£Eÿ\0Gûw‘º9\\£í‘=¶ÇÓ­poÂ9u¿vş,öÔzGÆÜ\'€_Àş,öÒ%½­é\Zv.é\ZHFÖ´“¤»¤hØ#kzCÏĞ»¢Á@\"×íF$Ä[«Oîÿ\0™¨¨Ùînİ©SÒJíù|\rBPDÊÛÜc8]îvÊø+å:‹ÿ\0QÇlïfvNÉø6’ğ­Q}èš®]FÎàQ(lÌ…%\'c;™8hcK‰q«§{\'÷™=‘$ø×nN•Oò–»IZx“oŞKâË‘ÉN0vÚêkÿ\0K4“¦¹WkÓdRâd(%ËÀ¥Çr–++’öÓI|¿%ÍÒW9®›¾GNí¶6ÇĞúˆænÍ\Z`eÜM¬¼™Ø¬T°9‚ğ«ƒ9‹k¡Ô;\n‹–2ÇıÅóôFÿ\0(YnQ*{r39JÀÅfTáì´üœÚ¥óÊÖé+JÎ‡#æß¦ŞˆKt¦Íx>ìíŞ5Ë0NØˆµÕŸEvX|º¤EFÔtÆ”u_cç¬²\ZñPRêÏ§»ÁÒMRª¶ô«ùXèù~¢¼ñµ»Ç1ÄM\'§oâp_%®£z™n.1\\Úq—İs×t×B™Óöæp¯2|ÙÛæ>8¼Îğ‹Œt«^Éòğ<NÈ©¹çØm®»ÏÅ·Çf™œëeØ\nÕc%w*tî®x½—ğ†q•ç¸z˜œ»N\ni¹Jœ’ø^xÿ\0“Ënó†…¨ÅòÙÊ2í(^§¸—‰ÛIí^¸G§Ëñ>_¢¿\\Ê/éŸRv±).Å8­—[ù³åü\Z¾tü5+ŸûgŸ¸úK²*\ZxfÖ»ü_kq·	â|u/ÄËì¥\'ÂÔt–»b‹şˆb}ÔçŸeó|£_¥TkÄµö—ñêØ©ú²Ìlôç¨â³òu~Ã(ëÏ¨Ù^ÇÑ”¡h-ÎØ,Ïhõ[ÜúöR^›Í÷®ÙÔR£m‰Q]š]‰Q(¨P*Q.F$è¸FÖô’¢\\P*Œµµt\"î‰Ñ°WÉg@Ó2ò‰.y1Ô<‰ÓĞ¼áĞK.$iè_p#Jê%‡4—ô%È‡„Ê°âRâ_p)qy,4‘¡öËpí/æ¯Ğ\\|NÛLWôr\rüåY/u™3ÚØİ¹>Xï^6g}á¨¯È8Kşå%¿Ê¡cènKòßº‰lÓúiı°Á¬’ƒ]k~9Ê(·Z).Lê=¬ÒSÈè9?¹œÿ\0Ek^HKÒÑØr(~¨Ã+oİDÖ»Sƒü“CÎ«øfMåxk~î&µÚœ/“Ğk¥g°®Õı¹Î:*Åïs­d¹…J¹MGœc\r2Õ-)ú{,å˜\ni×V~õ;6EF2¼=:JÑĞŸ¿¨é9zh¨f‡£†µÂ£“”·‹Û’{\\Ó2È¾ù7×c¥ö¥†©_*Â÷p”íQŞÊöØÑ08Dk/ÍTKÆÌ“NÏ—¯Ñ(Ûè/‘bŞ7ÂÒ¿=Ÿ¢/é!•½©QØª1*Q+Ka¥mSØ®(˜Ä©E+jJ£Rñ+Š\nÚ§HQ±rÛWkv#NåÛYØiÖ%”öãMK4Àx÷3ÿ\01Öå­âsn×²ÌV3‚…J±)ÆNnÏQ-8¯äçÜ9OºÌèÊ1½§oÎã,÷.Ue	Ö”e}ïJVOÂö±Êxw&ÅÇ3Ã÷¸Jê=äyÓvµ÷èvxRP§¦ŒRÙ-’òÛNm97kUã‹Ïp®šnœpŞÌİı»É»ıÖ<n§|Î‡ó#ñ6NÖğĞ¥a]:qƒ•äÒJïQãğµfØfÿ\0y‰\r1×N¾×µïüN{Úto›á¿îÿ\0û™Ñ-¹ ö•FrÌğõT^…GN«m{½ƒ<=µ¬‰Š³/ÆŒ¥á+o±Bæ¼ú¦CfóÙüÜrš±p»Öõi½İ–Ç§Äu%‹\ZéÂr“£%m-tÜÆàl‡ŞËàS:¦ç”c#y:I/ªË3··qwÓ~_\r÷:7g±ÿ\0wßóåğF—·ßöz»sJ›7Ş¡:9Š‘q}ëi4ÖÖD/éì¤N’´¶% Ëj&Åj(©Ä#jw*QØ©D©D\"Õ\ZPÓ¹sHÒµ§”bâ.­×íËâÎ¹§s”bã|]^¿œ—Ä4ã½¶Îb´ãè¡ø›j‰ªöo§¼¡ñfß§kyŞÖô#Lí>),\rü*í7˜Ç¡¦vüƒÖ§à;ù4¼gòªNµ$×­Îº¥xİÂ¢o£Î]–ÓKKoÛÄëJ<È‹óV‹Ú©bp‰Ó”`¡+J[]İ?§Qşd~&ÛÇ¸JÕêa;šS¨£§¢7ë^Àå¸ÕŒ¤å…¬’œ[}ÛåAZcôtM>ÛõwØºâ®íâùz‡‰aµ‡ÃW~EÍ;‡¶Öœ~Â,®]q\"Ë¡ÖÚ\"ÅËt\ZBv¡\"RØªÛØ©D#j&Åj6\'O€FÖôšŸFÙ«O¬\"ÍÇI¬ñF½|ÅJ)ÍhI¸Æû‘}/Ç&¼Öûâ¹™sËñNN…U»n-4ò÷[Ğ­oûm\\$¯“/æHõ”YåğtTû%øÎ’ñË•ím@‰Gbêù“¥máq„SKù‘üM7JİófïÆ1¶J×ø±üM*Ü×K•É¿¦÷ÃĞıI„Ûû³9@Æáèş¤Â)Ê;Œ7ÚÒ…˜q.é\ZUÁµ–¬Ê\\KúW\"H6Çq)p/Ê(¢qV³%i\\û‹ãúî½ùû?xíE«³gâœ³ˆÍêÕ£†œàÔZ’\\ì‘ãb2ÜV\Z)×¡Rš{­HÍ¾7§—R<Íÿ\0‚ãşîáıgşcI”|¶7®\rKú?CëOüÄÄg^·\ZYrŞD[rt¦Ô8ìk} Çõ]¿yø3wWêºKÆ§à\Za©ÙõØèy+ù©à§4©+IÔQ½BÊÇMáøß\"ÁíıÌ~Å³kÜi‰©[F5(JŒ£Q¹FM>†¡8Ú-Œp5±˜*qÃQu§ï¥ok\Zœø{4ŞØ\ZÛùK4è:ıS„şD>b‰c+¤éåøzu,¥\nP‹^I–¢‹1µ‰™Bùf%…/ƒ9\\¢H/?ÅkòE¿w/ÊZœıt#Ká]rVÛÀ®eTãì¯DW“¦V©ÒJ‰ZV‚›[Ñ±1åÕt„miÁ¶s^Ó©µEµÎ”~\'NÒi’có<Î0xyT‚¤£t×1“N,¿&‰”7K5ÂÕŠ»…x´¼wG^xœN¨8àe*mŞO¼JKÜhy\'	æô3|-j˜9F:Ñ”›’Ù\'êtİ	&şÂbÜ¹Môäİ Õï³ê³²Q´tò}\rfNïÈÜ;K£\nyäô-:£?7nf¤ávV{m=E¥ä¬o½ŸàóŠ™¼·CAÕ’ÑR–§{-ÍM§ÙlZáeÿ\0x™8©ÉuŠóÀq\'/ÊØ_ÿ\0Öÿ\0™Oäî\"jß–0¿ÿ\0¯ÿ\03eÒ.š%‡“‰q]<ï³\n‘©^ö”Ò²—ƒû,]ìî¸Ï¹Ïü¬Ø¸ç‡3LË?­_…u)IÇLµ%{E\\µÁ\\+šà8“ŠÅa*Tõ]¹\'Í5ãæÜ¥ÅÑ#e×B^åÔ¶^Ë6Ö;E‹şÊİ*Gñ9\\á¹Ø8×_’O…†º¤ZWé¹Ï¿¡ùÎ§lÿ\0ñ\"­ğ¿‹}àe~À-ÿ\0™Ú‰çp–\n®!Âa±+MZTí5³İ¶zÚWBÌ­íoHPñ.(²tìB»[Q\Z7.(’¢4­h%D»¤˜ÇxÑkö«E®!©nª/İdisƒksªñç\næYÎmß`éÒtÜ\"“rK¡®ô×<–Úh/ZŸòÓ3š´­Òñ¾ç`ì}já¼1ü\rOÿ\0¦9ì¹¼4}&÷ûƒÙöCˆÈ²?’âå	TueSówi&–Ü‹)É”ñ{z”½v2\ne™VNÚ•OŠ1©õªßı}¥É¸ó\0º·/ò³zã^Ï3<ó;¯ŠÃÖÃÆœİâ§&ŸÀ·Àıšf9\'a³^/(Qmé§{¶Ó^dãzt\\±ñt5%ãb6/(íËg¹)ò!œÉÉ;p¦Ö\'\r>ßk9SİoÉ³¾ö‹Áø¾&­G¸ÄS£\nq·¶ºš>;²<Ã\r„«Yã¨5N.VŒ]Ëcdö×rÇ8“o‘Õ»Z°yÿ\0µOñ9¦3ğõ¥Nr½¤÷Lê‚ÆØ|Í7ÉÓüM2²ÎNâ·E:Kî)”Ê6F)Û.¤mNçÊ]ºÔ×ŸVúïâ}e^¦Ï’;lƒü»Wë3^»õ­%é°¿‰õ_b4à¸yÚ××¿Ø|¯’İcao}YØ|?P¿Uğ4ù^âx®ºE.N†RàÎ])2c:hwiJ>A3&3Û—å—bÛh¯ÍÒáBpoT­uË©òş_g;íí£ê®×Wû™Š^/ıO–°\nùô£á3¯‡ÕZÍéõeÔâ¸OãmïS¶([ƒ«»uÿ\0S;²úzxOècvÄ¿Üêş¿êsãö[/o’qÿ\0ÚêxjeÙîW_¤TúÅºWr^G§=8²Ÿ“µv\rYå;¯ÙgĞ0ÊÇÿ\0gø_9§·FÏ )ÆñG›ÉöveÖ1J‹*H¯CkrTlWLö…‰Q.F%Z:‘¥|–£µäbT Æ‘rZP%@½ •Ôi_%AB\0òc8\r;Dh’Æ‚‡Ğ\'ÉàF“#AK€O“Ã{”¸™%.!2¬8šmt£>…ÖıòßÊÇB”vÜç½µaªO!¡R´!SL£âìLöÓÛ’dt’ÄÇ®èú‡ –I„];¸Øàù\ZÅEÇ­ıÃñıK…ş\\IÎö×.£XíU[#¤×ïWÁœë/Ş²»÷+µ8jÈèÿ\05|Îòê/¾^§dÉâ¿%aş¢ø\Zçj¾KAÿ\0Š¾ÙrUú«\rü¸ü\rµ¬š…¹w»ı‚)ûsì®ŠïUÎÍ•ÆØ\n	t¦¾ËcùØ‹+è4>¢ø\r-é‘¤ª0ò%D¸‘,mQ¤;•¤U¤+µ\n%Ä¶ØF;•é\nÚ§NÛ’¢WĞ«NÄ«µ	Æ%J$Ø#h¶ÃO™RDØ+µ	\rÑZBÀÚ$8¢åƒäµ§MlËÖ)’æ\r¹—kRÎ0‹Ãÿ\0Ìxœ3ól-¿{Š6Ôá«9Ã#ñgÃpK4ÃÛ÷±ø‘·nGU’ÙØÖ{DòHŞ#ø›Kşök=¡¯Ô”÷şş?	\nÇşQ­pİ5\ZXû/şÆ§Á§¼}ÆÉÃ±j‡ıÊ¯àx‹ÔµyéÓÿ\0jßx?¨·ıì¾÷ì#l’ßâËà{Ha•íEˆ³¿‘rŞBÁR‘*/ÜT•É¶Ä£jR*Hª(© ‹P‘6*QØ•¥mBÆ›—6\ZXÒ6·c’ãclmoæËüÌëÚG˜\'òúÿ\0Í—ù™·íµvj¶ÅúCñ7+lj™Åµ‹^PüMÎÛ–gË%¸ÄÓûLÖÂóü\rÑ#Qí\"†ÖwòjlU>–’øeGo¼åxZvÄSÛö—Äêñ[[‘\\Zü‹Ü[·FCŠEÛ	E’çÛÇ{‘§©yÇr–‚ÛZ±KHºãr–¬ÚÓE:KÍã¸L«V\ZK–Üi	ÚŞ’¨Ä«I)h°±Z[¤i]¨Q%Í7AÇa¤mƒœÅ~IÅ-š7vï±¾çıUŠş[ø\ZFıårtpŞ›7Å¼­ÿ\01üì¨WÇõd—…GğG´¢Z0Îö· —\r‹š£·¸+kÂãÛ%z¿yÄÒ¬®ìo<kÕşÕğf’â®Rºxoâßxr¨ğŸËLô4#†ãú“ü¥ø”^9­î­iW\ZKºF¬J,§A~QØ¡Äi2¬8îC‰zQ(Ò4´¬z°nœ­ÎÇ‘ÅŠœ²*Òvn?7ÖûöŸ¼ñøº	d‡eÊ;ûÈ«ã{s©/i¿3{à¥~¢ÿ\0æfû[r¾æùÁ*ù/¯?ó21mÉzzÍ.„4ù4Ñ}2Úİ{¢¿$R¿>ñ|\r‘Ä×xîüNMo®×\"­¶ŠÖÒô:n@¿Ràÿ\0“ÌåÉÜéÜ>›Épmşæ?\"ÙÖf’¤Š’Ø©\"YmM‰Ó±RH«JÜ\"Ö6>7ËñË—Àå5¥[s¿Dª¿üKUZKÕ|­8¯U×¨/b>…èÂäPé¯D^ŒlKšŞÔ( \\¶ÂÄ«µ\ZIH®ÄÙmE…‘]…µD4\\±[6å½¨Â/>ÿ\0õDÔ#µèn§Çõç/îâj.·vX°ás©öV¯Ãÿ\0ù9Œ¡ÊçOìª)pÓ_ãÏğ-µ9¾­¦Q)Ò]¶á®¥œÛY¶ä5bëŠèE¼‚v´CEÖˆkbµ½(i+H›j4“¤­D!P¢N’»m‚6· %Ä‰ÒN‘µ½æNæ‘¤®‘µ\ZlJ‰]‚DèÚ#I]ƒ\Z6¶ÖÜÈ±rÃHÑµ§Râ^¶ä8ìU2¬8”J%öŠ\\BÒ±ÜLïØÊ±N\\»©|NQ0s¸\'”â“ıÔ¾|oqónt¿Nª¿‰°ˆÚ¢·îßÄĞ³È/Ê¾³ø°xÙfi}\Zi>­ó®‘¥”Ê%÷2™Gc56ÍÄCógÉ=¹ÓqÏªíÊlúî¤o”»~ ãUvı·¿¼Û‡¬Ùñİá\\ß!¼|/â}gØ-<=tÿ\0jßqò~@šÌiÚÜÑõ¯bÑ,ú5ğ-ò½Åñ¿ğ·ÇÑ‰rÜƒFm¬¸”¸—ô”¸¶Ö%™FÑ~…ù@¥Ä-¶ÚüÜìMş’üO–²ºz³éyMüOª{`VàÜGÖÿ\0Så¼‘_>•ùëvûN­oéõOfÔ\\8Ww}Q¹çöÍı¯ğ=Ï“ş‹á¾\'¶¨Û‚ë%ô¿ö³}–şO‘qêøª:™E%y/]Ç/Ó*xİÜ§Î\'¹èï§.Sòw_ö|¢åš©>j\r³½Æ;\\áŸìû³[hgxŠöO?.òtóu¥1Åj$Â;Æ;®ØÚ…‰QØ©D©D+µ1R‹*JÄ‘â¦Ô¤N’«lø\nR%¤IÀE‘Ü¬‚.—ˆÒ\\±#Å;[ÒRâ^±KˆÑµ—Rà^h†Š-µ‰ÇcGíz\Z¸e[÷ËàÍòkgèi}«Á¾²åßGñ%¯íÈ²|<^\";ï±İx~Éğ·éN\'Ë©¸Õ^}NÑÂóïrj._³xıäXß“êñ;K§¯#¦Ÿ.õ[ìf‹—aÒ­çcí\Z/ò$-ûÕğf‹—Åª©x}\'N§“Å~J ¿\Z÷ip×”ÑVoó¯àl¹Jı]Cùqø/ÃVWOù„³Çìç™e«ÆçaËbÖÔG-ÀÓJ²ñ:®[ı†–ß°ˆÇÚÜ·¥Ø¢äQEq[–ajw+²µŠ’*Jè+j••¨ìJDØ²¶©ÒJEDØ+µ*7*ÒN…‰Ğ$M‚D–˜¡ÄØXxˆd$TA_Ü¡íráK	s~Ó×ëœ2_ş?âÏ+†¢¿*áíûØ|Qív›YÅ~ãÿ\0s<©¸â#nå+»úİbÛ\Z×hI,šİ¿?„;Ó¿æµÚ\"ıMùs&úsñıš×;ÒÌ:şƒSà\nÚ¤½ÛÊõağÊ‰İË/¾Q_‰ã¥íÛÃb?N¼~Õ¿ğ,m’5ş+ø#İ±ãp*ıH¾»ø#İÓ¾åœÙ^Öô‹I±Uv¶—‘V’­$¤J6ˆÄ«I6d¤Y‘û•iV	¥Ğ…mR’&ÅI¥„mD—²ÎG˜Æøúíşöæg_—Í9&eùC¿ÅŸù™zoñı¶Í–%yCñ7-(Ô;8JØŸü?‰¸–“qŸ/ÙES´HŞëKà¹ÚÌÓ»C«\'[\rM-’r~¯ÿ\0b8¾Íg—üKâu8+£—ac|D>²:œ>j+#_“î)h­-Ñ:s­´RÖåvH‹+Ü,¢Å-m¹KŠ	ÚÌ“¸q.4C‰	Úİ†–V’&Á;[¶Ä¥b½$ØSbm±)nT—*íJDØ®Û¶\ZFØ™´o–b—/£éO#zÍ—êìGòŸÀÓ%¾…3¯ûl\\ ¿WOùài#ÈáúK~ñüíX¾ºsr_Ê©H8ìW¤–¶\ZSoŒÒüñâir†æïÆKõWÿ\0±~&œâŠg;vü­o|:­’á?”¿Ğ¶Æ/Ôø_å#Ğ±¤8òûU\ZJì,N‘µ¶ˆh¹mÈh¡µ™D¡¢ó[”´ÚË‰äq|5pö)xF/ï=¹Dòxµ?èö+ê!bøŞãš5ÏŞo¼—ô~¾œş&‹%í×‰½p\"ÿ\0wáüÉüJâéåôöZèRÑzÈ¥¢Î}­hğ5®;ÖğQ³öa$­âŞ÷û§MÚğ5Î<¤¿&Bk›š^â+L/äÑ%}ïnGOáøÛ$Á¯ğcğ9œ£{®§MáÔÿ\0\"`¿“‚~ZÎKr¥’‘ZD°µJ[%±ZD¤J¶¬â£ú-_¨ş\"ÄGu~GbÄÇôjŸQüK‹¢éÓ„ú‘[\Zğ^«®aw¥8¦]Š(Â¯ÌÁøÅb‹Ì\\×Ø‘$‹˜¡	`¹’LÅ$XŸKæ²«ùÍûN§|İ?àâiú.ÍÏ´ˆß6]?7RĞ·Òa}½>‘bTÒèt¾Êãn’ÿ\0ÎÜ,‘Ù‚·É/‚NÙóı[Eˆh©i§SmˆqØ­ Ñ	Úİ¯Ì8ìVÑ`Ú…‰Ó±RDéÔ%¹V’RØ”†‘´iØ[r«âm&Á[Å*°±o*°±>›XXŸM…Š¬,<$=ÊšØ‹¸%C‰+±\rÜt­J&.gMK/¯ÊTä¾ã6HÅÍc|·¿Ã—À¥[Ü|åŸCõKrÕÿ\0#{ì*6©™%ËE?‹4¾ ŠY¥kı7ñfñØeûÜÉ‡OâËIÓ·–ôéN%.(½§b™D®œÒ³d½“æ>Şá	c*¹-İGgå±ôô×²|ÙÛ.YW5âIáh§+ÉÙ/oYDü||· ‡ë*väÚ>¸ìf“‡¦×6qŒ±œş•hb*`g»Éï³Ì§”å+Š¦éÊ/«^¹¬Ï)¥òÖ<ZÛgD´ó%‘qq©ÒF”T\n\\Sµ¦·!¢çR\ZES¶ÛÜÜE¼åœ©Ê9ìœêw>´í/,Äf|3Wƒ£:³{é…\r–vgŸá³wZ¦W‰Q×Ï»l×¦2ºøõqv^Ï3oôMåX–¡*ŠQQú«GlÙ9ğZrÊëÒ¦İ»ÙÎ/{?o\\!„J´%	ÂšN.é¯qäv¥”â3N©‡ÂR•J—ù°W2Æ÷µ<¥ÏOqpo6üZ\'ª%àÍóÙ_J¼Ÿä¬S»¾Ô˜£ÙgBªsÊ±k~´Ÿú³—Šù:\'û?S-mn´;³ºF;«±ÇäÕ¤±øZÔo-qkğ:Âèâº·¥¾E’Í#IR‰)nJDø¹¶„Š¬Eæ(EV&Æ“)H›\ZL\r©¶ÂÈªÄ–ğ6¢ÂÈ¨à)h¥¢±b—EƒEMÑÅ*,CEdIlgqšÜÔ{QŠ|:Óıâøƒ[\\ÕûEÃÔÄdziÁÉ÷‰Ú=Š6â¿›”`)^µüÔx_òl¾\n¸|K¨Û’Q§t×©¢eÙuxVªUÿ\0Eÿ\0¡ÔòjvËè\'µ¡™®]LZÇbgS+„%†­æ©ZÜÜÍCŞ\'c ñÆ\Zu²á)54ÚŠ½3	—âUX·B®ÿ\0Àÿ\0ĞŠ;Ó¡e3_“è¹EÅèå¥³Æã×«.¥§mw½šéèl\\m€ ¥³PŠ¶èòxŞ…JÙ]5NN3NĞW²³-®˜Ëù4|mS~gQË—èT¾¢9ÆˆEz=ğèt¬½~‡Kê+ŞèŒ}´æ½EèÇb¤Š¢Š’,äµ	YX[b¨¡¥H§ÔªÛOBdB,\'Ü2|BÄ¤,JEæ(,-äM&ÂÃÄG¸‚¢KE-²™«Å£;>í)_6¡Üÿ\0îf¿–Ó”ñ1„nNÉ.¦ÕÚŠÍ)O\rB¥H*z[„[Şìóx+ÆÒÍ0ò«…­ª‘m¸=·ô)§~IÆİ)ftc\Z‘¬¤•ä	»yl±”«e0….óR®¥íÒ”vßÅm¯\'ö\ZßhKõ,oëãøŒ½9¸îójGVx\\L)R•Fğî/O$“‹¿Üyçr|¿ÔØ8v”ªRÆFrsÁÔŠK«ØóSÕı“â×tß.œŠßNÉ{­ß£l?^_î[sÉàÚhå…jr§-rzdšv=¦¶-™ßÉnÂÅJ\"Á]¡\"R*KbRÚ%\"R*‰(Ú*±(‘¤!\"¡Ì%¹}*‰-Mš%ùGÓşú§ùµSæ3šf9V:y†\"K\r]ÅÕ›OCwWæS9téøıW©ÀUÖxJÔíÉîÓßk_å\n6şùzÒ—úåõ°Î»ÄQ+¨¥®-7k›F’øãt§5—.˜”(ôï–‡«qŸ{^­*“…7e-¥²|×Nfé8Ú,ğx»	[J‡qJU-&ÚŠä2ÆéYI“PÂÑµHú£¥SŞ1fK+ÆÆIü–ª÷3y¤­¼Šc:iò,ºÒ®ƒI=ÄéÎ$4M¼Åˆé!Ä®Ä[rµ¶‘\ZJŞÄZì\'jQ\n%Í;‹t	Ú;\r;X[`©±)‘6ĞUm‚KŞOA¤ZÅÌ×êêÿ\0QšnIx¶:\Zğu¢•ÛƒI{cò^1?êeµü\nå9öõxKûDÿ\0xşöly¼=†©†ÃN5ã¦NwKnVG¦^cÓì¹]	¶bÁ¯‰y‹:ñxÅ_*ÿ\0ö/ÄÓÜMÛ‰0µq8î„\\æ¤—­¼—ìÓûQ–xöìàÊL{­¯!VÉğ¾t£ğ3­æce4¥K.ÃÓÒ4¤¶çc)#yNL¯t±*±\rŠ†‰)qJ™\"›nVC[¸‹r[3Ëâ¨~ Å¥ÍDõ¬`qxœŸFŒuÎp²ŠêE‹ã(åoºæo\\¾C*²F¸øg6Õ¾^?9t6ŞÀ×Àå**\Z*w’–‘\\qíÓËœ³§¦Öä4\\~[rXJµí/SÁã˜·“Á¯Ş/ƒ6+o¿‰ãqf¾3,,==sÖ›Šè…ô¶òsÅuo¦pÚıAşDM%ğÖi½°ï—´¿Ôß2ZÃe˜jUc¦p¦£%·1\ZóY©¦R[ÅlJã\\ö‘‰RH”‰K©ev¦ºüÌş«9.aSZ„\Z²…÷ñ:İUù¹z‹ª?)2™Fÿ\0öëx%ú=+}ğ/¢Æ_ıÔÀÈHßzs_a6	cIŠ¨H›\r<DX4H\"›ÖÅD>LÏ»Gë8¿\ZkâÍKIĞøÇ$ÆfxÈÏ	Ê:Şzw»èkÿ\0Ğ¬İïİRÿ\0úˆãËäïÃ“	-kzU·:/fŸğ	%ûù|¯BóeÎ¿™ÿ\0#nàÌ²¾U•üŸ¡Tï–‡}¬†ö§6xÜz{iCäm§\"¶äØX¥‰E…‰°±\Z‰°Ğ„H°KrÚ@$Ø´Ä@±+‘)˜¡	bE&\",I6/à\"ÂÄØXŸmó ªÂÄ\\ÜªÁ¢—Å\rWb–e–)RÑ¬%Uãğ2_\"Õxë¥8Ş×V¹X¦]XùÓ‰©µ™VK¤™»v•ækü8?½¦cÙrÆâçYæ.\Zå{*wÜöxƒ!Âõ±#‹–!×Š‹¼RµŠI¨ëäåÇ,u—Ì¦Q/Zì¦H9å_­µ)?q|fcxë}ïSñ;>/l5OªÎM”Òïxñ»^Õ¿_‘;‰×•uŒ,£à‘u$Eì/Båœpê8­íMˆkr¦¶ \\6ÜªÂÆw©dX©¢Kˆ¡¢4¢±c;Šv£HÒ®Wab<M¨Ğ†„UbR\Z6¥E\"m±!-ËÌP$M)˜ˆ±6&ÄÛcI‚‘)R5ÇTX”‰±&³\"ÂÅBÄøŠl,M…¼Çˆ‹b«y‹lEÀ[h‹n\\±KFY`•-M·!£Ÿ,VRÑD¢¬\\¶ä4c–)•eÁ¸—¥–Š-µ—„i/X†‰ÒÛZQ\'I^›‹jTlLcr«l%JåKÀ/¤—@ª4ù“M‚CBlJA¹—˜ªX›i1bP&Æ“\0XX¿ˆUb¸ˆ±‘b—©#©U·!™ÜE.>\"Ë¢D‘o2¾)RÖÌÖûD_©aüøş&Ë%dÍo´M²X>?‰‹ñıãÈàóßîŸÅµ–ÛšO\0¯ÖOù/âŞÜ½Å¯?İp‘SD%¹,K´$‘RW	X°±6™:JBÁs-\"©ØÒ‚[•‘\nl‡R¢!¡÷‹£IE—€dØ2–\nA ®…#bA]%±$`¥«‘er¶EˆJ–ˆ±Uº t$‘%‹a °H@i[HF’ $”øˆ&Ä‹1B,*-1abl,[B\Z\"ÅDq´\n¬C)qJ›Êš ÎÄ ¥¢²-¹‚ÛE,¹$Sb*Ó[‘bãDY¥[¶âÖ*h$Jv…“¤’R*„¤JA\"RW,Š”Š’Ø”$V¨šöÈ±éë–Û]z2G%Ì#íÉ¿¥\"3ûul·û\r©”‘–o€£õ#ğ2R:°Ç§6^ÁbW2lk1V©\\Ê%äabl,[ÄEˆ±U…ŠÜE°gqLEˆêTC+¡À±(‹°FÂÃÈX\0°±(hA6\0¾€‰±iŠ„ M1Å%c_!\"lMyX	Ğ€ÉhSb\Z*)q4EŠš!£,±J†ˆee,çËRÑSæ:Ø•¶¼\nZ.2–‘M&Tæ/N¬¼ ÎiÃ4åı3œí·{oÄé9²¾_YxÁ£MÉ0ğ¥ÄŸí|¡[ÒÌ×åOÎ:>5Ö7ªKÙ^…v\"½ÅG¡Œü\\U\r´VC+–\"‚CW¢\r\n\\E ¢ÆV%&Ä °&ÂÃB ¼Ä,M‡@‹ÌPX©!bR6ÇK%\ZÉ \0\0\0\0\0\0\0Èh¨†W)±C!•”´c–)Š0É±\rÙE””´VRÌlLPÒäE·*jÌ4BÊl-±6$\nZ	1ĞiEI¢¡¤ hR!qˆ©°D…ÌÚb­&Ä„f!abAyˆ‹ÑPh\\E\rb¶ˆ2ËH%Ì¬J’Ø›RÄ¨±¬ö¶EOùğüM\\Ÿ¡¬ví‘ÂÜûøş&yEøşñåv}ÿ\0Êo\rnhİÄ]ÿ\0tş(Şš3kÏö@ÜX1,,7$D®d$‰\\É‰d\"Q2*\"P\'¡¤€OB65ÒHè@±6B‰°\ZÛqbz‚ºJ,A!”°AùĞ†A6óJØ 2H+R‹Ğ¶Ã©(±$°H…bGPLBID\"MdQ¢ò `0‹È$‹ÌP‹bl,_ÄRÖÄ$TÂ)qØX–\ne¥TÊYQ(hĞƒ;,¥¢²–gR¥‘b¦·!¢VSmÃDØØªÃ¡6Ø H©\"&$èI\"À™\'óYÈó4ãZ¢|µËñ:ä¹›4Kå>»_{#’:~7ºêygö\n?R?%¹Fùnÿ\0…˜Ì\'QË—±\"m`‘&Ò!¸±$¤ZD\"ÂÄ‚Ú!\nZ\"ÅMb—K[Šš!™ÜRbE¼Êx¥ ‘b¶%VÄŒ!blF¶$t4˜ŠR*°H©#LqU*H\"Mf!`p\0\0\0\0\0\0\0\r´WÔ¥¢–n\nY\rĞ0Ë”4A[)g>X¥MƒDùØ•Y‚¾¢şi˜6Ÿ8Ã—y¿®æë‰W¡/CKÉ(OúM)ËÆF¿+òFÿ\0ë“v‡àTˆŠØ”z¨äIK* X)hX›nCFvƒ+ˆ\rJØ)±Èó³ÌÛ\r”`¥‰ÅÔQ„~ÖÊ^“%·Qè0=›öé„Ãâİ,-\ZRKéN÷=>í™VŒ+ÑîÛç(É¿¸¬ºmüº{1²ìev\Z°óS§%tÑ•äiŒ—Ó,º¢*D$T‘¶1)Q¬@\0,\0\0\0\0\0\0\0\0ÚAI>«í#`C* ‹\r´VÊYÏ)ŠYITŠ\\—‰Í”]\rtùÑ‚,6ò)—.D%ZÈt<¼~>¥LCÁåÖ•oÛŸìÒ^/Ì”É·¬‰\\Ï	e™•|6mUËÂ¼âı:˜ØüÓ?ËhÊurêÈÅo:]¾«&h˜nôÚ9®´ŠÒÆ¹V¡Iì©İİyßşFç‘ñ4æji—XIZÆ“IÏ‡,{{)B*FøÆ4EV!Ğ×\"P%\Z@\0\0Àh«©l4,K!™X!ò(–ì­W#ÆV¥}tèNQ·™Qy7tÑøÿ\0å„ÄO”M)Ãjµí{?¢Ÿæ8¸ªx¬eZÖ‰MµÏ\"½G*Óœ÷“nïÇÄ·rßkò9ïnü1Çê=–âşQŒjVÕ\ZOâ‹k¤qÌñ5iñCk\\´µåàvXY%nIYÓyÚ«bnEĞbn:…È	D‰z:_U\"Q\ZÁ(’›‹–B R­r >DX-°Øl.\0†äVˆn’Xt\0²\nØ‚P+`¤\né( ¤`[BPaH¨„Ix€”@FTJ)EHÖ*\0i!LŠ‹ù¸a*Ê.ÒPm2¹MMúUe~{„qoqkÉC0i\'š¹?qëp\'g™¦{‡Ãâ³	Îœæõ)ErI¿#–òËtŞğe­ºÓ[êIù‘Í%m/Ç\\U`ø£C˜b)R§U¨Â²HŒòÒœxy]Ghm2:œ(âÌş¾:ç›bœdºÊüÙİp÷T¢¥-R²ÔüY—´çÇp\\!’È(¬Eˆ¶åDy”?,T\0‹`¹Ğ\"B[’ZD”SxÇ›KÕˆJ2~Ì“^¥ä>G&ÍßéuWøâÎ³/šrlßlueş#ø²¼³Ó£ã{®£’ÿ\0Âğ¿ÊÁ¨ÂÈ¿á_åCàg#»~1Ë—²Ä \r¢ \0\0\0\0\0\0)hªÂÅ,Ø¦ÄX®Å-¸Š_\"IxTŞ,ÔxòyZ\reJn’[ªueægñ_|®¶Û/1î9÷dë0¨±5qøÌT:İßÉê^ÑVNûõßÄèVëÊærùvœ±ñºU`EäU$Ø…Ì©#Lb‰@$k`\0\0\00S)Es•ˆ¶\nJš|š~òWˆ”I$‰rÜ©V¥g8¯x…Zsv„ã/ªÓ+åŠt¸ÊYQäS(…/‘O\"+U…(jœÔ›±ó%ìñTælõ’ÖOPËtjÓ­:5ããšeÇÈÊö+—Í’ò<––œú·£=çm-«»tG…Ôï3ªíí·\'ĞßŸ_É‚ü[ğÉ°r\"¬”i¹>ˆ¨·‹şÍ?FueuÓ)7ZfoÚxgNóNÎìØ8w8mC½PÑï>~ãÚ­q”¿lìı˜7,ª7è‘çáËÎJô9¸8ñâòÇ¨¶ã©\'£§œ¡”ÍÙ2¶[©É˜òu\Z§q¥<“éÎŠ•¶»¿¾âøç5•>ãC}T›ü\rµRÍd—ÒfweªØÈßÏsÎ¼™oOCø0ş=º—(³´b(Ô–„Ü`¶ûùÒÇÍí-Ç<“§Îû›î[ün¸­jõW)I·¶ç©Ã9¥\\>:—´ìÚømx7[ÚIò+ÂEÇm¹Ó”–\'²•õßb™“Æe)JmÙFHèÑGì¿Vi5«Ó¡Ù`Ì~?º|¬uÉµI(ì“NP\0X\0\0\0\0\0\0\0\0—\"Jdöö­šb2ê”¤ Úw´¬x¼œã1Øêj­j9/Ú~\'£Û\r\'Vµ¼€©wxêIı$y\\¿w©Å?âvJ_6?‰YE›ã=,~±åßjYK*e,¦CÂãš’£ÃXº“Œ”6iù£‘`sl\\ñzÃÚgZãõ~ÆıOÅ[/_¥rñ89=½õvœªeå7vÛİã<ÿ\0‚Óõg¼\'§\'\'Ù¢£QW|‰­8Ó¦ç9(¤·mò4üÓ7¯œfË²å(Ğ’¼ëxÆûÙø0ÂäÍÌsÇ1«W\r’Ó§İÇÙ–\"r²¿T‹™}ß‡T©`ğJ	ozÎò}[zw8âçù¬¦T)aè.íJ¤œßVdºyê[b0/Öœ—âL›izšj¼™çø<59V¥J…+)Ğ¨ÛnÜŸ#YÉ³¼n7J–#[CÚK¼fáÆÔ¸ŠYTÓ†­Ó’¥å÷ş““ĞÅK1£ßPqNI·¢ß:xfãmÃp_šaeZ|E:²95$ö\\öüOS„øF¾MnµXÕ…¶œvûQîğô##P{_o±š6Ã\r¹såËv%/¤…¬OC«\\ÔH–—-Í´niœa2ÙF8šš•ÖÅ¼`1U#\nUo);-™K3­­8òÖôõ]ƒäCµ¹vg`òê‘†*£ŒšºÛ¡k”ÆmËn¤zK™\'•Ï°Ê±§B£”¥²Ù”·æF9ã—ªY–>ÕƒÈÍsüYˆTqq›¯›ĞeÜAÇV*¤ù&ˆşLw¥¿-mëØ¦C§¼×ø‹‹2üŠ«§‹u5(§hFûÉ”“hÇ—Qïy–q§W\rRX©Bqq”_TúÇ0íf¿y%ƒÂÒPıwnŞ}\rˆ{CÍó\\4°ıähR;ºV¿¾ç6YÊß·ÛŒ2¬>[b(åõéâ(©]8Êú|½Ç‰wd·+¥ˆé&š~¬™MS©¹§½ÌguÖö8S4¯“âáŠÃªnQM%5tú\\Şø{s~eB…eCLêE?fÛ7ês<6\"²ëw¹²pT¯á<ëGâ*2Ã¥Û´][o¼Õ¸ïˆñY%\\40‘§ùÈÉË\\oÉ¯õ6•Ëş¼{Û»ü»ÆÕ>1(äâ“ÉkÇy•j±Œ¾O¥»4¡Óí:-6¤®¯¿ı~\'É¥|]5çø¾—ÌE´¿>3i\\yGBz`|b 5‰)%ù2Ax5^6Íñ™m\\:ÁÔĞ¦¤åì§Ôğp¼[™Î¬Tñ	«ïìÇıC´ÿ\0ë0_R_£Õ”ánîM>–2»Û³‹	–ÇcÅf8<xÌE:+øä•Ï‹8\\ª–#.ÄÓ×9­ÓMÚÌÑp¹u›ÖmQ­Rÿ\0ŞUnÏŞÌ®$È%ÃùEbãN¦\"­VH6ô«/grÖå¤N,%öÈ‡fÒšQ­©}Eş†ùÃ¹<Ç-£UUJºR¨“WOÌã4ñj2³ñµƒ’æYM\\ŸVúx,u(êÕkù4ù£<r»í<¼rÎ£iâ\\]\\I‰ÄPzjB7N×ê|c›Çÿ\0¹_ùú¶sÅØ<nEŒÂÔ«ˆQ²pnP©¿8¿Áš$«FOf™Şú8¸õ?(Ø¦y½ÿ\0µÿ\0èúyOf˜œÊ…:¸«ÆU\"šÒ•Õı\rC]÷ğ=“yÆùĞø¢›­2ÃzvHt~â®¥1İ¦VÍ¿O<dB(”²	\0X®‚Ä‘z–, _@‰D‹H€JF˜âŠ„‰±6Ø$k1‰°¼ˆ	°ƒ1³/ì¿—/’Ì|Ãû\roåËàF^ªg·ÍÙŠ¶\"Xõx_\rÄ9áb¥SåV|¬ösg“˜¦±7²Üõû=Vâlç|D>\'™ûz7êïn/OÎWô>}í\'RãÇ}ûù[sèGı_ıx=ö–Úã}¿ü‰\ZòãÔsüuää³tñ°qjé_séõàhÎ\\åN-ÛÆÇÍ9Sı)[è³èêxš8,Š|DÔa\n1m¿Dg/iæõ4Í”ã)4‚’{£_ÃäÔó¶ñÙÕ\'\'Sz4¥ù¨t½¿iõûÒá<±/ÍGOêbgÄ{c¨õ±Xª8Z­^¤iÓÎ”’1ig9e{wXì,ïËMUvkaÁu±YcYf3R¬d¿3Wª/ÿ\01¤`ø\'ˆ0¹¦#-—u\n±”œ\'m&Fšã†9OnÕNP©¼$¤¼SL®Ç“Ãç$Zs§)T~Ìã¥­‘ìX®™Yª¥\"y‹4„4bcéKB5ªÑ¼o®›³÷mm¿];8ÇÓËğxœ]IYSŠQõé÷²ş“=´L\ræÖiWœbÚÂé§8âÛùûİ&¼6èaax\'‹°ø”èb©ÓköÖ&Kî±Òr,0x;G¼®ûúÒ_µ7Íş™Wrº3p’¬Üvù—İdí´Ï;Ô[!Ãc0Ùe*Y!b1·Q+]ı‡7ÏU±ØæËâÎ‹‘gx\\æe…×ù§g­[sg¶ù}{óïeµmY4·ü®İ;!ÿ\0ƒá?“œ‘ƒµù	ü˜|lóˆ0¹4 ±J~Ò¿±Øå1ÇuËe¹j=~¤£[Áñ®Y‹ÄS¡O¾ÕRJ*ñ¶ìØ¢îÑ|3Ç/JÜlö¯¨\0º:G@\0±ÄÓÁágZ¥ôÁ]Û™®Tã¼¶7ZqÜÒŠ3Ë“}­eéµ\\#)ÇSÌp4ñTSTê]«óÙµø¨¼²ÍÅlĞ\0$,CDdX)±D’³.X¦\\ŒòÅ1áåôiÓÏsg:´å/]´xø\ZS‡f”µFr¦â¼=–{Ila„[$b,MdP±6%i $HÀ\0\0\0\00D¹EF£&ì—‰À»uã™ÓÇË”W©BÉÎµüN¿Úmù†±5“´å³ä®#Ì¾Y‹­Zm¹No“šùå1uü|<q¹™whüI–c!VcYÊ2RµFä¾\'rì{¶º|OYgw8|d—æêÅéGán‡ÌXÖ»Æ¢ı}HÀâja±«JrŒá+©EÙ§â[ÇÇÕRÙ—Z~€Eß¦÷\"·õrô4ŞÆxš|MÁ:ø†Ş&”{º­ï©®LÜkÿ\0U?C[waf«‚ñÎ*µ<Ş¼a^vs´×Sbì;V¾qŒZ’kººŒ›úI\Z§Æëıy|Y±v\rN2ÏqS9aÚ_ù‘çq_Íés}“b—bT”cfz7uæ~šïµı®ÛıŸÀàøºó%ŞO–çuíŒjpíT×%¹œı¦^<î_ìz?úİ§±éºœ#\'wŞËğ7\Zoc–şˆGùÓü\rÍ\ZIÓ“ï^\r×#)§:’Õ+nüLş¼¯õĞÏÈ0òÂåT©ÔZem×‹Á~V¯$öŞÄÙwÇ¶’ÏÏOy±Ùê}Rê-bÿ\0³Tú¬îÏë\\óÜ|ÍÇÿ\0ößÿ\0Û{.Û\'^ˆâÜ÷ïÿ\0âvÎÌÒüä/ìWäEm«Ÿ¼¨¥s÷•3Öy*Yn§&\\e¹òg?*ÑÇ»RZ³‡õŸàgvaÓaèavŸ¶nş³=Ì•ñtülywÛÓŸÔé7…ÿ\0ÚC‡1¯ËUôÉ³èDì½Ç%ÿ\0hLÿ\0-¡’¼IÆu÷äÖÛSÜqğİWÍ”p2”:7æ\\Ë°]ækN6{5{+£¹)##†ª¯•¼Dşj|Íîõ[c1ó}9Ø¶V°™$k;-jÉ.ˆè‘µ—™Î»%â·“Ó¥ßĞ§]+89ÛRñGC„“µÈø÷®Ø|ù®\"HM\\“±Î\0\0\0\0\0\0H`@\0­%”I‘n’ç½§«×¥éş§ÁêØÚoø—Äö»K¬U?ª#„Õ±´×ñ#ÊÏ¼¶ôø¿­Õ¨Wán‹öZg«…ücÌ¾Ér)d²L‡ƒÇı×Æ}OÅW›Ä­º«ì¾3ê~(â˜I%Š89=»ş?ÕÚ8~£§êÏcZz©VJ0Š¼›èx\\VáÈÎRQ„u96_…)æµ•|L\\0±w¥AşßñKğDKÓŸ9ùÚÄÇÖ–>‹Äã©åğŞŸÎ­.—òò,Ğ¡SS¡GŠ´ªµÊ>‘^vèW˜ciÕ­<Tßè˜W¦Œ{Wı‡OxUj¾rı+Î×şî,4Æ]=u‹«JqÁd”iÕt—·Rmè•×9>YSk¼ËhÔó£^ßsE¬s”à°ñ¥Ns„Úô¥wë·2í^*ÉèÅº¸ØÅ/¥/À´Œõwéƒq63.ÀU«W&ÆEE4¦¥E?s¹«à{JÅ9(Ö¡F¢ñ³OŞÌüË´\\¶³©‡–U¨ÉéÕŞ8ê_aNO”dßwV†US\rËJqÄ7÷øc$ü±n9i,Â”e*\n“qÔ­+İ}‡¬‘çe9e<½i§9ÉY$¦ïdI#£_Û?ş)èTˆAQDşi$?šXsÎÖ$Ö/o ş\'›Àõ¿O§Ş?ÚG£Úãı\'¿‚_y¼¯™R{m$y¼ŸÚôø¿©ÔÓÙóßÈçªb\"³ŠTã&¥\Z*ûy³£Ç¯Àæı­¯Ö˜v–îâÎŸ‘ôqüoºÇWK1§Ş7óí±Òjâ)ÑŠSr»ÛÙ‹g,à)[6£á«s«ÃzjŞ2ø»×M>_¸æ}¥âáS;u;Ú’Rµöwdpkf”ußŸ?qOj´ãO<„¢’n’nŞ7eÏÔ§œP³·µÌË-ùº1×ñtê8Œ]<:Š«ÉÙZ-Üâ}­fĞÆñEZt’£NZ¶ö•ú#¨ñŞsG#á¼EvíZ¤\\)®MËş\\Ïñø©Vªç)j“½Ûİ³^L­ê°àÃRä‰Uq¿‰iÔ»Üµ*rzŸŠø·•ª6÷İõ.S›—7c3|‹‘ŸBtm[]«³ÊÍq-½ëCâj÷LÙxª¥Ÿ`æúV‡Å±?ªú~èsÎÙ6«—zUøÄè[Y[×ş¾Ó—ö»™á1Ü.YN¦N5R¿²ı¾ã9;rqOÉ®å_*ª;•?šp*4jÆM7Óv:Åã5ÄaaZTòü¾Œâ¤ªb+jm;5²-c^|mÓj\\‰äkØ\\êR¨éĞ§ŠÌ}”ûÚT”a{¾®Ëâ]…\\ë\ZåF–]OéI÷³~‰lŠéÏq¯mÉ$absŒ\r÷o	TİÓöäıËsÃôš¾3ŠÆIóïªËOşUc3•àğ-¼&ùè\\Í\":=â,~\n«O:T¥SNºÖçæ——¡“ƒÂã³l-E|ÂtéÎ	÷t#£ï¹•Å± ²KÄGTl­½®Ÿ}Œ¬‘B9^R^Ê¦­× ^Ù1Ü]Ë°ÁPT©êµïí6Ù–E‰Eã+wRA$>¦“Ú+EíCj˜5üü\rK.Jx¸)¤Õ×3míMş{¿‚š–Zÿ\0K‡ª2³y=/¤vZIwqä7µê=æK…–¥5úıVntÿ\0ª^†Úı–CB^„¾éçàãâşÈåĞÃ{~İEk7ƒøG*«‘a«ã0ËV¤uIÎOÅØåŠoW;+øØè\\\r_¼Ê-[?–ÆZUã+ÿ\0Ï­;9w®®¯p¾O…áì]l>]FHA8Î7ºİyœ¶¤9Ùı§FâÙa¿!âoÄÕ+ONÔ{Ø5=ü¹Í1Õu=Iuo¯\\¤ßHâßu‘N®¥µÏW†óŒ\'óañG…	İk‚³ê_…ª)ç8OZSKßNßOæ¢¢ŠkdVmúyß±K ¥\0Ã €DJ ”[Ø‰ò8wñ.qGŠ¥*™\"µZ‘T£6£*i´’]9Æ_4Ò;Eà\ZGJX¬%©c£G¤eëàÍ¸ìÆ÷ÂÍöÕpœy˜d£:¹ƒÆS‚ŒeBª»w{ûI+Y¿ö’g38Õ–\Z³Kóu—WËu¼â8|¶¾*”õÆN\n3İ+6™¶e9:¸z|\\,î¬­ªmï\'â×C®pá”ÜFz—NÛw+\\#‡icğ˜’æNGÕ*Ğ›nQè¥t·æ{1])BR£H¨\0,\0\0ÇÌ?°Öúàd2Æ?ûo¨şsúÔÏo›s\'lL×…Ñîöaİÿ\0Kp]í´ª»_éig‡™l©ÕìöKúQ€_ÿ\0&ÍÅèß£¾şÎüì|õÚW³Æyóä}ù{;Nÿ\0¶9†ÿ\0ßËc~_QÍÁö¯$’ü¡Nü¶oí;|ñÔ³,Æqo.Ã´°”š·ÊªôvğğûN–ÔÑˆ½ÒM;Üï¼!J¦i‡Âfª…\nT¢°¸ys^Ê¼ß¯C\rn´äêm“BŸ8ª€‹–ıÜ©Ié¿Kİr&O‰#{Ã)¨¼Sœgf¹¾+îş[YBU/¦*.Mú$Œ	q–Eùìz¥üÚrÆ$°ïŞœÛ‹x‡ˆp™åuZµL%DÔ\\(Jğ·Kmñ=>â,×1©8â±õ&•XF7kßĞÙ3Î<áÜU¨â(ã*¹/ÍSæıíXğ(v£’N´\\²ySmüïcãa­6–å=:dw[­ÑR<N\ZâlR”°s´ ìá\'¿®Ænašá2û|¦¤£&U…—zÓ8”xK‹rVx…T_‡e“ãˆVñ³&i>V[Dñq†c™Ã\nôÊ–}õUk­\\¡ºşã9âü§\r–âgG0¡,DiË»…÷r¶ÊŞ§ŸÙVefUˆ«ŠÄS2®&sšrJMmb}ô™“mÉB0¦ÔRK~G\ZÍd–2­¾“ø³³M­<ï·CŒæ­|²ªÿ\0üY^Yé¯Çı¶¾Ìq5¡,u\ZTUìÉÉJÖç±¯g“œ³\nú âûÉm·‹6~É-Üf?^‰­ñÙ¦#ù²ø²¶~µÂÏäÉÑò\ZõGƒ¶\Zoó1·´·ØÔûL¯VUğÑ©O»ö¶Ï{›¿ÿ\0À°?È‡Á\ZjëÛÃ?à«›øÜÜ_ØÕxq·àŸ‰Ú\"q>¯°÷ˆ|QÚàOÄõVù>â¤\ZØt\"RK›±ØåJ‘‹ÅPÂĞ•ZóP‚İ»˜2âª0Sy†KW_œKo‰KÉŒı¦co¨¹Äûdx«~ìã•ê?”¿S¡ñGäë-¯B–*5\'8m§tıç1•e*I¦›º8>NS+4îøòãÛ±ğ¿\n`_Š{¬ğ;<wáşñg¾Îî?¬qgö§Bxšôğô%R¼ãE]ÊNÉ#MÏ;KÊ°\rÃ\rŞb¥â½•öŒ¹1ÇÙezØ;%¹Èñ}¯â®Õ%¯;³ËÍ;MÍ±ø\ZøxÊ•>ö.7§4ºïs+ò1ı5Ÿ7oM7Ì–vŸdô!…«‰ME¶»Åæ·ëÌõp½­æp—ç©aê¥ü-_ì#ÿ\0\"RğeOoË˜¨ÿ\0ÜÏLäÙ/iôeÄu+cğÓ§Ft£Í^N-x¯yÒ2LçœQïrüD+EsIïUĞqå/Jç†Qè¢@F±’Q(‚Qx\0À\neÈÕxã‹ÿ\0£X~ò4©V“œuÚÆÕ.F—Ú/Öâ\Z1Uµ\'ª¤ì¬aÏs×â×†cåùújØÙêâs\\>®_Nugİ·)Y¾‡N¥UV¨áñ\\¯iSqøõ97v9™PÎhb3,]\ZtiÉIüO]Ó¾Ûe``’ÅâeÒîkı±ş_ÒÜ³‹š´oZGJ”pÕ£ÆO\\­kí·3æ¸F¨Ê¥Mìö>…ÿ\0hŒŸ2«‚§ˆ¡Z­\\, Ö†ïgãÈùÛ.r„êÑ©µ·+Ãw•òöÛ/èÅä×Ş«Óv®[RwÛ¡•Š†šòQ[t^4ãí{\\èÓO¥ÿ\0Ù/8ùNOËçQÊTeÅ5É4w\Z¿ÕËĞù{ı’ñ•èqL:_šÄaåuşãê\Z¿Õ¿AÖ£“í?v‡g•¾»ø›`®ùö-üwşdkı£KõåTş“øÿ\0`nùö-øáßù‘ÁÃ÷wóı˜†Iõ^[^ãÈß‡+Û¤p,jk=¼O 8çşÎ×_Ãøï‰šóg—ò?±èüoëv>ÆİøQ:_n†™ØÚ·\nû¥ğFéĞ×Ó“ì™|Öx™”ñÛgìûÏn5ú6Eæ8Š—ëk\Zrÿ\0f	ãúd÷X¯ìóô.–±Ùªz}k)î>iãíøá8ı?Äí˜+dêşã<qI¾7oøÎÓÙ´\\r…è3‹ûcÕùÑ[Zçï*)\\ıåG¬òT2İNL»\"İE³9yeLqşÓ·Í¥õ™ƒÂœW—d£W2«¢	l¢®îfv­UQÌjJ\\“mŸ<q}[”!6¢•¼.>+z9e¬#µñßoTáBtrkA>R_:Ş}¸à¼GÄ¸Ü÷<F.¬¤ÛºM-Z“›nR{ù‘¸³ĞãáÇ&\\jM.ªòn÷{K6«\ZQ§¡ôzc»d«³OTÇ+fGÅØ¬¢£QìÎ£Àı¯b°Ò‚\"m.p›Ô™Á—Œº—ğø‰Ò’”emÌ²á—Õm7êÇÜ<ÇXúÕ:¯Îé›d,Úü‘;%â\Z±ÆÒ„¦Õš·Ú}]ÃØ”å”*·w(&ß™^.L¼¼j9ø±’e‹ĞDIÔæ\0\0\0\0\0!€\\2”A\rlÉ!õ+}%Ï»K²ÅÓñq<¥CÕ§j¶.—¡åpøÊ_Y|O7?³Òãú:­š‹­ìZ£µ(•øİHóo±ì6á|oÔüQÃiÍB¾¤÷lî\\yÿ\0eñŸSñGÄ=•¼ÎL÷k»ãı]#‡s	O/Êğ±•©×ªûÅãi#qÍñj,”jT^ÜºR§Õœ›-Îá•şJ«89ªNSpRµ÷fÛ–g+9•XÑšRöñ¸›ZÑ|©Äi9á»µxê8ÄF*¤°ÙFéÖõ%åæÍ‹%Êc\'K^Š¥\njØ|?JkÅÿ\0æW•eıÿ\0wˆ¯Kº¡I~A«é]$üÊ3,ÆŠòÂÓÄÇ\rBóØ‡5ùè‹ñ\"FW+zu$—üìQZ…\ZÔÜjS„”•š’½Í2®qÃÔêÊ/Ìem›U&Óôÿ\0‘ƒšñÃ\r%KšÊrÛJ­8íï/%VqU¼ß†8Qf5Tó:˜zšıªq³Œ_‚ØØøS.À`éR0•zQn×‡_[‹¥,T¥Jumªë[»kÖÇCìÚ¾6¶0£Nœ¨RŸµ)½Õú\"lÿ\0]Ëãöt˜¢´[‡$\\\\Ü#Ï©$ iÉ!Î;[vÅ`ßøm}ægÍ<Âïó‘›Ûö¬Ô—Åg²¾aJş\',üŞ—õ:¬yœãµÆ–e†á~,èëŸ¼æ½¯ÿ\0Äğ»ÿ\0uËÿ\0:9şO÷Œ~Ï)Æy”.¯íxEm¼?Áy¤0¥RiÉS‹›KÁkí/&PİÖ÷$ù™|l¦1·ÊãË;ÓÁíyéÏ©¥û•ñeÍä¿,PMõ{xìÏ´2Ágy¬+á!R4áMFó¶îíøùw\rqŸ0£‹©Ju#M·¢.Î[4Œ³›Ëq®2ÿ\0{]²qñùÓÀR’î0mÇoÚ›¶¯³cU¨Ùw3Ì¥ÆUÄT¾º²r—…úüWØcÑ­\nrÕQ_nF=íxã¡I¸[Àµ)Ø¢u=­®DªÑµÎñséĞ¹JVw{ÜÅÕ½ß2å9¨É64m–šQåí.ÍÊñÓÂb#VÒâõ/TyzÔµ&dÓ§.íÍJ)++7»ô;O·VÃö³ZÆX\Z5*$¯.ñ­[säi|A›SÍsJØÈaV½“r‚›’¿ìxQ¬£etë©>¿a_ãŸ¤xãqèÒ­¦Vû‘´düS†Ë•£:–¶º²œßßÈÓ!+uØÌ{aSuÿ\0kú«¿´¿„«]_n€»RÅ¥ıƒ­Òì©v§¶Ø,2÷ÈçQ–ÜÄ*§7	]z‘áş<?ÇF]¨cŸ<.æ+i˜ùoò|5½úœîÅ™47ô\"àŸãÃüt\\ëŒ^3-–¾\Z\rÖŠ’’›Z_?ÃÄÛx[N_F”o®()]Zûsûe‰ÃÆ¥ÔwÚ±½p#´ªGÂœ=3åã“\rÆÖ%3¡=èOCX†‡ÚûÜ†‰~¥–ïŒ¦¼Ñ¶ö¨­Süc5şSPË?¶CÔ¦»wñ[´ÑÚ”}\r+¶5’á©.N³“÷+~&éKú¨ß®Æ£ÚÅÖÈhÔŸ8ÕV÷¦kŸÕÉÇıH’rO­Î—Àµxs“ÃåhO=ê:”îÓ²Û—#šÍETZ<MÃ†¸ñà)a°U0´#‡¦’”¢¦¯ÌçvòãrÇQ±qiÃ³áìT(TÂ:²°£O{İy¾·u{ÅÙõ±Ó¸¯ˆòÜgb{šx™*”Ö‰<4´óñµ¾ó˜T«ù_¦ş¥ojñK1ínŒ®¶^~\\ªÇF¦\r^¶¸÷kÆWÛï0¥út2²BÂæ˜yT»Œ*ÆNÊıHÓWWá¾+.«Àæù&>›Ó(Ke\'åÿ\0V6Xï¹«çù‰0ñø	ÁboN¬^Ó_F_ëĞ£ Îêáb¨f.R…9*s”ötSñ^üG—éÅ–î6í‡Rˆ8É)Eİ=ÓEd²\0*\0XX=\'¡h¦mF-·dƒåÔÓ{Yâu‘püèaæ¾YŒ½:J<Òë/²è¼–˜Í×2ÇS¡Sñ”òiON¦\"ZeQòµo+Üéü‚ÀOYĞ¯\nõ0²QšI4rÜFE“csZÏóĞ£-+İËÕ³Ùì31–_‚¥V³rxŠ’ußÒÔö~æ¾óÓ˜YÆŒ²ŞNÏˆù‰õRÅÖåŠÖt•ı¨ÛÒè¿¹ÇŒìª—2@7T\0\0\0\0,cÿ\0±Öúà_,ãwÂÕú¬®^ªg·Í™š_*Ÿ«=nÎ©N¿eğ§ûäß»Àò³M±U4ø¿fÕİ.Ëæ•õVQûvüO?ÛĞ¿W{|½SgÏ=¦¯÷Ë0^åñ;Îq˜SË2ùâ*)M¯™«Ê¤¼÷:q^:¦eâqUÓŒêT“qwVß•¼9lº‘‡Ç×¥ŞbT/k¯‰Ú³.%Æ|²KÃµiKB”bôÃ\\\\¹;¾‘ŠO1—^8¾‰Öx[Ãä*t;è`gñ8Š‘}î2B+›ålk”ÆÅü¿\'Ï³<ÓZ†yj5!ÔÇF‚ö¤¯xRşÕ–8§‚óÿ\0É5;œ÷™+¥,=Eg%ä¯ï6ŒI<Æ”kcçˆÂÁ$¨apõeJ=5iç/ş\nëğİ\Z§Wò¦kJ‹”­Š“²]w\'W[cç«íÃ³|ƒ5Ëğıîg¯B›–˜Î¬t¦ü¹f9Õ	UÁÖÁiŒ´¸ÕÄ¨Îş‡­ÚNi–âiQ_ãsIê£^íCÍ;#VáüÂ6Ãb1r£	ûqñEµÓ}İmØû4áœÇ#±Ğ£¦Q~Õ:Š[í·#x¯Ji¸Î1’|ÓäÌ†Œ›\rì:wôËş¼ÏL§·.ynµÌÏ‚2<ÆZªàÕ)ı*pø¡å×ì¿*iüŸ£\'áU5÷£vf6iŒ§€Ëëb«;S¥7î\'F9å¾«ñŸşJ›¡€Ì¥Œ©\ZS­V\"“£N)6Û^¥9æ•éªù.e•ãlÜhÖjQ¿Şdğ„pü_Å8ÿ\0–bkSÆTµHÁoNµ;ûp~\\­ï7NÏ8rCgu §\nQ«\ZTµI¿bÚ¹_Íoà†›åŸŒ÷ÛÃÁåœƒV8¸®¤®F·ˆÅWuf±xg\ZŠú¬Óö·ñ;Elï-ã<n>µ-cæÕ!SVtä¥6ÓVİ]îW9$O¶]·®É\'ı½S‹”[‹”›^Ëßc_â¥lÛáßJËŞ{½JÔóÊÉŞ\r_ÃsYãJ•ªfXØ`\"êÖ…YJĞWi_vÆZğ‹c?äÉÖ8iß‡ğ/ü|©v·eO\núµ%÷£Ûà|g{ÁmyÎ”pñ×¥¦¶æx®KU,$—--ü\\§ñ9¸ÿ\0±§pÜíÄçÃüÈî4Î\rÃÏõîÎ¼?Ìò×/Qñ>«üŸ²œEHÒ£)Í¥«¶Î}Äüo,¯9£N´©G[•_ôu—¹›fõ²\\‚xŒ<i¹_Kï-¼³ÌÆ®7*•$îÛnÛ-÷åĞ‘•¹xÃãñË-­×5í„ÆT†KBQÒ§:Zn·¶Ş&‹ŒÌªb+:—¶¦İ–ÇŸ*­óe:íÏc‹y¨Î\"M|æıç£—fr§hOxÜğ£.¥øJÈx§uô·fÓ^\rÀÊ.éÆ_æfÂ×²q.È¸ÏƒÍ0™6.¤^\n´Üb¤·„Ÿ-ılvÔ÷·^§w\rŞ:pòá¬äµó¬®T0µ•*‘wIò—©Æ3¾	âY÷Ùuz‘¿Ï¤»ÄşÎGĞÌY2¹ğL®âØs\\&Ÿ-UËñT¤ãZX¾ªPkî±nt«SmFœãõ“GÔÒ¥û1<^3ÊiæyjZ Üm8ßËŸİs¾=’´Ÿ#v8}<¯›àiâ)á«Ô’Zm\n.ÍylQ‡àÌş»ÓG(Æ¯8Y}ö;·ä”ò<kUQÿ\0;=Zo½——3;4Ì0™n\ZUñµU*qWr~g¦íN\\öİHáy7fÙö76¯†«Üa\'Js•iêÚWÙ(úxW8.‡\nÆu&¦\'UZs{$¼5îâæı§â9agA¹E­¤Õ’VémÍã;Í©àU:0J¦*»ÓF‹ñô\\ıÅ±˜ëu^K–õYî¤Ô\\’ot¯Ì»µÓ<Ì»,=*•±5lUH½s}<—‘èÃ£:1¶ûaU¥¹$.dšE@ \0\0S;YÜ©²İii§\'kÙÊÉ7GŸ˜g¹f^Ôq¸Ú[é9¤ËyWå9Æ-á²ìmDã\rrTİì¹3µî#§›f©Q¦é÷qtå}îÓoÀÙ;)àœ·ègØ¬ó„¨9F9¸*ri6¥í;Ù]r91çÊ×V\\won—Åø,.a“Ô†6=åûr§ªÊvèÙò<+â\\gÈğğ¡Jr–˜A¶ ¼–ç`í¿rÈeóËrª––ÔêÂ:Ë’ñ[Ÿ>aóWÑÕ«¼%{ß¢#	räòZO=Tc©ş±©rI8›ÆZİB…X×Í*JR¼Zm¿#ÍÇTU+MÁ]_oC¡ƒ¥öÚnó:¿”ğ=ı\nñĞ«Sş²Œnİ—•ŞçÒü)Úq\\eŸ0§:ª7tj-·£æ|-4úúx,Ë‚­\nØjµ)Ô†ñpšbãuÑÕöïİ¡V…\\î¾‡{M«§æl€»gØµã‡æGÈóÚÙÆ¿ÅT×_S×\'}üÎ»şÏ’O?Åo»Ã¿ŒN<%™öìäÊeÇÓµ ú„&zO9áqÇıÄ}WğgÏù‚¶&^w>ƒã4ŸâSú,ùû3Û;x³ÌùØô>7õ»c;p¿ÇŸÁ±¥v5è«ş|¾İM°99>Ê1sT°òœ’F«Ãùî7\nØ˜ÂR’²m›{8ÓÊë¹?Ùgü©:|M$›¶²Ÿ\'+ç¹út|n)ŸQô>\Z½:ğÕJq”|SÍ°µ=ƒñ°W%%{o¦ıéfXÈGU¥9Z/öZü\rç,Ë\r¹òãğäñp>-J\\a\'ü‰Ù;:Û+KÉ_?ª«q\\¦•–µ³;Ogvü–½ß‡‡û#Ğù?ÔÚå`„¹»Êcã14°´µÕ’ŒQåVâŒ¢’½Le8¾¼ßàcöƒQÒÈ«J.Í#ãs\nî¤ï\'fÎ^[¿W9cå^Ïm™ş´1puUH»¥%}Ï1Õ;ÚòmófóÚa.ê4¿]Î9o¿3Nu6k=D_®åÚiè{írÏ™‘FIR~§C=¤É‹w–äEôA\n“ŞÈ»{²…¦ÜÊï¶ÄU£mìæ»†m¹3ìNÏê÷œ9Aø]ğM~ë4§õ‘õÿ\0eY„12›œm	4ïÓdrgøòm×—åÂÛq¸ÊJzñ#M7dÛæx•3úøÚ•¨åÔ6¦·­QÚ>ïÁã®<È²Øªu¤±U ï›qOÍõ4\Z¼WÄ\\SPÂRªàôĞ‹µ¼ößŞF|™]é?Ên»¾nxznsR›^Ó‹VlÉ\\ÍG³Šú8±ñœ9YM5¿‘·õ[\\9\\°›sòcã–’C%ik0™Z%ÉdKæ±&Æ&mŠùu¬ìÙ©Vã½)¥B›ÿ\0ÄÍŠ¿à¸ªq¼EGŞK~§\'&wËNÎ<rÇ·«Å<A,ê¼féÂ•kFîåşiâáêjSÕusÛáj³*…w©Y×Û§$Ôv\Z5X©úetÕ©a÷ŞúÚû¬Jù}şfÿ\0<¿ĞëòéæÜ{öÍ“´w4Ìûe–cªáûŠrîİ®äÑ²Uü£¥Ú8KyÊ_èq¾5«Vyî)Ö²ŸxÓ²²çægm½7àã™[·±Äİ¡ÕÇåõ°qÂÓQ©³’“º9íjêïÁ¾Ÿaw.gŸVwMxl$ÿ\0]2Lf¢ì±ÚêRŒ”e\n³É?Svìã3ÓÃP©J“¨š„î–«üïUĞçĞœVİu6>×S3ÃÓ¡UÓ©*‰FK£c4™Ü±Û3¼Â¥IK‚š„’¾\"·J0ÿ\0VkyfWı\"ÇA$éåx] ¥¿xú·æÏ3Œ3¨eê9.[9TjZ±u”·œ¼_#Ì¸†x*qËrœ<pñ Ûµşõö•‘ŒÆãM¦<?”Æ?ğü.ÊÉºko¸ósîÈ±øiPtğ¸Z·MT„bœ}İO;2Äñ³ÁÔtğ˜8­/U¦¯o´ç—â+ÊS§ˆ”Ûçi?¿ıKé\\0Êÿ\0Ù¾aû6É]UúÅÍôPÑö›VCÃ8Lšw‡i{Zß7îFÀ\\ÂÈ<VÍ;ºoı§Ov[´sùcÖÕ@¯¡Ô¨éÆiÈ26WG•çØl¡Ó#Ss[X½²NÓ7+¨õˆg‡€âœ6²¥MNíÛ§úß¡\\sÇ/FxÜ}¹¿l_ÚğŸQüLÎ÷Ì©¿âFl[ãp‘ÿ\0\rüO?³·úÆ§\'Ùèñ\\us™vÈôæ˜oäş,éÈå½´JÙ¶xQÿ\0ÜÍùçàãøßv­”G]ÂR½¡ªÿ\0ôšLëJîìÜrúÊ–K›Ô½›ÃwkÖR_èhsŸ´ïº¾Ç?våuUV¨ß‰bSv¿B*´ËjşÉ¬Šm{RaÉú\"Æ­î÷&ò¶È¾‘µÍ›æC³E¨Ô³*rÙ_dÉĞ©s.Áï±b+¡v*-n<EÕ+2ìdí¹ÛKÓ©o©o³£V.œ“~Í¯ïeí§s-ò.R“Ô¹éB{—TÜšğ1)O{oÌ¼ª_§\"$Y“	ogÈ«J“İØµêezš‹Isñ-â•úu&ìÑ•‡Ù§sÏ£åe~]Lì\"–­2ùÈ‹‡Iº£\"ñZºğ$dçVvn\Zuyİìhıä*a”c$ÚŠV¹¿p\nı\n£ñqø_ñ9î:Sšş\r™ˆ%	DA¤+Eí[çà—ğÏÿ\0i¦å¶XÈ#qíYïôŸşÓLÀ?Ò`‰“r»ø~±Û)ÿ\0SªSµkÿ\0Gáoß¯ƒ6ª/ó1ú¨Õ;VváúÏ_-ëNN?¼rJñjL±¥¯_î5Ú¥ßTb7všm§v^Şôø“5Qù=âm†Ğ¢£¡n½msÌz“kÿ\0qb5f£k^=âŠXM~—.ù_ÙeÊr´£g¦QİKÁ–”ÔÛ³Ü_¤šäVÄ·l·N¬0î3š¶*’’Tê¾’K¤¶÷›‡âúxŒFY«	Œ£VI5%$ı™¥Í­½II|älœ	Ì0øª¯+t§]ÓßWæ×^óêRã¶Ya$Ş>Û·fXÜU|3åƒ©İFûÛv¿\rŒŒ\Zap˜ÊØyaë7Jn-êK}Í²ü^2xìÒN–ª“’W\'m2¼›ø½®xy½~û8ÅUvö«K•ú¿ùj¿Å2ä»tL‹‰èæØß“Ò¡:oK“m£Ş[ç³©_>Šñ¥/ÀèÍÇ—ÔHêbæ8ü.]†#‰¥‡£R´ô¥öšvÕÂ™m\nÿ\0$ÄÔÇW‚ö!N›Ó7õÖ&3’×G\"÷ê|ÁöïÄøÕVZ´0Tæš]Ôqô“Şş†v±ÄyF6zkTÌaU[¹ÄÎRZ¾•ú3iÅ—µÿ\0ÿ\0Ëén,â/å1˜§v¶§NûÔ—‚8¤jãø·ˆgÌäÛjú_*pğÿ\0¯Sœæ¹íU‹Îñ2«>q…Ş˜oÉ.KÜl¹]–O‹jšiÎRşw|~	;ÉLÿ\0ÒÏh™;‡fØÌT$àéâ)ÒIr’m§ñ-p<<²8;GºŠ^¼ÿ\0Lâ®=Ìø¢42j\Z(å°¯zti¤œÚİJO«ßĞÛ¸>jZXuóâ’q\\Û7Âå»2ô­“QÚò<cÆä˜*òùÓPRõOşLõâ·<^ÂÏ”a(ÖN3rsq³{»}ç´¿’IåtŠ«¨At\0\0\0\0œgöZ¿U—‹8¿ìÕ~«+—ª™íó^k¾.£^&oãèeœE…Åã7¡J¥çü*ÜıÜÌİµ‹ªº§¹“Â´ğÕ³œ,1Ä«ÁTÖì´õ»<øô/x»FOAg•Üœp”_;^×úÒø3ˆq½jõø<UF´«IÔ‚·²ïËÖÖ7¬«èqğ¹6#¿¡	Éa£^_š¥{S~k”WTsş)ª«g¸É|¦X´ëÉ÷í[Zoi%ç¾ŞB~WJa‡Ø\n¥]Njñ·/yÚ0™ş“áóÌÖt£>ïô\\%~ål­nn^-œWÏ”•Òåö³¡˜âqŸ÷ov¨S­%ùÖ¶ÔÓè…†^¶ôÿ\0úÇN-©å{óş»şE¬Çµ<~#W¸Èj*sƒN¤œšJÜö‰¾ÃÃ‘V¥_f´@ò¸³8Ër†¼ğSÃJ\Z\Zœ×TÖÉrçq£)q·êùß7)¶ü—ÜR“TíæU^Ó“—%¶ŞïùÙªvßtÍ,é³ê¨êä8\n’ç<59?Wg+pö\\¼0´×ş”z\'=r_h•’mò5¾7‚Ì(a²H¹kÇVZÜœ)ÇyKî6Fb¼˜ü¹Åºİßt›|•î4KªÓøG†ğ¹7b\r\ZT©åôã}Ûrw~®ÜÍ£)VÍ35ş,ş„yyV5Vã¬Ë\ná%İá)ûO­ç?õwG\"Çcñá9Æ¥Zi(xèÿ\0‘>£K.WM‹B•X=tá-¿iG=qšâaOdªI[on¸şÒ)Jt–QSoóº¬¼Ä|£R¢½§\'=ıö)Ë”¾›ğaqû6şÏ053o•Ôs¥CJŠpÚW¿;oñ-l-J¸:¹m:T¡)Ss¥Q«ïo/3`ì^[fIõ•?ÄÓ;QÃÏœbe”)Uœšñz†\\xøËS†VòYX™?â²zN¦\n|5:±İ8û\\¯Êßa“œñÌ3œ=\n8Ú.Ìl¥Móû}­Ùî”8*¥4ªEá¢í5~}\rµ\\“„Î;Ê8zPh©ûQòü/ï5ÏãÔÃ9–v<~ÅåK6ÂbaÜ÷u£7\ZĞğwçÈî8<~‡\\\"•h=Ô©É3çü‹…©à¡Vœeb)¦š½Ö¤vş Å`²,‚¼Ú£B*0„Û[$‡WlSäc¼¤rşØø§åxÙ`pó½\Z-¥g³}YËkOvgñ7åXê²ÕÖç9ß©òíÑgŒÒgRÛø”ª}Ëz×$EììÙm+¶D%dŸRüÜùPšoÚÜ¹N§%{‘`ö²Jò¥™aêÅ»Æ¤Z÷3êºnô£~«så>t*gØ8â$•7^\nmøjW>ªoU\'İ¸ŞŞËæ®mÅ“ŸŸÚÆ3\Z(-uªm\nkŸ«ò2(©m®ÍÛ{r¹Írœ³ˆiv›N¾e‹ÑJP™AŞ5–ŞÇ•¹ÚË—S¦En·ñ/Ç|í¬óÃÇJÌLâJV&Od©É·á±“7«ÉØó3ü~UŠUq4b»©&Eà[<¤—µ1›¬¼*•uN¬\'\'V‹\\¼KMF5òt\'$èOoq¨eüiÃØLç»¤áJ”¨¨ºª6Z¯{}ç©Å¼S•G†1³¡˜aªJTœcTRnûr2œ’ãªÒáf]4È3ƒ]|¿òÇS/UtÊj\Z\\ì¯æ“LÛñù\'[:³Äf4&§[{BPjÒŠ$’oÏbß\rf˜<gaªRÅR–¼ª)§f¥Ë×ssšNœ´¥+­•öe0Ã¢ùçf]­Æj¦Tã(]?úÿ\0­Œˆ#ÁÈ~U†UğXÍ/º’•Eüè7·Ø{±ÙØÛ¶MU`d\0\02JgÉ\r¤®ö,âkQ:•!®m»Xò8ë¼şâ–MÕtŞ+ª>sÎq9¤1Sï«ÉE]¸º5¾êÇ.|İøéÑÇÃs[tŞĞ»0Ëã–â3L6/ŞFÒÒìÓ»ô^\'0Î;NÇe\\*¸\rËèaí¥Õ§OÛš[¶÷ç·3ªp×ğşu`²ÌÓŠq•+Õ£\nUiÿ\0Vµ4®¯¡r{s5>Ûû6áü›*¥‹ÀJ´kIIÚ¥MZ•Öü¼Ì$Õßé®9oñ½×Í3\nØÊÒI=ßWö|Ÿ?ö\"*5cº¹b[mÈìÆIéÏÉo••rU%ì;]S÷Ûbºvä¹¡EöNöD¨\\•v·)^)•>[³ğ-wEJWöZNÇ}ÿ\0g™/é!>nƒø£çN¨ášÇÍ4}şÎßö‹ÿ\0wså?8èÇúëº\0Øåx¼eğş#Ê?óîcuŠŸ«>‚ã\'nÄyÇğ>}ÌÚx©.·g™ò?±è|oë®ÉØÛÕÂ¯ùòø#uèhı‹oÂ’ş|¾Ş:áõrr}˜\\C,®²—-,ùÎq_ÒéErS>Ïÿ\0áu¾«>qi¾1–ûk2ù?wgÂôú‚ ¡“Å%×ğG­Š–¬ZÙÄó8=8å¿‘êc²Õ¿ÑfÜ?Ğääşßı¾vâu\Z|U%\r½»}çdìß|±z#qmßI‰ø“³…lª>‰|?Ù‡Éş–ÖD¹2Hg®òZ¿iş×²¾ÇÏ8ÍªÔOk6}\rÚGıŸ¬|íšIÁU”º\\óy²½ês8Äw™”âŸÍØ×éQo™ıÜî¯}˜Ï{§#¥vÃs!ÀKET„j©µ%tÒßğ:¼çŒÂr_ÿ\0NOV„é&§	GÕhÇóOÔíÿ\0íÁL®³Ça ªŞJ+koÈât¢ÖÉòl·\'œÛ<°×l:–RaU­E;õ5e¥j×w+R\\‹Iî\\§	T~É™ùF!ĞÅÆ¢èvãš¸>ÅåĞÃT©Wã¦z½˜¤¹zœƒ\'Á©×‚{¶÷ò>•ì;„òÚØwŠÅRU§I­0’ºNÜÎnmtìáüq·/MÂŞm˜ÇˆÃb{©ÉÙÊ\r&wî\0ášYYáZijvä¼\r†4â¶I$]–Åqã[S—ä\\ñÔš‰JÅD¦tæMÊ[$‹v%•\"\"Í`†°y<Yÿ\0Å}SŠbßçeo¤Î×Å›ä8¯¨Î#Œœ¾“8¹§äîøÿ\0Eµ/iz›Yã)Ûé/‰«jælüõciıda”o=W`¤¿6Š¬Eì\"åÉãÌ¾Öä½–pŞÑ%Å}vwIü×èpÓûÏ‹_ÆÌóÇUÓñ½Ö«^jìÃ‘“WtÌYÚ,™‹¢¨åWÎÇ¥“Iü®”;îãT’ïo´<ıÇ—í·î=L›	*Õâ’×)4¢¼Åš‰…‘e8lß;†œ°XeyÕw½GÕ¿^GR¡J¨ÂÖ˜ÅiQğ5NÉe—àhå”\'(W¨•\\MXìâ¾‰íG‡°oúÉbjoûx‰¿ÄÏN^l¦_¶Fsšár¼ëâªE(ôm^^†³ÑòùIB–£¿ŒÒ=\\Óƒrœnt\Z*M{3Õ&âüosÄÃva‚¡59ãkI¯¥¹y?â×äÜ2¬l±°Öéªi¤Õ¥}¾Ã=9^]m\Z³©²^Ò_ègÄÓÃ=o¤¤UĞ‚z¨‰sG:ívN5ğ–ç¦_tYçµÿ\0ë°oÊF|ÿ\0Vÿ\0îñø\'5˜Òµ­©^çSï+F6^zìrşKò…\'×R:Ä>g¸Ç†nŞÚü¿qÌ;YÅPcBìLp­CÙVsÕ»ò<âL³+ÆÆ£Å9¥$¬ ÕÈÿ\0h\n­g˜T—tïö³˜:Ò‹ØN=ÛÛln°’¾Š§ÚVIİ§9Í>v²4Ñ8·,ÏóJsÂÖ•(S§§Tã³wo¡Ì*oœš÷–ªV’ß™|¥³UI†İãí²c3J4ğÕ(ÓÄÆ¤*[V„÷çäYËhd‡ë<^aIè_ÔQ„½®«y-uTÜ¥Ôöy‰‚|™ùÒË¨âåª¾*®Lm,E8ÂWôM|¤›Ù»İFÿ\0Ô‡+«·²/¥wµÛ¯2%%âÊ`õ/eó*åÌ™+4­È­;JİHµš³-¤/§ÕûŠµ{>w,©Ù°¥vN…å-­\"bÓùÅi²S¿1â²b¢¹2¤ã«7î,)ø·æÑoíèÂ¥?ŞÅïâÌˆN›Vï!÷E7¿©‘IôNÄø\'o^”é.u¡÷ÿ\0¡ó\Zv­üg‘ül_¥/<\r½\\…Jôáe»:>†°ø«^tiÇ7F¥–¤®”~Ó˜a*ºrŒ×F¬Íšc›Ç,†ˆF„\"¬”#eİooŸ¾“–õÓ>ˆÕÏ£†«…ÃÂ½<N™º\nÑ©f£¦+Áµ{:î<=B•8ÓI+¨¥Ïş‘Áÿ\0+b*T¥SØ¥QÖÉ57mÛµşÓÛ¡Çyİ”gŒw[mºñäeŸV+É…ÎM;4\n¢iœŸâñØ·‡ÆÔu[W¼­x»zx¢1¸Ü}¹sÆãuFmF…ÚÅûÜé¦ûM3ÿ\0>ËµŸŸôŸşÓKÁµò…clgã]¼Gn£ıD~©ªv¯·Sşzø3jÃïFU\ZŸkıÜ¤ÿ\0ÇÂF6¹¸şîUVp|‹Œ/µˆ­6öe¤¤ß&i®×ÚíÕ¶)œ¢¹‘ª|¥b™·%k±\nœT·‹Õ´¾w‰E9ì—ı\\™Yo¶&®¦ÖÜ¤¹?fàe…zğÅR&©¢/g†Ş–¥ÍnjÑ–«\'³FÁÁ•ëÓ©ŠQÃ<VTÔq”Uµ86Ö¤¹½%,F[ÓpìÛ,g8Z•%VTånñİ¹+½ß›¿¼Öø†ßÒj]1²ğÜö;.­Iq>eJ&XˆÎáRi§4šİùÙÛÜxœQ+q?{~~;Æşuívtÿ\0_Füû™[î6<ã·ƒ²yãs§9mF‚~ÕYx/úärj¼{„à¼SÄJ)Å:r:µ¯Ö^G)âN#Ì¸Ëˆ¾S™W•YÔ•’Mé‚ğ‚òüM°âòeÉ«“aâş#Îøï±˜ú³§Cûœ4%ìS_õÔòc“%OÚV~hö²Ì.Š*ç‘“R*2ÓQ4×I.g¡‘_)zióÉ;Ê»üs&É?š‚õg©N55hİYsò¦£QT’æ¡m‰ğE¯CESÓŞ¸É­÷[#Éã®)ü«Œü€›ù=(%RKö¥áèyÜç™ëÃàèÊ$í)%»FWğş­)<Kœ$ŞÒ]\rñÛ,ûyœ+—Õ¯Ä°§†¥*µÍ…8İ·éÔúO³	Y=ãs:q–:jêuJûÿ\0æ4_örÉ##Îs%R{aéÍ­Û|ßÜwG\'\'%Ş‹ø­ÛóôıqXÿ\0îWÔüKåpV€è\0\0\0\08ßì•~£/±Ùj}VW/Iß3æßÚêøo\n±øúxYÖ§B5*%*µ%ek½ı½ş[WÔÈá\\MeO‰Ã|ª•9]Ñ½µø/´óìz6ôÜ¸Ò|«…(`rõÜágQh‹_Å>µ„z/C˜â[Ue©4÷M5o#·ÎX\Z9Ç=p«›VŠxl¤­CÁo²Åêqî0ÇşQân+L\"êÖ›j7ñ÷{ÈÆvÏX9|’¯fúu;öAÃyS‘Ñ­Œ…*÷¥:ø¦§m¹+ì–ü‘óö_5TeÑ;½Î÷ÂÒ«T§ˆÌğï\r…Rı5³–•-OÉóHÑ^O]Vtjp„­§òEß/bèx=¢PáŠÜ+‰ù<²Øb#é::Tœº­¼®o’ÂÑ:•7ëi½¤×áêYV\'\ZX™QÕJJÚ|Öéc,.ìp\Z‰÷ş<ü<ˆİÃû•U²›³êüWÜRšrWf×êè¾ßUdJÙ6\r>” ¿ô£4ÄÉ×êÌ-¿s‚2ÎkíÉ}‚kÙ`‰òb!¨d5¢ûHÎiêJ_&¦’ow¼´ÌeVÅĞ•hÆ§{J¦—Ñh±Ãá§Ç<IŠÅwª®Œ)R¨ã(-Û’~\'5âl~#˜VÄTu*\'k”®ìíe¿ŸŞ,òéÕ†=íè*Ğš¼%©5}™L¥cZ¥ˆxÊKÉ”3]jÕe¡ı$®EÃ­6ß§^ìRWy•üiÿ\0î5Ş>ß:Ì#á9ş%îÉsYåß/Å5ß`£wÒNó§ÎÒKªñ<î5Ì°¸œ×‰£8Ô£:ÆqßRñ\'+¼|Yc,äµÖxÏƒ2¯<4>\'í³0Å®$9Ôz)­0++\'ø;³,uwåï=]Õ(Ò©n’Ktjİ¸åøjØjçMwª3ZÒètrIá+.¹k—ä9¼¨ã)bk+ÇV5ñIŞÆgñÎ+ˆñ®KU*)Ú+ßJñõó5\Z²Ó{;.¬Úû+àÚ¼]Ÿ%^-`0ÍO6Ÿ„#æúù\\ËÇÊôèÊÌw•køLZ5êÒ¨¨µìJiÚ[ïcÈ¯+M¦­äw~ÚpTpØl(S(R¦á¥´bš²8Fd´âg}+‘72ÕD»ÇlwQ&Fµgí%}®È´\\¯½öW)RrR4—‘}+µÜ|©ÓÄJ4jw‘úMZæ?Ê­~E‰Íé³[”kvJDÌb›z1U Ş‰Yug­–qfq—8¼e‰¥¥ÙiªÖÆ»NNŞEJW’³™]…ûDÌ*qVWŠÏ±¸ŠøzİìÒi¯ÄïT¸Ã‡ëQS†o„jI?ë-cå.…*¹İ\nx­è½N¢òQoğ=*J…5>Dnãè¼s“İ}˜Ğá|Ö®#JqµÛ2QøI\Z®y’ğ$05êQÌ§\ZÑ§)SPÄÎ[Ûm·¾ç)†\"z/©§rœV&J‹i¶ÚúF{İLã“Õgå¹ewaòÌ>\"¥Z«Â›ª¢Óq|İ¼·:ŸğI•ğ~&xl=Gˆ‚šÒ¨Ü›¿‡.Wèkİ’ãğ™`ªa°_&Œpµ!yIÉÍÙ7/¼é¦_ú‰·ğ§ö£I„ñW“+å##†ò·—a»ŒT¢œ£M]»o¹í¨¨FË’è¶-`œ%%á¾âõF£ß$o„˜ã·6vÚñøŠpÀÒ†c*œpó]ãX6•¾ÖŒì7\rÁÃ†«\Z”f¯§± vÚWC.Åeôbñ&œjÑLäâüÖ?RÇ×†9J4T´¥wv¾ó/?ºo8nXöúˆ8ã%É£(ÔÄªÕ¢·§Iêk×ÀÔiöÃc¿HËÜpÏuiûI~\'5áŞâ.(ª¾C„«*\rï^mÂ’ñİ­ı×=ş%ìÃ2É)a¥TsÖz)ÁÅ©[’ç}½¹eî¯8ø§_·náüßåÔq¸E>æª¼u­/ì=™p=Éêåß”êÔ©†tcJSqÑvİ¥æ¬t¨s5âËÊ9óÇW¥ÀÀfÌØØØ9ÑjR~ùË´ÎÍ²Ì]ln\"„aB¥W¦P®m³éI5cVãşş”à#†&8wßSWû¶99°İòÇÛ~OÛ‚ğW\neål²øSÅâ±Li{PÛ¾§ãkrêm¶ğ_’ä*à1Øÿ\0fŠõûÅenWåÌö²^Ã)àsŒ./›ü¢*ªr¥\ZNìî•õx™½½d˜\'Âğ­\nzgMJ)ênÊËne,¾=¶Æã—.:|ŠZkÉyóñ1ÛW³äefqQÅTIşÓ1Ó¨Ã“íU×Kvü‘nêÖ+ªù·ÖÅ­OÀ»%^¥Iò-©t|ŠãÊèêpË¶kDú+ı\Z|GY_“?Š>rá÷lÒ‡œ—K³èö}šÃq=Eˆ}×èÒiOkò0Ïíı+¾7°4*í3\'É£J+¨¶üÛZoêy½œvƒŠâÎ$­BXxÃ\nNKNú]úšŞY½2œYkm¿Œ¿ìö#ê?óÖg+bæ¼Ï¢8¹~¡Å}Sç\\Ú_¥ËÔâùØëø¿GdìK~“¿:òø#zf‡Ø|¯ÂÕ…wğFøÍğú¹9>Ì. ÿ\0…Wú¬ùÒv\\]7á&¢¸Û)®ÿ\0„ù¾»k‹&ÿ\0ŒÇäßÍİğ½>†àç|¦	¦=Û	Qÿ\0	âp$õå1O¢Lö³ìu~«6áÿ\0éÜœ¿Ûÿ\0·ÎœY&øÁ¿	~\'hìİ·”ÇÑcŠcşöËë¯‰Ù»7ºÊ×¢8ø¿²;şGôÖÖ¹ûÉ|™Ÿ¼—É»Éjı¤íÃõ½Àù«Š+¨PÄ8üë3é>Òÿ\0ìõoCæ*“ù=u/ÏÊÊïâş§6ÄK^1»ógĞ_ìãİÇ0R¶ñ…î|÷7ú[¿ÒgkìK0†ŠÄÔ©(Ñòv\\¶4ù3ñŠğû±şÒMÃ6]q‹Ò½EB6ÁI¿Õí0ùv{V¤f§½¯Òç—E~+5}_§ñÂ1ä²İFÚr!Fü„–û—©RêîÍ«%tp‘•=n¬Wğ®fE5óWºÆNS„¡Z­«OM÷æmØ‚„è\'ª’n×jìË<äöéÃ‡ÍÀY%lÓ2¤©A¶ä¬’½Ï¬»=áèäD)¹7VqNişËğ4Ãøà•<ËKDüÚky?°Á%d¹yyÔógã<\"´J ”i©%2&±S©6![IE‰&ÄÈƒ¡‘$WÀ±_Qœ7ÿ\0;3¸ñgüõŒ“i|³òw|¢Ü·fÏÁô¸/4j.^ÕÍ¯€Z–6•ü£¢z®ÏGæ¢áE˜½\nÎì~¯*ûSSæ?Cƒv›+qV+ëæ§ÌgíIÿ\0½x¯¬cÉíÓñ}Ö§YûW\\‹\r;ßÄ¼ı¢Ü¢¤üúÆté¨¢£­ÜØxK¼ü§FTà¤ã4Ò}w<\njÓ´¿é›ER8yR­N¼(ÕUVóåô™9Î‰]Û!ÂÊ†¼¯-uë{u$üz/qé\\åT»AÇá1\n—ÊğXØÛúÈÒi?ò¿µô{UÃÆ6Äa¯%ÍÒ¨¬şÔsøØåË‡;vè×²&.êş&ƒ•ö,ß\Zèa°ĞŒ&šµv¶ô7ŒrÃÓsùÖWõ-ç…ÂvÈD¢”Tef¨†/±&ÑCœö½ı£	õgñGFg8í{ûVêKâŒù¾­ş?İæğüF—¤uXVrwÌi}tux{0ßÀ§º×åûşĞıuƒk¥9ÿ\0˜å³—TuîŞ²äó|å;¹EÅ+rZ›4¾á\Zy¦yGZ«:y¤1Ö;kŒ—Z““}J%;í#¯c» ”©á³)*ìiC¼¤š³î÷ó9‡äX®Ìja13Œ­)(N<¦“i¿µ2frİ+$¾\\®Pê>¦ÍÀ<9‡â,ŞUÓ…JŠ-ÇšGFÁö-“ÔÄMÏ3Ä<4ªºpOF¦Òß~\\î.r&É=×m>eQ»·µñ§åY7WË²Ìu\\E\Z\n:§RÍ©şÔv^†Op~:Î(`ñ8©Ó…I;Ê\Zn¶o¯ óˆğšÜj1’Q%;ìW=Êğx,ç†Áb\\5*²…*×œS·EêcON\n_œ»KnEñ»WZa¶D_‰”UíĞ\\ËAvİu\'›ºè\"’İ»2â‹¶åä¤¹²´›ßrWBíŞI¾L¶[nN®Œ˜aÓH»K®IC{»X¾“¦\ZWjåø}æM<×¥Çu{ï×ÀÜúq™ÒxYT¡ƒ¾&q7C¾ñÕ¾Ş‹qÆvF™íbı8³uÅöcšàğU±y~š0s•«K{]¶¶5šq¥SLiawjÉE¶çÿ\0Él.9zLÕQE~m#.”¹ì_¥”b*`V&=Übñ1Ã$ï¼ä¯ö$·=Ì³‚ñ¸ì|E\ZÔ´Ğ†¹E¶›’çæ­¿¸½¸ÏiŞ½µû—èFó‹NÓçâÖç±ˆá<EáÊiNxªï¢¢ÒƒÚÍûšeŒ^Où=Ój“ªÖ&TêFœ^ê;6¥ãîD~7Òem}š×ï3ªrë+ßËgttş[§§†ËsZ•«ÓÄSŠœ¥NS’Ú/mÒ\\ı6:n]£§ŞPSÑ}¥(µ«Ìâæ¹şDí•ÔL´çsşÖİª`má?ı¦“ƒ²®™ºv¸­_%ôf¿Êi8K÷ñô:pŸ…wq}Ço“Cê¯ªv´¯Ãô—øëàÍ«	ıŸÕ_Tíi»”ß…xü$rYÜsqÿ\0c“Ô»“W-?ºŒ´İÙµÛíÈv|Ènïr›§»|ŠX…:zÄwÙs6nH¢ê÷êÑQUî÷[ßbî‹#äµdÜiÕ{(Ëø—Tù{ÏS’²vf×Àø\\§„Ì)ç5hÑ‹„T\'9$àî÷LÏ$[ÓØài¿ş£cL*ÁÔqº	í	m{y>hÔ»QÏ)äycR^ÕiVš§;ó3òn\"Ãğ÷â3,ãE\Zê\'ˆ‹ÕßZ)E/7dq;â\n¼EÄX¼Æ¢Ğ«Õ”ãNïØWv_gŞ0ãò¬²¾7ÿ\0O1Ç×Çc\'^¼ÜêMŞM‘–âÖNµœ’–é¯wtÊVò½ÎùŒ\\²Û©d™ŞUR†¥‹£k½r³^FoÄX%VóÅÆºÍ\r×½œïæÙÜ—~—ßÀßù:ÒŞæ}Äu³EİS„hP‹Ú4ÿ\0iø³#…+é‹¥¹©]«óF½N:\"÷³ó6şË¸WÄÜO†Áà”•5%,EXİ*tï¾ş›Ë)kã7ÓeÊ©ü¢´(ĞÂÕ©Z´­RÜß‘¹ö}Á3Íhâ1y½z´pt‹„c¦S’»jûì¯¹¿ñoPÅpÖ’F\\^W.û(+i’éèù36Ï*¾ÊñÙ+\r<\'äÓ…Z2´Ô~Ë÷6îa—Ê·¨ÒHÆì-ƒgˆŠ²ÅâªT›Ù\'·©Ğí²5şÎ° à¬«\rk8áã\'ÿ\0ŠòüML­½³Îï%0ß7á¾ö^EŠ_ÚjáøÑ®”H\0¸\0\0\0\0q®ØJ¿U—‹8ßì•oôY\\½TÏo™³w«U®¥ŞXw˜ÒXê²£†ucŞÔ‡8Ç«EœŞß+¨¼ÌÁaóŞˆ\r9~v¤’ŠWÓĞı6Ìï7È°óÆÇ.+:²FİJóå¡7½®®ß©Íó|L1y–#N”(F¤å%J\nÑü—¡¾v“…¥\'N¥,hĞxd°p£ÉA=åQy«Ùÿ\0Ìç5_¶ö]-kµaŒí¥Ìı7¿ŠñFıÙeWœñLpy/:jTáò‰FòI[•š²û.Õ<L`šO’¿ö:7pkÂœW€ÇæjœpÑª£ŞRzÓºµ×\\úØÓÆ~Õ¾«ª>ËÔWö§ëŠª÷ÿ\0Ìi\\sÙ¼ñµkâ²ÜJ¥IRr”+ÎSr{ŞÍİı§M‹RIßÌÇÎ?áX¯äÏàÉÔÇ69å+å\ZÉ©;ó¿-ì¶E¸?jÅüÁş‘%ü_jÜ×ş®—ÖY_ü;ü¨ü”XË’X\Z	~î+îEörßnKí(¦§Ì|ıÄ¢+&éÉE¨É­›W³3¯Óµ|V½yeô§7\ZÚœm>í&¢ïââ™­Óîã,u)Êrt÷åjW·—-SŒ²Xâ8§ˆ+c±º>KN5c(ÂÊr–”£ÏcZÁÆ\n¢r¤¡*Íßwu~…äéÛ£—Ñ”Ô¢­ÏÙ¿3ÊÆáşO?gV—ÊësßšÛŞYÄ¤é6ô½¿k—¼…ôÂá<ß0ÊsªòÊoQKû;»[¦´µï.ãhfKˆËñw‡nZœ7J“Nö÷\\ò³)ÕËó\'W8Ñœgª”¬¢Óæ¼®‰†yÇæJXœUJ“¯\'®Sw»-0Ú²ê¾ì£	K	ÀYZ£»Ú*s{ûR}O¶Æ–[†õ—àsí9ÈrÚwu…¯C\rÔãº^£Œ»R¯Ät)S«ƒ¡IS¿Ío~^eó»ÇL0ÂÌü«_§”Ï™S¡Nz!Zj\n^v>šá^ÁpÎOK.Ë £NÊVŞ¤Ÿ9?3æL§ˆhÒÌhV¯Â¤e&·²NìúW\'âü‹9„%—æ˜Z_³Ş%/°pş7´óîÙ¦¥Û¢_\"Â¾»üQóşm¾\"«ní=¾Ã¾vï4°˜]ùÆ[{ÑóŞ:jU%gÉ½ŠY¼ªøuÅrå«\r“š„áKoâ¼’·Şysv›èïc×Ê¨*¸Ò¤¯zXxÉ[u½H®}9Jj5$ä¯x»#|±ü\"·Ú¬Öt\\éweJ*_ZŞ×à`ÊmGrº”å-¹øú…E5í;ëJè§).¥å7±M<<d¶l¸°êÖRØ„È÷84ëñ[Jª¼g]BŞObh5J„oh¤———Üy¹Mz¸Ê†&—Ï¥;Åß©èQ¥Z4#RIém¨Ï{JÜí÷Ê4ÃÛ6œïÈ»9\'FWvØÄ„¬¹Ø­UŞQkf¶Ü¬‹ÖıØªT{AÀS‹ö\Z£çÕ«ş\'Pír¬¨ğ}WMï*Š?ë²¬$0œeÕ×>ó•G$´>[µêôip…XÕœêGi>{ï÷\Zîx×6Ù\'Ô•|›	V£¼ªQ„›ñn)”q.3ä&+•İ:m¯^Kï5·Ú?eø(GòŒj8EGM¹YÛ—#ÀÍ{kÊb<>­x½¯RI\'î-ç.\ZRqåå½9~s€Äæ±øÈû4ğ²¦§\Z©=mÙ¥×ÍC…{4É2œ6Yœ×§WRqŒëSÄYÂ:¢¬Ôl¾k±ÊxÏ‹±E˜ÕÄI÷}âŠÑOh¤¹.[—*öÄUpKW2«*\n\n\nJ>ÊÛšFS#§=å©éõÂŒ)F1‚ä£²±äqJo”ÚN?¥-×ÕfµØUÏxzÇã©WÅRr§İ§í¨Ç“k­ïÏÈÙ¸¡Û•ïoÓ#şVk•Ş_ôğ)ñz9Î*©JrÅT­\Zº§(ipm§ky›ÔêİMÙæyÇ\ZÔÎëá?F—x¨I¤Ôeu·¹?¼ë1çãæOé<Ú—¥Eº×T¤Öí+¯Rãä[Ä;Q›şm—R±›»Ií?ËóJ˜z9xG–˜KJ_q ÕãŞ u5~TÅıfgö³-\\AWÖæ;øœxc=×.±½7œ·µ®+ÀÑ*YÅuMn¢ìş)ö•Ÿg˜XÑÌ1Õ+ÁrM«/¸Ô›¾Æ6%½6F³XLµÛ¼õMÉó¹mÙ¶UR-õÜ¶•æ±VÛÚíUo¸µ¿?õuñü)m· ‚Éê²(m7±r”%9Y=C\'.©İbcQ6œwMx›ï	~[â¬Ú†,£W]AÚœ$£xóm¶Òèh¸JJU[³n×>ÿ\0fÌ…ĞÌp™Ä*Sî§ŞRĞ¾uÔy³ôßz«¼ÙÆcŸqJ¼Iƒ©…Àá¥íáäß·%ûÆŞ+c¹eY>_•]eØ,>;)w4Ôux^ÜÌõ·\'‘¦rvÏ.K—O‹¿à8©ø:ækô¹?}Å°ÕâW„>rÍİ±sõ8şGö»~/Ò»\'aÏıÖ©ÿ\0xo¨çİ…¶øf½ÿ\0ü‡şTtL=99>Õçñ3¶Mˆú§ÎsŠŸ·üGĞüTÒÉ+_èşÏ´lø‘·Ö_‰ÏÏw•w|9ø»¿FÙT¢û‘íf[`ªıVy\\¦›]Rø#ÔÍ?°Vú¬éâşšãåşçÎüG%ı,•ş‘Ùû9’yW¹|-Ä»ñl—ñ¿‰Ú;8KòWØ¾ã‹ïß\'ú›[äPêElÚ¸¬íNM>‡ãî&Å`39Ó¡Vq[ò“]OC—›øëƒ‡‡ù?mû´Ú°Õm¤ŞÖ>bâ¿o[Kñ6<Û?ÆcbÕJõf­ûRoñ5\\óû%V÷Û©Í7–{®¿†\Zs¬L­]¿3ÑÃq+—K	‡–˜Mû^g›ŒW¯+r¹ÎıK;pùYW*Ô•I¹M¶ÙwÛ„–ílc$Œ¼5-tg(ŞéîMšFÓJœS¼·eU*iWl±)8İu,ÊM½ù‘£lªX‰F¢k£Øê]’bV/5ÃKûÈ©/e«ís’Á»«›¿fY„ğùŒ#öw2åÇxº~6_–ŸlàŸwYY-­±”x<\r–?‡°Õªo-6oÄ÷¢c‡¦ÍeNxªQ$\"M\"¡(„Ix$‰.>DùäñıŸÅıFp<Æ§çd¼ÙŞøÃşÏbÿ\0–ÏŸ±¯óÓß«9y\'äîøÿ\0E•-ù›g\0ÊØê[õ4×/jÏ¡·ğ·‡›HÇ9Ó¢z®áAşj/È¹rÕ —rçL¿‹Ê¾ÔÏæ?Cv£\\W‹úìï“ù¬àİ¦µı+ÅÛé³¬òu|ou§¸h–üŠdüÚ^šæÑ5Í%ÌÓ\Zè©¤Ó¾¦ıæU:u\'8|ÎLÃÃ_U¼Íãƒrúq”£R*pRMÃÄß5²FŸFt£Y:Îr¦ù·ÏâSF•ZõT(­WwV}.w˜ğâ«ÔÄUÀÚR“Ú”b—…—¡N?€²%ˆ£<>átŞêÚ½Ln]úg9qŞ´æ|G0ÀæÔ\'OZSŒ®£¥½^gpÉ±?+ÁRªã¥É]Çeø—aéÒ¡\ZJòTãdå»±“†£\nQÓN**÷±»¬y¹f}/@&V	æM®ŠJ1{š3¨Õô¦Í%ˆ‹·ÚÇ=íiEâ°—é	|QêO0ÊöÃËo	£Qãö9æ&—wFT•(i³’•úøï”tğqg[«œùF“Oö‘ÕãóNSÁWYoÛGUÍ#†jÕ¾_Ú9OoÔÜñ9Å]Ó¤åÿ\0¨ğ;;—{åõ›[´®ıM³¶h)ã°ª\\»§ñg:ÉóXä¸oo“â9ys3ÏÛnëZsE·9R~—ÕçşÛ¿íUù:Ëÿ\0úÉş\'CÌ»PÂ|²£N4Şõ»R»éær®ÒóoÊøøc#OºLEv İìµøØ®3y2ãÆÏk|“ãs|u:Ié×%ü.u*ı”cÓ£B†9:’z£İ5¦+œ¾vıCWì*q†sEÊÛ6Û}™Ş²åß\'‰’iÍZ	ôın^~yX·/.\\rx¾eí«pÆpèË,R”c=zv{rßÀÂáì–XÜÎ¦?äğŸÎ«\nrŸKEs},t.ßjÂ<L”®ï‡ŠIâ5şÌaOa«â«BŠŒµk¨ÒP²¿ü½âå®—–\\|¯¶£Ê1Xm\\6*3¥V”ô8MY§éöz\\ÇÄa)hSS’çeÈÙ¸ëK4âì}l$¯Bu[SÒÖ¥äş\'‰V1§EÙm}¯ÎŞf¸[®Ô¸şŞcO—&U\nZ¢İùIÛq\'´=MR£È¯OˆNë¥Ê¢¯²Eá¤ÁZ{}¦J„S…Ì¦ºz›æUJê¢Œº‰‘›IÁ¯£¹íZ›k”‘EiòM?í(é«ÎÍr-\"İ2i7ò©É&½¦ìu|*¦_˜Ó©R\'—à0ªM·èJqWß›Š]z\\åz15_ñËâ{ù‡â1y\nËpÒœgˆ“*³i9¾QŒ|’KŞgÉÇä›7§ñn ¯,·+¼pqŸµ8½ë´ı6‰8ÎÂpî#\'%Ê¥jµ•LL“zcQö~ÆW’ä•xw&†y‰ƒ«MÒ=7t£5hÎç£Ä°y‚£ŒÇwŒ2åSITm_\\U¤×;ß—B1ëñ‘¹:V¦²º4ÔáÅâ)8»©Y¸E}Ç]Èğ1Àe±¡(ÇSnul¶”¤Û—úã³Ün1šXV§ƒ¼Ôã}3iÙ[Ësª\'{{®Ñ^k7¨Ë›/Ó›æ\n­.&Ãå×²¡ŠR„ŸÊ?vŸ°öğÜ)KŸãÖ.¤ªRMN-/Ú“r{rû «B¯áñÊW§O\ZqW¾‹9?¾ŞãpÊãSMZõ ã*õô½š’W÷.^eîñ›‰Ë+ŒšcáxS+¡^5\'VQİ)Ù¯²Ç¸’Š²V]m2¥~¦ywX[oµh©.L­ÅZĞ{\\ÚXJŸûMíˆ‰½v¼¯<\r¹Ú§şÓCÃÛ¾Vğ:ğÇş7oÑÜğm|––ÿ\0³ªöµ+pÔ7µëÇá#hÂ?Ğé/ğãğ5N×¸j?(ÂGŸÿ\0g6w&­¼¼KRåæUVÚüKM¦Î;/´6Ê\'%ï&L·&¯¹B5¸ódj¶ı:	$¥âŠTU÷(•jM4ús=ÎÁºøùâj`ãÂ`áŞâ)Ku£“²ñ\\ıÇ‡‡¥®­¯d·¹áâøÏ3áüfc…Êq.”1Õ\Z¯JwÉ½×>…f>Jå–¢ßk9Ö1â|L2eĞ’PŒSIµwn›·oFi_ÑeÚ³zŞş-¦Ë»¿S¯u™]­É^OÀ¢Qr{-~BÖÚO™yéiEòêW§Ô®TÚW+¡JU$£İ·dOP‘{†«Š­\ZTa*•*IF0‡Î“{$¼Ï®{àÏèg	ÃˆŒ>]‰—{ˆq\\¬£è¿hƒöUS,«GˆxŠœEµa0“ç\r¾|¼÷Ù¶;Y^ïs‹›—Êé{ÔÔTşkô4nÚë7Ã˜L=çÇR¦—’wü\råò4.6ıcÚWå‹•S8ı[(ü&òo*Q¡‡§J\nÑ„Tb¼—#\'¡n<íÊÅH¶ûR÷v¢‡õõ¼š_r2|7Ïªÿ\0ğEó|j* B$Ò \0\0\0‘gıš¯ÕeçÈ³‹şËWê¿z©ãæ\\åş›Së­*.J<š3s†2§Ö<º­%c…èVÔ¸ÿ\0C!_CF”ªBÕq	·RªğmòØÓqIÊVQM´’éä\'+¤ÓæZb¢ºUeJz¢÷µ—ào¸Ö³\nùJÁVÀà¦´F7w»·\'ÏÇ<Ô—\"[–ÖÑÓ¼vUÇøŞ\"Ì!—c©Ğ¼(¹ª©¸ÊM[§Wg÷9_ªq_ÉŸÁœ±jÅqFšR”*B”çN¥ì¢Õ–ëªw³ògkY¤3—´b(Sœ+Ò|á+?¹óEk,ñÖQó`í‰©êX†Í\"î=§ˆüK4Zub—ÒFÿ\0¦¹{}o—b¡ü¸ü”cà•°´W„û‘|ä¾Ü·ÚH—Íd®DKæ²G;ËğØlwi™öB©JÂqÔ·äh4Ì¨(Å|J0JÖŠï$Ó›a2¾Öó‡¯N…*”Ó×QÙ{)6¾óFÎ³JXœçVU#|M§¹?nL´•Û‡¸Å›I¿S†ÃO1ÅÑÁÑTZÓQŒj»Eï}ü¶1±˜•ãŞ×m—¸*ªş“Ñ­Q¹*4êÕ~Vƒ±>?µëZÏ\"èãEw~Í£v“»m/ÃÈÁÀJÙ…/)ójÊ½z•µ{Sw·âaa%%‹¦ÖÏQ®,ªšÕy+óÜ´ªo³èMtİYz”Y¤ÑkW}¶.SÅÔ¦ï	XÅrğåÔ‡³¿B¾&ôö¨çì]Jtëb*Ô„v´äİ—‘‡^Ÿ·+um-úQÄ:sN<×\"*ã*T¾«[Uùu+ãMíê`±Up,Æ‹Š_+ÃÆòWkZ•×şSÉrp®¥¼eÏÁìRêIó°V|İ.[šAR¤ªUs¨ı©6Ûñó!M4%f­µö)QVH®®Ó~èKKİ«˜‘[Ø¸¢Şë›#FÙ=êNé½·væzØ,Ò£Êã—NÒ¥N««­âÚIÛ×fıœZi«\\ÌÂ+5©=ÕÕıJå:^W ¤âO_\'¹n-\\—4•öÛÄ‰^ö;ˆñt¨dõ°]\n˜L£N­)Úv¼¯¹åc³Ü~:/åxšµ¥ÏTäİÌ¬û§ƒÉŞ\n¢ùE\\eˆ…ùNîßq¯â5Ó©(J×O{=¯äk8ÿ\0\"İE÷^J;Éú§QŞÎïÏÀ²¥«Ó©WÙ‘¥%µwZ”¹•6“,FÎEZ´ÊÏ¦÷- ê€aqTø¢9•J­*rx|Daû*q¼goX´v,j2ÊÓnÿ\0,‚OÇfqOözÍe†âê˜\rv§£*iøJ;§ñ:?h\\9ÆVËİ<óN5+Â†•©»;ÉZÛ™Û®”Ê~q=Œâ!SS›£Z´¬º&â—Á\ZGg<Ì1Jc[ªÒ¥V	oyo·ınnÈÛ‹Ó.[.]%˜øçlgá	|†bfßğ¼Wògğe²úÕ\'·È¨ÔÕÕ·VŸÜiuµÍ»´¹ß=­ÖZ™©s\\ìsqúvsı˜ó¾–üK‡xleM&ŞÜÌ\\MÔvv5ZÅòeùÖ%´åÌ‹^NÅÕ]¨îôÛÌ¢×QBŸ6\\ª¥ŞÉ/#\'-ÁJ«•Fì×%â: õ´ß\'fd9B’J<Ï[“÷w©Uê6xÕÔ~Q5\rãwg~…|¶Öñ\\fêæ¥±oÄïìİ_»â:åZÔçE¸Á½¯ír>Ã-U¢¯Õoàw¯ösŠŸà£RÔpÍÅûå¹LıÅ°ı¾”æ÷û\rsˆ8ß+Èñ2¡ïu.zcsbisõgí®¢YÌÚvÙÏÉ–x£ãñã³&ÍÄ§d¸¼ªµ2®ç8Ù\'—Äã˜ìW{ˆ”×$úô0{çúÜ£¼»õ9l¹_*ëÇÇ	¨éİ™ö€á¬¦®‡¯)º®JTíf¬—àn;UÊq5#J41	ÍéW·S‚F¥¾kØÍÊª¿—Rçó‘;ª^,ouôŸ»duŸğŸ?a¥şñ¿)~\'âı²*ßSğ>|¥ÿ\0hš—I¿‰—$İ­>\'ÕôËVQOÁ®fÿ\0A©õYâğü\Z\rÿ\0ÖÈõ³wúº·ÔfüykŠÇ\'$ÿ\0•ó·ßúQ7ü‰Ùû4•òÅèŸÄãYëRâi.ºßÄìší–/DsáÖQİò?ª¶ÊßÔËĞùãµŞy?SèJïóô>zí)©gµW[›ó]äåø«PŸ²›•íäy¼SŸeø²X‚¡S9j–%Mû\nß5.^¬ÏÌ”>IW¼¨©­Ò}NYšUrÅMjm_©ÕÁŒÒÜ¼—N-Q(¤œ·±äÉY™.²îc¨³-ıæ®L»íL´!ÁS­‘c«MÚTåNËÅ{G…JšjÜÏo)Å:9f2íŞ8¿²äeş&c·ƒ[j’ğ¹myGÂ¹–/ êÔŸ%É$bñcr\\°Øøi©Ó^h™”ô^<§o-^èÛ»6¤¥šS¿âj+v®m=ŸÕîó\ZkÏ¡^OM8>ïµ8OÃxHQm§MIİõ=Ôk=b#…ğs•¾bŞ[~É#Eyf³ªÑ$&™(ÖFTD€‘}$Z!6\0$0WÆ?öwü¶|ñšùEM>,úÅıF|ïéß«9ìüÜÖÇ½æ¹§g¼m+®¦—å3qìöÿ\0/§¿^^óVøú®çš½	)ƒöQ?ê^İG™ûDù3ƒv•gÅ8½?MüNó>Là½£¿÷£üÇñ9íİtüou«Oe±jR²eugg±‹Z´ ı¦kttÉÀ-sµ¹õ:[—Ç–`qPÓÎ[´öKÌäØL}\ZU5E»Üß!ÇùuL»	…ù5e:7Õ74µ;$oçã¿ñÙ²i÷™})ÚÚ£rÇÔ,4\'\nñ õ[Sù¯ÔÒ²ÎÕrl.\n)ÑÄê§ÅÛM¯oS?íW#Ç`e‡x\\eîâáëâgŞNYÇ—ôİ2Lf&y¤iU9Ñ7(Jû›Sd=£e8LÃ½Tqj”`ã¦sŒü|>Ãaÿ\0êæKoêq_úÔ¿.·Òyx²¹u\0\Zÿ\0V2UÎ–*ßøÔÅ«ÚæUtáğ’qñK?³şf;g8s¿§H,fRQÀÖmÙ(?äğÇ`³è~ÜjE^P}S4ÿ\0‡×ş\\¾§jxÜn«Ï›ßš½ËR^?h©?i»û¾Ò‹¶ìºøôôç¨Ø¸2ÑÌ©}tu8|Ôr·å\ZVúhê±ù¨Ï«åûqÚçüC\rü¯Åœ?†ŠÕ¿Ä§¯TÎ³Úëıe‡_á~,å\\IêS’ç%8?KÙ·õ¼ÌEVèQŸUMÅû¦aqµaèZWüıgo©Ê«pŒ4›Šòi¡k;•ğtwÛ½©¿#OÙ•Û}ì?±Y­8OæËçz-Ï 1X˜a(F1†©µ¦5ÎO¢>yìW^qJ8Zq©9I(¦íyÜ°ÿ\0)©R_&juÚµLT×±á‚ëğñ3ò¸ÚÏäMéÇ{cùE.•L}HV«*ptáı\\~üË™å”x‹T)T¦û¹«Å+>õÌÌío-§â‰>ò­j“¥J¥ij“‚òäx\\7Å±áìÂ&•8W=Ô[²½­¿ÚF®Q´ï\rEÎÓ£İqÆhöŠï›¿“JÆ¡‹ÄªÌW²Œ!Í±9ösˆÇ×Ó®´Üš‚j1òG›8¸³£	dí•¾¡{½ËÑrkL#¦+©n’´Œ„Ó^}\ra4®œÊã³½ìĞ¶ì%½Íbœ £BŸ[«–eU^.¸®î–—Î	Úå[ï‰ÇÚì˜¤½.^WS¿å¸¥eb¸§+x\ZH2*Z¥y¯;ı§Gá†…†))ã±êòK~â…““^nÖ÷œïÙó|—Ú8n·êº™Ş.ZèÂ`ùªqI$¾´·÷™óÛ\"3ÜŒüf†e‹X\ZÔã,*Ui¿›)5hÆŞ	oöû–KÅ_“1çˆÃÓ‹\n9µ%´/Ñø¿SwÌ1µr\\šr‚\\}HÊ´“wJOw\'ä¶Iuäkyv_Œ¥…¥šfsœ±\n”ñt¢ö”4Ê\r¶üd›ôF\\;«†çoO„0°Ë8®¶\Zr¾\"¦\n2šÙ(Î÷qJÜ’[xîlşa;§…ƒŸ‰mF4Õå§­¼ß%êj8<Î‚Ï3\\Ã\r%^ºÅÃ¹ŠwN\n6“ÕÒÓ»ñFï‚Áé¨ñUôÔÅM$çm¢ºF>[ûÉÊwµsêîµLvTòìvUª£ÓSæ¨«i¥w¼ßŸ©½Y6k<_¶k“/ñßÆ&Ñš_/Jr]ã¬Åh‡’¼Jx¨”ÉßÄ§fO‘VƒÚßÏÀxÚ§şÓE ãßFüÍëµÕ¾~SùMÿ\0<½¼qÿ\0Š»8¾ç„·É)}Hü\rOµÛ®£àñ+á#hÂÍ,ºÓ_›vµÅ˜lF¬Ÿ\rNN®²•J­¤®•¬—^g™6æçÂ_6‹ZIu±*±rµÌZÕœ¤İù–ÜÙÓ”éÕolÊ•#{\\¶å~»’•ÑU*šv“²èeb6Éoª!ŞŞ¥¸Ï¥Ó]u%k??={Y~…L®¾\"Zœá«KO•“±Ï8Ç	,6ˆKæIFi¾·Š¹Ğ2(7’æ5[Ù-÷7Ìòxßßpş6²öç‡«kÙê[ı£¬´®sqÎkYóe™ìŒšÓr‚O{rô-YTJû[©×YuXÉ5v‹´í5g·”d¦ïºñ±\n+Å—B½Qq³–û[™Úÿ\0Ù¿€°¹…WÄy§wYaê÷t0ït§dõ¿Kìqz[5äùËı™3¹G4Æe¼¡^—{á(ó0ùğk‡ªîÑwI¦Ùq7b„öOÈ›ìyÊş•Úé£AÊå.ÚsLG8eøHQ‹ğnÍüY½·h7ÈĞû_-ÆqpÕşY˜ÍB_Ãÿ\0ÕÅl}ZèK™/‘%—Æ³ZÂr›ÿ\0_!ø=é_ÆR{/ô6Å\n‰D P`I&kÜWÅx–5(V×:ÎP‚å¶ÆÅ?šÍ\'´œ‡RÈğô/EI÷’©g%eukÏziÅ1¹~N™ÕïkÊjÊü×¯ÿ\0QígĞÊÅFQ›SV}W§ÿ\0&YyØäuÕª“iù¯erª¯}™jNÛ7Ì´ToÈ§¼¾È‰=÷)SÒü–äèÛ£vZã\r3Mº¸j±J=]âv|ó*£«˜Ó”©ÖXj¨¢ıš«N×ô8ß`4ñâzÓÂáéV,=›©=\n	´®¶grÎòl[•“î\'²½¾k+“.KùGÉøßëİº2Œ2”ëB1MÉÉY.®åXæ¾Rß¡êğåÜk”Pı—Œ„¥èÿ\0oÓK{}GƒN8zJJÒPI¯\r¹‘msKÀª<ÎKíÍ½«\"V³¿ C,9ZXJ½µãaNL4(T•eR:¢–…Ízï8­O	Jt£J-¨ÁòißË¹C…X®Ö3¨Ê)ÁÒîÚ}uS·àr¬×\rŞfİÔ–Ñ½îù%µ0vcÿ\0ñcˆ…dåN„ehË£±]w‡–*¬_´èJš^»?¹²î`£\nqIm}¬aa!)e˜ìK[+F*ü™´\"¿ÏiZİ\n0´Û®¯%/W´\\ª·øú–éÁÊ¤Rı¦LŠ_jk¨¹¹ô“vH´×]ofz^öº-MÙ%e´¨•¬Ó-ÍÛ™[Wæ÷)šqŠ¿\"ºUn×)kh=¥¹\\Z\n¢)µ¹7M­%M}…2[lˆIãÔ”·õ)¬¬\"·¿€B¸ÓŠww%¨ÅìMÚ•¿eî\\„cw«Ÿ,+Y¯_ïwN*S×JÏ’^E—ìì¶DnÚgá¦åeÚ“Qƒ¿¡…v‹o«.Ô¼â÷·ŸMim²§…¡Wƒ¡\Zÿ\0$u)Ã½©]Ş0•åõO*mo~kf÷÷{öø•¦5åÔ0U\\V5KØÔ™&ıŸ³s4Àb²ÌUL&:“£^œ­8?Dÿ\0m¹®µ­%·R™JÛÇ©CW^%-Ë§ØWJíZ•åË»ùSñæ^‹§¢JqmşËğ	wó‡‘q.0R–šméW{¦¿q©Úo_ƒXºêº¡Zt÷Zn×O¼ætçi%{3ÑÃMÃ¥j‘š’~¡3	•Ziõq=> Äã#,-l\"…<=tÔÒjê\\¹;›Qó¾EÚ&&§`1ØØÓ&œû¬Exû=í\'µœ|¹ßÈú	^\"Œ*Rœg	«ÆQwMxŒ.®œü¸xİ²,íéÉñoÂŒşaçñœ2t’mªåè_?­Sqñ×h“O>¬ãÕ³V—Î6^>z³šİ/>¾ó[’Kàsñúu|³«56eŒK¼]Ù~«[øõ,âã§\rËçO§‚5s_Lo“;ÅJÑÕ½ÙE\Z¥Fœİ½«6F¼![J¢•¥¥mz—ªÚµ×RÈ³§¡:2¤\"ïi´—â^XÊY{M{u5àyµê=İŞ§+ó-b+J¬“©½•–Ö#ÇkKâö3\"\'İS¦©ß›½ÏV÷)’ß™;_q©=gröÈÂ%ŞÃë#¸ÿ\0³®;O`Ôä”c¥Öú¿Ôáø4»ë¤½çcì;\r‚©ÄÙB§Ztñ²ÄŞnî6Šßo[X§%“M8ÿ\0oª’²÷\'¶ù~¼¨¼ÿ\0Ôî“P›»µÓñG\ríÏÙÏ*3‘w#O‹5•sMIl™\nVvñ-·Ô¥KÄ5d©-^fvTï‹¥u¾¤yŠwµùÙcKNŞ\"‘ôÏ»dßğŸ?Ñiq¯ô™ß8âJ<?_Òßqóå\'úõÙï¨ç¿–Öø¿]>„à9\'’ÒK¢=Lçl¶·Õg‰ÙôÛÉiÜõ³ùÛ(ÄµôÇ-a§7$ÿ\0•óÖrÿ\0Ş)¿â;7frÕ•¯wÀã™¬TóéÍı3¯va/ÕöòDoV;9ûã­Â¿õ2ô>xí\ZòÎ§êş\'Ğ˜—ú=OªÏ¸òz³š¾¥íòÉÍñmC2§*¸J‘ƒµÓG-Í(w©Fi§}Ñ×*Óm;^ç=â¼£ò‰â%Á½š:ø¯éØµ«•Aj-Ê-;2í?f>×#¦¹WµÆ’^\'£ÃĞ–/©%´¤Nïn^&ãÙ–8ŒÂ-§}HÏ?ÇµáYÇÑ‡p¥¿\"«t”«VƒŒ$×$¿æhŸí)Âµ–2Y•*kº©í©E}§}áœ09.´Â	;xÛ™­v£•C6àüDo*Qmz˜_Ëmü·•Š¤­&Ÿ;çMG2¦Ÿ&í÷˜îá3\Zô¤­¦ob¼‚¯u§/4w{Å†#íÉ1Q¯Â˜]³tş?‰¹FG-ìêäu)7}-?ºßÓ£+$e\"üØşLˆ²äLxKrìd_L,\\*E	•t&E‰!\\\0\0C\"\\˜d6RÑâq¿ı›Å}Sç¬_õÒñ¹ô»pÎ+ê£çÜ[üä·Û¡Œî»ø?­a;»GÄÛ¸éÇSk•×ÄÔ“³6®—é´ïâŠòÎ›cê»½\'ì¯=Ê™Eh!^¬iÁÊm$•Ûf7-GûL·Là]¤KıêÆ/ñÄéyça0u0”\"Q|Ü´«œƒ‰ó™æÕñ2„`êMÉÆ-´Ÿ“±I7Û§‡±İxõ›W<ìl­Í™Õ,ÛK™æãìšm§4k\ZV3œ¡/q*³{ßtYœ—W¹K›HÑ]ÖOÊd÷¸Uß‹1’İ:–vñò¬å‰kæÈ®8©~ñË¡æ)»ó+Œß1£Ê½/”ÏÅ—)âdš”_.§\Zó/a¥ªk×Ä®——zu>Ê1•åœá£MÔ¼¦—²ö·_¸í™Ÿ³–b/û©|Ëû	ÂRïkU””)¥ùÇ{~GÏqØjE:¸šPŸu/fsI½‰ÆvËšùgz«N£³êQó-Õ©\rNßLf¹¦uåÔu6~wÌ¨ıtux¿däZ+3£wûhëpœ4|åöœ~]¹~Tôæİ®¿ÖôW…ñg-âKŞ•½§ğgMívigTtÉ7Ü+î¼YÌ8v\'üoàÌ·ºÛër³n½­ıÒÿ\0)œEı˜¾^fv\"ıöÖOº\\ş©çæ?Úß÷ô:1S*é…iş‘Qƒëƒ;N\'Š2¬ƒ‡è×Ì1PŒ¥O\\iE§)uÙ4pf/5£˜ÒFê,LŞ˜ºkÚ÷o‚û;s¯Åq\rhâ£‰ƒš¡½’µï\'Õîe¶e9MåZh<O_Œsú˜Œ5B”b©Æ)İÙuoÄö{\'È°Uxƒ\r}\ZuÓÖôÔWOf÷Fk˜<>‰Õ%\ZtiªQ„\"¢’³è_/Îëd•~U‡v©J0vÙ]5ø“»’úÇÇ¥>­…¯ÅY„°\n4ğıô”#’·§E³5Ê²WöQ5*¹nŞ«¤Ûn÷~?{-]Ê_Ó¥*õ8®¾ØÉ¢íÈ•->KÄ\nÚŸRvº-/±q_’÷úšà³(ÔÕJ+®*ÙIğ­¥gµùeíM#LgfÙ”Ò}z“JW1éí³æ^¦ö±¬‹=Jvùo-œ®¿GEárøF:èá°ôªè_ŞM«S‡Ú›÷r2qÄ¦ïd÷±¶âx›…½ƒ‚Ã®öé;B\r4½í™sqÜµ¤Ù¸İpif¸éTÄµR6gÒ­Eûøa÷¿C³ªX&©áÔjÕ\Z´ª)m\Zq’\\ßÛ\"ŞOÄs>ç,ÊÀ«iug$Ül–Ññ“ßvSÄxZoƒÊ04o<–/ä“rÓw\'ÕÊÒ0˜Üoj~ôÏì÷)ÃQáz)Â:ñq—{4¬İÛVÿ\0‘ïeUeSQŞ¥+Ó©ê¶¿Ùñ18njXlE8û1…y¸tödõ\'÷ıÅúRîsyÓjĞÄÃ¼×[Kî³-{µ]×™Å¯õ¦Müçñ‰²Ó}<c‹_ë\\ß¾›9{&¶~0Î~1zû–µ+4Šé]/_a+–n†‘cGíuû8üÏı¦ƒB_Š¹¼öµ8ÛûiMµåìš	~u?³âuñ}]Â…XRË)Ô«5Fšr“{Ei[œ+´â†uÄu±xZjšQÛÊÛ]úôò;V\'O1áõ„¯«»¯EFZ]¬CÇÜøn•\Zô±’ÄÑ«7M^pi_wºû,y¼sÛ<5+Q•ïäRİäÍlŸ\"ßG¹®QdÊH‰4‘Eï³şq…†×!UÂ;$ĞœäÕ­æZ¾÷ğ2#¼U¹s)`ÌÁæõ0¹f#\Zœk^ó•î¶¶Äº™–q€Ì0X²¦%âa8Ñƒ“†—tÌ(ì¬tNÄl³{½¯B?æf9_Óú|÷Œ§:5ªQ©BtåiFJÍ[gÌ²¤“{ı r*GV­‚ƒ…,T#^q\\”å{Û×™ÍªÉ©uØìâËÊmÇ:»d)&­\"Î¥	5k“Nkk1?>Ío¦lØIiİ7†åÙgO‡8£¤î¯¦¤zJg÷3C¥4åæzÙm]5\"Ó³O™[<¦ša{}¯N¤jB3„¯-I®©Úß¸­x³@ìÿ\0Œ°øË¥-U1i÷3Il´ì›~–67Ğ«%\ZÔÜÚñz¿ËËZ×øï·£ÅXÕ€á¼Ë{:Z“OÍE7c˜7ƒà,¥iV×Z^w“0û`Ì>ÏqJ„Ô6tèA®º¥¿Ü™µpí„É0Xx­=ÕFËÑ“ñVÍbô‘%%BVkX|4ëw÷™‘€şÉKê£!\ZãQU\"”J7ÅT€€\0|‹X¿ìµ~£ø_\"Ö/û-_¨ş_Döùg;icêßé]Y\'Èô³É_[ëMY5èçíjo}‹rwôêMGv[œ¶´IŒÇíyù³òh¥½·—O‹ŸşÏkŒj$í«RûóŞ\'qÏ?àø¿äÏàÎşÎœøÆsŒ[Œp³rvåwºgŠù63ùø2¹2Ïí%ãšùDŸ‹ä{}šŞ<y“8»_÷9¾şVèÿ\0Üì¾«Ç¹D`›’ÅÆV^wğ5¿V™û}GebSÜÒø§(euç†ÀB8ŠÑv”å/e3ÃÁv›U—Ê°ÔgŞ,æş;fã9Å•íÔ—0ù3ÍÈ3œ.w+=Q{J/œ_ƒ=ö+e—¶vjöç|<µv£Ä/èº?r|sıq%á¾öu\Zkÿ\0©œKåÜıºIŒ­¤úhjş;›ñº±YÅ%-)­–çs¥…’T¡NVÜZ{Í]Úş–kŞz•ÚÑ&İ½~§:„éÒÓû1mÙÛŸ¼Ö&úy²ÛgÌœ=¾UNßI\rU¥nŒ¯\rE<M;Oö—BêXÆÄ-3—©bVi®‰“Z”¥9Yrf5E¥íµ‚>OĞ¢¤•ß•Ê§+r,M¶Âˆœº%³Ş÷)Œº\\‰;¶ä4/©4¬Éve­\\£ï+NMìSBmnD_geêT£\'âÅ\nV½îÍÂR\"•œ£	AİJOg¶ÂV²Ù[§âŒjU4Ó”:L®›æ¤ùlU1v-;‘+s#h¦ö-wœ‚YØyYµâ]rwß•ŒJ3ö\\Ññ:¡d–ıI‘fFW‹Å`ñxJÙ}UKF¤¥Jm¯eøîaæXÜV>³Äc«T¯Rv½IËS–ÖW·’Vò-7)íw+2İy%d¯³,ª›¤ÉÕ©nP÷[©4İ€º’æÒ{\\¥7mÄ´õ±0]Rö®ùøU\'¢«İ&“~Ïo°ócÈÏÁJZôk»·0ö˜Í£RóM;]ßï>ˆì•Á*r”gZN’}\"’_Ïò,¾¾išĞËğ°×ZµNî\n>}}ÜÏ¬8w.¥”e\\%\nÔK–ïíø™ç%yoã§©ĞóøÛ!Ç\"åfzäyüMÿ\0g±ÿ\0÷zŸåc?¥scî>6ã¹/Ë5ß]êkSwFÅÇÎo_ë¿‰¬Î{ìeÇõ¿‘÷ª%$İ´ÜÈÃa!Š›ï²è™‹u}ï{ì^ÂÖ²““Óšf‘Ì©éÃb\'M[CèÕÌÊ1•f¡g“æ^zkJ¥YUq’kJ}Q‹ŠÄN¥hûzÛø—Tµåğ\':’xIT”l®æ’ßÈ¢§¶öçq-£o\0Š·¹T/ÊÅ6¹TİˆC+7äußö£J·hyljÅ8­Mzég$Â&ãvölÜ¸\'<Äd9î0Ë§×¥-®®š³[ı¦yÍ¶ã}§N–—©ÉÉÛ©Â;t“Yå_şM‹‚»a;OŸÒ§IÕi*ôİ£wÑ£SíË	ñX©]§Í?Kg«©ü|n9[\\ŞOr.Ó-9Z[0š“wdëI¾×á\'ûG¡–Éü¦	x£Ë„¾Ã;+vÄA¿¤)Fö…˜F—\rÔÔ÷“²ûƒšläüOCˆ8ã3Îpñ¥‹­	E^Ú`¢køLOw_UùsÜæ˜İ5ãÖ3§Ò]Ê?©Û«g£Ä³K)Ä[èS\"í–áU<éÆšw´©¦î_Í;FÍq¸yĞ•jz\'³JšNŞ¥|k<¸­ÏÉäcš–k+ı#­veV+/‘Å*S¬ç\'gø.CÅøÌªœ<ã¾wŠbãZå¬±Óºâæ¾KSê³ç¾4wÍªıf{øŞÑóyP”)×§º·õhÒñXª˜ÊÒ©VM·¾ıKc‹>.?˜Åu1q˜:uğÕiTŒ]Ó3ámÊqp¼ÖÍlÎœf—¸íËx‡‡18\Z®j\Z ÷Õc_©©m.GfÍ¡òº£J3’rZî·KÌæükF,Æp¤’Qi+#§œ|¼zí¯¦oİ”ËN>ŸÖF‡B:ê%î;eyFVÌ13‚«ŞÆâŞü·mˆæú§ã}ŸNåÓı›şø˜ê1ÅPÄaåm5\"Ó¿™k+Ìp¯/¤Ö\"ô«¥5ÎÈ©c°İû_(¥¼SùèåÇ\ZÛZµòWl\\5ˆÉ¸‚»©	(¹skì4¬´bbÛê}!şÑ˜&7).•ZS©m/KLù­½vèÎÜ&ã.Y«+é¯öwÌé¹N‹–ò¤š_âvÕ%³>KìkˆV]›ag9=)¤ÕúrgÔx,Ç\rVŒg\Zô­%œŠë¶™Ï),z”åf^Œ68Ú+Rÿ\0ÌŠ¾_‡:ô—ş4[Æ±¸W¥«bUD‘ç¬uj´\ZúÈ‰fT\"¿®§ÿ\0\ZcÇj¿ÇÇ§­[wbÕ|e\Z1½IÆ+ÍšnsÄµcˆqÃT´W‚D+çTñ55¤öGGş5“Ë&ÿ\0ø–cåŸQ²Uâ[Qu*[èÆåâ\\ÚNqòq2(eXjQJI6bæù\rNNš´’èg\'ºcŒâ¹jÖmÓ	]-¢›èÛFV­––¬r\\n6¾[Š•)JÎ+–åÇ9i†#d¾Š€çø¹cëÓ£“áëë]¤—âŸ]\'ÏØ©^¤½Y³güišfyáªâdéIï%¸ÔªNìåœwêxğğšRåĞÚ8ªù}+ı$jR–ævW™ÏR3„’iİ3>NãIO¦i?Í«\Zgiyìğ˜‘Pv•DœÚçc@}¤çPƒŒ1ïeôSÁÍx‹šb|^*uª7ÎV[}‡-Ã&8pøå¼†&®¥&ß/_ÅÔR©\'rjcjJ.òq‹Z¥å&÷İ“M­[¬Ô¶CÎÆÅiÙu3jÎÒw0ñmm~e™Ö’½‘CJË™ã¥š±²¹e6±&›êZs{ø\n—»ğ-§grtŠ½råŸRÔgœW	7Ë¨Ñ*â¿##\r~ñx\\°•¹²öé¯\rÈ«Lµ]·±¬u_˜×­%\Zti)I¿VkœCUÍ3:ø‰·ùÊJ/¢è{#Ìñ°5pÔª8Ò©§\\cÊV.Ê{x|<rM´ÆMí–ë÷ßDÃ•FŞì˜ÏR{Œ×Û>†6¥\'xÊËÄ¿,ëf»É[É;–å¹3“<;NÙXŒTªIÊm¿yæfõŞ˜&ïW_aru[ôèyù¥[Â<ù™Ì{RÖV»Äïuİÿ\0í0±¶u“|ŞåıJ57KætôEŒWõŠïş¬delo]ŠEJhI®àÎù“5«\'»İa%\'ö@ù³€óÉùb¢”œ İ›÷+Ú—wWÖŸæpÖµÕ+üßáäc=­É”é…Û%Vã\ZêÍ(B0ß­—?‰ÏóŠši%Õ½Í‹³çŸfÿ\0,•P}Üiè‹o’÷s5,Ú²•Eû%¸ı­ënÊ×*†ò²ßÌ¶ånEê6èèŒÕ%y;{¤‰Ñ¶ÜŠ£üãLaµ¶š—‘\\ä—\"4^NåPW{H«&Q}Í6¶kb¨;Êè¦‹neIÆ3òèiˆÊ§>Væ\\…Û^¦2vw[—©Î/Ÿ3X™^…Ş´Ì¬4{ÜSŒ•ùû=T²Z¹ú•ÒÅhŸæÓ›~˜Í¯+d†28\nz¢Úkæ¥Í³pàìÑw^6z±•êÂ¤ªM»Ït´ı‡8Ã\')÷•¥ª}<¡èS®ãd¥±{Ã3‹Ù¸ë94–JšwHÏåüTäôı±ø†gJU)*”RuhË];õ}W½]{Îs’gµ0ÙwÉá\rN5zsoxµÏ™Ğğ˜Ê8š«	ÁFqSŠÔ—3—>ƒ°³·‡Ä8ÊxÌnMV“ºuİÓùÑwÓôåöB“ÒŸ—âiÜZğØ\\ß/ÄÂI7Rõ]ÖÖw~fÁˆÌ©ÃëÓœd´]Yó-–ã4œ°Üšz)İîKq‚¼œW«5z\\C^´ô¨SI·f®lY>5`«b¯6÷´¹z•äÂá;G\'ã›É[Åaã³«GÊiIû5\"ıèô*`°ò…´E{S‰²÷ƒ}í-¢ù”ãñÎé^)%ÓZíBÏ0¢×\'Og~‰µo¼Ó)Ëó‡½Åx™×îTäÚŠv¹®9¨KÌõÇ‹NËÇá4î8~ƒCùQø#Uín1«ÂğRŞØ¨4ß5´RkœR¤¡]£¥-d—¡æg¼I˜fÔUf&U)§©CJŠºÚü¼ã^¦[aá¦µ‰V•“ñ1gd›]LÊ÷u:·Rw-’iN1õnÊjÑqİ{B”[|¹ÖÛ;˜d†2¥\'ÒÅîTÕÊ¤×\"‰ngEÈíc¡ö&ÒÌ1ß÷xÿ\0™œêêş§£‘ç˜Üš¬ªåµİ)Î:d×Usñòƒ7ı¢¨÷ÜE4·”p´Úÿ\0Ôqjêé>O©Ôó¬Û›fĞÅãë:Õ’ŒuJÜ­ÊÖ9¶iK»Æâ)Ié´ŸÎÛmÿ\0ÔßãîMVÓ¦5o{y–$–i—V¯‡v­F×‡I/y4íµÍ¿³¹¿”b)\'kÓ‹7Ï¨Ç~MF*P–”šñOŸ¼ÎÂÊÎ\'©ÚU¿GAZ)JI}ëñ<J½“İ!†[[)ã]o±¬Ë¼UòùIhK½Môwµ‡9B3Ó&¯füQÀ¸W4«—f±4æâ¡5ªÏ}>gkÃâ¡‰ÃÓ¯JjPšÕ¹>§\'?®İ\\YyM0x¿230áü¬Ú£<_Ê*GêÙ~,íÔæ›ö]×3çÙKå½¥SW}Ş\n„b­ã&ßà“‚â|M,5:ziËJ^Ó]-È¦xôŒğ¹zo©•MÚ›~F\nØju5+N*[²¬]h,-Wª?1õ^^«›Æí“‚şËIqyô*ÃºµK¯‘uT§}§´ÒUl]Dô-÷úKíä>œ~ÓlrF—PØ¶ªCé/´*¿Î_i¬±\Z\\&Å½púKíä:Î?i;4®Åœwö:ßQü\nJ}\'µñ“‡Éª{qù¯ªğ8Îãå|íÛS{nyUÛ\\ÏG:wÆÕqw¼Ÿ/Ë¬Õíg-öîÉj£,ÊWvO‘\\Ÿµ¹f}XŒê5Ù+2‹´’èC•Û%uŸönÅÒ¡Äøº3v•l+Óî’‰Ú¸‚¼Izãı§9/¢Ï0ø©ĞéÍÁ­¶fSÎ1s¥^¥Ÿñ?õ\"ãµn;»F>i×•¶MßŸ‘—Ã8Éà³œ=jS”d¥mQvjé¯Äò%QÊ[óñffN¯¤›ÛRf“ü^]Öí:²©7)7»ó°•UÓ‘‡Ù\"§>·4’5Ûeà~#­æP”dûŠÒŒkB÷Mx£¸BjpRƒ¼]šóO{Ÿ4÷šwoo#lÁö“a0Ğ «Rœa§M7ËmÌ98ü¯L³ÃiÍåœÔí;†C]Òr©×œ\Z[9$¾óC¯YÃ9ÇSí»¿ü™{4Ì3\nÖe†uÔgZ¦šÚ%©I§~~¿o¸ó´Âx•îí½ß7âm±[×LÌMhÊ…EÉéİèNšOf‘‰¤£pj/•ŸRªUµYKi[{•Ò[/dXIO´œ½I\'¡T“¿U¡îfv¥‚ÂÃŒqÓ…FNwºŠÙÙñ-~Î>_—Ò¥R²£*jUUãÛtZÎó\Zù¾:®+UÕ«VWœ–ËÜ¿Ğ¥ÆÜ¡>Íï³ÎÏ¸g=à8fy¥\n³ÄëªêU¥^Qù²vÚöä—CgØh`ñò§ÜoÕ»ÆSæ9=*Ë/ÆV¡\nªPœc6”£ácÂÍ«Nµg9;­¼ìi1³%?Ö÷1æŸS!½‹3½¹–f¶Ú_4˜Éu¹m¶åíA§½À­$Şü‹ÔW·ÓŞc9\\˜Jõ#{­ÇC.I$Ô^61¤œnîÛ÷Š-«Ş.ûø–59ÈŠ.Ó“Qz‹”/}ú#&Ÿ©‘N^ÆÅR¹QİXÇ¾ş…É;7ä‹æÊèdáêiÕàÖÆE;Fš»½×/Ïƒ³i;¶^Š³z¹Ûrò&+«{¨»ì+4ôßí*ÅÕ…Z·ŒU;ô‘n£oJ‘j–E<4eİ?ØçåÀæùN*qÇÕ¡ŞUÃÔiÆ|ígĞæ˜Vª­<´ôµÏ¨»>Ì°XnÀa«b¨Ò<5(¸ÔšWzüNn[b=M¾WÆaªajÊ•X¸És\\ì×5÷˜û§ät.Ù°ø<c(eõaSŞªíBÏLåÕÿ\0ë™®ñO\r,Šk†ÆG„†\"Ôôµ%ìËÌ×·±âCîeàåí­\nÎëŞaµº»²±ëpõ8<eõ®ï½Óê®®tqãåti×?Ùû/Âa³úõñéSÆÎèôgMÆZl¯>]W/+½l¼Í+ˆiåU\\s/	^\Z‹ĞãQ_LUÒ·…“=|Š2¼ÃN¼±˜zr’Ş¨“LçËİeÉ½½ş†ÿ\0ÙüıŞåd,ë.ÿ\0ó°¿ÿ\0U\\CœeË Ç7ÃgŸ÷«Á•¹nVxãvø÷$ÿ\0,V·Òÿ\0SY›ßsaãz±«šÕpi­\\ÖéšìÇÕ¿=üêe¶Öµ¯æßB©]\"ÕFÿ\0hÖ9êäêR§7ì9RoÙRùÆ÷ªÜU•Ê§\'S›öW#*&*zß™b1u4×¨ñ\r)IÛmú	·§À«6µË”öä[Šw±r*Í&*ØUjwé}ÏO)ZqTÛúHóh=4•ßSĞÂo8ïmŒòp­ÏStÓJû™<SŒXŠ˜Î÷šhE9^öf¯J¤­Ï™{½¾×fqÓ2év÷[¥wbİÚÙ2¨6¶¿24…è5}ú¸\Z‘§^\rµdîî`FV\\ËĞ›;Åqªº2å:‘ní£ş[Æ«Z¼¶*ü»¿õò\'ø+9Í*Dö¹“\n«O4råŸæ–\"eKˆ³%ÿ\0ÜÔ#ÿ\0ŸÏF5Rê^§U[Ç(ş‘æ_şMBWfKÿ\0»¨?‚ŸÏr5U½¦\"ãs’.\'Ìíıª¯ÚOô£4ıío´Ÿà«<vJ)^â¢Rœ¼ä˜.$ÌtçŒ¨÷äÙÒrwËéB®¥/e&×ˆğñé|y%zõW±»9Ê•ªª{¥#«æ54`êµÒ,ãYô\\]iÉï«‘§>{Ó	ırõ:–DÖ„éI=äÓoÄå1vwG£ç\Z*—Ê*wqù±odifØñgã_EdØ·ò*{ó2ı|]ªÓ–­¯f|ùCŒ3jPP:ºK’ÖÊ¥ÆYÄŸµ˜b9ı6&.ŸçÅÚxÖŒq¹\rx½Ú†¤|ı˜ÁSÅTñ3ÔÄñ~s^›§,Ãã.šÙâTœ§7\'»ê]ÏËÉ2ôõøw0xLD$º;ŸCğ^ró•M£hÚÉŸ0Ò¨éÉ?ßËx³3ÀRîğ¸ÚÔáÎÊ[\Za”‹ñsIÕ}2ñu+†-ó¾ÇÎãÌë®a[İ\"¨qöt¿şãˆ_ø™Ñ3Å·óâúN8âNû•Oh;3æøñör•ÿ\0)b7ş&\\¥ÇYÍV”³COšÖÎñµiò1w·]NnæõÀ5c¢×İ-Ùşq_‚”±e=.×“lè¼=ÄËkEÊµ5ÑÍ#«äpùñş.¼çópøâë¿b)ÄN4é9IÙ$k¸ß,•=U*Ò¿×F±Æ]¦`)áåJ–&é¶ç“Çğ¹rË^/7‡ËrÕšqTêæµeNÍ^Æ£‰«±ƒ˜qWV¤œ±ªíï³<Ùq>WUÚÊo~·ÿ\0C»äÜpÆcş;93ÆO^…z›ó1jL´±´«/ÍUŒ½\Z)”—Nlòy.ë-ìœß¢-ºõ²)œ¹Ø¡³\r¯w­õ¹Z›hÅ‹¶ŞWÚæV#l‡Q”N¦ÊÅ§=ŠïÈ®¦¤“w{XÆÄM>EÙÍ>¦-v•ºyQ9+_Ä³6ä™2mï\"Š’¶Ş%”Y¨›¹fQ/J7Ü§GX’…¦×¡v•×$Ë‘I\r!T#v¶2)Ú7±j6rç¤»x¯šîL‹=ŒJ7]lzo‘”SZ\';İ«\\Ë”­ëÔôpãü\ZbªméV!NÛ2Óš}w(sÚş&Yb²ôª%²ê[›iFiËrœEEk¾hçË’JÈó³	&•¼L™Ïnf1İ«ñW*ÇÕyµü%œG²÷ò.¨6î®ùî‹Xşï\rK¼¯^ŒSåjOìDø²¶2rš=ïKÓg«„¨Õzi=»¤Ä1¥)|–7ºµä`×â}F­ˆœV>Ëµ—€ş;Q9¤u*•¼úy9U÷wßÔçÒÌ1Rwuê7âäÌÌ³9¯BªUjJPou-ÉœZOòí¹]ßš^¦E=£Ïæ6Æµ8Î.éøx»r¹iŠÛUiÜ¹d–Å¸\'mÅ×&i&‘S/R•Ì6Ô™J’¾íûbY0’¶Ä½š¿>¥Õ’ğ*•º—‚õ7½¼Köƒ[ó1\"Òk{X½NOVîëÇÄÒ\ZeB1²ædáôÆúVÆgneê3±Ñ‚Ò=:S½Œšs»¹çQ¨İLª5,×©Ó†›G¯¨áR§«†«\Zu\'Nut/§VŞé¹àÓ“²kšWûÌùT–ŠuáÍ+µåÔÛÆUã#Wô¬;Ôùî¹ms3YÆU)7ìüèúV\"¢l< ö{£.3ı.éò.Møµ+ŞÊ\'â#s¥eÒŒğ”ôò±ÈèWp’”z3váŞ\"§\n*Y&‘æüŞd±—Ïà¹ã.-Áù\ZTŒrÉ)sl¿Sˆ0§~ñ^Æ—Å9òÇÍÂAŸƒ+›‹âü|ï$¶zj¼C5ÜÅuÔk•%fÑìçuuF*ç…VKÄö¹&¸ôïùK—H”¶,Î[?Be$Zœ¯¿CËåsUŠóş[”N*Jí]Š–ïoc5j:m¹Kº\rı¥2“hçËÚÙL­³\"å¤Û–ì­u]ì5;–Ó³æSV¬)ÁÊr´Vì¤Ù½-ãqğßœ­$¡Jâl1øùU§µ½|Ì Í¥Œ¨áMé£’ñó<g¼¬·mã‹›<ÕÓNé½íÈÜ{=¤şSZ¢ù±…½÷¹ªa0ó«R0¤›”’GHáÜº9n\nÚ]ãW›^#“-M#‡İ½Lë\"£Ÿäk9ws§=TêZúYÊ1ô%ƒÇÖÃ9©Ê”å%tüÒ;VZ×É½YÌ{J¡\ZS^PR„&ôõ¼yıæ<9vßtòps´£>is^(î™\"|£	<*P¤éÅB+’òûN…šQåàuŞÅF—Sª÷TUI?slßšyH§ÇºÛ+„ÿ\0?šæ™ö­‹©ßÂ\n1øÜÚ!6Ú¿STà8¸d%.sNoÖMÉüQ±n¢›ŞæôéÂn6L4¡SŞ¼LcRÛR³»¶×¿\"3\ZTe—UrÇÂ-ÒmÇD¹]jœ°µd£xB×wù¾ã#–âêåŠ…Ó£6·éfgÒtÊ£Nƒ¡ùNÙ*sğ-bßsR0§‹d÷rQ”mî-RÀâ{ï’Â\ZªÂÚ”]Ò²·>†_äÂqZhSõï&hëıFŒ;Š¾h——s&YšŒ1p¥r•9z£$£ånfGô{1ú×ÿ\0°Å[‰ÃæX|5JtçV{¨¹lÕú³^‘¹ş²eCÿ\0‹Vkú™»ù˜«¸b8âuÂëóšZ·»™™W‡37\'(Ó£ŞÉTä¼=áüÇ{Â–ßÆ‹ããş’«k}ó‡îÃÉı÷(\'¿üZOÿ\0ñ¥ş¦&+ˆÁ7N½8.õ$¦İôûúK\'ÆB\nkºq{Ş2Ùù›c\'ú–R«<á¯ÿ\0Ç—ú–ñô°±ÀWpÎ5IR•£òy+íË™‰,³fıß‰g€Åü¬´ÓZiËæ¿#i&‹·):Ë×¯3«³õ2±Rö·òëêaU–ûı§™ŸÚ³Éj«æŸBÌä÷^euZ}Kf£)4—VÄÛ:™Iø”-Ÿ™åc3ì=+ÆŸç$¾k¾É˜ÙFqˆÄâÕ:š,Ó{lËø3ó›{Ú˜¾¤ZmïoT•üº•Ç//,”£Œ¤Óı¤a\'½“ädåÏôºVç©ºm/B\\ÙÚ$¹í»5l¿*‰ó|Œy×Q–§r}/É)6¶ßÙñ±V’*_,iªmÉÁZÓimµ¢gâ­¬=X<e~òMÎIiõ¹rñùTZğİù˜˜˜ÎxªÕ$®äõ]×ıX§¼”fÚîöEüçŠŒÜ]d¬¯ÉÜÆ¼êÁÉ+Yòåq9oRM¿2º3JšKÌçµm+¤ôKktµ¬\\«;A»–+ÁTæìú®¥jmFNëQ8¢ô¿Jqù%X¾n\\¼9è“”[µË“¨ÔZWºm˜Õ&¡İ5+—ª1j½-¥±j¤¯Ô¹VjWMï}Œj·‹WûHQe.J(¦RJM-š\"R¾ö³×#-†×-îÙ)¶’ÓªîÄ§Ğ‡r[V´[»Ûbµêp•K¨µì«ó±4åx«5ncOwödéú9–7ä´Öë%ÓÁ6ô”wo™n~)y_ÄÖ*ãqw•YoÑ\nxÚğ^ÅY}¥¼jm«	(ºË¼½“³3q5aŞ·Kæò[t5,>q^š´Òšó=l¿4ÃVœa^§r¯ó¥ºDÍâ¼Î=)÷:û–§´ö{t2+S¡ù¬MJ{§JM~‡¥4ÓûEËi_¡\'®2ëm&çˆÍ(ãr*˜ÊØ¾ãJ´hÇúÓPÚ^æ­ï4¨ÆÓI;ş&f&RÅb–ñs’\\¼ŠÜbøİ+Äb§*‹]ä¥¼¥àŒœ—(©fx»/ß‹šŠ»Ù/ä¹˜\Zœ(Jœ¢›³·©›Ãujá±)ÃW©Fµ8Ú¦ì×‰jtŸnƒì—&ÀçU²î%ÍëÓ–Î…jza\n±ií+­¥³ë¾ÄçİŸe9>GC1ÃfNµJ˜”£JN6TÛvåÖÊ&•›cq¨©×­V¬¹ÉÎM»uêcÔ©‹tãÔn\r§}×…ÇYc—•N\\9†§ÅË/Ês˜(Ó¢İZõæ´¦ãºVç³KŞÉ†‰á¬U®j¥l²´kÆ¬ì¥:5,§3û½Nw…Äw/Ez©¹E«ß›=>\Zâê.m*÷ôkS*´›Úp’³ÚiW,º¾Öÿ\0Û¬åı™`+áa)ç•ªM«·IÇOŞiİ p´2ZY…:”ªÂ†5“©ÎMËN¼/sVÂf“mF–\"jM8Iî­ÏàF3SB´œµm-MîgüvTãŞöæ™“rªÜå©·wêaI$¾qîçØZx|mHR…•ù>‡‘8Ç“Š-§\'Ù4­Ìµ5Í™]–”Z’ƒèLR¬U²Ùt,·í#\"´b¶1¤­-‰B¸Ù·uÔ™YÓ&”U÷ñ*®–’L{¤Ë”ı¹s±nŞ<‹”–èØ;GŸ#;Z¯	VNQVºN×<øi½ßRí=ÊUãhÁcrª±îêa*FR’´û×²ğ=PÊæŞõ%Ó¼_èj8[÷›Ğ“[\\‰$ö×¾&H&©kºŞí§øš·jûŞûùBd]~—ŞÙk‘~ØÄŒ¶.Ó–×Orš6ç€©Æ\0\0\0\0\0\0¹EÚ¢:\'\0fW¦èOœwG8ÒG¹Ã‡Éq´äß³É”În5âËWN¡WŒ2ÊÒ|´³fS×‰›¿6oÜašªyR…7wQ_ÜsªSoÌŒ&—æÉG@4s€\0\0\0¦@nÉÔÊIDì]ƒ¾Ìª%	{%4Ú6ú²Ú{—”{<ï‡§¢–\"¤ İí	4g`øŠµ9_¼“ñİšÚ~CS¾ÇÎäãõZcÍ>«w\\aV0·xşÓÇÍx‚¶)»Í»ù©[›)”Ÿ‰·\'ÿ\0)Éœ×¦™ü¾\\æ­_&R9Ü§¿Ÿ\"Ï¸¥n|—+Û*ôòüÊ½\n©Ó©%¿Ft\\³*Ø:u\'ÎQ¾ç-Ã?Î#¦d”İ®…ä›•5-™†UÑÅ“6RVo©m;°ÛèRŸ‰n–ú1)YoàQ+ÚµŒ¨ªR}_B‡.·)”•¬ˆÖ´ÙîTL®cU’Õ~¬¿«Ùjö}z÷ƒ´šûPBŞÏæ”Km®‘D¥oBt¦ÒŞä)Û“Şåmò)sûF®İ·³{ù–µ2u_{Bôn\\§+É\\ÇÕvŠã-„Ll¹½\n‹È¿Uòô0¸~ª„dßTdâgWƒô=^;¾8Ú^”¹Ø¢r¹ns·2Üêx4a”F×T’ïn¨¢¤ÕŸ;_î-w–wÕbæ:ÚáQÙh¾ÎÎ÷1³uLò˜Í©„àõG»©9>J<‘V#ƒ¡€ïñ’­¾sRŒWºæÂ«åY~º§•¹4½©Õ¨µIí»öÎIÇ¸ï•gøêv£ZR¼b¼1üsÜWçu³ì÷	5£-.Mmª¬•­émÍrµzµêI»–ŞüÈ°Ò7G¿2\0J©ÊÓ^¥I¼p}~÷*sùĞqî]$™§ğ”ªS…Iô{#`ïæ×6WnœoOITKdú”Ê_õsÏUçâîO|ùÜ™’ÌÇ+É´M7©ù˜‘¨Ú+UUïËcLrYè]ÃÙ—²ÊgS~fª¶÷½ÙTj6½Å÷?FÙÕ+ŞiÙ++sæŠéâ£)ZT×ú|¤ŞìªÒ‹c‘·«õéâ_§QXò©U²ö—©~¹Á5M?K›c–ÛÕ§Qõ2)Õ”mt¹õhğ^&¤’Õ\'ìT§.¿\\yWòÓezÑµ¥MlösEêy…uF­5ã%ş¦¯\Z­r±r5wNİ:\ZãÍ£É±C%8¾òÔ¶ö–Ç©‡ÅÊS¼ªQ”¥µÜÒ±¥:ûû6^¶*X©Ûz—òlÛ¼ÎÇA«ZX^\r9n½¥gï&†aVuR]Ôö{š<TÒ¶¿gÔ¿sÔY¬åÆûm>Eƒ\nÒ”lç&üÙŠqo–Ş&G7©E=Z¿TÌÈq>\"4í®óirÆzZü½N ö!NÛnÏ¤Ÿ2sÚ®.İíTÔyY=ıß;˜òsK5ùeµÚ“ŠêZsW<üó5XJñŠ”•¬Ÿ›±zX¸Fš•iÂ·Îv»jçŸglWRwš¸r±åcóWK8ÂàéEJU$åS®˜øƒ•£vîùzùœ¹¡UîQ©¶EÊeºó9èªM.e2i;”»¶Räï·2…Våµöõf½Ä™†¤°Ôª]\'í4úøo‹XjßTŸ²—…·5\nòr›qİ7Ô¾w¶<™in£²²[\n4å)¤¹·±:osbá<±N+¯eWÄÒİ2Ç•zÜ1’ÇAV®”«O}ÿ\0gÈØ)¶’²õ1à×Ú^¦÷G.YnºñÇÆ=Œ¹µ‡÷š\'lTU<÷\rQGúÜ9?Tä¿yËÿ\0¨~&§Û.ŠÊæ·œ)Nœ¶ş+¯‹#Šë3—¼Zn.ësáül¨ö™E^÷t¡$¿Òj.ê×ó=şÅ×©Âà]F°õkBS‡Fãí_î;oäæÆéÖ²\ZÆ_F„\"Ş‹Å%Õò_r=\\Eé¸Æ^ËQ»¿ˆÊkap0¥:RZ”lœº]q•ÕlL§tú¾¾g&_k˜}^ÿ\0µ,³0‡7¢\ræ=,÷*¹_äì»zµcNœæ–ĞRi~&»“ÔÅBnæp«=1m?C1c1ØO“Ó¡FITÄÂ÷¤Ûv»ğò2³´Ù¶ï•eÔp4\\)«É»Ê_Iø™(£Q\\G˜ÇçF+­;	q.5üçM?D[ÆÖ^6ŠÓÕì§ÏcÂÄÔUx¯	oØM_íÿ\0SÎŸâ_\'Oî1!™ÔxšuÜá®7—‰|p«ø·Ë­-\\Á¬¥);tØğÖîóEâš‘{ÓÃ7èÿ\0ÔŸ\n\\{z8ì\'AÆqM>w<ŒêåµÖ\Z³o9Z3od]—âo,ûEï÷˜Ø¼ßå4eKò}¶šº„®½÷/IíêÎšïeg$íxr~~†>>\Zğ•ãıÔ¾ÀËs\n¸X¸Ëª¤’µTì¼ıIÌ3Z’ÂVK\rN7§%ÉøòK}[s0ê»ÇkX¹-nÍòê`Õ•×Ë•İgVª»$¶¿™‰Z°µS¿Í|ËómÜ³Qû.äÅ+H¬­QÙu2²9æTÚıÌlOµ]ØØòlp¸e;^sWmüŒ®±sÉº½OâªP—°ák;ó\'Œ†ÅÉ9B[7I\'{†¸mª7¹ƒ,EW	FRn2iÉ0ßk\\õÓs„Ôâœ~k32é¨bá«Äò°•°ÔÚwZQ{½k”¬ŒıUñ­¾#+$Ó·™2”öØÔcˆ”yI•,dÓş²KŞËyVm8lMkÔï)QO–¹ÙÛÑBŒbÔ]hÊÊŞÊvfªñÕŸ:³ûY?/¬Ÿõ“ûH¶ÓÎ6jøKjœc(¹-äß?q‹möQVw]O\rãk\'ılşÑ<eu²­?üÁOnUæ•9ËÃI©4¬èÕõÒ÷<	ãkİşvwõd<mv­ßOo6L‡“a×RIi§?z1qJ´ª/Í;®§±u^ê¬¶óaâjK~örúÍ“kÕ¯R¼båR”m&—4aWW\r¡++%åäbËQşÓûYnuæùÉı¥•Ú©ÆQ–ñw-UR—µoqLêIõoŞQ­»nøÖœhN˜µ&¾|SoBÃVİßÀ‰Iø”I¶Í¿e2Rk}%oöJµ»lB«‘OÁ—hU)©ÅZIİ?Ri1“[]Ø¹Ju[œ›s“m»s~&»šUu12o¦Ç±©ß™àâÓUç}™hŒı,‘Ô–AfI%;r)	_£Š«Iû3iØ\\Âs–Š˜™Ró{£Ê$­9r“zuÒëïğ=¿0§ZjT%ã½¤j©(­)—ğ5U<d$çeÕ‘bøæÜªbëÍJ3Ğ”·ÚÄáq°Ó½)hvñ<èÎ×jû“škäõêf8©«N²»Û{^*ª¦¢«$—™ç:œì[smÉè:ŠNò«+•N­:ŠŠŠ—Y_™å¹¶Ê[rIxÉîáq50uã-p’Oö$l˜LÛŠ ç‰r‹Q²Ó/¹¢B£·2ı\nÚ\'ì½É·q36OW¥S6©:wTÜ¶NÍ\"Pu$ôr~&ezº±.êîæ:ªï¤¢‘ié–wuˆZlÖ×Ü±$Ëµ&ç+Ë¢±j×ûd¦M¸–eÏ–åéÙ[IîH®šö·&¶Ğ÷‘kØŠ­ò—@)I²í·2Ò·3\'¶r\"¦/EofŠá³Ùorˆ´İü‘jåWf`TÚ”nÜ]¼CäéaUwRÍÇ»ßRó<¼,”fŸŠ2µ=+~¥4¼«ÑwM¢¨?Ìehµ~¥p~Êhim²‹‘}Le.»İŠ•ãM6ùƒm,\0t9€\0\0\0\0\0\\¥SCMt-¡Ìkc!Ô{AYWØ€nÀ\0@\0\0\0\0\0\0\0U5t\"äİØ\0Ó-±)†ö)D€[•F-»\"í,-j®ÔéÍú&U:µn‹jkÔÜrº•¿\"ÂT¥%(]ÛÄò²îÆWiÕQ£¿k™²¸PÊ°¦Ô¥«=·+c|1±w.Ìa‰ µKL’³^ff¿â¹¢ç5U*ê®\ZvŒ÷Ùì\\Âq6&ŒZŒ’ñ+e[ù&ôİœöµÊ[1rüTqxxÔ\\Ÿ;ß‘•i½ªùŞâ†ÖÍ†ìÚñ=[µú¹}$cU’NÌ½RJüÌz»;„U/î!ÛšäŠWâ& nÅ»4üŠœ’õêZœµ\"Ê¦R³w!I»7ÉÛdÙ>`^ŒÓåñ+„İÑa;5räZº`ÛØÊª[Q“Z§SÌË§í3&­O·-M4—¤Uªõoñ-wu-U©¹mÏ©«µùUÙßc3+­JSTk¸¨Njí«ÛÌò\\ãg¨¢UZ‹Ò÷èD½³åXé¶fù%1B•jN1¤ªBQµÿ\0×ÈóKüª¯×{z›¦3_N³¡G^¬`¥ù­Ô|o±¥æp”1ÔšošwØ¶^œ<rËÛK!s2l]ÃĞ©^nãªVr~–(jÜùt›—eÕ1S½š‡Ò}Jršp©Œ„j$×ƒ6x¥Ù{+È­º_v«Jz*•=’äËªMre›§ÈkeN™*VdÆv~¦6«6Wéİó&U¶ÈŒ¿Ğ¸§eks1Ô•¼ÉÔíeÌŸ!}Ô¾Åq–Æ6§Ë™.OÆÅ¼“¶BŸ™1å¦&;i¥½Ê”¯µ¶DÌ“¶T&×/Bäj+nbFkì*SÕó_Ş^dm•­r]	U,¶f+•›¸FÉşD³TÛ\\ÑR¨×‘…Ş;ª5î-9\r³{Æ¾s%IôêaÂnåQ›¹¤ä6ÎÖïmEj{»3TkoµU¤^r§lõ$÷¾åJ}\Zu.:±µŸB”Û&U£ÍØ¢U®ÑaTI+İ¦Ì(¯£‡èJ/Ê1Rqğîå±[È®YiÆ•Ôri¦ÕÜ¢•Í/¯ˆ®êÖ¨ÜÖö~\\s±”pô¶\\äìjô`êUŒ#»“²0Ë-¹óÊÚİ¸B•\\Uz™-¹T—±øD¥¹ååtVB—\'¥/S;_™®Œ&¢ääìZ•gäEI$¹îX•N¼®d²óªù–+â´FR—Er™I-ÑågxÅN—v¥.c[Vİ0±¹…LMW&×’¶ËÉŠ7‹o§\"Ò½õ\'c?\'¢«ã)ì­{´úšoQÏ{¬ì‹-U¦ª×„´tŒ—3j¢”V˜òéeĞÃVVÓ²è—C.šj)ÈÇ,¶éÇ4Ûİ\"ı6–Ş&<\\4&›¿‡Oqv›¾ëâcZFå’e´1)TëÓÃÍVœ{ÉŞÒå¶Æ§ÚÆWAp¼«ÓÇĞ­:U Ô!	^Îëv×™íàqÎ¦GC¬»š³Ÿé/ÀñøÎ—ÊxoM+½\Z¾ÆŸàW²rôä±Ó½š=Îiñ2²Šwri»&ìßŞx.Zª´¶Wbà\nÿ\0RoæÅ«û·;íÖ.-~NÎğ8h/g3ÃÏ¦Ğ—»¡—a«ba\n™(©;;F[ıÇİm×¸®\Z{=×#»¤é×pHaéS§KhE(Å%Í’ùN/ŞJ_ú$2ú—ËhIó•ßÖÈÅÅVU38(½¨R”Ÿ¬—Ü™‡î©îµ^9óÆã+Şœn¯ÔğÔŸ‰ÅX˜â3mPSIEGÚ\\İŞçœïkµäuá¯—FÕ™‡›ætr¼\rLV\'S‚j:cÎR{(ıå÷&¯·CWíF·qÂµ*«j…zsŠ~)ÜÛ¤[$ÛcÌqĞÁà+â«&£JœªIz\'·à`pÆg_4Èèã1J1e)$–É]¨¯±s6ã\\ã<TgŠ”iâ=™ÓÑ·…º³œê†#$Áåñ¨¥ˆ¥EÎi-¢µYxòy];N¤>EE&Ü8ÛÒËñ•9N1ë}ıO˜:´áN0qÓMs\\üÌš-Q^\\Ù½µzµ-ŞM_U›W<ÜÚ¥<>µjõ` Ö¦WKG¼Pu©§àÚ¿3Ìâ,ó.§†t±•S…XËO³}Rä—ÚVÕ\\Ó“´¾ıİ÷ÜóêÊËc3e\'k[ìûŒ*»üÒ‘–Ufrö‹štfßH²ì—-6¹‹˜KF«ş[u¨V’ùEú&lŸ-×–ºÔ#yE5oY–ófu|°å(EJ2“{Ç<º¬LEGRZ¥795wÒ.4êUöò{$Dâã)FJÍsD£ÛbÊªÆx:QNî*Şó*Rwåï5¼³ğµ÷ù’Ùî\"¢îe(JïMÓò3ËÚc—KîwçÈ¡Ïè˜Y]yTÃ\'RNNÿ\0´e´ñ±[4¶ö­KÅ¡)¶î¹–œ¬ìS\'vBWµß×©«ë¹eÉôêF§{mqÊÜİØUõ,¹okX©J6Ü\nÜß+ÙX•&–Ì¶¤¹2¶VæX\\”ÛäÊdÚ[6¼Jn¼nJ-W)«şÂÛ–®„) m\\¥rŸœˆr)½Ÿ@«m®·&öè[O¨»[xƒk‰İ\\ªíüâÔeö“{nÁµÍkŞŒLn8…ª;OÇÄ¿©X_ÙØ™t‹ÛÃ©	Szf¬Ê[3Óòwuwu¿ä²òíK4(Ww\'od\0™]$İH¥âSœ{-‘âó¬d–šŸuRmÙ-ìEô™;z)«%á±~\'²øG6‚zéRKÇZ1ªpî>7Õ\Z{—“mtó\'5Ğ[^&t²,b»š§·ñµ°U¨»OBÿ\0ÄJ¾–g5wb5Ú*Û¢*íJpKÔ—Koë!öƒj»Æ·.Ò©iß©féËçb)Åx»ÿ\0¡s¹¡),nNöj)ì¾Á}RæûÇ&÷oÄÅÄë•W\'ïàUVµ8UÚ¤f—U}ËsÄ©?mî^N•µj~Ï=½J/·©Uj°›V‹sp\\§+\r+QQìX|î]•¥bÎÊA\néób¢nIòL¢\r\'±\\¤Ø*ƒ½=ù˜wÛc2‹ÓŸh¸–üì»)¥8Æwv{u%½ü=\n¬ÉÃ´å¹–—±uâ`açitá*·ÓÓvEL«±’RØ•+rårÃv÷ØÜL©BĞ\\ú‘&ÖÛ2¾*W´÷ğ<ìV:U¾ÑèŒ\n•å)^OSñ-Êwæi0grÚØ\0º€\0\0\0\0\0\0\0\0»t\0\0\0\0\0\0\0\0\0\0	[²	Í·ğVSƒÆÒ©,]%Q§µÌN4ÁápX…O\rÊæ_æ°´jF¤ô¶y¼c‹†\'ªœ®’±f×^/\nÛ—ğ”ÔëÅK“e„ËøI(×‹|®UœÓ£e™n\n°ÔµYnãvfF•8·¦ŸD‘Ì°ÑÂSN{¤]y­z‘]sZdòè‹ª­BQš÷<Çÿ\0kï)©˜ášùËí)´î4Î!ËªájÚ)º\\Ñã«¯#¡âqxJ°q«¥«u5ò–	OV\n¦ıcàZ_Ó›9ŞŞçW§:s£ZR¼wHÙg\n{¹œ×-ÇÔÀÖS¦öğ6z\\CF­4äí+]êv2äÆí¦’tØ:nMÁ½>¤J>{%,ó\r\'gWO©z9•\Z›Æ²h§iç…ZQKÙ0±+JZ‹rÇÆ×UåŠ˜¨Ô[ÔÚOVØ©Êü®ÙãëÏ©bUèÅÙÕ…ıGy½š«í\ZF×uõ\\º”7wtSxu©ü,9Á%ùÅö’m\rÙìT›IÊ¥8-êÅz²ÚÄP”¬«Cí\n¯)?¥.¥µ*vÚ¬-ê5AmßBŞ¡;fàëªmê.ÕÄ9räyñ«MoŞAßÌ©×ƒß¼‡ÚiZO“!ÔÔr²1»êvO¼Vê;êVş±òÙ¸»)ø”)éwè[X\'nñ;÷°´ˆ´éê`s|V\Zn4ñxÊT¤­%B¢ƒ·›¶ç›Äy£•~X©„ÆC\r9÷q­:‘’s³vå~[“†«õ_}ú¯(Ë°ü<£û9•6¿ş“4Ç¸äåÆceÅÆŞè«\rO½­İîí±Iw-8ˆËÁÜ„Öó¥Ãù#V´kW­‡i8­ šåêhR6ş!ÎÖ+/•\';µNÉ{=ì·\'lğßí•”ËN:Ÿ©²¹][Á\Z¾\\ôâàüÍƒ¼J>˜åíÓŠû©ğ\n]bYM=¯È—4U¦×””–åq{n®cÆJÜÑS¨­»$Úş»ù©u¹Œ¦¹_™\\gÍ«kİæûSÚÜ°êÁşÖÄª°´¶J•¶%JÊş&2­’ÔOûCµ¼£-ORæ.ÚWñ<|^uKQ¨^nı/émOØ›òDÍ£ÎFÍ©ï«©1“Õg#ÊÀæ´q0ŞzeôLµŠ ½órS2•˜¤ÖÜÑ:íË™W‡¤¯:–+¡Œ£Q^/Ôn§qŸªŞ%PqäÕíâb,E>²!âi-Ü¶[²û©Û;¼]I×~F1T¦“„¶{¯Bµ^›ı¦ZZ2ûÖßˆïwz‹Pp’å)z2*T§ªqšKù|	»NâúŸTÏ7‹1\Z2*I»¨c!;xûTÍğÖõÕ×š5¾ Í¾_QS£uB;¤ü|JÌ»eÉf˜y:¦?êÔë´W‚6ÀĞUeÆÑï£¡í¿‰¬a¨Ê½hÂ=]™¼`gG\r†…IZş™íN9»ºöq(ÔÆj¥	S¥)/gSvF|e”Æ†U*NVZ§ìéF¼ñ”×)lGÊé®s)];‡5«–<:ùg«vÛŞÊÇ9[çZŞf,±´¯Î÷<\"Í]*\nyZSøÒ.ZV®e†¤ÚzjÛZû/EiIMJïÙß¡àJnNí¶ú‘Ê.éÙ£IÓŸ.M½˜¯jòñ=¯F•yF­’”vlÖğx—=§ÌËÖãf†WhvŞZS—æäœm¾ë™ê`jac˜S–!JXe-á¾Ÿ/yÏ²Üs£‰ƒ›öo»=¯Ëx(|¾Óƒ£ãfÄV£:ÍÑŠ§Om1]ÿ\0y™“ÔÁ:òü¡ŞJš†Ê“_8ÔhæØZŠğª¾Òìs|-\ZnzİàÒis^…|şIü!BİV†‰{VŞñõº±‹Ç`;‰B¾*‚Œ“MwˆÖkç˜,vN¦¨Î¥ù¼Tfö×¼“Mn–Ÿ¾æ—˜,¾£”°˜º”ÓİAÆéx-ÈÇŠï´^\\L|M8ÃQFIÁM¤ÓéĞö8s9N´ ›U–•Î<¿Xrš•Ó¿ïs/­†RĞìŸK\\é¾´ç™w·pÁc)c(FµÆTä®šv·‘äæœk“euûºµåVªvp¤¯oyÌ±¼QŒ§–\r7F57‡kšìªJ[ÉÜÊqöŞóê>ŸàÔò¼u\Z”±8Ê®i%Jœâ®¶=¼7`]:õ»ºÒ•Z²’²_1l—Ü|GRœõBN/ÉØÜxw´nTècÜjÑ^Î§i\"/í8óKíØ³t±X¹UiÙ7§–É·±OËV›(š>,ÁÔ‚’­tùmĞ¸¸—\n×õ›3I£o9[KÅ¾‰_ÍšGlY•(d4ğz­V¥U-Á_s6§a”\\UeÎç0ã\\îYÖs:×nœVˆ\'à[Lù3’<HİÏngQì¯!¯—R©Æ\'	×‚„ öi^÷g‡Àtğx*‰Qym%óQ·.%¢·Œ÷óin7ña«å[æˆñl4)F4Æ6MÆíú³6Ïñ8ÈF8ªªa}1ùª&šøš”¹Kìf›Ç¼U[QapõZ¥œ—Vg­ÖùrHè84É0u4UÇ)I;~m^Æ-Ló$ÎñpK1M(ì’ißÓ©ÅİFß6#9\'tìÑ7l/;®gx<\ZJxJÓ›¾ñ’ä\r:Ÿœ»‹]?‡sÇ‹Ë^ïR›V•÷h«˜a°Ñn¬ùò]L<lº[ÊYµÚéEÊÎñ½®7:•°<Ú,Ë?Ã¹[DìºÜóñ™œ±TªAÁ(ŞêÆ˜ãvÏ,¥yl™^×}H[¿RıwMÓ££›KÔİŠ¬±jÆÃÈfqÓŒÜ÷.ä³PÅ6ÕÛ2œêjxÉ4—B?iı0ÌÌ&3E\n”ª6Ó‹Q0âµl‚V{“¥^ÎS%òd¥Ñ³:2Œ]Ï/+«O»îå´“¿¸Î…H.F9NÚb¾å¯—2Ìİè—Z1kıKxŒL)ÒÕ?W\"J¿I¾û\rK«<ÚùŒ¥µ8éE8||”­Qİ2Ş5_(ôî›\nyn2Œâš|ŠHÆ7“Vó¦üù‡-­¹o¼‹WRDë‹[KÖÄ	Ô–Ì¥Ë«äŠjU§íKn…0¯Fm¥=ÀªOÀ‹¦¼º•8Çš‘KIõ$5Û»º^!Ù.cks‰Õ~bÿ\0³¹\nÖH©¤º²‹´ı¢\\¼HN	nÙK­Am)´z®¼ƒ•Ñv…ˆª4êÔ^0DVî¨;VÕ`13\rS¤Ò]O5ìz¸ú¸“.ê¢”›½¼)îÍ1W%(»)R“|îZ.ÒK¹›ëbÊ-t˜˜)A·¿ÄÜ23Åe˜zt0˜L#é¿wíKÍ³R£Iİ4­â^³Jñ”[õ)”ÚeÓp«ÚaRMÎ–¶íó?æaWã\\}HÅ5‡´VÛyšÔµ\'¼’÷”8Ïö¤¾Ò\'ZçkŞ|[îå	F””÷‰ÏkVŠMGWV¶<ÙAòºØ‡äZc«Ï96İƒÇUò1ìÓ°qeºñu6Š]y¾¥½6æ4»][©7ÔòE6d%p+ï$Æ½÷(a‘)(SÙßQeÉ¶C·@À¹I¥\'rjY?À´¤Ñ:¼@¹JiI‘¨¤ŞóÏM§±“B¢±Z´dBD®|şë–“´®¾Ã!Vnš¡³çmÙE™YSÃº­b[IBZRŞò¶Ş›—i7†¨ä¥)lÑçë³öl]†*PV‹\"¦Xö#†ŒéwÛ[›<Œë	8ÅT…ô­™ZÇÖVj«E1Ó¥V¢m«;‰5SlxÒo¡MßRæ\"\Zdíº|‹]\r™P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ì\0/RÄNĞv(«9MŞ[”XX1v!ÖàeC]%¦L¸«âZÚOì1£ˆ’V\\Œ¼-jµG¥$EÚûñmí©”Î¦/«š÷•<]9jÑ%e¾ç™˜c¥Rn0v‘ìÚÅJõ\\š”¾ÒÔ–ÖæC ¶´®ËobQ\0!Rn/b¨Uœ^Í–ïµ€Òv¿òš¿J_iÄÕjÚ™d.cFÕ¹¶îÛ¹4ëNÙl¢ÂÃFÙ3ÄTqML£å5>“ûKq¨mvu§?&Êiİ;‹\r_X™¥fî>U2À#PÚÿ\0Êªx•Tñ,¼ĞÔ6½òš¯¨ùUUÔ³Ô2MÕ×ˆªßÏe_*©nwf8\Z6É¥Œ©­Ïj¯Î¦MOV.j7ºmÙxX×#Ò/k’©&ôÛĞ§[ı–C·DCJ×@U9Ê[ÊM”İõ rœœguĞ¾ñrÙß~¦-ì‰Mxn5ºËX¹İY‡—\'#\r²¡ºÎXÉ.Rd¼límV0Pw{‘£u™òÙô™_Ëd—·#ÏClùco+Fş¡âæ¢¬ö0\n Ú\Z6ÌXÙ­¯Ì<tôµµÌIYòEFÕÍêİ½ÙIs$WNr„®ºÊ¼Ü¯ªÌµÔXW*’–òm•R¯:Nñv,ØXeü¾½şq5qõjÇCv]laØn³ğ™|5J5-NRRq²wkÏš=,¿‹³L¾*8<K§šJ>f¾È½‹\'ÊÆÙ?ÏbœÆ­ßš_çç<U›f”>O‹ÆÕ©I»¸¹lÙáóæ@Êîhóª›vÜ¥s\0…YZï\'8óäd~S¬öMy!;¬Ùfu×í}„~Q¬ùÈÄWObdÜ·—Àƒu’ó\ZÍó_ab½iÖ•æî[\0Ùb,	O£M)išk¡‘e[îãoCk“a¤í‘[RªÚéyR}YKå·\"²ğ˜š´p~¥rÇ×TåKU¢ít¯kÿ\0Ó0“Ü64†jÌkªNš“PoSİ›årÏÊfŞÖÜÇF†SÅN*ÖØLq“ğ‚÷­ìN×kTïf›û¶(¨¢¶éuñ\"Nä=ÿ\0Ğ!s“‡ÅT§)û‹ĞÌëCfÓ0R¹:|Æ“-Œê¹Z”\Z“[˜+Ÿ‰\r4-Û:–?e%d¼0š^Ô·ğHÁRÓâ[wo˜ÖÓ2±éK3•­	%êŒ\Zò•Fç-ïÕŠ”šôh·h|ˆ*it&\ZVò÷ªş¬ğîUÛX³Z¬ªÉÊmİîU]Ş).\\Ë \n¡&•“²e;[Ì2Ûna«$Mï\r>=ùx]\Z²¤Ûƒ³°¯=rÔ÷mÑTS{ô Ú•Ğ“MÜ^Ïbu+Y¥êBN2MsE÷Š¬·r{–-w±:[ht.,MW/Ê±•š‹•ì·õ(…7Ş«‘[çÊï©Ø\\À$^£RQZT­b*Õ”ß´ÛK‘isBu>ŒªIAŞ-”\0.â+w²O’H¶ä\0.S­(ònÅ)«âXÚãC%bê®oî!âj.¨°ä¶º!¡wåU,·)šİ2Ï=¬‘)/5ÉWœ—2İÊ•svKÅ”Î\Zy;úĞ¿…Æâ0É÷gù¥+ÔÄN¬›©-Mõe‚amkUí}ì4*r^¦şì_Éõ¯“jQ·í\0nO¡\0	équ~Dt\0W\r>ó2…:S4å$œ¬ì`Å\\­ê¬ß¸‹±›eÙ~\nTq“¨ßK#Æm]Ùı¤Êr’´ÊeËa6Úİ„İ¬E‰Œu2DÇÃ©qQë)Åz–ŞÍé)¾à_t şmDıKsƒOur„÷.:²p³û@¢ÏÀÑ:ïrdî¼\0¤\0\0¶ğ7ñäCò\0Jl€Z›\\Ê»É.¥½À;Ùøú~%°4.wÓñ)so›!4%»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0µ¬CŠKÌ\nBæMˆ`T¥%“v|ÑH\0\0\0\0\0\0\0\0\0À\0\0\0\0\0À\0€\0-€\0À\0	‹±\0\0%w`\0©ÇÍ°\0\0\0\0\0\0sûX	–ì€\0\0\0£~A[Ş@îˆJÏ ‚dˆĞ\0\0\0\0\0\0\0\0\0wÔ€»X€\0\0\0\0\0\0\0.`\0¸`\0\0J·Rc+rE ®§³ËrÓM(?qS‚·Î„út„¢Ò» \n¤ïR\0\0ow¸	ÛvUVMr!Fû7b%\'.l€&Q·TÈ¶ÚÜ\\ÊæÓŠkgÉ”\0™UÖ†ºÜ¤\0\0\0	°¹p*Œ·Ü‰G{¢vl´ù”•M¹€\0 \0\0\0\0\0\0%[Ş\0\\\Z‚Ş7}\n©MË›dE´ö X	’]9KÙ\0\0\0\0\0\0lV¥u¹@@VâŸÍ(*VD;\0X\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[°J»ÆÛ”»_b‘`%²\0fL¬È˜\0J{’Ó\0\0\0\0\0\0\0\0\0\0KÀ\0`\0”ì@­Ÿ©KV\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0AÀ/2\0\n´Ú7dB×ÜIßvá6@â´—-Ê$šd\'fWQ¦•€£ \0\0\0\0\0\0\0Ê›Ô¬Öå \0\0…°\0\0\0\0\0\0U²[s)@	wd\0JNÖèCÛb	vÒ¼@€\0\0\0\0\0\0	@@+§\rH©:k`-\"w³/Ç»¾ïÜTÔÑÕJ2i.E\0İ€J+Ä¥«0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”ìC\0›2¨-›|Ğ¢•äß¢\rÇöWÚÊ\0UuàCò \0&<Èd¯š0UŸ6KæM.ì€\0.dÊ-s\0\0	–Û\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0ª\"Mù\0\0\0\0\0\0\0\0\0\0\0\07ÔC€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0Ó`\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\Ê¢¢¤®Ê@\';«GhÜ¶\0\0À\0{€\0\0\0\0\0\0\0\0\0—R\0\0\0\0\0\0\0\0\0\0\0\0\0Ì›ø\0›ùˆ\0«Oš!«U4€¤;>\\ÊX\r­æJæ@¦ú€\0\0\0_k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ğ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÚŞ`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÿÙ',108247),(18,5,'foot.jpg','ÿØÿáExif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j(\0\0\0\0\0\0\01\0\0\0\0\0\0\0r2\0\0\0\0\0\0\0‡i\0\0\0\0\0\0\0¤\0\0\0Ğ\0\nü€\0\0\'\0\nü€\0\0\'Adobe Photoshop CS5 Windows\02012:09:22 19:31:52\0\0\0\0 \0\0\0\0\0\0\0 \0\0\0\0\0\0ö \0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0&(\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0Ğ\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ÿØÿí\0Adobe_CM\0ÿî\0Adobe\0d€\0\0\0ÿÛ\0„\0			\n\r\r\rÿÀ\0\0\0 \"\0ÿİ\0\0\nÿÄ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q2‘¡±B#$RÁb34r‚ÑC%’Sğáñcs5¢²ƒ&D“TdEÂ£t6ÒUâeò³„ÃÓuãóF\'”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷\05\0!1AQaq\"2‘¡±B#ÁRÑğ3$bár‚’CScs4ñ%¢²ƒ&5ÂÒD“T£dEU6teâò³„ÃÓuãóF”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö\'7GWgw‡—§·ÇÿÚ\0\0\0?\0ë¾ËÕ>Ûsì®ÃHc[X\0™|½×ØL»ø=®Dû>_ú?Í*ÿ\0Z»ëOÇıV=¬;ÎH¿|é³Òm>“šİÏı/óŠŸ[}xÊÆÇk âéŸnáeÖlßô7ş—Óşf«?E“/‚ò§ROàÛä¿t0û>_ú?Í)Wƒ·ƒàAOÔrú˜ê=+í­­ÏvFP¡ûlÛS?F×U¸~ªÜ—~Şıÿ\0¡¯ü*%¹Ù“µüüÕlÿ\0\rå1VäŒ¸³Îwé\0³¬0ó´ÇDõ¸ÜH¦l-ÁºÄñ*–n@>Ë¸}ûò](WÔ=7´°X{Ùÿ\0TÏ-Ëô‹`ñV [rë=\r¾¿è·NİşÙbP¾Ù1ë2~+S?¼ÜcCÎ×}*ìäµÃ‡ä×1vF=@ØîÑ¨>mrÆÜÃ11®’ììO®5§ŸPjß¤E\'‹÷ª9·àZ]Q–»ùÊô]ıoİwòÖÁ£¨0etÒ+kÒù®üçVGîşãQ¶´öLõ|§i~É/QuÒ)Í±»h˜%LÓ55<Ï´­\\\\jñiW¨åÎ<¹Ç—¹ªd}Ÿ×L=ãÓ¯úÎÓş‹}êO¹`ÌX>ğLøcDĞ· äT´	F^àÚŞA+ÆGx:®º[EmıÖ4}À&G•ÂnàËš~Ø.û¹^Gú\'ÿ\0šUq™Œxµ‡æ·.~Êóù­qû\\5{È	ĞJ–Á V	€’*©ßmÌwÑpwÁµŞÿ\0¡[ğ¬*rGk¹Ü€–V;Ä˜oñáO‹“åfh‚“;\0[¿gËÿ\0Cgù¥;qó7\r´Ø\"Çwæ­|‘s9Õ[Wcğ^TÑş\rIs“\ZÿĞõCÂ€ÿ\0X_,¤¢Êı1Ôœ«ù¿¢şœæ¿æ¿àÿ\0ÓÖV._~³Êğ–?;üáú7ùO•ö«şŸ~?9çªçùÆ}§ô‡ó_ğŸº¼m%U½ÑúeÜŸŠwôG3Ïı©úùÒùµ$ĞæÃxù¾íOóãúöşÉtìú\rãô~ö?’¾bIK‹«\'5¼_§ÂÅúÇô±ùüÿ\0êşoş¾zII?±òßÎÇëÿ\0Eö»~øŠì»€ãà¾bIG¬üçè…ÿ\0rı)Ô? äÿ\0Ä¿ş¤®Jïæ‡<~gÆQËuÜ§Ë/7ÖİÍ|ò8ç•géÿ\0wÅxÚJXnØÏÑùÑôş|qÙnÊÉ-Î[äNFœ¿ÿÙÿí6Photoshop 3.0\08BIM%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08BIM:\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0printOutput\0\0\0\0\0\0\0ClrSenum\0\0\0\0ClrS\0\0\0\0RGBC\0\0\0\0Inteenum\0\0\0\0Inte\0\0\0\0Clrm\0\0\0\0MpBlbool\0\0\0printSixteenBitbool\0\0\0\0printerNameTEXT\0\0\0\0\0\08BIM;\0\0\0\0²\0\0\0\0\0\0\0\0\0\0\0printOutputOptions\0\0\0\0\0\0\0Cptnbool\0\0\0\0\0Clbrbool\0\0\0\0\0RgsMbool\0\0\0\0\0CrnCbool\0\0\0\0\0CntCbool\0\0\0\0\0Lblsbool\0\0\0\0\0Ngtvbool\0\0\0\0\0EmlDbool\0\0\0\0\0Intrbool\0\0\0\0\0BckgObjc\0\0\0\0\0\0\0\0\0RGBC\0\0\0\0\0\0\0Rd  doub@oà\0\0\0\0\0\0\0\0\0Grn doub@oà\0\0\0\0\0\0\0\0\0Bl  doub@oà\0\0\0\0\0\0\0\0\0BrdTUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Bld UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0RsltUntF#Pxl@R\0\0\0\0\0\0\0\0\0\nvectorDatabool\0\0\0\0PgPsenum\0\0\0\0PgPs\0\0\0\0PgPC\0\0\0\0LeftUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Top UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Scl UntF#Prc@Y\0\0\0\0\0\08BIMí\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\08BIM&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?€\0\08BIM\r\0\0\0\0\0\0\0\0x8BIM\0\0\0\0\0\0\0\08BIMó\0\0\0\0\0	\0\0\0\0\0\0\0\0\08BIM\'\0\0\0\0\0\n\0\0\0\0\0\0\0\08BIMõ\0\0\0\0\0H\0/ff\0\0lff\0\0\0\0\0\0\0/ff\0\0¡™š\0\0\0\0\0\0\02\0\0\0\0Z\0\0\0\0\0\0\0\0\05\0\0\0\0-\0\0\0\0\0\0\0\08BIMø\0\0\0\0\0p\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\08BIM\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0\08BIM0\0\0\0\0\0\08BIM-\0\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0@\0\0@\0\0\0\08BIM\0\0\0\0\0\0\0\0\08BIM\Z\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0\0ö\0\0\0\n\0U\0n\0t\0i\0t\0l\0e\0d\0-\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ö\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0p\0\0\0\0Rghtlong\0\0ö\0\0\0slicesVlLs\0\0\0Objc\0\0\0\0\0\0\0\0slice\0\0\0\0\0\0sliceIDlong\0\0\0\0\0\0\0groupIDlong\0\0\0\0\0\0\0originenum\0\0\0ESliceOrigin\0\0\0\rautoGenerated\0\0\0\0Typeenum\0\0\0\nESliceType\0\0\0\0Img \0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0p\0\0\0\0Rghtlong\0\0ö\0\0\0urlTEXT\0\0\0\0\0\0\0\0\0nullTEXT\0\0\0\0\0\0\0\0\0MsgeTEXT\0\0\0\0\0\0\0\0altTagTEXT\0\0\0\0\0\0\0\0cellTextIsHTMLbool\0\0\0cellTextTEXT\0\0\0\0\0\0\0\0	horzAlignenum\0\0\0ESliceHorzAlign\0\0\0default\0\0\0	vertAlignenum\0\0\0ESliceVertAlign\0\0\0default\0\0\0bgColorTypeenum\0\0\0ESliceBGColorType\0\0\0\0None\0\0\0	topOutsetlong\0\0\0\0\0\0\0\nleftOutsetlong\0\0\0\0\0\0\0bottomOutsetlong\0\0\0\0\0\0\0rightOutsetlong\0\0\0\0\08BIM(\0\0\0\0\0\0\0\0?ğ\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0ì\0\0\0\0\0\0 \0\0\0\0\0à\0\0!À\0\0Ğ\0\0ÿØÿí\0Adobe_CM\0ÿî\0Adobe\0d€\0\0\0ÿÛ\0„\0			\n\r\r\rÿÀ\0\0\0 \"\0ÿİ\0\0\nÿÄ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q2‘¡±B#$RÁb34r‚ÑC%’Sğáñcs5¢²ƒ&D“TdEÂ£t6ÒUâeò³„ÃÓuãóF\'”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷\05\0!1AQaq\"2‘¡±B#ÁRÑğ3$bár‚’CScs4ñ%¢²ƒ&5ÂÒD“T£dEU6teâò³„ÃÓuãóF”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö\'7GWgw‡—§·ÇÿÚ\0\0\0?\0ë¾ËÕ>Ûsì®ÃHc[X\0™|½×ØL»ø=®Dû>_ú?Í*ÿ\0Z»ëOÇıV=¬;ÎH¿|é³Òm>“šİÏı/óŠŸ[}xÊÆÇk âéŸnáeÖlßô7ş—Óşf«?E“/‚ò§ROàÛä¿t0û>_ú?Í)Wƒ·ƒàAOÔrú˜ê=+í­­ÏvFP¡ûlÛS?F×U¸~ªÜ—~Şıÿ\0¡¯ü*%¹Ù“µüüÕlÿ\0\rå1VäŒ¸³Îwé\0³¬0ó´ÇDõ¸ÜH¦l-ÁºÄñ*–n@>Ë¸}ûò](WÔ=7´°X{Ùÿ\0TÏ-Ëô‹`ñV [rë=\r¾¿è·NİşÙbP¾Ù1ë2~+S?¼ÜcCÎ×}*ìäµÃ‡ä×1vF=@ØîÑ¨>mrÆÜÃ11®’ììO®5§ŸPjß¤E\'‹÷ª9·àZ]Q–»ùÊô]ıoİwòÖÁ£¨0etÒ+kÒù®üçVGîşãQ¶´öLõ|§i~É/QuÒ)Í±»h˜%LÓ55<Ï´­\\\\jñiW¨åÎ<¹Ç—¹ªd}Ÿ×L=ãÓ¯úÎÓş‹}êO¹`ÌX>ğLøcDĞ· äT´	F^àÚŞA+ÆGx:®º[EmıÖ4}À&G•ÂnàËš~Ø.û¹^Gú\'ÿ\0šUq™Œxµ‡æ·.~Êóù­qû\\5{È	ĞJ–Á V	€’*©ßmÌwÑpwÁµŞÿ\0¡[ğ¬*rGk¹Ü€–V;Ä˜oñáO‹“åfh‚“;\0[¿gËÿ\0Cgù¥;qó7\r´Ø\"Çwæ­|‘s9Õ[Wcğ^TÑş\rIs“\ZÿĞõCÂ€ÿ\0X_,¤¢Êı1Ôœ«ù¿¢şœæ¿æ¿àÿ\0ÓÖV._~³Êğ–?;üáú7ùO•ö«şŸ~?9çªçùÆ}§ô‡ó_ğŸº¼m%U½ÑúeÜŸŠwôG3Ïı©úùÒùµ$ĞæÃxù¾íOóãúöşÉtìú\rãô~ö?’¾bIK‹«\'5¼_§ÂÅúÇô±ùüÿ\0êşoş¾zII?±òßÎÇëÿ\0Eö»~øŠì»€ãà¾bIG¬üçè…ÿ\0rı)Ô? äÿ\0Ä¿ş¤®Jïæ‡<~gÆQËuÜ§Ë/7ÖİÍ|ò8ç•géÿ\0wÅxÚJXnØÏÑùÑôş|qÙnÊÉ-Î[äNFœ¿ÿÙ8BIM!\0\0\0\0\0U\0\0\0\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0 \0C\0S\05\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0ÿá\rĞhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmp:CreateDate=\"2012-09-22T19:31:52+03:00\" xmp:MetadataDate=\"2012-09-22T19:31:52+03:00\" xmp:ModifyDate=\"2012-09-22T19:31:52+03:00\" xmpMM:InstanceID=\"xmp.iid:44740804D304E211A390B55F5B901458\" xmpMM:DocumentID=\"xmp.did:43740804D304E211A390B55F5B901458\" xmpMM:OriginalDocumentID=\"xmp.did:43740804D304E211A390B55F5B901458\" dc:format=\"image/jpeg\" photoshop:ColorMode=\"3\" photoshop:ICCProfile=\"sRGB IEC61966-2.1\"> <xmpMM:History> <rdf:Seq> <rdf:li stEvt:action=\"created\" stEvt:instanceID=\"xmp.iid:43740804D304E211A390B55F5B901458\" stEvt:when=\"2012-09-22T19:31:52+03:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\"/> <rdf:li stEvt:action=\"saved\" stEvt:instanceID=\"xmp.iid:44740804D304E211A390B55F5B901458\" stEvt:when=\"2012-09-22T19:31:52+03:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\" stEvt:changed=\"/\"/> </rdf:Seq> </xmpMM:History> </rdf:Description> </rdf:RDF> </x:xmpmeta>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xpacket end=\"w\"?>ÿâXICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ Î\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0„\0\0\0lwtpt\0\0ğ\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0Ä\0\0\0ˆvued\0\0L\0\0\0†view\0\0Ô\0\0\0$lumi\0\0ø\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0óQ\0\0\0\0ÌXYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïdesc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0¤ş\0_.\0Ï\0íÌ\0\0\\\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0Wçmeas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ğ\0Õ\0Û\0à\0å\0ë\0ğ\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáğş\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\u§ÀÙó\r\r\r&\r@\rZ\rt\r\r©\rÃ\rŞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îğ4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·İ\Z\Z*\ZQ\Zw\Z\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ğ!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"İ#\n#8#f#”#Â#ğ$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ğ**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/ş050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e44Ø55M5‡5Â5ı676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEŞF\"FgF«FğG5G{GÀHHKH‘H×IIcI©IğJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OİP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbğcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qğrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰şŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿfÎ6nÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒ@®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ı§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ğ­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ğ·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ğ9ĞºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠİİ–ŞŞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéĞê[êåëpëûì†ííœî(î´ï@ïÌğXğåñrñÿòŒóó§ô4ôÂõPõŞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ı)ıºşKşÜÿmÿÿÿî\0Adobe\0d\0\0\0\0ÿÛ\0„\0		\n\n\n\n\r\rÿÀ\0\0pö\0ÿİ\0\0ÿÄ¢\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\0s\0!1AQa\"q2‘¡±B#ÁRÑá3bğ$r‚ñ%C4S’¢²csÂ5D\'“£³6TdtÃÒâ&ƒ	\n„”EF¤´VÓU(\ZòãóÄÔäôeu…•¥µÅÕåõfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷8HXhxˆ˜¨¸ÈØèø)9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêú\0m\0!1AQa\"q‘2¡±ğÁÑá#BRbrñ3$4C‚’S%¢c²ÂsÒ5âDƒT“	\n&6E\Z\'dtU7ò£³Ã()Óãó„”¤´ÄÔäôeu…•¥µÅÕåõFVfv†–¦¶ÆÖæöGWgw‡—§·Ç×ç÷8HXhxˆ˜¨¸ÈØèø9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêúÿÚ\0\0\0?\0ô­¯ÉkKbò~rõ§\'$ú3‡ö‡Úâ‘Ãƒê¯^Oë¦‹D$8¥ş•;—%˜ÕS{>)<İÀÖC’ÕtbB°%M\Z†´>$q…Ù»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]»v<\nìxØğ+±àWcÀ®Ç]¯¶ºÚA$.Q‡CşŞeiu9pOá“^Lbb‹%‹Ì&•<á@ºƒˆ+û\'“Qö/i¥=òT||\\?Ôıä¸xÿ\0ã®Z\ZÊ#üÿĞëÌÌÌXš“ÔçˆL<Ş´\nk#á²K|Å6Ÿ ßŞÀPO4&B	8‰ıTå™Z=0É–1?L¥êş«VYpÄ–ùOam	Õ.4ÛÙµ\r6YØK;úÕâª,óÇ_÷_¨®™¸íÉ	Æ0˜ÑòX½^9K…ÅÒF¬ƒcıÔ‰œ÷„ç»	]„®ÇÂWcá+±ğ•ØøJì|%v\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]‡ÂWcá+±ğ•ØøJì|%v>»	]„®ÇÂW`ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«±ğÕØøjì|5v>\Z»\r]†®ÇÃWcá«¹¥k³u,˜‰\0ö4ÿ\0ÿÑëuÏğ½ÕÇÂW‚ù÷Ìsy¢ŞK»ùnâòÈÃ¥h–\nZçP’ ­<ÓSì[ÃË‡úßëggÙÚ!§<19«‹&Yıc/¢0şœ>£/‰¹¾áŒë~FÕ¼¿©yjÖm/«éĞƒZ”1´-àÑ²Ã+æ»CI–OŠx§õq9Øéå	@pòOë˜C{xupøJêãá+«„®®>º¸øJêãá+«„®®GÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÂ1+«‡ÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW„®®	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWW	]\\|%uqğ•ÕÇÂWÿÒëYæØÓ«ƒÂZy®±ú2)õ(4«[¹¬#½ˆ”Ç%º\\´\\×’¬£sR2?í||sw„Hğœ‚Qâş/çğq²õIÖäÂFÌ¿ÊÚi·-#«İê2Şİ˜ÇÄ“7\"¨üT|?å}¬×j§â_L#Áó\\¼8¸A¾r<IŞcA¹Ø|$»	]„®ÇÂWcá+±ğ•ÕÇÂWW#á-:¸øKN®>Ó«„´êãá-:¸øKN®>Ó«„´êãá-:¸øKN®>Ó«„´êãá-:¸øKN®>Ó«„´êãá-:¸øKN®>Ó«„´êãá-:¸øKN®>Ó«„´êâ1-;%á+±ğ•ØøJì|%v>»	]„®ÇÂWcá+«‘ğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–\\|%§W	iÕÇÂZuqğ–ŸÿÓí¾`ÒÆè¼jM´”(Ş›ƒœhè)Ø‚ôZ-PÉ\Z?ZU\\Öp;å•k¯Üêv2k{æ‰ïí:™}\Z_W—$’«4ax¾lN¶F$YÓ\'i@•†ešî1ÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ…]\\xUÕÇ…]\\xUÕÇ…]\\xUÕÇ…]\\xUÕÇ…]\\xUÕÇ…]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]\\xÕÇ]¦1i7_£&º1öxàTWlÙÃ³eàJdo·ÏÔëç«‹ıgÿÔõ,‘G,f9:6ÅNã¢¢H6§ò®ì[ƒŠöi˜G³páûdå\r~aü_îVÿ\0„´å“şòfæÿ\0²—üR”3;ìêwøKHşY?àñşLÁüßöRÿ\0Š_åßÎû#úşÒ?–Oø<“07ı”¿â—ùC7ó¾Èş§„´å“şäÌÍÿ\0e/ø¥şPÍüï²?©ßá-#ùdÿ\0ƒÇù3óÙKş)”3;ìêwøKGğ“şäÍ?óÙKş)?›ùßd]şÑÿ\0–Oø<É˜?›şÊ_ñKü¡›ùßd]şÑÿ\0–Oø<“07í—üR”3;ìêwøKHğ“şäÌÍûeÿ\0åßÎû\"×øOHğ“şäìÍÿ\0e/ø¥üşoç}‘wøOHğ“şònæı²ÿ\0ŠOò†oç}‘ıNSÒ<$ÿ\0ƒÇù7ó~ÙÅ ö†oç}‘ıMÿ\0„´å“şäÜÍÿ\0t¿Ê¿şå¯ğ–‘á\'üÙØ?›öÉ”3;ì‹á-#ÂOø<“°7í’ş7ó¾È­>SÒ<$ÿ\0ƒÈÏÁüß÷Iüşoç}‘ıM„ôŸå“şû2³ Ãüß÷L¿?›ùßdVËå}%#fJüßÙ‘:,5ôÿ\0ºXë³õ¹K›AÓÇBÿ\0ğCúe\'I‹»í“5y{ÿ\0Ü©¶‹d:3ıãúd›wû¦cU“¿ıÊ›i6`ı§ûÇôÈ>>æCS“½¯ÑVÌÿ\0xş™‡r1“½¿Ñ6}™şñı2;—ó;ÔßJ¶ı—p~cúdN8w2\Z‰÷¡\'ÓÂı™_şşiÊÌ#ÜØ3K½$N¦«ıËÿ\04äxcÜØ2K½AšAşî¹?æœj=Ì¸¥Ş¤Ïp:NÔù\'üÓô÷2â=êFâè»ßîOù§äÙïXnnû\\6ŞÉÿ\04ãÄ;–ÏzÆ¼¼\0ÿ\0¤?üóNBÃ:=ê\'P¿ÿ\0––ÿ\0şiÁÄÕ-oîÍÌB[†hË\0ëHÅGÏDÉºg±èZs\"°.j+ö‡ôÇÄuU”\Z¿÷+¿@Xø¿üş™5üæNÿ\0÷.ÿ\0Øx¿üş˜ñ•üŞNöÆaã\'üş™!4~o\'û—/ØxÉÿ\0?¦2¿œÉßşåoèæqôé9\n7“½yõ}7S–Ü\\¸‹¬uXÎß>Œ¥ÛàŸAKLj¿òÖßğÍ|BÛÂÙÕõ^×mÿ\0üÑƒÄ)áwé}WşZÛş/ù£¯_¦5jÓëmÿ\0üÑˆWaÖµzívßğÍ<Bµ¬oK¶ÿ\0€‹şhÃâàpÖõ~¿[j©üÑƒÄ+Àªš¾¨ãíÿ\0à\"ÿ\0š1ñJ8Wş•Õ?å©ÿ\0àbÿ\0š1ñJğ®¶ÖuæWšvš!ö£ã¯Ò)A†ÜÙÆúT„4Né\'íFÌîÂ2º¬ÓÍŒîSOğı‡‹ÿ\0Áé“ãqÿ\07“½ÃËÖ¡ø!ı0‰ êò÷¤zæ}j†âÒâG€‰8ÆYGüW’RÃ›§Õñm.lnkD|IrôWŒóNWç«°@j\Züµ7üóFOÅ,¸W‹İ@ÿ\0ÇËÀÇÿ\04àñJğª}nûşZ_ş?ù§±§}nûşZ_ş?ù§ŒSÂáw}ÿ\0-Oú±ÿ\0Í8|bŠoëW¿òĞÿ\0ğ1ÿ\0Í8øÅßÖoOü|¿üóN>)Z\\\'¼ÿ\0–‡û£ÿ\0šqñJÓ¾±yÿ\0-ÿ\0üÓŠV“.é·Ú×ïf“êÉıãQO€<rÌr”“‹ªÏáÇo©•ÿ\0†´ŞŞ§üöfaˆîuËßşåßá½7ş,ÿ\0‚şÌDGrşw/û–ÿ\0ÃZwüYÿ\0ı˜xcÜÎåïÿ\0rïğÖ›ÿ\0Áf×$şw/û––´ßø³şû0påüî^ÿ\0÷--é¿ñgüödhw\'ó™{ÿ\0ÜµşÓûzŸğ_Ù‘¯%üæ^ÿ\0÷.[Ó{úŸğ_Ù“\0w#ó¹{ÿ\0Ü¥šş—ign†u‘›­AÛ¿PsU“€låisäœ’\"’ÿ\0¿ŞÍşiÌÌÍØY@Ü]Îgs¾æ‰ÿ\04åñË.¬ÀC5íøérÿ\0ğ1ÿ\0Í9?³áZoµùjøÿ\0æœ|R¼-­ö¡]îş?ù§¯\n§×/å¡ÿ\0àcÿ\0šr>1^ÑÜß<Š¢á÷ }˜ûŸõpøÅ‰Ï¢òîbBL„•!ÖŸ,ËÖe¾îWÿ\0‡tï?à¿³B9—¿ıË¿ÃºwŒŸğ_Ùˆ!œËßşå¡åİ;ÆOø/ìÃ²şs/û—‡tï?à¿³…üŞ^ÿ\0÷-‡tÿ\0?à¿³#¹7—¿ıËGËÚ}zÉÿ\0?¦SùÌ½ÿ\0î]ş°ñ“şL‡Oç2wÿ\0¹kü?aâÿ\0xş˜ñ¯ç2wÿ\0¹kü?c^²ÁéƒŒ§óy;Ü|¿b;¿üş™¯æòw¡µ\rŞ;)u•P²’A¡1€å4Ù‹S3 	yÑÖ5JŸô§ÿ\0‹şhÄd.ç…rêº¡ÿ\0¶ÿ\0‹şhÃâáZÚ¶ª×mOõ\"ÿ\0š0Œˆárêú¡47Mÿ\0üÑ‡*Ÿ¤õ?ùjoøÿ\0æŒD×…¥Õu.÷Mÿ\0üÑ–‚Ä‚ª5@ÿ\0ÇÓÀÇÿ\04dÌMªG¨^×â¹b?ÕşiÉĞîFıè´¸…~°ûû\'üÓˆ¹âïlÏs_ïßîOù§-Œ#ÜÖg.õXå”ŸŠwû“şiË(w ä—z-R¢¾«ÿ\0Âÿ\0Í9(á‡s–}ëÖ!ŞWÿ\0…ÿ\0šrÑ§ÇÜÀçŸz!-c4¬ÿ\0ı2Á¥ÅİşéÔdïDÅ§[µ*ï÷é’\ZL]ßl˜NNôLz=™êÎ~‘ı2cG‡ù¿l˜V^ÿ\0÷(„Ğ´ò:¿üş™1¢Ãüß÷L³/û•Uòşšz—ÿ\0‚şÌĞaşoû¦\'[—¿ıÊªùoK?ïÏø/ìÉÏÁüß÷LN»7û•EòÆ”{Iÿ\0ı™!ÙØ?›şéÍüï²*‹å] ö“ş%ü›ƒù¿î¿â˜ş7ó¿Üş¥ßá=ÂOø<“°7í—üSåßÎû#úşÑÿ\0–Oø<?É˜?›öËş)”3;ì‹á-#ùdÿ\0ƒÇù3óÙKş)?›ùßd]şÑü$ÿ\0ƒÃü™§şoû)Å/çó;ì‹¿ÂZGòÉÿ\0òfæÿ\0²—üRÿ\0(fşwÙÔïğ–‘ü²Áãü™ƒù¿ì¥ÿ\0¿Ê¿öGõ;ü%¤,Ÿğxÿ\0&`şoû)Å/ò†oç}‘ıNÿ\0	iË\'ü?É˜?›şÊ_ñKü¡›ùßdS¿ÂZGòÉÿ\0òfæÿ\0²—üRÿ\0(fşwÙÔ«–t˜_šÆÅ¿Êjäñè0ÀØ‹	ërÈQ’ié§G\nS6§Ë3gÿÕõN*ìUØ«±Wb®Å]Š¸àV±K°+UÅZ8-+	ÈÚi|fµ8AD—bJr6«IÊÉJGuçO,Úù×Ësê¦·x†K{CÔ*¢»Ù¯ìÿ\06dZ§g\"JP·¬Vî@Ê2\ZlÄ,¥NÙ)9`!äl¨É°;±ÊÌ™€¢Òß*2gMŠwÈ\'…p¸nù5áXä0öÈ™2/¹ˆ\ZÓ*2mŠU8*NØ8›ÂŸ!ÄÊ”ÙÅø8™\0 ïNøÚiA¥5ë‘%•--ï×¦––§L‰W©ù~èİé6ò·ÚãÄıd¢3!0é†Ú\\®¯ûx-[\rã„I\r7Zà)c~sÑı‡¯Ö{}Ôxù§7G›†TyškB7rné°h}±V¹\rğ*Úûâ«kôb®¨Å\\N*åb:UŒzàJğC|ñb©ÔöÒ	 s‹¸+¶”AY÷•¼Ş/XZ^ñz~îNÏ’ŒF«GÃê‹-Q—D:âÙ\0Š;\ZødĞÇµŸ+E?+‹?‚^¦>Çå”dÁ{‡?O­#i0»Û	¡”«¡ÆíP	o	‰PwÛñË/Sµ+À¦*ãÔSmO\\X«-)Šµ\\‘ZfŸ-ıÜpF6cñŸñÉF&Fš3e—¤XØÁgl°D (ê|Nl¡O=“)™²¯A“bŞD•j¾øÚ¶	ï‡‰]ZáVã\"Bº˜\0WR¸Uù¦Xÿ\0s4+V\'À×ë¥°]†\'rÂîï½CéÅ´}ÛÇ1±ã­Ë¶ŒPlİ²ÒÎ–Î¶œm\r5qVÃv8ÒªE#,ñ•ûA…Ó‚‘.OY„ÖÏŠÕ›ò1.e²2(oW*Ó²%V× É¾ØU£P´äRîø«G\"R„Ô[Á?ï¶\'åL¨òg‹êf«1\ní’HêÒ‡$†«Ó«CS&Å][o*±ØƒQ÷dã%¥Xæí–Ä…Ş &vó˜K\\Á(É\r¤´9x“Y¸î*2Á&²1ÊHËc6(¸¤;o–	µ˜£a”\ndÄšÌQQÌ<rØÉ¬Åşùp-d\"£›¦XÒ\\´²ÒL°\"ò@±!X6I‚ğp«xU¼Pì*ìUØ«±Wb®Å]Š¿ÿÖõN*ìUØ«±W`WaWb­`K°+UÁjÑ8-4´œ¥c‘%•* ¢}ğÛİpZ´N@”¥^h×­´.j:İÏ÷:}¼—@Mx) Pxœt>YÓÿ\0.u„½ò·æ.³ªJ|íæf	¬´Î€[ÈK·#öH~/åUørÓ>c¢\\ƒ˜‚LĞ\Z”¿\'€©Ì|óèß‚=Rç9Šdå\0‡r2£&`!äï•™64„åFM€!İòLÀYëĞõÊÌ“Â¨·@µÇ‰x[vV\\¯‰P7Qé%¶%(¹Œ©ÁÄÜ\r ^N8Û:Qi\rwÆÓJlŞ²Z^¸-ZåC¶ùZz®Œº9‹¼.@ùd]N¾>»d¿GÓ‹‚âq¦TÕr$«‰ÈÚÓÉq1!ÅC\nPzŒHWšyËAıxnaZÛLIØl­€w£Ô	Æ66ÍJxäÜÅ¼±W¾Ø«M×ZÅ\\zâ®S€ªàm×U8¡xqUèH FàÇÌ¼¿ç‰\"ãm¨üQôY»J3!Öê4¼Y½½Ä7	apñ¸ØŒ¼]D bhª¯\\˜,RıkEƒR‹†uŞ9=ü¶G&! ß§ÔœgÉ€êzEÕœ„K;×±÷1(Çbï1fŒÆÉui·L-Ö½^¢Ÿ(\\«]ü1Uà\n×Vëß ÅUí­¦¹•aÈÇe8€IÙ®s^‡¡èğiÖê Vf½ØáÅÂ-çõÎCä™²M.Â®È•[[vÃjŞ*åë„)qï„«[öÈ•yïœïe“Tx>Ìq€6ïšüÛÈ»İ01‚Ç¹\ZPånu´:Œ*ª\rò(\\?UOÇç’JÒ>ü*­d¾¥Ü(½ÜWïÈ–5õ„Q\0èªgO0y•À‚6úpÒ]‘!Z®FÓM\\–ˆÀ®ÆØºµÀY4r%£¶D¥i9U-óš=Ë/^ddß¦°ò&;œ!èóÉ+”â‡18AVã}è~ŒUWb+ˆ*¢\\†§ÜrĞXÒ zŒ°$+Å Â™+bB:9*ùbBıÉÛ-`B&\r²\\mf(ÈØdÄØˆJº3k1WIıòØÉŠ\";|º2k1DÅr+¶_5˜£áš£,j!’ûåÑ“Y˜äËAk!™`,DÆÕÛ$É%xÂ†ğ¡ØUØ«±Wb®Å]Š»ÿ×õN*ìUØ«È7ÿ\0ç\"4¯Ëo0Zè÷ZLú„·6ÂèIˆAvN$7ú•ÅU¿2¿ç ô$hº¦öRê?§âúÅ¼:£$\\r$Ö»·UæùÉ\r+Aò_•¼Òú<óÃæWÒ·YP4>“<‰Ù«^Øª}ù±ùÃeùya£]ÜéÒßbciªp!UªyV¿kRÿ\0Ì¯ÏıÉWv:TzuÖ³æ\rB$-2ĞU•$3¹«~Ê¢¾RĞÿ\0>HyÌ^j¼òÕöš|»ÄOcsDyKSd,ìö—Tf‘ùíå[Ë4óöª¥ØI$ÇjÄK3ÈŒT$aiÉšŸóV7Kò¯üäÛù“^Ó¬m<›ª&›©Ü%´\Z£\0cÛ&!}:/í~÷Š‚ô˜üÿ\0¥\r3XÔ¯­­ô‹Ùìlï4¿(İšVû	ö²’Ûo8ÌÚ•¦Şé²Z]êVsß<LêÆ‚Ÿ»z~Û>ÎF­I¤7–¼éæızÇOÔ òÔQiz‚¤©;ß!u‰ú1ŒGö©û<²r¦<ò·™ ó‰©Ml]9íä ¼RÄÅª¬3v¼­æ8üÁc=ô046©s5½´Aõ’àeZ~Ë8uÿ\0c.jóùÉÍ_+hNÔ<º÷^¾½©Ä#ŠÊİ•5ä¬Z}ÿ\0vŒ¢ŸÌß³–ã‰&ĞX·ä]‡›ÿ\00üãæOšc6ÚN“Õ|·d ¬ •àÍ\Z¶åUİŸ¶ÿ\0êáÈDE(}Ç0&Y„†âçÔ™Ú½öùf§eÏ„()VdØ“šÔeFL€Ps¶VdØÒ¬–a	%wÈÚÒL…³KÔ*r²¥d¸Øƒ‚ĞbÙ0Èñ-!.04ë‘lŠIy	l ¶‚ƒ,G^¹+eKY·ÁÄšXÍ.,qVWùyxRúkvj,«U_q‘\'w_¯…ÆÙÿ\0n¿F.¥¼²j˜-\\iLhb«”í–„>¡eí¬–ó\nÇ §ËÜc&xæbl<“\\Ñ®´«Ó¢±š˜Ÿ±\\ˆ.ÿ\0Q8ØKwÉ76®*Ùë°®*êıpZ[’*zàâVÂ5F6ªÉL‰(\\cÛ«h)×$\n¯®ØUİF\'>_ó\rÎ—p ±{fÙãş#$%N6£L27¥Xj·Ğ¬ÖîOP:dÆ@º˜åE7ËZ•İ¥µÔF)Ğ2•ê>Xe!E8ò˜/˜¼­5‘3ÁûÈ+¹î>y‡<f>çu¦Ö	ìy±áá÷äâ¬7í‹/,++á†I¥Xã^NÇá@,ÿ\0ËšiĞz’\0nœUòûÏÃŠ…—GªÔø†‡ÒöÌ‡\r¬.Â®ÅV²%V÷È2^2a±×$†ÏLm‚©c°QS€šQ¹yV³yõ½JiéÄ a¶jäl’ôøaÃ\0\r\\‹c`ä’½I?,UR´- ğÛP¦GQß$_JOS¶r*ŠŒXeõJâ?^gEæ‹xUØ$«TU¬É¾Ù+WTd\n´0ol%V6W&AhÈ*[æ)–-åœlVŸ~FNFš7<‰Ú¤‘’wáGzä•p8ªæÜb«9\0p¡]^»øäJT§ÆN%-‰È]òÛb¬ŒIÛ%Ä‚Öì@ä	bB-Z¦¸8˜ˆV¿|˜›Rà×èË˜«õN¹t$À‡-ÍNdDµ˜ª²2ø–²0]A\'.¨„ÚÚp@É	0!\Z“W.ŒšŒQ1Kï—Äµ‹Š]òàZÈFE\'L˜,E©®ù XA’bØÉ+x¡ØUØ«±Wb®Å]Š¿ÿĞõN*ìUØ«åÎİ\"/5şşƒ#‘\ZÈƒ¯ÇRÌ¿ğÃyÖ›5×ü«¨\\ßFÂÛÈ~YkHKoYŞR üèßğ¸ªaù†òÏÿ\08÷ù]wÄ˜-§¾†YEoX•æ¨ØŸÎTù‹CÖ4Ÿ\"ÚiW°ß\\Ir\'Hàuún¨ªOiÉ±	O?8ÿ\0+!ÕüÉ¦ùAóM¶ç:ÎÖ·S¬%–!HİZ¡£jò^Œ­‘µ¦)¤şmùŸÎ“ÿ\0˜š™}+GCµO÷%P%V›……˜ş_¶¸‘º¼ÿ\0ÍÜÊ‰ü¾Ñ›J‹P¾t©PæPG/šãˆæ½bySÍ¾E½Ñ´ÄĞõ#k,Q¥•´rÆ®\0QÆ1yP>ÎQ+l6³]CO×5?4ŞR÷ËºW˜5ŸNT©¶õd¡Ô+şìx›áÿ\0\"‰?kz(×YxdüÅĞg‰Ä‘Í£ê¦ «zd|ÉDPc#e	ùQ¤y³üå«¯ÓõÓ~«?ê°İñÚ?Rœöşoµ‘™İ\r¬êWW¾óv‘h?}¬zWºdı©ïÛĞ˜/¸˜4¸*éT?6<İ/ågå]¥¶Œ¦« ‹KÓ\r+ûöR^n=Y¶w§ûó!ñÉ7AóÎ¿ä-yCËÓk_˜Úœ×ş~Öb[«Iw…Ec%Óy?_|³ñeÑÈdj?J)õGå‡æO“|ç¢Gş¹¬c;›&OJX¨´ùM6eøs4e» Ê5K£ojhhïğ¯Ó×12äá\rø1ñIéß5æNÈz¹$ğ¶%$RÖ`~œ,€P‘Ğä	fò(;wñÈ’Ì!$^ßTKhCH´ÁÄÌ!½Fò,©¡w½	ÆÓÂ»ë+ÇÄäm‡œ+bÎ!)¹ˆ®ã[–I.$}ø¥¬ITnƒ|,õkiÙ|ÙÕP!ëêÁ2îàà·!Ø\n\\N»¶,]Šº¸ñ-:¾8SIv¹¢ÚêÖ 	÷rSu>Ç-˜3gÉåz—qay%¬êC)Øö#Äaâwøò	Saâf×¤ãr6üpÚWÅäœ‰*¬‹\\‚D#\n-i44Àšlxb¥ÇlUmEr@ªáÓ®I„~™ªŞiò¬¶ò¡©_Ù?1‹V\\Q˜¢ô=ÌÖš˜’\"¹î‡¿Ë2a’ötz$±ïü)Õj:eÖâ9£I£¯%n îC×|œµÅ€¡êĞÿ\0LÅÉ„NÓM¯å1He1Ê¥]v*v9Hv‚á|É<«J^F;(ÅŒˆË>òï—OO^z=Ëÿ\0Âæn5¹tš­WÃéO}ó%Ãn¸8•ØØB»*´äAdêa¥qÛ+°‚®ÄªUæK´¶Ò\'rÔvR±rœÒ¨¹\ZHqd/bIñ9„ôn#j”5ëŠ®|Uw-°R\Zäp¥i?~*˜y~.±l¿åT–7iÔJ ^¡Û3q¼6­W#\"­‘KTÈ–²7º»$®9µ\\\nÖD¥¢2%Xï%)¡?ùL«÷œst#ÖóúòNía^ø±X	$•Å«‘B×ß$ IhÔ=;bUQ”2à*œqoÓl™“\\iCÓ$‰G¦E*	©¶I.YıòA‰\r›:uË\"À†Ñ¦_.ŠçâÜıx,E	*Ë#&¹EZéß/j1M­.¶.&&QÏ¶Y5¢b›~¹‘5H#¡—/ŒšˆFÃ&ZQ	…»Õiá’¶²ˆ0X®É„7…Â®Å]Š»v*ìUÿÑõN*ìUØ«Æî¡üµµüÏ»óL–7Òy¢Îv³‘¹Ö#†²N±Ö†(×’ÿ\0­ËBÃ¤şShº/˜t¤\\éÚw˜mşµ~áêÒÄá™(Õ>kğÿ\0­Umí?)#ò\r¯’¤Ó\'ŸËó=ÓAmrÀË°!›™!‘‹·[ö›üŒ	I¼›ùoù#åiuEÒïV²™R(o¤úÒÇ%9rˆ\'Àå?Ù2à$ªÿ\0?ykòÏºå®©«Xjk7¶¾1ÆÁU˜5W‡Çö—#d%4ıùGåÍóòúßK-?SfƒUš\Z¼¬Ñ…uõerÌà¿Ë‘$óM+éZG’m?/#òı——¤Ô<¡<¦4ŠêhË™$rY2x°û_k dm/Ëÿ\0—¿“:µ¦yŠßKÔínâ¸‚æÛÔŸœÆì\\’>Ô*ÿ\0kıVÆS‘Ù@Gò÷›¼§m Éas–¡q-Å×ªœæ¹V‘Ç¦*x°Èˆee$6›¨ù?H{9\'°»³6Ïk¥‰&Y”ÅtéÊT;º•ÿ\0ÕÉ›-l“Kü²°Ò¢µ·±Öµˆ¬ìø‹{AwX‚!¨N%>Çµp%8Õ|«¢êšÖ•¬ŞB^ÿ\0Gi\ZÆJÊ¼[ı¯ò•²¢JX/ç®o,VóÚÓüµ­ZŞêt	j[„’0³+#ÿ\0­†¬w©yŸ<Ÿ£\\j¿˜Úî¹×õ™VÒëËwöçL–Hc>dnQ7ò¯úø#3é—ñ*aå/)iUÿ\0œ”¶¶òà6ÚuæŒ×z•Œdˆ¡.”ıV+ªÿ\06BYIÅrïOïeÕ¯ÚæàñÚ4ª ññ?Nh³eâ6í°báš\\]«˜æNE5ê‘2M.õ†ÛäIZ\\%ûğZğ®,¬7Øäm¥ å%˜CH£ ÎĞ“\r¼i‘%°%×\rM°[h@K!ÀØ˜º`w;bšT@õ8\nÒ”ÒÛ¶HÛ\'iXNI]Ëßj¤nı°%ê¾SÕVÿ\0G…Éıäc„ƒ½G|­ĞêñpÌ÷\'5¦-\rÒ¸«»b\\IV«.ıX«uÂ¥bòü\Zµ¸%Äuôäş#M¨8Ï“¸Ógµ˜Áp…x£Ä`wPÈ$,!ä´z}Ø[8”¤‘ôb ®‰i¾EJ ¦ôÉ¡c(\'¦A+JáHm”}8IÔƒ„+ Ó¶H* \0Œ(ríŠ•hg’HØ«©ª°ë\\X˜ŞÇ“;Ğ<å\rÈX/Ha°˜åĞÉŞéõ\ZãÉ”«µ<Ê‰u¥vI)>¿åë}Nh\\¨ø\\mSàrœ˜¯““¦Õg~K<½å¸´ÔÉGº?i»–8±Vå–«Tr\ZJ{şg2&òJìŠ»$­W\"­\ZÓl‰W\0{âWdÑÀR×\"\r%ÕÉ[ç}HÍx–hk#âÿ\0XæiYw}Ÿ‹†&]ìkÃSôeVçµNøRµ±U§nqWÛCuî1K†ß<U7ò¨®¹l‰©ÉC˜qµİ—¥íS™¥ç‚ÒMr¢—W«°ªÃ‘,šÊé[Én­‘)Zr$¥İ°Z´k‘’±o?Ì‹£údT»\nd:¹úú­æÕ äİËLAÅTØoŠµ^ığªâÁ…;àJÕÉÃÄ‘1ÄühEr<HVD®CdŠÓ¶6«Üv®L\"š\0‘¾I/riPrQ(¥]‡}ó 1¥ş©ã’\r,Ä7\\¸&6Ó†Xˆ|º2j”Qv÷4 ®XK{@Ë#&£lSo\\ÈŒšeÂ	‡dFM2	„eÑ“Q	´´aàzå–Õ ˜“‰k^2a‹uÉ!ØUØUØ«±Wb®Å_ÿÒõN*ìUØª_.ƒ¢É#É%Œ\r,„³Èc^D“SV¥w8FçË^¹™¦¹ÓàšV ³H«AJoû?äıœ•òyC‘]^Â,i 1©ä°Q©Û¢ğäIV×CÑ’ñ¯RÎºn³«ã_,¯å_-³»:nÜ™Â\0ÕëPFã¦@É@Vm\'Kõ„ßT‹Öep^\\ÙB¯^EUW—òä™(®‡£G#ÉœJÒ/E%z\Zt®VdÈS¡éR«	í\"‘UnETvâ›RÆE|ZË\\ÇgLÀ†uP*¡Û§L²É`Ôş^Ğ¦xäšÆ	\Z\"Le\ZMÿ\0<T©CšZ9iR?7ù‹Ë~_Ğnµ?2O¾‹ÂàÊ¼ÕÄŸ§À/Î´áÇ+á2;%âmÓ<½¨şRêº¿<ÕvZå:WÁ5¼lnb”bå={tJòôUÕ>Ïìe±±*İ‹Ğ¼µäİËOqo4÷úî¬‘¾©¬^0{‰@QÅ*¢F¿³j«šn¢ı=Í6+<HæÙ¬%Ù<ƒÂ™[\0CÈH4í%\n^¡®C‰•.\rµr<KJ‹?¿ßƒ‰iPÊë‚Øğ¨ÈEzàf•¼Nıò\r %×\rÔ~8@K¥8C0†R‡zwÉ%G™p¥²æò(k8ª™,1dì*ÖØ«$ò.­õMOêÒ\ZEsğfí“‡­ÅÅîzgÏğÈ:FòJã‚ÓMWµZdmZ®)l6Š]¶JÑH]GLµ¿‹„ëR>Ë÷,i<¦f©èSØ5[ã…¾Ìƒøø`·m‡P24ªkp:\r°¹\0¡\Z2¤àgkWítÂ«¶úr*²DğÅTKgAª×páµ\\+’´.ıxU­ñUE4Å¿Ê:Î­ë%±§´è_‡éËqÌ‚ë5¸!\\\\¤Î;Ëu\r‚r@«}1C\\±-×$«²LZ>9U¬C&ÀÂñ¥v*Õ{`´­#\"R€Ö5$Ó¬%¸}Ê…|IÊrJƒnG$¨<Âk‰\'Iå5w5\'ç˜D#Bœ¢£ç%º.6ªm…+OLULâ«•«×^öÅS¿\'D_\\ŒşÊ‚Ää¡õ[*Æ^‹]³.EĞ´Er+€¦º¸m\r\ZöÅ“»`!V“•–ğZ­Ä¥i9­‘KüÇsÎÖ:õÓîÇ\0æí{8lX;\rònÉ¢1V¸³tß¦—-«×}°¯$Dv£#Ä‹TôSl¶ê…ê2LTŞaĞbR\ZK’µÉ\0¨W¸cZe±j)-òlJe€®UÉi	5U«\\¾E5‡¡=rË`BµFJ2bB\"Ún&‡l±¤ÄIQQÓ\'0!tOñW.j1L­å\"›äÄšÈL ’´Ë£&©Æİöë™›IŠeo\'L¾2iL!“¦_Ó šA(hÁî690ZV2ĞQMƒ\\˜b¸d•¼Pì*ìUØ«±WÿÓõN*ìUØ«G\"–D«DäIJÂr²Y-\'+%!m	é)\\±¹ÜàØ •ôÂ·\\—¸a\nÑ8%%k*«Wšş}şZ^ùÿ\0ÈçKÓæj6“­İª¹\"9©ˆşeo‡ü¬·øJ‘o0ò—“üËeåTüº²Ğ.ô«‹¸ï|Å®jD2L¨êí\rªª(bŞšGËöW*Ôê#Q6†,ñc24ö·ˆƒä:g99^îŞ J.*2¢[Çs‘%˜CJ î2²ØÎ¤r%˜SäA­r²¦ıP:àµá[õŠwÁiáhÜƒßğ¡åœo¿\\Y€—Í ?!° ¤`NH2RaZkí…T¤C\\UJ¤bÉ£N£lš±U¦¿N6­vß_º:È›:š‚;H½µå­Yu-.9İ¨8J=ÆEĞj±pOÉ4\'Ã¶Ğ\Z®ùM:§® «·Å.À«pÒ[\n	Â\n\Z’(äR¡”õq„î€Hä’ßy^ŞPÍl}\'?²~Î3°¥»Ô´‹ËG\"HÎ¢£v8óÆCb”µU¶åœÅvß%ÄÔQaßK~X«bµÅ[0¡°kJuÂ\n“=?Ëú¥ı=X+~Û$-95‡2Êt¿!ÛÄVKé=W˜—ìåƒ{­ËÚíÊmíà·ŒG\nã²¢™t@ºR26U²ËcNÉ+xmZ¦ø±Aˆ*Øl±qé€«ºb»$‡cjÑ;Ó­cC\\	j»W ñÀJÛ\0ó´o.~©ıÄ[7»fIYwš-?³Ì±¾õÈ9ÊŠô4ÅWÔSl…6Â–ˆÅTÙ{â«w¯°ÅW†éŠ²!´gP›•9pørXÎî¿´~€Î»f[¦]ŠVœ¬¥nù\\2ÀÅÄà%!aÊ‹&‰È¥ªà*´äÑÅ/>üÁºMJ(ø¢]şñêíô\"6Äøòéß\'`ª¶¤òHWHd	[^QGL\n±¤ãQÓ\n¤óí¿l4´„šçß,JÈd©ß¾2\nÕÂÔ†%HB\nŸ§-´-?Û¦Hˆ·¹Ú™\0« äµpFJB…JŸ–^\ZD+UVE.Bj)×,`B>	~\ZLHEFzu¦X&ÖbŒ†MÆùh“YŠco\'MòØÉªQLà”S®_4Ê(ènwÌ˜™l7U¥e@´H&vw\Z6ZÒBd•=rq“YVh,W&ØÂ‡aWb®Å]Š¿ÿÔõN*ìUØÇ´r%+VR´©9Y•»€ï‘ \"ÜOa•™w&œ?ˆ\nêá3C±WrÁâ&ˆİ.&™+¦({«¡ø¹è3>qæÙq–ggrÎjNj2M—>\"¶il¨–à†|¨·‡“#l‚‹\n}=òf\nQÜ‹0…~•ÈÀ†•ÈÀÈ!äƒ×~ØYÒ‹]7JĞâSM+ñ¥¤4Ò“¹é‘¦A\nîC’	m\ZøPÙZwÅT6¯\\Y(n*º•Ş¸UËBp*¡€·AZàâR×¤êkLmSï\'ëM§êB7ÚŞàñqØÇ#\'W‡>oM v=ÆAÒ-ß	\\\r6Ä:¸’–\\U¬š]Š·ZdršáìJêW,bµ‘OP\r{‰	.¾òö™x¤I\n£uŸ	ÀİS8õIfò–†á–½›|iËh¡\'’5%j#£Æ´Æ›†ºŞPÖUŠúA‡ˆ?×\Z-ƒY½oø3Y¥L`¦¿ÆŠ‡Èš‹\nÉ$i^Õ$á¦¹v„:&6ŞAµZ‰ÙÏp»<-íĞ\'V>]Ò,èc€3ÚmÏã’ÄÉ©œ¹”Ñ\0U~;\r†]ã•Û}9`,¶,—’‹xm]„§wÉ+°+±µ¦Ææ¹ «‡]²L[ÅZ©ÅZ\'|Võ4ÀY$gÖÆhR=î%øW²<rŒÓ¡N^OÆlò:%™ù1İkîsß4Fş8ªÚĞï[\rÜb­×k|i8¥M…>œUc6ŞL»òö.WW2ˆ™ÉãºîÒ—¤uLËtÎ9U®¸Öø)\r%›«‚ÕØJ­a¶BA+	Êí-â«OL—˜y\'¸Ö®\\ö<~áâ§}§Û@­°Zm‘âoµ@ |°!d)\n\r2ù …–uñÜä€JY˜±ğÉˆ¥c\nŠá\rDôja*­^BFC’¡¤Z6ÕËJ]×n¸B#”‡¦Xy!3Š@PW| ì•9|¶bº#_£$Kt8ÚÒ&&¥+Û&$##jí\\˜,EFB÷Û.k!Â®Ãs—DµH\"VõÇLÉÆZd6÷d¶ç3 Z$kY‰¦ù|dÑ(¦ÖÓA¯N™p-2	ô3«¢°î0ƒM++W.‰bB ËAb»$†ğ¡ØUØ«±WÿÙ',26896);
/*!40000 ALTER TABLE `customer_temp_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_transaction`
--

DROP TABLE IF EXISTS `customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_transaction`
--

LOCK TABLES `customer_transaction` WRITE;
/*!40000 ALTER TABLE `customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL DEFAULT '',
  `mask` varchar(128) NOT NULL DEFAULT '',
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_description`
--

DROP TABLE IF EXISTS `download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_description`
--

LOCK TABLES `download_description` WRITE;
/*!40000 ALTER TABLE `download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension`
--

LOCK TABLES `extension` WRITE;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(446,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(411,'module','affiliate'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(430,'module','login'),(429,'module','cr2htmlmodule'),(432,'module','cart'),(433,'module','categorynew'),(439,'module','specialnew'),(438,'module','special'),(440,'module','latestnew'),(441,'module','welcome'),(442,'module','latest'),(443,'module','featured'),(444,'module','featuredalbum'),(445,'module','featuredframe');
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zone`
--

DROP TABLE IF EXISTS `geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zone`
--

LOCK TABLES `geo_zone` WRITE;
/*!40000 ALTER TABLE `geo_zone` DISABLE KEYS */;
INSERT INTO `geo_zone` VALUES (3,'ĞĞ”Ğ¡','ĞĞ±Ğ»Ğ°Ğ³Ğ°ĞµĞ¼Ñ‹Ğµ ĞĞ”Ğ¡','2010-02-26 22:33:24','2009-01-06 23:26:25');
/*!40000 ALTER TABLE `geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(8,0,0,1);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_description`
--

DROP TABLE IF EXISTS `information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_description`
--

LOCK TABLES `information_description` WRITE;
/*!40000 ALTER TABLE `information_description` DISABLE KEYS */;
INSERT INTO `information_description` VALUES (4,1,'Ğ ĞºĞ¾Ğ¼Ğ¿Ğ°Ğ½Ğ¸Ğ¸','Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ Ğ¢ĞµĞºÑÑ‚Ğ¢ĞµĞºÑÑ‚ ','','','',''),(5,1,'ĞšĞ¾Ğ½Ñ‚Ğ°ĞºÑ‚Ñ‹','&lt;p&gt;\r\n	ĞšĞ¾Ğ½Ñ‚Ğ°ĞºÑ‚Ñ‹&lt;/p&gt;\r\n','','','',''),(3,1,'Ğ¢ĞµÑ…. Ğ¿Ğ¾Ğ´Ğ´ĞµÑ€Ğ¶ĞºĞ°','Ğ¢ĞµÑ…. Ğ¿Ğ¾Ğ´Ğ´ĞµÑ€Ğ¶ĞºĞ°','','','',''),(6,1,'Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ','Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒOnline-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Online-Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ','','','',''),(8,1,'Ğ£ÑĞ»ÑƒĞ³Ğ¸','services servicesservicesservicesservicesservicesservice sservicesservicesservicesservicesservicesservices servicesservicesservicesservicesservicesservicesservicesservices servicesservicesservicesservicesservicesservice sservicesservicesservicesservicesservicesservice sservi cesservicesservicesservicesserv icesservicesservicesservicesservicesservicesse rvicesservicesservicesservicesservicesservicess ervicesservicesservicesservicesservicesservicess ervicesservicesservicesservicesservicesservicesser vicesservicesservicesservicesservicesservicesservicesservices ','','','','');
/*!40000 ALTER TABLE `information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_layout`
--

DROP TABLE IF EXISTS `information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_layout`
--

LOCK TABLES `information_to_layout` WRITE;
/*!40000 ALTER TABLE `information_to_layout` DISABLE KEYS */;
INSERT INTO `information_to_layout` VALUES (4,0,8),(8,0,0);
/*!40000 ALTER TABLE `information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information_to_store`
--

DROP TABLE IF EXISTS `information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_to_store`
--

LOCK TABLES `information_to_store` WRITE;
/*!40000 ALTER TABLE `information_to_store` DISABLE KEYS */;
INSERT INTO `information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(8,0);
/*!40000 ALTER TABLE `information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL DEFAULT '',
  `filename` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian','russian',1,1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Shop'),(14,'album');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_route`
--

DROP TABLE IF EXISTS `layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_route`
--

LOCK TABLES `layout_route` WRITE;
/*!40000 ALTER TABLE `layout_route` DISABLE KEYS */;
INSERT INTO `layout_route` VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(26,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(22,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact'),(32,12,0,'product/shop'),(54,14,0,'album/');
/*!40000 ALTER TABLE `layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class`
--

DROP TABLE IF EXISTS `length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class`
--

LOCK TABLES `length_class` WRITE;
/*!40000 ALTER TABLE `length_class` DISABLE KEYS */;
INSERT INTO `length_class` VALUES (1,'1.00000000'),(2,'10.00000000');
/*!40000 ALTER TABLE `length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length_class_description`
--

DROP TABLE IF EXISTS `length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length_class_description`
--

LOCK TABLES `length_class_description` WRITE;
/*!40000 ALTER TABLE `length_class_description` DISABLE KEYS */;
INSERT INTO `length_class_description` VALUES (1,1,'Ğ¡Ğ°Ğ½Ñ‚Ğ¸Ğ¼ĞµÑ‚Ñ€','ÑĞ¼'),(2,1,'ĞœĞ¸Ğ»Ğ»Ğ¸Ğ¼ĞµÑ‚Ñ€','Ğ¼Ğ¼');
/*!40000 ALTER TABLE `length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (5,'HTC','data/demo/htc_logo.jpg',0),(6,'Palm','data/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','data/demo/hp_logo.jpg',0),(8,'Apple','data/demo/apple_logo.jpg',0),(9,'Canon','data/demo/canon_logo.jpg',0),(10,'Sony','data/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_description`
--

DROP TABLE IF EXISTS `manufacturer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_description`
--

LOCK TABLES `manufacturer_description` WRITE;
/*!40000 ALTER TABLE `manufacturer_description` DISABLE KEYS */;
INSERT INTO `manufacturer_description` VALUES (5,1,'','','','',''),(6,1,'','','','',''),(7,1,'','','','',''),(8,1,'','','','',''),(9,1,'','','','',''),(10,1,'','','','',''),(5,2,'','','','',''),(6,2,'','','','',''),(7,2,'','','','',''),(8,2,'','','','',''),(9,2,'','','','',''),(10,2,'','','','','');
/*!40000 ALTER TABLE `manufacturer_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_to_store`
--

DROP TABLE IF EXISTS `manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_to_store`
--

LOCK TABLES `manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`material_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (4,'Ğ”ĞµÑ€ĞµĞ²Ğ¾',1),(5,'ĞŸĞ»Ğ°ÑÑ‚Ğ¸Ğº',2);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,'radio',2),(2,'checkbox',3),(4,'text',4),(5,'select',1),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',1),(12,'date',1);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_description`
--

DROP TABLE IF EXISTS `option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_description`
--

LOCK TABLES `option_description` WRITE;
/*!40000 ALTER TABLE `option_description` DISABLE KEYS */;
INSERT INTO `option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size');
/*!40000 ALTER TABLE `option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value`
--

DROP TABLE IF EXISTS `option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value`
--

LOCK TABLES `option_value` WRITE;
/*!40000 ALTER TABLE `option_value` DISABLE KEYS */;
INSERT INTO `option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_value_description`
--

DROP TABLE IF EXISTS `option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_value_description`
--

LOCK TABLES `option_value_description` WRITE;
/*!40000 ALTER TABLE `option_value_description` DISABLE KEYS */;
INSERT INTO `option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');
/*!40000 ALTER TABLE `option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `payment_firstname` varchar(32) NOT NULL DEFAULT '',
  `payment_lastname` varchar(32) NOT NULL DEFAULT '',
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL DEFAULT '',
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL DEFAULT '',
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL DEFAULT '',
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL DEFAULT '',
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL DEFAULT '',
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','asfasfa','q@q.qq','3152353','','asdfasf','asfasfa','','','','','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','ĞĞ¿Ğ»Ğ°Ñ‚Ğ° Ğ¿Ñ€Ğ¸ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞµ','cod','asdfasf','asfasfa','','','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','flat.flat','','105.0000',0,0,'0.0000',1,2,'USD','1.00000000','127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-01-30 23:10:52','2013-01-30 23:10:52');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_download`
--

DROP TABLE IF EXISTS `order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filename` varchar(128) NOT NULL DEFAULT '',
  `mask` varchar(128) NOT NULL DEFAULT '',
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_download`
--

LOCK TABLES `order_download` WRITE;
/*!40000 ALTER TABLE `order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_fraud`
--

DROP TABLE IF EXISTS `order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_fraud`
--

LOCK TABLES `order_fraud` WRITE;
/*!40000 ALTER TABLE `order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_option`
--

DROP TABLE IF EXISTS `order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_option`
--

LOCK TABLES `order_option` WRITE;
/*!40000 ALTER TABLE `order_option` DISABLE KEYS */;
INSERT INTO `order_option` VALUES (1,1,1,225,0,'Delivery Date','2011-04-22','date');
/*!40000 ALTER TABLE `order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,47,'HP LP3065','Ğ¢Ğ¾Ğ²Ğ°Ñ€ 21',1,'100.0000','100.0000','0.0000',300);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (2,1,'Ğ’ Ğ¾Ğ±Ñ€Ğ°Ğ±Ğ¾Ñ‚ĞºĞµ'),(3,1,'Ğ”Ğ¾ÑÑ‚Ğ°Ğ²Ğ»ĞµĞ½Ğ¾'),(7,1,'ĞÑ‚Ğ¼ĞµĞ½ĞµĞ½Ğ¾'),(5,1,'Ğ¡Ğ´ĞµĞ»ĞºĞ° Ğ·Ğ°Ğ²ĞµÑ€ÑˆĞµĞ½Ğ°'),(8,1,'Ğ’Ğ¾Ğ·Ğ²Ñ€Ğ°Ñ‚'),(9,1,'ĞÑ‚Ğ¼ĞµĞ½Ğ° Ğ¸ Ğ°Ğ½Ğ½ÑƒĞ»Ğ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ¸Ğµ'),(10,1,'ĞĞµÑƒĞ´Ğ°Ğ²ÑˆĞ¸Ğ¹ÑÑ'),(11,1,'Ğ’Ğ¾Ğ·Ğ¼ĞµÑ‰ĞµĞ½Ğ½Ñ‹Ğ¹'),(12,1,'ĞŸĞ¾Ğ»Ğ½Ğ¾ÑÑ‚ÑŒÑ Ğ¸Ğ·Ğ¼ĞµĞ½ĞµĞ½Ğ½Ñ‹Ğ¹'),(13,1,'ĞŸĞ¾Ğ»Ğ½Ñ‹Ğ¹ Ğ²Ğ¾Ğ·Ğ²Ñ€Ğ°Ñ‚'),(1,1,'ĞĞ¶Ğ¸Ğ´Ğ°Ğ½Ğ¸Ğµ'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1,1,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','$100.00','100.0000',1),(2,1,'shipping','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','$5.00','5.0000',3),(3,1,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','$105.00','105.0000',9);
/*!40000 ALTER TABLE `order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_voucher`
--

DROP TABLE IF EXISTS `order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_voucher`
--

LOCK TABLES `order_voucher` WRITE;
/*!40000 ALTER TABLE `order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(5) NOT NULL DEFAULT '',
  `to` varchar(5) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (3,'20','70',1),(4,'50','100',2);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `material_id` int(3) NOT NULL DEFAULT '0',
  `size_id` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (65,'4456','','','','','','','',1,5,'data/frame4.jpg',8,1,'466.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 16:06:59','2013-02-02 16:46:54',7,0,1),(66,'Ñ†ÑƒĞº ','','','','','','','',1,5,'data/frame.jpg',9,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 16:11:40','2013-02-03 21:06:15',21,0,0),(67,'Ğ¿Ñ‹Ğ²','','','','','','','',1,5,'data/Corbis-42-29243612.jpg',9,1,'253.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 17:45:58','0000-00-00 00:00:00',10,0,0),(68,'Ğ¹Ñ†ÑƒĞ¹Ñ†','','','','','','','',1,5,'data/big.jpg',0,1,'90.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:12:17','2013-02-05 23:17:29',130,4,1),(69,'hfg','','','','','','','',1,5,'data/Corbis-42-29965284.jpg',0,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:12:58','2013-02-03 10:11:03',2,2,0),(70,'5767','','','','','','','',1,5,'data/frame.jpg',0,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:13:47','0000-00-00 00:00:00',3,0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
INSERT INTO `product_attribute` VALUES (68,12,1,'Ğ°Ñ‹Ğ²Ğ°Ñ‹ Ğ²Ğ°Ñ‹Ğ² Ğ°Ñ‹Ğ² Ğ°Ñ‹Ğ² Ğ°');
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (65,1,'Ğ Ğ°Ğ¼ĞºĞ°','&lt;p&gt;\r\n	Ğ½ĞºĞµÑƒĞºĞµĞ½ĞºĞµĞ½ĞºÑƒĞ½&lt;/p&gt;\r\n','Ñ‹Ğ°Ğ² Ñ‹Ğ²Ğ° Ñ‹Ğ²Ğ°','','','',''),(66,1,'Ğ Ğ°Ğ¼ĞºĞ° 2','&lt;p&gt;\r\n	Ñ‹Ğ²Ğ°Ñ‹Ğ²Ğ°Ñ‹Ğ²Ğ°&lt;/p&gt;\r\n','','','','',''),(67,1,'Ğ¤Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼','','','','','',''),(69,1,'erwwe','&lt;p&gt;\r\n	dfgh&lt;/p&gt;\r\n','','','','','ght'),(70,1,'yutyu','&lt;p&gt;\r\n	tyuty&lt;/p&gt;\r\n','','','','',''),(68,1,'Umbra Mosh Fuschia Multi Desk Photo Frame','&lt;p&gt;\r\n	&amp;nbsp; Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ° Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ñ‹Ğ²Ğ°Ğ¿ Ğ²Ğ°Ğ¿ Ğ²Ğ°&lt;/p&gt;\r\n','','','','','');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_discount`
--

LOCK TABLES `product_discount` WRITE;
/*!40000 ALTER TABLE `product_discount` DISABLE KEYS */;
INSERT INTO `product_discount` VALUES (442,66,1,1,2,'321.0000','2013-02-01','2013-02-28'),(446,68,1,2,1,'120.0000','2013-02-01','2013-02-28');
/*!40000 ALTER TABLE `product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (2354,65,'data/frame4.jpg',0),(2356,66,'data/frame.jpg',0);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option`
--

LOCK TABLES `product_option` WRITE;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_value`
--

LOCK TABLES `product_option_value` WRITE;
/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_related`
--

LOCK TABLES `product_related` WRITE;
/*!40000 ALTER TABLE `product_related` DISABLE KEYS */;
INSERT INTO `product_related` VALUES (65,68),(66,68),(68,65),(68,66);
/*!40000 ALTER TABLE `product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reward`
--

DROP TABLE IF EXISTS `product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=574 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reward`
--

LOCK TABLES `product_reward` WRITE;
/*!40000 ALTER TABLE `product_reward` DISABLE KEYS */;
INSERT INTO `product_reward` VALUES (559,69,1,0),(556,70,1,0),(551,65,1,0),(553,67,1,0),(569,66,1,0),(573,68,1,0);
/*!40000 ALTER TABLE `product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_special`
--

LOCK TABLES `product_special` WRITE;
/*!40000 ALTER TABLE `product_special` DISABLE KEYS */;
INSERT INTO `product_special` VALUES (444,66,1,0,'300.0000','2013-02-01','2013-02-28');
/*!40000 ALTER TABLE `product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_category`
--

LOCK TABLES `product_to_category` WRITE;
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` VALUES (68,63,1),(67,66,1),(65,61,1),(66,61,1),(66,63,0),(69,65,1);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_download`
--

DROP TABLE IF EXISTS `product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_download`
--

LOCK TABLES `product_to_download` WRITE;
/*!40000 ALTER TABLE `product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_layout`
--

DROP TABLE IF EXISTS `product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_layout`
--

LOCK TABLES `product_to_layout` WRITE;
/*!40000 ALTER TABLE `product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_store`
--

DROP TABLE IF EXISTS `product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_store`
--

LOCK TABLES `product_to_store` WRITE;
/*!40000 ALTER TABLE `product_to_store` DISABLE KEYS */;
INSERT INTO `product_to_store` VALUES (65,0),(66,0),(67,0),(68,0),(69,0),(70,0);
/*!40000 ALTER TABLE `product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return`
--

DROP TABLE IF EXISTS `return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return`
--

LOCK TABLES `return` WRITE;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
/*!40000 ALTER TABLE `return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_action`
--

DROP TABLE IF EXISTS `return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_action`
--

LOCK TABLES `return_action` WRITE;
/*!40000 ALTER TABLE `return_action` DISABLE KEYS */;
INSERT INTO `return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent');
/*!40000 ALTER TABLE `return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_history`
--

DROP TABLE IF EXISTS `return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_history`
--

LOCK TABLES `return_history` WRITE;
/*!40000 ALTER TABLE `return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_reason`
--

DROP TABLE IF EXISTS `return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_reason`
--

LOCK TABLES `return_reason` WRITE;
/*!40000 ALTER TABLE `return_reason` DISABLE KEYS */;
INSERT INTO `return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_status`
--

DROP TABLE IF EXISTS `return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_status`
--

LOCK TABLES `return_status` WRITE;
/*!40000 ALTER TABLE `return_status` DISABLE KEYS */;
INSERT INTO `return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products');
/*!40000 ALTER TABLE `return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1987 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(982,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(656,0,'account','account_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),(93,0,'voucher','voucher_sort_order','8',0),(94,0,'voucher','voucher_status','1',0),(102,0,'free_checkout','free_checkout_status','1',0),(103,0,'free_checkout','free_checkout_order_status_id','1',0),(1947,0,'config','config_fraud_score','',0),(1948,0,'config','config_fraud_status_id','14',0),(1949,0,'config','config_sms_alert','0',0),(1950,0,'config','config_sms_gatename','testsms',0),(1951,0,'config','config_sms_from','',0),(1952,0,'config','config_sms_to','',0),(1953,0,'config','config_sms_copy','',0),(1954,0,'config','config_sms_message','',0),(1955,0,'config','config_sms_gate_username','',0),(1956,0,'config','config_sms_gate_password','',0),(1957,0,'config','config_use_ssl','0',0),(1958,0,'config','config_seo_url','1',0),(1959,0,'config','config_seo_url_type','seo_pro',0),(1960,0,'config','config_seo_url_include_path','1',0),(1961,0,'config','config_seo_url_postfix','',0),(1962,0,'config','config_maintenance','0',0),(1963,0,'config','config_encryption','515711997217bb8c619e05bca7a956d1',0),(1964,0,'config','config_compression','0',0),(1965,0,'config','config_error_display','1',0),(1966,0,'config','config_error_log','1',0),(1967,0,'config','config_error_filename','error.txt',0),(1968,0,'config','config_google_analytics','',0),(1972,0,'login','login_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:9;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1945,0,'config','config_fraud_detection','0',0),(1946,0,'config','config_fraud_key','',0),(1943,0,'config','config_account_mail','0',0),(1944,0,'config','config_alert_emails','',0),(1942,0,'config','config_alert_mail','0',0),(1940,0,'config','config_smtp_port','25',0),(1941,0,'config','config_smtp_timeout','5',0),(1939,0,'config','config_smtp_password','',0),(1937,0,'config','config_smtp_host','',0),(1938,0,'config','config_smtp_username','',0),(1936,0,'config','config_mail_parameter','',0),(1973,0,'cart','cart_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:9;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1986,0,'cr2htmlmodule','cr2htmlmodule_module','a:22:{i:0;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:3;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:4;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:5;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:6;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:7;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:8;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:9;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:10;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:11;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:12;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:13;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:14;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:15;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:16;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:17;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:18;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:19;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:20;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:21;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),(1982,0,'cr2htmlmodule','cr2htmlmodule_title3_1','',0),(1983,0,'cr2htmlmodule','cr2htmlmodule_header3','0',0),(1984,0,'cr2htmlmodule','cr2htmlmodule_borderless3','0',0),(1985,0,'cr2htmlmodule','cr2htmlmodule_code3_1','&lt;div class=&quot;title&quot;&gt;\r\n	Ğ¢ĞµÑ…. ĞŸĞ¾Ğ´Ğ´ĞµÑ€Ğ¶ĞºĞ°&lt;/div&gt;\r\n&lt;div id=&quot;support&quot;&gt;\r\n	&lt;span&gt;Ñ‚.&lt;/span&gt; 096 433-44-55&lt;br /&gt;\r\n	&lt;span&gt;Ñ‚.&lt;/span&gt; 067 455-65-21&lt;br /&gt;\r\n	&lt;span&gt;icq:&lt;/span&gt; 187-773-553&lt;br /&gt;\r\n	&lt;span&gt;email:&lt;/span&gt; &lt;a href=&quot;mailto:info@pechatnik.net&quot;&gt;info@pechatnik.net&lt;/a&gt;&lt;br /&gt;\r\n	&lt;a class=&quot;soc&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/fb.gif&quot; /&gt;&lt;/a&gt;&lt;a class=&quot;soc&quot; href=&quot;index.php?route=product/shop&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/vk.gif&quot; /&gt;&lt;/a&gt;\r\n	&lt;div id=&quot;helper&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;b&gt;ĞĞ½Ğ»Ğ°Ğ¹Ğ½&lt;/b&gt;&lt;br /&gt;\r\n		Ğ¿Ğ¾Ğ¼Ğ¾Ñ‰Ğ½Ğ¸Ğº&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1974,0,'cr2htmlmodule','cr2htmlmodule_title1_1','',0),(1975,0,'cr2htmlmodule','cr2htmlmodule_header1','0',0),(1976,0,'cr2htmlmodule','cr2htmlmodule_borderless1','1',0),(1977,0,'cr2htmlmodule','cr2htmlmodule_code1_1','',0),(1978,0,'cr2htmlmodule','cr2htmlmodule_title2_1','',0),(1979,0,'cr2htmlmodule','cr2htmlmodule_header2','0',0),(1980,0,'cr2htmlmodule','cr2htmlmodule_borderless2','0',0),(1981,0,'cr2htmlmodule','cr2htmlmodule_code2_1','&lt;div id=&quot;shop&quot; onmouseout=&quot;$(this).removeClass(\'hover\');&quot; onmouseover=&quot;$(this).addClass(\'hover\');&quot;&gt;\r\n	&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot; id=&quot;title_left&quot;&gt;ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½ Ñ„Ğ¾Ñ‚Ğ¾Ñ€Ğ°Ğ¼Ğ¾Ğº&lt;br /&gt;\r\n	Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼Ğ¾Ğ²&lt;/a&gt;\r\n	&lt;div id=&quot;title_right&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class=&quot;clear&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div id=&quot;pic&quot;&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/blank.gif&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1584,0,'featuredalbum','product','',0),(1585,0,'featuredalbum','featuredalbum_product','65,66,69,68,70,67',0),(1586,0,'featuredalbum','featuredalbum_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1059,0,'featuredframe','product','Ñ€Ğ°',0),(1060,0,'featuredframe','featuredframe_product','65,66',0),(1061,0,'featuredframe','featuredframe_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1826,0,'welcome','welcome_module','a:2:{i:1;a:5:{s:11:\"description\";a:1:{i:1;s:1541:\"&lt;div class=&quot;text&quot;&gt;\r\n	&lt;h1&gt;\r\n		Multiple Photo Frames&lt;/h1&gt;\r\n	Have a browse through our complete range of multi photo frames you\'ll be stunned to see what we have on offer. Our multi photo frames have various different brands and styles held within especially some of the hugely popular and unique Umbra multi photo frames.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Multi photo frames are perfect for showing off various series of photographs together that either tell a story or you just wish to hold a collection of your favourite photographs within one multi photo frame.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	If you are looking for multi photo frames or collage photo frames then look no further. Here we have hand picked a fine range of multi photo frames for you to choose from. Our multi photo frames come in various styles and materials such as silver multi photo frames and&amp;nbsp;wooden multi photo frames, each holding&amp;nbsp;at least 3&amp;nbsp; spaces for your precious photographs.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	There are now many choices when it comes to displaying your precious pictures.&amp;nbsp; During the past decades, ready-made frames are limited in options.&amp;nbsp; Most are made of wood, plastic or composite resin in few colors and designs.&amp;nbsp; Nowadays, artists and designers collaborate on projects that result in frames in fantastic colors, different shapes and various sizes.&amp;nbsp; They can hold a wide range of photos, from single portraits to collages of many pictures combined.&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"6\";}i:2;a:5:{s:11:\"description\";a:1:{i:1;s:5353:\"&lt;div id=&quot;tizers&quot;&gt;\r\n	&lt;div class=&quot;cont t1&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				1.&lt;/div&gt;\r\n			&lt;span&gt;Ğ£Ğ´Ğ¾Ğ±Ğ½Ñ‹Ğ¹ Ğ¸Ğ½Ñ‚ĞµÑ€Ñ„ĞµĞ¹Ñ&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ¿Ğ¾ Ğ·Ğ°Ğ³Ñ€ÑƒĞ·ĞºĞµ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ¢ĞµĞ¿ĞµÑ€ÑŒ Ğ¼Ğ¾Ğ¶Ğ½Ğ¾ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸ ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾ Ğ¸ Ğ¿Ğ¾ Ğ¼Ğ¸Ğ½Ğ¸Ğ¼Ğ°Ğ»ÑŒĞ½Ğ¾Ğ¹ Ñ†ĞµĞ½Ğµ Ğ½Ğµ Ğ²Ñ‹Ñ…Ğ¾Ğ´Ñ&lt;br /&gt;\r\n				Ğ¸Ğ· Ğ´Ğ¾Ğ¼Ğ°.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t2&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				2.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¤Ğ¾Ñ‚Ğ¾Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ğ½Ğ° ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾Ğ¹&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ñ„Ğ¾Ñ‚Ğ¾Ğ±ÑƒĞ¼Ğ°Ğ³Ğµ&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ‘ÑƒĞ¼Ğ°Ğ³Ğ° Ñ‚Ğ°ĞºĞ¸Ñ… Ğ¸Ğ¼ĞµĞ½Ğ¸Ñ‚Ñ‹Ñ… Ğ¿Ñ€Ğ¾Ğ¸Ğ·Ğ²Ğ¾Ğ´Ğ¸Ñ‚ĞµĞ»ĞµĞ¹ ĞºĞ°Ğº Fuji Ğ¸ Kodak.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t3&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				3.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¡Ğ°Ğ¼Ğ°Ñ Ğ±Ñ‹ÑÑ‚Ñ€Ğ°Ñ ÑĞºĞ¾Ñ€Ğ¾ÑÑ‚ÑŒ&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ”Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ° Ğ¿Ğ¾ Ğ”Ğ½ĞµĞ¿Ñ€Ğ¾Ğ¿ĞµÑ‚Ñ€Ğ¾Ğ²ÑĞºÑƒ Ğ±ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ. Ğ”Ğ»Ñ Ğ´Ñ€ÑƒĞ³Ğ¸Ñ… Ñ€ĞµĞ³Ğ¸Ğ¾Ğ½Ğ¾Ğ² ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸ Ğ¼Ğ¾Ğ¶Ğ½Ğ¾ Ğ¿Ğ¾ÑĞ¼Ğ¾Ñ‚Ñ€ĞµÑ‚ÑŒ &lt;a href=&quot;#&quot;&gt;Ğ·Ğ´ĞµÑÑŒ&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t4&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				4.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¡Ğ°Ğ¼Ğ°Ñ ĞĞ¸Ğ·ĞºĞ°Ñ Ñ†ĞµĞ½Ğ°&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸&lt;/span&gt;\r\n			&lt;h2&gt;\r\n				70 ĞºĞ¾Ğ¿ĞµĞµĞº&lt;/h2&gt;\r\n			&lt;p&gt;\r\n				Ğ¥Ğ¾Ñ‚Ğ¸Ñ‚Ğµ ĞµÑ‰Ñ‘ Ğ´ĞµÑˆĞµĞ²Ğ»Ğµ?&lt;br /&gt;\r\n				Ğ’Ğ°Ğ¼ &lt;a href=&quot;#&quot;&gt;ÑÑĞ´Ğ°&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;servises_cont&quot;&gt;\r\n	&lt;div id=&quot;instruction&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ˜Ğ½ÑÑ‚Ñ€ÑƒĞºÑ†Ğ¸Ñ&lt;/a&gt; Ğ¿Ğ¾ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ¸Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚&lt;/div&gt;\r\n	&lt;div id=&quot;time&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ“Ğ¾Ñ‚Ğ¾Ğ²Ğ½Ğ¾ÑÑ‚ÑŒ Ğ·Ğ°ĞºĞ°Ğ·Ğ°&lt;/a&gt;ÑÑ€ĞµĞ´Ğ½ĞµĞµ Ğ²Ñ€ĞµĞ¼Ñ Ğ²Ñ‹Ğ¿Ğ¾Ğ»Ğ½ĞµĞ½Ğ¸Ğµ Ğ·Ğ°ĞºĞ°Ğ·Ğ° - 3 Ñ‡Ğ°ÑĞ°&lt;/div&gt;\r\n	&lt;div id=&quot;delivery&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ”Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ° Ğ¸ Ğ¾Ğ¿Ğ»Ğ°Ñ‚Ğ°&lt;/a&gt;Ğ²Ğ°ÑˆĞ¸Ñ… Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğº Ğ²Ğ°Ğ¼ Ğ´Ğ¾Ğ¼Ğ¾Ğ¹&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--SERVISES END--&gt;&lt;!--MAIN TEXT--&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;main_text&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;top&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div class=&quot;text&quot;&gt;\r\n					&lt;h1&gt;\r\n						Ğ˜Ğ½Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ†Ğ¸Ñ Ğ¾ ÑĞµÑ€Ğ²Ğ¸ÑĞµ&lt;/h1&gt;\r\n					Ğ¤Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ñ Â«ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸ĞºÂ» Ğ¿Ñ€ĞµĞ´Ğ»Ğ°Ğ³Ğ°ĞµÑ‚ Ğ’Ğ°Ğ¼ Ğ²Ğ¾ÑĞ¿Ğ¾Ğ»ÑŒĞ·Ğ¾Ğ²Ğ°Ñ‚ÑŒÑÑ ÑƒÑĞ»ÑƒĞ³Ğ¾Ğ¹ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚. ĞŸĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾ÑĞ½Ğ¾Ğ²Ğ½Ñ‹Ğ¼ Ğ½Ğ°Ğ¿Ñ€Ğ°Ğ²Ğ»ĞµĞ½Ğ¸ĞµĞ¼ Ñ€Ğ°Ğ·Ğ²Ğ¸Ñ‚Ğ¸Ñ Ğ½Ğ°ÑˆĞµĞ¹ Ñ„Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ğ¸.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					ĞŸÑ€Ğ¸Ñ‘Ğ¼ Ğ¸ Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¾ÑÑƒÑ‰ĞµÑÑ‚Ğ²Ğ»ÑĞµÑ‚ÑÑ Ğ² ĞºÑ€ÑƒĞ³Ğ»Ğ¾ÑÑƒÑ‚Ğ¾Ñ‡Ğ½Ğ¾Ğ¼ Ñ€ĞµĞ¶Ğ¸Ğ¼Ğµ. ĞœÑ‹ Ğ³Ğ°Ñ€Ğ°Ğ½Ñ‚Ğ¸Ñ€ÑƒĞµĞ¼ ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½ÑƒÑ Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¸ ÑĞ²Ğ¾ĞµĞ²Ñ€ĞµĞ¼ĞµĞ½Ğ½Ğ¾Ğµ Ğ²Ñ‹Ğ¿Ğ¾Ğ»Ğ½ĞµĞ½Ğ¸Ğµ Ğ’Ğ°ÑˆĞµĞ³Ğ¾ Ğ·Ğ°ĞºĞ°Ğ·Ğ°. Ğ”Ğ»Ñ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ğ¸ÑĞ¿Ğ¾Ğ»ÑŒĞ·ÑƒĞµÑ‚ÑÑ Ğ²Ñ‹ÑĞ¾ĞºĞ¾ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾Ğµ Ğ¾Ğ±Ğ¾Ñ€ÑƒĞ´Ğ¾Ğ²Ğ°Ğ½Ğ¸Ğµ Noritsu, ĞºĞ¾Ñ‚Ğ¾Ñ€Ğ¾Ğµ Ğ¿Ğ¾Ğ·Ğ²Ğ¾Ğ»ÑĞµÑ‚ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸ Ğ»ÑĞ±Ñ‹Ğ¼ Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ‚Ğ¾Ğ¼ Ğ¾Ñ‚ 9Ñ…13 Ğ´Ğ¾ 30Ñ…90. Ğ”Ğ°Ğ½Ğ½Ğ¾Ğµ Ğ¾Ğ±Ğ¾Ñ€ÑƒĞ´Ğ¾Ğ²Ğ°Ğ½Ğ¸Ğµ Ğ¿Ğ¾Ğ·Ğ²Ğ¾Ğ»ÑĞµÑ‚ Ğ½Ğ°Ğ¼ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ğ² Ñ‡Ğ°Ñ Ğ´Ğ¾ 1000 Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ‚Ğ¾Ğ¼ 10Ñ…15.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Ğ”Ğ»Ñ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¸ÑĞ¿Ğ¾Ğ»ÑŒĞ·ÑƒĞµÑ‚ÑÑ Ñ„Ğ¾Ñ‚Ğ¾Ğ±ÑƒĞ¼Ğ°Ğ³Ğ° Ñ„Ğ¸Ñ€Ğ¼Ñ‹ Kodak, ĞºĞ¾Ñ‚Ğ¾Ñ€Ğ°Ñ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾Ğ´Ğ½Ğ¸Ğ¼ Ğ¸Ğ· Ğ»Ğ¸Ğ´ĞµÑ€Ğ¾Ğ² Ğ½Ğ° Ñ€Ñ‹Ğ½ĞºĞµ Ğ¼Ğ°Ñ‚ĞµÑ€Ğ¸Ğ°Ğ»Ğ¾Ğ² Ğ´Ğ»Ñ Ñ„Ğ¾Ñ‚Ğ¾Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸. Ğ“Ğ°Ñ€Ğ°Ğ½Ñ‚Ğ¸Ñ Ñ„Ğ¸Ñ€Ğ¼Ñ‹ Kodak Ğ½Ğ° Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸, ÑĞ´ĞµĞ»Ğ°Ğ½Ğ½Ñ‹Ğµ Ğ¿Ñ€Ğ¸ ÑĞ¾Ğ±Ğ»ÑĞ´ĞµĞ½Ğ¸Ğ¸ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ñ‡ĞµÑĞºĞ¾Ğ³Ğ¾ Ğ¿Ñ€Ğ¾Ñ†ĞµÑÑĞ°, Ğ´Ğ¾ÑÑ‚Ğ¸Ğ³Ğ°ĞµÑ‚ 100 Ğ»ĞµÑ‚ Ğ¿Ñ€Ğ¸ Ğ½Ğ¾Ñ€Ğ¼Ğ°Ğ»ÑŒĞ½Ñ‹Ñ… ÑƒÑĞ»Ğ¾Ğ²Ğ¸ÑÑ… Ñ…Ñ€Ğ°Ğ½ĞµĞ½Ğ¸Ñ. Ğ¤Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ñ Â«ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸ĞºÂ» Ğ¿Ñ€ĞµĞ´Ğ»Ğ°Ğ³Ğ°ĞµÑ‚ Ğ’Ğ°Ğ¼ Ğ²Ğ¾ÑĞ¿Ğ¾Ğ»ÑŒĞ·Ğ¾Ğ²Ğ°Ñ‚ÑŒÑÑ ÑƒÑĞ»ÑƒĞ³Ğ¾Ğ¹ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚. ĞŸĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾ÑĞ½Ğ¾Ğ²Ğ½Ñ‹Ğ¼ Ğ½Ğ°Ğ¿Ñ€Ğ°Ğ²Ğ»ĞµĞ½Ğ¸ĞµĞ¼ Ñ€Ğ°Ğ·Ğ²Ğ¸Ñ‚Ğ¸Ñ Ğ½Ğ°ÑˆĞµĞ¹ Ñ„Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ğ¸.&lt;/div&gt;\r\n				&lt;div class=&quot;bott&quot;&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/td&gt;\r\n			&lt;td class=&quot;right&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;div class=&quot;clear&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1971,0,'specialnew','specialnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1969,0,'categorynew','categorynew_module','a:4:{i:0;a:5:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:1;a:5:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:2;a:5:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:3;a:5:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1935,0,'config','config_mail_protocol','mail',0),(1933,0,'config','config_image_cart_width','47',0),(1934,0,'config','config_image_cart_height','47',0),(1932,0,'config','config_image_wishlist_height','47',0),(1931,0,'config','config_image_wishlist_width','47',0),(1930,0,'config','config_image_compare_height','90',0),(1929,0,'config','config_image_compare_width','90',0),(1928,0,'config','config_image_related_height','80',0),(1926,0,'config','config_image_additional_height','74',0),(1927,0,'config','config_image_related_width','80',0),(1970,0,'latestnew','latestnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1925,0,'config','config_image_additional_width','74',0),(1924,0,'config','config_image_product_height','100',0),(1923,0,'config','config_image_product_width','110',0),(1922,0,'config','config_image_popup_height','500',0),(1921,0,'config','config_image_popup_width','500',0),(1920,0,'config','config_image_thumb_height','300',0),(1919,0,'config','config_image_thumb_width','300',0),(1918,0,'config','config_image_category_height','110',0),(1917,0,'config','config_image_category_width','110',0),(1916,0,'config','config_icon','data/cart.png',0),(1914,0,'config','config_return_status_id','2',0),(1915,0,'config','config_logo','data/logo.png',0),(1913,0,'config','config_commission','5',0),(1912,0,'config','config_affiliate_id','4',0),(1911,0,'config','config_stock_status_id','5',0),(1910,0,'config','config_stock_checkout','1',0),(1909,0,'config','config_stock_warning','0',0),(1907,0,'config','config_complete_status_id','5',0),(1908,0,'config','config_stock_display','0',0),(1906,0,'config','config_order_status_id','1',0),(1905,0,'config','config_invoice_prefix','INV-2012-00',0),(1904,0,'config','config_order_edit','100',0),(1903,0,'config','config_checkout_id','5',0),(1901,0,'config','config_cart_weight','0',0),(1902,0,'config','config_guest_checkout','1',0),(1900,0,'config','config_account_id','0',0),(1899,0,'config','config_customer_price','0',0),(1898,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(1897,0,'config','config_customer_group_id','1',0),(1896,0,'config','config_customer_online','0',0),(1895,0,'config','config_tax_customer','shipping',0),(1894,0,'config','config_tax_default','shipping',0),(1892,0,'config','config_tax','0',0),(1893,0,'config','config_vat','0',0),(1891,0,'config','config_voucher_max','1000',0),(1890,0,'config','config_voucher_min','1',0),(1889,0,'config','config_upload_allowed','jpg, JPG, jpeg, gif, png, txt',0),(1888,0,'config','config_download','0',0),(1886,0,'config','config_product_count','0',0),(1887,0,'config','config_review_status','0',0),(1885,0,'config','config_admin_limit','20',0),(1883,0,'config','config_weight_class_id','1',0),(1884,0,'config','config_catalog_limit','15',0),(1882,0,'config','config_length_class_id','1',0),(1881,0,'config','config_currency_auto','0',0),(1880,0,'config','config_currency','USD',0),(1879,0,'config','config_admin_language','ru',0),(1878,0,'config','config_language','ru',0),(1877,0,'config','config_zone_id','3491',0),(1876,0,'config','config_country_id','220',0),(1875,0,'config','config_layout_id','1',0),(1874,0,'config','config_template','default',0),(1873,0,'config','config_meta_description','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0),(1866,0,'config','config_name','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0),(1867,0,'config','config_owner','ĞœĞ¾Ğµ Ğ˜Ğ¼Ñ',0),(1868,0,'config','config_address','ĞĞ´Ñ€ĞµÑ',0),(1869,0,'config','config_email','vittalik@ukr.net',0),(1870,0,'config','config_telephone','123456789',0),(1871,0,'config','config_fax','',0),(1872,0,'config','config_title','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `width` double NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,26,11,2);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_status`
--

LOCK TABLES `stock_status` WRITE;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` VALUES (7,1,'Ğ’ Ğ½Ğ°Ğ»Ğ¸Ñ‡Ğ¸Ğ¸'),(8,1,'ĞŸÑ€ĞµĞ´Ğ·Ğ°ĞºĞ°Ğ·'),(5,1,'ĞĞµÑ‚ Ğ² Ğ½Ğ°Ğ»Ğ¸Ñ‡Ğ¸Ğ¸'),(6,1,'ĞĞ¶Ğ¸Ğ´Ğ°Ğ½Ğ¸Ğµ 2-3 Ğ´Ğ½Ñ');
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (9,'ĞĞ°Ğ»Ğ¾Ğ³Ğ¸','ĞĞ±Ğ»Ğ°Ğ³Ğ°ĞµĞ¼Ñ‹Ğµ Ğ½Ğ°Ğ»Ğ¾Ğ³Ğ¾Ğ¼','2009-01-06 23:21:53','2013-02-06 23:27:32');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate`
--

LOCK TABLES `tax_rate` WRITE;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
INSERT INTO `tax_rate` VALUES (86,3,'ĞĞ”Ğ¡ 18%','18.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate_to_customer_group`
--

LOCK TABLES `tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rule`
--

DROP TABLE IF EXISTS `tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rule`
--

LOCK TABLES `tax_rule` WRITE;
/*!40000 ALTER TABLE `tax_rule` DISABLE KEYS */;
INSERT INTO `tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0);
/*!40000 ALTER TABLE `tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=780 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
INSERT INTO `url_alias` VALUES (730,'manufacturer_id=8','apple'),(775,'information_id=4','about_us'),(776,'information_id=8','services'),(777,'information_id=6','online-print'),(778,'information_id=3','support'),(779,'information_id=5','contacts');
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(9) NOT NULL DEFAULT '',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','a1952fe2339cb9b1e9ef2d8e5553880d1949839d','9ba00bb3c','','','vittalik@ukr.net','','127.0.0.1',1,'2013-01-28 22:01:44');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'Ğ“Ğ»Ğ°Ğ²Ğ½Ñ‹Ğ¹ Ğ°Ğ´Ğ¼Ğ¸Ğ½Ğ¸ÑÑ‚Ñ€Ğ°Ñ‚Ğ¾Ñ€','a:2:{s:6:\"access\";a:130:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:16:\"catalog/material\";i:7;s:14:\"catalog/option\";i:8;s:13:\"catalog/price\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:12:\"catalog/size\";i:12;s:18:\"common/filemanager\";i:13;s:13:\"design/banner\";i:14;s:13:\"design/layout\";i:15;s:14:\"extension/feed\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:11:\"module/cart\";i:42;s:15:\"module/category\";i:43;s:18:\"module/categorynew\";i:44;s:20:\"module/cr2htmlmodule\";i:45;s:15:\"module/featured\";i:46;s:20:\"module/featuredalbum\";i:47;s:20:\"module/featuredframe\";i:48;s:18:\"module/google_talk\";i:49;s:18:\"module/information\";i:50;s:13:\"module/latest\";i:51;s:16:\"module/latestnew\";i:52;s:12:\"module/login\";i:53;s:16:\"module/slideshow\";i:54;s:14:\"module/special\";i:55;s:17:\"module/specialnew\";i:56;s:12:\"module/store\";i:57;s:14:\"module/welcome\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:14:\"payment/liqpay\";i:64;s:20:\"payment/moneybookers\";i:65;s:14:\"payment/nochex\";i:66;s:15:\"payment/paymate\";i:67;s:16:\"payment/paypoint\";i:68;s:13:\"payment/payza\";i:69;s:26:\"payment/perpetual_payments\";i:70;s:14:\"payment/pp_pro\";i:71;s:17:\"payment/pp_pro_uk\";i:72;s:19:\"payment/pp_standard\";i:73;s:15:\"payment/sagepay\";i:74;s:22:\"payment/sagepay_direct\";i:75;s:18:\"payment/sagepay_us\";i:76;s:19:\"payment/twocheckout\";i:77;s:28:\"payment/web_payment_software\";i:78;s:16:\"payment/worldpay\";i:79;s:27:\"report/affiliate_commission\";i:80;s:22:\"report/customer_credit\";i:81;s:22:\"report/customer_online\";i:82;s:21:\"report/customer_order\";i:83;s:22:\"report/customer_reward\";i:84;s:24:\"report/product_purchased\";i:85;s:21:\"report/product_viewed\";i:86;s:18:\"report/sale_coupon\";i:87;s:17:\"report/sale_order\";i:88;s:18:\"report/sale_return\";i:89;s:20:\"report/sale_shipping\";i:90;s:15:\"report/sale_tax\";i:91;s:14:\"sale/affiliate\";i:92;s:12:\"sale/contact\";i:93;s:11:\"sale/coupon\";i:94;s:13:\"sale/customer\";i:95;s:23:\"sale/customer_blacklist\";i:96;s:19:\"sale/customer_group\";i:97;s:10:\"sale/order\";i:98;s:11:\"sale/return\";i:99;s:12:\"sale/voucher\";i:100;s:18:\"sale/voucher_theme\";i:101;s:15:\"setting/setting\";i:102;s:13:\"setting/store\";i:103;s:16:\"shipping/auspost\";i:104;s:17:\"shipping/citylink\";i:105;s:14:\"shipping/fedex\";i:106;s:13:\"shipping/flat\";i:107;s:13:\"shipping/free\";i:108;s:13:\"shipping/item\";i:109;s:23:\"shipping/parcelforce_48\";i:110;s:15:\"shipping/pickup\";i:111;s:19:\"shipping/royal_mail\";i:112;s:12:\"shipping/ups\";i:113;s:13:\"shipping/usps\";i:114;s:15:\"shipping/weight\";i:115;s:11:\"tool/backup\";i:116;s:14:\"tool/error_log\";i:117;s:12:\"total/coupon\";i:118;s:12:\"total/credit\";i:119;s:14:\"total/handling\";i:120;s:16:\"total/klarna_fee\";i:121;s:19:\"total/low_order_fee\";i:122;s:12:\"total/reward\";i:123;s:14:\"total/shipping\";i:124;s:15:\"total/sub_total\";i:125;s:9:\"total/tax\";i:126;s:11:\"total/total\";i:127;s:13:\"total/voucher\";i:128;s:9:\"user/user\";i:129;s:20:\"user/user_permission\";}s:6:\"modify\";a:130:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:16:\"catalog/material\";i:7;s:14:\"catalog/option\";i:8;s:13:\"catalog/price\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:12:\"catalog/size\";i:12;s:18:\"common/filemanager\";i:13;s:13:\"design/banner\";i:14;s:13:\"design/layout\";i:15;s:14:\"extension/feed\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:11:\"module/cart\";i:42;s:15:\"module/category\";i:43;s:18:\"module/categorynew\";i:44;s:20:\"module/cr2htmlmodule\";i:45;s:15:\"module/featured\";i:46;s:20:\"module/featuredalbum\";i:47;s:20:\"module/featuredframe\";i:48;s:18:\"module/google_talk\";i:49;s:18:\"module/information\";i:50;s:13:\"module/latest\";i:51;s:16:\"module/latestnew\";i:52;s:12:\"module/login\";i:53;s:16:\"module/slideshow\";i:54;s:14:\"module/special\";i:55;s:17:\"module/specialnew\";i:56;s:12:\"module/store\";i:57;s:14:\"module/welcome\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:14:\"payment/liqpay\";i:64;s:20:\"payment/moneybookers\";i:65;s:14:\"payment/nochex\";i:66;s:15:\"payment/paymate\";i:67;s:16:\"payment/paypoint\";i:68;s:13:\"payment/payza\";i:69;s:26:\"payment/perpetual_payments\";i:70;s:14:\"payment/pp_pro\";i:71;s:17:\"payment/pp_pro_uk\";i:72;s:19:\"payment/pp_standard\";i:73;s:15:\"payment/sagepay\";i:74;s:22:\"payment/sagepay_direct\";i:75;s:18:\"payment/sagepay_us\";i:76;s:19:\"payment/twocheckout\";i:77;s:28:\"payment/web_payment_software\";i:78;s:16:\"payment/worldpay\";i:79;s:27:\"report/affiliate_commission\";i:80;s:22:\"report/customer_credit\";i:81;s:22:\"report/customer_online\";i:82;s:21:\"report/customer_order\";i:83;s:22:\"report/customer_reward\";i:84;s:24:\"report/product_purchased\";i:85;s:21:\"report/product_viewed\";i:86;s:18:\"report/sale_coupon\";i:87;s:17:\"report/sale_order\";i:88;s:18:\"report/sale_return\";i:89;s:20:\"report/sale_shipping\";i:90;s:15:\"report/sale_tax\";i:91;s:14:\"sale/affiliate\";i:92;s:12:\"sale/contact\";i:93;s:11:\"sale/coupon\";i:94;s:13:\"sale/customer\";i:95;s:23:\"sale/customer_blacklist\";i:96;s:19:\"sale/customer_group\";i:97;s:10:\"sale/order\";i:98;s:11:\"sale/return\";i:99;s:12:\"sale/voucher\";i:100;s:18:\"sale/voucher_theme\";i:101;s:15:\"setting/setting\";i:102;s:13:\"setting/store\";i:103;s:16:\"shipping/auspost\";i:104;s:17:\"shipping/citylink\";i:105;s:14:\"shipping/fedex\";i:106;s:13:\"shipping/flat\";i:107;s:13:\"shipping/free\";i:108;s:13:\"shipping/item\";i:109;s:23:\"shipping/parcelforce_48\";i:110;s:15:\"shipping/pickup\";i:111;s:19:\"shipping/royal_mail\";i:112;s:12:\"shipping/ups\";i:113;s:13:\"shipping/usps\";i:114;s:15:\"shipping/weight\";i:115;s:11:\"tool/backup\";i:116;s:14:\"tool/error_log\";i:117;s:12:\"total/coupon\";i:118;s:12:\"total/credit\";i:119;s:14:\"total/handling\";i:120;s:16:\"total/klarna_fee\";i:121;s:19:\"total/low_order_fee\";i:122;s:12:\"total/reward\";i:123;s:14:\"total/shipping\";i:124;s:15:\"total/sub_total\";i:125;s:9:\"total/tax\";i:126;s:11:\"total/total\";i:127;s:13:\"total/voucher\";i:128;s:9:\"user/user\";i:129;s:20:\"user/user_permission\";}}'),(10,'Ğ”ĞµĞ¼Ğ¾Ğ½ÑÑ‚Ñ€Ğ°Ñ†Ğ¸Ñ','');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_history`
--

DROP TABLE IF EXISTS `voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_history`
--

LOCK TABLES `voucher_history` WRITE;
/*!40000 ALTER TABLE `voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme`
--

DROP TABLE IF EXISTS `voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme`
--

LOCK TABLES `voucher_theme` WRITE;
/*!40000 ALTER TABLE `voucher_theme` DISABLE KEYS */;
INSERT INTO `voucher_theme` VALUES (8,'data/demo/canon_eos_5d_2.jpg'),(7,'data/demo/gift-voucher-birthday.jpg'),(6,'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_theme_description`
--

DROP TABLE IF EXISTS `voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_theme_description`
--

LOCK TABLES `voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `voucher_theme_description` DISABLE KEYS */;
INSERT INTO `voucher_theme_description` VALUES (6,1,'Ğ Ğ¾Ğ¶Ğ´ĞµÑÑ‚Ğ²Ğ¾'),(7,1,'Ğ”ĞµĞ½ÑŒ Ñ€Ğ¾Ğ¶Ğ´ĞµĞ½Ğ¸Ñ'),(8,1,'ĞÑĞ½Ğ¾Ğ²Ğ½Ğ¾Ğ¹');
/*!40000 ALTER TABLE `voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class`
--

DROP TABLE IF EXISTS `weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class`
--

LOCK TABLES `weight_class` WRITE;
/*!40000 ALTER TABLE `weight_class` DISABLE KEYS */;
INSERT INTO `weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000');
/*!40000 ALTER TABLE `weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_class_description`
--

DROP TABLE IF EXISTS `weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_class_description`
--

LOCK TABLES `weight_class_description` WRITE;
/*!40000 ALTER TABLE `weight_class_description` DISABLE KEYS */;
INSERT INTO `weight_class_description` VALUES (1,1,'ĞšĞ¸Ğ»Ğ¾Ğ³Ñ€Ğ°Ğ¼Ğ¼Ñ‹','ĞºĞ³'),(2,1,'Ğ“Ñ€Ğ°Ğ¼Ğ¼Ñ‹','Ğ³');
/*!40000 ALTER TABLE `weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3971 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,1,'Ğ‘Ğ°Ğ´Ğ°Ñ…ÑˆĞ°Ğ½','BDS',1),(2,1,'Ğ‘Ğ°Ğ´Ğ³Ğ¸Ñ','BDG',1),(3,1,'Ğ‘Ğ°Ğ³Ğ»Ğ°Ğ½','BGL',1),(4,1,'Ğ‘Ğ°Ğ»Ñ…','BAL',1),(5,1,'Ğ‘Ğ°Ğ¼Ğ¸Ğ°Ğ½','BAM',1),(6,1,'Ğ¤Ğ°Ñ€Ğ°Ñ…','FRA',1),(7,1,'Ğ¤Ğ°Ñ€ÑŒÑĞ±','FYB',1),(8,1,'Ğ“Ğ°Ğ·Ğ½Ğ¸','GHA',1),(9,1,'Ğ“Ğ¾Ñ€','GHO',1),(10,1,'Ğ“Ğ¸Ğ»ÑŒĞ¼ĞµĞ½Ğ´','HEL',1),(11,1,'Ğ“ĞµÑ€Ğ°Ñ‚','HER',1),(12,1,'Ğ”Ğ¶Ğ°ÑƒĞ·Ğ´Ğ¶Ğ°Ğ½','JOW',1),(13,1,'ĞšĞ°Ğ±ÑƒĞ»','KAB',1),(14,1,'ĞšĞ°Ğ½Ğ´Ğ°Ğ³Ğ°Ñ€','KAN',1),(15,1,'ĞšĞ°Ğ¿Ğ¸ÑĞ°','KAP',1),(16,1,'Ğ¥Ğ¾ÑÑ‚','KHO',1),(17,1,'ĞšÑƒĞ½Ğ°Ñ€','KNR',1),(18,1,'ĞšÑƒĞ½Ğ´ÑƒĞ·','KDZ',1),(19,1,'Ğ›Ğ°Ğ³Ğ¼Ğ°Ğ½','LAG',1),(20,1,'Ğ›Ğ¾Ğ³Ğ°Ñ€','LOW',1),(21,1,'ĞĞ°Ğ½Ğ³Ğ°Ñ€Ñ…Ğ°Ñ€','NAN',1),(22,1,'ĞĞ¸Ğ¼Ñ€Ğ¾Ğ·','NIM',1),(23,1,'ĞÑƒÑ€Ğ¸ÑÑ‚Ğ°Ğ½','NUR',1),(24,1,'Ğ£Ñ€ÑƒĞ·Ğ³Ğ°Ğ½','ORU',1),(25,1,'ĞŸĞ°ĞºÑ‚Ğ¸Ñ','PIA',1),(26,1,'ĞŸĞ°ĞºÑ‚Ğ¸ĞºĞ°','PKA',1),(27,1,'ĞŸĞ°Ñ€Ğ²Ğ°Ğ½','PAR',1),(28,1,'Ğ¡Ğ°Ğ¼Ğ°Ğ½Ğ³Ğ°Ğ½','SAM',1),(29,1,'Ğ¡Ğ°Ñ€Ğ¸-ĞŸÑƒĞ»ÑŒ','SAR',1),(30,1,'Ğ¢Ğ°Ñ…Ğ°Ñ€','TAK',1),(31,1,'Ğ’Ğ°Ñ€Ğ´Ğ°Ğº','WAR',1),(32,1,'Ğ—Ğ°Ğ±ÑƒĞ»ÑŒ','ZAB',1),(33,2,'Ğ‘ĞµÑ€Ğ°Ñ‚','BR',1),(34,2,'Ğ‘ÑƒĞ»ÑŒĞºĞ¸Ğ·Ğ°','BU',1),(35,2,'Ğ”ĞµĞ»ÑŒĞ²Ğ¸Ğ½Ğ°','DL',1),(36,2,'Ğ”ĞµĞ²Ğ¾Ğ»','DV',1),(37,2,'Ğ”Ğ¸Ğ±Ñ€Ğ°','DI',1),(38,2,'Ğ”ÑƒÑ€Ñ€ĞµÑ','DR',1),(39,2,'Ğ­Ğ»ÑŒĞ±Ğ°ÑĞ°Ğ½','EL',1),(40,2,'ĞšĞ¾Ğ»Ñ‘Ğ½Ñ','ER',1),(41,2,'Ğ¤Ğ¸ĞµÑ€Ğ¸','FR',1),(42,2,'Ğ“Ğ¸Ñ€Ğ¾ĞºĞ°ÑÑ‚Ñ€Ğ°','GJ',1),(43,2,'Ğ“Ñ€Ğ°Ğ¼ÑˆĞ¸','GR',1),(44,2,'Ğ¥Ğ°Ñ','HA',1),(45,2,'ĞšĞ°Ğ²Ğ°Ñ','KA',1),(46,2,'ĞšÑƒÑ€Ğ±Ğ¸Ğ½','KB',1),(47,2,'ĞšÑƒÑ‡Ğ¾Ğ²Ğ°','KC',1),(48,2,'ĞšĞ¾Ñ€Ñ‡Ğ°','KO',1),(49,2,'ĞšÑ€ÑƒÑ','KR',1),(50,2,'ĞšÑƒĞºĞµÑ','KU',1),(51,2,'Ğ›Ğ¸Ğ±Ñ€Ğ°Ğ¶Ğ´Ğ¸','LB',1),(52,2,'Ğ›ĞµĞ¶Ğ°','LE',1),(53,2,'Ğ›ÑÑˆĞ½Ñ','LU',1),(54,2,'ĞœĞ°Ğ»ÑŒÑĞ¸-Ñ-ĞœĞ°Ğ´Ğ¸','MM',1),(55,2,'ĞœĞ°Ğ»Ğ°ĞºĞ°ÑÑ‚Ñ€Ğ°','MK',1),(56,2,'ĞœĞ°Ñ‚Ğ¸','MT',1),(57,2,'ĞœĞ¸Ñ€Ğ´Ğ¸Ñ‚Ğ°','MR',1),(58,2,'ĞŸĞµĞºĞ¸Ğ½Ğ¸','PQ',1),(59,2,'ĞŸĞµÑ€Ğ¼ĞµÑ‚Ğ¸','PR',1),(60,2,'ĞŸĞ¾Ğ³Ñ€Ğ°Ğ´ĞµÑ†','PG',1),(61,2,'ĞŸÑƒĞºĞ°','PU',1),(62,2,'Ğ¨ĞºĞ¾Ğ´ĞµÑ€','SH',1),(63,2,'Ğ¡ĞºÑ€Ğ°Ğ¿Ğ°Ñ€Ğ¸','SK',1),(64,2,'Ğ¡Ğ°Ñ€Ğ°Ğ½Ğ´Ğ°','SR',1),(65,2,'Ğ¢ĞµĞ¿ĞµĞ»ĞµĞ½Ğ°','TE',1),(66,2,'Ğ¢Ñ€Ğ¾Ğ¿Ğ¾Ñ','TP',1),(67,2,'Ğ¢Ğ¸Ñ€Ğ°Ğ½Ğ°','TR',1),(68,2,'Ğ’Ğ»Ñ‘Ñ€Ğ°','VL',1),(69,3,'ĞĞ´Ñ€Ğ°Ñ€','ADR',1),(70,3,'ĞĞ¹Ğ½-Ğ”ĞµÑ„Ğ»Ğ°','ADE',1),(71,3,'ĞĞ¹Ğ½-Ğ¢ĞµĞ¼ÑƒÑ…ĞµĞ½Ñ‚','ATE',1),(72,3,'ĞĞ»Ğ¶Ğ¸Ñ€','ALG',1),(73,3,'ĞĞ½Ğ½Ğ°Ğ±Ğ°','ANN',1),(74,3,'Ğ‘Ğ°Ñ‚Ğ½Ğ°','BAT',1),(75,3,'Ğ‘ĞµÑˆĞ°Ñ€','BEC',1),(76,3,'Ğ‘ĞµĞ´Ğ¶Ğ°Ñ','BEJ',1),(77,3,'Ğ‘Ğ¸ÑĞºÑ€Ğ°','BIS',1),(78,3,'Ğ‘Ğ»Ğ¸Ğ´Ğ°','BLI',1),(79,3,'Ğ‘Ğ¾Ñ€Ğ´Ğ¶-Ğ‘Ñƒ-ĞÑ€Ñ€ĞµÑ€Ğ¸Ğ´Ğ¶','BBA',1),(80,3,'Ğ‘ÑƒĞ¹Ñ€Ğ°','BOA',1),(81,3,'Ğ‘ÑƒĞ¼ĞµÑ€Ğ´ĞµÑ','BMD',1),(82,3,'Ğ¨Ğ»ĞµÑ„','CHL',1),(83,3,'ĞšĞ¾Ğ½ÑÑ‚Ğ°Ğ½Ñ‚Ğ¸Ğ½Ğ°','CON',1),(84,3,'Ğ”Ğ¶ĞµĞ»ÑŒÑ„Ğ°','DJE',1),(85,3,'Ğ­Ğ»ÑŒ-Ğ‘Ğ°ÑĞ´','EBA',1),(86,3,'Ğ­Ğ»ÑŒ-Ğ£ÑĞ´','EOU',1),(87,3,'Ğ­Ğ»ÑŒ-Ğ¢Ğ°Ñ€Ñ„','ETA',1),(88,3,'Ğ“Ğ°Ñ€Ğ´Ğ°Ñ','GHA',1),(89,3,'Ğ“ÑƒÑĞ»ÑŒĞ¼Ğ°','GUE',1),(90,3,'Ğ˜Ğ»Ğ»Ğ¸Ğ·Ğ¸','ILL',1),(91,3,'Ğ”Ğ¶Ğ¸Ğ´Ğ¶ĞµĞ»ÑŒ','JIJ',1),(92,3,'Ğ¥ĞµĞ½ÑˆĞµĞ»Ğ°','KHE',1),(93,3,'Ğ›Ğ°Ğ³ÑƒĞ°Ñ‚','LAG',1),(94,3,'ĞœĞ°ÑĞºĞ°Ñ€Ğ°','MUA',1),(95,3,'ĞœĞµĞ´ĞµĞ°','MED',1),(96,3,'ĞœĞ¸Ğ»Ğ°','MIL',1),(97,3,'ĞœĞ¾ÑÑ‚Ğ°Ğ³Ğ°Ğ½ĞµĞ¼','MOS',1),(98,3,'ĞœÑĞ¸Ğ»Ğ°','MSI',1),(99,3,'ĞĞ°Ğ°Ğ¼Ğ°','NAA',1),(100,3,'ĞÑ€Ğ°Ğ½','ORA',1),(101,3,'Ğ£Ğ°Ñ€Ğ³Ğ»Ğ°','OUA',1),(102,3,'Ğ£Ğ¼ Ğ­Ğ»ÑŒ-Ğ‘ÑƒĞ°Ñ…Ğ¸','OEB',1),(103,3,'Ğ ĞµĞ»Ğ¸Ğ·Ğ°Ğ½','REL',1),(104,3,'Ğ¡Ğ°Ğ¸Ğ´Ğ°','SAI',1),(105,3,'Ğ¡ĞµÑ‚Ğ¸Ñ„','SET',1),(106,3,'Ğ¡Ğ¸Ğ´Ğ¸-Ğ‘ĞµĞ»ÑŒ-ĞĞ±Ğ±ĞµÑ','SBA',1),(107,3,'Ğ¡ĞºĞ¸ĞºĞ´Ğ°','SKI',1),(108,3,'Ğ¡ÑƒĞº-ĞÑ…Ñ€Ğ°Ñ','SAH',1),(109,3,'Ğ¢Ğ°Ğ¼ĞµĞ½Ñ€Ğ°ÑÑĞµÑ‚','TAM',1),(110,3,'Ğ¢ĞµĞ±ĞµÑÑĞ°','TEB',1),(111,3,'Ğ¢Ğ¸Ğ°Ñ€ĞµÑ‚','TIA',1),(112,3,'Ğ¢Ğ¸Ğ½Ğ´ÑƒÑ„','TIN',1),(113,3,'Ğ¢Ğ¸Ğ¿Ğ°Ğ·Ğ°','TIP',1),(114,3,'Ğ¢Ğ¸ÑÑĞµĞ¼ÑĞ¸Ğ»Ñ‚','TIS',1),(115,3,'Ğ¢Ğ¸Ğ·Ğ¸-Ğ£Ğ·Ñƒ','TOU',1),(116,3,'Ğ¢Ğ»ĞµĞ¼ÑĞµĞ½','TLE',1),(117,4,'Ğ’Ğ¾ÑÑ‚Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ Ğ¾ĞºÑ€ÑƒĞ³','E',1),(118,4,'ĞœĞ°Ğ½ÑƒĞ°','M',1),(119,4,'ĞÑÑ‚Ñ€Ğ¾Ğ² Ğ Ğ¾Ğ·','R',1),(120,4,'ĞÑÑ‚Ñ€Ğ¾Ğ² Ğ¡ÑƒÑĞ¹Ğ½Ñ','S',1),(121,4,'Ğ—Ğ°Ğ¿Ğ°Ğ´Ğ½Ñ‹Ğ¹ Ğ¾ĞºÑ€ÑƒĞ³','W',1),(122,5,'ĞĞ½Ğ´Ğ¾Ñ€Ñ€Ğ°-Ğ»Ğ°-Ğ’ĞµĞ»ÑŒÑ','ALV',1),(123,5,'ĞšĞ°Ğ½Ğ¸Ğ»ÑŒĞ¾','CAN',1),(124,5,'Ğ­Ğ½ĞºĞ°Ğ¼Ğ¿','ENC',1),(125,5,'Ğ­ÑĞºĞ°Ğ»ÑŒĞ´ĞµÑ-Ğ­Ğ½Ğ³Ğ¾Ñ€Ğ´Ğ°Ğ½ÑŒ','ESE',1),(126,5,'Ğ›Ğ°-ĞœĞ°ÑÑĞ°Ğ½Ğ°','LMA',1),(127,5,'ĞÑ€Ğ´Ğ¸Ğ½Ğ¾','ORD',1),(128,5,'Ğ¡Ğ°Ğ½Ñ‚-Ğ–ÑƒĞ»Ğ¸Ñ-Ğ´Ğµ-Ğ›Ğ¾Ñ€Ğ¸Ñ','SJL',1),(129,6,'Ğ‘ĞµĞ½Ğ³Ğ¾','BGO',1),(130,6,'Ğ‘ĞµĞ½Ğ³ĞµĞ»Ğ°','BGU',1),(131,6,'Ğ‘Ğ¸Ğµ','BIE',1),(132,6,'ĞšĞ°Ğ±Ğ¸Ğ½Ğ´Ğ°','CAB',1),(133,6,'ĞšĞ²Ğ°Ğ½Ğ´Ğ¾-ĞšÑƒĞ±Ğ°Ğ½Ğ³Ğ¾','CCU',1),(134,6,'Ğ¡ĞµĞ²ĞµÑ€Ğ½Ğ°Ñ ĞšĞ²Ğ°Ğ½Ğ·Ğ°','CNO',1),(135,6,'Ğ®Ğ¶Ğ½Ğ°Ñ ĞšĞ²Ğ°Ğ½Ğ·Ğ°','CUS',1),(136,6,'ĞšÑƒĞ½ĞµĞ½Ğµ','CNN',1),(137,6,'Ğ£Ğ°Ğ¼Ğ±Ğ¾','HUA',1),(138,6,'Ğ£Ğ¸Ğ»Ğ°','HUI',1),(139,6,'Ğ›ÑƒĞ°Ğ½Ğ´Ğ°','LUA',1),(140,6,'Ğ¡ĞµĞ²ĞµÑ€Ğ½Ğ°Ñ Ğ›ÑƒĞ½Ğ´Ğ°','LNO',1),(141,6,'Ğ®Ğ¶Ğ½Ğ°Ñ Ğ›ÑƒĞ½Ğ´Ğ°','LSU',1),(142,6,'ĞœĞ°Ğ»Ğ°Ğ½Ğ¶Ğµ','MAL',1),(143,6,'ĞœĞ¾ÑˆĞ¸ĞºĞ¾','MOX',1),(144,6,'ĞĞ°Ğ¼Ğ¸Ğ±Ğµ','NAM',1),(145,6,'Ğ£Ğ¸Ğ¶Ğµ','UIG',1),(146,6,'Ğ—Ğ°Ğ¸Ñ€Ğµ','ZAI',1),(147,9,'Ğ¡ĞµĞ½Ñ‚-Ğ”Ğ¶Ğ¾Ñ€Ğ´Ğ¶','ASG',1),(148,9,'Ğ¡ĞµĞ½Ñ‚-Ğ”Ğ¶Ğ¾Ğ½','ASJ',1),(149,9,'Ğ¡ĞµĞ½Ñ‚-ĞœĞµÑ€Ğ¸','ASM',1),(150,9,'Ğ¡ĞµĞ½Ñ‚-ĞŸĞ¾Ğ»','ASL',1),(151,9,'Ğ¡ĞµĞ½Ñ‚-ĞŸĞµÑ‚ĞµÑ€','ASR',1),(152,9,'Ğ¡ĞµĞ½Ñ‚-Ğ¤Ğ¸Ğ»Ğ¸Ğ¿','ASH',1),(153,9,'Ğ‘Ğ°Ñ€Ğ±ÑƒĞ´Ğ°','BAR',1),(154,9,'Ğ ĞµĞ´Ğ¾Ğ½Ğ´Ğ°','RED',1),(155,10,'ĞĞ½Ñ‚Ğ°Ñ€ĞºÑ‚Ğ¸Ğ´Ğ° Ğ¸ Ğ¾ÑÑ‚Ñ€Ğ¾Ğ²Ğ° Ğ®Ğ¶Ğ½Ğ¾Ğ¹ ĞÑ‚Ğ»Ğ°Ğ½Ñ‚Ğ¸ĞºĞ¸','AN',1),(156,10,'Ğ‘ÑƒÑĞ½Ğ¾Ñ-ĞĞ¹Ñ€ĞµÑ','BA',1),(157,10,'ĞšĞ°Ñ‚Ğ°Ğ¼Ğ°Ñ€ĞºĞ°','CA',1),(158,10,'Ğ§Ğ°ĞºĞ¾','CH',1),(159,10,'Ğ§ÑƒĞ±ÑƒÑ‚','CU',1),(160,10,'ĞšĞ¾Ñ€Ğ´Ğ¾Ğ²Ğ°','CO',1),(161,10,'ĞšĞ¾Ñ€Ñ€Ğ¸ĞµĞ½Ñ‚ĞµÑ','CR',1),(162,10,'Ğ¤ĞµĞ´ĞµÑ€Ğ°Ğ»ÑŒĞ½Ñ‹Ğ¹ Ğ¾ĞºÑ€ÑƒĞ³','DF',1),(163,10,'Ğ­Ğ½Ñ‚Ñ€Ğµ-Ğ Ğ¸Ğ¾Ñ','ER',1),(164,10,'Ğ¤Ğ¾Ñ€Ğ¼Ğ¾ÑĞ°','FO',1),(165,10,'Ğ–ÑƒĞ¶ÑƒĞ¹','JU',1),(166,10,'Ğ›Ğ°-ĞŸĞ°Ğ¼Ğ¿Ğ°','LP',1),(167,10,'Ğ›Ğ°-Ğ Ğ¸Ğ¾Ñ…Ğ°','LR',1),(168,10,'ĞœĞµĞ½Ğ´Ğ¾ÑĞ°','ME',1),(169,10,'ĞœĞ¸ÑÑŒĞ¾Ğ½ĞµÑ','MI',1),(170,10,'ĞĞµÑƒĞºĞµĞ½','NE',1),(171,10,'Ğ Ğ¸Ğ¾-ĞĞµĞ³Ñ€Ğ¾','RN',1),(172,10,'Ğ¡Ğ°Ğ»ÑŒÑ‚Ğ°','SA',1),(173,10,'Ğ¡Ğ°Ğ½-Ğ¥ÑƒĞ°Ğ½','SJ',1),(174,10,'Ğ¡Ğ°Ğ½-Ğ›ÑƒĞ¸Ñ','SL',1),(175,10,'Ğ¡Ğ°Ğ½Ñ‚Ğ°-ĞšÑ€ÑƒÑ','SC',1),(176,10,'Ğ¡Ğ°Ğ½Ñ‚Ğ°-Ğ¤Ğµ','SF',1),(177,10,'Ğ¡Ğ°Ğ½Ñ‚ÑŒÑĞ³Ğ¾-Ğ´ĞµĞ»ÑŒ-Ğ­ÑÑ‚ĞµÑ€Ğ¾','SD',1),(178,10,'Ğ¢ÑŒĞµÑ€Ñ€Ğ°-Ğ´ĞµĞ»ÑŒ-Ğ¤ÑƒÑĞ³Ğ¾','TF',1),(179,10,'Ğ¢ÑƒĞºÑƒĞ¼Ğ°Ğ½','TU',1),(180,11,'ĞÑ€Ğ°Ğ³Ğ°Ñ†Ğ¾Ñ‚Ğ½','AGT',1),(181,11,'ĞÑ€Ğ°Ñ€Ğ°Ñ‚','ARR',1),(182,11,'ĞÑ€Ğ¼Ğ°Ğ²Ğ¸Ñ€','ARM',1),(183,11,'Ğ“ĞµĞ³Ğ°Ñ€ĞºÑƒĞ½Ğ¸Ğº','GEG',1),(184,11,'ĞšĞ¾Ñ‚Ğ°Ğ¹Ğº','KOT',1),(185,11,'Ğ›Ğ¾Ñ€Ğ¸','LOR',1),(186,11,'Ğ¨Ğ¸Ñ€Ğ°Ğº','SHI',1),(187,11,'Ğ¡ÑĞ½Ğ¸Ğº','SYU',1),(188,11,'Ğ¢Ğ°Ğ²ÑƒÑˆ','TAV',1),(189,11,'Ğ’Ğ°Ğ¹Ğ¾Ñ† Ğ”Ğ·Ğ¾Ñ€','VAY',1),(190,11,'Ğ•Ñ€ĞµĞ²Ğ°Ğ½','YER',1),(191,13,'ĞĞ²ÑÑ‚Ñ€Ğ°Ğ»Ğ¸Ğ¹ÑĞºĞ°Ñ ÑÑ‚Ğ¾Ğ»Ğ¸Ñ‡Ğ½Ğ°Ñ Ñ‚ĞµÑ€Ñ€Ğ¸Ñ‚Ğ¾Ñ€Ğ¸Ñ','ACT',1),(192,13,'ĞĞ¾Ğ²Ñ‹Ğ¹ Ğ®Ğ¶Ğ½Ñ‹Ğ¹ Ğ£ÑĞ»ÑŒÑ','NSW',1),(193,13,'Ğ¡ĞµĞ²ĞµÑ€Ğ½Ğ°Ñ Ñ‚ĞµÑ€Ñ€Ğ¸Ñ‚Ğ¾Ñ€Ğ¸Ñ','NT',1),(194,13,'ĞšĞ²Ğ¸Ğ½ÑĞ»ĞµĞ½Ğ´','QLD',1),(195,13,'Ğ®Ğ¶Ğ½Ğ°Ñ ĞĞ²ÑÑ‚Ñ€Ğ°Ğ»Ğ¸Ñ','SA',1),(196,13,'Ğ¢Ğ°ÑĞ¼Ğ°Ğ½Ğ¸Ñ','TAS',1),(197,13,'Ğ’Ğ¸ĞºÑ‚Ğ¾Ñ€Ğ¸Ñ','VIC',1),(198,13,'Ğ—Ğ°Ğ¿Ğ°Ğ´Ğ½Ğ°Ñ ĞĞ²ÑÑ‚Ñ€Ğ°Ğ»Ğ¸Ñ','WA',1),(199,14,'Ğ‘ÑƒÑ€Ğ³ĞµĞ½Ğ»Ğ°Ğ½Ğ´','BUR',1),(200,14,'ĞšĞ°Ñ€Ğ¸Ğ½Ñ‚Ğ¸Ñ','KAR',1),(201,14,'ĞĞ¸Ğ¶Ğ½ÑÑ ĞĞ²ÑÑ‚Ñ€Ğ¸Ñ','NOS',1),(202,14,'Ğ’ĞµÑ€Ñ…Ğ½ÑÑ ĞĞ²ÑÑ‚Ñ€Ğ¸Ñ','OOS',1),(203,14,'Ğ—Ğ°Ğ»ÑŒÑ†Ğ±ÑƒÑ€Ğ³','SAL',1),(204,14,'Ğ¨Ñ‚Ğ¸Ñ€Ğ¸Ñ','STE',1),(205,14,'Ğ¢Ğ¸Ñ€Ğ¾Ğ»ÑŒ','TIR',1),(206,14,'Ğ¤Ğ¾Ñ€Ğ°Ñ€Ğ»ÑŒĞ±ĞµÑ€Ğ³','VOR',1),(207,14,'Ğ’ĞµĞ½Ğ°','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Ğ‘Ñ€ĞµÑÑ‚','BR',1),(338,20,'Ğ“Ğ¾Ğ¼ĞµĞ»ÑŒ','HO',1),(339,20,'ĞœĞ¸Ğ½ÑĞº','HM',1),(340,20,'Ğ“Ñ€Ğ¾Ğ´Ğ½Ğ¾','HR',1),(341,20,'ĞœĞ¾Ğ³Ğ¸Ğ»ĞµĞ²','MA',1),(342,20,'ĞœĞ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','MI',1),(343,20,'Ğ’Ğ¸Ñ‚ĞµĞ±ÑĞº','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liege','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapa','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceara','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espirito Santo','ES',1),(448,30,'Goias','GO',1),(449,30,'Maranhao','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Para','PA',1),(454,30,'Paraiba','PB',1),(455,30,'Parana','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piaui','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondonia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'Sao Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÃ”','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Hi','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chi','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovar-Bilogora','BB',1),(848,53,'City of Zagreb','CZ',1),(849,53,'Dubrovnik-Neretva','DN',1),(850,53,'Istra','IS',1),(851,53,'Karlovac','KA',1),(852,53,'Koprivnica-Krizevci','KK',1),(853,53,'Krapina-Zagorje','KZ',1),(854,53,'Lika-Senj','LS',1),(855,53,'Medimurje','ME',1),(856,53,'Osijek-Baranja','OB',1),(857,53,'Pozega-Slavonia','PS',1),(858,53,'Primorje-Gorski Kotar','PG',1),(859,53,'Sibenik','SI',1),(860,53,'Sisak-Moslavina','SM',1),(861,53,'Slavonski Brod-Posavina','SB',1),(862,53,'Split-Dalmatia','SD',1),(863,53,'Varazdin','VA',1),(864,53,'Virovitica-Podravina','VP',1),(865,53,'Vukovar-Srijem','VS',1),(866,53,'Zadar-Knin','ZK',1),(867,53,'Zagreb','ZA',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'ÃšsteckÃ½','U',1),(890,56,'JihoÄeskÃ½','C',1),(891,56,'JihomoravskÃ½','B',1),(892,56,'KarlovarskÃ½','K',1),(893,56,'KrÃ¡lovehradeckÃ½','H',1),(894,56,'LibereckÃ½','L',1),(895,56,'MoravskoslezskÃ½','T',1),(896,56,'OlomouckÃ½','M',1),(897,56,'PardubickÃ½','E',1),(898,56,'PlzeÅˆskÃ½','P',1),(899,56,'Praha','A',1),(900,56,'StÅ™edoÄeskÃ½','S',1),(901,56,'VysoÄina','J',1),(902,56,'ZlÃ­nskÃ½','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan Laani','AL',1),(1086,72,'Etela-Suomen Laani','ES',1),(1087,72,'Ita-Suomen Laani','IS',1),(1088,72,'Lansi-Suomen Laani','LS',1),(1089,72,'Lapin Lanani','LA',1),(1090,72,'Oulun Laani','OU',1),(1091,73,'Alsace','AL',1),(1092,73,'Aquitaine','AQ',1),(1093,73,'Auvergne','AU',1),(1094,73,'Brittany','BR',1),(1095,73,'Burgundy','BU',1),(1096,73,'Center Loire Valley','CE',1),(1097,73,'Champagne','CH',1),(1098,73,'Corse','CO',1),(1099,73,'France Comte','FR',1),(1100,73,'Languedoc Roussillon','LA',1),(1101,73,'Limousin','LI',1),(1102,73,'Lorraine','LO',1),(1103,73,'Midi Pyrenees','MI',1),(1104,73,'Nord Pas de Calais','NO',1),(1105,73,'Normandy','NR',1),(1106,73,'Paris / Ill de France','PA',1),(1107,73,'Picardie','PI',1),(1108,73,'Poitou Charente','PO',1),(1109,73,'Provence','PR',1),(1110,73,'Rhone Alps','RH',1),(1111,73,'Riviera','RI',1),(1112,73,'Western Loire Valley','WE',1),(1113,74,'Etranger','Et',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1428,97,'Bacs-Kiskun','BK',1),(1429,97,'Baranya','BA',1),(1430,97,'Bekes','BE',1),(1431,97,'Bekescsaba','BS',1),(1432,97,'Borsod-Abauj-Zemplen','BZ',1),(1433,97,'Budapest','BU',1),(1434,97,'Csongrad','CS',1),(1435,97,'Debrecen','DE',1),(1436,97,'Dunaujvaros','DU',1),(1437,97,'Eger','EG',1),(1438,97,'Fejer','FE',1),(1439,97,'Gyor','GY',1),(1440,97,'Gyor-Moson-Sopron','GM',1),(1441,97,'Hajdu-Bihar','HB',1),(1442,97,'Heves','HE',1),(1443,97,'Hodmezovasarhely','HO',1),(1444,97,'Jasz-Nagykun-Szolnok','JN',1),(1445,97,'Kaposvar','KA',1),(1446,97,'Kecskemet','KE',1),(1447,97,'Komarom-Esztergom','KO',1),(1448,97,'Miskolc','MI',1),(1449,97,'Nagykanizsa','NA',1),(1450,97,'Nograd','NO',1),(1451,97,'Nyiregyhaza','NY',1),(1452,97,'Pecs','PE',1),(1453,97,'Pest','PS',1),(1454,97,'Somogy','SO',1),(1455,97,'Sopron','SP',1),(1456,97,'Szabolcs-Szatmar-Bereg','SS',1),(1457,97,'Szeged','SZ',1),(1458,97,'Szekesfehervar','SE',1),(1459,97,'Szolnok','SL',1),(1460,97,'Szombathely','SM',1),(1461,97,'Tatabanya','TA',1),(1462,97,'Tolna','TO',1),(1463,97,'Vas','VA',1),(1464,97,'Veszprem','VE',1),(1465,97,'Zala','ZA',1),(1466,97,'Zalaegerszeg','ZZ',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'ĞĞ»Ğ¼Ğ°Ñ‚Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AL',1),(1717,109,'ĞĞ»Ğ¼Ğ°Ñ‚Ñ‹ - Ğ³Ğ¾Ñ€Ğ¾Ğ´ Ñ€ĞµÑĞ¿ÑƒĞ±Ğ»-Ğ³Ğ¾ Ğ·Ğ½Ğ°Ñ‡ĞµĞ½Ğ¸Ñ','AC',1),(1718,109,'ĞĞºĞ¼Ğ¾Ğ»Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AM',1),(1719,109,'ĞĞºÑ‚ÑĞ±Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AQ',1),(1720,109,'ĞÑÑ‚Ğ°Ğ½Ğ° - Ğ³Ğ¾Ñ€Ğ¾Ğ´ Ñ€ĞµÑĞ¿ÑƒĞ±Ğ»-Ğ³Ğ¾ Ğ·Ğ½Ğ°Ñ‡ĞµĞ½Ğ¸Ñ','AS',1),(1721,109,'ĞÑ‚Ñ‹Ñ€Ğ°ÑƒÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AT',1),(1722,109,'Ğ—Ğ°Ğ¿Ğ°Ğ´Ğ½Ğ¾-ĞšĞ°Ğ·Ğ°Ñ…ÑÑ‚Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','BA',1),(1723,109,'Ğ‘Ğ°Ğ¹ĞºĞ¾Ğ½ÑƒÑ€ - Ğ³Ğ¾Ñ€Ğ¾Ğ´ Ñ€ĞµÑĞ¿ÑƒĞ±Ğ»-Ğ³Ğ¾ Ğ·Ğ½Ğ°Ñ‡ĞµĞ½Ğ¸Ñ','BY',1),(1724,109,'ĞœĞ°Ğ½Ğ³Ğ¸ÑÑ‚Ğ°ÑƒÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','MA',1),(1725,109,'Ğ®Ğ¶Ğ½Ğ¾-ĞšĞ°Ğ·Ğ°Ñ…ÑÑ‚Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ON',1),(1726,109,'ĞŸĞ°Ğ²Ğ»Ğ¾Ğ´Ğ°Ñ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','PA',1),(1727,109,'ĞšĞ°Ñ€Ğ°Ğ³Ğ°Ğ½Ğ´Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','QA',1),(1728,109,'ĞšĞ¾ÑÑ‚Ğ°Ğ½Ğ°Ğ¹ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','QO',1),(1729,109,'ĞšÑ‹Ğ·Ñ‹Ğ»Ğ¾Ñ€Ğ´Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','QY',1),(1730,109,'Ğ’Ğ¾ÑÑ‚Ğ¾Ñ‡Ğ½Ğ¾-ĞšĞ°Ğ·Ğ°Ñ…ÑÑ‚Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SH',1),(1731,109,'Ğ¡ĞµĞ²ĞµÑ€Ğ¾-ĞšĞ°Ğ·Ğ°Ñ…ÑÑ‚Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SO',1),(1732,109,'Ğ–Ğ°Ğ¼Ğ±Ñ‹Ğ»ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1819,117,'Aizkraukles Rajons','AIZ',1),(1820,117,'Aluksnes Rajons','ALU',1),(1821,117,'Balvu Rajons','BAL',1),(1822,117,'Bauskas Rajons','BAU',1),(1823,117,'Cesu Rajons','CES',1),(1824,117,'Daugavpils Rajons','DGR',1),(1825,117,'Dobeles Rajons','DOB',1),(1826,117,'Gulbenes Rajons','GUL',1),(1827,117,'Jekabpils Rajons','JEK',1),(1828,117,'Jelgavas Rajons','JGR',1),(1829,117,'Kraslavas Rajons','KRA',1),(1830,117,'Kuldigas Rajons','KUL',1),(1831,117,'Liepajas Rajons','LPR',1),(1832,117,'Limbazu Rajons','LIM',1),(1833,117,'Ludzas Rajons','LUD',1),(1834,117,'Madonas Rajons','MAD',1),(1835,117,'Ogres Rajons','OGR',1),(1836,117,'Preilu Rajons','PRE',1),(1837,117,'Rezeknes Rajons','RZR',1),(1838,117,'Rigas Rajons','RGR',1),(1839,117,'Saldus Rajons','SAL',1),(1840,117,'Talsu Rajons','TAL',1),(1841,117,'Tukuma Rajons','TUK',1),(1842,117,'Valkas Rajons','VLK',1),(1843,117,'Valmieras Rajons','VLM',1),(1844,117,'Ventspils Rajons','VSR',1),(1845,117,'Daugavpils','DGV',1),(1846,117,'Jelgava','JGV',1),(1847,117,'Jurmala','JUR',1),(1848,117,'Liepaja','LPK',1),(1849,117,'Rezekne','RZK',1),(1850,117,'Riga','RGA',1),(1851,117,'Ventspils','VSL',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','JO',1),(1972,129,'Kedah','KE',1),(1973,129,'Kelantan','KL',1),(1974,129,'Labuan','LA',1),(1975,129,'Melaka','ME',1),(1976,129,'Negeri Sembilan','NS',1),(1977,129,'Pahang','PA',1),(1978,129,'Perak','PE',1),(1979,129,'Perlis','PR',1),(1980,129,'Pulau Pinang','PP',1),(1981,129,'Sabah','SA',1),(1982,129,'Sarawak','SR',1),(1983,129,'Selangor','SE',1),(1984,129,'Terengganu','TE',1),(1985,129,'Wilayah Persekutuan','WP',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'Stâ€šnga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairprarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ¥Ğ°ĞºĞ°ÑĞ¸Ñ','KK',1),(2722,176,'ĞœĞ¾ÑĞºĞ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','MOS',1),(2723,176,'Ğ§ÑƒĞºĞ¾Ñ‚ÑĞºĞ¸Ğ¹ ĞĞ','CHU',1),(2724,176,'ĞÑ€Ñ…Ğ°Ğ½Ğ³ĞµĞ»ÑŒÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ARK',1),(2725,176,'ĞÑÑ‚Ñ€Ğ°Ñ…Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AST',1),(2726,176,'ĞĞ»Ñ‚Ğ°Ğ¹ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','ALT',1),(2727,176,'Ğ‘ĞµĞ»Ğ³Ğ¾Ñ€Ğ¾Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','BEL',1),(2728,176,'Ğ•Ğ²Ñ€ĞµĞ¹ÑĞºĞ°Ñ ĞĞ','YEV',1),(2729,176,'ĞĞ¼ÑƒÑ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','AMU',1),(2730,176,'Ğ‘Ñ€ÑĞ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','BRY',1),(2731,176,'Ğ§ÑƒĞ²Ğ°ÑˆÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','CU',1),(2732,176,'Ğ§ĞµĞ»ÑĞ±Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','CHE',1),(2733,176,'ĞšĞ°Ñ€Ğ°Ñ‡Ğ°ĞµĞ²Ğ¾-Ğ§ĞµÑ€ĞºĞµcÑĞ¸Ñ','KC',1),(2734,176,'Ğ—Ğ°Ğ±Ğ°Ğ¹ĞºĞ°Ğ»ÑŒÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','ZAB',1),(2735,176,'Ğ›ĞµĞ½Ğ¸Ğ½Ğ³Ñ€Ğ°Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','LEN',1),(2736,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞšĞ°Ğ»Ğ¼Ñ‹ĞºĞ¸Ñ','KL',1),(2737,176,'Ğ¡Ğ°Ñ…Ğ°Ğ»Ğ¸Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SAK',1),(2738,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞĞ»Ñ‚Ğ°Ğ¹','AL',1),(2739,176,'Ğ§ĞµÑ‡ĞµĞ½ÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','CE',1),(2740,176,'Ğ˜Ñ€ĞºÑƒÑ‚ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','IRK',1),(2741,176,'Ğ˜Ğ²Ğ°Ğ½Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','IVA',1),(2742,176,'Ğ£Ğ´Ğ¼ÑƒÑ€Ñ‚ÑĞºĞ°Ñ Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ°','UD',1),(2743,176,'ĞšĞ°Ğ»Ğ¸Ğ½Ğ¸Ğ½Ğ³Ñ€Ğ°Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KGD',1),(2744,176,'ĞšĞ°Ğ»ÑƒĞ¶ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KLU',1),(2746,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ¢Ğ°Ñ‚Ğ°Ñ€ÑÑ‚Ğ°Ğ½','TA',1),(2747,176,'ĞšĞµĞ¼ĞµÑ€Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KEM',1),(2748,176,'Ğ¥Ğ°Ğ±Ğ°Ñ€Ğ¾Ğ²ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','KHA',1),(2749,176,'Ğ¥Ğ°Ğ½Ñ‚Ñ‹-ĞœĞ°Ğ½ÑĞ¸Ğ¹ÑĞºĞ¸Ğ¹ ĞĞ - Ğ®Ğ³Ñ€Ğ°','KHM',1),(2750,176,'ĞšĞ¾ÑÑ‚Ñ€Ğ¾Ğ¼ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KOS',1),(2751,176,'ĞšÑ€Ğ°ÑĞ½Ğ¾Ğ´Ğ°Ñ€ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','KDA',1),(2752,176,'ĞšÑ€Ğ°ÑĞ½Ğ¾ÑÑ€ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','KYA',1),(2754,176,'ĞšÑƒÑ€Ğ³Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KGN',1),(2755,176,'ĞšÑƒÑ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KRS',1),(2756,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ¢Ñ‹Ğ²Ğ°','TY',1),(2757,176,'Ğ›Ğ¸Ğ¿ĞµÑ†ĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','LIP',1),(2758,176,'ĞœĞ°Ğ³Ğ°Ğ´Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','MAG',1),(2759,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ”Ğ°Ğ³ĞµÑÑ‚Ğ°Ğ½','DA',1),(2760,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞĞ´Ñ‹Ğ³ĞµÑ','AD',1),(2761,176,'ĞœĞ¾ÑĞºĞ²Ğ°','MOW',1),(2762,176,'ĞœÑƒÑ€Ğ¼Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','MUR',1),(2763,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞšĞ°Ğ±Ğ°Ñ€Ğ´Ğ¸Ğ½Ğ¾-Ğ‘Ğ°Ğ»ĞºĞ°Ñ€Ğ¸Ñ','KB',1),(2764,176,'ĞĞµĞ½ĞµÑ†ĞºĞ¸Ğ¹ ĞĞ','NEN',1),(2765,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ˜Ğ½Ğ³ÑƒÑˆĞµÑ‚Ğ¸Ñ','IN',1),(2766,176,'ĞĞ¸Ğ¶ĞµĞ³Ğ¾Ñ€Ğ¾Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','NIZ',1),(2767,176,'ĞĞ¾Ğ²Ğ³Ğ¾Ñ€Ğ¾Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','NGR',1),(2768,176,'ĞĞ¾Ğ²Ğ¾ÑĞ¸Ğ±Ğ¸Ñ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','NVS',1),(2769,176,'ĞĞ¼ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','OMS',1),(2770,176,'ĞÑ€Ğ»Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ORL',1),(2771,176,'ĞÑ€ĞµĞ½Ğ±ÑƒÑ€Ğ³ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ORE',1),(2773,176,'ĞŸĞµĞ½Ğ·ĞµĞ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','PNZ',1),(2774,176,'ĞŸĞµÑ€Ğ¼ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','PER',1),(2775,176,'ĞšĞ°Ğ¼Ñ‡Ğ°Ñ‚ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','KAM',1),(2776,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞšĞ°Ñ€ĞµĞ»Ğ¸Ñ','KR',1),(2777,176,'ĞŸÑĞºĞ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','PSK',1),(2778,176,'Ğ Ğ¾ÑÑ‚Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ROS',1),(2779,176,'Ğ ÑĞ·Ğ°Ğ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','RYA',1),(2780,176,'Ğ¯Ğ¼Ğ°Ğ»Ğ¾-ĞĞµĞ½ĞµÑ†ĞºĞ¸Ğ¹ ĞĞ','YAN',1),(2781,176,'Ğ¡Ğ°Ğ¼Ğ°Ñ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SAM',1),(2782,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞœĞ¾Ñ€Ğ´Ğ¾Ğ²Ğ¸Ñ','MO',1),(2783,176,'Ğ¡Ğ°Ñ€Ğ°Ñ‚Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SAR',1),(2784,176,'Ğ¡Ğ¼Ğ¾Ğ»ĞµĞ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SMO',1),(2785,176,'Ğ¡Ğ°Ğ½ĞºÑ‚-ĞŸĞµÑ‚ĞµÑ€Ğ±ÑƒÑ€Ğ³','SPE',1),(2786,176,'Ğ¡Ñ‚Ğ°Ğ²Ñ€Ğ¾Ğ¿Ğ¾Ğ»ÑŒÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','STA',1),(2787,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞšĞ¾Ğ¼Ğ¸','KO',1),(2788,176,'Ğ¢Ğ°Ğ¼Ğ±Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','TAM',1),(2789,176,'Ğ¢Ğ¾Ğ¼ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','TOM',1),(2790,176,'Ğ¢ÑƒĞ»ÑŒÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','TUL',1),(2792,176,'Ğ¢Ğ²ĞµÑ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','TVE',1),(2793,176,'Ğ¢ÑĞ¼ĞµĞ½ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','TYU',1),(2794,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ‘Ğ°ÑˆĞºĞ¾Ñ€Ñ‚Ğ¾ÑÑ‚Ğ°Ğ½','BA',1),(2795,176,'Ğ£Ğ»ÑŒÑĞ½Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','ULY',1),(2796,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ‘ÑƒÑ€ÑÑ‚Ğ¸Ñ','BU',1),(2798,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ¡ĞµĞ²ĞµÑ€Ğ½Ğ°Ñ ĞÑĞµÑ‚Ğ¸Ñ','SE',1),(2799,176,'Ğ’Ğ»Ğ°Ğ´Ğ¸Ğ¼Ğ¸Ñ€ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','VLA',1),(2800,176,'ĞŸÑ€Ğ¸Ğ¼Ğ¾Ñ€ÑĞºĞ¸Ğ¹ ĞºÑ€Ğ°Ğ¹','PRI',1),(2801,176,'Ğ’Ğ¾Ğ»Ğ³Ğ¾Ğ³Ñ€Ğ°Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','VGG',1),(2802,176,'Ğ’Ğ¾Ğ»Ğ¾Ğ³Ğ¾Ğ´ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','VLG',1),(2803,176,'Ğ’Ğ¾Ñ€Ğ¾Ğ½ĞµĞ¶ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','VOR',1),(2804,176,'ĞšĞ¸Ñ€Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KIR',1),(2805,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° Ğ¡Ğ°Ñ…Ğ°','SA',1),(2806,176,'Ğ¯Ñ€Ğ¾ÑĞ»Ğ°Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','YAR',1),(2807,176,'Ğ¡Ğ²ĞµÑ€Ğ´Ğ»Ğ¾Ğ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','SVE',1),(2808,176,'Ğ ĞµÑĞ¿ÑƒĞ±Ğ»Ğ¸ĞºĞ° ĞœĞ°Ñ€Ğ¸Ğ¹ Ğ­Ğ»','ME',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'BanskobystrickÃ½','BA',1),(2926,189,'BratislavskÃ½','BR',1),(2927,189,'KoÅ¡ickÃ½','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'PreÅ¡ovskÃ½','PR',1),(2930,189,'TrenÄiansky','TC',1),(2931,189,'TrnavskÃ½','TV',1),(2932,189,'Å½ilinskÃ½','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3031,197,'Ascension','A',1),(3032,197,'Saint Helena','S',1),(3033,197,'Tristan da Cunha','T',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'AdÄ±yaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'AÄŸrÄ±','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'AydÄ±n','AYI',1),(3326,215,'BalÄ±kesir','BAL',1),(3327,215,'BartÄ±n','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'BingÃ¶l','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Ã‡anakkale','CKL',1),(3337,215,'Ã‡ankÄ±rÄ±','CKR',1),(3338,215,'Ã‡orum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakir','DIY',1),(3341,215,'DÃ¼zce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazig','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'EskiÅŸehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'GÃ¼mÃ¼ÅŸhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'IÄŸdÄ±r','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'Ä°stanbul','IST',1),(3355,215,'Ä°zmir','IZM',1),(3356,215,'KahramanmaraÅŸ','KAH',1),(3357,215,'KarabÃ¼k','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kirikkale','KRK',1),(3364,215,'Kirklareli','KLR',1),(3365,215,'Kirsehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'KÃ¼tahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'MuÄŸla','MUG',1),(3374,215,'MuÅŸ','MUS',1),(3375,215,'NevÅŸehir','NEV',1),(3376,215,'NiÄŸde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'ÅanlÄ±urfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'ÅÄ±rnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'TekirdaÄŸ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'UÅŸak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Ğ§ĞµÑ€ĞºĞ°ÑÑÑ‹','CK',1),(3481,220,'Ğ§ĞµÑ€Ğ½Ğ¸Ğ³Ğ¾Ğ²','CH',1),(3482,220,'Ğ§ĞµÑ€Ğ½Ğ¾Ğ²Ñ†Ñ‹','CV',1),(3483,220,'ĞšÑ€Ñ‹Ğ¼','CR',1),(3484,220,'Ğ”Ğ½ĞµĞ¿Ñ€Ğ¾Ğ¿ĞµÑ‚Ñ€Ğ¾Ğ²ÑĞº','DN',1),(3485,220,'Ğ”Ğ¾Ğ½ĞµÑ†Ğº','DO',1),(3486,220,'Ğ˜Ğ²Ğ°Ğ½Ğ¾-Ğ¤Ñ€Ğ°Ğ½ĞºĞ¾Ğ²ÑĞº','IV',1),(3487,220,'Ğ¥Ğ°Ñ€ÑŒĞºĞ¾Ğ²','KH',1),(3488,220,'Ğ¥Ğ¼ĞµĞ»ÑŒĞ½Ğ¸Ñ†ĞºĞ¸Ğ¹','KM',1),(3489,220,'ĞšĞ¸Ñ€Ğ¾Ğ²Ğ¾Ğ³Ñ€Ğ°Ğ´','KR',1),(3490,220,'ĞšĞ¸ĞµĞ²ÑĞºĞ°Ñ Ğ¾Ğ±Ğ»Ğ°ÑÑ‚ÑŒ','KV',1),(3491,220,'ĞšĞ¸ĞµĞ²','KY',1),(3492,220,'Ğ›ÑƒĞ³Ğ°Ğ½ÑĞº','LU',1),(3493,220,'Ğ›ÑŒĞ²Ğ¾Ğ²','LV',1),(3494,220,'ĞĞ¸ĞºĞ¾Ğ»Ğ°ĞµĞ²','MY',1),(3495,220,'ĞĞ´ĞµÑÑĞ°','OD',1),(3496,220,'ĞŸĞ¾Ğ»Ñ‚Ğ°Ğ²Ğ°','PO',1),(3497,220,'Ğ Ğ¾Ğ²Ğ½Ğ¾','RI',1),(3498,220,'Ğ¡ĞµĞ²Ğ°ÑÑ‚Ğ¾Ğ¿Ğ¾Ğ»ÑŒ','SE',1),(3499,220,'Ğ¡ÑƒĞ¼Ñ‹','SU',1),(3500,220,'Ğ¢ĞµÑ€Ğ½Ğ¾Ğ¿Ğ¾Ğ»ÑŒ','TE',1),(3501,220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°','VI',1),(3502,220,'Ğ›ÑƒÑ†Ğº','VO',1),(3503,220,'Ğ£Ğ¶Ğ³Ğ¾Ñ€Ğ¾Ğ´','ZK',1),(3504,220,'Ğ—Ğ°Ğ¿Ğ¾Ñ€Ğ¾Ğ¶ÑŒĞµ','ZA',1),(3505,220,'Ğ–Ğ¸Ñ‚Ğ¾Ğ¼Ğ¸Ñ€','ZH',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3808,236,'Kosovo','KOS',1),(3809,236,'Montenegro','MON',1),(3810,236,'Serbia','SER',1),(3811,236,'Vojvodina','VOJ',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'KoroÅ¡ka','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraÅ¡ka','10',1),(3966,190,'GoriÅ¡ka','11',1),(3967,190,'Obalno-kraÅ¡ka','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,220,'Ğ¥ĞµÑ€ÑĞ¾Ğ½','KE',1);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_to_geo_zone`
--

DROP TABLE IF EXISTS `zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_to_geo_zone`
--

LOCK TABLES `zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `zone_to_geo_zone` VALUES (57,176,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-11 23:48:13
