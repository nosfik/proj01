-- MySQL dump 10.13  Distrib 5.5.28, for Win64 (x86)
--
-- Host: localhost    Database: pechatnik
-- ------------------------------------------------------
-- Server version	5.5.28

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (10,'werytg','rtfhg','2013-02-13 18:56:09','foot.jpg',5),(11,'asd','qweqweqw','2013-02-13 22:47:31','fon.jpg',5),(12,'oioioio','hfghfgh','2013-02-13 22:47:59','',5),(13,'hjkhj','fghg','2013-02-13 22:48:23','foot.jpg',5);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_order`
--

DROP TABLE IF EXISTS `album_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_order` (
  `album_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `customer_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_order`
--

LOCK TABLES `album_order` WRITE;
/*!40000 ALTER TABLE `album_order` DISABLE KEYS */;
INSERT INTO `album_order` VALUES (13,'2013-02-17 23:07:27','2013-02-18','04:27:27',5,10,0),(14,'2013-02-17 23:25:14','2013-02-18','04:45:14',5,10,0),(15,'2013-02-17 23:25:50','2013-02-18','04:45:50',5,10,0),(16,'2013-02-17 23:28:35','2013-02-18','04:48:35',5,10,0),(17,'2013-02-17 23:28:54','2013-02-18','04:48:54',5,10,0);
/*!40000 ALTER TABLE `album_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_order_content`
--

DROP TABLE IF EXISTS `album_order_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_order_content` (
  `album_order_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_order_id` int(11) NOT NULL,
  `album_photo_id` int(11) NOT NULL,
  `count` int(3) NOT NULL DEFAULT '0',
  `photo_name` varchar(100) NOT NULL DEFAULT '0',
  `album_photo_format_id` int(3) NOT NULL DEFAULT '0',
  `album_photo_paper_id` int(3) NOT NULL DEFAULT '0',
  `album_photo_printmode_id` int(3) NOT NULL DEFAULT '0',
  `color_correction` tinyint(1) NOT NULL DEFAULT '0',
  `cut_photo` tinyint(1) NOT NULL DEFAULT '0',
  `red_eye` tinyint(1) NOT NULL DEFAULT '0',
  `white_border` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_order_content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_order_content`
--

LOCK TABLES `album_order_content` WRITE;
/*!40000 ALTER TABLE `album_order_content` DISABLE KEYS */;
INSERT INTO `album_order_content` VALUES (8,12,38,3,'fon.jpg',2,1,2,0,1,1,1),(9,12,39,3,'fon_.jpg',2,1,2,0,1,1,1),(10,12,40,3,'foot.jpg',2,1,2,0,1,1,1),(11,13,41,1,'fon.jpg',1,1,1,1,0,0,0),(12,13,42,1,'fon_.jpg',1,1,1,1,0,0,0),(13,13,43,1,'foot.jpg',1,1,1,1,0,0,0),(14,14,44,1,'fon.jpg',1,1,1,1,0,0,0),(15,14,45,1,'fon_.jpg',1,1,1,1,0,0,0),(16,14,46,1,'foot.jpg',1,1,1,1,0,0,0),(17,15,47,1,'fon.jpg',1,1,1,1,0,0,0),(18,15,48,1,'fon_.jpg',1,1,1,1,0,0,0),(19,15,49,1,'foot.jpg',1,1,1,1,0,0,0),(20,16,30,1,'fon.jpg',1,1,1,1,0,0,0),(21,16,31,1,'fon_.jpg',1,1,1,1,0,0,0),(22,16,32,1,'foot.jpg',1,1,1,1,0,0,0),(23,17,50,1,'fon.jpg',1,1,1,1,0,0,0),(24,17,51,1,'fon_.jpg',1,1,1,1,0,0,0),(25,17,52,1,'foot.jpg',1,1,1,1,0,0,0);
/*!40000 ALTER TABLE `album_order_content` ENABLE KEYS */;
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
  `album_photo_format_id` int(2) NOT NULL DEFAULT '0',
  `album_photo_paper_id` int(2) NOT NULL DEFAULT '0',
  `album_photo_printmode_id` int(2) NOT NULL DEFAULT '0',
  `color_correction` tinyint(1) NOT NULL DEFAULT '0',
  `cut_photo` tinyint(1) NOT NULL DEFAULT '0',
  `white_border` tinyint(1) NOT NULL DEFAULT '0',
  `red_eye` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_photo_id`),
  KEY `album` (`album_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo`
--

LOCK TABLES `album_photo` WRITE;
/*!40000 ALTER TABLE `album_photo` DISABLE KEYS */;
INSERT INTO `album_photo` VALUES (30,10,'fon.jpg','2013-02-16 18:14:11',0,1,1,1,0,0,0),(32,10,'foot.jpg','2013-02-16 18:14:12',3,2,1,1,0,0,0),(50,10,'fon.jpg','2013-02-17 23:28:54',1,1,1,1,0,0,0),(51,10,'fon_.jpg','2013-02-17 23:28:54',1,1,1,1,0,0,0),(52,10,'foot.jpg','2013-02-17 23:28:54',1,1,1,1,0,0,0);
/*!40000 ALTER TABLE `album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo_cut`
--

DROP TABLE IF EXISTS `album_photo_cut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_photo_cut` (
  `album_photo_cut_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`album_photo_cut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo_cut`
--

LOCK TABLES `album_photo_cut` WRITE;
/*!40000 ALTER TABLE `album_photo_cut` DISABLE KEYS */;
INSERT INTO `album_photo_cut` VALUES (1,'Ğ‘ĞµĞ· Ğ¿Ğ¾Ğ»ĞµĞ¹'),(2,'Ğ¡ Ğ¿Ğ¾Ğ»ÑĞ¼Ğ¸');
/*!40000 ALTER TABLE `album_photo_cut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo_format`
--

DROP TABLE IF EXISTS `album_photo_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_photo_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `sort_order` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo_format`
--

LOCK TABLES `album_photo_format` WRITE;
/*!40000 ALTER TABLE `album_photo_format` DISABLE KEYS */;
INSERT INTO `album_photo_format` VALUES (1,'10x13',2,'1'),(2,'15x20',1.5,'0'),(3,'qwe',5,'123');
/*!40000 ALTER TABLE `album_photo_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo_paper`
--

DROP TABLE IF EXISTS `album_photo_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_photo_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percent` int(2) NOT NULL,
  `sort_order` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo_paper`
--

LOCK TABLES `album_photo_paper` WRITE;
/*!40000 ALTER TABLE `album_photo_paper` DISABLE KEYS */;
INSERT INTO `album_photo_paper` VALUES (1,'Ğ“Ğ»ÑĞ½Ñ†ĞµĞ²Ğ°Ñ',0,'0'),(2,'ĞœĞ°Ñ‚Ğ¾Ğ²Ğ°Ñ1',4,'1'),(3,'sdf',5,'123'),(4,'123',6,'12');
/*!40000 ALTER TABLE `album_photo_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo_printmode`
--

DROP TABLE IF EXISTS `album_photo_printmode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_photo_printmode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo_printmode`
--

LOCK TABLES `album_photo_printmode` WRITE;
/*!40000 ALTER TABLE `album_photo_printmode` DISABLE KEYS */;
INSERT INTO `album_photo_printmode` VALUES (1,'Ğ‘ĞµĞ· ÑÑ„Ñ„ĞµĞºÑ‚Ğ¾Ğ²'),(2,'Ğ¡ ÑÑ„Ñ„ĞµĞºÑ‚Ğ°Ğ¼Ğ¸');
/*!40000 ALTER TABLE `album_photo_printmode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_preferences`
--

DROP TABLE IF EXISTS `album_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_preferences` (
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_preferences`
--

LOCK TABLES `album_preferences` WRITE;
/*!40000 ALTER TABLE `album_preferences` DISABLE KEYS */;
INSERT INTO `album_preferences` VALUES ('time_order','200');
/*!40000 ALTER TABLE `album_preferences` ENABLE KEYS */;
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
INSERT INTO `coupon` VALUES (4,'-10% ÑĞºĞ¸Ğ´ĞºĞ°','2222','P',10.0000,0,0,0.0000,'2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','3333','P',0.0000,0,1,100.0000,'2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 ÑĞºĞ¸Ğ´ĞºĞ°','1111','F',10.0000,0,0,10.0000,'1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Ğ ÑƒĞ±Ğ»ÑŒ','RUB','',' Ñ€.','2',30.17600060,1,'2013-01-29 00:45:27'),(2,'US Dollar','USD','$','','2',2.45644999,1,'2013-02-17 20:46:48'),(3,'Euro','EUR','','â‚¬','2',0.74309999,1,'2013-01-29 00:45:27'),(4,'Ğ“Ñ€Ğ¸Ğ²Ğ½Ğ°','grn','',' Ğ³Ñ€Ğ½','2',1.00000000,1,'2013-02-23 23:26:31');
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
  `cart_album` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,0,'Ğ¿Ğ°Ğ²Ñ‹','Ñ‹Ğ²Ğ°Ğ¿','vittalik@i.ua','23423434','','30cac757d89a393f566d4e17d24c0dcfad1b78e6','9d25d5d56','a:0:{}','',0,1,1,'127.0.0.1',1,1,'','2013-01-30 15:59:56',NULL,'',0,NULL),(2,0,'wrewer','werwer','dfgsdfg@dd.cc','23523','dfghdfgh','2d7d057a45cf7481e0e1636136320f03ec6341c5','7847aa2dd','a:0:{}','',1,2,1,'127.0.0.1',1,1,'','2013-01-30 17:11:23','sfgsdgsd','sgdgsdg',1,NULL),(3,0,'test','Test','test@test.com','235235235','fwefwe','03a330cac34aa5d89bd71f046e33e9f14a8a9285','9cb44d6d1','a:0:{}','',1,3,1,'127.0.0.1',1,1,'','2013-01-30 17:29:28','gsdfgsdfg sdfg sdf sgdf dg sdf gsdf gsdf g','sdfgsdf',1,NULL),(4,0,'sdfsdf','sdfsdf','sdfsd@ddd.com','23423','sdfsdf','2f5d31a81ce618730d286535552314791379c485','456a08637','a:0:{}','',1,4,1,'127.0.0.1',1,1,'','2013-01-30 22:31:51','fgjhfghj','fgjhfgjh',1,NULL),(5,0,'asdfasf','asfasfa','admin','3152353','sdfsdf','9dafedc42c10b6044ebf81aa36f2ce75b6bc818e','3c7c03e72','a:1:{i:68;i:1;}','',1,5,1,'127.0.0.1',1,1,'','2013-01-30 22:59:40','','dfgdfg',1,'a:0:{}'),(6,0,'werwer','werwer','w@w.cc','2535235','gfdgfg','d132601ddeed37d4a15e73b30fe55d706d101020','e3f641c59','a:5:{i:41;i:1;i:40;i:2;i:28;i:1;i:43;i:1;i:33;i:1;}','a:1:{i:0;s:2:\"46\";}',1,6,1,'127.0.0.1',1,1,'','2013-01-31 20:57:43','sdf','sdfsdf',1,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_temp_photo`
--

LOCK TABLES `customer_temp_photo` WRITE;
/*!40000 ALTER TABLE `customer_temp_photo` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension`
--

LOCK TABLES `extension` WRITE;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(446,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(411,'module','affiliate'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(430,'module','login'),(429,'module','cr2htmlmodule'),(432,'module','cart'),(433,'module','categorynew'),(439,'module','specialnew'),(438,'module','special'),(440,'module','latestnew'),(441,'module','welcome'),(442,'module','latest'),(443,'module','featured'),(444,'module','featuredalbum'),(445,'module','featuredframe'),(447,'shipping','free'),(448,'payment','liqpay'),(449,'payment','bank_transfer'),(450,'total','album'),(453,'module','news'),(457,'module','newsarticle'),(456,'module','slideshow'),(458,'module','newsshare');
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
INSERT INTO `length_class` VALUES (1,1.00000000),(2,10.00000000);
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
-- Table structure for table `marketinsg_news`
--

DROP TABLE IF EXISTS `marketinsg_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinsg_news` (
  `marketinsg_news_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketinsg_news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinsg_news`
--

LOCK TABLES `marketinsg_news` WRITE;
/*!40000 ALTER TABLE `marketinsg_news` DISABLE KEYS */;
INSERT INTO `marketinsg_news` VALUES (1,'[{\"title\":\"<strong>Lunar New Year Promotions!<\\/strong> - \\r\\n\\tThis lunar new ye...&nbsp&nbsp;&raquo; <a onclick=\\\"window.open(\'http:\\/\\/www.marketinsg.com\\/information\\/news\\/news\\/lunar-new-year-promotions\');\\\">Read More<\\/a>&nbsp;(09 Feb 2013)\"},{\"title\":\"<strong>OpenCart v1.5.5 Released<\\/strong> - \\r\\n\\tGood news! OpenCa...&nbsp&nbsp;&raquo; <a onclick=\\\"window.open(\'http:\\/\\/www.marketinsg.com\\/information\\/news\\/news\\/opencart-v155-released\');\\\">Read More<\\/a>&nbsp;(21 Jan 2013)\"}]','2013-02-25 16:22:06');
/*!40000 ALTER TABLE `marketinsg_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinsg_news_log`
--

DROP TABLE IF EXISTS `marketinsg_news_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinsg_news_log` (
  `marketinsg_news_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_checked` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`marketinsg_news_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinsg_news_log`
--

LOCK TABLES `marketinsg_news_log` WRITE;
/*!40000 ALTER TABLE `marketinsg_news_log` DISABLE KEYS */;
INSERT INTO `marketinsg_news_log` VALUES (1,'2013-02-25 16:22:06',1);
/*!40000 ALTER TABLE `marketinsg_news_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinsg_newsarticle`
--

DROP TABLE IF EXISTS `marketinsg_newsarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinsg_newsarticle` (
  `marketinsg_newsarticle_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketinsg_newsarticle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinsg_newsarticle`
--

LOCK TABLES `marketinsg_newsarticle` WRITE;
/*!40000 ALTER TABLE `marketinsg_newsarticle` DISABLE KEYS */;
INSERT INTO `marketinsg_newsarticle` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"en\" xml:lang=\"en\" xmlns:fb=\"http://www.facebook.com/2008/fbml\">\n<head>\n<title>The page you requested cannot be found! | MarketInSG</title>\n<base href=\"http://www.marketinsg.com/\" />\n<link href=\"http://www.marketinsg.com/image/data/favicon.jpg\" rel=\"icon\" />\n<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/theme/marketinsg/stylesheet/stylesheet.css\" />\n<script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/jquery-1.7.1.min.js\"></script>\n<script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js\"></script>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css\" />\n<script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/ui/external/jquery.cookie.js\"></script>\n<script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/colorbox/jquery.colorbox.js\"></script>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/javascript/jquery/colorbox/colorbox.css\" media=\"screen\" />\n<script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/tabs.js\"></script>\n<script type=\"text/javascript\" src=\"catalog/view/javascript/common.js\"></script>\n<script type=\"text/javascript\" src=\"catalog/view/theme/marketinsg/js/theme.js\"></script>\n<!--[if IE 7]>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/theme/default/stylesheet/ie7.css\" />\n<![endif]-->\n<!--[if lt IE 7]>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/theme/default/stylesheet/ie6.css\" />\n<script type=\"text/javascript\" src=\"catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js\"></script>\n<script type=\"text/javascript\">\nDD_belatedPNG.fix(\'#logo img\');\n</script>\n<![endif]-->\n<script type=\"text/javascript\">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([\'_setAccount\', \'UA-32375768-1\']);\r\n  _gaq.push([\'_setDomainName\', \'marketinsg.com\']);\r\n  _gaq.push([\'_trackPageview\']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script></head>\n<body>\n<div id=\"container\" style=\"background: url(\'catalog/view/theme/marketinsg/image/bg.png\') repeat-x;\">\n<div id=\"container-wrapper\">\n<div id=\"header\" style=\"height:130px;\">\n    <div id=\"logo\"><a href=\"http://www.marketinsg.com/\"><img src=\"http://www.marketinsg.com/image/data/logo.png\" title=\"MarketInSG\" alt=\"MarketInSG\" /></a></div>\n    <div id=\"search\">\n    <div class=\"button-search\"></div>\n        <input type=\"text\" name=\"filter_name\" value=\"Search\" onclick=\"this.value = \'\';\" onkeydown=\"this.style.color = \'#000000\';\" />\n      </div>\n  <div id=\"welcome\">\n        Welcome visitor you can <a href=\"http://www.marketinsg.com/account/login\">login</a> or <a href=\"http://www.marketinsg.com/account/register\">create an account</a>.      </div>\n  <div class=\"links\"><a href=\"http://www.marketinsg.com/\">Home</a><a href=\"index.php?route=information/contact\">Contact Us</a><a href=\"http://www.marketinsg.com/account/account\">My Account</a><a href=\"http://www.marketinsg.com/checkout/cart\">Shopping Cart</a><a href=\"http://www.marketinsg.com/checkout/checkout\">Checkout</a><a href=\"view-all/create-an-ecommerce-website\">Create an eCommerce Website</a></div>\n</div>\n<div id=\"notification\"></div>\n \n<div id=\"content\">  <div class=\"breadcrumb\">\n        <a href=\"http://www.marketinsg.com/\">Home</a>\n         &raquo; <a href=\"http://www.marketinsg.com/information/newsarticle/system?url=http://pechatnik/\">The page you requested cannot be found!</a>\n      </div>\n  <h1>The page you requested cannot be found!</h1>\n  <div class=\"content\">The page you requested cannot be found.</div>\n  <div class=\"buttons\">\n    <div class=\"right\"><a href=\"http://www.marketinsg.com/\" class=\"button\">Continue</a></div>\n  </div>\n  </div>\n<div id=\"footer\">\n  <div class=\"column\">\n    <h3>Information</h3>\n    <ul>\n      	  	  <li><a href=\"http://www.marketinsg.com/about-us\">About Us</a></li>\n	  <li><a href=\"news\">Our News</a></li>\n	  	  	  	  <li><a href=\"http://www.marketinsg.com/terms-n-conditions\">Terms &amp; Conditions</a></li>\n	  	  	  	  <li><a href=\"http://www.marketinsg.com/usage-license\">Usage License</a></li>\n	  	      </ul>\n  </div>\n  <div class=\"column\">\n    <h3>Customer Service</h3>\n    <ul>\n      <li><a href=\"http://www.marketinsg.com/information/contact\">Contact Us</a></li>\n	  <li><a href=\"http://demo.marketinsg.com\">Demo Site</a></li>\n	  <li><a href=\"faq\">FAQ</a></li>\n	  <li><a href=\"http://www.marketinsg.com/portfolio\">Our Portfolio</a></li>\n    </ul>\n  </div>\n  <div class=\"column\">\n    <h3>Extras</h3>\n    <ul>\n      <li><a href=\"donate\">Treat a Coffee</a></li>\n	  <li><a href=\"host\">Web Hosting</a></li>\n      <li><a href=\"http://www.marketinsg.com/account/voucher\">Gift Vouchers</a></li>\n      <li><a href=\"http://www.marketinsg.com/affiliate/account\">Affiliates</a></li>\n    </ul>\n  </div>\n  <div class=\"column\">\n    <h3>My Account</h3>\n    <ul>\n      <li><a href=\"http://www.marketinsg.com/account/account\">My Account</a></li>\n      <li><a href=\"http://www.marketinsg.com/account/order\">Order History</a></li>\n      <li><a href=\"http://www.marketinsg.com/account/wishlist\">Wish List</a></li>\n      <li><a href=\"http://www.marketinsg.com/account/newsletter\">Newsletter</a></li>\n    </ul>\n  </div>\n</div>\n<div id=\"facebook_holder\" style=\"text-align:center; border-bottom: 1px solid #dddddd; margin-bottom: 10px; width:100%\">\n <div class=\"fb-like-box\" data-href=\"http://www.facebook.com/MarketInSG\" data-width=\"980\" data-show-faces=\"true\" data-stream=\"false\" data-border-color=\"#ffffff\" data-header=\"false\"></div>\n</div>\n <div id=\"powered\">\n<div style=\"float: left;\">MarketInSG &copy; 2013</div>\n<div style=\"float: right; margin-top: -5px;\"><img src=\"catalog/view/theme/marketinsg/image/payment.png\" style=\"border:0px\" alt=\"We Accept\" /></div>\n</div>\n</div>\n</div>\n\n<div id=\"fb-root\"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = \"//connect.facebook.net/en_US/all.js#xfbml=1&appId=391573267589280\";\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, \'script\', \'facebook-jssdk\'));</script>\n\n<!--Start of Zopim Live Chat Script-->\n<script type=\"text/javascript\">\nwindow.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=\nd.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.\n_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute(\'charset\',\'utf-8\');\n$.src=\'//cdn.zopim.com/?mwd5jUujiF3w0FYRB0AYaG51OuueNZbw\';z.t=+new Date;$.\ntype=\'text/javascript\';e.parentNode.insertBefore($,e)})(document,\'script\');\n</script>\n<!--End of Zopim Live Chat Script-->\n</body></html>','2013-02-25 17:52:25');
/*!40000 ALTER TABLE `marketinsg_newsarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinsg_newsarticle_log`
--

DROP TABLE IF EXISTS `marketinsg_newsarticle_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinsg_newsarticle_log` (
  `marketinsg_newsarticle_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_checked` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`marketinsg_newsarticle_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinsg_newsarticle_log`
--

LOCK TABLES `marketinsg_newsarticle_log` WRITE;
/*!40000 ALTER TABLE `marketinsg_newsarticle_log` DISABLE KEYS */;
INSERT INTO `marketinsg_newsarticle_log` VALUES (1,'2013-02-25 17:52:25',1);
/*!40000 ALTER TABLE `marketinsg_newsarticle_log` ENABLE KEYS */;
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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'hjgjkh','/support',0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2013-02-25 16:24:20',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_description`
--

DROP TABLE IF EXISTS `news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_description` (
  `news_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_description`
--

LOCK TABLES `news_description` WRITE;
/*!40000 ALTER TABLE `news_description` DISABLE KEYS */;
INSERT INTO `news_description` VALUES (1,1,1,'dsfgsdfg','&lt;p&gt;\r\n	sdfg sdfgdsf sdfg df gsdf gdf sdfg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;sdfg sdfg dsfg&amp;nbsp; gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfg sdf gsdf gdsf gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	g sdfg sdfg sdfg&amp;nbsp; gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdf gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	g sdf gsdf gdfs g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdf&amp;nbsp; gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;gdsf gsdfg dsfg df sdfg sdf gsd fg dsf g&amp;nbsp; gsdfg dsfg df sdfg sdf gsd fg dsf g gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;gsdfg dsfg df sdfg sdf gsd fg dsf g&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsarticle`
--

DROP TABLE IF EXISTS `newsarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsarticle` (
  `newsarticle_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`newsarticle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsarticle`
--

LOCK TABLES `newsarticle` WRITE;
/*!40000 ALTER TABLE `newsarticle` DISABLE KEYS */;
INSERT INTO `newsarticle` VALUES (1,'2013-02-25 18:19:58',1),(2,'2013-02-25 18:20:26',1),(3,'2013-02-25 18:20:35',1),(4,'2013-02-25 18:20:41',1);
/*!40000 ALTER TABLE `newsarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsarticle_description`
--

DROP TABLE IF EXISTS `newsarticle_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsarticle_description` (
  `newsarticle_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsarticle_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`newsarticle_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsarticle_description`
--

LOCK TABLES `newsarticle_description` WRITE;
/*!40000 ALTER TABLE `newsarticle_description` DISABLE KEYS */;
INSERT INTO `newsarticle_description` VALUES (1,1,1,'test','&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n'),(2,2,1,'sdfg','&lt;p&gt;\r\n	sdfgsdfg&lt;/p&gt;\r\n'),(10,4,1,'Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸','&lt;p&gt;\r\n	Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸&lt;/p&gt;\r\n'),(11,3,1,'Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸','&lt;p&gt;\r\n	Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸Ğ¦Ğ¸Ñ„Ñ€Ğ¾Ğ²Ñ‹Ğµ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ğ¸&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `newsarticle_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsshare`
--

DROP TABLE IF EXISTS `newsshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsshare` (
  `newsshare_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`newsshare_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsshare`
--

LOCK TABLES `newsshare` WRITE;
/*!40000 ALTER TABLE `newsshare` DISABLE KEYS */;
INSERT INTO `newsshare` VALUES (2,'2013-02-25 20:09:21',1);
/*!40000 ALTER TABLE `newsshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsshare_description`
--

DROP TABLE IF EXISTS `newsshare_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsshare_description` (
  `newsshare_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsshare_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` mediumblob,
  `image_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`newsshare_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsshare_description`
--

LOCK TABLES `newsshare_description` WRITE;
/*!40000 ALTER TABLE `newsshare_description` DISABLE KEYS */;
INSERT INTO `newsshare_description` VALUES (10,2,1,'Ğ²Ğ°Ğ¿Ğ²Ğ°Ğ¿','&lt;p&gt;\r\n	Ğ²Ğ°Ğ¿Ğ²Ğ°Ğ¿Ğ²Ğ°Ğ¼Ğ¸&lt;/p&gt;\r\n','ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0\n\r	\n\n\r\r\Z\Z\ZÿÛ\0C\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\ZÿÀ\0\\ú\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ÿÄ\0c\0		\0!1\"2AQBaqR‘#br¡3‚’±²ÁÑÒ	$V”¢Ó%4CSTUcdu“•Âáñ&\'57Et„³ğDFs68GWe£ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0+\0\0\0\0!\"12AQ#BR3aqCÿÚ\0\0\0?\0ÑÛ…]»•›Åµ©ç‡í}¦§—ÖñÂÑ´]íË¹»Íâ÷©›+gõ}Ú³Sí­·Şş5cÚ~¯ñ¨ƒƒøWRã>%Ó¸{A¦Ôµ+¼~ënû_eU{Íú;«¡üôöy¢èÑ/GwÄºÄ‘«M!¸haF÷»5oùÌÕRÇ4;¿i|_j²mÊ»·/ê«WW¼“Ø¿ø¨ÿ\0ö•Çö«ï$ö+ş+Iÿ\0i\\¤ªêZQ+2¯‰|U—hÌŞ%şugûÈıŠŠÒÿ\0ÚWé)ï\'ö\'ş(¿ı£qş’¦¤ØäÛwŸÄ¿ÁÛN=İ¡—ÅŞğ×U¼Ø§ø­/ı¥qş’¾şò?bŸâ´¿ö•ÇúJ±S•]³UÜ½ÖûU÷hÌ¿¾.ô–º³ıäÅ¿ÅY¿í+íWßŞMì[üT—şÒ¸şÕBÛ¢Û±wv‹üjGjı¥ş5uûÉ=‰ÿ\0ŠÒÿ\0Úwé)?ï%ö)ş+Kÿ\0i\\¤ªêEf9=İ÷š²\n»¶î_Öî×X¿¼—Ø§ø©/ı¥qş’¾şòOb¿â¤Ÿö•ÇúJêÁİØå\nª«cr÷«&‘Owrÿ\0««ŸŞKìWüU“şÒ¸ÿ\0IXy/±_ñV_ûJãı%tã1ÊfhÆí»{¼—u&ÍÉC75ğí®®ÿ\0y/±^¿¹Yí+ô”+Åÿ\0AfúÖpœ-×êŠ¬ğ\\Gs$Ñ‡ò²3¿ªV¡en`Û©6fûKú«EÜqÁšŸ³ş\'Õ8sˆíµşŸ)‰ğ¼|Jãíê§ÓåB>/µC\rÆOå_WİæñWßœ*¾eûKD:|«»ŞjYcòÜ½êM#»·7ãY*íj……¶4`.êÉ÷2íëŠD³Jg½·Ö ^¦;W™˜çİÛK¢wöíëÏÃ^.×,ã»âjr‹İï²Ô{gµ^	o]jÛùõÚWWçF¸Ëì‘qíW‚[Ïòå¶ßãWf¤ğ7ßAvêv=œïÔ™†£|;FîİJ3»¯}©ºïûMŸ-ÍåJêr¯åKÓ…l\\Ì;ß®ÔÛ´÷”7.Yíy[[\rÚÛ¨ã´o)üê»Öc²¸İÍØ»xK·*sß.\n¶\0}j¶ö¯Õ½½İ»¶ÍÆ)US§˜«P‹cöü–veRÅíİJör9İĞ«u¡º“›E»krnõS|-í{-êlÓBäf9u—/Qğò«cKÔ­µxç³‘eÛ$¯‘ô«Ûã²ğ¥l¬..%ÈÎà¾¿\Z_|¿mz˜î¯Sî×¤äVæyšL8‰¶Šwí&ÃÈ9|¾8x×ò‹Ü™¥Û),Ñ³r«ğ¢€?¡\"¾>îğM]£˜\"·`wOá;M2^Ö)$nöì3r*&†Ge\nw²W©\ZnãzîÜŞœºRq¾à»·u#—Â£37Ø¶Ì=3;F;IwW½´‡»¹¹~µ7í2†ÿ\06¾n@M¯Ø[·‘[ÄÃøÕôr2dofÉÍ7w¹7ãÓî¬VL²»uŠæ¤É3°^óu>&¯#¹l$nT‹L»T3sÉ¤{ugß¹†y`×H<2’ÌÍšÈHËávçÎ™‹¦,@^C®:VBg.Ç*§–>Ubº’M3`âN|º7?¾š¼Ç½Şm¸9¤X`õİ»\',vV²M3)ìÆ\\ç§ ª/3©b±ö…ròkJ±JÄ$xÆî™¡V’c´¬œ`njq­^Iªê3ÜÈÜÙ¶§wÊ™²³&ÓœJØ­zÄÇ\n}¼ÒÆ\ZF#vÖñT­÷ÃÃl‡Ö.›ª³m?\rê:±S°QvØÀ]EÇfÌûæ,Ì|]ï3N×V9c:Ûça¨kz¦©q¾k‰{Ù +7tSu»yÑÄÌ1ç»¯Î¦L\ZnÛçŠ¾…HÌ{v´Ê²ÏYô&ÊÑÑÀºñ×4€^Rg·îVn´XÆUPÆG,œ¹3g©_eWÏo®5ãÙN…y|9Õã—‡=£&¬O%5³ŸC•ò¹‘Œ·£…‹~Î§ÙûéÌ×Œ|ŸÂ=ï…)±rë¹‰8#+ânÍ;«á®Ê_U5vMªì­ö©»2·ıÚqqµ›swš›ö{WÃú[«Úm×&±_A«;{ÏoöNŠÍo¦ÜMè¶İ¿Íf®«{µË —şÿ\0àåÿ\0Â®?î×T*¤(¤†µÄ\\1À‘ëÜ-Ä:Ö·öÖòG\r¼rvË4ÑÇ–í»·vîíÍiÇ\\;íc€´hú¦«¦êËwuy¶6êÅmÂªÊ¾öî÷Ù«OÚÇ³ãí;„fááyù?}íµÇjÑîÛØÌ²¶•Ö¸jŞĞ8SŠş¼cüƒk{	ƒ³ıû¶\n?ƒ·oùÕWZÒWD×/ŒÚ»£Á-ÕíµµÛÀ¦Şæ{mÌñ«nñ_yvş•N7·ŞkşÓák—ÔxÊº±µìûğÄÉÒn÷t|=êª}”û!â-°[!Ô¾§¢išÖ³.›¦~O1J³ÌÒF%’Fnòm‘™v­pOÑWNáDá¹·6¥¯hÚ¤7—z•ÊnyãŠ9\"ÎïÍÆŠÜ¿Ij#á¤Ïñö§o$:…İøº¼‰)míßd®½æeÚWŞM¸ké%¥qlš¼\\?ÃœEua`ºŠÚ\"ß=»¶‡ç6©aŞÛX­	hD˜4ëHë\\B’ÚİØ_YmÓì{	gè±&wÜİ¡_÷}Ú5öUì?YösÔOYÉ£Abö°Úéú:[†eÛÛÜ¾æi%ªËP—³hÑ{QĞN¹g£jšEŒ­‹WÔR53¯›Çµ›º¬¾õJ{Bã{g¼-Äº¼ÙÙ¤{â·Ui‹mE]Ì½íÍAúwq?³_g|9ÃÜ`Õu;[˜í¦¹º\\C-.ée+»vB±Â«sjoí·€x£Ú3pÎ‘ÃºŒ:fŒšÖµfš%—eùÈT®åfRã,ªİ*Â?¤O/jšÎ©¤ëZmÕªº9Òå·W¼í‚”Š5F ±İË½Q×HíG°‘äá~ MZÛZ¶Ò¯tcl‹s“«<,ª¬ÊÊÃ¦ÖñPÆ—ìŒ¾¿®Şk<Mjš¥¯ÃÄ:ª–*{KË³˜MáÜ#âı-ÔÃÚ²Î áÛ\r+P‹X:Çqi×—zŸÔÁˆ‹«\"Œg!›ïB?H~:%ä\ZF·>«w©I¥Ç¡Åh¿]7ó‘@\r´\r–mÔ›}!4V³Ónìô ŸT¼ÖE\ZQ¶T¹Šê5ŞQ÷6ÜïeKnÈ¨[o£ö±£ÍaÄ\Z?¢ñÜ:¥Ş¡u¨O§ö\\ıg\nêbİ¹B…Ú»[>µ-¡ûm1øVæë_“RÔôÎ!Ÿ_Õ.¦ƒ\r}q,m¿6z-BõooV:MÄ6p¯_kqéçPÔtË[Xä›M·Ã\0ÓÓhÜUC ş2öÕ5ÀÔx“øªÓJÑ´Î‚òñu]=¤†E¹Üa’-¬¤L+Ù¹¢®1öC¯ßñWjÜ\rÅŸ¹èøªÒ+]eÄ\\±;HNåØáN;Ü¹ò¨ú*hSqm®¥w©\\ÜèV\ZE½…–ŒyBe…YRiFïÎà±`>ÕB\n{0ö‡©ñW´)«_j\ZV¡À¢õ–hÖ#5À¸\nedVm¬y[+T³Ÿeû<½áÆiàÔHáÿ\0É	3[²Ü;Ì„çvÕ_šÖ«´ô5róéùg·¶ÛIí£Û-ÎÈWŞ!˜ä­WÊûË[_ıĞ,«V™ÿ\0BÅüæ­RîûÌ¿Æ«*ì·/Ú¬{»·-eİÇÚ¬yÔÈO±ò÷V¾¥Ğ¾,x/»Iî!wmZ…£¥¶|TŠî»u:\r–ÛµyUJ1‹IîÚ^71_1á¤Yú×»d/•Xü!{µ3/²PÃÚ—÷µ»çWe¥ıîO‘şšã7²ÇÚŞrÜ]š“Àÿ\0#BoG#ÙÎ½F%ü¡zòk¹sóŞkà…z*ÓCw×ïºÿ\0¶¥şy¦øbğñW»ï&õkĞùU”–ÏZe¬é±júlöSí•%^ËÈõÍ=bÀü¹WÛ²»[nEU\r°Xì½eú”š^§6~¸tf-ïsÈ?…Jéš¶£ÃWú{–¶sßˆŒ!ùtüjÅö‡ÂƒT¶7öX[»~d¢øÇ¥\0ZFn4ì\\32TªõşÆ½,¾Exü™ì¬Ô´¸c¬µ«hÉ•`¹İµâcÍO¨`úÑNT|Ç>ïÆµšâ	­.;[y ò(pçñ£®öšÑ·Õ5ÅÁP9ƒy&:Fï	³•®ÜÆ·{Şküjñù.áĞÔm­k}’ÚpÀsÊ·LùSƒp»NİÇô«*kelHÂ²X½Ö¦gbÈó=êL?Aµ—<÷¯	`Øé³ãáûªjAé“z.[š’ïJÁ®#XÎ&¡w1fèükÅLm#nŸwÒºÊXøÈÀƒÏì­xLŒyº}š_º9UÏ=Ç©¬\n6Ìë“\\*6XÓÌ’<÷zÖ,TÌ#Ã\rşmá¥˜(1œ€1^á8Îô¨E‘HŠ“¹ŠóåŸ\\R£i>\Zj¼Üv„óõ§(YÓ—N•z²IÛ¸r*ã½I¢³ŠÙ[/.IÃcøQ-íäVQI$ì,\rÕSkÚƒj7’Nîv´Ü€øQhM˜º/$qEƒÕ¹Ôf§{õ4ìá#ëMÑG\\zÒÚğ¶ŒªŸÎHÕ\rÌüMEÚÁ$á®¦}í!Çêü+rªõ¤¶gª‰[Ûw·ÊKÕ·T½´Q³2FÎ{Ê³ŠÍ¶¬Š¹Py˜Áùyüéà±/h&@\"xğ3OUşš.Ñ\"ê²¾Èùí_¶ÙÜ²ø¾cáLïtñÙ4y\0C7Úÿ\0Ê¦Ô›‰3\"¿üŸ€ãÓãëJêvÁ`pJ°æ;½hpú°H¯0{=NÏŒìr@mÍÌúVÂä2#\0sÕ|ñT_³ø;n.£8™óóåWWy×\nÇ—Ù¤|Öík^p:#flŸu-ÎÍ;şè¨ó Í´s9õ¯cHû4ï¯„Vx]Mb¸ñmı*oÚnm¬­üZpÊ¬Ş\ZÉ¡P»¢5í™6¦Ä}ş m¿è«ªêw»\\úk¶|?ô€ÑSPqê0Mi…»½£.åş6ßó«¬^íT±•}_WÕcT··Ş5Õxƒtİ[I–î)/XÅ2Û\"É<ĞW´E_}˜wpµuĞ´N‹Ú¦YMzö&ÇVµ¿W‰˜ö/¿oğ±P…WÀş×$‡ƒuÏi|a¨]Oc©jTÒ¸zÕImH“³Š«Şíİ¼a¾Ğ§°}%ô5—Š´]G†Yu¶ÑïEóÆVÚQ	˜–em¤mä?I©ßû´Ö5^!¾Ñõ‹­	õ[ëMV·…Ymµ(EÊîó/ŸŠ£­şŒÂşğ\\q‡#k§X¼†m:8ãšSBãjû¬»OğjµxŠŒønÇ\\µÓotËmB14]¢¬†3ásŞnL»vÕ} }\"4İk‰?%İhZ–‘§8ÔL\Z­ËÇØJ¶M‰{Û•Aóe©/€µ¾öUÂœ7¯Kw«Gm<:=î 6˜3¸Â¬İæa÷¶øWÃU–“ôkâ=6nKÎ)M_IÓ-.ìu+)mÖ2İÆÆsªåİ¥l’Ûj0öiôÑ=¦ëï¤iz.­gºÉ¯-gFÑ¼@ò/±³	otI‚ÔÛ‡~’úî¹£ZŞpÆ¥¤èš´—Ëg«Ü\\CÙ?ÕÕmÛ{­âU¤¸è÷«û>¶<=Ç—vvö¯\rŒPiE–nAîû».îèj‘Ò½€iÖZ7	éwZ­Åòè	~³³Eƒv÷ŠâF#İ]Ïï¥B\r4Ïm³ûG¹“@à3PĞ5-GK“PĞõ}RkiàGeØ­¼î‡ëcüy¬jœaÅ<«qm„–ò®»kf-Çhå–KgØÌ¬éÔmlÒ1ôÕ´-RÒõxêæûòv‰q¡ØG.\"¶w²·y•”w¥YŞÎøNöwÂš^…¢Û[B-àUà·ìÄò‡Ïs7>óT _WÕõBW‡¡ùWµáÁT!Ìîï£Nÿ\0¡¡şq­QŞ­úqëVzß¶¹­¬gY[KÓ¢¶º*W\\–ØH¿ˆ­aÛP:ıO»Û«.u‰İJ.ã…ÛåP\'Å›å¬{»wx³JGWm\'Ù½H’)•b:ŠË°n›|Tª[È_mq™Bå³Ş*ZŞín§İ¥Í™ˆo*s\r¯!Şó¡µŠ*Ê\Z{#_ıhğIÚÃn·n7\n»/!üÜŸ#\\möN?õŸÁjËòİ¿»ÿ\0)]““Àÿ\0#\\–èr=œôÔ{ºØÜİë™OwõÍ0^K÷šq©Ê¢şûáu(ÿ\0=©±“*W½È\ryÿ\0ì=\r_QCÉsö«\'Ú»†Õ…&©+.àÛ‰ı*øDCo,Ø{Î‚­şÅ„®H!€b@Áeê*¦ÖmHÖæ€Îw _uó«xÄz/Væ3×4-ÅšLE\rüÈÛ­ßyÛ×nps÷Ö—‡k%±êEü…ëÔ­ŸM–F%;7òm¼ècQÑ¥Œ†PŒ ò{µjÜè·2†h£‹\r¨Ìy¨Ñ£EgÈ“½ÏÕ¾5éåc^LÜÉ\\i\ZÍŞ“2ö¼nsİ>ùüjÆáïiVòÇ:¤}ƒä†tâƒx‹†^Ô‰¢±<Î=ÜÔ†Y©#µWÂå¼C\ZBÏ\Z¶ö1]¬¦ÊÚ_Ayx%VY\0eïRÌ¬è|<ÏAZù¡q\rö›!LB§uƒû¿\n¹¸[‰`Ö-Sµ*\'q¹”ø[«ï«œûÊìVöMBŒ¤»pHïS¸¢f%vüjSFá«gQ4gyW(­áåÒ­OdwcII\\+¸RøÛĞVº‚3*ÆJ{°r»‚d“ŠLÄÀ¨*Å”‘JÙNöAm>ú„j.$`ë¹z\0ÅAñ±şÚâå¬\0š>Í•|!ºşÑWo–2\r-Vb‡ì;RB¯xWìßŒäoşŠ¾bö1#¥´Ğí*Ç{÷z¨åŸÆ¥göCj¶¬VàUÂòÁª­I±v5¡e›¼}=)›Ä³·’wVØ9lşÏ¬4Pxâ¸\'$—é…UœsìæiÛH–6ˆ°m¼ ùUZ–^³Ë¦±ªM&e$ ÈT´!«ÜÇe÷;¤\'ºƒ©øš&ã4nSùA{9‹TfæÛK_uVO<º„ÛægeÆî€!Z>58ä­Ö¬Fª/nîo¬]©#\'\0œ\0(’ÎÙ6,n\"ŠaÍ^A…,|œyòèi‹c-ÜÑˆp¡p	-ÒŠ\r´zZªİ%ÁÉdEÀ>._…<ß¡Eã°†ŸÂä:©V9dfôó?J•Ôì¬[6?6\nŒ0Gó¦°K}›âƒ¨3`§É±Ï¯LTî‘Z¿ÕÌ-•Ò1ˆ}¼¹`ô#vzó³6£ÊäÓ¤Ü\0l}}k¹•’EX±Èù\nÔ–]6òâ$c„‘£ûKËù\r%s!KQ†ÀÉÜÕX†™Øce…\'ıœFF½vãk‡wzÕ¬ùÚÊ£h;·yúUqìÎÙuÆN¤GËÏñV#IÑzíó»¦ybò[gÀ5^B•½ß>÷eŸ›Nmáz/_=¿ÓOáÙØÇú£ù)R\Z³tÏï5:µ†K…Ûµ·2øh†û†ÖGîîîÒ–š<–+Ú5zÖ±azuSıˆ´¼Òï!º³–X.­Ù^‘™Z6^òíÛŞVVÚİÚÚÏgßO\'Ñt»]?¸hq$°¯f/­æì¦“ô˜mÚÍú»k[®&[…Û»½áÛMã·İ·/ï›¾ÕUloò;ª›©ş¸dÿ\0µòÁıšÇıpøWÿ\0íŞ ?Zôf´öIå%fVğÔ{\\³{ÍD‡“š›¤¿İ\r—rû<¿ÿ\0+Ù¥Wû¡\"O³Kü°f´Ò™\rÛ[mY^Î4ÅÕsIK}¬«ï}ªª´“Rúoî‡Â¹Vöw¨#¯º×ƒû5úâÖâ÷ùXşÍPüGì–á.æ¹Óæ–X›½Ù²÷ªµÔøjïNoÏ«ö‰ŞeìÛrş¶ê&Ëù–7ıqKVÿ\0û{}şZ?³Xÿ\0®\'mÿ\0øúûü­³Zf±vh€2»3w£_Ò,‹ö¶ÕwR›±Ñ_bÿ\0KÎö§ÄÃ@Õ4ùøcRsaõ‰Õã¹?ïjŞMú>u´õÄŠD‘&²”ÛİBÛá•oF÷v×B>‹_I˜}¤YÛğ‡\\¤eg)Ÿºº‚¯VòŠ¼™}îµx’êÛA·5ñ¯«ê±aÍÔvM=Ë‚(Ë»7º\0É­&½şè>™gw¯]İAÎ‘J/F%ÃaX\r½ŞKW—Ò—‡\0{â}B)ÚÛØ~£jÈİîÒnî‚	?q®PÁqÙÆ¸ÛÜ-ïn¨L›Óş¸å‰ÿ\0öæüõ³B|iô÷ÖµM&êß¸ræUÚ/î§í^.]BéBMiŞŞ~\ZÅ¼U+^\\\\êW÷Wú¥ËİŞİ;Ks3¶æ‘y‹|ri¹…J²Û_vmšã2—ØO±fùû´ê;tÆâ´¤p±P©Óu<áwPe×ğqVF«oú4£Zùí§]—{”OÂ|¬quÒ®‘e%Âg½&Şèª«6Üú¨.–{—v^ö“í_—G-vßL’îP±”Œ6ÅİT¶§c5…ü¶÷K‰\"bŒµVRªÄgd£½Jm¥{´’®@Í\0²×°_ì¢6>Óø0ºÿ\0ñËçWb$ğ?È×}”ÏÚgáüµó«°>éùš&İ\n²k\'>5(•oïÎŞFêl^ûs¦Á»zO5S¨ß®ìÿ\0…MÜõïšdq¦+Ìİö7êú)æ2ÎõÅ}–*§rõ+^·‹åÏñ¬1|7Wä>ê\\†mĞWÆÖ«y\"¸Ve9ÊöM|7Û¹k!,‡r®ÒN0®E5CaâAÛè\Z±V½–BIkİË6w/§>_…I¼qk‹²c•îÇŞ‹|=*aô˜4›>Şî^Î9µÚ~?øÔwåy]‚iAcBIí2vùşÚöU²ÊDÉˆÛlB\\pÑXä…­f½ÂÏÑüè;XàZÚá­Ô$€ƒ±zàùYvÒİO)†ùgº†V\0öC¿÷!ğ£¾½\"ºÇ%Ä.\n–À(ó#<ÑÇL7x|Y•u8¬Æ·hü	©¾¥—6²4R¿c3Üw†_‘1WÇ{!‹L¹†\'e1Ü	\\®r£ÜùIŸ/J´xkƒÖŞîãOŸœğƒ˜*AıŠzŸCó£ëmÁW\'[¥sÕ$<Ã\0\ZY«Pëf¿Q§ğ¢iqıbhz&Äf_%åı4k=ïgnOwó˜÷~×şUœÓ,b8„{C(Î|$:Õõ•íÖ\0_\0vúÒo1T*ìÓØ±íd{ˆ­- å°n t¬u„Ycˆ=¦w/Ê”ĞvÛi‚IN$¸!WwÊ£æHî5H²ë˜ayïP+¶,èEnIg•b´µu\n7ÌtéPW‹©HV±#FQ<ùg5¿[Í4fïÂÛ„ ä4#£kÍ\rÜã—uÈ¬ö³¶+¯hä‹âç–ûF–D$p!G_bw/ù Ö¹q`â;]FÈwlÑG´HAÎòp»s÷æ¶{S·ŠæÒê\0«Ù»nLyyMkÜ?íòÍif(Ã\"›%?†j³b‡ÒuÁ¢w ëÒë‡òœ’ŞÎs–^êä3Ëğ¡‡³ m>•¸¼AÃ=­İÃCoÛ8`yOC÷ÕmÄœoÂ}•’‹­G™i¦\\¤yædÏÓyëĞS5ù+<5mœ•^‹n@³ê}W ~pP<ÇÆtî&³hµ»,a°72«Èß‚‚uP´t¹œH’9ä×¾ %0ßDGn°ªóÃ€¸??[eo¬†…êZ© á\"p²8æ©ú§×ÔTUÔm¤,»Îc…ÄÄ äœ.ö2(6×W½‚Xä1‚;Ñ·•IñK#C<Q£ce”mîÉ™ø¿uVv\nª –»uõİVâhW—ß•ğ’yw¦™\\.^6Q€…=-.ûñ#`¨øãî¤FëÙÄ!YVPœüéÈáv$–W³¸W•YD®eVøt¢Â¡»¡ya¶Ó[Xí4ø-â\n¢1Ù÷1‘Ÿ¾–ÜTvbZÅ²rû©ó†.	,vù\ZÎ9?6ÅğŠAeF##Ÿ?…{‘öiŞ_¡AÂ¼íÑ]»Ëâ¥.&Y¢eV^÷†‡>¼½¯6U_Ñ¥cÔWnêô,¬¿S]qƒÅÒUeİ–ï5aù!Öã´fmªŞ\ZÏò²mÜ[øÔÖãXßálîû4EØ£2ş	Û‡m»=ªİßT\rÅª³n‰¶÷½ÚeùE™vîâÖ\ryËŞ£*°%âºŠ;vZ»=„Â\rÄ»{‘¶}ŞõkâÉ¹ºî÷·VÁû›n“vªm³U¶u]‚Uµ/k}2)K6Õçßİ»ÃMõNÑµh»ZÖ;ˆ™pÒGâ]ßgÑ¿ZŸÚ~rË7y—kS‰ìÓn×|·ëRil¹ õ.¦¥{Sö_yÀz¿æË]è·M›+Å^îÄo…–«iU¶Öğêz-¾¹¦ŞhÚà:eÂí#oz÷YIZµ\'ø&û€õÙ4ÍSóŠÿ\0œ¶W»4i~?jšUhÿ\0áœë»©ñŠËsiwm¨éRØj6oÛ[Ïmtel®İ½åÇEøRÍäÛi>TÀ›N§G>‹¿Hø=¯i+¡qD±[qçãİ´]Æ¿î©úKï/—Š¶{vGÂ¸§êz†…¬Zk\\5y%†¯§Ê²ÛÜÄÛX5tÇèëô‡Ó}³hFÛQ–ŞÇ‹,#”¬Ëw_oY£ıêÃİ¢V†R‹şè/›[„x&FHÑµ;È×Å¸îHÁıŸº´ÑşY^ïÙ«ÛÇh>Úx·\\Ü²ZÇrÖvxn]œ=ÀæAoáU}ÜåZ«0³œZ=Í»ud¶ÿ\0£N½İÛZ²Eï³2ûµR‹d‰­º÷>t¢GŞÛµ{ßj”^ğRU»¿j”ñ5	Ôf¶1ìşÍb‘ôî©ıZt«È.zT…•„×÷1CîÒÃªOğ³ëş8ÕRŞŞ7[elÍ+tÛèµ¹\\\'£é<¦¥Bp¤3†îtşuV¾Í¡‹DÒRÖÕUdÚ\ZY~?f¬k	-envÓ»+â£Dê»]˜wq®Iq6ö™ŒrrløMjG¶­.+0šxWóW#µ`¾î9VÕêÅ:ÅáÇV^Ÿ\nÖïm°¤“Û\\#wóµ•š—[Y›óJë±O.İİÚù¹R›J¼*¸\'w^_…[ìEP·ÙNßõMàÅÿ\0ıÕ¯ó«¯íào™®?{(ÿ\0Ş—ÿ\0Ó6ßÎ®À?…¾ÿ\0é«¯¡[>Ç>oñùBûÃşÙ›½·¯}©šî;«Ò^îúıòú]Kâıv¦ÆUVÎìr>*óÿ\0ØmÕôSÉw2×c£sçá¤ûu*ÕïV]¦ğì8 3^M¸®“zŠU\\C*”F8ç³o\\ÒA$fñcô½kîÄ£nÜE­»©Æ<F·%Pr®füÚŸCQšÖ¯}lòÛ¬½ÁóøzP·\Zj[j×‘ˆÈ\"NÜ†ò_z¬¿bzÙ¼¹¶†öÕ¿}Æ{#äAôı!^¯Æ–hS&İT»¸‚ ÜYj°”N;§ì‘æPj×ÒxJ;öª)¹‹“;ä¿iñæØÀ&Ÿhú|[#2bDAµÏ‰Iû_t¥îu8íÕ2‰=ÊİAçı5¯:ª™2ÌÍÔ¸Óá´‘$†5VB[ª,|\r&³D¢XÓÂ¸ÚBôSÌÇ4ÇQ×x¥dÎ/‡½éC+ÄÌÖ×²Hª7ÄAÌúÒnÃµ§^BíCQ°íUŠ¼*£ct9˜ MBê3¨\rè6r/»Ì“Q“ñOmk*FÙy\0ãŠ½Ô£{›)®È%pdçNHü@¤e{\rCj¥é.¤má°íYùĞey)#\nğsC0ñl’\\İ·NÔ”İğô¦Hš“¼¨ù]€®[*N1¿>GËk¬ “PY”ÆÃ®Ï/Ûº…ä³Du\rBg’Â‡T6V!šE·ç·–çŒãi©È5iP–ÚÌJŸPhcRâ–m‰W”à¯ˆÆz×Ü;ª£\\H%xÃîíÏ¦3…şšÄ–íÉ®ˆ¸-k{´¸·F\r’rô¬_ó¡1°6Ao…Ç­¶Ê®ìv…=iüšÙHE¾î}eoŸATf.¨L\\A\\&O‡Ä}h2ï…Vîy¯/™_y9Ó@}¯Ÿ•Û^¬äïnl>B•p‚¨Ç˜¿\Z¯ÈSã)+àËG[‹Ùí\rÔÒ\0´L*åğşš£8‹J¼WKAsP\\LóÅmö»mÚDÑíP™ås‘òZqİê²¾ÙÖƒß^lŞ¿,Që³P3®Ëu-¯‰dP9xy}õô—is,,½¤˜äş*1ö™Áí …+u¸~öP/w×\"«DyÈá°2ËÖµS[£2¨ò[9F\',9ÚLmŞˆx6Ño54›fØaüæ<ËtÉ¨8u®‚@ˆà4b7»¤ƒœÑç³›%sHKå˜^‚‡s4.4`.Ğ­Üç‘Ò¼Úó\"2åù\ns4.‹…$²t\réI&6(\\™É__JÊ‚l%õR	!X×wLü)Ô1Æ>cÂ?’¼Ç…FAëŞ¥cY;4ï¯„Wkì…Õ™w#%ÃmİR×l¬Ë·ŞğÔÔ,»³îµzµÕ6\'Û6ï³M÷7Ú¯«/QÕT‡Ê[i]ÍNá¤m¬Ù¯­í$‘·mñT¼jª¬Ëá¡³úŞ×Ãº®ïcû¡´¹Û»k:³/Ùª…Uvÿ\0\n¬¿e:cwshÌ½õÜ»©;Û¨ÏÙ]&mË\Zåw}¥©ˆã÷•X¯Úe¡>¹ŒHï4Š±ª÷·QåÁ2öVÉ²ÍIRË¯&›¤ä^Kuö’V^öååşÕ	ûGö}mí…À•‹V±üö7½yôZ‰£¸I	.Æ^ªÍİjp·(’«íìæ¼¬¾­n¢¶TÒsÛP²¸Óo\'´»FŠâ)6Ix—m4ï}¯l·Ò+à¾1ñ6…&“jßGÛûK¶µÅ£UÅFYvÉºŒ®¦%µ2°ßÃ»4ëEÖõ~ÖcÖxcQ“NÔ¡ÎÙ!=åÈÚC}¥eñ+SvUfİ·­cÙíÀëGŒşE•Ù[ãRe&Y4’x‰ï5.«„İ¶”?b¼î…Úİª²‘™¶É†ßÒ¯»<\"œx›5‘‚nİüZQãìbŒíæWrxÔR/y7²ó\Zú¾aÙ“’÷ğ©@9íñs¡„Go¬¢ï’4;ªÏá\r)la¥Pnn\"÷‘¼¿e	ğö“ÚÎ·Ë\n“†ÛÈÕ­ÁzSêz‘ºvdŠ5—h¾T‹vmTÔ¥g]¤²øsL6!&Eîî ¯y\ZÚ˜æLªÖÒŒ²mİBBc|?jñçEñTü\n¶ûˆ“h÷–ßãQ×]G[\":¯ia%e\'İoµñ­~öÈC7=Û”ıª¼5+¦q±¤Qğ±ñ\n£½©j)sp†ÒC·»JV½Æ-Ùk*SÈV%T øÔá•‡/µÎ°1î\'äi‘5³öû,Ü=§p‡wìÕ·ó«¯ø_äk‘^ËU¿Õ+ƒÿ\0é«oçW]ŸÂÿ\0#W_¤€±¡¤ç•ğc©Ş·„ıf\\ÿ\0©1óÙıJqy»ò•şÿ\0ÕKİo×jôªìæ,û±»Rÿ\0YŠ\"¡İİoÖZ]$Hv)İšÀeBwqŞû4æ@ßWµ0ÈùĞÕK\rv¶·—_O…d›mæáX±n½ÖÛÊ²!Fæeê*bHW¾Ò¬nãk}_Hge9¡Ùéç·ô³F¿GÛ;ë]Eï¤–,§å <±éOe…\'µšP\0SÔühÇCk~Ó¤Š&ÈŠ¤úükÓxlÈ‘“*õËkËuÄÑZÀcYtlîòÙt+}Åù@¡A6Ê4mÉÇÃãëUÄÜP÷·¥EYGp:ÉÃô—Ö‘¼ºšhäÂ\\nfŸ›Y…V˜^B[İ}ûlZ±b½õôt=şÑA\\AÆ«à[ÈE½Ğe]íÎ2ÃÂÿ\0¥‘ËáP—|C&e,­şLIËw”úĞòùÕ?©q\"jó*<…â•òêœ‰n}ôøÈĞY˜eUKÛ@½úÍ´wûbbY†ïtr?¶ ø¯Š¥[UÕpK¸7Ã5¥kb-Ò8˜É¹„ËrïrÁøò¨[¨ÛT×m-œ‡¤çn>~uÕÿ\0ÓŒlF–ÒO i×K¸B¨®ì3šã­j=2[Ãjİ‹•@omŞ?´Q¼Wq¤º†Œ#I£go@»p\0ûê”ö¦.ô~*“I™‡æWdr:òÜ:øÒ¾Zæ8â2ä{¥k%­Z))dîg¨F±÷¾™K®®›3432„‰Şj\nÂí¬-:°œ ‘³Üÿ\0ããš‚âmF7½Šå_jI´ÈŸ\0yŠÅ”il\Z­bê\\–:ßimlAİ<ìÆî®yæ§tv’ê–I3Ô³yÕAÃJ’$m\'hÒga‰,/*œ‡‰$ºº1$‚+xó²ÎF|ùzúšïÆ«ö/]’Ş‹«N*ñÊn	ä{Ø\\ü3DPÜDUK.ÙIò*­´MIRİØ!ÛÕ¼è“OÔô=yòFî¥›\\ğ+¹0°bÈÁc+dúÔ£Nk\"î^` Zx÷ˆc\n(_o<Ô]ôé*»30Q„8®«rÖÿ\0mW·\'acH¡Ü’ÊÃÏ¯f¿¤:Ÿ…P[Ê8w¹-°óÉõ­™ö½4piàËM$	³Ş\\ıkv¥4Ò•³ueàÈ¸îùgãšİñ\Z%LÛãÉäLÑÑ\n‰˜ôVæ>5wğE—Õ48pYL‡\'>kåûjàk5î#†ŞıŒp¨,sç[km1„€m@ (İä<è^g`­oO\'ˆ:BÛ“¦}M2PQˆ[w23ÔŠ~]OfÇ.ÍÈ(<ÏÂ¥—†a¹ÓVæëVKi$ÉXÒ\"ÏïŸŸJVŸ\në§ÉË|šëHÉ…Èb=AÀSYÆéÙ§İòÓã¤Ø[@†é§½¿Î¼cì–òçŠ{\rªv1ÿ\0èüŞşëğ­ÿ\0&á9ÿ\0¬¢¯­»FÛáj¾•™š®¶³I–>-Ô3¨@Ò3.ß\r;Zõü^µRÖ6-&Şí=³ÓZIvş•iú_»·üÚ³9û=-v¯u»´ñ¬WàÔÿ\0ÔÖ4ğş‹S;Íª´³XÛ f³nu+Áº—ÕµÈ€ov¡µ	»ÍŞ¦šÃ.·jÇıòªú²…¡¿°Ù;T`İÂÏî²­éw³öí¶`·32Õf‹%¬‰,.­¸/vt›Û¹4}æğî¤Q;™•Z½‚ï¬Hëºâ5(¾âûÔ§æî;°HÉ\"ùIá¨v7[wÆCmõm»ªWI9!+xUY[Ş^õ=\\®¸c&ÆmI4´Ô,¥ñ³uìäVõ÷k_¸‡Ù-¬·“‹}°È’n*¥v²Õç¯ñM¶˜\r¤o›ƒí»¼«UÆ§Åß\\Ç½¼©4½Ü2xh6N*SeÌ•°öªŞ	_NC*2îUVï-#\'Ñ·E´³ZéïqÙ®íŠ{ßÁ«ë„u#ƒVÓ-ŞŞ5Šc´H«İoÖ­§Ğí®DEoc±áUïV×ŒªÕìÆ5é«u9£¤ıxïY–%M\ZXoxj7ŠıŒqŸß=®¯¤J7Ú$ñ+2:ş‡£WVÙQ¿4Š»u\nqÖ—>§£ÜÃl¨³:mFuğÑôQ]\'üUÉÃ—©§Gtb‘9±˜åı*öãLt¾Û€Ò]›ÏÏí«ÛXĞµ(ï®4ImiÍÙQ\"®G‹½AüGÂ?R›QkXäİN#ÚëÉT¾ék®®¥P`ubY_,Û—•:Ó¬×‡P>õ\\£M3Ì¨7:/ˆŸÑ¥µ-*şÖÉ­ªÀ¨^püëu¤øü\rWãs±±K»«khÂÿ\0«U«Û„tˆm,¡úÄrU‰êßªƒí5È[PVíÜôş\rl&™­‰\0]ëÕ—\0|·P«hÛ#ê³Œ–¶È0{kˆÏ†F¯µa%ª®VNÌªØİMaÔ!;ãV‘v÷NU¾[}ïZc{5Ò«,yì‡xÆíÉ¾+\\±Èj¥m°Bê—\"•²¸QËñ­xâ»¹.µiT³»[Ê®íbb–S¶ì÷?³T%ùY¯§u>7ÇáUª8È/-š#Q\'ó¥‹4›}¯Z9¬{/Ú=¤ğ{/±oüêë{sV­\\öb¿úÉàïúbßùÕÖçî£|Ú­C‘ìçşÕÕ/—şu/óÍ(6²ø—øB¾Ô¿ö­ú;‰Oùæ–¶µ’ì¨pGV¯4èß!èjúˆ™×´1†ï0ğ¥ßµ-+ˆ‹Èø¿n)ğÓ¢¶ñi®iõÑ†HûdUeAâ)ïä£EP¼Èíuc³òÜHÏÙ£4şÓL’éÀi%<8ğšf¶sámn‚âG!UGRIÉ?†*ÜáÎÖ8ş´…î<]Ş‹ğ?\ZgÇñşI%ß\Z®AÍ7E\Zvf¼*%UÌmğ4\'ÅºÑãë\"0§Â‹ÌüMX¾Ñ® Ñô—2w˜îÆï…jÖ —z•ûM®cÑ¤ğÖÇÆ«Ôó¬Û1`Á®4P‰îYãŒ¶¯‡ÃáOnµä¶³{‰À‡ÊÔ¯Î#›D±-bVo#D~İuÁ¦pM¶“¤ê¶zŒr,&[‹]¸pã$ræ:m#Õh´ª´á;4z!5 ¶Ô¬»K@ªC„èÇ_Z©môÉ~±Ù£ö±<¥@“\rüÿ\0¢£øFw\Zõ¼R;$²\0èX”`HÎWÔVÈ{Qö7mÁ¶ZN»¦Ü;ÃwIõiTo—g.EpÀŒsuØªae ¤Ü±:O¹+¸5µ1ZÄñÆöñC—d>ğåŸ­YÆt7Öµ»ı_SG“êéÚG¸r¦İU6•©Á,Áu;FwFlä°È?²¶×ØŞ†.ı›¢”Xî…n¯6*ÉüE]kÌlG³+¨\Zoî5)‚âÛÊ5AËc/G:Çé -­µ—Í›·*\'…Ox±êHòä*ãá~	C~·wQöq«¹—»š­ş”z•­	MáË#ˆû<İºä|1Uzâ,r«&kµî©m\Z>Æ\r‹zJ§\0Œx°z©éóYjº«ä#IÉK2ìnuc¨jN¶q¢LÒÄ„ª0‡ã÷ò¨>Ñ]‹±^X=}+=(Xlš\r~WPóƒ/6‘n¦c\"ˆáçÏŸÆ´¹ZÊá>°\"[ nçŸVøc¥T÷sAoğ£Ó!¤#ûüªSJãhíÊAtßŞ¥@&|ğz¯­\nÊ6nÕrªö/ÛMNâå\\?“¶H…KÚqd‚Vßq$ù\0CB«S¹ÕÑb´‚K¦EÜ’Ãí\'¯ÇÒ˜ÍÅ1HÒDc-pŒAAİ<¾ÏôÖkÑ;\ZÚ¬^c„k‡‘ò¡wyTçÖáK¹N	Fı†µ£Iãˆ ÔBİ¹X¢¹%\\?Å¶š”j-d–03Ò•jÙF!–~¦|}ÂÑëÚ|ªeÆA~`rò­Wâ®}\"òH„>ï—nÌ\'qÚPõñ¿Zë	,‘Äæb9#Ç½«a{ªW^Mtö:¶	Å«°Ò\"˜Û2ãÿ\0\n¹­¸‡O¸šêÉ-dq1Š-ìNöıß…Ròè—<1¯A;A,B)TgÌ…Xz¢¶œDÆ†Wq†r¹Ùr\Zõ\ZÑäòÜ[Ë‹©¾‰ÅâÉ§Â{KWfÈp7V<şê+ŸR¬ÁŠÚK‰ûæ>Sj¶ÏeÅı„·]µ½¼¸*pqä?\Z°4›G_½’=4KhPBÒI2±=âø<òX•è–ª©N¼M.íÛ‘‡qé;\rèkw,#R‡Í|Ã÷÷w§ÿ\0ÂøÔ=®p­¨Mq6©5´Uæ`½İÀg—Z@¿ìÓı¶ğ÷:^nÀOŒm2³3R\r`²w°½ê“Ú¬[»ïR‘Æ¾/:ó{1¬4µ°XÛvÚ—·Kf¾4UñRsN±¯-­İû4iØ‡·RÆ«İeş5ß]®í»©mCQUFız„o/FloàÕ–¶É¯.GÚÍïV:j³ß[$^.ÓºÔÉ›´j#àKUºâ:&Ú;I•{Âµ¯¢+Nx6^ÛJ’}Ùåó‹İÛ|UÖãºháf„·tîğ·ÏìÕ“ªéoe§Á_ï{j¾¸y¢2!BìİÕeZJÚá[h7i¹¾>Áå!§B†rÌU9\Z·x|Wí-DßqUåÂ²Û«,j6vŠC‘E}ppÌÙ{ªÁ²Ÿ­ú4c¦é‘ß­”åÒÚXÉQ—ólGyyVsùz•ZşIèš—·Ö—7ÈóFÈd~«Ş«Gàû6ÔCK\Z1VÜŠÇ¼´ëJÒÂA»€Eïmïÿ\0Œ4KE7Jñ›ÂÕj­l±,OpMpÿ\0A\rİ¬ßVR‘ë2øjÄŠ¨ıj‹ÓÂÛˆ×Ú‘IûŞızz!Uu0,Œ¶Ã÷(q¦’íx‡QÏº\nø…erßš\nÅ|^õ6bª\"en¦šª‚w¼!a>¢×â%i$^Œ‹»Ÿ.t¯û,ÓoZQØ¬Šï¼FW ÷¹û«ğ«›»°~‘5q\nó>N1º„êºö­ªjÇû&“N—:=¹lÏEë»ôzUmy¢]é×z¹½†IR5L(S·ıÓîé[¥ªéğ\\‰UNñ†CáZ¬ø¿„l§{ˆ´y/ãÈ}ÑÓzg½uı`ieÕrPºO\néúœöÂ&¼\'j»œªëêh‹Ká+ôüë€–¨NY‡7ùv¦ önºT…­]Ìq6{­ïù~Ê9³µQ\ZA1M¨¡]Xzó -¬®ÛÛÆ\"M¤ö$÷U\\-Fê±NFİñªŸ0¦¦ø¤½™^Æ69.½Ú³×~±u´IËÂ¿ãU»ªà~…i†|G›}\"e‹n^öWo:¢òT·7\"¶3ŒlÆ£Ã—/]è„—_.]+^62O$nõ¶•\\•¹vnF‚­·n)O«Ÿµşm8¾\ZËn+­cøT öeo³Ú?7ÿ\0î şuuA˜Ûï®Sû0ÿ\0Ş\'	Ó:º´ş5Oe±\"¶9õwd×zÍäVìù7RäúwÏ*!µ²:Uª»X;´Ó>£su=ÏgIu+€[¼FóÌÖ<A¨iqIpÜÊØ‡d¹åæ?\Z‰ÿ\0cs…~U5¯,@İÎÒÉ´ë1ÇÊ¢ui0ÁÉœª®Ş÷—ì¥õ^#Ò4˜EÌÑK,Š¤É\ZDgËãëR~ÏR1¹{¿¨É\nøŒIÕ¾_\nxN³«Uç£õNC~	á8­¬–Y­ D[ª¡æëg8øQÕ¢F©S¸÷Î¼†4¶$Ãî\n01Ó±H=ëöçhxNŸwÇÖ®µ® Í-ÈíWLK»,:.ÄËçŠ×{‹;[Y„jê#q_v¶w\'c£¬’¯N^\ZÕ.$¼’Şôöj\n4‡¢ò ÙÃlf#vÀÛŒ’Wú¥õ±WšÔoB­ÕzøP¦«lœGbE”¥&äÆ6o?:(·;øÒÊTÑ•úƒÓ—Â±›ƒâiÄ¶NÖ®½ì«s?/…,Ãd>ªËƒa<\rk\'CsÅs%¤vÅL{›­\\ŞÙøâÃˆ8“IĞtùDÚn›o/o 9\\°ïcºUT¶Út{ne–îLe“~Ğ\r#aÄV\"ßU´¼µEúôE\"ØrIê<_OW~WL{3ŸÇ˜}À¨âãP.É4¥mç“çø\nèOÑËB¹µá†³Õ­İÆ¬¬ÃªúV²ûàéµ™ìoõNÒ{iË/h™\nªpÛızŒVöéWVúM¢FcÙÜÈ‘t|3åò¦át¯\"öD³aHÎ&‘ô¡46©ÙÄèpÀó*Ñ¤gO¨Å%£#JSî#cã[µÄ:ÜÈ ·ˆ÷A\'røj?¶Ş\r›ë—3<n¢EÜWÏŸİX6]2úş\r:¼v„Ú`Ó¹Ùƒ”\rº3ÍGÙj–Ót©.	{ã¨ÉéM.£\rypX’7œ¶9“ÒŠ´ö(­æ¶\\»sg{ßwZ,·P©^XuÅºciš: Œ„åŸCóøÕ)‘7(*|ÂóùVÄO6‘Ç¼>Ñ;ıVäd…¶‚`O:§µgÚ…½óE°Io’VMù\0zëC®ÕÏb­[l{#â	´)Ò°ß.»—:`Ò7—:î¥{Ù‚\"Uv÷sxüj\ZÕ¢Ò![[)\rÍÃŒ;nÊ¡ø/•+5¼}’nWfÜÌı	>”q¶`j…eägw¤­îùÑ?=‡ÈT×_Şiw+s\r¼³¿ ùVVöå{¨§y;Z¥´Í=d“c†İœ€|ùRv·SJµÇ%ÏÃÚÊÍl$±fA¸«uÅ3¤±îWËŒ`ÌU®ƒXìÁr\"6ô«\nÏi‰_i^]UºÖl·a‚Vá8uKÍŞaÑ{<“Ÿ?ËÁ#µyŠ¥ƒ/|F?9ËÍËâ*Ï[\"ÅÙËÈıÕYq·K§ööí4q—#0Ë\\¶ü=kÑÿ\0Äº«lÆüŒuê3×®x6;¨¯­ív^B	;“ÅYoBj^Ón\r©}2#\0wv<ùs}V÷7×»<“f@ç¼¨z\Zd®Å ei$|¹è9z×¥³Ë†áO6•L6X\'Ôu“©\\Ü‹!nÒFñO…Bm“ş?_‚vkbLYa¸^Yq¯6Åüâôît”Û!¾5#nó6ßz”í6ó¦ÌˆÛr{ß¥IÜ^.ß»YlÃ*¤„—ÅS§†¡o5.ë-GİjŒªË»İ¡û‹Ö‘·zº•íØ&W·m#2î¦UöîöİÕòø·m¦E™Å—Ä´MÁ/Øq.Ÿ&í»fVİCª´IÂ¶7ZÅ¼vÊwİİZ\"ı€|İÑ¸Ô£¹ÓàYCÙøØwhJöÎI¶·hÁ·\rÇÅ¶¦á[ivÌ{E¼¬´uªLú’Ík:EmÌnî«{¹¥/h6h±´\røgK’ù;køc·5Âí’‰.4+g%ªB›×kvR/áúÕZj¾Ôl¸rÌÍ¨ŞEváv¬VÊ¤-W\ZŸÒ6öY4].U¶ÕuVgŒö?SV«–µìmw“§‘ms2ÍµKyş²õZ;áè;+™L‘ƒ•ß£nVÛZ5¢} u{[•N$ÒàcûìO‰ï«ç†}®~RÒÌºc‰bî`ƒò?¥ñ¦é­©öR×[=Iy\\ñúü1ÁÍ¼wxhºÖe)’ËÏ½Z±Ã|o-şº¶·L¼›cˆ75¼Û¾úÙ.VhQƒn,¾\Z×ñmfnLß!T¸›—ˆí¬•©÷;ÔÊêfb}ÕïTN¡­­ªJY¼ci­/Ï_¨AÚF«³íSë˜£GÜä•^›\rÉÇ³U\0û»h/ˆı«éz&ù5]A!+ÉĞ·x|¨V[º‡Zçh`¾~Òîç¶ivM¹®@ım½E*H¹fi•Ã2í“´º©h¾‘ü¥VêG]ß¾*w@óô¨·AöËÂÚûˆí®Ğ3¨YOz²ÙY[lšÊÑ¬\'HŒTnâä}ªntXdw‘œvIÍ·/JVMA;H%…£=æen”îÚTºäeŸÅ\Z¯%vÖdÑªìWúö”·v·ğÆ`r_3óª¬ğÇÔ§-+»8mÇùVÅ^Y¬‘º®ğ7{»j®×xre»i¦GÚÌB–mÀ~ÛUYKÑs/R\ríc:EÒ\rÍ¹<-ZÕ¨B±ŞÜ¸+1îÖÍëlÚ~‰<ë Ú‘á»µ¬÷“	o&}˜ß!lmëK*õÀY·¹<B”÷ˆé»Ÿz”jû?\Z¦¡\ZÍ‚f+ÿ\0¬nÿ\0¦mÿ\0–º®Ü”ùøºW*}šï…?é‹çWVÀß}?Bğg^Üš)­Y}wT¿–êfd’Im»pÇ´/>—\rŒM1º™ÚCá>Ç§éTÕõÜê·ÆY·Ögä[™ï\Z`µ¢¶–2¹XÊŸs^™V¾¿£¬³PvÇOn1â(#ÓÄ‚Ø¶ÙY×¸ª0~9­á\rÆ;x#P‘¨ÉUñ|iàû>Ò’£V—’F^¤ó§×w\n»ÁÁå´y\nÇk%›±ê¼_j_ı^]&İ–SİùTn˜e¹Ô˜ÁF\'ÄjöøÆ{­ÉÎAnxøTŸ\nM,×\0°\ry€¼è-bËZ¸]‰®*±F°hp¹)ĞØåZ±Ç\\>ây²)y;¬}knµ«ÇŞ.w¯uOQTwé&u¶ehØ7i£ºyõ\0Ğm^¦Z7c^ÚXŠ±\\HR½Š“†æX­–7Ù¸ä©#ŸßFğí°–EXd°—<šLº·ÄáùR‹ÁıØ…älã™WV[?«Ò‘…a½”’û³fH¢fœ¸²ôù|*6Ã†/u^ÒXGiB:`òøUÕcÀ³ê ;PÀáq\Zsëû~uqû*öJú5ÛkZÜ	\n[fDî÷¾úr”f‘K¬]C?e\\û‘à’ ké{Û¶÷”*#¸Ôíş¨¶‘’;5ï1ñ1ÇŸÊ¦ç×¬¥ÑÄñ:›i8»z€|¿U®£ÅÍsõxX$’İÛÌæi›¬hMIáøìó³vÄ«<Š¹Ïuñæy-ì\rqù¢6c¼~U•¾¯w¯Hkîî´êêêÚ6‡ë2¨‰¥89óÇJòö3|‡£š¬çW´ş\Z\Zµ7Õ“b …o<À45f×3”–6oÍ»åó­Úöñì½u{t¾··I Ê‹};¼ÅjÌ¼%.›q,VÊç´Ù{Ê~#Ìz\Zz»a—“2hh}†p]4,½¬;ƒã)–ê<ë™Ø:º!h¤\';»¦N&´b“&âŒ;PÃ±XKdûC˜ÂƒÍ@;ƒı4=”n01ËiáEfÎHÇJÍo\'•ñ]²xyÒ­dg˜‰V_*^ËI·Şe}Àà••VlS“‘]>Y®Ü®ÎÆE\n2½O?/…påÂË’îó$j\'L³hÌm<ù…ŞG1ëEúl7Lb Aê«HÜù`q¨ek`Ï7fÍ‘ÌÆ{Ãæ<ªsN $°\0÷G‡ïøÒš<$Bû¡\0çëS6Ö«;* ÁæsëJ*–YD’ÀCÆp:¡=¯Ù˜šI#µXâÉØváÏ¯3Ë*Ù\r6ÏĞü‰ÇCëTÏµë™eYØœs8ùsçZ~rey+˜5–IZBÏÌî‘»ßóı”²EÛE…^Ô–ÜyT•Í¸‰Ù£1‡Û‚İM{ºI\n:˜æFÚ[##˜éÊ½·S½£’3ItÜC¢?1“Ë\'ú+8î%ìÓ½„{­M!\"ÖîHI6T\\ŒcåÖÇ\nviß“Â=ÊéA%¼Um¬Ü¶íİMæ¼ñ.êƒk¶ÜËŸz±íÙ—ÅâjU«®¢·¶í½{Û©¯‹êSİıjMcı#E­z‹»NO•[ø´ò5f5‚ÀÛ|ûÔò8¤ñm£Ä	Ùdz>>÷‡ÅW/²$Ó­gyï˜\nØf÷jª°™ãY¼,ÕlAom§i1¾œcŞUYƒõµXRÃ8g­qƒOğ[1b¯¶µ\'	ñG]\'k–vÂM©°eñj;‡®§ÔøZhûHáÜî…_&û?:½¸GUPÑE±F®İš—İ‘»®Î\\ÙkÆúõU5ß‹¸bÕ–\rAÍÇb›Ş&nl}ÚgyÙpö&¡\"\'o Ê[¢¨«+éÂ·Oc¯Ú*K¨?g şW]êü)Yì`È¨¼Àx±èËF­Wğ-c6À5×]kÛÛê2¬‘Ú«v¨ Ã÷=¼Êş·†‹}šñ4š.¹o\rÃ±²º=„Ñ†î©>Z®­lgÃaü]åÆ?SÚUœ×wúm¥²·Ö®nQQ}åïm£ÛT2­ÛcltM.å¸ÂöÅ‚vî÷Z¶ãD–Ê‘sù¾õp?[&Ÿ§¼±.ø£Va»™+ÈîõïU CØNÓµ•yQ<Z%W\'m³iÁ~Í;{Øªã_¼–W‘£È‰O1ŸZWöââ\'Rv6<\'­Wú–ŒÎf/×İ%{­EµZ> Ô£½¦qÊğ®šÑÄÀßN½ÀÜöµúµ­PDu·m_‰&–ê¼1HÙVŞaïc ¥{i¹ñ>«ˆY­¢	İİÃP¾§\Z^ğ·emÈòBB®v°ùR¡lmW‚1øŞÁ™Î£Åªvlà±ºy…ÛU&g³[8õÌ.[là`:†ó\rŸyzÕGk4°¡I+“Ï<Ïw–ù7Æ¬>Ú4Ö˜·f¯½s\0/ûÍräÍ}}ƒªÆVËçq…ãÚAĞ#*\n‰yCx±ëÎ¯»‘Ú>ÙÃ&9w¨OÙg\0EsÃvMªYncÆ}Üù}İ~ú³l¸:ÚÑŒÚ¢;›»YËâ<49¤şJ2‘Â{3 #³+Ï»L®ô{[ø]Y7²òåïRÖ·\rdrã{­º•íbÜJ·Š¶•:òg³©Vqw\n,ºUÍ¬Q¶Ö]¤ã£c•iŞ¯¤K§ß\\A:2‘)^÷Â·ÿ\0TD–9W9ÈåZ«í[DwÖf¸‚<0Ê´+*_ñ)Å5${W½MHå»jjKYcr¦20=ênbÚ½ê_ãÖu&½™†ÿ\0TîŸı³oüµÕ£álãŞë\\¬öj¿úÆá&ÿ\0‹Ûÿ\0:º¤Ç¹ıjjµÄVØĞ»ËmmBHm –æin¦HÙ!·Ÿó}*Éá¶Òóv-QndÀQï(Ö½áŞ]2[‰ç\"{†R¯„—$-\ZÅ†3&@Èå¹ymó>öíÄzñ¼m\'y\Z¹“iL\0v†Ø:Ÿ‰¨ÛÅß\0€ïb9t§úŒ¦ÙX»\0}¥_^¶N]vyg­*şUj)G&9ƒ¨pKğwlfG‡jsÛ†qåAzè’gz®\0İÖ§8.ù’è)isflùR‰1±K×úËvòÂY`=©À·LĞFµÃ+pİ–ÃŸó«KL-°=Şòç¤uM2;„rÎ»×Ëî¦Y61~M[\r?ËÈĞ©#—qÏtıÆ”Ò8ašq«Å=èˆî“ëGÚSBòÇc»5Jğn“ş’NK…=³ŠW³{:’\\-ÀÖš]ªÈ™!0ÜÇ¯*±¢H{Av•ÁV_6Äj‘®ĞTg\\b˜Ë~Hãº±DyÖ‚×øƒ:Y™€hÜ+$ú\\±hw6…¤ˆÛ2ƒÓ İñªB>/‚6Ñ×[ ëJï\rÓª’°åÚ|Ï\"qË5|ñGÁo\0xäê;Ñ/&çZ×Æ:ÍîÆàZ‰Ñdİ+mğ&|şúNåoÁé<bB\røŸŠ%ŸJ»´³Ò!ÁÃ\'y‡qV*û?¼Ôîm%Öî¾²°¸‘R{<ôsó§œ7ª[<}UQÄ@:¬n óõ¢8²Û²SÉºà8Ü¦²®¡g˜ö0şCÍ˜Dúé>˜-®` ]»[k¯µdv‘G&¥§­×y,›NW>Ÿ\n½Æ¥#Ò;¡(dÊª®\0ùÒ^KÄ–;¸»aÓ»–³Ydì4š1ªZ5¤ŒºœeAÀI¨,£çMî4ˆ~¨¯ot FqèG™­™ö•À:±f.$¶Pû\0Üü*ƒ¹áÁ£^,V&C	m†7 |…]X!e¦ÂåRêr…ˆDˆä0õûªex`º+XİA<œû¡¶Ôı–2DŞÎ“ûü©Ô\Z%½ä¤Š9àô/>~t&uBé–]œ†7‰‹M~÷İğ£-/MHİr»”óñw‡Â²³Ñ#·A{]½ø‡ş-k¶&,;ßmr9RÒİ‹Wì!Ó ]ªı]¹\0ŞBˆtû&iA!F}*#I¶Ñ¹yû´q¥é¥y6w0rò¨]˜V6)´8òSŞª+Û%¶§\'kVÒ\"yD>^f¶sM°ÀÜ]\\t cçUïµ»>ÒÖCw0¤‰À—7ãõc2ÓBuM)­å—¶…²Xàş4”é±yª$H¢EIå\\ÿ\0\Z/âttyv.ÄZâMì\0?*,f6İ˜ĞíÃ¡Ü¤ùŸ‡¥z\ZÛ©‹b®Æq}V7HãA\'.EËnåÍqğÆiürMÙ§e\nlÚ6÷ü¼ª\"Ø-¤lmÁSoA…åçÏÎÆñöiş„{ÍDûíúÕ’øvÖ;[vï´Ô¥@L|ªÌß:y\Z¶í¹¤ã‡íSØã?fˆ©9{Äö=ş\"­İøSèv¯‰{ãIÇwÃšq\Z¶î«âÛGÔAìÙ‰-:%kˆ×hw…–‹õ Íaoº·nş«û(JÁš9ãmŞõ\ZÜX6¯wgH„H¼Ô66ÕgQ»Z/Ë¢éPßH±n™¶¤„íÎïäş?·&÷²±ÉÚ++ÅpDj~Ñ>÷ğhªSe¦éievÒËİ¥C~<5 ğ¯q§ùùçV\rˆâU`˜÷¹œ\nCãÙ°m«ux~-cW°]+]ÓF£c9Ù$s£9²Ão5©½#è‘¤\\A8][S³´‘¹@Ê¬cÏR§©UòİVÇéQhö°}Y¶B‹¶5ÎTáUŠºŒPG,Å€¼ÍM­KRìÀ™šMcèEÂÑÎ$“]Öï	o	U_ÒV©®ú*hú·õª·Õ¬Ü˜„ºG-ã.|ˆ÷jéÓ=£hÚ«È–r¹X¥1:•èÕÄşÑ µ²/hË\Zè•Û’š£y5kÀİtYšÅa±†;{EB±®ĞIïSæ•s¸•½ÕWèŞĞ¬$Kgy¤}Ê»[ºG½S‰Æ¶²sÜ¿Â4Íw£W˜Ş-Ÿ®òu!%»ª¢£eŠ;¸¦]¸½íÔ3«ñu±Œ4Nê·uğÑ?]ÚİÚÇ:?vUÆÖôó«¥‹dê.õ5m–(<ökÆwïpkG˜lí\"8ÇëP?F:áûVF{MnÜ”+0M¾…[Şõ­Ô‰a\r¼ªN^;rÜÛv;Á…sàP?\"·6µÏ£—´‹öÜUàwî3Bê³VÏ³£.¾ÓØÜq­¬:^›lw}LJ‰N`¾Ş£Ò·\"Hğ›ÕÆWİïT5Õç`X•ÄÊkZ”Vì%\r•¶—l°@B5Ø»W\nÃáú_\Zcq}\Z;n¶¯&İQú®±‚[vğ»rÜÅ	j\Zœ\0®ßFª3¬.¶³±;wª	d /yk{ÌrD{¨}„ÎæÕ)õON -B“ïuÛ¹UYyPî½À°jÄÊUX2÷·s¥ÄËÈç«Q†‰*IT}ìÑV’¥¨ûF”öI€}íµì^Wƒt1`qÉko#Òb•A!{Ôäè¶Ê¸Ø¸ÊÖ Ÿêiwû&Ôtî:áÛƒmõ(d=ß²ßø×@_Àh:\rÕ.â”Fˆà¯v‹¤ÎÖÇ\\\nª«1©Úc±EÜ€%–$Ïæåp1ñ$Ó˜€ú³É#u×Ñ”r8øç­Bê\ZŒ)©ÊAÀí]@şÇíÍ7Õuq.è oîª‹æ?\ZªJ¯³^¢\ZŞ§I*NâPåK.Cş¯Â€5=h•¢qŞÀîÒÚÄ“O!úÉ è³Š½Ô\0b–è1Á‘¹“J\\ûzEêew}30i&ìã$àµû?1%Úá¤¸Üz*­Æ&U»f–Vl¬jrÌù|¨ïƒ\ZO¯\'i#ã#l1JÖÍ°+¾¦ÒğüQÉl®VM¡\0ëR·Z<nŒ£s`f£øY·ZÄXy|ıhµÁæ-µ«SÍ»v*fÀÚ—À*§©ôøÖ:ëaµ‚B0Cx±FüE§,ÄªÆ1yõ Ë8ŞŞøC&nØ î*‹Õ²eÄ…w÷­ã!YCõ>”¨ßO<‹ge6ù°XxT|~4w•ü ;¶ŞCråQ§ƒ °¸šêÓ%‚w6AùSÊêYU€ÓÁöKm%Äñ=íæ{\'4ÉëŠ\nâ\rÇ³š8íV)# º2ó?#éW½­¡ ·ØÂ J÷‡™çB\\q§%¼ÑMl«‘™Y\nò\'¦h7*ê7O“¬”\rÎqa¶ã@™íf@NÒrF}WÌR1qŒ™-5»u*î;øî·.éÏ—Ÿ*°µ–8¥úª‚©ßÃ¾¬zıŞ”#«iš¬,R<¬‘a÷kÿ\0á¬KU¿Åv¬®dŸ·Õ-ZŞCÊ’mîmn@|(ºËQ™¢Vƒ¹QÉ‡èŸ#ëT¶”÷:d‘ÛŞ¡x\"lDÎÙe¥ê(ÿ\0IE·SÃ§c<ƒõåè1Yó[Cd.êOëzı:~Ò×yNd,aW ıª«¯ev•{Kg‰³†ÂîÒµ}CQu2#4@mÜşñ¡Œ6}FhEm»^âE·,r@SÙŸ‹)ï}ã­.ÊÛ†]LVÖ)­Y¬Êãìƒ…‘OÃw&¾•-½§h«¤R)æ·4/ówHøÔ…çg~ÌšœIÜ¦”#×rã&¥£Ñoæg’I•€ìšm¬Øô\'ÂÃÓiÈøÕt Ş=6ŞXãœ«	ÏçÄ£?Áæ)õ§\rLçqT‘|/OÒŸãRÚ>ˆ,ß*o+s*¸6>Tiah‰°Uò}hl«ø,¶ºFŒ°€U9\0ßFV\Z{²\r±·à)m;Ni”8Bà~ÚX¥²2X~Ê¬Dœk ±0Û‚¡‹c˜9Uwí3O¹¸²š8ä`¥N@|f¬é×jòrô\nâ×vs£,reOu¹ç—Jb¸Ç\"ìs·m!´¾Û;E#óÉ-œôåŠ¸e‹|xìİûÀ]>u°~Õxzw6`WrÄ‡Híîê=1T­k0eÚ»°Tş–zü+~›\"WS*Õì6IZ&l€‰ÉŠëTØ@ş‹øÒ¬É2Œ©\n[s6s\\©XâµìÓõG•2.a‹m\0gw†”)ÊŸZØË,Å,7wp¸©ÑäóPŸ6¦L{oíÀÊ·ySøáÜÛp|?j¥#Ñü;å\n>Í8[+$ïJÅû¾ónşJ*©šÖ¶ÄjÛÈ| mùÓØlY¼“ÅëR0Í` /·»ÊÛj)»l\Z`Ç‡¼ÕÕXüØggc\ZJ»¤nïZ²xgƒYÜ5ÑcnØ<T/m{vì«…Š´Â¬¾×µIÕ$Ò(ÛºÛb+üµFhf‡>–\rÏ`m\\…lÓsgâqîü*OO¾‡N¸F‚Ú(Ç„»!~8û?\n#¼ÔÜKÛ5Í¼[û¹(¹¦‰ªÁ4›VìÏÿ\0ğí”ÒlØc}©epF¹.§,qBíq+ˆ€` z‘öh§Œÿ\0)\r8Åm,i:÷™ò\'İİPœÆŞÎIàO««Œh‚;Ÿ@=¿\nÃˆßR0o3¬íê<^•/†²½`½.«fÌZzŞíµ¬&ĞÆÏpñŒş‰êß\Z;±á-#ˆôï«ë›Ì3¯zl?{ÔùPµ¤ÚÕ»Ê*ÌªŠªøÔòjòé–‹÷×nîòe¬ú<oö4ßÉÇÔ ı®p¶·ì«V‚>œ]hÇ.ß%à\râBÃÅú-L—.ÚëglÄRØlmÜ9ÕíŠl5\r.ãOºd•È÷‡5ûëY§i#¾HwÌv™7røàô«ºÍ|)µáZ®ı–ñ·j·²éñÅn÷SË²	²§Ò·€xVMG„ê×ÒŞŞ²n‘˜aSwRª9.ŞœëZ½Ã¥Ú$á\rìl®­urÏÆ÷VWó¦5æ¥¼TÇÒ˜ÊóYZÉU-Y5(!p³’wPîñV4I$Å%“x6^‡ô}*‚Û-ãOhš†\"í]Š]Ûvô_áu¢mÚÛ\\ÜÈ—–é	³1vgy-Ó|äfÔÏouØ³$ÔLD‘‹3wV†umçUqñ”µî¥i­ÀÊûíåÆU’«­fQ,ò(ºıíÆŠöuÙE[bFmA]÷ıa{ß\Zd·)¸‘YXúT(µ@Û¾·#½İ4¨ÜêÒÛ…&bº]ª»#_IqÈXãìšj¸ïnN¥JF­Õ¼¹U•ˆ;¶œ³x¹mó£\r>åá¶,U@ »xÙY¹t4M¥ÌÊ›1×][R¹ìHAÆ—–÷ËÑ°B6ï#•iúâ^@ŸœÅW71¨¹—ÅÖ‹ô[#µ\Z.JEZ«]ŸQ›+_!u¼Ë%Ì?®(šlllô¡(Ùn-Áñ)ÅKûÓ|¨×~«ü\Zm¬kK­wb6\\Iœõ#\'}{u«˜­Ãö“ ÊÔÒøĞv¿v–ú…ûoÄq>¼»æ† âF.©;w°¼ë)¯í©ê+ªZ¾kİnMEÃ¨æIWïrOj7.Êÿ\0V)/)&~”çThâµ7\"EMÀ©ÕÏÆ‚oµioİXÌ`¶4ó®µªÑ€ËY#g©æXlv¦öïJÇqoÕ«[‚l¤‚âšrò¹îÆ£üê±Ól\'\"Ìciî˜nTÇ$Ï¯Æ¬Î†{›¨Ø@òH§9t«ÓöòÙpm\'L{(Dœğ:zQèÚÃ+çU¿»Çöœ\0)èjÀ¶{*Ñ<ÛıŒn­QÔ–BÆ‚5;nóH#\0ŒãwÆ¬w-Dj§raÂ}¡U˜êR±XI{=¨›½Ğ7*–³ã)£HãuÀ\rçYßÁ£Â	ó\Zº´’7\0«3HPyC›%FV}–™ªZêEeßŒãçL¸‡C}W’(õøĞ—q-ŒèÃÇÏjîéE¶\\Xï*[N€z¾zQ–Õ`-[+eAkÎ\Zš>SÄK@©ñëò¡cÃR!„îºœ~5v5ÕúïÊìN¤yÓ+½:ŞHPÂT·8ÂúµV©g‰k/²‘“†K¶ÉÓ\'§JƒLú¾Pò=ÜæÃÿ\0\n7›MtšhX¹~:Tæpy¦9CÑH÷>^t•jÃµÛ±}j×Ã4rbâ	;&2ÄuV>¼²µ¨Y&¡nn\"ÂnlM\\ˆ˜ùgÎ<Œƒö¹Qt:d²É-ºó×³*|Mæâ)ºiOınúÚ?)9	ñœ><é&©†VÀBÇL6c!d‰y˜ç\\ƒñ\n!Óô“lŠmFmù–†eÜTŸ\\zc¥JÃ£?›$…ù©Æ2¿Ú‘§Öúc¡!÷ÆGLö>Ò–ea˜°òŞÆ´PˆEË¸ø0˜zÓÎ¥lôã/O3Óî§0`J¢J_||?¦¦$‹µ$u†—df,Ï–ëõu\0åñõ§\\;!ñì#ÓÎ‘0ä\0İ|©hâf+´zúÕ\"¶ü“m„œ—Nñ`“Ş¡}\\0F( ĞúÑUÁeB7 s¡H,àŒ‘ƒÕ|ë§TÖ/jÖ\Z„s¼ÌöÍİÉ÷g®k«l°jf!ŞHİ/,cŸ<şÊÜ_l×qéšeÃ®ç¹@J U,yuOé¦\Z¶ ÷·ò¼¨ÒÅ!%û@£îÿ\0ÂµüXœdÏòW¥Ycdî$F¬<©Hæ^Í?4şîµ=ó¨Às»Ñq_Gõ®Í?9îv´DGğóï.ò~ÊŠuùÖNîĞ>Õ#j½âÊ wªAG{niõSÈYgaªÛ“â\'½úT¼vŠ\r´|r¥ğªÛ™E,¹uÚ¨v·Æ¬ª˜òx¢}ÎÛOÙ+Ôÿ\0´îÿ\0ƒÆOº»a\rª\"î•œ°:{nÑÇ–…õ›­ÛXÈİK\rQ-üç‡A»º@ÅNi,¦îì»îØÎæ_¿¥7×Wî©•÷/xİ5;k¡[Y/i«ÜˆÂ¯r(Ïxıİio“cJªÈ&±ÔíÌ8m\Zy‚íVvÉ©q¢ÖûïïcÒlöî(ªªí÷õÚñ\nÙ•n– ¶ŞÑù½/½Î L÷0…)¥;·}®^gà9RÌİJ×\nXñLz|Ë—sq\"m5Á`_o˜_*ŸN%Õ^ÜÜ0FÁ‚Hıø\n’ÖÇCµí/C=ã.a´êÍöL‡É~«ë\Z…Ü¢KÉòBí1/uP{¡G•u¬ª«“PãíQÄvĞ£ƒw6\'¼[Ö‡µ ™Úi.¯¹|G·<z¿ªĞÅî¬°ä±|*÷¹P~§ÅF9öÁˆ÷ÆAœ­å\ZJY‚~%âk;[y\Zöä¨(¼MUSqÌ3jë)Ä+İæ}Ú×o.o®ƒŞ¼âd÷TŸ\rC3ü~µ_I¡Vkêl‡ë–·v–’²¯ûâ·1Gë—î§eÉ’7]¤0ï-jÄWz,ûíİÂùÆŞ«w@ãûk¨mÌò*Ü¸ËªHG¯­QÑ±ˆË³lZ1ñ;SV¶\ZIù¹|?\nÓu¯¢½´n\n7|g½v„´ıN+ Å4lå.6‘ö¾t[¦KcÆÓ$)Ìl’şµ\"´4Y±Î¸-?ThìÑ‹\n¾ Ü×çëPÚ®¿ÖwVÊ@óUÁ­B/©Êòµ¼;á¸FÊ8nëüIèWáRÖú„ZŒ]§iÏ\"ãwÎµaº`Ìo°ëëZtëº8Â~qšÀ[Æä$û—“SKÕŒ¶2¬‘·B§i¢¬¶Ì[»Ğ)çBÌ•IrúMšY$røŞÿ\03á¨»I™iu\'ìµJBèWs¶\r]ZLZÈT‘»ÅS6S{¹¡¸U»»¶µOéûšU¢*(³¶’æä\r…‚°n´y§À°@ zÔFi\ZÄ„ñçSùÚ;ŸÅ£STÃlvË]E \rõ˜1ŞïÑDÜ¢o‘¡;gc=¸ëß¢ÙùÂÿ\0#Dµ¶€u{9¡­ês>³¨ÇsÍ¾·2§È;RP*Ù[É{z»¤OŞã+Ëqè\nuÄ1Gm}3«5È¼›` ŞÕ	up÷PCrdß>Ç¦>êóÛwäöô/õÆê÷\rpÆIUÔ÷÷VŸéò[¤FòèåP·_ˆøTª%À‰ã8¥o®æŠh¬„[¢·PËÆMuX%‹…ÄÚT±G?i+²Ë)Ënl‚|ŠıÕ{pœ·J“¤¼€êª7…4Ñ”…”·ËÈ\ZØÎc¼I xÓ”Ë1æü¶™lf€ä:üè®Î}‡d¿szĞ¶“sÚÁºÑ/\Zò ¯0„õøÖ²ıLvR}$Ü›zÓ+Ø…Ê÷›˜å¶°K…A_y5Ñ¿Ì•YT)y¥º&å±Î /,¥V,WoL7Â‹n5–e*c;Db¢îõ8·i’NM	‘B&ßTDûÆÄ9ÉËäkÓG–MûÇ2Øéğ©H¯¬¤ºÏx 5!q¦ˆ<%\\?<­%0ÛuÙ ô2È\"%Õq´¨=|êfÂèïÌ¬BF2ê1ëP·‘¼Q»I	ïË¾Ÿc|ìÛ[–ìó\n\"Øë=Šè¬i`]j3É2`8ì×=ëš‹ÔìÕXMã¾UoR=1K¿YéA¿i9‘»ñ¨·â›k‚$˜\"F[¬Fd5fµf-m\rÀæÒ)dÎRhˆ	İÉ`¼¾öçøRÇJÚP;™s…eøzõ9}ÆA}‚»aù<+³Äwq4ÒÁj©«n\\ûã•uªÛï¦€ÕÑK`¦áÉ›ÌŸº¼ÍL`	3’9ÎJêôªî×‰®®W	4¤?#Éçè¿\nšMbîâÙ&™0’H9‡ôsñ#ÏáKº«HÊ«VĞ,±ít–S‘5æõC”æ9«^‡ãCšÛíõÃèb8<¨†ÚD™IÜÒŒ\0{ÜéwXˆ,ŒÛ1İ+.äUb9`Œ‘IÌòä*«zô¥¡‰D‰·*pvrçKIÙÏ¡Å&ò4¤%êÈŠr\\’3P§hÈY\"ÀsÏ¥ê\0¤LGA“ô9q*†r«×–İİO­v/Mí*ÒÜÚËqq.çL™P=ó5¦<X,¥F¶}è’4›c^X<€Ï®|«{xÖÁ5=:áIEF–#˜ V•ñî€t­ZàGòŒ’®S»ÏÏ—/¾µ|WÄê!äú#¸gUI†2ËÍsOã;4ÿ\0	ò¨ØÃ\rà\Z6ş>™ô§‘ÚÏÙ§æ›Â=êÕ2Â;umİ‹½N*2{wx›uIÃ±—­h+)ä¬_ò]»|>*Ï[“m¯c\nËOa·İã]»ºÕ…-•›¸æ\Z!Óôø‘Vk§RğÍE$½‹ƒ®îü¿[ÖA+Êû¦bHğ­ÅÊŒSf­€Œ_ávY¢Á^ãüAL™$wï+K!mØÁÜß:ÎÖ2ë—;\0÷JöˆW±·UŞcÅøÖ{7àôŞ3«(ÊÒİa˜oCqpİä…O?¼û´Xu1§Ä«½\'ÔÕ2Gr€_6øÔÂ6X»×â±óõ¬íã0„NQÏ¸3Şş­cATs$½‹‹—3]ÈÙEvË/Å˜¨ÉÜ¹,ÏÌ¶æoZRRÌ{I[,İOÙ¦ÒğŠU#u+(äF[¼´}fcfB¸6ĞXxhşFÜ»hZ°Ü¢!ı.uEQúlPŠ4uºÓ¡¼µU2ÄŠ?F€f³‘y:•\rïf­© &ÌGîÔKé	,Czîî÷*èÿ\0³ZºVÅØÑtg½Ô „#m-áj=Ò¸q,/n_#³ÉÚ”Ò´å¶‘%E—ôjv(\\NøLv«¹·s©ò6Å±->İË4{Š²íÀğşe¦Û3G²ENòÓ7La°ÌKEV\"(mãÃéV2­e&m¡k¨#ÜÊ·ø[íR¨VV2w«sÃcu3†fÑ—=zfJC˜çˆ/Nòâ­°”ı‡0İÉo&İØÏTòj‘ßÊn,e½Fj!Y]r|ó¯bvy†î€÷\n©	?«¼^òŒøw\nq<ØnùSkkÂN%—…O:jÍ¹:úQÔ%nì@_NØJ»³´råC¶òmÇèœT›wùQ³--é¹» {ÔWº6“Uu¢^\"Ifëİ£ëi£LÑ¨b“èyc·ëÑ|è²^q°øä¡[#¶ê ßjŠfıéşGù*ZY=ÁÍ}XµÆ¯¨†!‰»•Wå¼ĞŞ¨­ëÜDıÜ…#ä<¾>¦‰5¢°êwÏ¹¶%ÜÄ½	v¡MFu‘ƒ¸Uç»p{z>Šaÿ\0k•‹d,Äy?ñ¦É4Á†ŞónrG0Me§İ;húŸh0Æ»çú)ÇBÑN½«á‹nPWÖ¯·\\µ‹G…ÂÈÊÌÍİ]ºŠÜ˜m;yš¦xm§y£`€ØÛŒWO@G9dù{´÷Ç›½»šX-´*ÇÚ¢(ÑÁVİÌÓ1U`\nB\0<ÏM[•ff=\0•¦²f7³8Cv¬OÊ•šXÊíV\0yòó¯%_:†»í3•fåÌÑŠŞ6YÀP\0-Õtnò„gh^tâW\rÒd·Øò?\Z‰¼ÖÆË]¹ñ)g²*‘÷H±»¹f<€y©m#T’FËÕÁR|?/GCfe\r5Éc´ä¶{¹4úÑáµ™Ò\0…Tl§*\nı²¾¸	.ã„X­Í×!go3Aú½óÈ`V¶…qß*GŞO—­Hİk1Œß¡XÎUI=ÑBÜwÇz?èWºæ»<ÙÚ\0á¤#´iå\Z¯¼ç—/ s]·AW¬ûAã[/gúö¯ÄÌS\'m½ºòyåÇr5^¤ã™#–\rT÷¾Å8Ó½–ñOµ.»Ô4ıQ->¹ÃúT´_WNâïèv)ÇİëV\'±eš¿¶Ş#´ö¡í^Ó±Ñ-Ü/è²!*Pd‰d¨Î>÷Ÿ,VßÏk\rİ¬Ö“B\ZÒhŒn®Í¤m*GÁ<«µ×ªò]¬ÏŸ{>âQÆ<¡jNê×P\"\\q‰“0êîåñÜ*wRÎé$+º?/%ÿ\0Îªd³ğ_qÇ\0Ş3v¼=ªÈÖÈq–‰R}ˆ|êÏ7,¥ã¸ÎÌòÈõ¥l^ÃiÊ’Ú-´¯hÊ;ª6Z&‚Ù•¶©ÏkÜ ùyÔ6$g²XˆÀ>2zJ8·²Y-ÚES»ÎNƒî¡ª¶³ÖJË\"+ªìC†ßĞü¨ªÇM²»ï\r«GĞ«â£WKšy{u;hbÏË5œ2GÌc#¼3“ğ«ÊşÁíú“uÊN\'ÂÀw±÷r#ãH\\[İûóÈêËéLmµ{˜ŸóÄÈ`\n’:âL»Kàù±^T­µ¬s‘˜»Ç€Î©ñ‘øâ¢.™·¾XòÁtQvğL¹\'qõŠ¾P7lcŸ-£ùÖ|¤ì?[,À9¬dYÊÀ]€—\r¦µ;Úå×ÖçÜ4M-³ö»d›alwy/CÖ¶×V¶Kûi#,É¼sdåÏï­;öÉÃš…†·¾ı]íeÀi$€’X»½Ó™Ç:sÇÂ¾Tb2UW4r–‹Ã.Ÿ E+ËÙ§y|\"™ÂJ,„ßfÎôò;¨»4üìå[y2#rÍÑ¨‚Õ— ¨‹kFvÚ¨|[ºÑª,k³ÿ\0xı¯—¥>yÙGvğ÷T•æ½êpÅËnLío?:MCcvÓ¹|óN0[«Q”ÍÛV>So½Şj’³(;Ò”?}1SïWÊ[w¥FSŠÚ¶ÁwBªrª¿£R8·„0^óøhvÕØ6æ÷iüo<Ø…iG©M:<½X•\Zc¸œŞf§˜t.Õ¬-YUU9àøªZÒÎ;©{6v]ŞuõìÜŠ‹·\"&\nFÕ¦’©_v¬m‚\Z{’ä#FËÏw:âî}í{§³fîó¨ô2®Ã›ò2ã_H‹ Á^í8`½i½\'°Eb*ïOU™Tw©—ÔXº®{¥öe—k-b±÷H?¤+ƒµù6,bë]=—›Éğò©Ë;­ºm«ï!X[…V/\"KëJI.NĞÇôkªG¹œHp¾éjr.Á]«QmÛ·\Zqw@j»2ŠèÄ¤$Ü7v‹R÷$1W^«šƒš6ñ\Z|’¶Ü–<ê+T”íDS+ÔnÏ»Neİ¹<ê5eŞ»rsá_•/íÛ}+™RÌ£Ø·È!UzŠ˜³™¶„Ï^u/¥/=êY¦÷ÂŸ•@0I¨ëİ\'IYúæ†t‰»xÄ‘1Ú{Õ?aâQV*élªÀç©«Gö*wxF*³³“i^FŒ´[ÅT\\îñQênÄ\rìäS{äøÅMûÓ|òP“t’]ÛŒsy0(öç÷—ù\Z=¾ˆ‘ÌÆâ¯öWR@pÜÙ-Ì½ºP¤¤Œ–999%¬–:æ¥&ìbêqœòıñºTtî»09µç^ncûiKa…’f‰/¢rÃpW§®ÓÏöRº%ÔM\"<%ËYÁ¨{¦0±y¨Ôyššáy˜°‚Ş.Ï=è˜l(Óõ)spZ|-+Epu.ğ¸!?¬ÕÙÃ:³\\v}Š©BpÅzUe}ob†ëS¼†ÖÚGq´ycf¦4¿¤wiL\"úÍİÏfÙimìÙ#—,\ZkÆ—ıwÄGØÛ½@Uz‚£;XzÔğuPOfz÷Mjæ›ô·ömm±äŸXY@Æœç+\'Ó7ÙÀM½®³úDéƒû+R©“>Í„—Ps @õ§}Šl©5?:Ö#ôÁöp‡x›Y,zÉ­ÊœÛı1ıœ†Ìók{Td Ó~}+ŠÒ[U6P²GïÜ[–áC6¦6v#+ÍU‘ı3=˜ÄZU›[iq1ù~Ê‡›ésìæEackÄ9ùŸÂƒb~‹ÖÚ—2Ï%ÎØUBÄ9íõ>µ)T“nĞØNòíë^?¾»ÙâÈ­ºÂŒsÆÿ\0ÕY¯ÒÓ€;f+.­ÌmïéÎzıÕUV•’ãã®%ÓxO…ou]fî;}>Õ‹<®7dC—RÜğ\0ª_Ù7³céÄöÜsíÖ[\0°F—9» ò‘Ç¼™êŞdr¦<\'ÂšßÒ“‹¡Õ¸ŞóMöY¤Ï›k7œºœêqíô‡Zİí/OOµ´µ³·†ŞŞİcŠÛ\Z(î„Ğ:\"¦9Íú$­­ã¶Š( A1€±¢ªŠ\0œ>66yŒ\ZÎ±q•ağ¢ƒ4[ÛöûŠúIpî¿Øqe‰³¹*0Â{ÏëËa:$¸‰€uÈ›UôÖá)µÏd‹¯i1™u>¿‹Q…‡P‚¸øõ_Â¨ô‹á˜by[TYÌjdafÌt`:gÎ“¾¶™‰Qªš=ïŞ/{ „¯RsçéW”ØÙPdT	†À<ëRô/¤oi·QÏrú³mlœiïëò«¯‚=¾p^ıS‡µ¸ ¾Òé{	Xşïq¢;vYà¸\'³qbfi$Ç{ÑMÅ’Å­<xÉ¼L~\n—ÓÁwHÙ™}Cb–»¶2äªöh7IÌgåUoÙU/Ä¡ÕP2g ø|j=ß³—\nÅ†;ÀTK¨ZGe*YI\'¼ğ¡æ$±‘>˜ÇJÏ¶F‘Dş±&çBÙó*ms&áÏ­e+#Q½GòÓû]¥Xª’3Ò•ØnµMsíí~¾|êö«y5¥£,¶İYà¹ÈS÷óûªİ+ÚÇ²Un÷=Ê¼ùPG´>ÛN˜÷3çÃğÏ“Q*NØ»F\r,Õ­ÍÌÏmmŞmÍ&èÊ²‘Ó¦*)&ºzvx³A\ZuÜŒ­Ù(bNé>T7\Z/fÄğ÷QZõÚº˜¶ÖÛÉ`ˆÌ‘w¼}ïÆ•ú¼¶÷Oêò¬ó¶NCÂİêQ™JîRGİ[êª|í¬ıŸv}İ´¥x¬»zšôw¼<¶×@2ŸSˆşÖi¾ß€¥••{¿j¬ Ç%™j‘Ş§:~Vq–ğÔ[–a»ÎœÚÎ™1á¡²ì[VÈ[lìòŒ|;j.÷ˆ%µÔ!ó¥¶ã&ŠxÒ\rRáUÍñ³+yo­î`Q¹[Ë•.µ.Ç©ğÛúø,vü×Í“¼Ş´!í\ZD»€Tv}1F°´í#,ªËÚ¾°—P3Hp¶¯®Ş¿×ÔÓª[=Šİ£_JC³øTÕ³G<‘•)µ½i\r¸ï5a2öUïgm$P3u4àmgÛ^ãpb††G*½Úó­+´íİ´W®«·uB\nF.k*N\'^Ì.Me•ô¨AhÉ_zœ¨#Í¾óMÕ;p)|·½Î¡Q»ó†lõ ô©8•U‚ÿ\0Q¶ãpùÓ´•-ùŸ:êÁÆbI\"çi¹}ëš«ß_Åg¦AŞZ[XÖc‚1ÉŞ¹\n‹àí9¯µ»Ÿr…l‚ÇÅG…ê—±gè–¦ŞÒ$Üp:œ@ÀŒT]¯5Á$í©HƒÊg§ÂªFbjŞv%FÓ´x¹Ôå•ÊoKgçB°ÈÑ‘ƒÈx©ıµÂ©ÕJ‡ú%Ô‡S±Ëõ–®	ÿ\0zo‘ªK‡dWÔ,Ks+r¢®Ëù·®ÓL·ĞêıTjÈ_WÔÈb1wp3åûéò¨û”ì†ãÔrÖ¥u‘³TÔÎ9É÷CÚ5@İg\0gÅÎ¼û7sÙÑÿ\0\\:Œâ5ÜB·Ç=)SÙ8·S(RÙÈò\'Ï>_!Mõ©†ÙÓİ‚¢ô½lX]F@\\œtİkÀµï¬—¿±dñ{vö}·Û¿pÚ/onAº•|3Ì“ä z×@tná}Ê-†ô›+x@vQèåÔŒçÔu«¿Üù\"MåÂ±}^»sq[®½+Uˆ<Å¬Ìüÿ\0¹=<´M7ü/ì×¿¹Mş&Ó¿ÈãşÍMR2ç³l§–qû|¨€ÈŸÜ¶‚?ø&™şEõWŸ¹mş&Ó?ÈcşªÓïi|Q¯Aí#ô›»½+ƒõı*\rk\\Y_ı£QNPÊq™YZÏ·ö}uÄ<&š:6­¦Çf¼\'¹-ùZˆHÈc’vw‘U^ÿ\0¹}?ûLëö”Õ^Ğ3¤i¼Îø\\ÿ\0ÍªÚ/¶n+án(ÔìôI»±Ğ­´ÉuWâN×µ»‘cF\"TœäóÅ+ÄŞ8†Û‰æ\Z/\rÙİğİ—[pİÍåÅÙYæºÍ¨Ú#$s;‰8¨BøıÉè?ñ.™şGökÆá]kcGÓO#ÿ\0èâşÍW>ÚxãŠıpÓñiúN§io:Çw\rìî’°w¯g´0[˜<è{Wöñ/\0qV‘ ûH‡O°{Ş]J{Û>ÚX\"Ÿ¶dÛ¹X±´—>dÔ!wYZÃgio6ê˜cP¨£>è‡Æ¥wã#?:¤}‘ñ¿qåßGÄö:5¥¾‰¨iì&yDò¨Ë0İŒÆU½|¨Úç¶n#à^&Õ¬øcBÓõ\r7CÒ-µ-Vk‰İ$=´ıšÆ˜ÈÏ?J„6;#8Ï:ñ˜ÌÆµ[^úKk©í.^àÎ‡ˆ\ZÆkkkÔ‰å3»È¦tÀÚ‘F:³f¦½¬ûjã×8¦Ë„tKNĞíõ›©õ‡We•™v PAÆŞ§•Bìöğİ#Es\ZK# hñyğ¤?ršqùMÏÿ\0\'ök_¸‡Ûî½eq/ğÕî‘£]iÖ\Z¥ÕÕÓ#µÍÈCØÀ ì™ğyVÅoHÔƒ€Ã\'ÍO/é8¨A±á=‚?#iÇ—ü?ìÕ9íƒèáÂÓ´+‡³Òmt&7éúœBİÒaĞHS‘ããWéèkğó¨LšÁô[ö‡ªq×Ëg¯1n\"áÛ¶Ó/]¹\n/)XeÊä0õ«ÚK´Øìä™º¡­Oú9êBÇÚO¶»y$Xâ~!%‚r7Æ?u³-t’¤SnÓ\"¶z·JJÖ¸©by‘®¢MÉ,Î\n/\">5ñFyd€Ç$|©íÅáhÙ#À9#Ìš‰ŒêÅœ¨<ş~•˜şÆÔ[êÈXCMî¬ÙĞ‘Íºnô•+0L/‹¯Â¾h\\•RR¼¨:…Vœ›í‹±lr æ¸–ğv2$¯¸Ó\'ºÿ\0[:€&\r\Z‡æÜóUÙ\\}zBÈs‚vãÓ´6ê£*ÊÅYÄÜ+i®[3²F%çµ—¡>@Zªÿ\0p—ã—gñjïÖ4—Ke/ÕßÑÛ#4 â[OãTK\0µÈ\"ß¾7ëV[GÚ5Ÿy›ÃïW’*í¯x|•¿c<²·ˆÓ¸ÊcvêÃÕç^©\n»vŠ…u3¯»JMv“ÜW¢ÔË¨òÚ@÷\0$\0oov¢÷0}ŠGÃSñØê¶QG¨Ù[µÂÇâŒAª*ùO}ÀÚÌ3Î’Go#ª³måøUë¢qÌ\\M2DÀ^|ºÕ¨kZhRÛßªÁ{\Z÷•“˜¯}œé¢Á^-ìâ?JèéU®5-KTy»(‘{ºÔM¥ÚÆ,Y™W½îT“oãN»ZmnÑlÕX“îÕß‚£âÈ5);$Çz‡¨çaV“µ„µA]+õm†kfÀİ<_}#á§\rİÜÃE{“»HùŒÒáÕ¸<=6Ònİíµ”›V“İ¹¶•™r*6e´…ÜZ¾FE]¹åYWîÔ á¥åCdŠn®»v‘ÊœÚ¼¿–¸ªÄIºÜv›)¬’ızİÒ\"ÆLôSƒøÒ7\ZÌå&”d/ƒÏñ¨ƒÆZe˜~Å“¶Îí¤æªÀ™»vú’:´îÌßesEºm’ÚÅ¶ ª0<ªBÔ©J±²€7dò4OŠ\nî*6ßRÚìK[3*òcO¡f;¼_\nŒï†E+nÉc³Î¡BW¶RÛ@mãÎŸZKƒŞ¨¨™KnÍ<…ÕIçš*ıŠà8áé—ò¾œcuÊ-_“óCò5®3y¿[ÒãÛğ´ñ|ëcæä‡äi©ú’=œ¥ÖäS«jC½ÎòaƒÓ”PWS™è@ÂµHkÅ†­¨®âBŞ\\‘óí\Z†¯&!fËeñÌV/ö²¦è î¯rÙveæÇj\'L·y®U6n²O¥9Ô%íä çŸwÎœğôLo¢Sœ6ZĞN©Ù¶7ûj‡øı}5hÇÿ\0ó­Ø5¥_Üøt?h\0¬Äı]n¦G‘§£êbÙö2¬XeH²+*ÅºxåÖ­\0ŠúïÙwjW]=İ³İ~ë-£ƒTfÜª›WĞrÅÛ{$/íWƒï.,LÜ?ÁšC¦Ïs(’yn°7§b|Ú¬/i¼MqÁ|Ä\\GcoİŞ—e%ÄvìÅUÊ‡^u@ğÇÒƒ]¾àş!ºÔ4K;½O¹±³Ó’ÜIoÔ×`÷G/}\0Éº6Úé	­[è¯¦ñŸÅ2İñ6°ÚÖ½¨ß®%Ã,(ÛƒBZŒ#´sò¢»ÿ\0£o\nêÚ±Õ5d\\Mwo©İAm~cµş 1qØã“¹88çB\\{íŸı—iš›ÅZN‚ÜQ­ê2[YÍfÒÍoØ¤aÌ¦ü¡G/º­oeÜCÄ|WÁ–:¯iè:Ä’7kb’†Øî’s”,9í<ÇJ„\'8¿ƒt®9áé´-µ–Êf‰ÜÇ.Ö-‡^câh;ı†ğ§´MYu=}5!+Y:xm¯ÚšßvDR/˜Î^u_\'¶¾*“ÚE­ŸÔô‡àÛ*Ÿ‡¡›³Ü?c‘æVÂ¹Ç>b¡¸éÆÜw­ŞŞi<1dÜ+\nßo¸nÑ\r¡‰XÄ\ZfîÊîSÂ¼À5\\Î}hÌ&¿›…dÕõqÍûL…şÒ©ä\0úUw®}ô¾(“îµ>#Ö_Râ‹—3ÃE1dbh¹ïFAéÎšğ_ÒRãŒoøRÒËN.5-÷PÕ{kyaEÆÔ‰Ÿ—Ô!^Ùı&­µOewÚå’GÆÖzL7ï¦Ş[ÉRo•b/<Ş0IéË\"¡Û£ÏêM{¬­Õäé«ıKQkhµ7‰@Êª3’Td+œêa½‰p³şë¢5;–â‹XìïL·eš+dÎÈ¢ÈîF:¼Íë×ø›Ù¡ÂiíJã‡?\'êïw%İíšÊ‚!dPr.]ŠühOMö…gíÙ÷jşÒÛVàá­ga´Óî¥†æ{rŠbIÊ÷òL€÷}EB}¸?Šu›»™5«3z°¸lïÌ0Ï,\0,R´xç ÚG «šÚ>Å!A¸àRÍÌæ~>µR}OKÁ0ÉÄcP[O®Íùò±İyù?wæ»sÔ8æ9ó#«®¡C^7%ç^@æ±r1ÌŒÎ¡\r\Zú?ßÁeí7ÛS\\*»¿0Uuåãz»cÖYL‘8p’	èÀU%ì:İŸ½¸cF¹FáUú2—z±ï-.Úàğñ)ä®¾Y~Cv4*UÔ%:”jì‡©Õ­õ´ÌA.OÃ•.›tÇuµÂÜ®q°ò?Nè†6–4¼WI:+Ì|ÃãIû…_A­²Ã =œˆÌ@îéñ5”±0îàSÍ;KHCÀÛÔ}‚iã@P!…±EøÕT¦Ñ°Â6NAäj²â¥Šô‰ã(	È`jÛÕí×c\r’|º†h\\·úÄ=£G¼¡ÆSğ¤İv‘ŠãòVº˜u9A»ËÉ³çAãH_OÛVœ–ë,§ ^òü*éñÊĞáC\ZÙ•õ>/µIîY³X°mÒ.|-Xî?dW½>BbÄªîØOßKnİçH³yã»_oø\nëm¶àûu)½WÊ›´£ì·ì¬NönîyøkŒØ«·Q;«å7ôaá«€ı­i–VÂÏUnİ¬ÌµOë?ZAµ”áFƒÕ\Zâå•CİöMİñhZ×v6ŒâĞµ[Ãu¡È°ÊıæìÎğ¢.à¶î^|ûÍ÷ÕOÃÖ\rq™ÎÅ³V¿Éş·ÓÃPêÚ­tQLÆÿ\0w_ÕåDñ\\i%{¾MBÖ!ZïwÙjŸdfLÅËm	\r±¿\Z›yYœg´&w²æ¯ÒV‚E˜ĞeÁ±Š³|°EQ<ZñÜÄVÃvİ¢š±>èı” XK»pÚ}êÅ{ÈÄùROprôi1:íÛ“Ê©©o’UÏ•bfŠ%\r¸ƒM\'»r£rùŒĞõş¾«†>¢-pH²	-sˆÊ.Ñ%]ëåš>ÓnwÉE‘î²¶(Kˆ¸†K»†Xä;¼>T·êÚl@H!ÛÈîi¥­T±5ªëš«ndŠ\níå´÷…BpºİëñÅ{#‚Íáf«Nã¾†Å@Ë´äAdÃ©ñB\\i	¶5lòåVÙUK?ÃöÉmf‰nT„_şZšUSÏ\'>”% M µ‹,rWkQd2«©/îƒçJKv.­ø‘UwVÇ:t²³(ï\Zg*·,‚~G”r»¼5\ná‡Ñİ:±SR°NÅKä*dV!mÏ¯:sop#Ê³ïf¬­Ø³DD27q–ªãí_lìÿ\0½Éú¦µ_„¦SÄ:NÒÛiüµµ3~÷&~É¦¿ş`ÿ\0ÈäÏÊ«¨r?íÙÿ\0ûA×óˆÖTĞFryÑÎÃZÕ7KËŸşãPMì„–;‰,r~¿sÔCR‘rÎ=IÉê?\nŸá}>¯‹‡$c#gJì9“\';yQ§.&$!bTe8ài—mPC}ßSc¾…ügcÂ|wÄüªÊ–Ók2Åy§_R¹˜òÜG0~­ş£=9W\'5ÍÖù ïÉ¥İmw\"H[ªóËï£íÛ7¶½NŠÚ×Œ´íFWlmwl³L«ä¡üsLUäVË‰·Ç³n=\'ß„W…ùZçe§¶ÿ\0¤5îŞÃ\\Ò6±È¨®*`ûTúEöeÏh!0;ßRZ\'ËWû\0ş=†ëqNgÅZ§¢köÖ7ğ˜.N¡\0¶—>´§ı¸ÓBÕ´›&mE5e…nî.®ŞK–ì‰ì€—9^Ìî:µ­ãÚ/Ò4Û™ÿ\0tü8#\0`‹UÉ¦’{WúD	Z/İ&‚JÌX­wæ¯öO†ÏÑ³ØK£Çc<\Z¬²¥çåõÔ%7©9.³gp8ÀÀÅğ÷³İ\'„¸vçEá°ö0\\	šY^f’Wš@wHìÙŞzxÆ+RSÚ7Ò:@1ÄÜ?Ï¦lÀÍ<‡Œ¾’’`(áÄÉóµS]ù«ı•øœ¶tŸ¢·\rh¶ü2ÚN§¬Á¬h·±ß}~I‹}bE\'´ÌDìRù˜y¦Š-~œk©Ëwm¥İˆ‹Í,6FúUµåYã;UÎæçøUx£é*%şê¸kqà¢œG­ı&¥ğñg’:Ájß\"œøØÙX=–ğ½§äÅ»=NšÃOß+mKyW)ñ!G:Óş¾ÏôÍ/S²‡G¸x5(ÎnŞíÙÒ\0êâ$$‰¹AÀÅRPêÿ\0I¹˜„âÜ:ƒj)Å­÷Òjò~Ê,áRã¨6ƒo‘NüllGû0á®:½Ğ$âÍ15DÑ$3ÙG*Šø—÷ 0½3Î™Ïì“‡n£ÕbšŞktÕõH5mAb¸ IqĞ¹ıï¸oÂ¨Y§úNÃq$MÅ.yd¸¶åò‘¿úM«8ıÕpÇpşÕ_•Iñ±¸KÉÔ°+Ó˜^@ÿ\0ä)îáê?\ZÒÔÔş“nJşêx`ô‚°M[é8äéGs$r¶Z¯Ê§>67EQ±‚pp=hcˆø—Ká\r\nó^×.’×N°„Í,ÒwåæÄŒZÁlßJ+Ø§x¸Ÿ†d:5¨üª]ö;Ç¾Ğ&³ÿ\0Wn:\Z¾›&:6”¦(ÙÏ{ \'×Ğsë³dRO¾Œ?]“Hã8½·0ÁÅ:Ô·P#r-$\0ú±?Å«_YÔ€‘Œ²îñµÎ\r<‚T²³m3OÒZÏL‚4ŠÙ\"P\"‰SAP:ùæ µ›Y¢µëª4Í•%‡àk>æØĞEÕO¡¿‹·ddr9éÅNiÒ›™ãKvAîü­	˜L…(ï§}ğÕ´‘ |‘ÙôRs@¯ìZÏE‘¤@Æ%ÈPÍ}~5*bR13àXİ¿¡`¼ŠİÖ}ÿ\0šdí\nŸ!ÓùiEâÛ—=™AGrÓS+Û	ê–ÈW¼Ï—Î„u=Dr°^ÓŸ5Såê>4u-ÌwQÅÂƒÏŸCQ7–ÊQ”± ‚I©UÛ¨êKjS“[,±¢²IœnÏ/—Î¡dÒ¦íŸ¼hÃX€CyÀ¿2®£äG­GFÓviÓÂ(AbM1’R®Ø*E®IğŠ^E\rİ,W½M{µ»Æ½Áòc5‡ŒäVjÊŞTÇkgo•/\r¸İUØ‚‚~€T©Zéú”?”\0ìww·\niê[Ò`îñr¢Íß‡8¢ÆîaÀî©éQ˜Òñ©ËFÅ‡p§X~fXD­áï:¦8‹ÙêèÚ´¿W!âİ‘´ûµ#¬pMæ…9Ÿ@Ô_³^öÂù¬ îxĞß34ñcšªËyV­iª‰Zb\\}FhÓ‡Û1®;ÛWÊƒ»6\r¹\0wÃ6ê T\n³/S3Ã¬%,îDS÷¹înt]gw‘š¯nTÇpËj´ºtAo\r\"¶jÇªA¹}Á\"`îÇ¥W·sn™ØQÀ7o“¸}­Üé¡cJd3·¼¸¥lËv\rjƒÌÓI¯\n(Ç0ÍÏ§+C09;¨iµÑ·Ë—ˆf—XS¬Üİ¨PÛ#õÕÚ§\'½A:ÏF–ì€“nå Ğ[ñ}Ú«.óüjîªT±õ¾!ú²²#\rß*¯uK­CQ~ÒÄŸ yVzuÇå›ÒHAo±£Í>ÎÒT+·Ó \Zê¶=„U)‹›[ˆexØîjeÙ²“€S½æsWÍı¥¤°–(òŞöÚN´¸œ±ˆ1nd@U¾e:µ•¶—c%íÒF;B «£„øelÖ6’1½”Êpÿ\0ÚY¸c\ZòmÕaZÙ ^Xc•\rìYƒŸ‹iÑd1À»Š&‚@S;¼\\èv5ìÛ\0s©H•yĞ¡‚ëÆ	•˜2÷›ÃMûeÜFOˆÓÙIa» ´“:†ğşÓW,«±0·z€Gªò¬à\'w§:ˆäô_Æ—YprNk™8Ëø\rø:éŸŠ´T‰\rô{—ï­Ä¹åù\ZÒ>	r¼_ œıò¿¥[½/8˜¸4ÍmÔpÇø^ÏXÕ†åÚonNï\\ÊÔ|ÁväÏÈÑW1]gSFFÉ½¸$òÆ;Vò¡9™{L\0ŸW4œBìz±b±¬H×±Æ‚sÈâ­.°{tI@V] ”™¡MJv(È1<¤aÈ}Õdè¶’DŠ˜,ÒrlAô¡y\r×Z–7Ø‘ú«Ê”ö¹ä.Hø\n Ğ¬m¢p!8<Æ|\\é•½³°	¿˜<˜yQ›hÎB‡.Ès½WÍfì8.|ñƒ¨·QÍ{½~ŠÜİÙ¸‚ò7tc°¨½im4ÜDÁ>±4™$ˆçNo[õ1ök¹pyş5¸Écâ’&WP«€Ê}3C»7_\"6íœÁ9ëE3\'g2§”óçPö¶K£2ÀËÒ¢·à/bgN¦h6ƒ´r¹ô¢QPBòT\0œSK[qm\n„\'¶\0ytÍ;WpHğIÎã“Ö¢ì¦wcb¾Hfî«RÂgİªw+Ğ’>5”6X!§Nâeñ§¥,Ñ¼ŒêˆI\\Ë ¢+1FQ½õÜàºEœ\0	ØİáŸ,Ñ\0Å#GÛÜ fˆ÷Iê>Ö¢,´.ÖSİ%@Œõ4c¦Æ-­–gûu<©šÙ³Ø]˜q©0»@Ë»—JˆhÛ²\0±£xò©[Éa(cl“f n.–ÑTÅÎy7¥Uã“ªÂÒ´qÜaÊ@0}qN,,ûI€>îvıõ-Æ÷…ÃêçĞE0?Õ¬c»#˜÷}~5Ú¢&y,Ò8[‚ªa…IP€6ÑŒsçLu;„q*À9çËÖ†¥Õ®$í ;&òÇ³R\nƒÖ¼¹×Vs¥Ä¬»Ğ‘Ş/Ó&ˆÖDõ(µşI+ı~-2™¡I#“¾ì|…\nj2&£9{™Ì,à\"’2„õÈû¨5F OØÌ7FòÈ/Ô\ZW‚õ\'Ôlû+ÒÉ,[£MÇ G×oëçèiHv–ÀiI…ÚC‹[sµGt¨8Ü|ÇÃãDÚQXôÑ>Æï1AêBéPâ\"Äl8Ç{˜4]a\n`†m¼ÂŸO‘¦é­š@ZÜ	[,·7ZÌK@2ÈÃ¨>”ukÃ–fÏŞW™\0s¡Èmã²1•Ofsé×wÏ<¨Í¯]\\ÄcPp|©¥¯ı…wcÑ£·ÏÕÛ–FAçQ·Hw2±¥N´s¢æPÒÈ„8ÅCßÆº~^t©ÃU»4Wì{ç]¬<ª#gèµqNŸh—\r²éF‡{Oùş%+*ÃI<\0ŞYÄ™Ïî£Hÿ\0#›ûUáúñéÅZHÿ\0èæşÕn¶+î\Zõ#~Ï+\rş&Kô!âI:qn’?ú¿µX¯Ğw‰AÏî»Hû¬æşÕoß^d×7bÿ\0Ã£ıM$şñÍy×lœ[¦cág/ö©	>º²’Öœ_eg*~«//ó«xşúûï©»ZQ}A¥zwĞËŒlğ&ã}6tS\rœÙşuJ¯Ñ_.$ÓOÿ\0I/õÖà\nÆ»ò7ìøµYöƒPè¯İû¤Ósÿ\0ÊIıtA¤ıõ:=¯¯éî~ÒcùkhkÌW7bµøuU9X5~ãè»­K1‘8‡NœœÚÉıªô}5¡¼A§îßö¬¿Ú­ ¯1C˜‰ˆˆ5…~Œ:êø8‡NûíeşÕ!wô\\â•Àâ]9Gÿ\0+/ö«i³^f¹¬Ìšƒ?Ñˆ\'.OéƒwüÒ_íT×Ğs_™—‹ô´-ÿ\00—ûU»ÕáªEkƒ²Ó\'?¯¿¹ùÅW¥¿ô×F\nzÉÓQ­ıÎ~\'eÁãmüŒÿ\0Ú®ŠWÕhX‚§;£şçgÄÛ¢ãsİ²œŞ©+ ?\ZÛ2•ã½‚œ€Ú|çşõo÷İ^cáRUdîÒi¿Ğƒ‰€AuÆ\ZT¸ë‹9¹ÿ\0S}õ¸6…â}5”m%şÕn7ß_}õO…?Gw“Qcú$ëÑ!ìøŸM\rDÚHGòóÿ\0Ê¥è±¬[Î\\Og<dö¶n¤ùmlc¶¶›ï¯¹úÔøSôMäÖ3ôaÕÈ#òı‡LµäşºÌ}õ…=İ{OÆAàÒ]lÏ:ûH©?Gw“Ydú2k.À¦¿§/¯ø4ŸÚ¤ÿ\0½ƒZ+Ä:xÈê-dÿ\0:¶xWµ>$ıvıš¿ıëúÎ9q_ö´Ÿ×Y£&´={OÀÿ\0›Ëıu³¿}}÷×~$ıv5ÃHú9ë:6£¡êkö—W=½ÊM¥%ô\n3İ«ÎK]^â†êÚÕË6çŠ\"ù\\räŞyı•;^t«B,F\ngòh±ôâ}CP¾¸ŒôÎ[‰e‰^Â^A˜\rñ9ÅC?÷>¸¡ÁSÆz0‚HÓçÏÜwr®ƒWœª¿Gà,Üó™4kIúñŸ\Z¬¼]¤ÊGüÂoíQe¯Ñ_¶„â=%v¨mœ¼ÿ\0Î­¹Í}š¤Ñ\\û‚EÏ¤Õ‹_¢Ö¹N Óò¶’/ôÔ¬_Fí]g[°ÁôµMl—ß_}õOâSú	ü›f¶§Ñ×ˆ#câ+\\Á¤\'¯Î¤-}‚kVğ´Ä6fmüXŒ¹ó9İ’=<ñ[_U‹Wú“ù6şÊ=ı‡jok$W´¼?˜~\\óëLí=‚jöÌÙ»-»÷[¹?ËWïß_b»üJcüIü›gòRğûÔ£æú“X=ƒò?>‹Ù%òœÉ©Z’~Ì,?¦­¯º¾ûªßÅ«ôsùşÊµ½–^”š²ÿ\0‚ß×JÛ{/¸·äom˜¿™ng×­YØ¯«±ã×‚¿=Ÿ°\0š(»?­ÅŒä‘ÏòÓ†àÉÂ•ê ûúèÒ¾«|WåbºŸ€µIşÕ#=@…²GãM.}™ßÈKA¨Z«sh˜à~5gıõç/Z“JOàïÊÅ[²ıHHêV¥|Çdß×R×^Ïî®lÒÜê¡|Ägúèú¾©¤~	ò¿ì­gökyØ²ØêPÁ#0“ŸÛP‘{ÔûNÒëX·•–C\"şe†§_*äÍ}š¯ñë™ÎÅÏ¤ÖŞ#ú7êúñ8×,\"$ƒIË?}<áÏ£æ­¢&ÛjÆàò…´™Çã[+ì|+‘ãW˜ƒ³}“ù*»eº¼L±ê–ÛB`bí©7€fÓ£îİÂòlÆ6Áû³Gx¯hÊŠ¾Ë³{cáK¶YêêÜr¥c ÛSºT°ª+ÌQîFjZ¾«Ìd¡.òc8›2›DšFÈqú@šÍyŠÒ’Z£Ğ\r«ğ$Ú”EêÏ¬g†jıJ/?ãoú–şºµ«ê¯ñëıùŸöitk‡•ŠÖrøt‡Â¾ÿ\0\\s‡¿Ämgüºê®}<;§Ÿ´Û¿ŒÕóÛ0m«Ê´…ÉĞ3ıÑşxYÿ\0.‡ú«ÑıÑî##õûBê®xJ[’şÚEAWÚj,ää®‹®9Ãßâ6³ş]õWßëpïø¬ÿ\0—AıUÏ5ç×•bÀçn9T™ÁS¡¿ëpş3û†Õÿ\0í?ª¼İáÓÓõŸòè?ª¹ß·İÅ,±®íÄTÚ	ÉĞõşè¿°ÏîXÿ\0/‚—Oî†èN¥‡k_·®{Û¢…æ+ºØûTš»g\nV\"2ÇC¿×Ğ¿Ä­_ü¾Ş½ÿ\0\\Dÿ\05oòûzç§å&ôû+ÈïåSçÎ…µ¹«TÇ£¡ŸëƒhâF±ş]o^îƒè`g÷«ÿ\0—ÛÖ€A3HØ9‚¯Ë&…óÙœŠ«“|ÿ\0×ĞÆ3ÀÚÇ?ùı½|?º¡œ¬—ÛÖ…2İÒß4“xï!ı´XµäÆ±<ÁĞõÂt/ñ#Wÿ\0/·¬û¡\Zÿ\0$k#ÿ\0®·®y5Ì¨ÛpWæk{ ]»¿mbÆ‚“ğÄòtDÿ\0t\'B\n­ûˆÕÎãÿ\0[ÒmıĞíW?¸\\ŸA¨[×;Î¡7M¤møÒ\\z¼+şd¬ÍS\rîŒhÛ[u€Güşê¬×áï.Õúÿ\0ÃàşªçƒÊKnf&í·!LBp/3Î è©şè÷Œçõ_óø?ª¼?İáĞ9ğ>±Œãı¿õW;7åŠSô|IX‚dèyşèÿ\0g—kåĞU|º=Ã¾|«ÿ\0—ÁıUÎõIÂÖhÇ:¶‘‚ÓÁÑ1ıÑŞÈ¸c?üüÕ_îpæ28Xûï¡Ñ\\ï1w3uŠÂÛj²«\"sìè—úãÜ;€pÚÎ<ÿ\0Ã¡ıœ¹×§û£Ü:?ı¬rÏÿ\0¯ƒú«â\"=ãIìoáTÁÓ¥\\-ôıĞø«‰4­Ï‚µhn5¨í‘ä¾‡j³yVÕGT!ü2£úâsıœ«>ÆGşµ¸+şœ·şuv®^pKú­ı5Ã°jEïÓ³I²ºšİø\'U-ï\"úßk$}â‘o§¶¬ğF¨İÜ“ùBÜ|ëKµ³³YÔ†T}qÈ¿jnÉù¹\nÓ%6´O’øé1“uÓóFìË~áõbG—×íúÒCéÿ\0£?ôVŞü¡oÏ×åZG*)Ì¦Y\nsƒİ\'Ê¹ó1ßãÔoOúàº(ÈnÖ ßÛÖ?ëƒhÙàM\\yŸÊ6õ¢rG¸ñËôøVî`|İVù˜«xéû[}>ôk†\0ğ>®œùnySóôêÒ\'÷ªíÅõø+Ÿ‘ÊĞHNxóÍLEª£ì¶€9ƒçñªÍ¶~\nÍU/³{ÓéÉ¥°cû‰Õ\0·ğS½7é±Ã÷eÆ¡Ã—Úb…7šî&W9Á\0¨<ÅhÕ¥ü2¨Û\"àS“,Ò\0±+€¹;Àü(ä[€‹E3îŞ}5xv	öYğŞ£y2¥ÌJ»¾ÈÏ\\´ÏûùôLóáSÓı·\ri|vSÈbúÇF=Ñ»9©84è¡$0í7s\'©)ó,‰-5xômâı8ôÉl|«·Çë\nzŸM=0j€Ÿùìµ=6æ@ZˆÆ0JùTµ4Ç}Ì›O 6ólÉ?_èÚôÎÒ[n8KSÉòúÔ<©Í¿Ó\nÎæM±ğ^ª“Èpk[l´kKp…cAÏ™<É©6–¯M¾•Ió­#xôÄqÇ§Ò®È¦çá]Epsu\r*>•:qÛÿ\0£WùcÈ}f*Ö‚¸L\0yóëYC´–É>€W?™wìçñ«Ç£f×éI§±Àá­Cçõˆ©Sô°\'‡/ñÿ\0ÌEZÎ‘œìgŸ3N90	!ppA®O›l~Jÿ\0³cÛé?¦(áëîóˆ«Áô¢Óÿ\0·¯ÿ\0Ê#­u$díŠó4íÚXy|ëŸÏ³öu|d/]{é{e¢(Ü~§r‡¡K¸GòĞüN}&FÂpn¨Hñÿ\0†ÁİªªêŞ+ˆÚ9‘JÏ#¡ªK‹8nïF½Vÿ\0iÊÙ(õy¶<âd=~-3öƒqSéÓ¡º»~äu@®ná¬ÏÓGî?T%†@pÖ<ÑLQ•IøÒW\Z’ÇÏ’[\\réLÅÖÌ—ŸÇ…ÉºÚ§ÓïAÒØ,¼«Èät[È*S„~œ\ZGÍ<vœª[ö#¼d½„ÿ\0%s¹Õ®]®.÷9Âç õ«CØe¹eÕn0\r Q‘E¶æJ¶b?oëƒ}[é=§/^½<¿á1×Ÿß;aŒ¿Çÿ\01kÌûUédõåüµ“>}ß€ÿ\0Å¯ôlo÷Íiäı¿åÿ\0/yıóºwø¹¨×ÅZŞ¬3”˜ÏJ÷¶lTşeß³ŸÅOÑ¨Û¬wrçÚ7wËŞ¤®å§wL;iY˜ÌßÎj‹¸Ë·t[Ğ¬Ì ®ºŒ¦éÎ±Uïnû4ãnŞ”šø¨ê½A3s“\ZÃp6§,X§uÿ\0`¦6f;²j¬»2í?;%éJá™wgakİåKíÏ5åQT†k!n[5ƒ?½X¾zRl¶ß!âª²ö-°åJ•ïŠVİ£Ü…i¶¹îoÂ”Ê©ä+˜ÙJ«§œ©^È0ûëîäVóüi»H})=İíÕH­%şVüß[fRÀøi¬7.áï|itVêpß\n]äRÜ\nçÆª†²3—-´¯ÌæšìySÖ‘¶ç+Xo\n¼”r¦R^4.L;6n WßWo+?¬2ù÷ÀV&éÏ„­ZQÎ,)ƒZˆº’~úMmèiC3³moè¤ŞUfŠ»jQ±·O‘İ÷×«îò¯A»ySØHn¢¨ÌE[gvk.ÃôÏáOr„mÉ¯·ş—ì¡lÅš(‹•§ãÎ¾Û×•.À…ê?\ZL•^@uªåŠåD¶Vyäu4¶ãŸ¥ŒŠ9\\Ÿ€®åµ&Ág±ØÙ=«pK`öjÜ}{õÚy¿z“õ[úk‹^È‡şµx#—ÿ\0µşuv’_Ş¤ıVşšçà¼{8ã¯5I·şsŒŒãó­LĞ‘–Ú¿}iŞ¶­ùcS™á×øşu©‚†\r´Gk>MªÏ¤@î†İéM¥— ‘ëOr6–’06\rÄí|‘\\-¨ÌÆÛ@\rëIáœ•ê‰‡*\r¶F9÷Mx¥OQ€3œu5Ê7•r„}jî»Ì‚L±PŠyŠ›—÷©„î“ÌĞƒË‡`7rcÓ•5R‰ŞLpö¡*_$D³ÆçI«K°–çi†#»hëçU/	Y\rCV„ˆÿ\0{÷Ç„ş°õ­‰Ò`ì\"A´€c•gyıKPÛG#[^İ³·lÉ Ÿ\n—µÑ­m³µ;ÉÓqÏZ~ƒhÈÁÇ0}Md\0$X˜éYRÓ°ÔI„˜H‚QJZ¡OÊšô„)<ñN`F,¼ÆNG:ä—3;G˜<ÍeÚnóò ã•z–Úwær.t¼0óğƒ\\*\"ÈØ,Ëƒ–<ë+XÀ÷S¢‡°r9c¥±Úyò®æ °©MÉî’9I eÃ\0H4¹Vc‘çûkæ”D¼×wÃÒ¨ÒSSºşšnç¾@P­ä}i~×˜ytÚPÃî9ÎIòøT.ª(Ò€£#?5º°Šı]Ä²¯P­ŒS² s n“Í	Ç4æ+©--ÔäÈ1{ÂÚ-¼Ó_ÜÄŠ`°P=1ëTwŞÛêº»ÀÓá$A‚G—í«#ÚF»<ñ=Ÿæ¡oÏVôªóHÑ\ZYH²2õn^u½RJW–—gœA{nñZá‘‚1‘Ì[Æa0pÌ“†šáP=W<LËoM²+:UÏÁ6ÿ\0“xzÊÙ£Úâ<È@ñ1óü(>StÀUVY\nK»ÉÎî¿u&e¢Œü©3\"tlªy­&dœ–ÉóÇ•d>y‘–$ôÆ\0¯w²)0$GÈü+ì?­wbÆ¤\\1iä]Çœ·áâ¤½ÚROßd>}£Ş¤}ìû£Åñ¯f«©çÄYAğµ&ÊùİZ}³ÊÊBâ¤£ÒšUæ¸ÍUİT€şà«»syc•}±y|¼_\Z»ĞİQ{¹÷¹TA‰£s…ï\'‰sTÙX†Â¾Ú+ì?Øıµ™¿îmW ÒD*ÛKº‘X›w‡ñrëOJ;uÃ^ílmÍC¸“\r ªª“^2…\\†R~ú]aog%“?EÏÈâ©º–ZØg<Vh0»Z›~Éw09¤{N÷†º«¿Ôã.¦¨^êó¬·üã^vÉŸŞë.Ø}Ø*Ì©ÈeŞCàIMŞ%ïR¢U;2~\"“iãüZ%q+ìãAæQ»¤šóŞÆÊÅ=)Â0n‚¯°3îÆÓÎ”h·`fŸÇ	ñ\03YiÜ ®}Eä-$oÕ›oA_aĞò5#õw_?\ZO±Ššæä@\\1,sNveCcc`(À4ô/v¹•* TmÜbTıš_Ğ×ÌŠ›jÊws\0}õ÷bClä|±J0VPqÓ¥8B#¸Æ¦Ç\'ØaìŒõSàµÀå­[:»6ÿ\0¼ÉçÉ¿¦¸Éì—ê«Á$sİ­[ÿ\0>»5+m‚Sè¬–¹ƒAÇy1¬ê€ƒ·ë×™éùÖ¨r„rcÌsGÄvrÁ«êlˆÚştº~øÇ¯ßP;åœĞÊÆåSæÌeˆ\0øºzr¬$rğä|ù×®™#,¾]\0¤ã~ì÷Oˆÿ\0UBk#iT–\'8#5†Şy2<ÈäM;™\0ÇÌÓNÍK`æ¡DnyÂß€GSP\Z^…s«] {4ÜCsDÌ„¥r(»†4ğv\0\0È\0ã]ù~5±6œÜ\'ÂöÚ< ³İ”dâl£w§šç¯ÈùTZÆ}9êfÖ?Í\0\0\0uùÖ=–ï<ŒW¬Än\0mÀ#Mëğøå¥bŒAaÖ²‚Cvî•‘pÊz0şƒKH¡B8£ŒSĞ\Z}DABeÔòûéhÑ€R<æ±\r·9óò§1ƒ	Øy\n¹BæJ®vë9ä)Ò*€AîíôøÒ`3¹0qX­¹.2p	Ï,â¹©†]£w/c`ØSóÏ<SÃ\0•çœƒâ~ê&· :‘4œÑO= õ\'×>U¼ˆY3Ì™Uèø|ëáj\nçÌÔûğåóÚÛ\\ä=·xËáN.¸Zâ5–AUM€ùó&ˆÕ6¥U +¾TÖ~¼ªvm>xOç\"dõ#Ò¢®tnü›iôÀ èÑÁİ„Ûc6\0tõ¡ş(ÖŞÕ£Nó.ZAÈ ô\"’×µ³ko$v}Â	İ€3éU¯´MTöŸ“à´NÁ¹ŒÖç‡âDcş/·hÕ}w7‹zÎ¤+BÄÑ·\0OŸÆŠ4ì*míã	@¥ó ,©˜eŠ\r§pEÎqóó©í¦º¸b\'\"68hy…æËcğ\Z•Õôu­hÂòksdìàH¡â~m>g>cáV¥¯h ˆ€ªÀÇAA#Hk»ë9­å^Ò)‡hª¤nun0Å$åŒu5—{f0y‘ÂÅèË(õ>µòÇ½»¾\\°|©u*6ô¯¶õ\0xi<—%˜†ÈÉşŠûè)Bƒj¶yùV<ıáP†¢HGm#w¤jÂ;víSŠ}šEÄŠŞ>Ñ¹y{ÔC¦hjY\\)_˜Íz÷¹}lOLÑ¼#ÄşU?‹&ŞƒÃSú^šª»êtÛâÜ1–ø\nE­‰aÚëı•Ì¶Û.Ìf µ-!%a\"éYùÕ…«[lIZš6Û~tD#Bì ­·²<ºSi L•Áy¢›ˆâÀãoÆ£&ŒgvÑWÙ‹\0¤Ú ­¹T5<ÛO´½9õ-BŞÜ.á$›y|z×U¿g2ÛaH3p¿{?aõÓÔFOß[ƒÃßFıVÑ×•m®%]É1~ŸuVÑ¾z×#]Û/å+şí{³ùŠ´ë®$î^¡Şé¤_Şÿ\0m3‘[vìÑèìŠ¯OÛó¤¤´\\C»V­Ö> ŞZ~Ä¡¬šİüJj_êë»;yRŸV9­3¸·ÉÚŸUÜ¼÷~5˜µÊ÷SwßS&Ê÷yRk	£-ql‚ÛÉÚ{†ÂÏ­yõye\\m©ôÚ[‘…|áƒlï/Q­]ŠÃşÈ¤’hü…9[¹œm$~ó²—Â3Xğ¨ª³)mÔmÙÉ+áÂúŠQ#³Ù–*Ç‘<…=E* Àó¬Â1lªàùŠ‹ú+òû<\0VF&ÅVûâ0š	aÓgÁùœmü©>4ö7}Â] º…MË\\Öe‰–)¦B9æ¼=&üi[‹co.6•SÓq¤ñÊ¹?úYe†¼Ï,xy\n÷³6·•-Ù×Á{Üª}‘.=©pNŞ_ìİ¿óë³rgcãïc?}qÃÙ(ê¡Á}Ş—-ÿ\0]â9?…ı5Øn,”ãQbKølÃ-Ôz…É!ÆCƒ#eÇ¦*® ×g,VtG®2*ÇâëºÔµFå—#—û£UedöÌv©êwó .­\ZÏ³J!–2>]J	¶÷¶Èçx§°F’@Ó¤‚@†1BeI@Û€VäZ”K©#^ã2¦qçñ®M_¢ß0K0Lœ Ğ\ZC 0y7FÅªH$U˜İáÁÀ4ö+ä•Uq‡ÉåT®pl‰2@†l\0ÛsÌçÎ¸p(HÓ´\Z™&Œ\'ŸPhë‡nŒ°æŞ^Xô¥îFÔ«6[€ÍN;<¹\\òÛ·Ÿ/L@j1Àë“éP1w»…ŠL3SĞÀ6¸ÀÏ>¦²qÈD›ğNáğiå†çŸ±e%%#ô½GİYZé’LÍk¸íN<pG\0İqßàË$-Y6c9QÈ‘ŸN¸£WS3pv_^@Iíd†M6oıÃãRz}°»X£AĞ˜‘±äy†ùb®~#ö)vX¼\0¼s\"È¡ym“¡_–9Ñ{‚Ş>Úè³8ÎÕHÇÈtyğß`?2‚¼\'ìŠMwE¶¸8…åd”£¼ü¹”³ì’áçúŞ‚>³g.à¬NŞÍ‡\"¤|ëbì#‚Â(à·U8\0ÀÇQÿ\06¡èÁQ	bØÇ¼zÓsMkìŞÛáLû?öYË‰5dŞ^>Ïr<Áû±R\Z‡²µ7QÄ‹pgµWÊŸCñ>UmA,V²ÌŒK³øf›ßÜ¡dÃsÎ:zòª2×\nlfnV<;§Ga³A¼,G)–¥ Ù5¼Ñ˜w$Œ¤¸Æ*GëK	$ªr\"½»˜\\DÂ&æÃ—:[Rê’ºÖøFÊdí Œ£c\'9ª/Šôİ6Kh÷Í, ä‰?…l¡uæ’]X‚\r\rëºÍ2ÊVDÂ«c­-r3¦W=.!×5.\'¶T™mf¹9ÉÂ§8…0â!±:İ1g–Bì¹æ øŠÜG€--om[ P¼£™òöçJñ³nÊîgŠ&éœŒ‘ân¬ÙôÎ>x­ògLÏªÛ\0?¤,±9†>ÉGæòäÏçºŠ›…íííL’C$Rª’eXzò¡İkG¾ÑæËy&%ç\nƒ“Ÿ÷B|‰éò§Ú]ü°E	¼ºÈè#f9tèlÒÅÕG\\8šÌ*’cæí6ğô\"$A%TsäC:¯´›ÖÔ¸ÅÅ´k€x›3ğó?:²%LoÎ\0ëJŞÑNˆÆ¥¶†<‰ò¥ğ;Ç½X#\rØAË­fŒìH\'\0yRXü–<uP9±¤ÿ\05ú,-ˆ$¸${õxşËQk¤6*×1QûãŞ¢­7N`ª \n…TÉ#m¾j§l§X×\0šÜ±ŒšÕqÉ5giG´Èo¥)u()µ6â¢äÔ2ª¡±M$ÔLœ/_F2ª¢zga˜÷v†îvxGáO/ïÕÁV\'—† ou\0WºOz¬IÛfİJC•<\\ª6iI%@¤AÉlîÓ^Ğg§/_:…ìa‰3Ès«;Ø¾†·üSÅÄ]¢Û®ö9ÊçåU§½»y«ÿ\0Ø}¯Õ´‹«¬6ùĞø¡³k•Â—œ7eå2éµv©Ïvˆ´û×ì^	™\'†Ù#a¸üècKˆ¶#mÒÈ| çD¿“`ù±(‘½ĞqW¦Í§­E…É¯>Ü=–Å¦¹â‡u£×1\'%MŞ‚µŞEæ œ¹®€]i_\\‚âÒè4–óFÊÊÃ\"´ïÚ‡ÜpOÎ»_ê7Mºİ¼‡İLüq¶ĞgXİJğ‘¸å_*¼ØšU¹õL}Õ‹¶ÕåW–3¶í‘¿fÛ±ä+îÎ•İŒµX×|b¤næ1ò¥ææ@Åx~DR0±Î£BƒVÙ”.î”¢GŞè)B¥Z²T` ;ÍÏáTÊ‡„Øò$–UŠ8¤r\0Ílï²Ob–\ZTVú×F²\\ã´·´\'!	è[Ô|*·öM¡FšÄZ¥\n±ƒ[†æYÅlĞº¨–å$’%FŞ[jõ´K-JMjN{!Š Uäv…Ç,r¡> œkºy¶½Û0ğ\rã¼ô©$7` x‰è{Q†ûª.ö‹¿swyÒö[«ÕBºàÔ>ÑE×.ì×{20èmÇ%æ*ñöç£[-j9’aÙÌƒ–ğœüª—À^‹TùsÈªU°5}+Ö\0ÉJÏá_aU¶ÈóªîÅâ ¿ÙBíC‚ˆÿ\0íÿ\0]Š—÷¦şô×ı“ ÿ\0Tî\rò?–íğ};ÕØW?šáM¶myË« ×¢?•õ!ë}pOıcPÍş˜·=¡ì‰~ŠÃ•q¶u{öƒ^Oÿ\0Üjƒ6 ºª`zÒ°Ì­“O]”¯/tf·”Œ\'“dä~%¤ªÎÀndQİ¹zÕŸqb¬êÌ¡^bBÔÖ1pÂ_Û¸¸S°÷1Í~$ùçÈSµ¶Âº•X‰£\01`2’3ƒN„$í;W˜lã&‹ïø2[TV¶i$G^cŸ­G^p¼ğ[	Š•SÈæ	ô¨ËdV û~ÎMä´É³RÖ:Ìğïº`åO­Í‘9^Ï8øÒĞÍ/m´¡\r\ZƒÎªÕì¡¹,]#\\Ôšx¤	Am¬­Ğ|\r]|k&´Öæé>¬&%‹‘‘qËñTû?áéøŠeµ;´ë¢¡âT- Xy§ÄsÏÂ¶[ÙgßAî‰®D-u<NÜÏÄĞ¡ÏßËÒo¶Ğ\Z,]qË3†x&Öİ?=oÙ3`³0ÎO ôs«3ƒí Ó%¹1Æòep¸!OQøŠ†Ñ¢’í¯Ğ‚˜häó`‡ü(škT·Ì,»´·?\\ü©ºêÒ2)c³õ\'n¦ÚM¹@?\nqHaBÊBŒŸ@ÇrÒØ:…Çæ9gÏ5ş´©m\0”ah-Ÿ3ÿ\0•^[–·àw©?eŒ§&…îï\Zß|…ˆ\r¤}¦æ?`4çWÕ#Ì„1à:“ĞÈòò }c]Ûr}ŠÒºwF?šÎ¹±94i¯¯!]®­şÇ2´˜•É“,s*ƒ_y¦fšL©mƒ—U·|VcŸgjJxIÓ4œœR±BÏ¼……L™õ8¤~F\ZZÔµ—^G“´2gÄ\nÈãÎ¾‹_7dİŸJ©t­}åŠ%í;ìÇÃ\"–áíao5G(ˆŸ<ƒ÷P³è2ÖZ×÷Qöæ]ÀD@ÏÄÒ/|’ÆÄ‘éÓ<¨QâAq…dÜbnÍÀå†õü+Í;]V‰îåËùĞs!tPªòWrízÃ<¼¨>ãF†×{F¡®$$ïÆqò\"úÚíÚÅwÈ|<\nÆîÚB]ª029œÕÕØ£×ÁTë¼-âaon%»¹rÌÒtŒ_3Tî»Â°Z³KráÉc™—8\\yı5¶Ú¥¼b+µ™‡,*«8§…d¹B, à¡»y0,íÏåŠul=y)·†ÛQ•šnÈ¯(Çˆ7ÇbÄ¹Pàîò\'o/ü*Ôšã…ø•îW0DrB¦«{F‘olá¹µ$‰Ô6Ò=(v¬Âäèò&İ•AùRŠ2Ë¿içÔr¬U^ àƒÌœRÜR©ô AÆ	#=+Ì´k,ç¢×•@†µÇ¨ây’hß÷©ğÔ˜²á‰îùr¡)n‚É.dn_ÂjFMG\'nâİß&ÅzV«±‚¶aCI5tNñbwôøTmÏÜ« ¡)ue=şŸ\ZcÛ6wn4U©TÍ!ú£ÈOy¹u¦³İnn§ÅQ£dd|€<Î–Uv;ŠÆ®ª¥EGî¬’ T1$¯–&ß‚{´¿»W,¦*Ö8ô­—öUlÖ¼)ğ´e&µ¹Bø±Î¶ƒ‚§¹»Ê¶½Y¬ûG¼eÚK?I‰İ\0\nªòÀÁühÂÏO•ãß,œ^è#$}ô\'ÃZˆ±ŠGÙ¹Û nxùTâjWó6v»DİåQÈ}ôOV2ÔbFKL’L¢D_1ÈÕsí›‚\"âş™­ÕMí¢v‘òæ1ñ«+sÚÆÑ:¯!ÈƒKö‰q¬ƒ(ÃiLrjĞ‰†S6ÊÙ”æµÍ¯dv¶w†\"@Iîí¦ì§vsøU¹íÃƒ×†xy-›IäŞcuUÙ¡™M¬$ŞígËìÖ^–ÀÆ3Î­®Ç$Á.çwàyÓ˜•Uä	ÊòÍ$#¹)ü)İ´G¶mªHˆn<ª¬¡«3ØMÃ&¤tm8jwñ E(IÜ9ôtÂ%m¯!9,v¿\Zè\ZÕ,U€)upB©Ó×öÒ–ËcƒB•\\–÷iMtGH\"`yrq÷Õ›Ær»×b(ü×Mß}	hv\"ÏH·³F.Àw×£h–e\r¶DŒÂîïTjQ¾Ò1¯a÷eRöDÄéÌÀÇ%şF£ïO˜]²méåO‡f±öNÉ\"ŸŞØr#ï¨«¶’Àz´)?&{ÓKíbÑ®¸Jà€L–ò«0Ç,zÕ\0ÛĞÖ×ë¢;\'U·œÊHŒÖ«Í[‰”¾á»hÀè*©õjá¹*›GÇcµ-–çğ¯‚©ä3•yØú“E8«Àaì í;ƒÉ#–­ÿ\0]‚oŞÛäßÓ\\|öRú¦pw.–mÿ\0]„“÷§ùé£T%oØæ6¸åEWhÛu>|äj!¡,@%Ï–yDzÑqªßƒ…öb¤xŞÕÚ%¼†gŒH£‘^´¿æM:Û¨ÖÂÎ$i/A’E‰™SŸtU¯ƒé–Š¯Ùà\\€¸„Õo`ĞÃqõ›–üöîÍsÌF§›1õÏ*´¸oÊ70FÌ]­KãrîqÔ?•hx’¹Äˆ^¬FjÚ1O,o*Ë\r¶ÕBííVzùĞî»¢Gq¤Íj$\\¾d@§ÀÃãŠµnìŒV÷’¦Ÿ†fì\ZI0Éç<¹PV²ĞØÆV)‘æŒdó$\'Ãtíˆ³ÔZ¹l\ZÛsf~¶ñÉiŠ`rİñ¢á=:÷QŠ=e¥ÓÒ\\åp>{¹ş­7\nÍ­ê¶“Èç½*,›7z‘ËöVÃ{>ösj¶‰kr­m1@${eÚG]Às\róåJ|S­]In\0ö]‹cgn²ÅqjF`Ü;D óÎz€~iA¥ÛÚFZDË(ÂmòAò>kM´<:#¶µ®H‰%î9>òw—‘4O%³Éÿ\0ˆ;®@ÀøZŒºÀ%~D”5k~ø9ñ~—Ê¥¤¹k‹5“püôaÇ/#ÈÄS;P!‹µ‡™‰†@Ó“Mnµ·ƒaehÑ°¤r<Èª–]³É˜ÔBÀø”fß»Ï‘\"¸ƒ‰G×0ÛKs ÷sx_4Õ5ä†9c@İÜ¯gdg;³U~¯­5ÅŞ×œº‡ì]×\'ÏåÌ)[^5ärªå‹^}a{Yn$î0(Ã=|‰üH İOYA¥‚´nÖDëçÏŸáPúæ¶-#SÛªFcx\\© 7í®ñLmş_»Û–]£ª‘Ì|üñYV´4\ZU®¤µİË *Xo—º 3Ê‡5-eÒ_©¼Ä™°vç§ßO\"‘f·–òY’ŞMã´È2|€é(#Zx,ÚK¹\'MpFÄ^AÇ‘ôÇí¥u`Œ\ZÅ­Ífˆ	i%c\"ş¦0£îçEZÚG+NêX¢íëË—ßÖª:õæ¬dvÒss<‡˜û8ıµcéêÓÉ\Z12bÇ–XdüºTøÉj¢zF¼.5=NÙå%>kÖŸ6³$…eqÓ?\n¯áš[-f@H@gì.£9§—w„©ß¸³\'_.•AˆhÀsª—%\"æ3–;‡Ã4â\rpC.Òê©!²ÙÎzUU¥ñj2²—\ru.X/¢ôÉ4üê‰-8f‘¹ödóÇ®zb«*Å6Ìê^\Z~°—*°ÂwT(<É¬8’T‡N•Õ>´qÜŠ?6Ç,|j©Ñ¸†Y\Z9’q„{AÑŸ/>T[g®®¡ncœÈ‚~×ÇUĞk‡´\r[S†ç3<Fiå,ÅäOÑ\'Ï†jÚá¦eÑìÒPÀöjÌ\0çÉğ¨.á™¯¸šÊIÊGf¯»¦K¶| t\n:/ˆˆ PØä\\c<¨Ö2è)+0Û	NÛqÓu¥#„ä@=9ó¬&eaäÀsÈ©•r9`R¹.¬<\rßÏ˜å_eOñÈÇ;\"í–OˆœäW¿S—ı÷öÕ6ÉcR/NÖá¶ßÌ~•D0JœüèŸQ„+Éğ‘¿ïPÔœß—:ö1Áô¯«4V/´dü©í¥£;w€=ê“$Šf©(bpà)äV‹œ\0}+#EÜzÕ6 Ó²>µŠw·RÔ˜pT6-© £,{ÍšÙÎûœ²}•­^•²vu´ÜhĞğ.Ÿ#)ÜÉÖ…jÎ£Ş$·É€ßJŠiŸds,I»%½(µ4»ÈS|W%›ÏŸ/Â€4‹½—ÚHDayüjÂµ¹µhTG6K/­¥òa ulò£m•9çÌæ¤­£V|Æ9³w†î”Â„s2Ï#I\Z÷‹c5äÚš,ë\r™ß$‰¸ÖÚ¯&[3d\röÉÁ0ñ7\r¸…BİÂ7Ç•Ë<‰­YÔ}›jQ^ˆÖÎV]›œˆú…n,vZÎ½$‘%³DÈv3Ê ÙG<1ìòY®\\j¶ğvK¶äŸ^®Ì)zF2s2âÊkY¤†emÈåYHÁåXy4sn´ó®£\\ı¸R–9ï4xZU~ÓrrùƒëšwÅ~Á8\'‰tt©t{k`ÃX×kÆß)ÿ\0Lıåšôh71éR6ö²-¥ÛaNæddµn¿ıô[\r(şF„ÈÉQ»ÄÅ|ÍkGñi§X”¶ßùÎÒR§™aÍM«h	ZÎ{\Z½e§ö×‘E*HmíÆçaË™«7‚­ãÖu˜åÅûÜl1¿×RšMh’LöÏÚv¦2»Cz\ZK†´F±¾¸šİ¥V‘;B¸G¬ç[±ª‹„à¸´ı‘„dµŒ0ä®yş&¥¤KSü¡q¶GU‘p(C¿x»äç+lIÛŸ•[ÇáX÷{Üòâ=)•±Yx:©*Â·…GgPyË5ªÊZ\\ddwqšœÔœ$@Æı‘ÉÚåAÒLÍ9i$räzV7“--©»Bõ\"ø²g·Ñ5#^izÖµº1árÍ¸ÖÅq¤ª8ZöFÊîWx­{e\'˜İ÷Ó«Böòl_“b@hˆåÔ®Æï^uæÂŞt`\nù\n=”®=¥ğkyjçW_OïOŸÒşšäW²å+í/ƒ9ı³oüêë©ıí³ú_ÓF«Ô‹Ùìæ6ªV]GPí:ınà‘ª5¶û<sn‡ÒŸkoÕ¯ö\0\0¼ŸõLÔ«(û[²})ò4«¢ú6—.«ª[Ú$F@ò…\n£›|+g8K­xE$–P&ÔZÕÙöH1ÍGéz“Ë•	ıøE®õ¾!»EY¯g	eÈ.|êÄâæ–™w¶şqÈ•=OÊµ<jô]¤VÉİµ*2âÖ4´ÀŒ—,WÕ³ÔãÒ«­>æ[íL]N¢Br	ûÄùÑ?·åY,œ>Ë8‘ÃÊ:åNÇ®1A3qVV±ÈR“™ÄsÈ/Æ¨ö´¿RÏT*Û›{®Ñ»áœ÷21êIÇ:Ø^WÖ¨Šr˜î÷²sú-ëê+[xcŒmu+™4ıN	,o•è›£c—_*ØNÒv…º·‘cU‘ğ¿ÃGãN+¬/&S]œ\r[»Tn@•ÉéÎK(dm«¸†\0àf¡î/Í ,§l€`Œò?uñG§#³ÌbÀå³iø:´k“µ«Z®º¶îŒò…dÈ%Æü\rë:ûHÈÊÈİJ¶F~U_jĞ\rë;Éw!Y9m\'z‘ú½Aİêò“–òà¾rå0\0DVsYÎ\r*ëˆæI«íbIîe,ò4xï6|8 =Jş§c%Ä²‡b¯\"Œ\0İzzâ^ñŠ°nĞ@İ2CšÕ® ¸’`š9—\0™ y±ÿ\0ğR6KÕ+	.\'âçáèÌs,ˆµ\\dÈÉ¿úf«ïË&òæ9\\†x%sÑıO¯*{¬,vcMÄo½×b¸wÿ\0•Qû1×Î«ÿ\0­¾Ÿ4‰r»ö1ÚÊ|^yü(\nœŒì«–Õ†§+ZE–%ùàGåéPüKÚÌà¤bp©öqµ£ñhÜ¨u=ö9òéM5=\\L›CeÛ%·@\nTĞÜ—]Cf‘M®êÑD-.Å!¹Èª{Äü3Š·nb’Û\\¢mI_p>ŒE\rıxnk«Ä¿‘{(¢ÊG‘Ì¯˜qVïp”ÎQmã1}»‡3·©5f^E™Š»‰´³m{w­FJ[Í\"ºÁåÌ}¯:×g\"ÖdÜU‡t*·6IÏ•[Ò4Ù à¡·A‰‹Ïj÷GãZÛ¬kÒµ»ÈÊgv1’SÔŸÀU\"¹ü®Î¼‘—šÜ¶wì@ÇlÀ1ŞÜ€u¢‹[ñy‡œö®A\n2pÆ«¹³-è’iCÊp^¿u<—‰aÓã1¼­+.\0XØçŸòÓO\\G²¿&³ÉjYaTXç-8æ\\ç\0z`yÔí¶­%¼¤¨$ò!³×îªïF“RÔl#½±¶2@Ü—=IøúÒğk:,³ÛbHÉClÅ,õJ—GW-(îÚıH¬÷ŒO%>²±²¹Šë%¦2È‡LcaªëHãà³ªÉY2TùÃújÔ±¶‡R‹ò…Š$³JƒqA€>ïZ£OS®±©ãÄ©\nÜ—ãëIF{İäùr§[\n³%™ºX¤’ÎYØ˜£gÛÔ¯Eª|-3ˆ™…ûàärøyW™_Ò¥	4’d0Äşû°ç_vÂ ÿ\0­4xğoŸñ_È¬ÕMQFù¹ôÿ\0z„Ú9øUÀfåğ£›È\Zydäç›ùÍLãÒ3*î^LÜëÑ3©ŒDÙé‡;¾ÕÙéÃº}Õ!i¦ª²¢¥L!»÷PYòBí‚&YFê†½UUéD—Ìˆ­’£»èhWQ¸|¹x¾5E–Ø„l³„låó¦Ò;nëâëX—,Øå…¯7øÑr$S£y_\ZİfZ3İğ%œw1+å+OxnËò¦½ab©—–uQè3Öº\r¦èíÃÚ•¼Q÷VñYW+ÈJìÕ²V×œ8VæPœœ©rq·ÓœApÚWfq”û¤æˆo®e¸˜Æs¯|‘Ë—¥eeÃÖòææYÏi·ºÍe_d×=MEyuì0‚ÍBà¢ñBş,5Xš6›k§†tï–bÃ$ü½(l$Û#•U¢4U§ì–ßfÃâÍ¿!°Äjc\\…º$\nøÊfÜÇM[İB®cÌ¿*[È4½7=¢¨ß<ğhwFât½Ö6ÆáğÛyšÙ®åY…3l¦[±vÛ¿\\v¼–uíÈÆ\0ëŸ:ig0ú¾æ¼¾”ÔÈw±_Ÿ:ÓV3ô¬ÂW`@È;pFi­Ü+(ÚåJøTgËğ¯{h•ÁfÏZúy”w‰\0œ¨Êëù9ùu®°ÕlfŠîİİÚ\0 1ÓRœEì²[ß®iòvŒ³U‚ƒüµyêS<’‹yVäÛM1y¢’	0íG–k2İY±#UÃjkİ‹Ú‹‰íf!eŠ²•ÁVùÑeØÆfr6…\rÇZ-¼àÛ\'v•Ñ{WmÏ P6ŸOaù6H ]ÙÙĞtÇ*­uª„GÃv*~(¿œj’Í’¾¿éBñ#3.İçsg>tgÅš\\³Í;Ä!A†8ç÷TgÅlfVÜAÛÌRWß“r›WãÈí:Ç±àvÀ\"NÓs`Ö¾áG!Ïç[Mí—Kwá¦w§\"Á|¾u«rİ<³G…êc\\ÛY‘&Cäk\r§ĞR¸JÆ¦ •ğÙ\n½—ï\'ƒÿ\0é›çW\\_÷§şô×$}—gıR¸;ºöİ¿˜ûUÖÙN\"|òäßÓG¯‚3lÇ*.5“RÔFqBpIòÄDœ/¡\\ñ§k§ÙÅÚM+±ƒâ\'Ï5Yjog¯êl£¥ıÎàİçZ·?è±ÀrI¥Ûñf§nÈò‚–ú”÷¤!\\J³`çÉªä·t­Ç€x6ÛL·}^1Ú9ÇçXó$üsËåT?´ş13»[Ù¹Š7å ÎIxô«[Ú×,­o\ZH¬2¤ëTuk¶–áŒ§%ß‘*(şEÑZj£^%?,í\"w7ñÜh-¼ªJçŸ¿_j:x½Â™ŠÛ·‘œ€£[Ib·»I%eì;9óÊŸşJ›Ñ¸=.uX\"‹Ã‘´ªçp<Áü+:¦faû¢µ^I?cÉµ;éÓUâ{³rT£Í±æOË´‚K=OX­ÊG\Z®—<ü([Gš=\"Ñ „mD@9Î xÛˆ6r<d!>íiËáy<ì¦[D½×ÛÃ¾YîC’ÄsPÔı³Yv’Ãî8é«©^\\«vHd“´cïª¶ÿ\0…[ZÔqxMºÉ$’ii·¨e­r+¥ûD¹»vD‘Â¬NìËåS¶ü|úÌ3*ÎR-ÈIfpw?gĞb‡ï4ûn\Z¼„ÙDËl,ïƒ•Ç¥Np†œ\"Öå€cêÚ›vÑ3cÄA:YCª3/\0—ñf­a(+ÙE#tB¾_­çBG¬ÜG™XX–Ü@şŠ´½¥ğl†ĞA$Ó3mtÚ9Õ#õ¹exÂ3¾rª92ã–?\Z2\"2ä3/ ”êÚº[[şP³x·/mcÇkåz4mJ[ÈÔ©ÃŒ÷9Ÿ?:8Òô+ÿ\0ÈöÂø·g\0üÚ7>DgºOO¾ƒ5˜¢(·‰c[v1™áf~¹#Ë½\rSE–Ä[Zx‘’ßÍnD„yËcß§)wÛªEmšIdbÙİƒÌ†qQ·P:vlF2	#ÏçIiV²O«AL~°Í„Ï>£ïóÅ[ãƒ¬ì§E¾ü-i&UeŸ*<ªà¾Ñ±Áw1×ïª“èïpñpü0M>İï»™vÉøVÂ¤\"K|°€ä}3Y®½ƒÃu5é=r4¾¶Òà˜D.QâG?O:Ô-SV7³D\0Ê½œ˜ÃÌ.U³ÿ\0JëkıCTˆÇË8ä*Ë‚Øä¤úd}õ©Œâù†Ü²¾J}–Î(Õ®#%–X³ø3ÙÛñ%¯å;Â¢ÍXá<4‡°|‡òÕ{«[C¦kW±E3G!\nËú«b}•ë¶z%óè7Ë\Zv€5³JzÆÃ*Gé‘ğ¦>Ô½ƒ_ëWm«pÄ©3Îs$G¸\0=Nk¨ı°Àí“Ïd¼k¿ÃúV„ÖHeÓ· ‘ShxÛ¼7z°#Ï‰?İ¼Ñ/feáİ1ı4ã†¸H{*áé.uËĞÚ¼ÊI‰_“±åËÓ…´÷šÖ§x’bY›˜O!T¹¢g¨O‰mÒXŸ¾âÛGR|ªØöt–Ç,S\0v‡Í\0E°Ìd“Xø™IÅXü\"[Ä²°C>`g?u\'0Ó=F°¡L¶öEŒ­l‚QŸéı4ÅœAya¤Ë\r¨{9&À@¤Œùš-¶fvU\\¾ÂXJ9ôÏ*©x+­kˆ-lm\']Ìç\0IÁô¯wÿ\0áVµD²ædñ¾w™dÙª˜ê—riœ5o·r×­ Üˆ	 p9yçN-íãh\"?UŸš#éRzçkWºŞ•o&›6ğB64¯»ió$yæ§¿pßñ´õ&·>\Z¿FTÜÿ\0ìkÿ\0Õµ“—¼ß÷©ävNÑË­*ß¾IúßÚ¥DdmŞçÖ¼Éé52\n#\\í¦—7nløk	ïU[­\rêº“:öhÇindPÓ,ÅZ5=D3u8+Î…î¦376>*ÎæäÉ»¼i¶âzL*s’›)õ(½wRy>,Ó…*İE_İT6öOIÆúVB¬»²yÖúİê°ıIc”*¦Üàæ´Ùµ¬“ñ]‚Â¯½Ÿİ•në0èZa’î~ÈÆ˜çÏ?:#Ê­y’õ´3\rõMjÖÎæTh‹Å#õ#áUÇ\Zûl\Z:‹=ÔOu\'r0™ıM6»©q&£u5¹1À ¬Àù>¾U]ßê†µÎÛ\\Q-ÔÓê9öh½qñ5™µÍŸÀã[¢“’qßËte*B¸ßÙ«MY|ô€¹±d°â;v‚áh“=~b«I¸ãJüºòpø”Ø¸Uq,c–Gx¾‰¸‡‡ínôF¹(ÖiWóeFñ£?Š©Pæ¶ÚÉzOÆ¯Ä:zÏap²$SËïTëÙtw¼@l6Nj¢ú9^M5-\nuêÊU`H$mau·>ÏxLé3ÏpP#wXŠ­><Í‘,1eñ+Ô± €GnA í_Z×5,× õéğ¢2••X0Ç¦(sˆ­šU*W¨ä1Ö¶Ù5^Õ–Ø¹â)~°Y_\n9šŒÕ=¦Úé	#_Ü®à¼†yçQ|erœ5¤_^Ş–HâÉSZ©§ë+ÆüIk\'ß}SIšàG	\r€¨zç×\'Î³Ùš[€ğ«®Åİ¯ı#Œvz|uU²ßËã_pÿ\0Ò:+Ûˆ­u+gœ•#n~8<¿m\nê6ü%§_K£Ùˆ{®{;’Á·P¯ğø1:^Bnícc¯9û¤?-„˜ÈÇZ‰bÎÇ*½U±&ßè\\Uc¯[	¬e\\°,ñ÷Ôš¹\\ãØ:¾ïè­9ögÅ·úmôösÉÚ¬Q>H¡ğ’=@ëµ²|;¯½ÑF–0cuñç¾B•_%•ğÆ“QW²’ÜI¢è$KXÔ(Î«ë^ú•Ğ3º3¹€çWPÍÌ2¨G\\ŒĞ–¡¢8ºi´˜u­\n®»\n%Œdã>®½µuR¦,²ãáëZEul#¸•–×Ú§Ò·#Úf«q¥ğİÜ°¦âP&3ÊµáŒ·<˜Üçv1Ê’²Èú„­7ˆ³©ÈÆ+ˆ€OwŸÆ¤‰v¨SB ‘€sò «°v¥pû/Òx<ãÿ\0ŒÛÿ\0:º× ÌMË>.^½k”>Ì£ÿ\0Ö?roı±˜ûUÕçm°Èqœ8üiÊ¹±u“—Í}œKí?Ú“i+<jW{8å²%•‹p+£pÅoÃš\\Vvq}Z(a	h¸Pª0ª==MVŞÁı–ÁìßM¿»¹ı—Õnåšé˜ƒÙ©‘™#Sğ$ùæˆ} k×ÊËop@QûŞOhÖšû\"Ë;k9í/[[‹§Y_x{ÀU#sm3sêûƒŸ…qª×lHÛ‘ÉS×?:\"B@\nU²zkÊ²ÌAê<Zô¬Â=> ³\"€Çkc¥Z|\raLQí#\\ÅŞ\'‘ñ&~|Áûª°·Ï(H‘™W‘åufp\ZË¹T•,+Ïà}jõ(§™3 f·„m™$<ŸJâC=ğ‘T†\\ã£íZÆI-Á”Ùãê?:“MFBådïzQ›oRd×*¾Êâö´Œ¨„˜\'•AK\"«’ £0å´ÊŠ¸ŠÚ@äÈ2¹Æzs¡¨Ó´^Î8‰“\'½é@•ì‚Ôô±¨ÿ\0.1’İ©\0ıÇÎ ­.dÓ˜ZİG<ğ†ÚD2áóÈ‚zø\Z/¼y4ÕaEwuïK$eÂş-C—WÅÕwÍ1C‡í0Èû t´Tr‚Ä°â˜Ö¶Ö úÅ³.ÅºDË8ë†_#ñÁøs€¢œjV±[¬¤–Wõ\\zæ†4k×´cb ¨fÃ¾}ùÓë½EŠÊi&9³)ñz˜ı´œZÑÖ½5Ï$\'\Zk‚êÖk>ˆ‚Ü·²íø1Uµç\rŞYéË=È@7såœš±îdyDm\0‰)Œr\0s ~5»ša¶ıÍ¸œ‘Ï®1LScKj	èE\\Zmœ²Üw–vc‡çŒ||…Y~ÍønÓNÕûKø\ZêvDš|£@p\\üAªïI¶–æê=®ğ<’îG<ÇËã[%ì{…U’kç°¸/ˆİWäqœySv´*û˜ÚMöks½¥®#¹MÊü†õõÅZê½¦ôCŞ rÅVº’Á¦l·Œ1åİ_èóû…h/4L~²ŒŒ§Ëg#åY’İEe}¬p_î›O¼»[ròŸÍ²·˜#$ü:u®~qF˜Ü/Ä7¶sÀĞäÜ¸æGŸZê¥û#ª³€ÊzçåækX~’Ëˆ,¯oìQbxÔ?}‡=Î@ü1E¦Ì6²Ñ–85‚Ó‰¡’æÒ+²e˜ ‘eA€\\Ï­Y6~Ò5ˆ,¼:b¸Â—ŒTƒo-¶¤m/;#`eH8£ø^ŞHvnd—È²‚*[Äõ\r^®½Œï¯.5°u9\'»™Îá4Íİû…}&¬¶É\ZD€9nDSiT’Î¡æT?‡B+áj÷K\'h ?ÛdáBÚCÂÆ¼\nE}{ss†MÑôÇ?\\¼/dÍdÊ@.¨7ƒV|3¡À×[–=­m»#î«›†,LP3\\3lc`yWkhù ŸA>²H%\ZÃ¸†Vîc–Ï–+íf=+H’gN„ÃqFŞÙOuÃc›zSlAndu’I6òŸ\0*·Ôx¥R)ã¸Rcr-’sü•õU¢\ZOy²ótâ	]W‹µ{õ)%Ùs¸~öİÏÖ¢?-]ÿ\0Âæÿ\0¬\'uÅ=Ğ+&èÂ»qéóùÔ×î>Ò_ÂˆşJDŠE6IŒÒ LâoûÕs¨NyñzSk­Ddo26<±â¨Ûæ}ØbkçÚö=¢ıG7Z‰Úİê¹¸2³K|+;;mÏ?SI\0Å†›z\n5i‰±µ>ÈûCñ¬²1œŒV+Ÿaÿ\0\nùc|ÀÀëGùñğ¥ã@_i#\ZÇa+á_ÛSZ%Œ771G<‚4fêj*ÆJ31tû0´ÒøB—U•£kı»£B2\ZVòVö‹¨­½åÃÇ§ƒÍ‘œuÉøĞ½üğğöc„\0½Ÿ9	Î>êÇ…õ[˜ôÙØ¼;¤Ë±“Ç÷ùR\\´®Òñ£öl‡\nX§	]Xhöì¡ºÃ·/’Ÿ_­VöáÃ7ºG¥ÌèóY^Û«ÛÎ¾aNY«×ƒ}£êZ}É¶œ‰P²íh×r3·yæOÇaOÁ:gµ›f‚úÎ{‰‰÷&qÊ½[™Lx›jZßf”ğË­ë6Á¡)J¥œ§VÏLUáÅú•¶”\Z#2ÿ\0‚Ç–;‰ÇE×á[k¡{Ñ,ôÛk{çyßœF;u‰—=WÓÔÓóì#ŒËq¨é©vÑèRêô!NãO<.¹“=Q¾C^¾ˆq5ö±Å“Á$Kq!…wèçŸá`r­Ì–ëŒc÷dŸ•W7üY¡p’Ç§èĞÃgkoî.:ªÿ\0Y¬ôßh0İÚ$Áã@ùeÌ…²=hUÛNqM”ğİ—bÅIcÚ9ÏZix©\"e—[‘ÎH¡ãx£ÎîEAëæiÆ…­¦·<‘	1*{ ø©¯•[¨<g­s%eô˜²i8\"sh’Ç‡<€g»æ1Z	¬$ÒhvòÆ®RÆá¡Ÿ\r¸=èÆO“uÏ•u¯TĞ-µk1oy\ZL„`¬ƒ*sëTïıxS[’k8K¤\\Î†;„_ÎCq»£<•‡‘*Ÿí°¶İu9Åe©ËohjÙİ»yÊ²‘Ğd\ZÛ.\n‚mcƒô™FÉ®fˆ!KcË$|…JØı•¯Ew.££§Äå–ÛœEÔõËy\\ªÜ>Æu»%Ó¢š\rL•v\\ıZMóNª†>\0Wº^Y«µpË¬‹a¶à¯=’pe¦±}ÄZ…µ¾í:Y–Öeİ¹T÷Ù~O•ûªÈ<ú=ÛO¥\\ÉOz7RAùzU¡ğş‘Áúm¶Ÿ¤ÂC¼ºíğç×I>uÅâ–ŞŠ>Ùı”«ø•Ì\Z5Üğº‘\Z;9#¸L4|³µ-ÙG1xå(y¦yæ£.Ã©Màî£‘û«ØîÙ›qÚhµ®«©VnÀo´Î}W@¼‚Ø	)`—.•£\Z¦›q¦^KksHØ®ÆÀù×H®ïÖH¤Vî‘ïV{b–¾,½{|­‚\0Å\'äÒ¿h	U˜mJ«áX\0F4ïÂÔ™îDRJ¦“Xº„şÌ¹{FáçùjÛùÕÕÃçúÆ¹GìÍ›ıQ¸Kÿ\0Û6ÿ\0Î®®’0Ã#9<©Ú#eÁ\rvcn“[E!Fe/œtª+µÙ¥,J²\r¬Äõûªæö‡z©ja@›€ a‡Ã5ª<[ª;Í:†Ûß Ù¦ì³ZÇ<$ÄæAmBãëR»©m¡¼Ï_0wÀ °øõ™Cg\'qò5ŸhªK€0G.U1,ÒÇ¢†ÕG0&æDdÂy„P~usû3ÑnÕS³™¦R2Q”tôøc×Î©{X^ò@NÒqÈã•lO²«Ñï†Qîî*?®µ|e™“Ì³¨[«éãêŒ²@øÛÿ\0øPdˆ›‚^êI€JOˆ«ªûLŠ[FÇ¿Õsš©5È•Á!]@\'¨öW¬äÇ­ò\0ñ65Ä)!ÑûÊêÇôÁô5Z4Ig;Äì×9İ¿^¨&§&A’¤‘ò<¨O‰t+òÓ@ğ‘Şí-ã£àÉıT^¹Ÿ“K©[Á~JÈ½¶á‚«Ën<¾49©pïb®úbLŠ@Ü[’·ÃÓöÕ¢ÚBİ*Cå¹@H#öMø0?ËL¯xZ\"[ÜŞ9æJ®Ö-bfÔí’¨6Ó!T¸QáTÚÇãŸ*zäç±¸seC2’s$Ÿº§5‹W¶}¶Ö«\'¼Æ<œÓh4E¸Œ%ô+õìû<‚ıwçŸAYo^ÔV]H¥·ìX“¶Áî[w3÷ò¡mg‡.¯î¥vB½ŞÕVôw,Š¶m`µ…2\0–æ@‰;¥ÈòP9^½jJÓI¸»»1Gn{b½Ù]6\0§È/N_¶ªË98Ï¸)>àé­Ú[Gq«\0ı©ÀçÈõıµµü?§ÛpŞ°ªÇØƒåX—F>ğ¦Üìn{ôŸS¸I\"rÆÆçìùR<meÄzf¨\ZÒÀê\ZCw;(@fVõşĞzÓó1ØY7,~\Zâx×`C‚:ï\'ÏáD‡ˆö…2½Ni­w¾ã¸8[Nf¹[ Ã@ÄU\n>üÔçqÕ§è’ßÙÜOÙL®;&LycÎƒ+ú7(¡YKâ!ç‘pŞM/;[‹-I{+‰eÈÙ´¶â¥†sñé÷V¿ê\\_s£Ù[Geau«Ş\\¬Q…_´[ú(Û†l5ş M6ãTƒòlVçµ{e}Ìe˜òÛÎ‡bE*ªUŞÕ}‹+™.Lb3Å å³>¤ö}*¢›¤³Y’6VÚ7ì-ñ¥ta´È¯ôÑo{\n\\Ç³£œâ©8ö;m=Æ“‚êXŒôø\nëK`Ë­Ö§A¢Éjœ¡i²G?u~ÔÓ›}>7—²ì•9-ŸÊ‹…¿ÔïeŠkK’èå¶G÷ç™5-a¥™äLÇjÙÃÉ©‘Æ\Z&‰,[w\"–8ÛŒŠ²ô›vµ…P#åzøzÔmaM¯+J|ˆê¿uY«Bà•xÑF2Ç9ªW8`V}J³Úv¯}o¬bÛ¡æIØekÔ¼G$’¾ÖmÎÄíIJØküKfÑ5³ö!S˜Ø²ùuä0kX®§úÄˆ‡u;£îãÌšö>?–óN°y[é®lÌ~´nV5|¡9ëÌó<óL¾²á+üzú6,ı¦şÈŒå»ÔÏ´ˆÿ\0¹\'ñMO‘¤Æ¦—ªÒÉ°‘ùæ¨Û‡bFÒØ¯f$Ï!çƒ#d\Z’bİÑKYúöÈF³x\'©Qó4¬qá·òéÎ°Ç¢ççN•NÑŠ2¨­±är2¾T²MÀŠ{òî«+ã§h¡óó¦È¥±ÜÏİO»#³8çWk–á<Oe3/x*”ÇàÕ7¤6š×¨n ØğÙ?,ş©åP«Äf¥ô¸¡3¢ÌQ•|±ı5mH–v\n\'ŠÃWÔml Õ&ˆ¼Š\Z9aÀ#Ó!qÜéF{#oqİã2”;½|¾t1Ãz,×üYg4Q˜»¼G´yÄÓ_³´.ûA¸\'áÎ•u¹6ª–Ôyì¿†µ—Õ;]VĞC§Hw¦õW/ƒ·Æ9U¹ü%®Ÿ§Ç¤B\nŒˆ—aükR¸Y´\'Ş.fši99P£Ó#\'öVĞğ¥ìóé«s|ÛT¦XäƒË¦)šñÔ¥’ÌÃş1ã94hR1Uî]±+ÈŒ}¢<şB‚t®1<NÛì1,ËºE+’¾x¦ÚìšWåe’ñnînIäÂ¯Èô}<ÑCMõ©é‘ÚCı¤`ì¦ãçŸ<Vu“mF‚ühœs$_ûµâ½?ò†›­M¦êñ&auçüy¯Ëk¶œœSÀZ­kÄ×«#NAˆF\0èH‡Ò¶»Vâ(4øe•î;=£+îzãÊµÏÚŞ¯i¯¿×­]~°‰ÍBãxõø\n#T°¹f…l7 W^âN Ôn´“ _lH˜öĞ‘#Ÿè­Œö)ÃüQ}ÙjüA{kejËµ!€e¥øŸJ¦=•\\iºd­sªH­<Šï$®>Î<¾u±úv¶‚Ñ\ZÆX£_#Aòz\"brÅ¼ëó\Zª–•b\n’ÈTghå‘ó5ƒ_¥¼‹ªæõÍTífÎË‹=B)mb‡óÈvç=1Š0ÒxJ¾X`´Ô!šGïË~]øf_-6ÔÀz[ì1Gˆ¸fÁÍD_]ˆAmÉ#XÆïå¦ww\rl¥ÙZ0;Á‚ƒİùPŞ­­mgU’@Yw)Å¬]v¨úó\\ˆ‚†B7wyŒâ†®µrªÂ5b‘çÖ‡îõ’]ÂPø9ô¦é;4À+½ìŠI¬iôTŸ‡P–rAÎ“ô©[¢¸ßWÂ	ê*\r3Éƒ†õÇ,×½¨pb¤rÆsCİˆ\\İ«ÄÄdmS€>U¥¾Òæí8†÷ón7HyÖÙ<ìÑ“’ÀòÈåZÉí+LËlÈgÜ	µv™uÀ<L6ÅS ¬9ƒÌ\n’–ÍÑ²øN)“§xòëAŠd»]ÔŸöbËş¨Ü!×ÿ\0l[ÿ\0>º´ŞI²–¹SìÌõFá\"GMjßÆ®­õFùš½k‰8¹®~Ó8Œv÷v€9ÜciºÖ½k7¢âvÛ\'t·yHçøÑ7q#Ü^Ş¢ä,¾{ˆşŠ­¤yofØ©Ú9æBóı”¿•lLÂ©èüZõQc\"a!;WÏÎ³¶`%DDË•9#åJ,pÚdßNÛ€b„†?{u_•KXj¶è¥(àÏ‰IB~%€&—­{ØıB¾Òc¹3qY3ô}€‚kk83‡£ÓôèNS°ĞF?•P^Íôí6úîÆæYI9l±8ûúÖÔiV©keqgÂ+b¸ULÁç<¦f‘F„ì`Nr:bªî3ÒeYZSo\ny3¶y|ªÛ**7RÓÒî2®¶ÒW8«Ïob5³+\Zÿ\0ä»D“aÛ‘HÍfÓBH”°æ;2OŞ*_ˆ¸zæÈ¹†åœå²r¿!B„%¹[yÖ)/¶’rÄ)bHrz\n^zğÃ‹Û˜8‹†#.Ì4••‡=ñ’™ÏÀ1¨Û{9­‰Kqbª¼Ö3¼QÜ÷67í\njBœ°\nÏµ™%¹çáQún‹³¸úíÛóÎñUyj£BÏ*\Z[\n]’ÌÓ—¾ìü\"æ¸gãË—í¨¹4[İGs\ráQ¬w%Aù)-VÎ£Ã–“$is©\\BªÆ…Ù¾àj~Ó„ì4ı<IÚÜ8\0iH‹?-¹oÙBj6,¶´)LhÆ5‰a‚IîÈ’RGhÊ—À@üjßÓ}—Ác Ç\ræ c‘O„a˜|Iş*—Ó´nÎÚIş±3¨ğ #§ëf¤î]\"Ó\'ŠêE‘c\\ö``^f©4ª¨O•§Ñ–›cf-’yÖvEÂ°=ãŠÅìcmé€[¾Ä¨\'—‡Ìüz´5i«µ…¬Ïn[ı€73ü½1ûkÉõ›©l‚Û\'ÕÙÎp[ioÿ\0=)[aqÀd–ö>Õ42’E¦:¸ŸÙÎ©Ş%á8´û-FM­²ZHÆ\0cğô£MKŠld\Z­Áidä¬œ„€yÿ\09Ğn¡%÷Ásm§ö–ñ\\®Ñ;ø€Ç1O(Êz\rÙT•à+6ğµÜı»*ŒdxOÎ®.kkRµG~Dm®Úu§ğ²í¸µúİºŒ,ÊyãÓmğÿ\0Û]¼I*4S.Fr†ºªWË–ià¼¡ÔÖDå (¼ù•d®ò1”Ì|#áBšeå³`%Ãdó+•5mvà‰Ì¬3‚jØS×PÚ…õ–3$Á°#\rŸ,P&¤ÙÚÆ#K˜×iÎæŒÆ­5/h>¯,*S›#“ÌyãÏğ {(»]¢Àó¿÷¡Jö­ÔZÚÌ\0ê.£|à‡ì@5(¶æ8œ‰¢n\\÷¨†i{{DŒ)ÄCÌ_²’ÖÄ+jßY\nŠê˜ûë©^X£·\\/µ{¨­ûS¨h1º†ÂË3n¹QÊµîãOÓ&¼‘tİMlç`Ì`º¬§õ±Óàjíã­6\rRîæ=‰ßLœóx·ˆÖsåŞÇßš¥uã¯éµ¶½máWtrÎªÊãí‰•oxó\n¦\rËÛ$LúmÍ—zH–@S	\'h²oøç8ËHl»ÿ\0ƒ7ì¥ëO›»5¼¶W~Øç3FHĞ|©ğ_øÉ?ˆÔÎÀ9ïäç´oçRÉ³`UëBMÄ‹ÿ\0,Ãî§1¡ëUHI¶Ìú0X—8Ï:Q™·2:R«Îìs¥ãŒKtO¥Ií02UN\0?\n]\"f\\®O,òô¥á·í”A¾æÆÅèÃ×>U-m£bVúäêœöP¯m)>§Í~dçá]Ô[f##·pa“Ìr!¤é×W7(–Ğ¼ä· ˆN\n!¶°Á#y ·´Ø{¯{)‘‰øD<ş|ªY8’Ößö÷—á“‘‘o	@ï|É|,)Åbw„4-auÖKT²‰cî±*Œ~dşÊ°4¾ºgŞÜÚl=ögBø£>UÁÚ©ÔmepÃi \\DËë¼÷¿m|ßX‚I{{©n$ê;Àøàÿ\06”°ß¡¥«\nm4íO»s©Ü\\wvQ±Ã|^:=Ü‘ iÕì­6…&`X.u®º-•ÕıÇkl™h›y™ØBz1=}(Î9Úìm‡S3B..Ÿ’(÷ˆ>ş<³Š¥v`#,–%Æ³ Û´“°)î³2åH@uûè?Wö†úˆš\r*²‚ˆØ§õ‡ÃàhkR×í\"üİ»<Ñ\"•YœŒËö‚÷5œÈ c];e‚Ø‡-Ìj®ê\Z¥çö§¬Ç·Ö/åyä;X«§?\n©¸Ã‰öÙ–i?Ü× ÇRÇãè)[Ye¹Hm	3s¶@¦v6Ê²6øÆâwNM(ï86üuUa}‰gÇµ@b¢´>2îÌĞ’Ü²Ä€>Tõnî(áHÂAí:¶:W[\\¾Ü4Üao¨\'Õukd¹ŠQß™y\ré·0Ú´wZmÉUT\nBuoÑÚyT\ZªëËßVöÑö‘§¥´b@\n£±rN\0øRš4¾Ê$Î¸ÖKÛGâVšÅ`¿íhhÑëš×/¯;Swæ1İRŸñ)¶­Â`ÚVK}œÑÇ$ÏAÈd‚|Éåšk}©ÆÓ<:½‚Hrpñ\0’äÀç©Åj«å0ÆsDmÀÀ^H®UÚ[È !\rğ}¢E—ÈŠÂ(RtE»YPÂØ‡û³ÌÓFw†GYÕ ‘|l@û¼¨JÄ\'Ræ=¼‘GÌÒopÄäc´Â3è|ıÕá\0Ä|9Ñ>ÊB^Ös H÷®3ŞåLx‡‚#Õœ¼‹•aœã­g§“Úô=jÌÑàK´PT;Æ)ª”¿^{\'Šhœˆsòªçˆ}–^DæKh]€\'U¼qhvïİX¹…}7\nZL¬\0ÏPN¢›TQFSE8õ[=áyf¶™V=Z$Œ{ÕÒÖıíşF«K^°şÒxãUxîE<CV[òFù\Z\rª±BRsÓ‹UMõô³È?¬Ìw†ñƒÏçB³j…Ágù¨œu™?æ~Tÿ\0Œ¯VëP¾‘\'í6ÜÊ¾˜ŞF1ó¡{{%½™míÙ¶ãs1ôÎ°ì_ì=…Kıp.³o—\rÙÚ1Ì±şº%Ñø~åç¶7—f³6;Xú\r¦Íqu8·ĞCA¸ËÉ˜ äY›İQğ¢=®!”E§»j3¸Û$¬»DƒìƒÔ/í\'áE¥yä\rÍ+ÍìÇ@±ƒPBº´.ìĞ)¦¶ÉJ[DŒı¦séZåì›FÖâpú…½¥¼™cE!¾ò+cíóØ¦àtr­^§¹¿°QúÖ,209Ört¬7ãË­ZÛÙ®éixó\"]Ã¦q™ª›ˆ4[yî¬ûWÏ%ŒòÂlUã#CÍO<u¡­oL‰Á™\'}*2oë³kíÍÅİ¸uÑt{]ÌØ.#Ü#nDúÒ	©Ş’Óëz¦Ÿ\r´\0,}¹Sö@ÀÇİš±µ®’ü·m3qÌŒœ˜)5…† ú¹¼º‹;&—ÃÁ|Çí¬×K+“IeYIı*ş=^M±–8²?Â.\0ˆ9Ç\"\0æJé\Z\\VèZêè*;È°ã\'Ğ{çA/]’çZ»k[\\åbŒ\0íë±_‰l|(ŠË\\7‰QBñÂ3jÍ—(=ç!ğzìi@:êI½Š³ÇÚ-®ÜvÅ‡3çC:–£igo#KÚ-±É0ç8Ç¼ÇÏåD6	¶Šm˜O\n¥W’ÈG§ËÖ£5î¹¹´ckjJ{ù9ÛÑM=rÉ˜+]°“É_j|Es,í„bÜ*€ãúèN~+âY>¤Ùp\ZN{İëñ©-s…õ‰¯c‰¡’q–m§Äzcğ¨ôĞ¤¶€È¤$ãÇÇ5–ô¶MZîX\\¬íMÄæ{×íØÉœí`9\0‘ÏÆ‰$iôÉ¡/T…(PÔ}¸¸YbªˆâSµ9y#ËfT‚Š?×“£\r/“1õÛj/-Â$ŠËæÃ#—•9Ô4;kè#(ÛfİãEÆÓı?*BÚ	’Õ¢•UÙTm#ÈõÈ5•´÷= <Á^öğ:ùÊª«%ZæŸdv«Üé÷²Yİp3Ê@ Z°¬&¶•»e‘—+ÌdĞœú_kt·\rùyüjJŞËj6ãr`üªÌìÆW±ÉpLì.-òÁÃ/ÎœYØÁ€Ë¹ ¥=‚Ä—íbPÙÇŸ˜é‘O–.gh\r´sÇ:ªÆÌvgU<LP	U¹ó˜Ï*­ı j³é¶-NŞÍØ\rÂá	NGÏĞÕ©qcÌí$ƒÓ¥k—µÎ&¸ÓÕ¡º‘-·îQ;™PˆÉOàäzŠrªç\"–;`¡øÛu;«™!½¸Ó.Ädşe¢Ü?[,œ¿\ZÓøÒ\r01ˆífÊÉj¤Ë	É sôÁùTWşQñ®. ú°9!ÑÃ,‹ë»£}üÅEvÂ^Ït»Ês œm?ÉšØ­S1å¶\n/´½.ş7½Ñ¦{\"§|{ÌÀ;qĞ‚@ó¨“ky“ùÛOúáQö“´WI¼ÚÉƒŞÎF=0|jgò´?ñuŸñ‡õUµ8A}[óÒ¶{Fÿ\0½YÅ8$7*Yìİ%˜ŒHÛ¿Î¥áÒX»Sµ\0æd— í}ÔuSÏYslDÃlò¶ØU¹õ$Š”³Ó€ûZQwŠ¨?ZCáşiÆ-àÍÄ.å^éi2 ~¨÷ÿ\0…ŠÆYn.Ê‰äi<	áòAËñ«‹5ƒµ¹¶¶R)“–ŞÊÜ˜Óøn9¿ßŠÁµ‹›,ÊéöÇÜ€vù¿:e›¦Üx¹u§	A9ù!Tfƒœ˜F½¡ÌŠ[swßåÏôT…µ«6ô~JG¥{Ë×}NXi“]Ë²Ü…Mİp}OÀPšØ€µÔÌÄ—\rIsmydÄ€pUN-Z1i±[Áî¹/cŸÍÂ#óym\\ã>ñ¡7²áÂ\".õ İíŞv÷Kz0òUÎ<êN)§Õ¤yç™ŞSòÊFz;sİŒùÒ/a½B2®²LÍ©Ï©Æ1Ÿ¦B¹0ï;P¯&9È~È8ÍGİêÆâ\'‚Ä˜íÆİì<E‡¯ÀS+«¦œÅkf¥-Ã’‰Œ—aï±õ?…:	¢Ñ‡ŠØ(tÏïÓ{ˆO’?3Š·àyTc©ÌlD3pûZ\\s\nº±|™¡«íTÜö·\n¸ëœê^rnf2Jï$¹%Ÿ<î§*c%¤aö…è¾”6–\n¬YiD™Øï‘³¼®qòòßó¯±°Ì¾QÖ¦E®Q•ä\'2@Æ)¶#s&6úã†1]½LaD*ÁX¦:‚3Ÿ_Æ˜Ïdå‡,÷ªzÚİá¹›¯•:è+l8oJ\"k#Q¿ªö`°Úw¹ıubé:ĞNÖÈÊÀÄÄÙÈ£$PËåBz}¢)UPó“åtîòÄ¤¶·d0@èÀõ*rûùü(‹\Z‹4ærVİ&\\·ggr7#íÉ±Ïõ¹óÇ¥zúŒ°?Õ/UYT‹YCt(Şê·^Y¥C\"b-lî¿Ryäg½äsÈJ^ÎQw\0³¸%]C}Z\\~ös’¤ù©==5|˜É\":“	HbI3ıU)m®Kµc¸“µEîõ%—åë÷Ğ˜’xÖhó*ÈA=6ä0<ñÓ}iä316;º°?ÑBŞ6-¨_Á23¨f	ï ›ıdşªûkj‹0a¸Hì^um;‡YŠ•îòê£áğùÔå¬‹3Œ¤w\0ç¤‡íäGàh¨Å	}4nÄ\0:óéFÚğµxŸqÛš¶¸röû{e00|EOZéÙ8ÅäÖNë’Ñ´ÕaºUdlòçËçµ;s¸Z®´iæ\n‘¹#$s£[q#íàÎ¦İ½±5Qí»w\nòñQdŞù\Zµ’ò&<È˜QuÆ;&ÏLÕo’Uìæ¶¹õHõ[ÂÂ9.êrİŒ—ngí|ªØÍs7mpòN¬B¨ÎÓ&z*}Ÿ8Ôáêš…İÎ$„ŞÌ‚\"}üã`Ÿ@=|ëä½˜Û¥ó÷w!£·,0Œ@ôò_:Ãˆ™nO]Zÿ\0XúçZ¶€¶™c¤]¢öæ1Ò@:P<ÉÆMpVŸ5ôñäx›9É‰p*½Ò­#šD7p¤=ßÛçW·³m>Ü<mŸLG¹>új†ËjgùM¸eûÁZoÕ¬£,ûØßìÀÍX°ã³R|¨C@QÈtÁè(¶26àô­9^92Ûr*ç¨ó¨û¹;2¬æó°)Ì²mL¯2)œ“¦ˆÇ‘ë]X8Æi2¹l¹øtû¼ştŞıã2³r±š‹½GaÊ¡9 6K}şU-ô¡‰‘údK÷yÕšaJªÈ¥ÖÉRHBdë³8\n=I¡¸ ·`!A5Â±*Äw?du\'çS×Z¾V4ÙËøoñøA_]ª—^ÌM!†){Xn¸eö=Œš…Â£H]œçÈè¬7¨’FŒ²€vã¬¤÷AŸ/¾¦e=Œ*°íœ„b«ûĞÆp=MFOh)Ü’\\±9ÚiV`<7ìûJ×n´ûiB•‰$—\0Y²=\0èÀqÒÛZ *^r…ŠŸ<wGòæ«ÛÛwüÄ`a®İOì¯\"I\rã;\rÁ¦k«{GZµ`®^ Šà‘>Ö=–I=ìæ²¼¸Ó$Ó{(Ö=Å‚±ÛĞuÍ˜ÉtKeºòÅ<xd‘ÂªJ™ª·“şÁ¦Ô&¸Ğ4ô…dŒ!2=j\Z[!q6è€\0şÜVp}fæ5ÇrôòùTµ–™$r#¨ÊoÏ¡¤­½[ĞÅhËìj-*–8qŒu¥í4èÕ—Ã8<ù**·°EÚëÑr:SÃ¦¢‚Á@aéëJ³~CAm¥?j\0ësÉõÍ=\ZHÂ˜Ğ1ç¸yƒSqÙïM¹Ø|š•6²¿RY²*˜Ï!2AÛÙÅœ•ƒ{Ëš~–ŞeHSéÎ¤’4yr(Ü¿t¼±*´n?\n=kÎEl`Oˆ-k	VÙÌR¨Ê¶î‡ãu¦Ş×¦Ö`iÖktÔ\"¨€Ï.e]r>§˜­Õ×Ó6Sbç3ÊµÚíô¶¦ñmîB£œÈ{Ätİ	äqê\riÕVO´G©´qÔ¢Ó÷¤µ#»!`y_…660]Y}cM`ğ ÃÄHŒàr*zn5¿pÏ,Ùìp:Æ˜=y%%¤“âMllÍáÈm£y­>¿Q\\-¥™¤X®£*r@çû*G²ïKüjZám»Hä¶µT¶vÂò£?c>|ùæ³Ûñ_Æº@Icİ H23t/\nô}3\ZâR×ÓÍY»ÀLõÇİJÌ­ÛH<»Fÿ\0½XàÓynÂ”\rŞ¸5’Á‚ÌsJ\' GŒc\"¨ÌHhü˜­«›Î•åWª÷[½ÎŸÛZ½Ó‰7)óÎüÍJZÙ–íÏrr‚VXÀê«òõ4“;\ZôV¬£M;Ki{!*÷(âÜ3\" zöMI¨­„bŞÁ”ÉÏuÂ{€ó*¼¹çåI]\\˜£k{d‘¥ëœƒ9óÀÇCñÅ1T]ØÇ!Ò‚ÌiUãÆÂÖËÚHƒ˜wQrJ€=WçÎ‹Vçe©±‰\0\n7Nsïùsô_ÛBğËÙw”\0z%Kéœ“¨|,p¦çbsÍ{Øøç¥Û|¢z	¤)6æk¹°¶ªqË‰Ÿ¡šo|ÉËhğÜÜ{ıXüppÌÖkpÆîkŒ•X””^»OEü:dÄ±Á ¶rO®zÕ&NnUPÀtëñ¬XŒ//ZÈ•iåX¶v÷<ºTV!öV¾ØÚW•{»sòWoØEáO-×²|„\n7tÎiw!ğ@ÃR?¥çKn\\Õ2É#hBgWÚÆBøÆFEJ_±’ÖÎAâRØ¨\'4i³’9=|ªNk€öCD²ò$`UŠêÄÕ…Èú¡vş¬ÙÇC\"7ˆüq•7»€E<‹‚ñ’\n¶21ûySk	×µÛÌG(ØGì·<fYlÂ÷„¶ÌF@ê£–~ãÎ¦Ü`šÈèãR‡´Á{˜#Ã0 äÍóSË>uŠ.Ü/½œ`uÍ7†åà%·À–23È“ğô>cÊÍ±$G·;a‘FİJ1ñ!³ò\n4°µ³sçRqwO„{¤u¨˜TŒ„ùTŒN[Ë<ªÊßâT%¶‘g]Å†ğ6ã*—·‘ãh}	È¡Ë6!—ÔQ^İMgÚàò\0dUµüvVØ\'áÛ/ÚmÌs£pT`Bõ¨ı2%U\0¶=1O·¨^dšÒ¢½Tå–m6Ë‹nñËIÌQ…ÉÄ2EÍÂVKË~_îÂŒnyDß*ååjûÈ×cm[‰®`Œˆ-ŞîpPt7’XŸ‡:„ÔØjÏ%»m…HyQÈ~=~tGq}ØÍÄùùn&¶Lã«Hß÷Eé–Ûî{0™ôÏÿ\0œë›{4â½‚^³{™]†Ø§»¹$VÁp¢DÈ°#léQüµRğ¶•4’ªÙÚBãyJtû«c¸+@¸µ¶[‰‘‹ (Š6€>êoÅ^Û~]…‘¥n…=Ö`ã!:|ju\\¶İ²nltò¨{‹¤ï,|€ÅJ´‹\nÏ>™ÇZÚàÄofrK$k—qˆ¨+J16Ü\'Ÿ>B¤n¯\"“pG%°9c•^Fó3ëÙ{ÍéTÉUÏä[ëI#;äU=S«hïXˆ˜<X—SCĞïp¸‰|*‘uûë-7Y‡L|ÉnòËî‚\0…«ua#ƒ=FÌ©!»¼ğ<ÅG±‚%vb¡\0 Rr}sğô©]KXMM“³ƒl­Ë½Ïğ#•{g§Äò¡ÜK¯Ş‡Ğ:Y“-Àel/$lV[â…vC¹ÇÖû_*pÚTo…9:du8¢o¨Åb»@l÷iÈOÂ›ÜnğÄYã8gsgáVeëÉHl¶\0ûû,³w0\0ys\"›Ef¢8Ã*‡“8?×SÏnÈóO*»ÊW“gºeœV\"×-‰«\"<éFQ•!¡Ó“•S½Ñ<©Ä6qºÅ2 ñ÷S‘¿]$FJãaù?•(–³[ºº&àÇÈçËáJ2‡VÙÚÇ(BŒ[sÏÎ¦-¢‰2kdzt¦2ªRdÈÛŒ`•0O\n™C~øP5ÈL’‘@{_z†ÆÊ”1;†^î9m\"›Ã3FŒ²˜çNDÁÀ%w×Ê¹©¡V«O€ HT‡SLš@Ã\rğ_}}ÀÇ{˜uÒ¬;iRBc—zt:gpÁr²1ÈtÅ}\'<`ócÖ›Nàƒœe|éŠÁ0Îîáv°\nYpA­k÷¶ßR¶šu%¹PvÈéË§CW¥Ûs%ÆÑäA¡ÍRÕ.¡š9¶JĞ2†¦‘¹e9­®éóY]Ü¥Ä}„Š;¾ğa ôÇÂ¢­Õâì#TG.Û™	Áo¿Ê¶Û/İX_\\Ëk\r¸…áØ Æ>#®k_Mª¤±Ê#‘NNô-Œ~–|«E>¢’¸bL0™LD*K?)E‡B=?¦š~NñëèÙ­íZF‘ã>Pï-K‡öì_ˆ«(~ü²c–dşÕ`È>5’7~AÔ‰9á5*‘îÏ1Ê§³í#pª9§p¢.lÈ»ª?¤Ö*­î}q“JG-çÍ»ß§ıU±/fmˆª;•TSÈŸ_çğ©É\0…Öİ‹vªÄ€s|wJ~¨œÍ0¶Í„C³#ë2 >2!Â¤y“Ï$z\nZgº\nnêç9ûéM¿\ZÕàò[fæ6†P«Ï8¤;µ(¥;Ø5ˆ‰…+×§:DôØ¬¤h._h0G/>˜ûÏãRĞ£ÀVİXÍ\'œé*^ŞÉTöä\rê„¢ú‘È~xvXwŒá—>~¹¡CvÀŞW^	VeŠ~sÄØ*G€|üéºãÅIıZIôØÆc#Ÿ6¨Â0¼ğÇ5{Ğ¼OcÃµ›¥a€O97ğÅeƒéXmÙÈçÖ†põe8;—p_>†³îùI\0@l‚>uîw·!WÎ¸Ì`÷§ZÈsé_d•9Ç!Ê±R=k§UGûH=Áƒñ4öI3mnÆFú`b€9óËbKµ¤D\\÷c\nÏ­Cº‹ÛLÛ‰šô©d¾O¬Ç!rÑH\0qŒg<š ¡”+*x62Wp‰½qzš²ÉÂOz‰™7¶©Æ=MIÚ°· nÈhÏÄuxëQ°h’Cî¤úƒĞšqnÁH8,àäsÇ* &^Ä„nwéÒ¤­[*3ÔS0¡åG\0í“¼¿QOàŒg–zÔO±F%m•ƒn¢íUŠXØP…¼›~4C§Iµ‚ùš>0Vdµ´Ë¤1äg§>•\"JÚÁó¡mtd\\€Ÿ~h•Bàáä:)­*›¨QÅ¬]Àsşè\rÜøåBö¤vğåXw½(¢çÀÇáÖ‡pj}œ¹Õ¥h.ï•ÿ\09Jäî<!ÛöÖ\Z\\k•eŸ±É8<¾Tãˆ\\4·§`—×lx³#yS~G»½Œ}THÌpÌ(ùšÂo±ëa¿¤¼¸°¢úÅßhƒ;Ô1ÑëñÍl\r\\E4)Ù(ÛŒƒÈU7Â\ZDv¶0‰öv×Xm˜ÆØÇC÷œÕÕ GÙDšbU8ëZ~*àóW,Úf4äæéÏ¥8¹Y{Ù¸zu¨stû›™‰;yœ\nõnšGî±ÆcM:Í:HÆóµ2~q3#r Ÿê¦×3ö)Ù¨E8ÜÌOJKD¸fQg%¾?\n×,¢Uvdi<yP,iUÌT .µdic4²\'<ôZŒS<Ì\Z\\F¤äIÿ\0…*ÖXºÆƒJâ±i8ˆ³¿‘Ç_º³÷m²10¸%ì%‚ÕYã‚Y¤A’ïË\'à)eâ¦cps-³¯Â£!¹t·xÃdÈy’:cÊ±üì¤“&>B¶Ôu}Å7°$™ì<†HÅ%§ñìê²I.Áµc’ÔŸµËğ¬8» €Ìz×šH²E´!Î¨ÖZÇUn;\"£uÃ\"0ğ_—Â‘[mn²´«$³9î\'Ä|È>KŠ`4ø™w08\nVM6&(˜ëÎƒ/a5%ì¸²ÊOÎJ`÷KuÆzÿ\0%M%Õ¼¦BOh€gÑÓDac=@ó§¶’5‘E˜…ò\'8Åe“˜eâbl`)Sá#=iÜRFıè7&ó¨˜®–å2N[–:}ôêy;Ë…Ç—­	¡Bc¿ˆ»Ç11±#;‡#÷ÓÍœ”eÇ­$,ÒdÆ[Ö•KM›;n÷—:Èº²®Ò¹áŒ[C\0ìçLş®è˜¾µó7%X à±ÁÜ;¸¨Ë–\n§äÓ¹Ÿjãj\"êRstÂÀ¼ó2ƒÉ†zŸª¢¯&6å¸c˜—àÆw3w‘cãŠk;Ç±”®Aæ9ä|¨¤e5óÛtäYÎ°¢I\"ƒ€NÒ+S‰n¶órJn\0‡ôÖò{Má›]wL•Úy”jØåŠÒN#Ó•ysh‰öïÁëŸOCÓ4ıMÔFÅ[\\	ŠÛäÄŸÎs#ÿ\0\nø¬ÿ\0ïq~\"“ˆ¥$Û.ÜÀmaKöVş²~4pa<) ,Hä$oŸ½O#Oïu¤„*¬û€‘ºçô©ê.0±ù<mŞØÀ„w¾@‹\0ƒ 9|”ı¿Ê’‰\0Mò…òõ¬K»;té·CåDÂ‰ì;I›pf9Ü77Î¤a”íò¨ˆùõåYŒ¯¯ãAjÕ‚Ws(@ŒÒx¦1R6ñ‡\n¨ ±lgĞT-„îÌÁğäyô©ë(pCa9uµ›ez±½âyÃŠcF%¡#Ÿ.¿e.wu<ECéåëò¤.5ÓPK!Â¡ôÎjÊös}2ÈU$UU«µQÛÍcEdíŸˆxqâA,ùUC©ÛµÜ¨Ü›s( ³\Z­üzfšÁğS@ÅkÇH%ÔEPFåğ«ùH°½AW,Ä{Ö¼ZShÛó¬sÏu–6a‚@rOQY`€\0‡_$áÙò¸Ï¥,ÆsÊ USãçI\'Èş°ô½]©äOİP²±ò¸Ï®Æ—WÊ‚3İ9Á¤ÕÈmÛE*C|j>Oşµ;‰”³®áÓ—:iY ïf…–ŸD%lÆ\\©#³#R1à98æ9•DF§wtòjaJ²!S’y9Í$)%mÌ\"îƒ¹Fiúºçh^ótçÒ¢à=›†<ˆõ¦ºäW:ÛØAŒD2íçša@Heg’Ûˆ?,Q\r›‚ˆÊ1Ş üZÇËpz›´|(C‘ø×bN†Z<€`lúfŒmeî.ÜããUæ› FIr£++µÂ.H§ªn@°ElÄİÀ$	A£9ùBß#@Z|Û®mñç&ãG“şòØô5k\'¸9iÄW1\rGQUœÃ‹Ùxrñµ{Âš}íö§·º£sæjˆ®d:Ö¦Íìø\\gıÑªoÙ¶£vúª<[ã‰ÈeÆ9r¬h…†äô­ÿ\0I´Ü-d©(•W1Â¡œ’Ê9jßÑgü ›;1˜ÀU9Æß‡Æ¨İZŸ°ŠSk6È‡‹æ}ìyü¼ªÒák·š8ÛëDÏ@¸)ğøÓõ<G%Ë!&¢’ÛÌY÷‚¼ƒ€¿wD¥ô›ÂG¹T¶K‘ÌŸ€¢«˜X»9v‡+”™Å5·Òb´=±Çhyï>_uu¥¶(ºò6+p`1©f–~góƒ\ni}õxcEÏh=óŸ?…/ws([jí,ç#ŸßåBÍpg˜~sµÚÜß8ğµV³ŒIÕQK¢ÓÏ´…\0ªO!Üˆ3(˜ü\0¬pRæNxÇu¼şêWr$Ÿ,FëçJLÆFTndvSnA?y§‰Äˆ9çMŞl\'%I9rê)ÄsÄ³Ám¨ôÉªsbO­×q•±‚:f±‘¤¶ˆªs2óltú8»y“\n\Z²½‰DEcbÎW\0ããS\'[Š!s\Z@=âqJ:9bO@y\n]`™âDQ‰\0ÆqNÌ\"trÛä\'Ÿ/J¶°Åv#ÌyŒ9õÀªY¦\0!‡•}kÎ’¤‹»*Hä3KE‘9$œ°OºhMÁeì9†ÜCĞT‚ˆÍ$€n†õ<Éô§1MÙ1V\0_AUÆÅ‡³î_	?u*·J3)8æ)\réf\\6<<ëá{¢	£äb¦¤$ÁÔ•ÇJhÍ—üâ‘})%º„NqéHKz„“Ÿ‡ZêAF“+‡#\'>µ1899ùRÒŞ/>`ıõs/|<YøŠ` ”’l`Ÿ„Ê<t\"³ßÚuzÒ7*Yç€9cÎ¡Æ*ÿ\0h:å½•¬èfHåÁîô5§|]5¥ş¥pÖ–ùRK“Ê¹òô<ëhı¯h—×0I,Q,Ñm<ÇQÊµ?_³‹K¼¹ƒ²pÙÚG0q×\"œ¬]ˆcıe	í2C\0NHùı&\'‡ıô~\"¢ì›*1íæYóéO~«ÿ\0 ¿¦¢EƒÙ $‹»f$lrÏÚ¬|¶ùS™Ô´ŒØ9í?µMğ}:V‚õSÂ[-±Nİ»‡.•ê·êÒYN´®áŒàf 9ZË.IÉ¬7Ö{ ª”iîEÀSË4ù|h¯J†kë¨¢‰ˆ/È (.)Šã™ÎÕ‚¤tŞ/ƒAÕ­veØº\n]ëÙ»¼iìçP¸Ò”Ûe;E8«7ÙGşç´íPnDË×4­¯XkÚlBÚE`‹–èyü)İîª¶¶M\Z1Ç.XÍUUx=7ìKUÔ_TÔ\rºåÔ7Bp(O4¥‚(Û”sÎ1Îø[JíH¹›‰ïùşçéñ~Osö=<é{–/V(£İÎ<«îÎïZRE`år<Xû©6ğÖ}°:±ùE;³uä\\\'3µò®FáË–ÁØëğ®†=Õå^àúW™?\nÇ}ãP†@ç¥,œ”R1Éß*@®G­C°Ü™ÖHkèÇÊ²VÚÀ·,ô©‚ãÛt`ÇqÇÎ¦-‚º¡¹såQ&D	yuÅ–v ¨}²†8P*ê‹Ò=â~#]Â`N$ÆÔ@|ştóÙşVÁu ~³r;äŒšŠÚóŠõky^7Í0ÜóW›vĞG\n(TUÀ˜mcÑBnØîç•HÚKƒƒQ0.yM<r·^T aE¬Ë‘ÔçSV÷%pK]>4#o,6Œ|êjÎa$ˆ	åŠj¦ä¾‡©…¾´Œ±]Òc¦jÖœâÏ.F©F5Kan:)«š|˜Û\r2ÒD÷µÈ$¼âèR\Zúà(Éşu¹U§ìêÏNÓ™­¬÷“’>²cV\n_¨— #êj¸¼ˆØë\ZÄÀöÓ^Ü¬>¡;VÉÇ‘Ï!V‡³]Ã\nÈèÉïmÎIûë&ÙUcĞöeÁé:ÄØÄ³‘•/3øò£k¥ÒH0¬ãÄ£–>UZèªÕíà7\n9g#Ñæ™\"í\r,)t§8©U˜ö#búmØeNÕ•‹„ó8ó>•ö¥¨[V>ñ=[8\0Ô6ÓígíÖ4ÀÛŞæ)‰ŠG•:Î™<ÈÆhÏdÌpR\"yŞßêÄIf^ö:äyT4¬NU7;ÜÎ\0>•-˜Ó…ab3Ó—­/q¢\0îÓ¸FççI4¸U… ãuìB”\0€XœO>_ÒÓÆJ¤AK3~qq‚<…8‹NÄƒºÅ¹/PãRh¥2G3Ë•’ÑøŞñ{gaV<\0æiÍºö®Î§#®­)sg\níŠ1Õ±»ÌÔ¦§	wŒ~ldd:îÅ¢VÇr\'}yc&°‘ÃË‘ÓÈSÂ„³ªƒ±F.¦£áK’€^~”9b¥ÇÁ±ÌƒÒ£ß]Š‘˜K®{Äšyt¸WÇN\\êê”•ÚÍ_R¬»VœEe\"„tì·@Ó‡Ô­i¹»´¶Â9rª@À¬&fhRE8BˆõÅ]gÙMu\rVŠF\nŒ#yr¯»|ä‚Hõ ÔÔ]tÃ\0:yQ…ÃÎÁ•Ñ0øÕv‰ôt“W}™fåŠm-ÉÏæÈ$s¬n®Yjª–o46Ò¬y‘€cÌü>Ó¼\n=é<‰ÃRbáòwgÛov´uİ×5œlÌy*›Ô~%Fó¬\Z]§\råMÒ ÄÜ2hCYãë+=>ÖêÂßP¸7²Ã\rŸM»‚¦‘€^ÎS	eIp#ÌíV8xËz+ˆa³1pÀ›¡†r(†½¥Z]ÙÌ8’ê[Ä‚Şä˜­ä¤SXÇv7x\nÒd³ !/_İñ\rÌ\ZU…íÕ•ƒÛG¨@š5Ñ¼…§åÕŒaw¢Â1Í{u9\0s*£LâJ3(Q®ÚA¨XËÎ0~}+O½­p³[ê3^X\\HĞ8;²Àô­”½ö¡M¥½Ì\Zƒ¼[7‡[i[râB]{½ä²ã*½“ä§\Zëíå5+™£Òìï®®;A{{y%W}Ñ ª‘œÍÀç™cYrÌD¨ÁPé¶ŠÆˆmÅ‡tCéšqØ]úÁüjB5i)£P°\\A)B°»¨Rİì`°!#¨Ş¹ê*<Û>Oï_Æ¦Õ¸3ßÙkH{òw¿İşõ!ŸŸ>µ»Oô@àf$Sˆ²X·ûf¼ÿ\0ä~5ú p1ëªqùLèiíÏ(ş3ÌûƒH€,ÙÁÅfÌ~*İ…úp2‚«Ä\\ÿ\0çP¡¯Ğ÷3ªñ/ùÔèk»ƒÿ\0pi7h®9ãÖ”Ü¹ë[¤~‡\\ÿ\0\ZñùTèk%úğ(éªñùTèk›‘|f‰÷šÛÌ-eIe‡|Qxæ(ïRáÎâî\Zi-å….BåB9úäkkôï£oYX}QfÔåİ,±3~=FGô?àd¸–[=SˆìÃœöpİÂ|„Õ6Á©âÓjŸ³İ&â[[©¬Oµ2s‘V›º¼…%U¹-^zoÑ£…4q!ƒS×ef9--Ä$şÈ…LAì†ãe[íX²ôÌÑcÿ\0·T–‰4ë\\I_é\0Ak…;j‰cúİ££³Â¯$öK£\"í[ÍKÿ\0?ìSKŸcºñ°{ÍO¼¥û6œÀÎ\r,¿·ìnå\\ôéL™W=Nkp/>ŒÜ%y1–]C[|–x@ÿ\0íSVú-ğyeÎ¥¯”CşŠ±l\\¾F¢p¸5$rl†¼ïlæzt­¶şõŞÿ\0ŒµßòˆÑWÇè¹Áøÿ\0ÚZ÷ùD?è«˜	“Qıïük3Õq[iıëÿ\0kßå0ÿ\0¢¯½sƒ÷gò–½şQú*î°MLÈñcd¬|À­²?EŞÿ\0ŒußòˆÑWŸŞÁÂñ¹şQú*šÁØ˜5Z\"pF(½ŸgÌCÌÖÕ/Ñ„ÔµßòˆÑW‡èÁÂ=ïöO^æ¿ğˆÑQJîj!7RÜ—ÁòøÒé iğæIĞI#s.NN~¶Ì}¸HtÕø‡˜Çûbô4Ş/¢ÃsÛ¾·Ä³7Ù{¨6şW…ÁFœšó¤Ú,(6B	Ø\0ò©«v¶’\0\ZØX>1Ò·úÉÇ¬ñ£¥GÑÿ\0†AÈ¾Õÿ\0ë¢ÿ\0G@œäæJ\"Ø¡·üéì3—U]§‘ëWˆö\rÃ›ÛÚ·ıl_èéÄ~Ä8}•î¨~rÇş«‚³ÉJÅ6ŞY©[yvm$àùÕ°=‹è\0¯ø^§ÿ\0[ö)ÈöA¡ÿ\0ÂµúÈÿ\0±GXÁÀ@»WÖ,‰ëIŒuëWÄß½>}òP]¯³-&Æî˜noŒÈ®»$z÷(ÖEL\Z,ƒ•Pé1Şñ¢÷Ì’?×æ+·š©í>˜ëñ«c†‹@©œ/9Aƒ!8òõ«æÏè¯Á–×—S®¡®³É<Û®!ÆYËÊ.™¢İ/ØŸi°o5ù§$gşåcÚ¹ceoˆˆà©tç‘`Q+;¹æªÈ|ÍMXíVFxä˜r»°ßVú—hêWmÍò÷³ÉãşÅfŞË4y?ıV ½ïvD÷*«\\ÇäãZ³øRUl[håûç\\TşŸoszäÃŠ ™ï†>¶§âö[¤££ÍDí<•1×õ(–ß@´†İR3 Ï#?ÉL\"bEYâAKÛ)b@8ÚÎy6>ÈT$÷-s\"„ïddàñ£û´™[}Å×ÜËıšiièN\'»9ë—_ìĞİs$VˆâE›*ïl÷Îz|kÛ§\0€’vN~Tl8.Àtšè\r³^\'éà)í®‰œ—_ìĞ´;6@°‰ã(	v9è£Ï4_²[ZªD€2ÄT­¿XÛK˜ÚbIşŠsq£Á0*Ï*E EsB+âr^ËÙ #Ş9$â¢!ÂÌày’­ÏÃVr6KÌß&ÕH/XØï˜çß_ìĞ¢¼›™»E.í•<—–2)ƒ É¡-ÑrqV\0à<¢)–ä…<²Ëıšùø\'O\'œ×]>Úÿ\0f‰Wä+ÄB?8 /VÁ¡«Ëù”ÇJQ÷!ıJ»gà-6deyîğËÏŸÙ¨é½“è³ıÍÿ\0İ\"b¤®I¹Y5¼«Û²yĞ\rÍÔ‘ëŠ›Ò®–6	.fæØÆÆ&öY£I¯Ö/“rí%d@qüJukì÷K·µÙ×˜)‚L‹ŸæÑax9ò@7lr7»\0N@UTÖø©Œ\0¾zQâpmŠ/)îºyºÿ\0f±ıÇØ¹–àíéŞ_ì×+à­!Kàc8•’+;m7&éV+ğF[=µĞù:ÿ\0f•ƒ¬T,—Æ_ìÕt;òA]}]½àOÊ©M…uD—OÕô½$Ú]ÚÛi6÷gRœÅõƒiŒ‘Æ-Ã ílÑ$‹İ‘•ğFØşä¬¿ßn?şÍ6nÓ¤é®¾ç_ìÓ)‘ˆ*Ó\rìÔËş\nâ+‹]:Úk, ¶·T/–ğA)wå¤\00$:I@FW_Zá+VÀiš†f¶4µÔáƒi¯ì&\"æ/ß’Ä¥LjÛ‹FÏÜ{5Ò\'=ù¯>çOì×“û(Ñ¥AºëP•?±FFlò	¡M?ãëmRÂÊÿ\0T¼K]Bâ{{ØÚŞ4D×Bì»4-Œá^şãi¨+°•,h[î/¼ÓÎŒ¶¶½‹éZªjê$¹–h®¯+T:r<ÚÚFä{¢á‘p\'¢úçÑã†5ø‡Öµ\rjeÁXn\"\0ıÆ3AWŸBg·Ó,³êüO¸6@[»p?ûX™È)Æßê–2iÚn—£iwV6¶7İj	vò¼Én›AXb\n\0¶_\"IcÎ£;Y?àmüS] §³¢Îß–¸¬…å·ú\nËûÅıÇœWşYmş‚‹|ÿÙ','1359031326_670435344.jpg');
/*!40000 ALTER TABLE `newsshare_description` ENABLE KEYS */;
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
  `skype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','asfasfa','q@q.qq','3152353','','asdfasf','asfasfa','','','','','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','ĞĞ¿Ğ»Ğ°Ñ‚Ğ° Ğ¿Ñ€Ğ¸ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞµ','cod','asdfasf','asfasfa','','','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','flat.flat','',105.0000,0,0,0.0000,1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-01-30 23:10:52','2013-01-30 23:10:52',''),(2,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','dfg','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','io',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:23:09','2013-02-24 22:23:09','sdfsdf'),(3,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','sdfsdfsdf','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','flat.flat','sdfsdf',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:31:37','2013-02-24 22:31:37','sdfsdf'),(4,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','sdfsdfsdf','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','flat.flat','sdfsdf',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:35:13','2013-02-24 22:35:13','sdfsdf'),(5,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:37:43','2013-02-24 22:37:43','sdfsdf'),(6,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:56:20','2013-02-24 22:56:20','sdfsdf'),(7,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:22:28','2013-02-24 23:22:28','sdfsdf'),(8,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:22:49','2013-02-24 23:22:49','sdfsdf'),(9,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:23:24','2013-02-24 23:23:24','sdfsdf'),(10,0,'INV-2012-00',0,'ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Ğ‘Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¸Ğ¹ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Ğ£ĞºÑ€Ğ°Ğ¸Ğ½Ğ°',220,'Ğ’Ğ¸Ğ½Ğ½Ğ¸Ñ†Ğ°',3501,'','Ğ‘ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ°','free.free','',248.3400,14,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:32:21','2013-02-24 23:33:08','sdfsdf');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_album`
--

DROP TABLE IF EXISTS `order_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_album` (
  `order_album_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '1',
  `album_photo_format_id` int(3) NOT NULL DEFAULT '0',
  `album_photo_paper_id` int(3) NOT NULL DEFAULT '0',
  `album_photo_printmode_id` int(3) NOT NULL DEFAULT '0',
  `color_correction` int(2) NOT NULL DEFAULT '0',
  `cut_photo` int(2) NOT NULL DEFAULT '0',
  `white_border` int(2) NOT NULL DEFAULT '0',
  `red_eye` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_album`
--

LOCK TABLES `order_album` WRITE;
/*!40000 ALTER TABLE `order_album` DISABLE KEYS */;
INSERT INTO `order_album` VALUES (1,3,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(2,4,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(3,5,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(4,6,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(5,7,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(6,8,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(7,9,10,'30,31,32',8.34,5,0,0,0,0,0,0,0),(8,10,10,'30,31,32',8.34,5,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `order_album` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (1,10,14,1,'Ğ˜Ğ½ÑÑ‚Ñ€ÑƒĞºÑ†Ğ¸Ğ¸ Ğ¿Ğ¾ Ğ±Ğ°Ğ½ĞºĞ¾Ğ²ÑĞºĞ¾Ğ¼Ñƒ Ğ¿ĞµÑ€ĞµĞ²Ğ¾Ğ´Ñƒ\n\nĞ°Ğ¿Ğ°Ğ²Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°\n\nĞ—Ğ°ĞºĞ°Ğ· Ğ½Ğµ Ğ±ÑƒĞ´ĞµÑ‚ Ğ¾Ğ±Ñ€Ğ°Ğ±Ğ¾Ñ‚Ğ°Ğ½, Ğ¿Ğ¾ĞºĞ° Ğ´ĞµĞ½ÑŒĞ³Ğ¸ Ğ½Ğµ Ğ¿Ğ¾ÑÑ‚ÑƒĞ¿ÑÑ‚ Ğ½Ğ° Ğ½Ğ°Ñˆ Ñ€Ğ°ÑÑ‡ĞµÑ‚Ğ½Ñ‹Ğ¹ ÑÑ‡Ñ‘Ñ‚.','2013-02-24 23:33:08');
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,47,'HP LP3065','Ğ¢Ğ¾Ğ²Ğ°Ñ€ 21',1,100.0000,100.0000,0.0000,300),(2,2,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(3,3,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(4,4,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(5,5,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(6,6,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(7,7,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(8,8,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(9,9,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0),(10,10,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','Ğ¹Ñ†ÑƒĞ¹Ñ†',2,120.0000,240.0000,0.0000,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1,1,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','$100.00',100.0000,1),(2,1,'shipping','Ğ¤Ğ¸ĞºÑĞ¸Ñ€Ğ¾Ğ²Ğ°Ğ½Ğ½Ğ°Ñ ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸','$5.00',5.0000,3),(3,1,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','$105.00',105.0000,9),(4,2,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(5,2,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(6,2,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(7,3,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(8,3,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(9,3,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(10,4,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(11,4,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(12,4,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(13,5,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(14,5,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(15,5,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(16,6,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(17,6,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(18,6,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(19,7,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(20,7,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(21,7,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(22,8,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(23,8,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(24,8,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(25,9,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(26,9,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(27,9,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9),(28,10,'sub_total','Ğ¡ÑƒĞ¼Ğ¼Ğ°','240.00 Ğ³Ñ€Ğ½',240.0000,1),(29,10,'total','ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸Ğº','8.34 Ğ³Ñ€Ğ½',8.3400,2),(30,10,'total','Ğ˜Ñ‚Ğ¾Ğ³Ğ¾','248.34 Ğ³Ñ€Ğ½',248.3400,9);
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
INSERT INTO `product` VALUES (65,'4456','','','','','','','',1,5,'data/frame4.jpg',8,1,466.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 16:06:59','2013-02-02 16:46:54',7,0,1),(66,'Ñ†ÑƒĞº ','','','','','','','',1,5,'data/frame.jpg',9,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 16:11:40','2013-02-03 21:06:15',23,0,0),(67,'Ğ¿Ñ‹Ğ²','','','','','','','',1,5,'data/Corbis-42-29243612.jpg',9,1,253.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 17:45:58','0000-00-00 00:00:00',12,0,0),(68,'Ğ¹Ñ†ÑƒĞ¹Ñ†','','','','','','','',-1,5,'data/big.jpg',0,1,90.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:12:17','2013-02-05 23:17:29',133,4,1),(69,'hfg','','','','','','','',1,5,'data/Corbis-42-29965284.jpg',0,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:12:58','2013-02-03 10:11:03',2,2,0),(70,'5767','','','','','','','',1,5,'data/frame.jpg',0,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:13:47','0000-00-00 00:00:00',3,0,0);
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
INSERT INTO `product_discount` VALUES (442,66,1,1,2,321.0000,'2013-02-01','2013-02-28'),(446,68,1,2,1,120.0000,'2013-02-01','2013-02-28');
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
INSERT INTO `product_special` VALUES (444,66,1,0,300.0000,'2013-02-01','2013-02-28');
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
) ENGINE=MyISAM AUTO_INCREMENT=2225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(982,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(656,0,'account','account_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),(93,0,'voucher','voucher_sort_order','8',0),(94,0,'voucher','voucher_status','1',0),(102,0,'free_checkout','free_checkout_status','1',0),(103,0,'free_checkout','free_checkout_order_status_id','1',0),(2178,0,'config','config_sms_message','',0),(2179,0,'config','config_sms_gate_username','',0),(2176,0,'config','config_sms_to','',0),(2177,0,'config','config_sms_copy','',0),(2175,0,'config','config_sms_from','',0),(2174,0,'config','config_sms_gatename','testsms',0),(2173,0,'config','config_sms_alert','0',0),(2172,0,'config','config_fraud_status_id','14',0),(2170,0,'config','config_fraud_key','',0),(2171,0,'config','config_fraud_score','',0),(2168,0,'config','config_alert_emails','',0),(2169,0,'config','config_fraud_detection','0',0),(2167,0,'config','config_account_mail','0',0),(2165,0,'config','config_smtp_timeout','5',0),(2166,0,'config','config_alert_mail','0',0),(1972,0,'login','login_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:9;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(2164,0,'config','config_smtp_port','25',0),(2163,0,'config','config_smtp_password','',0),(2162,0,'config','config_smtp_username','',0),(2161,0,'config','config_smtp_host','',0),(2160,0,'config','config_mail_parameter','',0),(2159,0,'config','config_mail_protocol','mail',0),(1973,0,'cart','cart_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:9;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1986,0,'cr2htmlmodule','cr2htmlmodule_module','a:22:{i:0;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:3;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:4;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:5;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:6;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:7;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:8;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:9;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:10;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:11;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:12;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:13;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:14;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:15;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:16;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:17;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:18;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:19;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:20;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:21;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),(1982,0,'cr2htmlmodule','cr2htmlmodule_title3_1','',0),(1983,0,'cr2htmlmodule','cr2htmlmodule_header3','0',0),(1984,0,'cr2htmlmodule','cr2htmlmodule_borderless3','0',0),(1985,0,'cr2htmlmodule','cr2htmlmodule_code3_1','&lt;div class=&quot;title&quot;&gt;\r\n	Ğ¢ĞµÑ…. ĞŸĞ¾Ğ´Ğ´ĞµÑ€Ğ¶ĞºĞ°&lt;/div&gt;\r\n&lt;div id=&quot;support&quot;&gt;\r\n	&lt;span&gt;Ñ‚.&lt;/span&gt; 096 433-44-55&lt;br /&gt;\r\n	&lt;span&gt;Ñ‚.&lt;/span&gt; 067 455-65-21&lt;br /&gt;\r\n	&lt;span&gt;icq:&lt;/span&gt; 187-773-553&lt;br /&gt;\r\n	&lt;span&gt;email:&lt;/span&gt; &lt;a href=&quot;mailto:info@pechatnik.net&quot;&gt;info@pechatnik.net&lt;/a&gt;&lt;br /&gt;\r\n	&lt;a class=&quot;soc&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/fb.gif&quot; /&gt;&lt;/a&gt;&lt;a class=&quot;soc&quot; href=&quot;index.php?route=product/shop&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/vk.gif&quot; /&gt;&lt;/a&gt;\r\n	&lt;div id=&quot;helper&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;b&gt;ĞĞ½Ğ»Ğ°Ğ¹Ğ½&lt;/b&gt;&lt;br /&gt;\r\n		Ğ¿Ğ¾Ğ¼Ğ¾Ñ‰Ğ½Ğ¸Ğº&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1974,0,'cr2htmlmodule','cr2htmlmodule_title1_1','',0),(1975,0,'cr2htmlmodule','cr2htmlmodule_header1','0',0),(1976,0,'cr2htmlmodule','cr2htmlmodule_borderless1','1',0),(1977,0,'cr2htmlmodule','cr2htmlmodule_code1_1','',0),(1978,0,'cr2htmlmodule','cr2htmlmodule_title2_1','',0),(1979,0,'cr2htmlmodule','cr2htmlmodule_header2','0',0),(1980,0,'cr2htmlmodule','cr2htmlmodule_borderless2','0',0),(1981,0,'cr2htmlmodule','cr2htmlmodule_code2_1','&lt;div id=&quot;shop&quot; onmouseout=&quot;$(this).removeClass(\'hover\');&quot; onmouseover=&quot;$(this).addClass(\'hover\');&quot;&gt;\r\n	&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot; id=&quot;title_left&quot;&gt;ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½ Ñ„Ğ¾Ñ‚Ğ¾Ñ€Ğ°Ğ¼Ğ¾Ğº&lt;br /&gt;\r\n	Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ°Ğ»ÑŒĞ±Ğ¾Ğ¼Ğ¾Ğ²&lt;/a&gt;\r\n	&lt;div id=&quot;title_right&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class=&quot;clear&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div id=&quot;pic&quot;&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/blank.gif&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1584,0,'featuredalbum','product','',0),(1585,0,'featuredalbum','featuredalbum_product','65,66,69,68,70,67',0),(1586,0,'featuredalbum','featuredalbum_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1059,0,'featuredframe','product','Ñ€Ğ°',0),(1060,0,'featuredframe','featuredframe_product','65,66',0),(1061,0,'featuredframe','featuredframe_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1826,0,'welcome','welcome_module','a:2:{i:1;a:5:{s:11:\"description\";a:1:{i:1;s:1541:\"&lt;div class=&quot;text&quot;&gt;\r\n	&lt;h1&gt;\r\n		Multiple Photo Frames&lt;/h1&gt;\r\n	Have a browse through our complete range of multi photo frames you\'ll be stunned to see what we have on offer. Our multi photo frames have various different brands and styles held within especially some of the hugely popular and unique Umbra multi photo frames.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Multi photo frames are perfect for showing off various series of photographs together that either tell a story or you just wish to hold a collection of your favourite photographs within one multi photo frame.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	If you are looking for multi photo frames or collage photo frames then look no further. Here we have hand picked a fine range of multi photo frames for you to choose from. Our multi photo frames come in various styles and materials such as silver multi photo frames and&amp;nbsp;wooden multi photo frames, each holding&amp;nbsp;at least 3&amp;nbsp; spaces for your precious photographs.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	There are now many choices when it comes to displaying your precious pictures.&amp;nbsp; During the past decades, ready-made frames are limited in options.&amp;nbsp; Most are made of wood, plastic or composite resin in few colors and designs.&amp;nbsp; Nowadays, artists and designers collaborate on projects that result in frames in fantastic colors, different shapes and various sizes.&amp;nbsp; They can hold a wide range of photos, from single portraits to collages of many pictures combined.&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"6\";}i:2;a:5:{s:11:\"description\";a:1:{i:1;s:5353:\"&lt;div id=&quot;tizers&quot;&gt;\r\n	&lt;div class=&quot;cont t1&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				1.&lt;/div&gt;\r\n			&lt;span&gt;Ğ£Ğ´Ğ¾Ğ±Ğ½Ñ‹Ğ¹ Ğ¸Ğ½Ñ‚ĞµÑ€Ñ„ĞµĞ¹Ñ&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ¿Ğ¾ Ğ·Ğ°Ğ³Ñ€ÑƒĞ·ĞºĞµ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ¢ĞµĞ¿ĞµÑ€ÑŒ Ğ¼Ğ¾Ğ¶Ğ½Ğ¾ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸ ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾ Ğ¸ Ğ¿Ğ¾ Ğ¼Ğ¸Ğ½Ğ¸Ğ¼Ğ°Ğ»ÑŒĞ½Ğ¾Ğ¹ Ñ†ĞµĞ½Ğµ Ğ½Ğµ Ğ²Ñ‹Ñ…Ğ¾Ğ´Ñ&lt;br /&gt;\r\n				Ğ¸Ğ· Ğ´Ğ¾Ğ¼Ğ°.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t2&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				2.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¤Ğ¾Ñ‚Ğ¾Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ğ½Ğ° ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾Ğ¹&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ñ„Ğ¾Ñ‚Ğ¾Ğ±ÑƒĞ¼Ğ°Ğ³Ğµ&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ‘ÑƒĞ¼Ğ°Ğ³Ğ° Ñ‚Ğ°ĞºĞ¸Ñ… Ğ¸Ğ¼ĞµĞ½Ğ¸Ñ‚Ñ‹Ñ… Ğ¿Ñ€Ğ¾Ğ¸Ğ·Ğ²Ğ¾Ğ´Ğ¸Ñ‚ĞµĞ»ĞµĞ¹ ĞºĞ°Ğº Fuji Ğ¸ Kodak.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t3&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				3.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¡Ğ°Ğ¼Ğ°Ñ Ğ±Ñ‹ÑÑ‚Ñ€Ğ°Ñ ÑĞºĞ¾Ñ€Ğ¾ÑÑ‚ÑŒ&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Ğ”Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ° Ğ¿Ğ¾ Ğ”Ğ½ĞµĞ¿Ñ€Ğ¾Ğ¿ĞµÑ‚Ñ€Ğ¾Ğ²ÑĞºÑƒ Ğ±ĞµÑĞ¿Ğ»Ğ°Ñ‚Ğ½Ğ°Ñ. Ğ”Ğ»Ñ Ğ´Ñ€ÑƒĞ³Ğ¸Ñ… Ñ€ĞµĞ³Ğ¸Ğ¾Ğ½Ğ¾Ğ² ÑÑ‚Ğ¾Ğ¸Ğ¼Ğ¾ÑÑ‚ÑŒ Ğ´Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ¸ Ğ¼Ğ¾Ğ¶Ğ½Ğ¾ Ğ¿Ğ¾ÑĞ¼Ğ¾Ñ‚Ñ€ĞµÑ‚ÑŒ &lt;a href=&quot;#&quot;&gt;Ğ·Ğ´ĞµÑÑŒ&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t4&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				4.&lt;/div&gt;\r\n			&lt;span&gt;Ğ¡Ğ°Ğ¼Ğ°Ñ ĞĞ¸Ğ·ĞºĞ°Ñ Ñ†ĞµĞ½Ğ°&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸&lt;/span&gt;\r\n			&lt;h2&gt;\r\n				70 ĞºĞ¾Ğ¿ĞµĞµĞº&lt;/h2&gt;\r\n			&lt;p&gt;\r\n				Ğ¥Ğ¾Ñ‚Ğ¸Ñ‚Ğµ ĞµÑ‰Ñ‘ Ğ´ĞµÑˆĞµĞ²Ğ»Ğµ?&lt;br /&gt;\r\n				Ğ’Ğ°Ğ¼ &lt;a href=&quot;#&quot;&gt;ÑÑĞ´Ğ°&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;servises_cont&quot;&gt;\r\n	&lt;div id=&quot;instruction&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ˜Ğ½ÑÑ‚Ñ€ÑƒĞºÑ†Ğ¸Ñ&lt;/a&gt; Ğ¿Ğ¾ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ¸Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚&lt;/div&gt;\r\n	&lt;div id=&quot;time&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ“Ğ¾Ñ‚Ğ¾Ğ²Ğ½Ğ¾ÑÑ‚ÑŒ Ğ·Ğ°ĞºĞ°Ğ·Ğ°&lt;/a&gt;ÑÑ€ĞµĞ´Ğ½ĞµĞµ Ğ²Ñ€ĞµĞ¼Ñ Ğ²Ñ‹Ğ¿Ğ¾Ğ»Ğ½ĞµĞ½Ğ¸Ğµ Ğ·Ğ°ĞºĞ°Ğ·Ğ° - 3 Ñ‡Ğ°ÑĞ°&lt;/div&gt;\r\n	&lt;div id=&quot;delivery&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Ğ”Ğ¾ÑÑ‚Ğ°Ğ²ĞºĞ° Ğ¸ Ğ¾Ğ¿Ğ»Ğ°Ñ‚Ğ°&lt;/a&gt;Ğ²Ğ°ÑˆĞ¸Ñ… Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğº Ğ²Ğ°Ğ¼ Ğ´Ğ¾Ğ¼Ğ¾Ğ¹&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--SERVISES END--&gt;&lt;!--MAIN TEXT--&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;main_text&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;top&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div class=&quot;text&quot;&gt;\r\n					&lt;h1&gt;\r\n						Ğ˜Ğ½Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ†Ğ¸Ñ Ğ¾ ÑĞµÑ€Ğ²Ğ¸ÑĞµ&lt;/h1&gt;\r\n					Ğ¤Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ñ Â«ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸ĞºÂ» Ğ¿Ñ€ĞµĞ´Ğ»Ğ°Ğ³Ğ°ĞµÑ‚ Ğ’Ğ°Ğ¼ Ğ²Ğ¾ÑĞ¿Ğ¾Ğ»ÑŒĞ·Ğ¾Ğ²Ğ°Ñ‚ÑŒÑÑ ÑƒÑĞ»ÑƒĞ³Ğ¾Ğ¹ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚. ĞŸĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾ÑĞ½Ğ¾Ğ²Ğ½Ñ‹Ğ¼ Ğ½Ğ°Ğ¿Ñ€Ğ°Ğ²Ğ»ĞµĞ½Ğ¸ĞµĞ¼ Ñ€Ğ°Ğ·Ğ²Ğ¸Ñ‚Ğ¸Ñ Ğ½Ğ°ÑˆĞµĞ¹ Ñ„Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ğ¸.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					ĞŸÑ€Ğ¸Ñ‘Ğ¼ Ğ¸ Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¾ÑÑƒÑ‰ĞµÑÑ‚Ğ²Ğ»ÑĞµÑ‚ÑÑ Ğ² ĞºÑ€ÑƒĞ³Ğ»Ğ¾ÑÑƒÑ‚Ğ¾Ñ‡Ğ½Ğ¾Ğ¼ Ñ€ĞµĞ¶Ğ¸Ğ¼Ğµ. ĞœÑ‹ Ğ³Ğ°Ñ€Ğ°Ğ½Ñ‚Ğ¸Ñ€ÑƒĞµĞ¼ ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½ÑƒÑ Ğ¿ĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¸ ÑĞ²Ğ¾ĞµĞ²Ñ€ĞµĞ¼ĞµĞ½Ğ½Ğ¾Ğµ Ğ²Ñ‹Ğ¿Ğ¾Ğ»Ğ½ĞµĞ½Ğ¸Ğµ Ğ’Ğ°ÑˆĞµĞ³Ğ¾ Ğ·Ğ°ĞºĞ°Ğ·Ğ°. Ğ”Ğ»Ñ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ğ¸ÑĞ¿Ğ¾Ğ»ÑŒĞ·ÑƒĞµÑ‚ÑÑ Ğ²Ñ‹ÑĞ¾ĞºĞ¾ĞºĞ°Ñ‡ĞµÑÑ‚Ğ²ĞµĞ½Ğ½Ğ¾Ğµ Ğ¾Ğ±Ğ¾Ñ€ÑƒĞ´Ğ¾Ğ²Ğ°Ğ½Ğ¸Ğµ Noritsu, ĞºĞ¾Ñ‚Ğ¾Ñ€Ğ¾Ğµ Ğ¿Ğ¾Ğ·Ğ²Ğ¾Ğ»ÑĞµÑ‚ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸ Ğ»ÑĞ±Ñ‹Ğ¼ Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ‚Ğ¾Ğ¼ Ğ¾Ñ‚ 9Ñ…13 Ğ´Ğ¾ 30Ñ…90. Ğ”Ğ°Ğ½Ğ½Ğ¾Ğµ Ğ¾Ğ±Ğ¾Ñ€ÑƒĞ´Ğ¾Ğ²Ğ°Ğ½Ğ¸Ğµ Ğ¿Ğ¾Ğ·Ğ²Ğ¾Ğ»ÑĞµÑ‚ Ğ½Ğ°Ğ¼ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ°Ñ‚ÑŒ Ğ² Ñ‡Ğ°Ñ Ğ´Ğ¾ 1000 Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ„Ğ¾Ñ€Ğ¼Ğ°Ñ‚Ğ¾Ğ¼ 10Ñ…15.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Ğ”Ğ»Ñ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ğ¸ÑĞ¿Ğ¾Ğ»ÑŒĞ·ÑƒĞµÑ‚ÑÑ Ñ„Ğ¾Ñ‚Ğ¾Ğ±ÑƒĞ¼Ğ°Ğ³Ğ° Ñ„Ğ¸Ñ€Ğ¼Ñ‹ Kodak, ĞºĞ¾Ñ‚Ğ¾Ñ€Ğ°Ñ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾Ğ´Ğ½Ğ¸Ğ¼ Ğ¸Ğ· Ğ»Ğ¸Ğ´ĞµÑ€Ğ¾Ğ² Ğ½Ğ° Ñ€Ñ‹Ğ½ĞºĞµ Ğ¼Ğ°Ñ‚ĞµÑ€Ğ¸Ğ°Ğ»Ğ¾Ğ² Ğ´Ğ»Ñ Ñ„Ğ¾Ñ‚Ğ¾Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸. Ğ“Ğ°Ñ€Ğ°Ğ½Ñ‚Ğ¸Ñ Ñ„Ğ¸Ñ€Ğ¼Ñ‹ Kodak Ğ½Ğ° Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¸, ÑĞ´ĞµĞ»Ğ°Ğ½Ğ½Ñ‹Ğµ Ğ¿Ñ€Ğ¸ ÑĞ¾Ğ±Ğ»ÑĞ´ĞµĞ½Ğ¸Ğ¸ Ñ‚ĞµÑ…Ğ½Ğ¾Ğ»Ğ¾Ğ³Ğ¸Ñ‡ĞµÑĞºĞ¾Ğ³Ğ¾ Ğ¿Ñ€Ğ¾Ñ†ĞµÑÑĞ°, Ğ´Ğ¾ÑÑ‚Ğ¸Ğ³Ğ°ĞµÑ‚ 100 Ğ»ĞµÑ‚ Ğ¿Ñ€Ğ¸ Ğ½Ğ¾Ñ€Ğ¼Ğ°Ğ»ÑŒĞ½Ñ‹Ñ… ÑƒÑĞ»Ğ¾Ğ²Ğ¸ÑÑ… Ñ…Ñ€Ğ°Ğ½ĞµĞ½Ğ¸Ñ. Ğ¤Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ñ Â«ĞŸĞµÑ‡Ğ°Ñ‚Ğ½Ğ¸ĞºÂ» Ğ¿Ñ€ĞµĞ´Ğ»Ğ°Ğ³Ğ°ĞµÑ‚ Ğ’Ğ°Ğ¼ Ğ²Ğ¾ÑĞ¿Ğ¾Ğ»ÑŒĞ·Ğ¾Ğ²Ğ°Ñ‚ÑŒÑÑ ÑƒÑĞ»ÑƒĞ³Ğ¾Ğ¹ Ğ¿ĞµÑ‡Ğ°Ñ‚Ğ¸ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚. ĞŸĞµÑ‡Ğ°Ñ‚ÑŒ Ñ„Ğ¾Ñ‚Ğ¾Ğ³Ñ€Ğ°Ñ„Ğ¸Ğ¹ Ñ‡ĞµÑ€ĞµĞ· Ğ˜Ğ½Ñ‚ĞµÑ€Ğ½ĞµÑ‚ ÑĞ²Ğ»ÑĞµÑ‚ÑÑ Ğ¾ÑĞ½Ğ¾Ğ²Ğ½Ñ‹Ğ¼ Ğ½Ğ°Ğ¿Ñ€Ğ°Ğ²Ğ»ĞµĞ½Ğ¸ĞµĞ¼ Ñ€Ğ°Ğ·Ğ²Ğ¸Ñ‚Ğ¸Ñ Ğ½Ğ°ÑˆĞµĞ¹ Ñ„Ğ¾Ñ‚Ğ¾Ğ»Ğ°Ğ±Ğ¾Ñ€Ğ°Ñ‚Ğ¾Ñ€Ğ¸Ğ¸.&lt;/div&gt;\r\n				&lt;div class=&quot;bott&quot;&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/td&gt;\r\n			&lt;td class=&quot;right&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;div class=&quot;clear&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1971,0,'specialnew','specialnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1969,0,'categorynew','categorynew_module','a:4:{i:0;a:5:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:1;a:5:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:2;a:5:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:3;a:5:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(2158,0,'config','config_image_cart_height','47',0),(2156,0,'config','config_image_wishlist_height','47',0),(2157,0,'config','config_image_cart_width','47',0),(2155,0,'config','config_image_wishlist_width','47',0),(2154,0,'config','config_image_compare_height','90',0),(2153,0,'config','config_image_compare_width','90',0),(2152,0,'config','config_image_related_height','80',0),(2151,0,'config','config_image_related_width','80',0),(1970,0,'latestnew','latestnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(2150,0,'config','config_image_additional_height','74',0),(2149,0,'config','config_image_additional_width','74',0),(2148,0,'config','config_image_product_height','100',0),(2147,0,'config','config_image_product_width','110',0),(2146,0,'config','config_image_popup_height','500',0),(2145,0,'config','config_image_popup_width','500',0),(2144,0,'config','config_image_thumb_height','300',0),(2143,0,'config','config_image_thumb_width','300',0),(2142,0,'config','config_image_category_height','110',0),(2141,0,'config','config_image_category_width','110',0),(2140,0,'config','config_icon','data/cart.png',0),(2139,0,'config','config_logo','data/logo.png',0),(2138,0,'config','config_return_status_id','2',0),(2136,0,'config','config_affiliate_id','4',0),(2137,0,'config','config_commission','5',0),(2134,0,'config','config_stock_checkout','1',0),(2135,0,'config','config_stock_status_id','5',0),(2133,0,'config','config_stock_warning','0',0),(2132,0,'config','config_stock_display','0',0),(2131,0,'config','config_complete_status_id','5',0),(2130,0,'config','config_order_status_id','1',0),(2129,0,'config','config_invoice_prefix','INV-2012-00',0),(2128,0,'config','config_order_edit','100',0),(2127,0,'config','config_checkout_id','5',0),(2126,0,'config','config_guest_checkout','1',0),(2125,0,'config','config_cart_weight','0',0),(2124,0,'config','config_account_id','0',0),(2123,0,'config','config_customer_price','0',0),(2122,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(2121,0,'config','config_customer_group_id','1',0),(2120,0,'config','config_customer_online','0',0),(2119,0,'config','config_tax_customer','shipping',0),(2118,0,'config','config_tax_default','shipping',0),(2116,0,'config','config_tax','0',0),(2117,0,'config','config_vat','0',0),(2115,0,'config','config_voucher_max','1000',0),(2114,0,'config','config_voucher_min','1',0),(2113,0,'config','config_upload_allowed','jpg, JPG, jpeg, gif, png, txt',0),(2111,0,'config','config_review_status','0',0),(2112,0,'config','config_download','0',0),(2110,0,'config','config_product_count','0',0),(2109,0,'config','config_admin_limit','20',0),(2108,0,'config','config_catalog_limit','15',0),(2107,0,'config','config_weight_class_id','1',0),(2106,0,'config','config_length_class_id','1',0),(2105,0,'config','config_currency_auto','0',0),(2104,0,'config','config_currency','grn',0),(2103,0,'config','config_admin_language','ru',0),(2102,0,'config','config_language','ru',0),(2101,0,'config','config_zone_id','3491',0),(2100,0,'config','config_country_id','220',0),(2099,0,'config','config_layout_id','1',0),(2098,0,'config','config_template','default',0),(2097,0,'config','config_meta_description','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0),(2096,0,'config','config_title','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0),(2095,0,'config','config_fax','',0),(2094,0,'config','config_telephone','123456789',0),(2093,0,'config','config_email','vittalik@ukr.net',0),(2092,0,'config','config_address','ĞĞ´Ñ€ĞµÑ',0),(2091,0,'config','config_owner','ĞœĞ¾Ğµ Ğ˜Ğ¼Ñ',0),(2090,0,'config','config_name','ĞœĞ¾Ğ¹ ĞœĞ°Ğ³Ğ°Ğ·Ğ¸Ğ½',0),(2180,0,'config','config_sms_gate_password','',0),(2181,0,'config','config_use_ssl','0',0),(2182,0,'config','config_seo_url','1',0),(2183,0,'config','config_seo_url_type','seo_pro',0),(2184,0,'config','config_seo_url_include_path','1',0),(2185,0,'config','config_seo_url_postfix','',0),(2186,0,'config','config_maintenance','0',0),(2187,0,'config','config_encryption','515711997217bb8c619e05bca7a956d1',0),(2188,0,'config','config_compression','0',0),(2189,0,'config','config_error_display','1',0),(2190,0,'config','config_error_log','1',0),(2191,0,'config','config_error_filename','error.txt',0),(2192,0,'config','config_google_analytics','',0),(2199,0,'free','free_status','1',0),(2198,0,'free','free_geo_zone_id','0',0),(2197,0,'free','free_total','80',0),(2200,0,'free','free_sort_order','',0),(2211,0,'bank_transfer','bank_transfer_status','1',0),(2210,0,'bank_transfer','bank_transfer_geo_zone_id','0',0),(2209,0,'bank_transfer','bank_transfer_order_status_id','14',0),(2208,0,'bank_transfer','bank_transfer_total','',0),(2207,0,'bank_transfer','bank_transfer_bank_1','Ğ°Ğ¿Ğ°Ğ²Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°Ñ‚Ğ²Ğ°',0),(2212,0,'bank_transfer','bank_transfer_sort_order','',0),(2219,0,'news','news_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(2223,0,'newsarticle','newsarticle_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(2224,0,'newsshare','newsshare_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"5\";}}',1);
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
INSERT INTO `tax_rate` VALUES (86,3,'ĞĞ”Ğ¡ 18%',18.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
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
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (40,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(41,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(42,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(43,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(44,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(45,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(46,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(47,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(48,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(49,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(50,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(51,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(52,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(53,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(54,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(55,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(56,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(57,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(58,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(59,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(60,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(61,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(62,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(63,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(64,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(65,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(66,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(67,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(68,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(69,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(70,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(71,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(72,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(73,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(74,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(75,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(76,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(77,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(78,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(79,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(80,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(81,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(82,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(83,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(84,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(85,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(86,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(87,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(88,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(89,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(90,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(91,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(92,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(93,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(94,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(95,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(96,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(97,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(98,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(99,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(100,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(101,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(102,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(103,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(104,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(105,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(106,'DEFAULT - PRICE -2 PERCENT -0 PHOTO -30SUM -2\n'),(107,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(108,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(109,'DEFAULT - PRICE -2 PERCENT -4 PHOTO -51SUM -2.08\n'),(110,'DEFAULT - PRICE -2 PERCENT -4 PHOTO -52SUM -2.08\n'),(111,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(112,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(113,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(114,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(115,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(116,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(117,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(118,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(119,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(120,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(121,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(122,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(123,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(124,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(125,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(126,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(127,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(128,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(129,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(130,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(131,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(132,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(133,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(134,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(135,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(136,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(137,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(138,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(139,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(140,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(141,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(142,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(143,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(144,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(145,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(146,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(147,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(148,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(149,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(150,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(151,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(152,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(153,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(154,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(155,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(156,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(157,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(158,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(159,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(160,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(161,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(162,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(163,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(164,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(165,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(166,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(167,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(168,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(169,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(170,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(171,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(172,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(173,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(174,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(175,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(176,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(177,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(178,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(179,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(180,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(181,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(182,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(183,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(184,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(185,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(186,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(187,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(188,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(189,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(190,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(191,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(192,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(193,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(194,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(195,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(196,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(197,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(198,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(199,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(200,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(201,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(202,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(203,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(204,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(205,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(206,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(207,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(208,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(209,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(210,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(211,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(212,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -51SUM -1.5\n'),(213,'DEFAULT - PRICE -1.5 PERCENT -0 PHOTO -52SUM -1.5\n'),(214,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(215,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(216,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(217,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(218,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(219,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(220,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(221,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(222,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(223,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(224,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(225,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(226,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(227,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(228,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(229,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(230,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(231,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(232,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(233,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(234,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(235,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(236,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(237,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(238,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(239,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(240,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(241,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(242,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(243,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(244,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(245,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(246,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(247,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(248,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(249,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(250,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(251,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(252,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(253,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(254,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(255,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(256,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(257,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(258,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(259,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(260,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(261,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(262,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(263,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(264,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(265,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(266,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(267,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(268,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(269,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(270,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(271,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(272,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(273,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(274,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(275,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(276,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(277,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(278,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(279,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(280,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(281,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(282,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(283,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(284,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(285,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(286,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(287,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(288,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(289,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(290,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(291,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(292,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(293,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(294,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(295,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(296,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(297,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(298,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(299,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(300,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(301,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(302,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(303,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(304,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(305,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(306,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(307,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(308,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(309,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(310,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(311,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(312,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(313,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(314,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(315,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(316,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(317,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(318,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(319,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(320,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(321,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(322,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(323,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(324,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(325,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(326,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(327,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(328,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(329,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(330,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(331,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(332,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(333,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(334,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(335,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(336,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(337,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(338,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(339,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(340,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(341,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(342,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(343,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(344,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(345,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(346,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(347,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(348,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(349,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(350,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(351,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(352,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(353,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(354,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(355,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(356,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(357,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(358,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(359,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(360,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(361,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(362,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(363,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(364,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(365,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(366,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(367,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(368,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(369,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(370,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(371,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(372,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(373,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(374,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(375,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(376,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(377,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(378,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(379,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(380,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(381,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(382,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(383,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(384,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(385,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(386,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(387,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(388,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(389,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(390,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(391,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(392,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(393,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(394,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(395,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(396,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(397,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(398,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(399,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(400,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(401,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(402,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(403,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(404,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(405,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(406,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(407,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(408,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(409,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(410,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(411,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(412,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(413,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(414,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(415,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(416,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(417,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(418,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(419,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(420,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(421,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(422,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(423,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(424,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(425,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(426,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(427,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(428,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(429,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(430,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(431,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(432,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(433,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(434,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(435,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(436,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(437,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(438,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(439,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(440,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(441,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(442,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(443,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(444,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(445,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(446,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(447,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(448,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(449,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(450,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(451,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(452,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(453,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(454,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(455,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(456,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(457,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(458,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(459,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(460,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(461,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(462,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(463,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(464,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(465,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(466,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(467,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(468,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(469,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(470,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(471,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(472,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(473,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(474,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(475,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(476,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(477,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(478,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(479,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(480,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(481,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(482,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(483,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(484,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(485,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(486,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(487,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(488,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(489,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(490,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(491,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(492,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(493,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(494,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(495,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(496,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(497,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(498,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(499,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(500,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(501,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(502,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(503,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(504,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(505,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(506,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(507,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n'),(508,'DEFAULT - PRICE -1.5 PERCENT -4 PHOTO -30SUM -1.56\n'),(509,'NOT DEFAULT - PRICE -1.5 PERCENT -5 PHOTO -31SUM -1.58\n'),(510,'NOT DEFAULT - PRICE -5 PERCENT -4 PHOTO -32SUM -5.2\n');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
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
INSERT INTO `user_group` VALUES (1,'Ğ“Ğ»Ğ°Ğ²Ğ½Ñ‹Ğ¹ Ğ°Ğ´Ğ¼Ğ¸Ğ½Ğ¸ÑÑ‚Ñ€Ğ°Ñ‚Ğ¾Ñ€','a:2:{s:6:\"access\";a:140:{i:0;s:12:\"album/format\";i:1;s:11:\"album/paper\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:16:\"catalog/category\";i:5;s:16:\"catalog/download\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:16:\"catalog/material\";i:9;s:14:\"catalog/option\";i:10;s:13:\"catalog/price\";i:11;s:15:\"catalog/product\";i:12;s:14:\"catalog/review\";i:13;s:12:\"catalog/size\";i:14;s:18:\"common/filemanager\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:14:\"extension/news\";i:20;s:21:\"extension/newsarticle\";i:21;s:19:\"extension/newsshare\";i:22;s:17:\"extension/payment\";i:23;s:18:\"extension/shipping\";i:24;s:15:\"extension/total\";i:25;s:16:\"feed/google_base\";i:26;s:19:\"feed/google_sitemap\";i:27;s:20:\"localisation/country\";i:28;s:21:\"localisation/currency\";i:29;s:21:\"localisation/geo_zone\";i:30;s:21:\"localisation/language\";i:31;s:25:\"localisation/length_class\";i:32;s:25:\"localisation/order_status\";i:33;s:26:\"localisation/return_action\";i:34;s:26:\"localisation/return_reason\";i:35;s:26:\"localisation/return_status\";i:36;s:25:\"localisation/stock_status\";i:37;s:22:\"localisation/tax_class\";i:38;s:21:\"localisation/tax_rate\";i:39;s:25:\"localisation/weight_class\";i:40;s:17:\"localisation/zone\";i:41;s:14:\"module/account\";i:42;s:16:\"module/affiliate\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:11:\"module/cart\";i:47;s:15:\"module/category\";i:48;s:18:\"module/categorynew\";i:49;s:20:\"module/cr2htmlmodule\";i:50;s:15:\"module/featured\";i:51;s:20:\"module/featuredalbum\";i:52;s:20:\"module/featuredframe\";i:53;s:18:\"module/google_talk\";i:54;s:18:\"module/information\";i:55;s:13:\"module/latest\";i:56;s:16:\"module/latestnew\";i:57;s:12:\"module/login\";i:58;s:11:\"module/news\";i:59;s:18:\"module/newsarticle\";i:60;s:16:\"module/newsshare\";i:61;s:16:\"module/slideshow\";i:62;s:14:\"module/special\";i:63;s:17:\"module/specialnew\";i:64;s:12:\"module/store\";i:65;s:14:\"module/welcome\";i:66;s:24:\"payment/authorizenet_aim\";i:67;s:21:\"payment/bank_transfer\";i:68;s:14:\"payment/cheque\";i:69;s:11:\"payment/cod\";i:70;s:21:\"payment/free_checkout\";i:71;s:14:\"payment/liqpay\";i:72;s:20:\"payment/moneybookers\";i:73;s:14:\"payment/nochex\";i:74;s:15:\"payment/paymate\";i:75;s:16:\"payment/paypoint\";i:76;s:13:\"payment/payza\";i:77;s:26:\"payment/perpetual_payments\";i:78;s:14:\"payment/pp_pro\";i:79;s:17:\"payment/pp_pro_uk\";i:80;s:19:\"payment/pp_standard\";i:81;s:15:\"payment/sagepay\";i:82;s:22:\"payment/sagepay_direct\";i:83;s:18:\"payment/sagepay_us\";i:84;s:19:\"payment/twocheckout\";i:85;s:28:\"payment/web_payment_software\";i:86;s:16:\"payment/worldpay\";i:87;s:27:\"report/affiliate_commission\";i:88;s:22:\"report/customer_credit\";i:89;s:22:\"report/customer_online\";i:90;s:21:\"report/customer_order\";i:91;s:22:\"report/customer_reward\";i:92;s:24:\"report/product_purchased\";i:93;s:21:\"report/product_viewed\";i:94;s:18:\"report/sale_coupon\";i:95;s:17:\"report/sale_order\";i:96;s:18:\"report/sale_return\";i:97;s:20:\"report/sale_shipping\";i:98;s:15:\"report/sale_tax\";i:99;s:14:\"sale/affiliate\";i:100;s:12:\"sale/contact\";i:101;s:11:\"sale/coupon\";i:102;s:13:\"sale/customer\";i:103;s:23:\"sale/customer_blacklist\";i:104;s:19:\"sale/customer_group\";i:105;s:10:\"sale/order\";i:106;s:11:\"sale/return\";i:107;s:12:\"sale/voucher\";i:108;s:18:\"sale/voucher_theme\";i:109;s:12:\"setting/menu\";i:110;s:15:\"setting/setting\";i:111;s:13:\"setting/store\";i:112;s:16:\"shipping/auspost\";i:113;s:17:\"shipping/citylink\";i:114;s:14:\"shipping/fedex\";i:115;s:13:\"shipping/flat\";i:116;s:13:\"shipping/free\";i:117;s:13:\"shipping/item\";i:118;s:23:\"shipping/parcelforce_48\";i:119;s:15:\"shipping/pickup\";i:120;s:19:\"shipping/royal_mail\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:12:\"total/coupon\";i:127;s:12:\"total/credit\";i:128;s:14:\"total/handling\";i:129;s:16:\"total/klarna_fee\";i:130;s:19:\"total/low_order_fee\";i:131;s:12:\"total/reward\";i:132;s:14:\"total/shipping\";i:133;s:15:\"total/sub_total\";i:134;s:9:\"total/tax\";i:135;s:11:\"total/total\";i:136;s:13:\"total/voucher\";i:137;s:9:\"user/user\";i:138;s:20:\"user/user_permission\";i:139;s:16:\"module/newsshare\";}s:6:\"modify\";a:140:{i:0;s:12:\"album/format\";i:1;s:11:\"album/paper\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:16:\"catalog/category\";i:5;s:16:\"catalog/download\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:16:\"catalog/material\";i:9;s:14:\"catalog/option\";i:10;s:13:\"catalog/price\";i:11;s:15:\"catalog/product\";i:12;s:14:\"catalog/review\";i:13;s:12:\"catalog/size\";i:14;s:18:\"common/filemanager\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:14:\"extension/news\";i:20;s:21:\"extension/newsarticle\";i:21;s:19:\"extension/newsshare\";i:22;s:17:\"extension/payment\";i:23;s:18:\"extension/shipping\";i:24;s:15:\"extension/total\";i:25;s:16:\"feed/google_base\";i:26;s:19:\"feed/google_sitemap\";i:27;s:20:\"localisation/country\";i:28;s:21:\"localisation/currency\";i:29;s:21:\"localisation/geo_zone\";i:30;s:21:\"localisation/language\";i:31;s:25:\"localisation/length_class\";i:32;s:25:\"localisation/order_status\";i:33;s:26:\"localisation/return_action\";i:34;s:26:\"localisation/return_reason\";i:35;s:26:\"localisation/return_status\";i:36;s:25:\"localisation/stock_status\";i:37;s:22:\"localisation/tax_class\";i:38;s:21:\"localisation/tax_rate\";i:39;s:25:\"localisation/weight_class\";i:40;s:17:\"localisation/zone\";i:41;s:14:\"module/account\";i:42;s:16:\"module/affiliate\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:11:\"module/cart\";i:47;s:15:\"module/category\";i:48;s:18:\"module/categorynew\";i:49;s:20:\"module/cr2htmlmodule\";i:50;s:15:\"module/featured\";i:51;s:20:\"module/featuredalbum\";i:52;s:20:\"module/featuredframe\";i:53;s:18:\"module/google_talk\";i:54;s:18:\"module/information\";i:55;s:13:\"module/latest\";i:56;s:16:\"module/latestnew\";i:57;s:12:\"module/login\";i:58;s:11:\"module/news\";i:59;s:18:\"module/newsarticle\";i:60;s:16:\"module/newsshare\";i:61;s:16:\"module/slideshow\";i:62;s:14:\"module/special\";i:63;s:17:\"module/specialnew\";i:64;s:12:\"module/store\";i:65;s:14:\"module/welcome\";i:66;s:24:\"payment/authorizenet_aim\";i:67;s:21:\"payment/bank_transfer\";i:68;s:14:\"payment/cheque\";i:69;s:11:\"payment/cod\";i:70;s:21:\"payment/free_checkout\";i:71;s:14:\"payment/liqpay\";i:72;s:20:\"payment/moneybookers\";i:73;s:14:\"payment/nochex\";i:74;s:15:\"payment/paymate\";i:75;s:16:\"payment/paypoint\";i:76;s:13:\"payment/payza\";i:77;s:26:\"payment/perpetual_payments\";i:78;s:14:\"payment/pp_pro\";i:79;s:17:\"payment/pp_pro_uk\";i:80;s:19:\"payment/pp_standard\";i:81;s:15:\"payment/sagepay\";i:82;s:22:\"payment/sagepay_direct\";i:83;s:18:\"payment/sagepay_us\";i:84;s:19:\"payment/twocheckout\";i:85;s:28:\"payment/web_payment_software\";i:86;s:16:\"payment/worldpay\";i:87;s:27:\"report/affiliate_commission\";i:88;s:22:\"report/customer_credit\";i:89;s:22:\"report/customer_online\";i:90;s:21:\"report/customer_order\";i:91;s:22:\"report/customer_reward\";i:92;s:24:\"report/product_purchased\";i:93;s:21:\"report/product_viewed\";i:94;s:18:\"report/sale_coupon\";i:95;s:17:\"report/sale_order\";i:96;s:18:\"report/sale_return\";i:97;s:20:\"report/sale_shipping\";i:98;s:15:\"report/sale_tax\";i:99;s:14:\"sale/affiliate\";i:100;s:12:\"sale/contact\";i:101;s:11:\"sale/coupon\";i:102;s:13:\"sale/customer\";i:103;s:23:\"sale/customer_blacklist\";i:104;s:19:\"sale/customer_group\";i:105;s:10:\"sale/order\";i:106;s:11:\"sale/return\";i:107;s:12:\"sale/voucher\";i:108;s:18:\"sale/voucher_theme\";i:109;s:12:\"setting/menu\";i:110;s:15:\"setting/setting\";i:111;s:13:\"setting/store\";i:112;s:16:\"shipping/auspost\";i:113;s:17:\"shipping/citylink\";i:114;s:14:\"shipping/fedex\";i:115;s:13:\"shipping/flat\";i:116;s:13:\"shipping/free\";i:117;s:13:\"shipping/item\";i:118;s:23:\"shipping/parcelforce_48\";i:119;s:15:\"shipping/pickup\";i:120;s:19:\"shipping/royal_mail\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:12:\"total/coupon\";i:127;s:12:\"total/credit\";i:128;s:14:\"total/handling\";i:129;s:16:\"total/klarna_fee\";i:130;s:19:\"total/low_order_fee\";i:131;s:12:\"total/reward\";i:132;s:14:\"total/shipping\";i:133;s:15:\"total/sub_total\";i:134;s:9:\"total/tax\";i:135;s:11:\"total/total\";i:136;s:13:\"total/voucher\";i:137;s:9:\"user/user\";i:138;s:20:\"user/user_permission\";i:139;s:16:\"module/newsshare\";}}'),(10,'Ğ”ĞµĞ¼Ğ¾Ğ½ÑÑ‚Ñ€Ğ°Ñ†Ğ¸Ñ','');
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
INSERT INTO `weight_class` VALUES (1,1.00000000),(2,1000.00000000);
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

-- Dump completed on 2013-02-25 20:43:08
