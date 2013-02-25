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
INSERT INTO `address` VALUES (1,1,'павы','ывап','','','','','','киев','',220,3484),(2,2,'wrewer','werwer','','','','','','fwefw','',220,3505),(3,3,'test','Test','','','','','','fdghfdg','',220,3501),(4,4,'sdfsdf','sdfsdf','','','','','','fgjhfghj','',187,2922),(5,5,'asdfasf','asfasfa','','','','','','dfgdfgdfg','',220,3501),(6,6,'werwer','werwer','','','','','','sdfsdf','',220,3505);
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
INSERT INTO `album_photo_cut` VALUES (1,'Без полей'),(2,'С полями');
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
INSERT INTO `album_photo_paper` VALUES (1,'Глянцевая',0,'0'),(2,'Матовая1',4,'1'),(3,'sdf',5,'123'),(4,'123',6,'12');
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
INSERT INTO `album_photo_printmode` VALUES (1,'Без эффектов'),(2,'С эффектами');
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
INSERT INTO `attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed'),(12,1,'Рамка1');
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
INSERT INTO `attribute_group_description` VALUES (3,1,'Память'),(4,1,'Technical'),(5,1,'Материнская плата'),(6,1,'Процессор'),(7,1,'Рамки');
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
INSERT INTO `category_description` VALUES (59,1,'Рамки','','','','',''),(60,1,'Фотоальбомы','','','','',''),(61,1,'Рамки 10х15','','','','',''),(62,1,'Рамки 15х21','','','','',''),(63,1,'Рамки 21х30','','','','',''),(64,1,'Рамки из дерева','','','','',''),(65,1,'Рамки из пластика','','','','',''),(66,1,'Фотоальбомы 10х15','','','','',''),(67,1,'Фотоальбомы 21х30','','','','','');
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
INSERT INTO `country` VALUES (1,'Афганистан','AF','AFG','',0,1),(2,'Албания','AL','ALB','',0,1),(3,'Алжир','DZ','DZA','',0,1),(4,'Восточное Самоа','AS','ASM','',0,1),(5,'Андорра','AD','AND','',0,1),(6,'Ангола','AO','AGO','',0,1),(7,'Ангилья','AI','AIA','',0,1),(8,'Антарктида','AQ','ATA','',0,1),(9,'Антигуа и Барбуда','AG','ATG','',0,1),(10,'Аргентина','AR','ARG','',0,1),(11,'Армения','AM','ARM','',0,1),(12,'Аруба','AW','ABW','',0,1),(13,'Австралия','AU','AUS','',0,1),(14,'Австрия','AT','AUT','',0,1),(15,'Азербайджан','AZ','AZE','',0,1),(16,'Багамские острова','BS','BHS','',0,1),(17,'Бахрейн','BH','BHR','',0,1),(18,'Бангладеш','BD','BGD','',0,1),(19,'Барбадос','BB','BRB','',0,1),(20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(21,'Бельгия','BE','BEL','',0,1),(22,'Белиз','BZ','BLZ','',0,1),(23,'Бенин','BJ','BEN','',0,1),(24,'Бермудские острова','BM','BMU','',0,1),(25,'Бутан','BT','BTN','',0,1),(26,'Боливия','BO','BOL','',0,1),(27,'Босния и Герцеговина','BA','BIH','',0,1),(28,'Ботсвана','BW','BWA','',0,1),(29,'Остров Буве','BV','BVT','',0,1),(30,'Бразилия','BR','BRA','',0,1),(31,'Британская территория в Индийском океане','IO','IOT','',0,1),(32,'Бруней','BN','BRN','',0,1),(33,'Болгария','BG','BGR','',0,1),(34,'Буркина-Фасо','BF','BFA','',0,1),(35,'Бурунди','BI','BDI','',0,1),(36,'Камбоджа','KH','KHM','',0,1),(37,'Камерун','CM','CMR','',0,1),(38,'Канада','CA','CAN','',0,1),(39,'Кабо-Верде','CV','CPV','',0,1),(40,'Каймановы острова','KY','CYM','',0,1),(41,'Центрально-Африканская Республика','CF','CAF','',0,1),(42,'Чад','TD','TCD','',0,1),(43,'Чили','CL','CHL','',0,1),(44,'Китайская Народная Республика','CN','CHN','',0,1),(45,'Остров Рождества','CX','CXR','',0,1),(46,'Кокосовые острова','CC','CCK','',0,1),(47,'Колумбия','CO','COL','',0,1),(48,'Коморские острова','KM','COM','',0,1),(49,'Конго','CG','COG','',0,1),(50,'Острова Кука','CK','COK','',0,1),(51,'Коста-Рика','CR','CRI','',0,1),(52,'Кот д\'Ивуар','CI','CIV','',0,1),(53,'Хорватия','HR','HRV','',0,1),(54,'Куба','CU','CUB','',0,1),(55,'Кипр','CY','CYP','',0,1),(56,'Чехия','CZ','CZE','',0,1),(57,'Дания','DK','DNK','',0,1),(58,'Джибути','DJ','DJI','',0,1),(59,'Доминика','DM','DMA','',0,1),(60,'Доминиканская Республика','DO','DOM','',0,1),(61,'Восточный Тимор','TP','TMP','',0,1),(62,'Эквадор','EC','ECU','',0,1),(63,'Египет','EG','EGY','',0,1),(64,'Сальвадор','SV','SLV','',0,1),(65,'Экваториальная Гвинея','GQ','GNQ','',0,1),(66,'Эритрея','ER','ERI','',0,1),(67,'Эстония','EE','EST','',0,1),(68,'Эфиопия','ET','ETH','',0,1),(69,'Фолклендские (Мальвинские) острова','FK','FLK','',0,1),(70,'Фарерские острова','FO','FRO','',0,1),(71,'Фиджи','FJ','FJI','',0,1),(72,'Финляндия','FI','FIN','',0,1),(73,'Франция','FR','FRA','',0,1),(74,'Франция, Метрополия','FX','FXX','',0,1),(75,'Французская Гвиана','GF','GUF','',0,1),(76,'Французская Полинезия','PF','PYF','',0,1),(77,'Французские Южные территории','TF','ATF','',0,1),(78,'Габон','GA','GAB','',0,1),(79,'Гамбия','GM','GMB','',0,1),(80,'Грузия','GE','GEO','',0,1),(81,'Германия','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(82,'Гана','GH','GHA','',0,1),(83,'Гибралтар','GI','GIB','',0,1),(84,'Греция','GR','GRC','',0,1),(85,'Гренландия','GL','GRL','',0,1),(86,'Гренада','GD','GRD','',0,1),(87,'Гваделупа','GP','GLP','',0,1),(88,'Гуам','GU','GUM','',0,1),(89,'Гватемала','GT','GTM','',0,1),(90,'Гвинея','GN','GIN','',0,1),(91,'Гвинея-Бисау','GW','GNB','',0,1),(92,'Гайана','GY','GUY','',0,1),(93,'Гаити','HT','HTI','',0,1),(94,'Херд и Макдональд, острова','HM','HMD','',0,1),(95,'Гондурас','HN','HND','',0,1),(96,'Гонконг','HK','HKG','',0,1),(97,'Венгрия','HU','HUN','',0,1),(98,'Исландия','IS','ISL','',0,1),(99,'Индия','IN','IND','',0,1),(100,'Индонезия','ID','IDN','',0,1),(101,'Иран','IR','IRN','',0,1),(102,'Ирак','IQ','IRQ','',0,1),(103,'Ирландия','IE','IRL','',0,1),(104,'Израиль','IL','ISR','',0,1),(105,'Италия','IT','ITA','',0,1),(106,'Ямайка','JM','JAM','',0,1),(107,'Япония','JP','JPN','',0,1),(108,'Иордания','JO','JOR','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(110,'Кения','KE','KEN','',0,1),(111,'Кирибати','KI','KIR','',0,1),(112,'Корейская Народно-Демократическая Республика','KP','PRK','',0,1),(113,'Республика Корея','KR','KOR','',0,1),(114,'Кувейт','KW','KWT','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(116,'Лаос','LA','LAO','',0,1),(117,'Латвия','LV','LVA','',0,1),(118,'Ливан','LB','LBN','',0,1),(119,'Лесото','LS','LSO','',0,1),(120,'Либерия','LR','LBR','',0,1),(121,'Ливия','LY','LBY','',0,1),(122,'Лихтенштейн','LI','LIE','',0,1),(123,'Литва','LT','LTU','',0,1),(124,'Люксембург','LU','LUX','',0,1),(125,'Макао','MO','MAC','',0,1),(126,'Македония','MK','MKD','',0,1),(127,'Мадагаскар','MG','MDG','',0,1),(128,'Малави','MW','MWI','',0,1),(129,'Малайзия','MY','MYS','',0,1),(130,'Мальдивы','MV','MDV','',0,1),(131,'Мали','ML','MLI','',0,1),(132,'Мальта','MT','MLT','',0,1),(133,'Маршалловы острова','MH','MHL','',0,1),(134,'Мартиника','MQ','MTQ','',0,1),(135,'Мавритания','MR','MRT','',0,1),(136,'Маврикий','MU','MUS','',0,1),(137,'Майотта','YT','MYT','',0,1),(138,'Мексика','MX','MEX','',0,1),(139,'Микронезия','FM','FSM','',0,1),(140,'Молдова','MD','MDA','',0,1),(141,'Монако','MC','MCO','',0,1),(142,'Монголия','MN','MNG','',0,1),(143,'Монтсеррат','MS','MSR','',0,1),(144,'Марокко','MA','MAR','',0,1),(145,'Мозамбик','MZ','MOZ','',0,1),(146,'Мьянма','MM','MMR','',0,1),(147,'Намибия','NA','NAM','',0,1),(148,'Науру','NR','NRU','',0,1),(149,'Непал','NP','NPL','',0,1),(150,'Нидерланды','NL','NLD','',0,1),(151,'Антильские (Нидерландские) острова','AN','ANT','',0,1),(152,'Новая Каледония','NC','NCL','',0,1),(153,'Новая Зеландия','NZ','NZL','',0,1),(154,'Никарагуа','NI','NIC','',0,1),(155,'Нигер','NE','NER','',0,1),(156,'Нигерия','NG','NGA','',0,1),(157,'Ниуэ','NU','NIU','',0,1),(158,'Остров Норфолк','NF','NFK','',0,1),(159,'Северные Марианские острова','MP','MNP','',0,1),(160,'Норвегия','NO','NOR','',0,1),(161,'Оман','OM','OMN','',0,1),(162,'Пакистан','PK','PAK','',0,1),(163,'Палау','PW','PLW','',0,1),(164,'Панама','PA','PAN','',0,1),(165,'Папуа - Новая Гвинея','PG','PNG','',0,1),(166,'Парагвай','PY','PRY','',0,1),(167,'Перу','PE','PER','',0,1),(168,'Филиппины','PH','PHL','',0,1),(169,'Острова Питкэрн','PN','PCN','',0,1),(170,'Польша','PL','POL','',0,1),(171,'Португалия','PT','PRT','',0,1),(172,'Пуэрто-Рико','PR','PRI','',0,1),(173,'Катар','QA','QAT','',0,1),(174,'Реюньон','RE','REU','',0,1),(175,'Румыния','RO','ROM','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(177,'Руанда','RW','RWA','',0,1),(178,'Сент-Китс и Невис','KN','KNA','',0,1),(179,'Сент-Люсия','LC','LCA','',0,1),(180,'Сент-Винсент и Гренадины','VC','VCT','',0,1),(181,'Западное Самоа','WS','WSM','',0,1),(182,'Сан-Марино','SM','SMR','',0,1),(183,'Сан-Томе и Принсипи','ST','STP','',0,1),(184,'Саудовская Аравия','SA','SAU','',0,1),(185,'Сенегал','SN','SEN','',0,1),(186,'Сейшельские острова','SC','SYC','',0,1),(187,'Сьерра-Леоне','SL','SLE','',0,1),(188,'Сингапур','SG','SGP','',0,1),(189,'Словакия','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Словения','SI','SVN','',0,1),(191,'Соломоновы острова','SB','SLB','',0,1),(192,'Сомали','SO','SOM','',0,1),(193,'Южно-Африканская Республика','ZA','ZAF','',0,1),(194,'Южная Джорджия и Южные Сандвичевы острова','GS','SGS','',0,1),(195,'Испания','ES','ESP','',0,1),(196,'Шри-Ланка','LK','LKA','',0,1),(197,'Остров Святой Елены','SH','SHN','',0,1),(198,'Сен-Пьер и Микелон','PM','SPM','',0,1),(199,'Судан','SD','SDN','',0,1),(200,'Суринам','SR','SUR','',0,1),(201,'Шпицберген и Ян Майен','SJ','SJM','',0,1),(202,'Свазиленд','SZ','SWZ','',0,1),(203,'Швеция','SE','SWE','',0,1),(204,'Швейцария','CH','CHE','',0,1),(205,'Сирия','SY','SYR','',0,1),(206,'Тайвань (провинция Китая)','TW','TWN','',0,1),(207,'Таджикистан','TJ','TJK','',0,1),(208,'Танзания','TZ','TZA','',0,1),(209,'Таиланд','TH','THA','',0,1),(210,'Того','TG','TGO','',0,1),(211,'Токелау','TK','TKL','',0,1),(212,'Тонга','TO','TON','',0,1),(213,'Тринидад и Тобаго','TT','TTO','',0,1),(214,'Тунис','TN','TUN','',0,1),(215,'Турция','TR','TUR','',0,1),(216,'Туркменистан','TM','TKM','',0,1),(217,'Острова Теркс и Кайкос','TC','TCA','',0,1),(218,'Тувалу','TV','TUV','',0,1),(219,'Уганда','UG','UGA','',0,1),(220,'Украина','UA','UKR','',0,1),(221,'Объединенные Арабские Эмираты','AE','ARE','',0,1),(222,'Великобритания','GB','GBR','',1,1),(223,'Соединенные Штаты Америки','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'Мелкие отдаленные острова США','UM','UMI','',0,1),(225,'Уругвай','UY','URY','',0,1),(226,'Узбекистан','UZ','UZB','',0,1),(227,'Вануату','VU','VUT','',0,1),(228,'Ватикан','VA','VAT','',0,1),(229,'Венесуэла','VE','VEN','',0,1),(230,'Вьетнам','VN','VNM','',0,1),(231,'Виргинские острова (Британские)','VG','VGB','',0,1),(232,'Виргинские острова (США)','VI','VIR','',0,1),(233,'Уоллис и Футуна','WF','WLF','',0,1),(234,'Западная Сахара','EH','ESH','',0,1),(235,'Йемен','YE','YEM','',0,1),(236,'Сербия и Черногория','CS','SCG','',0,1),(237,'Заир','ZR','ZAR','',0,1),(238,'Замбия','ZM','ZMB','',0,1),(239,'Зимбабве','ZW','ZWE','',0,1);
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
INSERT INTO `coupon` VALUES (4,'-10% скидка','2222','P',10.0000,0,0,0.0000,'2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Бесплатная доставка','3333','P',0.0000,0,1,100.0000,'2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 скидка','1111','F',10.0000,0,0,10.0000,'1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
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
INSERT INTO `currency` VALUES (1,'Рубль','RUB','',' р.','2',30.17600060,1,'2013-01-29 00:45:27'),(2,'US Dollar','USD','$','','2',2.45644999,1,'2013-02-17 20:46:48'),(3,'Euro','EUR','','€','2',0.74309999,1,'2013-01-29 00:45:27'),(4,'Гривна','grn','',' грн','2',1.00000000,1,'2013-02-23 23:26:31');
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
INSERT INTO `customer` VALUES (1,0,'павы','ывап','vittalik@i.ua','23423434','','30cac757d89a393f566d4e17d24c0dcfad1b78e6','9d25d5d56','a:0:{}','',0,1,1,'127.0.0.1',1,1,'','2013-01-30 15:59:56',NULL,'',0,NULL),(2,0,'wrewer','werwer','dfgsdfg@dd.cc','23523','dfghdfgh','2d7d057a45cf7481e0e1636136320f03ec6341c5','7847aa2dd','a:0:{}','',1,2,1,'127.0.0.1',1,1,'','2013-01-30 17:11:23','sfgsdgsd','sgdgsdg',1,NULL),(3,0,'test','Test','test@test.com','235235235','fwefwe','03a330cac34aa5d89bd71f046e33e9f14a8a9285','9cb44d6d1','a:0:{}','',1,3,1,'127.0.0.1',1,1,'','2013-01-30 17:29:28','gsdfgsdfg sdfg sdf sgdf dg sdf gsdf gsdf g','sdfgsdf',1,NULL),(4,0,'sdfsdf','sdfsdf','sdfsd@ddd.com','23423','sdfsdf','2f5d31a81ce618730d286535552314791379c485','456a08637','a:0:{}','',1,4,1,'127.0.0.1',1,1,'','2013-01-30 22:31:51','fgjhfghj','fgjhfgjh',1,NULL),(5,0,'asdfasf','asfasfa','admin','3152353','sdfsdf','9dafedc42c10b6044ebf81aa36f2ce75b6bc818e','3c7c03e72','a:1:{i:68;i:1;}','',1,5,1,'127.0.0.1',1,1,'','2013-01-30 22:59:40','','dfgdfg',1,'a:0:{}'),(6,0,'werwer','werwer','w@w.cc','2535235','gfdgfg','d132601ddeed37d4a15e73b30fe55d706d101020','e3f641c59','a:5:{i:41;i:1;i:40;i:2;i:28;i:1;i:43;i:1;i:33;i:1;}','a:1:{i:0;s:2:\"46\";}',1,6,1,'127.0.0.1',1,1,'','2013-01-31 20:57:43','sdf','sdfsdf',1,NULL);
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
INSERT INTO `geo_zone` VALUES (3,'НДС','Облагаемые НДС','2010-02-26 22:33:24','2009-01-06 23:26:25');
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
INSERT INTO `information_description` VALUES (4,1,'О компании','ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ТекстТекст ','','','',''),(5,1,'Контакты','&lt;p&gt;\r\n	Контакты&lt;/p&gt;\r\n','','','',''),(3,1,'Тех. поддержка','Тех. поддержка','','','',''),(6,1,'Online-печать','Online-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печатьOnline-печать Online-печать','','','',''),(8,1,'Услуги','services servicesservicesservicesservicesservicesservice sservicesservicesservicesservicesservicesservices servicesservicesservicesservicesservicesservicesservicesservices servicesservicesservicesservicesservicesservice sservicesservicesservicesservicesservicesservice sservi cesservicesservicesservicesserv icesservicesservicesservicesservicesservicesse rvicesservicesservicesservicesservicesservicess ervicesservicesservicesservicesservicesservicess ervicesservicesservicesservicesservicesservicesser vicesservicesservicesservicesservicesservicesservicesservices ','','','','');
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
INSERT INTO `length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм');
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
INSERT INTO `material` VALUES (4,'Дерево',1),(5,'Пластик',2);
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
INSERT INTO `newsarticle_description` VALUES (1,1,1,'test','&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n&lt;p&gt;\r\n	sdfgsdfgsdfgsdfgsdfg sdfg sdf gsdf gsdf gsdfg sd fgsdf gsdfg sdf g&lt;/p&gt;\r\n'),(2,2,1,'sdfg','&lt;p&gt;\r\n	sdfgsdfg&lt;/p&gt;\r\n'),(10,4,1,'Цифровые технологии','&lt;p&gt;\r\n	Цифровые технологииЦифровые технологииЦифровые технологииЦифровые технологииЦифровые технологии&lt;/p&gt;\r\n'),(11,3,1,'Цифровые технологии','&lt;p&gt;\r\n	Цифровые технологииЦифровые технологииЦифровые технологииЦифровые технологииЦифровые технологии&lt;/p&gt;\r\n');
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
INSERT INTO `newsshare_description` VALUES (10,2,1,'вапвап','&lt;p&gt;\r\n	вапвапвами&lt;/p&gt;\r\n','����\0JFIF\0\0H\0H\0\0��\0C\0\n\r	\n\n\r\r\Z\Z\Z��\0C\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z��\0\\�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0	\0��\0c\0		\0!1\"2AQBaqR��#br�3�������	$V���%4CSTUcdu�����&\'57Et���DFs68GWe���\0\0\0\0\0\0\0\0\0\0\0\0\0��\0+\0\0\0\0!\"12AQ#BR3aqC��\0\0\0?\0�ۅ]���ŵ���}������Ѵ]�˹������+g�}ڳS���5c�~�񨃃�WR�>%Ӹ{A��Ե+��~�n�_eU{��;�����y���/Gwĺđ�M!�haF��5�o���R�4;�i|_j�mʻ�/�WW��ؿ���\0������$�+�+I�\0i\\���ZQ+2��|U�h��%�ug�������\0�W�)�\'�\'�(���q�������w�Ŀ��N=ݡ�����U��ا��/��q�����?b�ⴿ����J�S�]�Uܽ��U�h̿�.������ſ�Y��+��W��M�[�T��Ҹ��B��۱wv��jGj���5u���=��\0���\0�w�)?�%�)�+K�\0i\\���Ef9=����\n���_���X���ا��/��q�����Ob�⤟����J�����\n��cr��&�Owr�\0����K�W�U��Ҹ�\0IXy/�_�V_�J��%t�1�fh��{��u&��C75���\0y/�^��Y�+���+��\0Af�֏p�-�ꊬ�\\Gs$ч��3��V��en`۩6f�K��E�q�����\'�8s�퍵��)��|J�����B>/�C\r�O��_W���Wߜ*�e�KD:|���jYc�ܽ�M#��7�Y*�j���4`.���2��D�Jg��֠^�;W�����K�w�����^.�,��jr����{�g�^	o]j����WW�F���q�W�[�����Wf��7�Av�v=��ԙ��|;F��J3��}����M�-��J�r��KӅl\\�;߮�۴��7.Y�y[[\r�ۨ�o)�ꎻ�c����ػxK�*s�.\n�\0}j���ս��ݻ���)US���P�c���veR���J�r9�Ыu����E�krn�S|-�{-��l�B�f9u�/Q��cKԭ�x糑e��$�������l�..%��ྞ�\Z_|�m�z��S�פ�V�y�L8���w�&��9|�8x��ܙ��),ѳr�𢞀?�\"�>��M]��\"�`wO�;M2^�)$n��3r*&�Ge\nw�W�\Zn�z��ޜ�Rq�໷u#�£37ض�=3;F;IwW������~�7�2��\06�n@M��[��[�����r2dof��7w�7���VL��u���3�^�u>&�#�l�$nT�L�T3sɤ{ug߹�y`�H<2��͚�H��v�Ι��,@^C�:VBg.�*��>Ub��M3`�N|�7?���ǽ�m�9�X`�ݻ�\',vV�M3)��\\秠�/3�b���r�kJ�J�$x�V�c����`njq�^I��3���ٶ�wʙ��&ӜJحz��\n}���\ZF#v��T����l��.���m?�\r�:��S�Qv��]E�f���,�|]�3N�V9c:��a�kz��q�k�{� +7tSu�y���1绯ΦL\Zn�犍��H�{v�ʲ�Y�&�������4�^Rg��Vn��X�UP�G,��3g�_eW�o�5���N�y|9���=�&�O%5��C�򹑌����~Χ������|��=�)�r빉8#+�n�;����_U5vM�����2���qq���sw���{W��[��m�&�_A�;{�o�N��o��M�ݿ�f��{������\0���\0®?��T*�(�����\\1����-�:ַ���G\r�rv�4�ǖ���v���i�\\;�c���h������wuy�6��m�ʾ���٫O�ǳ��;�f��y�?}��j����̲���ָj��8S���c��k{	�����\n?��o��WZ�WD�/�����-�������{m��n�_yv��N7��k���k��x��������ɞ�n�t|=�}��!�-�[�!Ծ��i�ֳ.��~O1J���F%�Fn�m��v�pO�WN�DṎ�6��hڤ7�z��ny�9\"����ƊܿIj#Ꮴ����o$:���������)m��d���e�W�M�k�%�ql��\\?ÜEua`���\"�=����6�a��X�	hD�4�H�\\B����_Ym��{	g��&w�ݡ_�}�5�U�?Y�s�OYɣAb�����:[�e��ܾ�i%��P���h�{Q�N�g�j�E���W�R53��ǵ�����J{B�{g�-ĺ��٤{�Ui�mE]̽��A�wq?�_g|9��`�u;[���\\C-.�e+�vB�«sjo�x��3pΑú�:f���ֵf�%�e��T��fR�,��*�?�O/j�Ω��ZmՎ��9��W��킔�5F ��˽Q�H�G����~ MZ�Z�үtcl�s��<,����æ��PƗ������k<Mj�����:��*{K�˳�M��#��-����� ��\r+P�X:�qiחz������\"�g!���B?H~:%��\ZF�>�w�I�ǡ�h�]7�@\r�\r�mԛ}!4V��n�� �T��E\ZQ�T���5�Q�6��eKnȨ[o�����a�\Z?���:�ޡu�O���\\�g\n�bݹB�ڻ[>�-��m1�V��_�R���!�_�.��\r}q,m�6z-B�ooV:M�6p�_kq��P�t�[X�M��\0Ӟ�h�UC��2��5��x�����JѴ����u]=��E��a�-��L+����1�C���Wj�\rş�����+]e�\\�;HN���N;ܹ��*hSqm��w�\\��V\ZE����yBe�YRiF���`>�B\n{0����W�)�_j\ZV�����h�#5��\nedVm�y�[+T���e�<���i��H��\0�	3[��;̄�v�_��֫��5r���g���I��-΍�W�!��W���[_��,�V��\0B���R��̿ƫ*��/ڬ{��-e��ڬy��O���V���о,�x/�I�!wmZ�����|T���u:\r�۵yUJ1�I���^71_1�Y�׻d/�X�!{�3/�P�ڗ����We���O����7��ڏ��r��]����\0#BoG#�νF%��z�k�s��k��z*ӍCw���\0���y��b��W���&�k��U���Ze��j�l�S�%^����=b���W۲�[nEU\r�X콍e���^�6�~�tf�-�s�?�J隶��W�{��s߈�!��t�j���T�7�X[�~d��ǥ\0ZFn4�\\32T���ƽ,�Ex��쬍Դ�c����hɕ`�ݵ�c�O�`��NT|�>�Ƶ��	�.;[y �(p����ѷ�5��P9�y&:F�	������{�k�j��.���m��k}��p�sʷL�S�p�N����*kelH²�X��֦gb��=�L?A��<��	`�鳞����jA�z.[���J��#X��&�w1f��k�Lm#n�wҺ�X������xL�y�}�_�9U�=ǩ�\n6��\\*6X�̒<�z�,T�#�\r�m���(1��1^�8���E�H������\\R�i>\Zj��v����(YӗN�z�I۸r*�I����[/.I�c��Q-��VQI$�,\r�Skڃj7�N�v�܀�QhM��/$qE�չ�f�{�4��#�M�G\\z�ڍ𶌪��H�\r��ME��$ᮦ}�!���+r�����g��[�w��KշT��Q�2F�{ʳ�Ͷ���Py����y���/h&@\"x�3�OU��.�\"겾���_�ِܲ��c�L�t��4�y\0C7��\0ʦԛ�3\"��������J�v�`pJ��;�hp��H�0{=Nό�r@m���V��2#\0s�|�T_��;n.�8����WWy�\nǗ٤|��k^p:#fl�u-��;��� ʹs9��cH�4﯄Vx]Mb��m�*o�nm���Zpʬ�\ZɡP��5홏6��}��m�諪�w�\\��k�|?��SPq�0Mi����.��6��^�T��}_W�cT���5�x�t�[I��)/X�2�\"�<�W�E_}�wp�u��N����YMz�&�V��W���/�o�P�W���$��u�i|a�]Oc�jTҸz�ImH������ݼa�Ч�}%�5���]G�Yu���E��V�Q	��em�m�?I�����5^!�����	�[�MV��Ym�(E���/���������\\q�#k�X��m:8�SB�j���O�j�x���n�\\��ot�mB14]���3�s�nL�v�}�}\"4�k�?%�hZ���8�L\Z����J�M��{ەA�e��/����U7�Kw�Gm<:=�6�3�¬��a���W�U���k�=6nK�)M_I�-.�u+)m�2����s��ݥl��j0�i��=���iz.�g�ɯ-g�FѼ@�/��	otI��ۇ~��Z�pƥ�蚴��g��\\C�?��m�{��U������>�<=Ǘvv��\r�PiE�nA���.��j�ҽ�i�Z7	�wZ����	~��E�v���F#�]Ϟ�B\r4�m��G��@��3P�5-GK�P��}Rki�Geح���c�y�j�a�<�qm���kf-�h�Kg�̬��ml�1�մ-R��x����v�q��G.�\"��w��y��w�Y���N�w^���[B-�U�������s7>�T _W��BW���W���T!���N�\0���q�Qޭ��q�Vz߶���gY[KӢ��*W\\��H���a�P:�O�۫.u��J.���P�\'ś�{�wx�JGWm\'ٽH�)�b:�˰n�|T�[�_mq�B�峍�*Z��n�ݥ͙�o*s\r�!�󡵊*�\Z{#_�h�I��n�n7\n�/!�ܟ#\\m�N?���j���ݿ��\0)]����\0#\\��r=���{������Ow��0^K��q�ʢ���u(�\0=���*W��\ry�\0�=\r_QC�s��\'ڻ���&�+.�ۉ�*�DCo,��{΂��ń�H!�b@�e�*��mH���w�_u�x�z/V�3�4-ŚLE\r��ۭ�y��nps�֗�k%���E���ԭ�M��F%;7�m��cQѥ��P����{�j��2�h��\r��y�ѣEg�����վ5��c^L��\\i\Z�ޓ2��ns�>��j���iV��:�}��t�x��^ԉ��<�=���Y�#�W��C\ZB�\Z��1]����_Ayx%VY\0e�R̬�|<�AZ��q\r��!LB�u���\n��[�`�-S�*\'q���[��������V�MB���pH�S��f%v�jSF᫝gQ�4gyW(���ҭOdwcII\\+�R����V��3*�J{�r��d��L���*Ŕ��J�N�Am>���j.$`�z\0�A������\0�>͕|!���Wo�2\r-Vb��;RB�xW��ߌ�o���b�1#����*�{�z��ƥg�Cj����V�U�����I�v5��e��}=)�ĳ��wV�9�l�Ϭ4Px�\'$�鏅U�s��i�H�6��m�� �UZ�^�����M&e$ �T��!���e�;�\'�����&�4nS�A{9�Tf��K_uVO<����ge��!Z>58�֬F�/n�o�]�#\'\0�\0(���6,n\"�a�^A�,|�y��i��c-�шp�p	-Ҋ\r�zZ��%��dE�>�._�<ߡE㰆���:�V9df��?J����[6?6\n�0G���K}�⃨3`��ɱϯLT�Z��̏-��1�}��`�#vz��6���Ӥ���\0l}}k���EX���\n�Ԗ]6��$c����K��\r%s!KQ�����X���ce�\'��FF�v�k�wzլ��ʣh;�y�Uq��ٝu�N�G���V#I�z��yb��[g�5^B���>��e��Nm��z/_=��O�������)R\Z�t���5:��K�۵�2�h����G���Җ�<�+�5zֱaz�uS������!���X.��^��Z6^����VV�����g�O�\'�t�]?��hq$��f/��즓��m����k[�&[�ۻ���M㷎ݷ/�Ulo�;�����d�\0��������p�W�\0�ޠ?Z�f��I�%fV��{\\�{�D�������\r��r�<��\0+٥W��\"O��K��f���\r�[mY^�4��sIK}���}����R�o�¹V�w�#��׃�5�������X��P�G��.���X��ٲ�����j�Noϫ���e��r���&���7�qKV�\0�{}�Z?�X�\0�\'m�\0������Zf�vh�2�3w�_�,����wR���_b�\0K�����@�4��cR�sa����?�j�M�>u����D�&����B��oF�v�B>�_I�}�Y���\\�eg�)�����V򊼙}�x���A�5��a���v�M=��(˻7�\0ɭ&���>�gw�]�AΑJ/F%�aX\r��KW�җ��\0{�}B)���~�j����n��	?q�P�q�Ƹ��-�n�L������\0�����B|i��ֵM&�߁�r�U�/��^.]B��BMi��~\ZżU+^\\\\�W�W������;Ks3�摏y�|ri��J��_vm��2��O�f����;t�ⴤp�P��u<��wPe��qVF�o�4�Z��]�{�O�|�quҮ�e%�g�&�誫6���.�{�v�^���_�G-v�L��P���6��T��c5����K�\"b��VR��gd��Jm�{���@�\0�װ_�6>��0��\0���Wb$�?��}����g����>���&�\n�k\'>5(�o���F�l�^�s���zO5S�߮��\0�M���dq�+���7��)�2���}�*�r�+^�����1|7W�>�\\�m�W���y\"�Ve9��M|7۹k!,�r��N0�E5Ca�A��\Z��V��BIk��6w/�>_�I�qk��c�����|=*a��4�>��^�9��~?��w�y]�iAcBI�2v����U��DɈ�lB\\p�X䅭�f������;X�Z���$���z���Yv��O)��g��V\0�C��!����\"��%�.\n��(�#<��L7x|�Y�u8�Ʒh�	����6�4R�c3�w�_�1W�{!�L��\'e1�	\\�r����I�/J�xk�����O�������*A��z�C��m�W\'[�s�$<��\0\ZY�P�f�Q��iq�bhz&�f_%��4k=�gnOw��~��U��,b8�{C(�|$�:�����\0_\0�v��o1T*��ر�d{��-��n t�u�Yc�=�w/ʔ�v�i�IN$�!Wwʣ�H�5H��ay�P+�,�EnIg�b��u\n7�t�PW��HV�#FQ<�g5��[�4f�������4#�k�\r��uȬ���+�h����F�D$p!G_bw/��ֹq`�;]F�wl�G�HA��p�s��{S�����\0�ٻnLyyMk�?���if(�\"��%?�j�b��u��w�������s�^��3�𡇳� m>���A�=���Co�8`yOC��mĜo�}����G�i�\\�y�d��y��S5�+<5m��^�n�@��}W ~p�P<�Ǝt�&�h���,a�72�����uP�t��H�9��� %0�DGn���À�??�[eo����Z����\"p�8������TU�m�,��c��� ��.�2(6�W��X�1�;ѷ�I�K#C<Q�ce�m�Ɏ����uVv\n����u��V�hW�ߕ�yw��\\.^6Q��=-.��#`����F���!Y�VP������v$�W��W�YD�eV�t�¡��y�a��[X�4�-�\n�1���1�����TvbZŲr���.	,v�\Z�9?6����AeF##�?�{��i�_�A¼��]���.&Y�eV^���>���6U_ѥc�Wn��,��S]q���Ueݖ�5a�!��fm��\Z��m�[����X��l��4Eأ2�	ۇ�m�=���T\rŪ�n�����e�E�v���\ry�ޣ*�%⺊;v�Z�=�\rĻ{��}��k�ɹ����V���n�v�m�U�u]�U�/k}2)K6���ݻ�M�Nѵh�Z�;��p�G�]�gѿZ��~r�7y�kS���n�|��Ril���.��{S�_y�z���]�M�+�^��o���iU����z-����h��:e��#oz�YIZ�\'��&����4�S��\0���W�4i~?j�Uh�\0�������siwm��R�j6o�[�mtel�ݽ��E�R���i>T��N�G>��H�=�i+�qD�[q����ݴ]ƿ��K�/���{vG¸���z���Zk\\5y%���ʲ����X5t�����}�hF�Q��ǋ,#���w_oY����ݢV�R���/��[�x&FHѵ;��Ÿ�H�����ю�Y^�٫���h>�x�\\ܲZ�r�vxn]�=��Ao�U}��Z�0��Z=ͻud��\0�N���Z�E�2��R�d����>t�G�۵{�j�^�RU��j��5	�f�1���b����Zt��.zT�����1C��êO����8�R��7[el�+t�赹\\\'��<����Bp�3��t�uV�͡�D�R��Ud�\ZY~?f�k	-envӻ+�D�]�wq�Iq6���rrl�MjG��.+0�xW�W#�`��9V���:���V^�\n��m����\\#w󵕚�[Y���J�O.�����R�J�*�\'w^_�[�EP��N��M���\0�կ���o��?{(�\0ޗ�\0�6�ή�?���\0髯�[>�>o��B���ٛ���}���;�Ҟ^�����]K��v��UV��r>*��\0�m��S�w2מc�s���u*��V]���8��3^M���z�U\\C*�F8�o\\�A$f�c��k�ģn��E����<F�%Pr�f�ڟCQ��֯}l���������zP�\Zj[jב�Ȟ\"N܆�_z��bzټ�����տ}��{#�A��!^�ƖhS&�T��� ��Yj��N;����Pj��xJ;��)���;�i����&�h�|[#2bDA�ωI�_t��u8�Ր2�=��A��5�:��2��ԏ��ᴑ$�5VB[�,|\r&�D�X�¸�B�S��4�Q�x�d�/���C+���ײH�7�A���nõ�^B�CQ���U��*�ct9��MB�3�\r�6r/�̓Q��Omk*F�y\0㊁�ԣ{�)��%pd�NH�@�e{\rCj��.�m��Y��ey)#\n�sC0�l�\\ݷNԔ����H�����]��[*N1�>G�k���PY���î�/ۺ��Du\rBg�T6V!�E�緖��i��5iP���J�PhcR�m�W�ை�z��;��\\H%x���Ϧ3���Ė�ɮ��-k{���F\r�r��_�1�6Ao�ǭ�ʮ�v�=i���HE��}eo�ATf.�L\\A\\&O��}h2�V�y�/�_y9�@}����^���nl>B�p��ǘ�\Z��S�)�+��G[���\r��\0�L*������8�J�WKAsP\\L��m��m�D��P��s��Zq�겾����^l޿,Q�P3��u-��dP9xy}���is,,�����*1����+u�~�P/w�\"�Dy���2�ֵS[�2��[9F\',9�Lm��x6�o54�f�a��<�tɨ8u��@��4b7�����糛%sHK嘎^��s4.4`.Э��Ҽ��\"2��\ns4.��$�t\r�I&6(\\���__Jʂl%�R	!X�wL�)�1��>c�?��ǅFA�ޥcY;4﯄Wk�ՙw#%�m�R�l�˷����,���z�Տ6\'�6�M�7گ�/Q�T��[i]�N፤m�ٯ��$��m�T�j���ᡳ���ú��c����ۻk:�/٪�Uv�\0\n��e:�cwsh̽�ܻ�;ۨύ���]&m�\Z�w}������X��e�>��H�4�����Q��2�Vɏ��IR˯&���^Ku���V^�����	�G�}m�����V����7��y�Z���I	.�^���jp�(����揼���n��T�s�P���o\'��F��)6Ix�m4�}�l��+��1�6�&�j�G��K��ţU�FYvɺ���%�2��û4�E��~�c�xcQ�Nԡ��!=���C}�e�+SvUfݷ�c����G��E��[��Re&Y4�x��5.��ݶ�?b���ݪ����Ɇ�ү�<\"�x�5���n��ZQ��b���Wr�x�R/y7��\Z��aٓ����@9��s��Go���4;���\r)la��Pnn\"����e	����η�\n����խ�zS�z��vd�5�h�T�vmTԥg]���sL6�!&E�� �y�\Zژ�L�����m�BBc|?j��E�T�\n����h����Q�]G[\":�ia%e\'�o��~��C7=۔���5+�q��Q��\n���j)sp��C��JV��-�k*S�V%T ��ᕇ/�ΰ1�\'�i�5���,�=�p�w�շ��_�k�^�U��+��\0�o�W]���\0#W_�������c�޷��f\\�\0�1���Jqy����\0�K�o�j����,���R�\0Y�\"���o�Z]�$Hv)ݚ�eBwq��4�@�W��0����K\rv���_O�d�m��X�n���ʲ!F�e�*bHW�Ҭn�k}_H�ge9�ٝ����F�G�;�]E���,��� <��Oe�\'��P\0S��h�Ck~Ӥ�&�������k�xlȑ�*��k�u��Z�cYtl��ٞt+}��@�A�6�4m�����U��P���EYGp:ɐ���֑���h��\\nf��Y�V�^B[�}�lZ�b���t=��A\\Aƫ�[�E��e]��2���\0����P�|C&�e,��LI�w������?�q\"j�*<���꜉n}�����Y�eUK�@��ʹw�bbY��tr?������[U��p�K�7�5�kb-�8�ɹ���r�r���[��T�m-�����n>~u��\0ӌlF��O�i�K�B���3��j=2[�j݋�@om�?�Q�Wq����#I�go@�p\0����.�~*�I���Wdr:��:�ҾZ�8�2�{�k%�Z)�)d�g�F�����K���3432����j\n��-:��������\0�㚂�mF7���_jI�ȟ\0y�Ŕil\Z�b�\\�:�imlA�<���y�tv���I3Գy�A�J�$m\'h�ga�,/*���$��1$�+x��F|�z���ƫ�/]�ދ�N�*��n	�{�\\�3DP�DUK.�I�*��MIR��!�ռ�O��=y�F\\�+�0�b��c+d���Nk\"�^`�Zx��c\n(_o<�]��*�30Q��8��r���\0mW��\'acH�ܒ��ϯf��:��P[�8�w�-��������4pi��M$	��\\���kv�4ҕ�ue�ȸ��g���\Z%L����L��\n���V�>5w�E��48pYL�\'>k��j��k5�#����p�,s�[km1��m@�(��<�^g`�o�O\'�:Bۓ�}M2PQ�[w23Ԋ~]Of�.��(<�¥��a��V��VKi$�X�\"ρJV�\n���|��HɅ�b=A�SY��٧�����[@�駽���c���{\r�v1�\0�������\0&�9�\0������F��j���������I�>-�3�@�3.�\r;Z��^�R�6-&��=��ZIv��i�_���ڳ9�=-v�u���W���\0��4���S;ͪ��X� f��nu+���յȀov��	��ަ��.�j���������ٝ;T`����w���`�32�f�%��,.��/v�t�۹4}���Q;��Z���H��5(���ԧ��;�H�\"�I�v7[w�Cm�m��WI�9!+xUY[�^�=\\��c&�mI4��,����u��V��k_���-����}�Ȓn*�v����M��\r�o����UƧ��\\����4��2xh6N*Se̕����	_NC*2�UV�-#\'ѷ�E��Z��qٮ�{����u�#�V�-��5�c�H��o֭���DEoc��U�V׌����5�u9���x�Y�%M\ZXo�xj7���q��=���J7�$�+2:���WV�Q�4��u\nq֗>����l��:mFu���Q]\'��U�×��Gtb�9����*��Lt�ۀ�]�����Xе(�4Imi��Q\"�G��A�G�?R�QkX��N#���T���k���P`ubY_,ۗ�:Ӭ��P>�\\�M3̨7:/��ѥ�-*��ɍ����^p��u���\rW�s���K��kh��\0�U�ۄt�m,��ďrU�������5�[PV����\rl&���\0]�՗\0|�P�h�#곌���0{k�φF��a%��VN̍���Ma�!;�V�v�NU�[}�Zc{5ҫ,y�x��ɾ+\\��j�m�B�\"���Q���x⻹.�iT���[ʮ�bb�S���?�T%�Y��u>7��U�8�/-�#Q�\'󥏋4�}�Z9��{/�=��{/��o���{sV�\\��b������b������|ڭC������/��u/��(6����B�Կ����;�O�斶��쨍pGV�4��!�j���״1��0�ߵ-+�����n)�Ӣ��i�i��цH�dU�eA�)��EP���uc���H���4��L���i%<8�f�s�mn��G!UGRI�?�*�����8����<]ދ�?\Zg���I%�\Z�A�7E\Zvf�*%U�m�4\'ź���\"0���MX�Ѯ ���2w������j֠�z��M�cѤ���ƫ���1`��4P��Y㌶�����On�䶳{�������#�D��-bVo#D~�u��pM����z�r,&[�]�p�$r�:m#�h����;4z!5� �Ԭ�K@��C���_Z�m��~�٣��<�@��\r��\0���Fw\Z���R;$�\0�X�`H�W�V�{Q�7m��ZN���;�wI�iTo��g.Ep��suتae��ܱ:O�+�5�1Z�����C�d>�叟�Y�t7ֵ��_SG����G�r��U6���,�u;FwFl��?����ކ.����X��n�6*��E]k�lG�+�\Zo�5)����5A�c/�G:���-������*\'�Ox��H��*��~	C~�wQ�q��������z���	M��#��<ݺ�|1Uz�,r�&k��m\Z>�\r�zJ�\0�x�z���Yj���#I�K2�nuc�jN�q�L�Ą�0�����>�]��^X=}+=(Xl�\r~WP�/6�n�c\"�����ϟƎ��Z��>�\"[��n�V�c�T�sAo��!�#���SJ�h��At��ޥ@&|�z��\n�6n�r��/�MN��\\?��H�K�qd�V�q$�\0�CB��S���b��K�E����\'��Ҙ��1H�Dc-p�AA�<����k�;\Zڬ^c�k����wyT���K�N	F����I㈠�BݹX��%\\?Ŷ��j-d��03ҕj�F!�~�|}����|�e�A~`r�W�}\"�H���>n�\'�q�P���Z�	,���b9#�ǽ�a{�W^Mt�:�	ū��\"��2��\0\n����O����-dq1�-�N��߅R��<1�A;A,B)Tg̏�Xz���DƆWq�r��r\Z��\Z���ܞ[ˋ������ɧ��{KWf�p7V<��+�R�����K����>Sj��e����]����*pq�?\Z�4��G_��=4KhPB�I2�=��<�X��薪�N�M.�ۑ�q�;\r�kw,#R��|����w��\0���=�p���Mq6�5��U��`���g�Z�@���������:^n�O�m2�3R\r`�w���ڬ[��R�ƾ/:�{1�4��X�vڗ��Kf��4U�RsN��-���4i؇�Rƫ�e�5�]��mCQUF�z�o/�Flo�Ֆ���.G���V:j��[$^.Ӻ�ɛ�j#�KU��:&�;I�{���+Nx6^�J�}�����|U��h�f��t����Փ��oe��_�{j��y�2!B���eZJ��[h7i��>��!�B�r�U9\Z�x|W�-D�qU�²۫,j6v��C�E}p�p�ٍ{������4c��߭����X�Q��lGyyVs�z�Z�I���֗7��F�d~�ޫG��6�CK\Z1V܊Ǽ��J��A��E�m��\0�4KE7J����j�l�,O�pMp�\0A\rݬ�VR���2�jč���j���ۈ�ڑI����zz!Uu0,����(q���x�QϺ\n��erߚ\n�|^�6b�\"en����w�!a>���%i$^����.t��,�oZQج��FW�����𫛻�~�5q\n�>N1�������j��&�N�:=��l�E��zUmy�]��z���IR5L(S�����[����\\�U�N�C�Z����l�{��y/�ȁ}��z�g�u�`ie�rP�O\n�����&�\'j������h�K�+��뀖�NY�7�v� �n�T��]�q6{���~�9��Q\ZA1M��]Xz�-�����\"M��$�U\\-F�NF��0������^�69.����~�u���I�¿�U���~�i��|G�}\"e��n^�Wo:��T�7\"�3�lƣ×/]脗_.]+^62O$n���\\��vnF���n)O����m8�\Z�n+�c�T �eo��?7�\0� �uu�A���S�0�\0�\'	�:�����5Oe�\"�9�wd�z��V��7R��w�*!��:U���X;��>�su=�gIu+�[�F���<A�iqIp����d���?\Z��\0cs�~U5�,@���ɴ��1�ʢui0�ɜ��������^#�4�E��K,���\Z�Dg���R~�R1�{���\n��Iվ_\nxN��U��NC~	�8���Y��D[����g8�Q՝�F�S���μ�4��$��\n01��H=���h�xN�w�֞��� �-��WLK�,:.����{�;[Y�j�#q_v�w�\'c����N^\Z�.$�����j\n4�����lf#v�ی�W����W��oB��z�P��l�GbE��&��6o?:(��;���Tѕ��ӗ±���iĶN֮��s?/�,�d>�˃a<\rk\'Cs�s%�v�L{��\\����È8�I�t�D�n�o/o 9\\��c��UT��t{ne��Le�~�\r#a�V\"�U���E��E\"�rI�<_OW~WL{3�ǘ}����P.�4�m���\n�O��B��ᆳխ�Ƭ�ê�V���鵙�o�N�{i�/h�\n�p��z�V��WV�M�Fc��ȑt|3���t�\"�D�aH�&���46����p��*я�gO��%�#JS��#��c�[��:�� ���A\'r��j?��\r��3<n�E�W�ϟ�X6]2��\r:�v��`ӹك�\r�3�G�j��t�.	{���M.�\rypX�7��9�Ҋ���(��\\�sg{�wZ,�P�^Xuźci�: ���C���)�7(*|���V�O6�Ǽ>�;�V�d���`O:��gڅ��E�Io�VM�\0z�C���b�[l{#�	�)Ұ�.���:`�7�:�{ق\"Uv�s�x�j\Zբ�![[)\r�Ì;nʡ�/�+5�}�nWf���	>�q�`j�e�gw�����?=���T�_�iw+s\r�����VV��{��y;Z���=d�c�ݜ�|�Rv�SJ��%�����l$��fA��u�3���Wˌ`�U��X��r\"6��\n�i�_i^]U��l�a�V�8uK��a�{<��?���#�y���/|F?9����*�[\"������Yq�K����4q�#0�\\��=k��\0ĺ�l���u�3׮x6;����v^B	;�ŎYo�Bj^�n\r�}2#\0wv�<�s}V�7��<�f@缨z\Zd�� ei$|��9zץ�ˆ�O6�L6X\'�u��\\܋!n�F�O�Bm��?�_�vkbLYa�^Yq��6�����t��!�5#n�6�z��6�̈�r{ߥI�^.��Yl�*����S���o5.�-G�j��˻ݡ��֑�z���؍&W�m#2�U��������m�E�ŗĴM�/�q.�&�fV�C��I¶7Zżv�w��Z\"��|ݍѸԣ���YC���whJ��I��h���\r�Ŷ��[iv�{E����u�L���k:Em�n�{��/h6h��\r�gK��;k�c�5�풉.4+g%�B��kvR/���Zj��l�r�ͨ�Ev�v�Vʤ-W\Z��6�Y4].U���uV�g��?SV����mw���ms2�͵Ky���Z;��;+�L�����nV�Z5�} u{[�N$ҝ�c��O���}�~R�̺c�b�`���?��魩�R�[=Iy\\���1����wxh��e)��ϽZ��|o-����L��c�75�۾��.VhQ�n,�\Z��mfnL�!T����������;���fb}��TN����JY�ci�/��_�A�F���S똣G��^�\r���U\0���h/����z&�5]A!+�зx|�V[��Z�h`�~���ivM��@�m�E*H�fi��2�����h����V�G]߾*w@����A��������3��YOz��Y[l��Ѭ\'H�Tn��}�ntXdw��vIͷ/JVMA;H%��=�en���T��e���\Z�%v�dѪ�W����v���`r_3���ԧ-+�8m��V�^Y�����7{�j��xre�i�G��B�m�~�UYK�s/R\r�c:E�\r͹<-ZըB��܍�+1����l�~�<� ڑỵ���	o&}��!lm�K*��Y��<B���黟z�j�?\Z��\Z͂�f+�\0�n�\0�m�\0���ܔ���W*}���?��WV��}?B�g^ܚ)�Y}wT���fd�I�m�pǐ�/>�\r�M1���C�>ǧ�T�����Y��g�[��\Z`�����2�Xʟs^��V�����Pv�On1�(#�Ăض�Y׸�0~9���\r�;x#P���U�|i��>Ғ�V��F^���w\n���側y\n�k%���_j_�^]&ݖS��Tn�e����F\'�j���{���Anx�T�\nM,�\0�\ry���-b�Z�]��*�F�hp�)Ѝ��Z��\\>�y�)y�;�}kn����.w�uOQTw�&u�eh�7i��y�\0�m^�Z7c^�X��\\HR�����X��7ٸ�#��F��EXd��<�L�����R���؅�l�WV[?�ґ�a�����fH�f������|*6Æ/u�^�X�GiB�:�`��U�c��� ;P��q\Zs��~uq�*�J�5�kZ�	\n[fD����r�f�K�]C?e\\�����k�{۶��*#��������;5�1�1ǟʦ�׬����:�i8�z�|�U����s�xX$���́�i��hMI����vī<���u񝝝�y-�\rq��6c�~U���w�Hk�������6��2���89��J��3|�����W��\Z\Z�7Փb �o<�45f�3��6o͍�������u{t���I��ʋ�};��j̼%.�q,V���{�~#�z\Zz�a��2hh}�p]4,��;��)��<���:�!h�\';����N&�b�&�;P��XKd�C��@;���4=�n01�i�Ef�H�J�o\'���]�xyҭdg���V_*^�I��e}����VlS���]>Y�ܮ��E\n2�O?/�p������$j\'L�h�m<���G1�E�l7Lb��A�H���`q�ek`�7f͑��{��<�sN���$�\0�G���Қ<$B��\0��S6֫;* ��s�J*�YD��C�p:�=�٘�I#�X���v�ϯ3�*�\r6�����C�Tϵ��eY�؜s8�s�Z~rey+�5�IZB�������E�E�^Ԗ�y�T�͸�٣�1�ۂ�M{�I\n:��Fځ[##��ʽ�S����3It�C�?1��\'�+8�%�ӽ�{�M!\"��HI6T\\�c�֝�\nviߓ�=��A%�Um�ܶ��M��.�k��˟z��ٗ��jU������{۩����S��jMc�#E�z��NO�[���5f5���|���8��m��	�dz>�>���W/�$ӭgy�\n�f�j����Y�,�lAom�i1��c�UY���XR�8g�q�O�[1b����\'	�G]\'k�v�M��e��j;������Zh�H���_&�?:��GUP�E�F�ݚ�ݑ���\\�kƝ���U5ߋ�bՖ\rA��b��&nl}�gy�p��&�\"\'o �[���+�·Oc��*K�?g��W]��)Y�`Ȩ��x���F�W�-c6�5�]k���2��ګv��Þ�=������}��4�.�o\rñ��=�ц�>Z��lg��a�]��?�S�U��w�m���֮nQQ}��m��T2���cltM.帎����v��Z��D����s���p?[&����.��Va��+����U��C�Nӵ�yQ<Z%W\'m�i�~�;{ت�_��W��ȉO1�ZW���\'Rv6<\'�W����f/��%{�E�Z>�ԣ��q������N��������PDu�m_�&����1H�V�a�c��{i���>��Y��	���P��\Z^�em��BB�v��R�lmW�1����Ν���vl��y�۞U&g�[8���.[l���`:��\r�yz�Gk4��I+��<�w��7Ƭ>�4֘�f��s\0/���r��}}���V��q���A�#*\n�yCx��ί���>��&9w�O�g\0Es�vM�Ync�}��}�~��l�:�ь�ڢ;��Y��<49��J2��{3 #�+ϻL��{[�]Y7����Rַ\rdr�{����b�J����:�g��Vqw\n,�UͬQ��]��c�iޯ�K��\\A:2�)^�·�\0TD�9W9��Z��[Dw�f��<0ʴ+*_�)�5${W�MH�jjKYcr�20=�nbڽ�_��u&����\0T����o��գ�l���\\��j����&�\0���\0:�����jj��V�л�mmBHm���in�H�!���}*�����v-Qnd�Q�(ֽ��]2[��\"{��R���$-\Z��3&@��ym��>���z�m\'y\Z��iL\0v��:������\0��b9t�����X�\0}�_^�N]vyg�*��Uj)G&9���pK�wlfG�jsۆq�Az��gz�\0�֧8.���)�isfl�R�1�K���v��Y`=���L�F��+p�ݖß�KL-�=��琤uM2;�r�����Y61~M[\r?��Щ#�q�t�Ɣ�8a�q��=���G�SB��c�5J�n���NK�=��W�{:�\\-�֚]���!0�ǯ*��H{Av��V_6�j���Tg�\\b��~H㺱�Dyւ���:Y��h�+$�\\�hw6����2�Ӡ��B>/�6��[ �J�\rӪ�����|�\"q�5|�G�o\0x��;�/&�Z��:͏���Z��d�+m�&|��N�o��<bB\r����%�J����!��\'y��qV*�?���m%����R{<�s�7�[<}UQ�@:�n����8�۲�S���8ܦ���g��0�C͘�D��>�-�`�]�[�k��dv�G&����y,�NW>�\n�ƥ#��;�(dʪ�\0��^KĖ;��a����Yd�4�1�Z5����eA�I�,��M�4�~��ot��Fq�G������:�f.$�P��\0��*�����^,V&C	m�7 ��|�]X!e���R�r��D��0���ex`�+X�A<��������2D�������\Z%�䤎�9��/>~t&uB�]��7���M~���-/MH�r����w�²��#�A{]����-k�&�,;�mr9R�݋W�!Ӡ]��]�\0�B�t�&iA!F}*#I��ѹy��q��y6w0r�]�V6)�8�Sު+�%��\'kV�\"yD>^f�sM���]\\t c�Uﵻ>��Cw0������7��c2�BuM)�嗶��X��4��y�$H�E�I�\\�\0\Z/�ttyv.�Z�M�\0?*,f6ݘ��áܤ����z\Z۩�b��q}V7H�A\'.E�n��q��i�rM٧e\nl�6����\"�-�lm�SoA����Ν���i��{�D���Ւ�v�;[v�ԥ@L|���:y\Z����S��?f��9{��=�\"���S�v��{�I�wÚq\Z����G�A�ى-:%k��hw������ao��n���(J��9�m��\Z�X6�wgH�H��66�gQ��Z/ˢ�P�H�n���������?�&������++�pDj~�>��h�Se��iev��ݥC~<5��q����V\r��U`����\nC�ٰm�ux~-cW�]+]�F�c9�$s�9��o5��#葤\\A8][S����@ʬc�R��U��V��Qh��}Y�B��5�T�U���PG,ŀ���M�KR����Mc��E���$�]��	o	U_�V���*h�����լܘ���G-�.|��j��=�hګȖr�X�1:�����Ѡ��/h�\Z��ے��y5k��tY���a��;{EB���I�S�s����W��Ь$Kgy�}ʻ[�G�S�ƶ�sܿ�4�w�W��-����u�!�%����e�;��]����3��u��4N��u��?]����:?vU���󫥋d�.�5m�(<�k�w�pkG�l�\"8��P?F�:��V�F{Mnܔ+0�M��[���ԉa\r���N^;r��v;��s�P?\"�6�ϣ�����U�w�3B��Vϳ�.����q��:^�lw}LJ�N`�ޣҷ\"H���W��T5��`X���k�Z�V�%\r���l�@B5ػW\n���_\Zcq}\Z;n��&�Q����[v�r��	j\Z��\0��F�3�.���;w�	d /yk{�rD�{�}���Ս)��ON�-B��u۹UYyP���j��UX2��s�����Q��*IT}��V����F��I�}��^W�t1`q�ko#�b�A!{���ʸظ�֠��iw�&�t�:�ۃm�(d=߲���@_�h:\r�.�F��v�����\\\n��1��c�E܀%�$���p1�$Ә����#u�єr8��B�\Z�)��A��]@����7�uq.�o��?\Z�J��^�\ZާI*N�P�K.C��5=h��q�����ēO!�� �����\0b��1����J\\�zE�ew}30i&��$��?1%�ᤸ�z*��&U�f�Vl�jr��|��\ZO�\'i#�#l1J�Ͱ+�����Q�l�VM�\0�R�Z<n��s`f��Y�Z�Xy|�h���-��Sͻv*�f�ڗ�*�����:�a��B0Cx�F�E�,Ī�1�y���8���C&n� ��*�ղeąw����!YC�>���O<�ge6���XxT|~4w��� ;�ށCr�Q��������%�w6A�S��YU����Km%��=��{�\'4��\n�\rǳ�8�V)# �2�?#�W�������� J����B\\q�%��Ml���Y\n�\'�h7*�7O���\r΁qa��@��f@N�rF}W�R1q���-5�u*�;��.�ϗ�*���8������þ�z�ޔ#�i��,R<��a�k�\0�KU��v��d���-Z�Cʒm�mn@|(��Q��V��Q���#�T���:d��ޡx\"lD��e��(�\0I�E�Sçc<����1Y�[Cd.�O�z��:~��yNd,aW�����ev�{Kg�����Ҏ�}CQu�2#�4@m�����6}FhEm�^�E�,r@Sٟ�)�}�.���]LV�)�Y���샅�O�w&��-��h���R)�4/�wH�ԅ�g~̚�I���#�r�&���o�g�I���m���\'���i���t �=6�X���	��ģ?��)��\rL�qT�|�/O���R�>�,�*�o+s*��6>Tiah��U�}hl��,��F���U9\0�FV\Z{�\r���)m;Ni�8B�~��X���2X~��D�k �0ۂ��c�9Uw�3O����8�`�N@|�f���j�r�\n��vs�,reOu��Jb��\"�s��m!���;E#��-����e�|x����]>u�~�xzw6`WrćH���=1T�k0eڍ���T��z�+~�\"WS*��6IZ&l��Ɋ�T�@���Ҭ�2��\n�[s6s�\\�X����G�2.a�m\0gw���)ʟZ��,��,7wp�����P�6�L{o����yS����p|?j�#��;�\n>�8[+$�J����n�J*��ֶ�j��| m���lY����R0�`� /��ʞ�j)�l\Z`Ǉ���X��ggc\ZJ���n�Z�xg�Y�5�cn�<T/m{v�����¬�׵I�$��(ۺ�b+��F�hf�>�\r�`m\\�l�sg�q��*OO��N�F��(Ǆ�!~8�?\n#���K�5ͼ[��(�����4�V���\0���l�c}�epF�.�,qB�q+��`�z��h���\0)\r8�m,i:���\'��P����I�O���h�;�@=�\nÈ�R0o3���<^�/���`�.�f�Z�z����&���p�����\Z;��-#�����3�zl?{��P���ջʏ*̪�����j�開��n��e��<o�4���Ԡ��p���V�>�]h�.�%�\r�B���-L��.��gl�R�lm�9Տ��l5\r.�O�d����5��Y�i#�Hw�v�7r������|)��Z�����j�����n�S˲	��ҷ�xVMG�����޲n��aSwR�9.ޜ�Z��å�$�\r�l���ur���V�W�5楼Tǎҝ���YZ�U-Y5(!p��wP��V4I$�%�x�6^��}*���-�Oh���\"�]�]�v�_�u�m��\\�ȗ��	�1vgy-ӝ|�f��ouس$�LD��3wV�u�m�Uq����i�������U���fQ,�(����Ɗ�u�E[bFmA]��a{�\Zd�)��YX�T(�@۾�#��4��ܝ��ۅ&b�]���#_Iq�X��j���nN�JF�ռ�U��;���x�m�\r>��,�U@��x�Y�t4M��ʛ1ם][R��HAƗ���ѰB6�#�i��^@���W71����֋�[#�\Z.JEZ�]�Q�+_�!u��%�?�(�lll��(�n-��)�K��|��~��\Zm�kK�wb6\\I��#\'}{u��������ԏ���v�v����oďq>��憠�F.�;w����)���+�Z�k�nMEè�IW�rO�j7.��\0V)/)&~��Th�7\"EM����Ƃo�io�X�`�4󮵪р�Y#g��Xlv���J�qoի[�l����r��ƣ���l\'\"�ci�nT�$ϯƬ��{���@�H�9�t�����pm\'L{(D��:zQ���+�U�����\0)�j���{*�<���n�QԖBƂ5;n�H#\0��wƬw-Dj�ra�}�U��R�XI{=�����7*���)�H�u�\r�Y����	�\Z���7\0�3HPyC�%FV}����Z�Eeߌ��L��C}W�(����q-�����j��E�\\X�*[N�z�zQ��`-[+eAk�\Z�>S�K@����c�R!��~5v5՝����N�y�+�:�HP�T�8���V�g��k/����K���\'�J��L���P�=܁���\0\n7�Mt�hX�~:T�py�9C�H�>^t��jõ۱}j��4rb�	;&2�uV>����Y&�nn\"�nlM\\���g�<����Qt:d��-��׳*|M��)�iO�n��?)9	��><�&��V�B�L6�c!d�y��\\��\n!���l�mFm���e�T��\\zc�Jã?��$����2������c�!��GL��>Җea������P�E���0�z�Υl��/O3��0`J�J_||?��$��$u��df,����u\0����\\;!��#�Α0�\0�|�h�f+�z��\"���m���N�`�ޡ}\\0F(����U�eB7��s��H,�����|�T�/j�\Z�s�������g��k�l�jf!�H�/,c�<���_l�q�eî�@J U,yuO��\Z�������!%�@���\0µ�X�d��W��Ycd�$F��<�H�^�?4��=�����s��q_G���?9�v�DG���.�~ʊu��N��>�#j��ʠw�AG{ni�S�Yga�ۓ�\'��T�v�\r�|r��ۙE,�uڨv�Ƭ���x�}��O�+���\0���\0��O���a\r�\"�:{n�ǖ�����X��K\rQ-���A��@�Ni,��컎����_��7�W���/x�5;k�[Y/i�܈¯r(�x��io�cJ��&����8m\Zy��Vvɩq�����c�l��(�������\n��n�������/�ΠL�0��)�;�}�^g�9R�ݍJ�\nX�Lz|��sq\"�m5�`_o�_*�N%�^��0�F��H��\n���C��/C=�.a����L��~��\Z�ܢK��B�1/uP{�G�u������P��Q�v���w6\'�[և� ��i.��|G�<z�����|*��P~��F9�����A���\ZJY�~%�k;[y\Z��(�MUSq�3j�)��+��}��o.o��޼��d�T�\rC3�~�_I�Vk�l�떷v������1G���eɒ7]�0�-j��Wz,��������w@��k�m��*ܸ˪�HG��Qѱ�˳lZ1�;SV�\ZI��|?\n��u����n\n7|g��v���N+���4l��.6���t[�Kc���$)�l���\"�4Y�θ-?Th�ы\n� ����Pڮ��wV�@�U��B/���;�F�8n��I�W�R���Z�]��i�\"�wεa�`�o���Zt�8�~�q��[��$���SK�Ռ�2���B�i�����[��)�B̕Ir��M�Y$r���\03ᨻI�iu\'�JB�Ws�\r]ZLZ�T���S6S{���U����O���U�*�(�����\r���n�y���@�z�F�i\ZĄ��S��;�ţST�lv�]E�\r��1���Dܢo��;gc=��ߢ����\0#D���u{9���s>���s;�2��;RP*�[�{z��O��+�q�\nu�1Gm}3�5ȼ�`���	up�PCrd�>Ǧ>���w���/����\rp�IU����V���[�F���P�_��T�%����8�o��h��[��P���MuX%����T�G?i+��)�nl�|���{p��J������7��4є�����\Z��c�I �xӔ�1����lf���:���}�d�szж�s����/\Z���0���ֲ�LvR}$ܛz�+؅����嶰K��A_�y5я�̏�YT)y��&��Π/,�V,WoL7n5�e*c;Db���8�i��NM	�B&ߐTD���9���k�G�M��2���H�����x��5!q��<%\\?<�%0�u� �2Ȏ\"%�q��=|�f���̬BF2�1�P���Q�I	����c|��[���\n\"��=��i`]j3�2`8��=뚋���XM�U��oR=1K�Y�A�i9����k�$�\"F[�Fd5f�f-m\r���)d�Rh�	��`�����R�J�P;�s�e�z�9}�A}��a��<+���wq4��j��n\\��u��呂���K`��ɛ̟����L`	3�9�J����׉��W	4�?#���\n�Mb���&�0�H9��s�#��K��HʫV�,��t�S�5���C��9��^��C������b8<���D�I�ҁ�\0{��wX�,��1�+.�Ub9`��I���*�z����D��*pvr�KI��ϡ�&�4�%�Ȋr\\�3P�h�Y\"�sϥ�\0�LGA���9q*�r�ז��O�v/M�*����qq.�L�P=�5�<X,��F�}�4�c^X<�Ϯ|�{x��5=:�IEF�#� V���t�Z�G򌒮S��ϗ/��|W��!��#��gU�I�2��sO�;4�\0	���\r�\Z6�>������٧��=��2�;um���N*2�{wx�uIñ��h+)�_�]�|>*�[�m�c\n�Oa���]��Յ-����\Z!����Vk�R���E$�������[֞A+���bH��ʌSf���_�vY��^���AL�$w�+K!m����:��2�;\0��J��W��U�c���{7���3�(���a�oCqp��O?���Xu1�ī�\'��2Gr�_6���6X���������0�NQϸ3���cATs$����3]��Ev�/ŏ���ܹ,�̶�oZRR�{I[,�O٦���U#u+(�F[��}fcfB��6�Xxh�FܻhZ�ܝ�!�.uEQ�lP�4u�ӡ��U2Ċ?F�f��y:�\r�f���&�G��K�	,Cz���*��\0�Z�V���tg�� �#m-�j=Ҹq,/n_#���ڔҴ嶑%E��jv(\\N�Lv���s��6��->��4{������e��3G�EN��7La��KEV�\"(m���V2�e&m�k�#�ʷ�[�R�VV2w�s�cu3�f�ї=zf�JC��/N�⭰���0��o&���T�j���n�,e�Fj!Y]r|�bvy���\n�	?��^��w\nq<�n�Skk�N%��O:j͹:�Q�%n�@_�N�J���r�C��m��T��w�Q�--����{�W�6�Uu�^\"If�ݣ�i�LѨb��yc���|�^q���[#�� �j�f���G�*ZY=��}X�Ư��!���W��ި���D�܅#�<�>��5���wϹ�%�ĝ�	v�MFu����U��p{z>�a�\0k��d,�y�?��4����nrG0Me��;h��h0ƻ��)�B�N���nPW֯�\\��G�������]��ܘm;y��xm�y�`��یWO@G9d�{���Ǜ���X-�*�ڢ(��V���1U`\nB\0<ϝM[�ff=\0���f7�8Cv�Oʕ�X��V\0y��%_:���3�f������6Y�P\0-�tn�gh^t�W\r�d���?\Z�����]��)g�*��H���f<�y�m#T�F���R|?/�GCfe\r5�c��{�4��ᵙ�\0�Tl�*\n����	.�X���!�go3A����`V��q�*G�O��H�k1�ߡX�UI=�B�w�z?�W��<���\0�#�i�\Z���/ s]�AW��A�[/g�����S\'m���y��r5^��#�\rT���8Ӎ���O�.��4�Q->���T�_W�N���v)���V\'�e����#����^ӱ�-�/�!*Pd�d��>��,V��k\rݬ֓B\Z�h�n�ͤm*G��<��ת�]���{>�Q�<�jN��P\"\\q��0�����*wR��$+�?/%�\0Ϊ�d��_q�\0�3v�=����q���R}�|��7,��������l^�iʒ�-���h�;�6Z&�ٕ���k� �y�6�$g�X��>2zJ8��Y-�ES��N����J�\"+��C�������M���\r�GЫ�WK�y{u;hb��5�2G�c#�3���������u�N\'��w��r#�H\\[�������Lm�{�����`\n�:�L�K���^T���s����ǀΩ����.���X��tQv�L�\'q���P7lc�-���|��?[,�9�dY��]��\r���;������4M-���d�alwy/Cֶ�V�K�i#,ɼsd���;��Ú�����]�e�i$��X��ә�:sǞ¾Tb2UW4r���.� E+�٧y|\"��J,��f���;��4���[y2#r�Ѩ�՝����kFvڨ|[���,k��\0x����>y�Gv��T���p��nL�o?:MCcvӹ|�N0[�Q���V>�So��j��(;Ҕ?}1S�W�[w�FS�ڶ�wB�r���R�8��0^��hv��6��i�o<��iG�M:<�X��\Zc���f���t.լ-YUU9���Z��;�{6v]�u�������\"&\nFզ��_v�m�\Z{��#F��w:��}�{��f���2�Û�2��_H� �^�8`�i�\'�Eb*�O�U�Tw���X��{��e�k-b��H?�+���6,b�]=������;��m���!X[�V/\"�K�JI.N���k�G��Hp��jr.�]�Qm۷\Zqw@j�2��Ĥ$�7v�R�$1W^�����6�\Z|��ܖ<�+T��DS+�nϻNeݹ<�5e޻rs�_�/��}+�Ṛط�!Uz�������^u/�/=�Y���@0I���\'�IY���t��xđ1�{�?a�QV*�l��穫G��*wxF*���i^F��[�T\\��Q�n�\r��S{���M��|��P�t�]یsy0(�����\Z=��������WR@p��-���P����999%��:�&�b�q����Tt�09��^nc�iKa��f�/�r�pW�����R�%�M\"<%ˎY��{�0�y��y���y����.�=蘎l(��)spZ|-+Ep�u.�!?����:�\\v}��Bp�zUe}ob��S����Gq�ycf�4��wiL\"����f�im�ف#�,\ZkƗ�w�G�۽@Uz��;Xz��uPOfz�Mj����mm��XY@���+\'�7��M����D鏃�+R��>̈́�Ps @��}�l��5?:�#���p�x�Y,zɭʜ��1�����k{Td ��~}+��[U6P�G��[��C6�6v#+�U��3=��ZU�[iq��1�~ʇ��s��Ea�ckč9��b~��ڗ2�%��UB�9��>�)T�n��N���^?����ȭ�sƞ�\0�Y��Ӏ;f+.��m���z��UV����%�xO�ou]f�;}>Ջ<�7d�C�R��\0�_�7��c����s��[\0���F�9� �Ǽ���dr�<\'�ғ��ո���M�Y�ϛk7����q����Z��/O�O���������c��\Z(��:\"�9��$��㶊(�A1������\0�>66y�\Zαq�a�4[������Ip��qe���*0�{���a:$���uțU���)��d��i1�u>��Q��P�����_¨���by[TY�jdaf�t`:gΓ����Q��=��/{ ��Rs��W���PdT	��<�R�/�oi�Q�r��ml�i��򫯂=�p^�S�������{	X���q�;vY�\'�qbfi$�{�MŒ��<xɼL~\n���wHٙ}Cb���2��h7I�g�Uo�U/ġ�P2g��|j=߳�\nņ;�TK�ZGe*Y�I\'���$��>��J϶F�D��&�B��*ms&�ϭe+#Q�G���]�X��3ҕ�n�Ms���~�|���y5��,���Y��S�����+�ǲUn�=ʼ�PG�>�N��3���ϓQ*�NػF\r,�����mm�m�&�ʲ���*)&�zv�x�A\Zu܌��(bN�>T7\Z/f�����QZ�ں�����`�̑w�}�ƕ�����O���NC���Q�J�RG�[�|���v}ݴ�x��z��w�<��@2�S���i�߀���{�j���%�j�ާ:~Vq���[�a�Μ���1ᡲ�[V�[l��|;j.��%��!���&�x�\rR�U���+yo��`Q�[˕.�.ǩ����,v���͓�޴!�\ZD���Tv}1F���#,������P3Hp����޿��Ӫ[=�ݣ_JC��T�ճG<��)��i\r��5a2�U�gm$P3u4�mg�^�pb��G*���+��ݴW���uB\nF.k*N\'^�.Me���Ah�_z��#;�M�;p)|��ΡQ��l� ��8�U��\0�Q��p�Ӵ�-���:���bI\"�i�}뚫�_�g�A�Z[X�c�1���\n���9����r�l���G����g薦��$�p:�@��T]�5�$�H�ʞg�ªFbj�v%FӴx����oKg�B��ё��x���©ՍJ��%ԇS������	�\0zo��K�dW�,Ks+r��ˁ����L�����Tj�_W��b1wp3���������r֥u��T��9��C�5@�g\0g�μ�7s���\0\\:��5�B��=)S�8�S(R���\'�>_!M����������lX]F@\\�t�k��ﬗ��d�{v��}�ۿp�/onA���|3̓�z�@tn�}�-���+x@vQ��Ԍ�Ԟu����\"M��±}^�sq[��+U�<Ŭ����\0�=<�M7��/�׿�M�&ӿ����MR2�l���q�|��ȟܶ�?�&��E�W��m�&�?�c����i|Q�A�#�����+���*\rk\\Y_�����QNP�q���YZϷ�}u�<&�:6���f�\'�-�Z�H�c�vw��U^�\0�}?�L����^��3�i���\\�\0ͪ�/�n+�n(����I��Э��uW��N׵��cF\"T����+��8�ۉ�\Z/\r���ݗ[p�����Y源����#�$s;�8�B����?�.��G�k��]kcG�O#�\0����W>�x���p��i�N�io:�w\r�w�g�0[�<�{W��/\0qV���H�O�{�]J{�>�X\"��dۍ�X���>d�!wYZ�gio6�cP��>��ƥw�#?:�}��q��G��:5����i�&yD��0݌�U��|���n#�^&լ�cB��\r7C�-�-Vk��$=���Ƙ��?J�6;#8�:�̏Ƶ[^�Kk��.^����\Z�kkkԉ�3�ȁ�t�ڑF:�f����j��8�˄t�KN�������We��v PA�ާ�B����#Es\ZK#�h�y�?r�q�M��\0\'�k_����eq/�՝]i�\Z����#���C������yV�oHԃ��\'�O/�8�A��=�?#iǗ�?��9���Ӵ+���mt�&�7����B��a�HS���W��k��L���[���q��g�1n\"�۶�/]�\n/)X�e��0���K�������O�9�B��O��y$X�~!%�r7�?u�-t��Sn�\"�z�JJ֍��by���M�,�\n/\">5�Fyd��$|����h�#�9#̚����Ŝ�<�~�����[��XCM��Бͺn��+0L/��¾h\\��RR��:�V���틱lr 恸��v2$���\'��\0�[:���&\r\Z����U�\\}zB�s��v���6�*��Y��+i�[3�F%絗�>@�Z��\0p��g�j��4�Ke/����#4 �[O�TK\0��\"߾7�V[G�5�y���W�*�x|��c<���Ӹ�cv����^�\n�v��u3��JM�v��W��˨��@�\0$\0oov��0}�G�S���QG��[�����A�*��O}���3ΒGo#��m��U�q�\\M2D�^|���kZhR�ߪ�{\Z�����}���^-��?J��U�5-KTy�(��{��M���,Y�W��T�o�N�Z�mn�l�X����߂���5);$�z���aV����A]+�m�kf��<_}#�\r��ÞE{���H����ո<=6�n���V�ݹ����r*6�e���Z�FE]��YW�� ���Cd�n��v�ʜڼ�����I��v���)���z��\"�L�S���7\Z��&�d/����Ze�~œ���措���v��:����e�sE�m��Ŷ �0<�B��J���7d�4O�\n�*6�R��K[3*�cO�f;�_\n��E+n�c�ΡBW�R�@m�ΟZK�ި��Kn�<��I�*���8���cu�-_��C�5�3y�[��ۏ��|�c���i���=����S�jC���a�Ӕ�PWS���@µHkņ����B�\\���\Z��&!f�e��V/�����r�ve��j\'L�y�U6n�O�9�%�� ��wΜ��Lo�S�6Z�N��ٶ7��j���}5h��\0��5�_��t?h\0���]n�G����b��2�XeH�+*źx�֭\0����wjW]=ݳ�~�-��T�f܎��W�r��{$/�W��.,L�?��C��s(�yn��7�b|ڬ/i�Mq�|�\\Gco�ޗe%�v��Uʎ�^u@��҃]���!��4K;�O���Ӓ�Io��`�G/}\0��6��	�[详���2��6��ֽ�߮%�,(ۃBZ�#�s��\0�o\n�ڱ�5�d\\Mwo��Am~c��� 1q�㓝�88�B\\{ퟍ��i���ZN��Q��2[Y�f��oؤȁ����G/��oe�C�|W��:�i�:Ē7kb����s�,9�<�J�\'8��t�9��-���f���.�-�^c�h;����MYu=}5!+Y�:xm����vDR/��^u_\'��*��E�����ێ*�������?c��V¹�>b�����w���i<1d�+\n�o�n�\r��X�\Zf���S¼�5\\��}�h�&���d���q��L��ҩ�\0�Uw�}��(���>#�_R⋗�3�E1dbh��FA�Κ�_�R�o�R��N�.5-�P�{kyaE��ԉ��ԏ!^��&��Oew�坒G��zL7��[�Ro�b/<�0I��\"�ۏ���M{������KQkh�7�@ʪ3�Td+��a��p��뢝5;��X��L�e�+d�Ȣ��F:������َ��i�J�?\'��w%��ʂ!�dPr.]��hOM��g���j���V���ga���{r�bI���L��}EB}�?�u���5�3z��l��0�,\0,R�x� �G����>�!A��R�́�~>�R}OK�0��cP[O�����y�?w�s�8�9�#���C^7%�^�@�r1̌Ρ\r\Z�?��e�7�S\\*��0Uu��z�c�YL�8p�	��U%�:ݟ���cF�F�U�2�z��-.����)䮾Y~Cv4*U�%:�j���խ���A.OÕ.�t�u��ܮq��?�N�6�4�WI:+�|��I��_A��� =���@���5��0��S�;K�HC���}��i�@P�!��E��T�Ѱ�6NA�j������(	�`j����c\r�|���h\\���=�G���S��v����V���u9A��ɳ�A�H_O�V���,��^��*�����C\Zٕ�>/�I�Y�X�m�.|-X�?dW�>BbĪ��O�Kn��H�y�_o�\n�m���u)�Wʛ����N�n�y�k����Q;��7�a����i�V��Unݬ̵O�?ZA���F��\Z��C��M��hZ�v6��е[�u�Ȱ������.���^|����O��\rq��ųV������P�ڭtQL��\0w_��D�\\�i%{�MB�!Z�w�j�dfL��m	\r���\Z�yY�g�&w�捯�V�E��e����|��EQ<�Z���V�vݢ��>����XK�p�}��{���ROpr�i1:�ۓʩ�o��Uϕbf�%\r��M\'�r�r���������>�-pH�	-s��.�%]��>�nw�E�(K���K��X�;�>T���l@�H!���i��T�5�뚞�nd�\n����Bp������{#���f�N���@˴�Adé�B\\i	�5l��V�UK?���mf�nT�_�Z�US�\'>�%�M ��,rWkQd2��/�JKv.���UwV�:t��(�\Zg*�,�~G�r��5\n���:�SR�N�K�*dV!mϯ:sop#ʳ�f��سDD27q����_�l��\0�����_��S�:N��i���3~�&~ɦ��`�\0������r?���\0��A���T�Fry���Z�7K˟��PM섖;�,r~��s�CR�r�=I��?\n��}>����$c#gJ�9�\';yQ�.&$!bTe8�i�mPC}�Sc���gc�|w���ʖ�k2�y�_R����G0~���=9W\'5��������mw\"H[������7��N��׌��FWlmwl�L����sLU�Vˉ�ǳn=\'ߞ�W��Z�e���\0�5���\\�6����*`�T�E�e�h!0;�RZ\'�W�\0�=��qN�g�Z��k��7�.N�\0��>�����Bմ��&mE5e�n�.��K��쀗9^̎�:����/�4ۙ�\0t�8#\0`�Uɦ�{W�D	Z/�&�J��X�w��O��ѳ�K��c<\Z�������%7�9.�gp8�������\'��v�E��0\\	�Y^f�W�@wH���zx�+RS�7�:@1��?Ϧl��<�����`�(����S]�������t���\rh��2�N����h���}~I�}bE\'��D�R��y��-~��k��wm�݈��,6F�U���Y�;U����Ux��*%��kq࢜G��&���g�:��j�\"����X=����Ż=N��O�+mKyW)�!G:�������/S��G�x5(�n����\0��$$���A��RP��\0I�����:�j)ŭ��j�~�,�R�6�o�N�llG�0�:��$��15D�$3�G*����� 0�3Ι�쓇n��b��kt��H5mAb� Iqй��o¨Y��N�q$M�.yd�������M�8��p�p��_�I�K�԰+Ә^@�\0�)���?\Z�����nJ��x`�M[�8��Gs$r�Z�ʧ>67E�Q��pp=hc���K�\r\n�^�.��N���,�w��ČZ�l�J+اx���d:5���]�;Ǿ�&��\0Wn:\Z��&:6��(ف�{�\'��s�dRO��?]�H�8��0��:ԷP#r-$\0��?ū_YԀ������\r<�T��m3O�Z�L�4��\"P\"�SAP:�栵�Y�����4͕%��k>���E�O����ddr9��Niқ��KvA���	�L�(��}�մ��|���Rs@��Z�E��@�%�P�}~5*bR13��Xݏ��`����}�\0�d�\n�!��iE���=�A�Gr�S+�	��W�ϗ΄u=Dr�^ӟ5S��>4u-�wQ�ϟCQ7��Q�� �I�Uۨ�KjS�[,���I�n�/�ΡdҦ���h�X�Cy���2���G�GF�vi��(AbM1�R��*E�I��^E\r�,W�M{��ƽ��c5����Vj��T�kgo�/\r��U؂�~�T���Z���?�\0�ww�\ni�[��`��r��߇8���a���Q����FŇp�X~fXD���:�8����ڴ�W!�ݑ���#�pM�9�@�_�^�������x��34��c���yV�i��Zb\\}FhӇ�1�;�Wʃ�6\r�\0w�6� T\n�/S3Ý�%,�DS���nt]gw���nT�p�j���tAo\r\"�jǪ�A�}�\"`�ǥW�sn��Q�7o��}��鎡cJd3����l�v\rj���I�\n(�0����+C09;�i�ѷ˗�f�XS��ݨPۍ#��ڧ\'�A:�F�쁀�n� �[�}ګ.��j�T���!���#\r�*�uK�CQ~�ğ yVzu�囍�HAo���>��T+�� \Z�=�U)��[�ex��jeٲ��S��sW������(����N�����1nd@U�e:����c%��F;B�����el�6�1��ʝp�\0�Y�c\Z�m�aZ� ^Xc�\r�Y���i��d1���&�@S;�\\�v5��\0s�H��yС���	��2���M�e�FO���I�a����:����W,��0�z�G���\'w�:���_ƗYprNk�8��\r�:韊�T��\r�{��Ĺ��\Z�>	r�_�������[�/8��4�m�p���^�XՆ��onN�\\��|�v����W1]gSFFɽ�$��;V�9�{L\0�W4�B�z�b��H����s��.�{tI@V]����MJv(�1<�a�}�d趒D��,�rlA��y\rׁZ�7ؑ�������.H�\n Ьm�p!8<�|\\镽��	��<�yQ�h�B�.�s�W�f�8.�|����Q�{�~���ٸ��7tc���im4�D�>�4�$�珝No[�1�k�py�5��c�&WP���}3C�7_\"6��9�E3\'g2����P��K�2���Ң��/bgN��h6��r���QPB�T\0�SK[qm\n�\'�\0yt�;�WpH�I��֎��wcb�Hf�R�g��w+В>5�6X!�N�e񎧥,Ѽ��I\\ˠ�+1FQ����E�\0	���,�\0�#G�ܠf��I�>֢,�.�S�%@��4c��-��g��u<��ٳ�]�q�0�@���J�h۲\0��x�[�a(cl��f�n.��T���y7�U㓪�Ҵq�a�@0}qN,,�I�>�v��-���Ý���E0?լc�#��}~5ڢ&y,�8[��a�IP�6ьs�Lu;��q*��9��ֆ�ծ$�;&�ǳR\n�ּ��Vs�Ĭ�Б�/�&��D�(��I+�~-2���I#���|�\nj2&�9{��,�\"�2������5F��O��7F��/�\ZW��\'�l�+��,[�M� G�o���iHv��iI��C�[s�Gt�8�|���D�QX��>��1A�B�P�\"�l8�{�4]a\n`�m�O��魚@Z�	[,�7Z�K@2�è>�ukÖf��W�\0s��m�1�Ofs��w�<��ͯ]\\�cPp|�����wcѣ���ۖFA�Q�Hw2��N�s��P�Ȅ8�C�Ɓ��~^t���U�4W�{�]�<�#g�qN�h�\r��F�{O��%+*�I<\0�Yę��H�\0#��U�����ZH�\0����n�+�\Z�#~�+\r�&�K�!�I:qn�?���X��w�A��H�����o�^d�7b�\0ã�M$���y�l�[�c�g/��	>����֜_eg*~�//�x���嗢ZQ}A�zw�ˌl�&�}6tS�\r���uJ��_.$�O�\0I/���\nƻ�7���Y��P聯����s�\0�I�tA����:=����~�c�khk�W7b��uU9X5~�軭K1�8�N�������}5���A������ڭ��1C����5�~�:��8�N��e��!w�\\����]9G�\0+/��i�^f��̚�?��\'.O�w��_�T��s_������-�\00��U���Ek���\'?�����W����F\nz���Q���~\'e��m���\0ڮ�W�hX��;���g�ۢ�sݲ�ީ+�?\Z�2������|���o��^c�RUd��i�Ѓ��Au�\ZT��9��\0�S}��6��}5�m%��n7�_}�O�?Gw�Qc�$��!���M\r�D�HG���\0ʥ豬[�\\Og<d��n��mlc���ﯹ���S�M��3�a��#���L�����}��=�{O�A��]l�:��H�?Gw�Yd�2k.����/��4�ڤ�\0��Z+�:x��-d�\0:�xW�>$�v�������9q�_����Y�&�={O��\0���u��}}��~$�v5�H�9�:6���k��W=��M�%�\n3ݫ�K]^������6�\"�\\r��y��;^t�B,F\ng�h����}CP�������[�e�^�^A��\r�9�C?�>���S�z0�H����wr��W���G�,���4kI���\Z��]��G��o�Qe��_���=%v�m���\0έ��}���\\��E��Ջ_�ֹN ��/�Ԭ_F�]g[�����Ml��_}�O�S�	��f���׈#c�+\\��\'�Τ-}�kV��6fm��X����9ݒ=<�[_U�W���6��=��jok$W��?�~\\��L�=�j��ٻ-��[�?�W��_b��Jc�I��g�R��ԣ�����X=��?�>��%�ɩZ�~�,?��������ū�s��ʵ��^�����\0���J�{/���om���ng׭Yد������=��\0�(�?�Ō���ӆ���� ���Ҿ�|W�b����I��#=@��G�M.}���KA�Z�sh��~5g���/Z�JO����[��HH�V�|�d��R�^��l����|�g������~	��g�kyز��P�#0���P�{��N��X���C\"�e��_�*��}����������#�7���8�,\"$�I�?}<�ϣ止&۝j��������[+�|+��W���}��*�e���L��ۏB`b�7�fӣ����l�6���Gx�hʊ��˳{c�K�Y���r�c ��S�T��+�Q��FjZ���d�.��c8��2�D�Fȝq�@���y�ҒZ��\r��$ڔE�Ϭg�j�J/?�o�������������itk�����r�t�¾�\0\\s���mg���}<;����ۿ����0m�ʏ����3���xY�\0.�������##���B�xJ[���EAW�j,����9���6��]�W��p�����\0�A�U�5�וb��n9T��S���p�3����\0�?�����Ӂ����?��߷��,����T�	��������X�\0/��O��N��k_��{ۢ��+���T��g\nV\"2�C��пĭ_��޽�\0\\D�\05o��z��&��+����S�΅���Tǣ���h�F��]o^��`g���\0��րA3H�9����&��ٜ���|�\0���3���?���|?�������օ2��ߍ4�x�!��X��Ʊ<����t/�#W�\0/����\Z�\0$k#�\0���y5̨�pW�k{ ]��mbƂ����tD�\0t\'B\n�������\0[�m���W?��\\�A�[�;Ρ7M�m��\\z�+�d��S\r�h�[�u�G������.���\0������Knf&���!LBp/3� ��������_��?��?���9�>������W;7�S�|�IX�d�y���\0g�k��U|�=þ|��\0���U��I��h�:������1������c?���_�p�28X���\\�1w3�u���j��\"s�����;�p��<�\0á���ק���:?���r��\0������\"=�I�o��T�ӥ\\-������4�ς�hn5��侇j�yV՝GT!��2����s����>�G���+����uv�^pK���5ðjE�ӳI�����\'U-�\"��k$}�o�����F��ܓ�B�|�K���YԆT}qȎ��jn���\n�ӝ%6�O���1�u���F��~��bG�����C��\0�?�V���o���ZG*)���Y\ns��\'ʹ�1���oO��(�n������?�h��M\\y��6��rG�����V�`|��V���x��[}>�k�\0�>���nyS���ҁ\'������+����HN�x��LE�����9���Ͷ~\n�U/�{��ɥ�c���\0��S�7���eơ×�b�7��&W9�\0�<�hե�2��\"�S�,�\0�+��;���(�[��E3��}5xv	�Y�ޣy2��J����\\�����L��S���\ri|vS�b��F=ѻ9�84�$0�7s\'�)�,�-5x�m��8��l|����\nz�M=0�j�����=6�@Z��0J�T��4�}̛O�6�l��?�_�ځ���[n8KS����<�Ϳ�\n��M��^���pk[l�kKp�cAϙ<ɩ6���M��I�#x��qǧҮȦ��]Epsu\r*>�:q��\0�W�c�}f*ւ�L\0y��YC���>�W?�w���ǣf��I����C����S���\'�/��\0�EZΑ��g�3N90	!ppA�O�l~J�\0�c��?�(���������\0���\0�#�u$d���4���Xy|�ϳ�u|d/]{�{e�(�~�r��K�G���N}&F�pn�H��\0��ݪ���+��9�J�#��K�8n�F��V�\0i��(�y�<�d=~-3��qS�ӡ��~�u@�n��ӏG�?T%�@p֎<�LQ�I��W\Z��ϒ[\\r�L��̗�ǅɺڧ��A��,����t[�*S�~�\ZG�<v��[�#�d���\0%s�ծ]�.�9����C�e�e�n0\r Q�E��J��b?o�}[�=�/^�<��1ן�;a�����\01k����U�d�����>}߀�\0ů�lo��i�����\0/y��w�����Zެ3���J��lT�e߳��OѨ۬wr��7w�ޤ��wL;iY�����j��˷t�[Ь� �����αU�n�4�nޔ����A3s�\Z�p6�,X�u�\0`�6f;�j��2�?;�%�J�wg�ak��K��5�QT�k!�n[5�?�X�zRl��!⪲�-��J��Vݣ܅i���oʩ�+��J����^�0����V��i�H})=���H�%�V��[fR��i�7.��|itV�p�\n]�R��\n�ƪ��3�-������yS֑��+Xo\n��r�R^4.L;6n�W�Wo+?�2���V&�τ�ZQ�,)�Z���~�M�m�iC3�mo��Uf��jQ��O���׫��A�yS�Hn���E[gvk.����Or�mɯ����lŚ(����ξ�ו.���?\ZL�^@u���D�Vy�u4�����9\\����&�g���=�pK`�j�}{��y�z��[�k�^ȇ��x#��\0��uv�_ޤ�V����{8�5�I��s����LБ�ڿ}i޶��cS�����u���\r��G�k>M�Ϥ@���M�� ��Or6��06�\r��|�\\-����@\r�I᜕����*\r�F9�Mx�OQ�3�u5�7�r�}�j��̂L�P�y��������Ѓˇ`7rcӕ5R��Lp��*_$D���I��K���i�#�h��U/	Y\rCV���\0{�Ǆ������`�\"A��c�gy��KP�G#[^ݳ�l� �\n��ѭm��;��q�Z~�h���0}Md\0$�X���YRӰ�I��H�Q�JZ�Oʚ��)<�N`F,��NG:�3;G�<�e�n�� �z���w�r.t�0���\\*\"��,ˍ��<�+X��S���r9c���y�� ��M���9I�e�\0H4�Vc���k�D��w�Ҩ�SS���n�@P��}i~ט�y�t�P��9�I��T.�(Ҁ�#?�5����]Ĳ�P��S��s n��	�4�+�--���1{��-��_�Ċ`�P=1�Tw��꺻���$A�G��#�F�<�=���o�V���H�\ZYH�2�n^u�RJW��g�A{n�Zᑂ�1���[�a0p̓���P=W<L�oM�+:U��6�\0�xz�٣��<�@�1��(>St�UVY\nK����u&e����3\"tl��y�&d����Ǖd>y��$��\0�w�)0$G��+�?�wbƤ\\1i�]ǜ���⤽�RO�d>}�ޤ}�����f����YA�&��ݏZ}���B⤣ҚU��U�T��ૻsyc�}��y|�_\Z����Q{���TA��s��\'�sT�X�¾�+�?������mW �D*�K��X�w���r�OJ;u�^�lm�C��\r����^2�\\�R~�]ao�g%�?E��⩺�Z؍g<Vh0�Z��~�w09�{N�������.��^����^vɟ��.�}��*̍��e�C��IM�%�R�U;2~\"�i��Z%q+��A�Q��������=)�0n���3���Δh�`f��	�\03Yiܠ�}E�-$o՛oA_a��5#�w_?\ZO�����@\\1,sNveCc�c`(�4�/v��* Tm��bT��_��̍��j�ws\0}��bCl�|�J0VPqӥ8B#��Ʀ�\'�a��S���[:�6�\0���ɿ������$sݭ[�\0>�5+m�S����Aǝy1�ꀃ������֨r�rc�sG�vr���l���t�~�ǯ�P;������S��e�\0��zr�$��r��|�׮�#,�]\0��~��O��\0UBk#iT�\'8#�5��y2<��M;�\0���N�K`�Dny���GSP\Z^�s�] �{4�CsD̄�r(��4�v\0\0�\0�]�~5�6��\'���< �ݔd�l�w�����TZ�}9��f�?�\0\0\0u��=��<�W��n\0m�#M����b�Aaֲ�Cvp�z0��KH�B8��S�\Z}DABe����hрR<�\r�9��1�	�y\n���B�J�v��9�)�*�A�����`3�0qX��.2p	�,⹩�]�w/�c`�S��<S��\0�灜���~�&� :�4��O=��\'�>U���Y3̙U��|��j\n�����������\\�=�x��N.�Z�5�AUM���&��6�U�+���T�~��vm>xO�\"d�#Ң�tn��i������݄�c6\0t���(��գ�N�.ZA� �\"�׵�ko$v}	݀3�U��MT�������N������Dc�/�h�}�w7�zΤ+B�ѷ\0O�Ɗ4�*m�㐐	@��,��e�\r�pE�q������b\'\"68hy����c�\Z���u�h��ksd��H��~m>g>c�V��h �����AA#Hk��9��^�)�h��nun0�$�u5�{f0y��Ŏ��(�>��ǽ��\\�|�u�*6����\0xi<�%��������)B�j�y�V<��P��HGm#w�j�;v��S�}�EĊ�>ѹy{�C�hjY\\)_��z��}lOLѼ#���U?�&ރ�S�^����t���1��\nE��a����̶��.�f��-!%a\"�Y�Յ�[lIZ�6�~tD#B� ���<�Si L��y������oƣ&�gv�Wف�\0�� ��T5<�O��9�-B��.�$�y|z�U�g2�aH3p�{?�a���FO�[���F�V�וm�%]�1~�uV�Ѿ�z�#]�/�+��{�����$�^���_��\0m3�[v�����O�󤤴\\�C�V��>��Z~������Jj_��;yR�V9�3���ڐ�Uܼ�~5����Sw�S&��yRk	��-ql����{��ϭy�ye\\m���[��|��l�/�Q�]���Ȥ�h��9[��m$~󲍗�3X�𨪳)m�m��+����Q#�ٖ*Ǒ<�=E*����1l������+��<\0VF&��V��0�	a�g����m��>4�7}�]���M˞�\\�e��)�B9�=&�i[�co.6�S�q��ʹ?�Ye���,xy\n��6��-���{ܪ}�.=�pN�_�ݿ��rgc��c?}q��(��}��-�\0�]���9?��5�n,��QbK�l�-�z��!�C�#eǦ*���g,VtG�2*����ԵF��#���Ued��v��w�.�\ZϳJ!�2>]J	�����x��F�@Ӥ�@��1BeI@ۀV�Z�K�#^�2�q���M_��0K0L� �\ZC 0y7�FŪH$U�����4�+�Uq���T�pl�2@�l\0�s��Ώ�p(H��\Z�&�\'�Ph�n����^X���Fԫ6[��N;<�\\�۷�/�L@j1���P1w����L3S��6����>��q�D��N��i�矱e%%#��G�YZ�L�k��N<��pG\0�q���$-Y6c9Qȑ�N��WS3pv_^@I�d�M�6o���Rz}��X�AИ���y���b�~#�)vX�\0�s\"ȡym��_�9�{��>��8��H�Ȏty��`?2��\'�MwE��8��d��������������ނ>�g.�N�͇\"�|�b�#��(�U�8\0��Q�\0�6�����Q	b�Ǽz�sMk����L�?�Yˉ5d�^>�r<���R\Z���7Qċpg�WʟC�>�UmA,V���K���f��ܡd�s�:z�2�\nlfnV<;�Ga�A�,G�)����5�јw$�����*G�K	$�r\"���\\D�&�×:[Rꍒ���F�d� ��c\'9�/���6Kh��,���?�l�u�]X�\r\r��2ʁVD�«�c�-r3�W=.!�5.\'��T�mf�9��8�0�!�:�1g�B�����ܝG�--om[ P�������J��n��g�&�霌��n����>x��gLώ��\0?�,�9�>�G����珺������L�C$R���eXz��kG����y&%�\n����B|����]��E	����#f9t�l���G\\8���*�c��6��\"�$A%Ts�C:����Ը��Ŵk�x�3��?:�%Lo�\0�J�юN�ƥ��<���;ǽX#\r�A���f��H\'\0yRX��<uP9���\05��,-�$�$�{�x��Qk�6*�1Q��ޢ�7N`��\n��T�#m�j�l�X�\0�ܱ���q�5giG��o�)u()�6���2���M$�L�/_�F2��z�ga���v��vxG�O/���V\'���ou\0W�Oz��I�f�JC�<\\�6iI%@��A�l��^�g�/_:��a�3�s�;ؾ���S��]�ۮ�9���U���y��\0�}�մ���6������k��7e�2�v��v�����^	�\'���#a���cK��#m��| �D��`��(���qW�ͧ�E�ɯ>�=�Ŧ���u��1\'%Mނ��E� �����]i_\\����4��F���\"��ڇ�pOλ_�7M�ݼ��L�q��gX�J𑍸�_*�ؚU��L}Ջ���W�3�푿f۱�+�Ε݌�X�|�b�n�1���@�x~DR�0��ΣB�Vُ�.G��)B�Z�T`��;���Tʇ���$�U�8��r\0�l�Ob�\ZTV��F�\\㴷�\'!	�[�|*��M�F��Z��\n���[��Y�lк���$�%F�[j��K-JMjN{!��U�v��,r�> �k�y���0�\r���$7`�x��{Q���.���swy��[��B��Ԏ>�E�.��{20��m�%�*���[-j9�a�̃������^�T�s��U�5}+�\0�J��_aU�����⠿�B��C���\0���\0�]�����������\0T�\r�?���};��W?��M�my˫�ע?��!�}pO�cP����=��~�Õq�u{��^O�\0�j�6����`zҰ̭�O]��/tf����\'�d�~%����ndQ��z՟qb��̡^bB��1p�_۸�S��1�~$���S����X��\01`2�3�N�$�;W�l�&���2[TV�i$G^c��G^p��[	��S��	��ˏdV �~�M䁴ɳR�:���`�O���9^�8����/m��\r\Z�Ϊ���,]#\\Ԛx�	Am���|\r]|k&����>�&%����q��T�?����e�;�뢡�T- Xy��s�¶[�g�AD-u<N���С���Ґo��\Z,]q�3�x&��?=o�3`�0�O��s�3�� �%�1��ep�!OQ���Ѣ��Ђ�h��`��(�kT���,���?\\�����2)c��\'n��M��@?\nqHaB�B���@�r��:���9g�5����m\0�ah-�3�\0�^[���w�?e��&���\Z�|��\r�}��?`4�W�#̄1�:�����}c]�r}���wF?�ι�94i��!]����2���ɓ,s�*��_y�f�L�m���U�|Vc�gjJxI�4��R�Bϼ��L��8�~F\ZZԵ�^G��2g�\n���ξ�_�7d��J�t�}�%�;���\"���ao5G�(��<��P��2�Z��Q��]�D@���/|��đ��<�Q�Aq�d�bn�����+�;]V������s!tP��Wr�z�<��>�F��{F��$$��q�\"�����w�|�<\n���B]�029���أ��T�-�aon%��r��t�_3T�°Z�Kr��c��8\\y�5�ڥ�b+���,�*�8��d�B,�ࡻy0,���ul�=y)���Q��nȯ(ǈ7�bĹP���\'o/�*�Ԛ�����W0DrB��{F�olṵ$��6�=(v�����&ݕA�R�2˿i��r�U^ ��̜R܁R���A�	#=+��k,�ו@��Ǩ�y�h����Ԙ����r�)n��.dn_�jFMG\'n���&�zV����aCI5tN�bw��Tm�ܫ �)ue=��\Zc�6wn4U�T�!���Oy�u���nn��Q��dd|�<�ΖUv;�Ʈ��E�G� T1$��&߂{���W,�*�8����Ulּ)��e&��B��ζ�����ʶ��Y��G�e�K?I�ݐ\0\n�����h��O���,��^�#$}�\'�Z���Gٹ۠nx�T�jW�6v�D��Q�}�OV2�bFKL�L�D_1��s훂\"�����M�v���1�+�s���:�!ȃK��q��(�iLrjЉ�S6�ٔ�ͯdv�w�\"@I���vs�U��Ã׆x�y-�I��cuU١�M�$��g���^���3έ��$��.�w�yӘ��U�	���$#�)�)ݴG�m�H�n<����3�M�&�tm8jw�E(I�9�t�%m�!9,v��\Z�\Z�,U�)upB�����Җ�c�B�\\��iMtGH\"`yrq�՛�r��b(��M�}	hv\"�H��F.�wףh�e\r�D����TjQ��1�a�eR�D�����%�F��O�]�m��O�f��N�\"���r#飼����z�)?&{�K�bѮ�J��L��0�,z�\0�����;�\'U���H�֫�[����h��*��j�*�Gǝc�-��𯂩�3��y���E8��a적�;��#���\0�]�o�����\\|�R��pw.�m�\0�]������T%o��6��EWh�u>|�j!�,@%ϖyDz�q�߃��b��x���%��g�H��^���M:ۨ���$i/A�E��S�tU��閊���\\�����o`��q�������s�F��1��*��o�70F�]�K�r�qԏ?�hx��Ĉ^�Fj�1O,o*�\r�ՍB��Vz��Gq��j$\\�d@���㊵n�V�����f�\ZI0���<�PV����V)��d�$\'�t툳�Z�l\Z�sf~���i�`r���=:�Q�=e���\\��p>{���7\nͭ�����*,�7z���V�{>�sj��kr�m1@$�{e�G]�s\r��J|S�]In\0�]�cgn��qjF`�;D ��z�~iA���FZD�(�m�A�>kM�<:#�����H�%�9>�w��4O%���\0�;�@��Z���%~D��5k~�9�~�ʥ��k�5�p��a�/#ȏ�S;P!������@ӓMn���aehѰ�r<Ȫ�]�ɘ�B���f߻ϑ\"����G�0�Ks �s�x_�4�5�9c@�ܯg�dg;�U~��5��ל���]א\'��̏�)[^5�r��^}a�{Yn$�0(�=|��H��OYA���n�D��ϟ�P��-#S۪Fc�x�\\� 7���Lm�_�ۖ]����|��YV�4\ZU����� *Xo��� 3ʇ5-e�_��ę�v��O\"�f���Y��M��2|�遏�(#Zx,�K�\'MpF�^AǑ���u`�\Zŭ�f��	i%c\"��0���EZ�G+N�X���˗�֪�:���dv�s�s<���8��c����\Z12�bǖXd��T��j�zF�.5=N��%>k֟6�$��eq�?\n��[-f@H@g�.�9��w��߸�\'_.�A�h�s��%\"�3�;��4�\rpC.��!���zUU��j2��\ru.X/���4��-8f���d�Ǯzb�*�6��^\Z~��*��wT(<ɬ8�T�N��>�q܊?6�,|j�Ѹ�Y\Z9�q�{A��/>T[g���nc�Ȃ~��U�k��\r[S��3<Fi�,���O�\'��j��e���P��j�\0���.ᙯ���I�Gf���K�| t\n:/���P��\\c<��2�)+0�	N۝q�u�#���@=9�&ea��s���r9`R�.�<\r��Ϙ�_eO���;\"��O���W�S�����6��cR/N����~�D0J���Q�+���PԜߗ:��1����4V/�d���;w�=�$�f�(bp��)�V��\0}+#E�z�6 Ӳ>��w�RԘp�T6-�� �,{͚������}��^��v�u��h��.�#)��օjΣ�$�ɀ�J�i�ds,I�%�(�4��S|W%�ϟ/4����HDay�jµ��hTG6K/���a�ul�m�9��椭�V|�9�w����s2�#I\Z��c5�ښ,�\r��$���گ&[3d\r���0�7\r��B��7Ǖ�<��Y�}�jQ^���V]�����n,vZν$�%�D�v3ʠ��G<1��Y�\\j��vK�䟝^��)zF2s2��kY��em��YH��Xy4sn���\\��R�9�4xZU~�rr���w�~�8\'�tt�t{k`�X�k��)�\0�L���h71�R6��-��aN�dd�n���[\r(�F���Q���|�kG�i�X������R��a�M�h	Z�{\Z�e��בE*Hm���a˙�7����u�����l1���R��Mh�L���v�2��Cz\ZK��F����ݥV�;B�G���[����ิ���d��0�y�&��KS��q�GU�p(C�x���+�lI۟�[��X�{���=)��Yx:�*���GgPy�5��Z\\ddwq��Ԝ$@������A�L�9i$r�zV7�--��B�\"��g��5#^izֵ�1�r͸��q��8Z�F��Wx�{e�\'�����B��l_�b@h��Ԯ��^u���t`\n�\n=��=��ky�j�W_O�O�����W��+�/�9��o������_�F�ԋ���6�V]GP�:�n����5��<sn�ҟkoկ�\0\0����Lԫ(�[�})�4����6�.��[�$F@�\n��|+g8K��xE$�P&�Z����H1�G�z�˕	��E���!�EY�g	e�.|�����w��qȕ=Oʵ<j�]�V�ݵ*2��4�����,Wճ��ҫ�>�[�L]N�Br	����?��Y,�>�8���:�NǮ1A3qVV��R���s�/ƨ���R�T*ۛ{�ѻ��21�I�:�^W֨�r����s�-��+[xc�mu+�4�N	,o��蛣c�_*�N�v����cU���G�N+�/&S]�\r[�Tn@���ΝK(dm����\0�f��/͠,�l�`��?u�G�#��b�偳i��:�k���Z�����d�%��\r�:�H�����J�F~U_j�\r�;�w!Y9m\'z���A������r�0\0DVsY�\r*��I��bI�e,�4x�6|8�=J��c%Ĳ�b�\"�\0�zz�^���n�@�2C�ծ���`�9�\0� y��\0�R6K�+�	.\'�����s,���\\d�ɍ��f���&��9\\�x%s��O�*{�,vcM�o��b�w�\0�Q�1�Ϋ�\0���4�r��1��|^y�(\n����Ն�+ZE�%���G��P�K����bp��q����hܨu=�9��M5=\\L�Ce�%�@\nT�ܝ�]Cf�M���D-.�!�Ȫ{��3��nb��\\�mI_p>�E\r�xnk�Ŀ�{(��G�̯�qV�p��Qm�1}��3��5f^E������m{w�FJ[�\"������}�:�g\"�d�U�t*�6Iϕ[�4٠��A���j�G�Z۬kҵ����gv1�Sԟ�U\"���μ���ܶw�@�l��1���u��[�y����A\n2pƫ��-�iC�p�^�u<��a��1��+.\0X����O\\G��&��jYaTX�-8�\\�\0z`y��%���$�!����F�R�l#���2@ܗ=I����k:�,��bH�Cl�,�J�GW-(���H����O%>������%�2ȏ�Lca��H�೪�Y2T���jԱ��R��$�J�qA�>�Z�OS����ĩ\nܗ��IF{���r�[\n�%��X���Yؘ�g�ԯE�|-3������r�yW�_ҥ	4�d0�����_v �\0�4x�o��_Ȭ�MQF����\0z��9�U�f���\Zyd����L��3*�^L���3��D��;������}�!i������L!���PY�B�&YFꆽUU�D�̈�����hWQ�|�x�5E�؄l��l���;n���X�,�兯7��r$S�y�_\ZݏfZ3��%�w1+��+Oxn��ab���uQ�3ֺ\r�������Q�V��YW+�J�ղVל8V�P���rq���Ap�Wfq����o�e���s�|�˗�ee�����Y�i���e_d�=MEyu�0��B���B�,5X�6�k��t�b�$��(l$�#�U�4U���f����!���jc\\��$\n��f��M[�B�c̿*[�4�7=���<�hwF�t��6����y�ٮ�Y�3l�[�vۿ\\v��u���\0�:ig0��������w�_�:�V3���W`@�;pFi��+(��J�Tg��{h��f�Z�y�w�\0������9�u���lf�����\0�1ӝR�E�[߮i�v��U����y�S<��yV��M1y��	0�G�k2�Y�#U�jk݋ڋ��f!e�����V�ю�e��fr6�\r�Z-���\'v��{Wm� P6�O�a�6H ]���t�*�u��G�v*~(���j�͒���B�#3.��sg>tgŚ\\��;�!A�8��Tg�lfV�A��RWߓr�W���:Ǳ�v�\"N�s`־�G!��[M�Kw���w�\"�|�u��r�<�G��c\\�Y�&C�k\r��R�JƦ����\n���\'��\0��W\\_�����$}�g�R�;��ݿ��U��N\"|����G��3l�*.5�R�Fq�BpI�čD�/�\\��k����M+����\'�5Yjog��l�������Z�?��rI���f�n������!\\J�`�ɪ�t�ǀx6�L�}^1�9��X�$�s��T?��13�[ٹ�7� �Ix��[��,�o\ZH�2��Tuk��ጧ%ߑ*(�E�Zj�^%?,�\"w7��h-����J���_j:x��۷����[Ib��I%e�;9�ʟ�J�Ѹ=.uX\"��Ñ���p<��+:�fa���^I?cɵ;��U�{�rT�ͱ�O���K=OX��G\Z��<�([G�=\"� �mD@9Πxۈ6r<d!>�i��y<�[�D���þY�C��sP����Yv���8鞫�^\\�vHd��c襁�\0�[Z�qxM��$�ii��e�r+��D��v�D�¬N���S��|��3�*�R-�Ifpw?g�b��4�n\Z���D�l,ǥNp��\"��c�ڛv�3c�A�:Y�C�3/\0��f�a(+�E#tB�_��BG��G�XX��@������l��A$�3mt�9�#��e�x�3�r�92�?\Z2\"2�3/���ں[[�P�x�/mc�k�z�4mJ[�ԩÌ�9�?:8��+�\0�����g\0��7>Dg�OO��5��(��c[v1��f~�#��\rSE��[Zx����nD��y�cߧ)w۪Em�Idb�݃̏�qQ�P:vlF2	#��IiV�O�AL~�̈́�>����[レ�E���-i&Ue�*<�����w�1�望��p�p�0M�>�ﻙv��V¤\"K|���}3Y����u5�=r4�����D.Q�G?O:�-SV7�D\0ʽ����.U��\0J�k�CT���8�*˂���d}������ܲ�J}��(ծ#%�X��3���%��;¢�X�<4��|���{�[C�kW�E3G!\n���b}��z%��7�\Zv�5�Jz��*G���>Խ�_�Wm�pĩ3�s$G�\0=Nk������d�k���V��Heӷ �Shxۼ7z�#ω?ݼ�/fe��1�4ㆸH{*��.u��ڼ�I�_�����������֧x�bY��O!T��g�O�m�X����GR�|���t����,S\0v��\0E��d�X��I�X�\"[Ĳ�C>`g?u\'0�=F���L��E��l�Q���4ŜAya��\r�{9&�@����-��f�v�U\\��XJ9��*�x�+�k�-lm\']��\0I���w�\0�V�D��d�w�d٪��ri�5o�r׭ ܈	 p9�y�N-��h\"?U��#�Rz�kW�ޕo&�6�B64��i�$y槿p���&�>\Z�FT��\0�k�\0���������v�N�˭*߾I��ڥD�d�m��ּ��52\n#\\���7nl�k	�U[�\r꺓:�h�indP�,�Z5=D3u8+΅�376>*���ɻ�i��z�L*s��)�(�wRy>,Ӆ*�E_�T6�OI��VB���y�����Ic��*����ٵ���]�¯����n�0�Za��~�Ƙ��?:#ʭy���3\r�Mj���T�h��#�#�U�\Z�l\Z:�=�Ou\'r0��M6��q&�u5��1������>�U]������\\Q-���9�h�q�5��͟��[���q��te*B��٫MY|􀹱d��;v��h�=~b�I��J���p��ظUq,c�Gx������n�F��(�iW�eF�?��P���zOƯ�:z�ap�$�S��T��tw�@l6Nj��9^�M5-\nu��U`H$ma�u�>�xL�3�pP�#wX��><͑,1e�+Ա �GnA �_Z�5,� ���2��X0Ǧ(s���U*W��1ֶ�5^Ֆ���)~�Y_\n9���=���	#_ܮ༆y�Q|er�5�_^ޖH��SZ���+��Ik\'�}SI��G	\r��z��\'γٚ[���ݯ�#�vz|uU����_p�\0�:+ۈ�u+g��#n~8<�m\n�6�%�_K�و{�{;���P���1:^Bn�cc�9��?-����Z�b��*�U�&��\\Uc�[	�e\\�,��Ԛ�\\��:���9�gŷ�m��s�ڬQ>H��=@뎵�|;���F�0cu���B�_%��ƓQW���I��$KX�(�Ϋ�^���3�3���WP��2�G\\�Ж��8�i���u�\n��\n%��d�>���uR�,����ZEul#����ڧҷ#�f�q���ܰ��P&3ʵጷ<���v1ʒ�����7������+��Ow�Ƥ�v�SB���s򠫰v�p�/��x<��\0���\0:�� �M�>.^�k�>̣�\0�?ro����U��m��q�8�iʹ�u���}�K�?ړi+<jW{8�%���p+�p�oÚ\\Vvq}Z(a	h�P�0�==MV�������M�������n�阃٩��#S�$��}�k���op@Q��O�h֚�\"�;k9�/[[��Y_x{�U#sm3s�����q���lHۑ�S�?:\"B@\nU�z�kʲ�A�<Z���=> �\"��kc�Z|\raLQ�#\\��\'��&~|������(H��W��ufp\Z˹T�,+��}j�(��3�f��m�$<�J�C=�T�\\���Z�I-������?:�MFB�d�zQ�oRd�*���������\'�AK\"����0�ʊ���@��2��zs��Ӵ^�8��\'��@��������\0.1�ݩ\0��Π�.dӘZ�G<���D2��Ȃz�\Z/�y4��aEwu�K$e��-C�W��w�1�C��0�� t�Tr�İ���֠�ų.źD�8�_#���s���jV�[���W�\\z�4k״cb��fþ}����E��i&9�)�z�����Z���5�$\'\Zk���k>��ܷ���1U��\r�Y��=�@7s圚��dyDm\0�)�r\0s�~5��a��͸��Ϯ1LScKj	�E\\�Zm���w��vc��||�Y~��n�N��K�\Z�vD�|�@p\\�A��I����=��<��G<���[%�{�U�k���/��W�q�ySv�*���M��ks���#�M������Z�꽦�C� r�V����l��1��_����h/4L~�����g#�Y�ݍEe}�p_�O��[r�Ͳ��#$�:u�~qF��/�7�s���ܸ�G�Z��#����z���kX~���,�o�Qbx�?}�=�@�1E��6�і85�Ӊ����+�e���eA��\\ϭY6~�5�,��:�b��T��o-��m/;#`eH8��^�Hvnd�Ȳ�*[��\r^����.5�u9\'����4����}&���\ZD�9nDSiT�Ρ��T?�B+�j�K\'h�?�d�B�C�Ƽ\nE}{ss�M���?�\\�/d�d�@.�7��V|3���[�=��m�#�,LP3\\3lc`yWkh� �A>�H%\Zø�V�c�ϖ+�f=+H�gN��qF��Ou�c�zS�lAndu�I6���\0*��x�R)�Rc�r-�s���U�\ZO�y��t�	]W��{�)%�s�~���֢?-]�\0���\0�\'u�=�+&����q������>�_�JD�E6I�Ҡ�L�o��s�Ny�zSk�Ddo26<����}�bk���=��G7Z���ꁹ�2�K|�+;;m�?SI\0ņ�z\n5i���>��C�1��V+�a�\0\n�c|���G����@_i#\Z�a+�_�SZ%�771G<�4f�j*�J31t�0���B�U��k���B2\ZV�V�������ǧ����u��н�����c�\0��9	�>�ǅ�[��ٞؼ;�˱����R\\�����l�\nX�	]Xh�����/��_��V���7�G����Y^۫�ξaNY�׃}��Z}ɶ��P��h�r3�y�O�aO�:g��f���{���&q�ʽ[��Lx�jZ�f��˭�6��)J���V�LU������\Z#2�\0�ǖ;��E��[k�{�,��k{�yߜF;u��=W�����#���q��v��R��!N�O<.��=Q�C^��q5��œ�$Kq!�w����`r����c�d��W7�Y�p�ǧ���gko�.:��\0Y���h0��$��@�e̅�=hU�Nq�M��ݗb�Ic�9�Zix�\"e�[��H��x���EA��iƅ���<�	1*{�����[�<g�s%e���i8\"sh�Ǉ<�g��1Z	�$�hv�ƮR�ᡟ\r�=��O�uϕu�T�-�k1oy\ZL�`��*s�T��xS[�k�8K�\\Ά;�_�Cq���<���*���u9�e��ohj�ݻyʲ��d\Z�.\n�mc���Fɮf�!Kc�$|�J����Ew.�����ۜE��ˎy\\��>�u�%Ӣ�\rL�v\\�ZM�N��>\0W�^Y��pˬ�a��=�pe��}�Z����:Y��eݹT��~O����<�=�O�\\�Oz7RA�zU�������m���C������מI>u���ގ�>�������\Z5��\Z;9�#�L4|���-�G1x�(y�y�.éM��������ٛq�h����Vn�o��}W@���	)`�.��\Z��q�^Kks�Hخ����H���H�V��V�{b��,�{|���\0�\'�ҿh	U�mJ��X\0F4��ԙ�DRJ��X���̹{F���j�������ƹG�͛�Q�K��\0�6�\0ή��0�#9<��#e��\rvcn�[E!Fe/�t�+���٥,J�\r��������z�ja@�� a��5�<[�;�:��� �٦�Z�<$��AmB��R��m���_�0w� �����Cg\'q�5�h��K�0G.U�1,�Ǣ��G0&�Dd�y�P~us�3�n�S���R2Q�t��c�Ω{X^�@N�q��lO����Q��*?��|e��̳�[���ꌲ@�ۍ�\0�Pd���^�I�J�O����L�[Fǿ�s��5ȍ��!]@\'��W��ǭ�\0�6�5�)!��������5Z4Ig;���9ݿ�^�&��&A����<�O�t+��@���-�����T^����K�[�~JȽ�Ⴋ�n<�49�p�b��bL�@�[�����բ�B�*C�@H#�M�0?�L�xZ\"[��9�J���-bf�풨6�!T��Q�T���*z�籸seC2�s$���5�W�}�֫\'��<��h4E��%�+���<��w�AYo^�V]H���X����[w3��mg�.���vB��ՏV�w,��m`��2\0��@�;���P9^�jJ�I���1Gn{b��]6\0��/N_����98��)>����[Gq�\0�����������?��pޞ���؃�X�F>���n{��S�I\"r�����R<me�zf�\Z���\ZCw;(@fV���z��1�Y7,~\Z�x�`C�:�\'��D�����2�Ni�w��8[Nf�[���@ďU\n>���qէ����OَL�;&Lyc΃+�7(�YK�!��p�M�/�;[�-I{+�e�ٴ�⥆s���V��\\_s��[Geau��\\�Q�_�[�(ۆl5� M6�T��lV�{e}�e���·b�E*�U��}�+�.Lb3� �>��}*�����Y�6V�7�-��ta�ȯ��o{\n\\ǳ��⩎8�;m=Ɠ��X���\n�K`˭��A��j��i�G?u~�ӛ}>7���9-�ʋ����e�kK����G��5-a���L�j��ɩ���\Z&�,[w\"�8ہ�����v��P#�z�z�m��aM�+J|��uY�B��x�F2�9�W8`V}J��v�}o�bۡ�I�ekԼG$���m���IJ؏k�Kf�5��!S�ز�u�0kX���Ĉ��u�;���̚�>?��N�y[�l̎~�nV5|�9���<�L���+�z�6,���Ȍ��ϴ��\0�\'�MO��Ʀ���ɰ���ۇbF�دf$�!�#d\Z�b�ўKY���F�x\'�Q�4�q���ΰǢ��N�Nъ2�����r2�T�M��{���+�h���ȥ����O�#�8�Wk��<Oe3/x*����7�6�רn �؎��?,���P��f����3��Q�|��5mH�v\n\'��W�ml��&���\Z9a�#�!�q��F{#oq��2�;�|�t1�z,��Yg4Q����G�y��_���.�A�\'�Εu��6���y쿆���;]V�C�Hw��W/���9�U��%�����B\n���a�kR�Y�\'�.f�i99P��#\'�V�����s|�T�X�˦)��ԥ����1�94hR1U�]�+Ȍ}�<�B�t�1<N��1,˺E+��x���W�e��n�nI�¯��}<�CM����C��`����<Vu�m��F��h�s$_���?򆛭M���&au��y�˝k���S�Z��k�׫#NA�F\0�H�Ҷ�V�(4�e��;=�+�z�ʵ��ޯi��׭]~���B�x��\n#T���f��l7�W^�N �n���_lH����#��譌�)��Q}�j�A{kej˵!�e���J�=�\\i�d�s�H�<��$�>�<�u��v���\Z�X�_#A�z\"brż��\Z����b\n��Tgh��5�_�������T��f�ˋ=B)mb���v�=1�0�x�J�X`��!�G��~]�f�_-6��z[�1G��f��D_]�Am�#X���ww\rl��Z0;�����Pޭ�mgU�@Yw)��]v���\\���B7wy�↮�r��5b��և���]�P�9���;4�+���I�i�T��P�rA����[��ߐW�	�*\r3Ƀ���,׽�pb�r�sC݈\\ݫ��dmS�>U�����8���n7Hy��<�ѓ�����Z��+L�l��g�	�v�u�<L6�S �9��\n������N)��x��A�d�]ԟ�b����!��\0l[�\0>���I���S���F�\"GMj�Ʈ��F���k�8���~�8�v�v�9�ci�ֽk7��v�\'t�yH���7q#�^ޢ�,��{�����yofة�9�B�����lL©��Z�Qc\"a!;W�γ�`%DD��9#�J,p�d�Nۀb��?{u_�KXj��(��ωIB~%�&��{��B��c��3qY3�}��kk83�����NS��F?�P^���6����YI9l�8����iV�keqg�+b�UL��<�f�F��`Nr:b��3�eYZSo\ny3�y|��**7R���2���W8��ob5�+\Z�\0�D�aۑH�f�BH���;2O�*_��z�ȹ�吜�r�!�B�%�[y�)/��r�)bHrz\n^z�Ëۘ8��#.�4���=���1��{9��Kqb���3�Q��67�\njB��\nϵ��%���Q�n���������Uyj�B�*\Z[\n]��ӗ���\"��g�˗�4[�Gs\r�Q��w%A�)-VΣÖ�$is�\\B�ƅپ�j~ӄ�4�<I��8\0iH�?-�o�Bj6,��)Lh��5�a�I�ȒRGh����@�j��}��c��\r�c�O�a�|I��*�Ӵn��I��3�� #��f��]\"�\'��E�c\\�``�^f�4��O��і�cf-�y�vE°=���cm��[�Ĩ\'����z��5i�����n[��73��1�k����l��\'���p[io�\0=)[aq�d��>�42��E�:���Ω�%�8��-FM��ZH�\0c���MK�ld\Z��id䬜��y�\09�n�%��sm����\\��;���1�O�(�z\r�T��+6����*�dxOή.kkR�G~Dm��u����ݺ�,�y��m��\0�]�I*4S.Fr���W˖i༡��D� (���d��1���|#�B�e�`%�d�+��5mv��̬3�j�S�P����3$��#\r�,P&�����#K��i��ƭ5/h>�,*S�#��y���{(�]�������J���Z��\0�.�|���@5(��8���n\\���i{{D�)�C�_����+j�Y\n�����^X��\\/�{���S�h1����3n�Qʵ��O�&��t�Ml�`�`�������j��6\rR��=��L��x���s���ߚ�u�����m�WtrΪ����ox�\n�\r��$L�m͗zH�@S	\'h�o��8�Hl��\0�7��O��5���W~��3FH�|��_��?�����9���o�R��`�U�BMċ�\0,��1��UHI���0X�8�:Q��2:R���s��KtO�I�0�2UN\0?\n]\"f\\�O,���ᷞ�A�������>U-m�bV�����P�m)>��~d��]�[f##�pa���r!���W7(�м� �N\n!����#y ���{�{)���D<�|�Y8���������o	�@�|�|,)�bw�4-au��KT��c�*�~d�ʰ4��g����l=�gB��>U�ک�mep�i \\D����m|�X�I{{�n$�;����\06��ߡ��\nm4�O�s��\\�wvQ��|�^:=�� i��6��&`X�.u��-����kl�h�y��Bz1=}(�9��m�S3B..��(��>�<���v`#,�%Ƴ�۴��)�2�H@u��?W�����\r*���؝�����hkR��\"�ݻ<�\"�Y�������5�Ƞ�c];e���-�j��\Z��������/�y�;X��?\n��É����i?�נ�R���)[Ye�Hm	3s��@�v6ʲ6���wNM(�86�uUa}�g�ǵ@b���>2���ВܲĀ>T�n�(�H�A�:�:W[\\��4�ao�\'�ukd��Qߙy�\r�0ڴwZm�UT\nBuo��y�T\Z����V�������b@\n��rN\0�R�4��$θ�K�G�V��`��h�h���/�;Sw�1�R��)����`��VK}���$�A�d�|��k}���<:��Hrp�\0������j��0�sDm��^H�U�[Ƞ!\r�}�E��ȁ��(RtE�YP��؇����Fw�GYՠ�|l@���J�\'R�=��G��op��c��3��|���\0�|9�>�B^�s H��3��Lx��#՜���a��g����=j���K�PT;�)����^{\'�h��s��}�^D�Kh]�\'U�qhv��X��}7\nZL�\0�PN��TQFSE8��[=�yf��V=Z$�{������F�K^����x�Ux�E<�CV[�F�\Z\r���BRsӋUM����?��w������B�j��g���u�?�~T�\0��V�P��\'�6�ʾ���F1�{{%��m�ٶ��s1�ΰ�_�=�K�p.�o�\r��1̱��%��~��7�f�6;�X�\r��qu8��CA��ɘ �Y��Q�=�!�E��j3��$��D���/�\'�E�y�\r�+���@��PB���.��)����J[D���s�Z��F��p������cE!��+c��ئ�tr�^�����Q��,209�rt�7�˭Z����ix�\"]æq�����4[y��W�%���lU�#C�O<u��oL���\'�}*2o�k���ݸu�t{]��.#�#nD��	�ޒ��z��\r�\0,}�S�@��ݚ������m3q̌��)5��� ������;&���|���K+�IeYI�*�=^�M��8�?�.\0�9�\"\0�J�\Z\\V�Z��*;Ȱ�\'�{�A/]��Z�k[\\�b�\0��_�l|(��\\7�QB��3j͗(=�!�z�i�@:�I�����-��vŇ3�C:��igo#K�-��0�8Ǽ���D6	��m�O\n��W��G��֣5����ckjJ{�9۞�M=rɘ+]���_j|Es,�b�*����N~+��Y>��p\ZN{���-s����c���q�m��zc��Ф��Ȥ$����5���MZ�X\\���M��{���ɜ�`9\0��Ɖ$i�ɡ/T�(P�}��Yb���S���9y#�fT��?���\r/�1��j/-�$����#��9�4;k�#(�f��E���?*B�	�բ�U�Tm#���5���=�<�^��:�ʪ�%Z�dv������Y�p3�@ Z��&���e��+�dМ�_kt�\r�y�jJ��j6�r`�����W��pL�.-����/ΜY���˹��=�ė�bP�ǟ��O�.gh\r�s�:���vgU<LP	U����*���j��-N���\r��	NG��թq�c��$�ӥk���&��ա��-��Q;�P���O��z�r��\"�;`��ۍu;��!���.�d�e��?[,��\Z����\r01��f��j��	� s���TW�Q��. ��9!��,�뻣}��Ev�^�t��s �m?ɚحS1�\n/��.�7�Ѧ{\"�|��{��;qЂ@�ky���O��Q���WI��Ƀ��F=0|��jg�?�u���U�8A}[�Ҷ{F�\0�Y�8$7�*Y��%��HۿΥ��X�S�\0�d� �}�uS�YslD�l��U��$������ZQw���?ZC��i�-���.�^�i2�~���\0���Yn.ʉ�i<	��A��5�����R�)����ܘ��n9�ߊ�����,����܀v��:e���x�u�	A9�!Tf���F��̊[sw�����T���6�~JG�{��}NXi�]˲��M�p}O�P�؀���ė\rIsmydĀpUN-Z1i�[��/c���#�ym\\�>�7���\".� ���v�Kz0�U�<�N)�դy��S���Fz;s����/a�B2��Lͩϩ�1��B�0�;P�&9�~�8�G����\'�Ę����<E���S+����kf�-Ò���a��?�:	�ч��(t���{�O�?3���yTc��lD3p�Z\\s\n��|����T����\n�뎜�^rnf2J�$�%�<��*c%�a��辔6�\n�YiD����q���󯱰̾Q֦E�Q��\'2@�)�#s&6���1]�LaD*�X�:�3�_Ƙ�d�,��z��ṛ��:�+l8oJ\"�k#Q���`��w��ub�:�N�������ȣ$P��Bz}�)UP���t��Ĥ��d0@���*r����(�\Z�4�r�V�&\\�ggr7#�Ɂ�����ǥz���?�/UYT��YCt(��^Y�C\"b-l���Ry�g���s�J^�Qw\0��%]C}Z\\~�s����==5|���\":�	�HbI3�U)m�K�c���E��%����И�x��h�*�A=6�0<��}i�31�6;��?�B�6-�_�23�f	� ��d���k�j�0a�H�^um;�Y���������嬋3��w\0�����G�h��	}4�n�\0:��F��x�qۚ���r��{e00|EOZ���8���N�Ѵ�a�Udl����;s�Z��i�\n��#$s�[q#��Ν�ݽ�5Q�w\n��Qd��\Z����&<ȘQu�;&�L�o�U�涹�H�[��9.�r݌�ng�|���s7mp�N�B���&z*}��8��ꚅ��$��̂\"}��`�@=|�佘ۥ��w!��,0�@��_:È�nO]Z�\0X��Z����c�]���1��@:P<��MpV�5���x�9ɉp*�ҭ#�D7p���=���W��m>�<m�LG��>�j��jg�M��e��Zoլ�,�؁����X��R|�C@Q��t��(�26���9^92�r*����;2����)̲mL�2)�����Ǒ�]X8�i2��l��t���t���2�r����G�aʡ9 6K}�U-�����d�K�y՚aJ�ȥ��RHBd�8\n=I�� �`!A5±*�w?du\'�S�Z�V4���o���A_]��^�M!�){Xn�e�=���£H]�����7��F���v�㬤�A�/��e=�*�휄b����p=MFOh)ܒ\\��9�iV�`<7��J�n��iB��$�\0�Y�=\0��q��Z *^r���<wG����w��`a���O�\"I\r�;\r��k�{GZ�`�^ ���>�=�I=�沼��$�{(�=ł���u���tKe���<xd�ª�J��������&��4�d�!2=j\Z[!q6�\0��Vp}f�5�r���T���$r#��oϡ���[��h��j-*�8q�u��4�՗��8<�**���E���r:Sæ���@a����J�~CAm�?j\0�s���=\ZH�1�y�Sq��M��|��6��RY�*��!2A������{˚~��eHS�Τ�4yr(ܿt��*��n?\n=k�El`O�-k	V��R�ʶ��u��צ�`i�kt��\"���.e]r>������6Sb�3ʵ������m�B���{�t�	�q�\ri�VO�G��qԢ����#�!`y�_�660]Y}cM`� ��H��r*zn5��p�,���p:Ƙ=y%%���Ml�l͝��m�y�>�Q\\�-���X��*r@��*G��K�jZ�m�H䶵T�v���?c>|����_ƺ@�Ic�� �H23t/\n�}3�\Z�R���Y��L���J̭�H<�F�\0�X��yn��\r޸5����sJ\'��G�c\"��Hh������Ε�W��[�Ο�Z���7)����JZ����rr�VX����4�;\Z�V��M;Ki{!*�(��3\"�z��MI���b�����u�{��*�����I]\\��k{d�����9���C��1T]��!҂�iU������H��wQrJ��=W�΋V�e���\0\n7Ns��s�_�B���w�\0z%K����|,p��bs�{����|�z	�)6�k����q�����o|��h���{�X�pp��kp��k��X��^�OE�:dı� �rO�z�&NnUP�t��X�//Zȕi�X�v�<�TV!�V���W�{�s��Wo�E�O-ײ|�\n7t�iw!�@�R?��Kn\\Վ2�#hBgW��B��FEJ_����A�R���\'4i��9=|�Nk��C�D��$`U���Յ���v����C\"7��q��7��E<���\n�21�ySk	׵��G(�G���<fYl�����F@꣖~�Φ�`����R���{�#�0����S�>u�.�/��`u�7����%���23ȓ��>cʞͱ$G�;a�F�J1�!��\n4���s�RqwO�{�u��T���T�N[ː<����T%��g]ņ�6�*����h}	ȡ�6!��Q^��Mg���\0dU��vV�\'��/�m�s�p�T`B���2%�U\0�=1O��^d�Ң�T�m6ˋn��I�Q���2E��VK�~_�nyD�*��j���cm[��`��-��pPt�7�X��:���j�%�m�HyQ�~=~tGq}�����n&�L�H��E���{0����\0���{4⽂^�{�]�ا���$V�p�DȰ#l�Q��R�4����B�yJt��c�+@����[��� (�6�>�o�^�~]���n�=�`�!:|ju\\�ݲnlt�{���,|��J��\n�>��Z���ofrK$k�q���+�J16�\'�>B�n�\"�pG%�9c�^F�3��{��T�U��[�I#;�U=S�h�X��<X�SC��p��|*�u��-7Y�L|�n���\0��ua�#�=F̩!���<�G��%vb�\0 Rr}s���]KXMM���l�˽��#�{g����K��އ�:Y�-�el/$lV[⅏vC�Ǟ��_�*p�To�9:du8�o��b�@l��iȐO܁n��Y�8gs�g�Ve��Hl�\0��,�w0\0ys\"�Ef�8�*��8?�S�n��O*��W�g��e�V\"�-���\"<�FQ�!�ӓ�S���<��6q��2 ��S��]$FJ�a�?�(��[��&������J2�V���(�B��[s�Φ-��2kdzt�2�Rd�ی`�0O\n�C~�P5�L��@{_z��ʔ1;�^�9m\"��3F����ND��%w�ʹ��V�O���HT��SL�@�\r�_}}��{�uҬ;iRBc��zt:gp�r��1�t�}\'<`�c֛N���e|��0���v�\nYpA�k����R��u�%�Pv��˧CW��s%���A��R�.��9�J��2����e9����Y]ܥ�}��;��a����¢����#TG.ۙ	�o�ʶ�/�X_\\�k\r����ؠ�>#�k_M����#�NN�-�~�|�E>���bL0�LD*K?)E�B=?��~N����٭�ZF��>P�-K�����_���(~��c�d��`�>5�7~Aԉ9�5*���1ʎ����#p�9�p�.l���?��*���}q�JG-�ͻߧ�U�/fm��;�TSȟ_����\0��݋v�Ās|wJ~���0�̈́C�#�2 >2!¤y��$z\nZg�\nn��9��M�\Z���[f�6�P��8�;�(��;�5���+ק:D�ج�h._h0G/>����RУ�V�X�\'���*^��T��\rꄢ���~�x�vXw��>~��Cv��W^	V�e�~s��*G�|����I�ZI���c#�6�0���5{мOcõ��a�O97��e��Xm���ֆp�e8;�p_>����I\0@l�>u�w�!Wθ�`��Z�s�_d�9�!ʱR=k�UG��H=���4�I3mn�F�`b�9��b�K��D\\�c\nϭC���Lۉ���d�O��!r�H\0q�g<����+*x62Wp��q�z����Oz��7���=MIڰ�� n�h��ux�Q�h�C��Кqn�H8,��s�* &^Ąnw�Ҥ�[*3�S0��G\0퓼�QO��g�z�O�F%m��n��U�X�P���~4C�I����>0Vd��ˤ1�g�>�\"J���mtd\\��~h�B���:)�*��QŬ]�s��\r���B��v��Xw�(�����ևpj}��եh.��\09�J��<�!���\Z\\k�e���8<�T�\\4��`��lx�#yS~G���}TH�p�(���o��a����������h�;�1����l\r\\E4)�(ی��U7�\ZDv�0��v�Xm����C���ՠG�D��bU8�Z~*��W,�f4���ϥ8�Y{ٸzu�st����;y�\n�n�G�ƞc�M:�:H��2~q3#r ���3�)٨E8��OJ�KD�fQ��g%�?\n�,�Uvdi<yP,iU�T .�dic4�\'<�Z�S<�\Z\\F��I�\0�*֝X�ƃ�J�i8�����_���m�10�%�%��Y�Y�A���\'�)e��cp�s-��£!�t�x�d�y�:cʱ�줓&>B���u}�7�$���<�H�%����I.��c�ԟ���8����zם�H�E��!Ψ�Z�Un;\"�u�\"0��_�[mn���$�9�\'�|�>K�`4����w08\nVM6&(��΃/�a5%츲�O�J`�Ku�z�\0%M%ռ�BOh�g��Dac=@󧶒5�E����\'8�e��e�bl`)S�#=i�RF��7&󨘮��2N[�:}��y;˅Ǘ�	�B�c����11�#;�#�ӏ͜�eǭ$,�d�[֕�KM�;n��:Ⱥ��ҹ�[C\0��L�������7%X ���;��˖\n��ӹ�j�j\"�Rs��t����2�Ɇz����&6�c�����w3w�c�k;Ǳ���A�9�|��e5��t�Yΰ�I\"��N�+S�n��rJn\0�����{M�]wL��y�j���N#��ysh�����OC�4�M�F�[\\	���ğ�s#�\0\n���\0�q~\"���$�.��maK�V��~4pa<) ,H�$o��O#O��u��*���������.�0��<m����w��@�\0� 9�|����ʒ�\0M�����K�;t�C�D�;I�pf9�77Τa������Y����AjՂWs(@��x��1R6�\n���lg�T-������y���(pCa9u��ez���yÝ��cF%�#�.��e.�wu<EC����.5�PK!¡��j��s}2�U$UU��Q��cEd��xq�A,�UC�۵�ܨܛs(��\Z��zf���S@�k�H%�EPF���H��AW,�{ּZSh��s�u�6a�@rOQY`�\0�_�$���ϥ,�sʠUS��I\'�����]��O�P����ϮƗ�Wʂ3�9����m�E*�C|j>O��;�����ӗ:iY��f���D%l�\\�#�#R1�98�9�DF�wt�jaJ�!S�y9�$)%m�\"���Fi���h^�t�Ң�=��<�����W:��A�D2��a@Heg�ۈ?,Q\r����1� �Z��pz��|(C���bN�Z<�`l�f�me�.���U� FIr�++��.H��n@�El���$	A�9�B�#@Z|ۮm��&�G�����5k\'�9i�W1\rGQU�Ëُxr�{}�������s�j��d:֦����\\g�Ѫoٶ�v��<[��e�9r�h������\0I��-d�(�W1¡���9��j��g���;1��U9�߇ƨ�Z���Sk6ȇ��}�y�����k��8��D�@�)����<G%�!&����Y������w�D����G�T�K�̟�����X�9v�+���5��b�=��hy�>_uu��(���6+p`1�f�~g�\ni}�xcE�h=�?�/ws([j�,�#���B�pg�~s����8��V��I�QK��ϴ�\0��O�!܈3(��\0�pR�Nx�u���Wr$�,F��JL�FTndv�SnA?y����9�M�l\'%I9r�)�sĳ�m��ɪsbO��q���:f������s2�l�t�8�y�\n�\Z���DEcb�W\0��S\'[��!s\Z@=�qJ:9bO@y\n]`��DQ�\0�qN�\"tr��\'�/J���v#�y�9���Y�\0!��}kΒ����*H�3KE�9$��O�hM�e�9��C�T���$�n��<���1M�1V\0�_AU�Ň��_	?u*�J3)8�)\r�f\\6<<��{�	��b��$�ԕ�Jh͗�⑎})%��Nq�HKz����Z�AF�+�#\'>�1899�R��/>`��s/|<Y��`���l`����<t\"���uz�7*Y�9cΡ�*�\0h:录��fH����5�|]5���p֖�RK��ʹ��<�h��h��0I,Q,�m<�Qʵ?_��K����p��G0q�\"��]�c�e	�2C\0NH��&\'���~\"���*1��Y���O~��\0 ����E�� $��f$lr�ڬ|��S�Դ��9�?�M�}:V��S�[-��Nݻ�.����YN����f�9Z�.Iɬ7�{����i�E�S�4�|h�J�k먢��/� (.)������t�/�Aխ�ve��\n]�ٍ��i��P�Ҕ�e;E8�7�G���PnD��4��Xk�lB�E`���y�)��M\Z1�.X�UUx=7�KU�_T�\r���7Bp(O�4��(��s�1Ύ�[J�H���������~Os�=<�{�/V(���<��Ν�ZRE`�r<X��6��}�:��E;��u��\\\'3���F��������=��^��W�?\n�}�P�@�,��R1��*@�G�C�ܙ�Hk��ʲV���,�����t`�q�Φ-�����s�Q&D	�yuŖv��}��8P*ꋐ�=�~#]�`N$��@|�t����V�u�~�r;䌚����ky^7��0��W�v�G\n(TU��mc�Bn���H�K��Q0.yM<�r�^T aE�ˑ��SV�%pK]>4#o,�6�|�j�a$�	�j�䁾�������]�c�j֜��.F��F5Ka�n:)��|���\r2�D���$���R\Z��(��u�U����Nә������>�cV\n_�� #�j�����\Z�����^ܬ>�;V�Ǒ�!V��]�\n����m�I��&�Uc��e��:��ĳ��/3��k���H0��ģ�>UZ����7\n9g#��\"�\r,)t�8�U��#b�m�eNՕ���8�>����[�V>�=[8\0�6��g��4����)��G�:Ι<��h�d�pR\"y�ߎ��If^�:�yT4��NU7;��\0>�-�Ӆab3ӗ�/q�\0�ӸF��I4�U� �u�B�\0�X�O>_���J�AK3~q�q�<�8�Nă�Ź/P�R�h�2G3˕�����{gaV<\0�iͺ��Χ#��)sg\n�1ձ��Ԧ��	w�~ldd:�ŢV�r\'}yc&���ˑ��S����F.���K��^~�9b�����̃ң�]���K�{Ěyt�W�N\\������_R��V�Ee\"�t췞@Ӈԭi�����9r�@��&fhRE8B���]g�Mu\rV�F\n�#�yr��|�H����]t�\0:yQ�������0��v��t�W}�f�m-����$s�n�Yj��o46Ҭy��c��>Ӽ\n=�<��Rb��wg�ov�u��5�l�y*���~%F�\Z]�\r�M� ��2hCY��+=>����P�7��\r��M�����^�S	eIp#��V8x�z+��a�1p����r(���Z]��8��[Ă�䘭��SX�v7x\nҎd� !/_��\r�\ZU��Օ��G�@�5Ѽ����Ռaw���1�{u9\0s*�L�J3(Q��A�X��0~}+O��p�[�3^X\\H�8;���������M���\Z��[7�[i[r�B]{����*��䍧\Z���5+����ﮮ;A{{y%W}э�������cYr�D��P鶏����mŇt�C�q�]���jB5i�)�P�\\A)B���R��`�!#�޹�*<�>O�_Ʀո3��kH{�w����!��>��O�@�f$�S��X��f��\0�~5�� p1�q�L�i��(�3���H�,���f�~*݅�p2���\\�\0�P�������3��/���k����\0pi7h��9�ܹ֔�[�~�\\�\0\Z��T�k%��(���T�k��|f�����-eIe�|Q�x�(�R����\Zi-�.B�B�9��kk��oYX}Qf���,�3~=�FG�?�d��[=S��Ü�p��|���6����j���&�[[��O�2s�V����%U�-^zoѣ�4q!�S�ef9--�$�ȅLA���e[�X����c�\0�T��4�\\I_�\0Ak�;j�c�ݣ��¯$�K�\"�[�K�\0?�SK�c��{�O����6���\r,���n�\\��L�W=Nkp/>��%y1�]C[|�x@�\0�SV�-�yeΥ��C���l\\�F�p�5$rl���l�zt������\0�����W�����\0�Z��D?諘	�Q���k3�q[i���\0k��0�\0���s��g��Q�*�M�L��c�d�|���?E��\0�u���W������Q�*��ؘ5Z\"pF(��g̎C���/��Ե���W����=��O^����QJ�j!7Rܐ������i��I�I#s.NN~��}�Ht������b�4�/���s۾�ĳ7�{�6�W��F����,(6B	�\0�v��\0\Z�X>�1ҷ��Ǭ���G��\0�AȾ��\0��\0G@���J\"ء����3�U]���W��\rÛ�ڷ�l_���~�8}��~r��������J�6�Y�[yvm$��հ=��\0��^��\0[�)��A��\0µ���\0�GX��@�W�,��I�u�W�߽>}�P]��-&���no��Ȯ��$z�(�E�L\Z,���P�1����̒?��+����>���c��@��/9A�!8��������חS�����<�ۮ!�Y��.���/؟i�o5��$g��cڹceo���t�`Q+;�檏�|�MX�VFx�r���V���h�Wm��������f��4y?�V���vD�*�\\���Z��R�Ul[h���\\T��osz�������>����[����D�<��1��(��@���R3 �#?�L\"bEY�AK�)b@8��y6>�T$�-s\"��d�d������[}������ii�N\'�9�_���s$V��E�*�l��z|kۧ\0��v�N~Tl8.�t��\r�^\'��)���_�д;6@���(	v9��4_�[Z�D�2�T��X�K��bI���sq��0*�*�E EsB+�r^�� �#�9$�!���y����Vr6K��&�H/X؞���_�Т����E.�<��2)� ɐ�-�rqV\0��<�)��<������\'O\'��]>��\0f�W�+�B?8�/V�������JQ�!�J�g�-6dey�����٨齓����\0�\"b��I�Y5��۲y�\r�ԑ늛Ү�6	.f���Ǝ&�Y�I��/�r�%d@q�Juk��K���ט)�L����ax9�@7lr7�\0N@UT����\0�zQ�pm�/)�y��\0f���؝������_��+�!K�c8��+;m�7&�V+�F�[=���:�\0f����T,��_��t;�A]}]��OʩM�uD�O���$�]��i6�gR����i����-à�l��$�ݑ��F��䬿�n?��6nӤ鮾�_��)��*�\r����\n�+�]:�k�, ��T/��A)w���\00$:I@FW_Z�+�V�i���f�4���i���&�\"�/ߒĥLjۋF��{5�\'=��>�O�ד�(ѥA��P�?�FFl�	�M?��mR���\0T�K]B�{{���4D�B�4-��^��i�+��,h[�/��Ό�����Z�j�$��h��+T:r<��F�{��p\'�����5��ֵ\rje�Xn\"\0��3AW�Bg��,���O�6@[�p?�X��)���2i�n��iwV6�7�j	v��n�AXb\n\0�_\"IcΣ;Y?�m�S]�����ߖ�����\n�����ǜW�Ym����|��','1359031326_670435344.jpg');
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
INSERT INTO `order` VALUES (1,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','asfasfa','q@q.qq','3152353','','asdfasf','asfasfa','','','','','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Оплата при доставке','cod','asdfasf','asfasfa','','','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Фиксированная стоимость доставки','flat.flat','',105.0000,0,0,0.0000,1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-01-30 23:10:52','2013-01-30 23:10:52',''),(2,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','dfg','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','io',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:23:09','2013-02-24 22:23:09','sdfsdf'),(3,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','sdfsdfsdf','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Фиксированная стоимость доставки','flat.flat','sdfsdf',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:31:37','2013-02-24 22:31:37','sdfsdf'),(4,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@ff.ff','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','sdfsdfsdf','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Фиксированная стоимость доставки','flat.flat','sdfsdf',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:35:13','2013-02-24 22:35:13','sdfsdf'),(5,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:37:43','2013-02-24 22:37:43','sdfsdf'),(6,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 22:56:20','2013-02-24 22:56:20','sdfsdf'),(7,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:22:28','2013-02-24 23:22:28','sdfsdf'),(8,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:22:49','2013-02-24 23:22:49','sdfsdf'),(9,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,0,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:23:24','2013-02-24 23:23:24','sdfsdf'),(10,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','','admin@cc.cc','3152353','','','','','','','','','','','',0,'',0,'','Банковский перевод','bank_transfer','asdfasf','asfasfa','','asdasd','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Бесплатная доставка','free.free','',248.3400,14,0,0.0000,1,4,'grn',1.00000000,'127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-02-24 23:32:21','2013-02-24 23:33:08','sdfsdf');
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
INSERT INTO `order_history` VALUES (1,10,14,1,'Инструкции по банковскому переводу\n\nапавтватватватва\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.','2013-02-24 23:33:08');
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
INSERT INTO `order_product` VALUES (1,1,47,'HP LP3065','Товар 21',1,100.0000,100.0000,0.0000,300),(2,2,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(3,3,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(4,4,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(5,5,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(6,6,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(7,7,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(8,8,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(9,9,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0),(10,10,68,'Umbra Mosh Fuschia Multi Desk Photo Frame','йцуйц',2,120.0000,240.0000,0.0000,0);
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
INSERT INTO `order_status` VALUES (2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат'),(1,1,'Ожидание'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
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
INSERT INTO `order_total` VALUES (1,1,'sub_total','Сумма','$100.00',100.0000,1),(2,1,'shipping','Фиксированная стоимость доставки','$5.00',5.0000,3),(3,1,'total','Итого','$105.00',105.0000,9),(4,2,'sub_total','Сумма','240.00 грн',240.0000,1),(5,2,'total','Печатник','8.34 грн',8.3400,2),(6,2,'total','Итого','248.34 грн',248.3400,9),(7,3,'sub_total','Сумма','240.00 грн',240.0000,1),(8,3,'total','Печатник','8.34 грн',8.3400,2),(9,3,'total','Итого','248.34 грн',248.3400,9),(10,4,'sub_total','Сумма','240.00 грн',240.0000,1),(11,4,'total','Печатник','8.34 грн',8.3400,2),(12,4,'total','Итого','248.34 грн',248.3400,9),(13,5,'sub_total','Сумма','240.00 грн',240.0000,1),(14,5,'total','Печатник','8.34 грн',8.3400,2),(15,5,'total','Итого','248.34 грн',248.3400,9),(16,6,'sub_total','Сумма','240.00 грн',240.0000,1),(17,6,'total','Печатник','8.34 грн',8.3400,2),(18,6,'total','Итого','248.34 грн',248.3400,9),(19,7,'sub_total','Сумма','240.00 грн',240.0000,1),(20,7,'total','Печатник','8.34 грн',8.3400,2),(21,7,'total','Итого','248.34 грн',248.3400,9),(22,8,'sub_total','Сумма','240.00 грн',240.0000,1),(23,8,'total','Печатник','8.34 грн',8.3400,2),(24,8,'total','Итого','248.34 грн',248.3400,9),(25,9,'sub_total','Сумма','240.00 грн',240.0000,1),(26,9,'total','Печатник','8.34 грн',8.3400,2),(27,9,'total','Итого','248.34 грн',248.3400,9),(28,10,'sub_total','Сумма','240.00 грн',240.0000,1),(29,10,'total','Печатник','8.34 грн',8.3400,2),(30,10,'total','Итого','248.34 грн',248.3400,9);
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
INSERT INTO `product` VALUES (65,'4456','','','','','','','',1,5,'data/frame4.jpg',8,1,466.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 16:06:59','2013-02-02 16:46:54',7,0,1),(66,'цук ','','','','','','','',1,5,'data/frame.jpg',9,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 16:11:40','2013-02-03 21:06:15',23,0,0),(67,'пыв','','','','','','','',1,5,'data/Corbis-42-29243612.jpg',9,1,253.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 17:45:58','0000-00-00 00:00:00',12,0,0),(68,'йцуйц','','','','','','','',-1,5,'data/big.jpg',0,1,90.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:12:17','2013-02-05 23:17:29',133,4,1),(69,'hfg','','','','','','','',1,5,'data/Corbis-42-29965284.jpg',0,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:12:58','2013-02-03 10:11:03',2,2,0),(70,'5767','','','','','','','',1,5,'data/frame.jpg',0,1,0.0000,0,0,'2013-02-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2013-02-02 19:13:47','0000-00-00 00:00:00',3,0,0);
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
INSERT INTO `product_attribute` VALUES (68,12,1,'аываы ваыв аыв аыв а');
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
INSERT INTO `product_description` VALUES (65,1,'Рамка','&lt;p&gt;\r\n	нкеукенкенкун&lt;/p&gt;\r\n','ыав ыва ыва','','','',''),(66,1,'Рамка 2','&lt;p&gt;\r\n	ываываыва&lt;/p&gt;\r\n','','','','',''),(67,1,'Фотоальбом','','','','','',''),(69,1,'erwwe','&lt;p&gt;\r\n	dfgh&lt;/p&gt;\r\n','','','','','ght'),(70,1,'yutyu','&lt;p&gt;\r\n	tyuty&lt;/p&gt;\r\n','','','','',''),(68,1,'Umbra Mosh Fuschia Multi Desk Photo Frame','&lt;p&gt;\r\n	&amp;nbsp; ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва ап вап ывап ывап вап ва&lt;/p&gt;\r\n','','','','','');
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
INSERT INTO `setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(982,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(656,0,'account','account_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),(93,0,'voucher','voucher_sort_order','8',0),(94,0,'voucher','voucher_status','1',0),(102,0,'free_checkout','free_checkout_status','1',0),(103,0,'free_checkout','free_checkout_order_status_id','1',0),(2178,0,'config','config_sms_message','',0),(2179,0,'config','config_sms_gate_username','',0),(2176,0,'config','config_sms_to','',0),(2177,0,'config','config_sms_copy','',0),(2175,0,'config','config_sms_from','',0),(2174,0,'config','config_sms_gatename','testsms',0),(2173,0,'config','config_sms_alert','0',0),(2172,0,'config','config_fraud_status_id','14',0),(2170,0,'config','config_fraud_key','',0),(2171,0,'config','config_fraud_score','',0),(2168,0,'config','config_alert_emails','',0),(2169,0,'config','config_fraud_detection','0',0),(2167,0,'config','config_account_mail','0',0),(2165,0,'config','config_smtp_timeout','5',0),(2166,0,'config','config_alert_mail','0',0),(1972,0,'login','login_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:9;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(2164,0,'config','config_smtp_port','25',0),(2163,0,'config','config_smtp_password','',0),(2162,0,'config','config_smtp_username','',0),(2161,0,'config','config_smtp_host','',0),(2160,0,'config','config_mail_parameter','',0),(2159,0,'config','config_mail_protocol','mail',0),(1973,0,'cart','cart_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:9;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1986,0,'cr2htmlmodule','cr2htmlmodule_module','a:22:{i:0;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:3;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:4;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:5;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:6;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:7;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:8;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:9;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:10;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:11;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:12;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:13;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:14;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:15;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:16;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:17;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:18;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:19;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:20;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:21;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),(1982,0,'cr2htmlmodule','cr2htmlmodule_title3_1','',0),(1983,0,'cr2htmlmodule','cr2htmlmodule_header3','0',0),(1984,0,'cr2htmlmodule','cr2htmlmodule_borderless3','0',0),(1985,0,'cr2htmlmodule','cr2htmlmodule_code3_1','&lt;div class=&quot;title&quot;&gt;\r\n	Тех. Поддержка&lt;/div&gt;\r\n&lt;div id=&quot;support&quot;&gt;\r\n	&lt;span&gt;т.&lt;/span&gt; 096 433-44-55&lt;br /&gt;\r\n	&lt;span&gt;т.&lt;/span&gt; 067 455-65-21&lt;br /&gt;\r\n	&lt;span&gt;icq:&lt;/span&gt; 187-773-553&lt;br /&gt;\r\n	&lt;span&gt;email:&lt;/span&gt; &lt;a href=&quot;mailto:info@pechatnik.net&quot;&gt;info@pechatnik.net&lt;/a&gt;&lt;br /&gt;\r\n	&lt;a class=&quot;soc&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/fb.gif&quot; /&gt;&lt;/a&gt;&lt;a class=&quot;soc&quot; href=&quot;index.php?route=product/shop&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/vk.gif&quot; /&gt;&lt;/a&gt;\r\n	&lt;div id=&quot;helper&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;b&gt;Онлайн&lt;/b&gt;&lt;br /&gt;\r\n		помощник&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1974,0,'cr2htmlmodule','cr2htmlmodule_title1_1','',0),(1975,0,'cr2htmlmodule','cr2htmlmodule_header1','0',0),(1976,0,'cr2htmlmodule','cr2htmlmodule_borderless1','1',0),(1977,0,'cr2htmlmodule','cr2htmlmodule_code1_1','',0),(1978,0,'cr2htmlmodule','cr2htmlmodule_title2_1','',0),(1979,0,'cr2htmlmodule','cr2htmlmodule_header2','0',0),(1980,0,'cr2htmlmodule','cr2htmlmodule_borderless2','0',0),(1981,0,'cr2htmlmodule','cr2htmlmodule_code2_1','&lt;div id=&quot;shop&quot; onmouseout=&quot;$(this).removeClass(\'hover\');&quot; onmouseover=&quot;$(this).addClass(\'hover\');&quot;&gt;\r\n	&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot; id=&quot;title_left&quot;&gt;Магазин фоторамок&lt;br /&gt;\r\n	и фотоальбомов&lt;/a&gt;\r\n	&lt;div id=&quot;title_right&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class=&quot;clear&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div id=&quot;pic&quot;&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/blank.gif&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1584,0,'featuredalbum','product','',0),(1585,0,'featuredalbum','featuredalbum_product','65,66,69,68,70,67',0),(1586,0,'featuredalbum','featuredalbum_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1059,0,'featuredframe','product','ра',0),(1060,0,'featuredframe','featuredframe_product','65,66',0),(1061,0,'featuredframe','featuredframe_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1826,0,'welcome','welcome_module','a:2:{i:1;a:5:{s:11:\"description\";a:1:{i:1;s:1541:\"&lt;div class=&quot;text&quot;&gt;\r\n	&lt;h1&gt;\r\n		Multiple Photo Frames&lt;/h1&gt;\r\n	Have a browse through our complete range of multi photo frames you\'ll be stunned to see what we have on offer. Our multi photo frames have various different brands and styles held within especially some of the hugely popular and unique Umbra multi photo frames.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Multi photo frames are perfect for showing off various series of photographs together that either tell a story or you just wish to hold a collection of your favourite photographs within one multi photo frame.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	If you are looking for multi photo frames or collage photo frames then look no further. Here we have hand picked a fine range of multi photo frames for you to choose from. Our multi photo frames come in various styles and materials such as silver multi photo frames and&amp;nbsp;wooden multi photo frames, each holding&amp;nbsp;at least 3&amp;nbsp; spaces for your precious photographs.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	There are now many choices when it comes to displaying your precious pictures.&amp;nbsp; During the past decades, ready-made frames are limited in options.&amp;nbsp; Most are made of wood, plastic or composite resin in few colors and designs.&amp;nbsp; Nowadays, artists and designers collaborate on projects that result in frames in fantastic colors, different shapes and various sizes.&amp;nbsp; They can hold a wide range of photos, from single portraits to collages of many pictures combined.&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"6\";}i:2;a:5:{s:11:\"description\";a:1:{i:1;s:5353:\"&lt;div id=&quot;tizers&quot;&gt;\r\n	&lt;div class=&quot;cont t1&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				1.&lt;/div&gt;\r\n			&lt;span&gt;Удобный интерфейс&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;по загрузке фотографий&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Теперь можно печатать фотографии качественно и по минимальной цене не выходя&lt;br /&gt;\r\n				из дома.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t2&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				2.&lt;/div&gt;\r\n			&lt;span&gt;Фотопечать на качественной&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;фотобумаге&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Бумага таких именитых производителей как Fuji и Kodak.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t3&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				3.&lt;/div&gt;\r\n			&lt;span&gt;Самая быстрая скорость&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;доставки&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Доставка по Днепропетровску бесплатная. Для других регионов стоимость доставки можно посмотреть &lt;a href=&quot;#&quot;&gt;здесь&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t4&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				4.&lt;/div&gt;\r\n			&lt;span&gt;Самая Низкая цена&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;печати&lt;/span&gt;\r\n			&lt;h2&gt;\r\n				70 копеек&lt;/h2&gt;\r\n			&lt;p&gt;\r\n				Хотите ещё дешевле?&lt;br /&gt;\r\n				Вам &lt;a href=&quot;#&quot;&gt;сюда&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;servises_cont&quot;&gt;\r\n	&lt;div id=&quot;instruction&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Инструкция&lt;/a&gt; по печати фотографий через интернет&lt;/div&gt;\r\n	&lt;div id=&quot;time&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Готовность заказа&lt;/a&gt;среднее время выполнение заказа - 3 часа&lt;/div&gt;\r\n	&lt;div id=&quot;delivery&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Доставка и оплата&lt;/a&gt;ваших фотографий к вам домой&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--SERVISES END--&gt;&lt;!--MAIN TEXT--&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;main_text&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;top&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div class=&quot;text&quot;&gt;\r\n					&lt;h1&gt;\r\n						Информация о сервисе&lt;/h1&gt;\r\n					Фотолаборатория «Печатник» предлагает Вам воспользоваться услугой печати фотографий через Интернет. Печать фотографий через Интернет является основным направлением развития нашей фотолаборатории.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Приём и печать фотографий осуществляется в круглосуточном режиме. Мы гарантируем качественную печать фотографий и своевременное выполнение Вашего заказа. Для печати используется высококачественное оборудование Noritsu, которое позволяет печатать фотографии любым форматом от 9х13 до 30х90. Данное оборудование позволяет нам печатать в час до 1000 фотографий форматом 10х15.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Для печати фотографий используется фотобумага фирмы Kodak, которая является одним из лидеров на рынке материалов для фотопечати. Гарантия фирмы Kodak на фотографии, сделанные при соблюдении технологического процесса, достигает 100 лет при нормальных условиях хранения. Фотолаборатория «Печатник» предлагает Вам воспользоваться услугой печати фотографий через Интернет. Печать фотографий через Интернет является основным направлением развития нашей фотолаборатории.&lt;/div&gt;\r\n				&lt;div class=&quot;bott&quot;&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/td&gt;\r\n			&lt;td class=&quot;right&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;div class=&quot;clear&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1971,0,'specialnew','specialnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1969,0,'categorynew','categorynew_module','a:4:{i:0;a:5:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:1;a:5:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:2;a:5:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:3;a:5:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(2158,0,'config','config_image_cart_height','47',0),(2156,0,'config','config_image_wishlist_height','47',0),(2157,0,'config','config_image_cart_width','47',0),(2155,0,'config','config_image_wishlist_width','47',0),(2154,0,'config','config_image_compare_height','90',0),(2153,0,'config','config_image_compare_width','90',0),(2152,0,'config','config_image_related_height','80',0),(2151,0,'config','config_image_related_width','80',0),(1970,0,'latestnew','latestnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(2150,0,'config','config_image_additional_height','74',0),(2149,0,'config','config_image_additional_width','74',0),(2148,0,'config','config_image_product_height','100',0),(2147,0,'config','config_image_product_width','110',0),(2146,0,'config','config_image_popup_height','500',0),(2145,0,'config','config_image_popup_width','500',0),(2144,0,'config','config_image_thumb_height','300',0),(2143,0,'config','config_image_thumb_width','300',0),(2142,0,'config','config_image_category_height','110',0),(2141,0,'config','config_image_category_width','110',0),(2140,0,'config','config_icon','data/cart.png',0),(2139,0,'config','config_logo','data/logo.png',0),(2138,0,'config','config_return_status_id','2',0),(2136,0,'config','config_affiliate_id','4',0),(2137,0,'config','config_commission','5',0),(2134,0,'config','config_stock_checkout','1',0),(2135,0,'config','config_stock_status_id','5',0),(2133,0,'config','config_stock_warning','0',0),(2132,0,'config','config_stock_display','0',0),(2131,0,'config','config_complete_status_id','5',0),(2130,0,'config','config_order_status_id','1',0),(2129,0,'config','config_invoice_prefix','INV-2012-00',0),(2128,0,'config','config_order_edit','100',0),(2127,0,'config','config_checkout_id','5',0),(2126,0,'config','config_guest_checkout','1',0),(2125,0,'config','config_cart_weight','0',0),(2124,0,'config','config_account_id','0',0),(2123,0,'config','config_customer_price','0',0),(2122,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(2121,0,'config','config_customer_group_id','1',0),(2120,0,'config','config_customer_online','0',0),(2119,0,'config','config_tax_customer','shipping',0),(2118,0,'config','config_tax_default','shipping',0),(2116,0,'config','config_tax','0',0),(2117,0,'config','config_vat','0',0),(2115,0,'config','config_voucher_max','1000',0),(2114,0,'config','config_voucher_min','1',0),(2113,0,'config','config_upload_allowed','jpg, JPG, jpeg, gif, png, txt',0),(2111,0,'config','config_review_status','0',0),(2112,0,'config','config_download','0',0),(2110,0,'config','config_product_count','0',0),(2109,0,'config','config_admin_limit','20',0),(2108,0,'config','config_catalog_limit','15',0),(2107,0,'config','config_weight_class_id','1',0),(2106,0,'config','config_length_class_id','1',0),(2105,0,'config','config_currency_auto','0',0),(2104,0,'config','config_currency','grn',0),(2103,0,'config','config_admin_language','ru',0),(2102,0,'config','config_language','ru',0),(2101,0,'config','config_zone_id','3491',0),(2100,0,'config','config_country_id','220',0),(2099,0,'config','config_layout_id','1',0),(2098,0,'config','config_template','default',0),(2097,0,'config','config_meta_description','Мой Магазин',0),(2096,0,'config','config_title','Мой Магазин',0),(2095,0,'config','config_fax','',0),(2094,0,'config','config_telephone','123456789',0),(2093,0,'config','config_email','vittalik@ukr.net',0),(2092,0,'config','config_address','Адрес',0),(2091,0,'config','config_owner','Мое Имя',0),(2090,0,'config','config_name','Мой Магазин',0),(2180,0,'config','config_sms_gate_password','',0),(2181,0,'config','config_use_ssl','0',0),(2182,0,'config','config_seo_url','1',0),(2183,0,'config','config_seo_url_type','seo_pro',0),(2184,0,'config','config_seo_url_include_path','1',0),(2185,0,'config','config_seo_url_postfix','',0),(2186,0,'config','config_maintenance','0',0),(2187,0,'config','config_encryption','515711997217bb8c619e05bca7a956d1',0),(2188,0,'config','config_compression','0',0),(2189,0,'config','config_error_display','1',0),(2190,0,'config','config_error_log','1',0),(2191,0,'config','config_error_filename','error.txt',0),(2192,0,'config','config_google_analytics','',0),(2199,0,'free','free_status','1',0),(2198,0,'free','free_geo_zone_id','0',0),(2197,0,'free','free_total','80',0),(2200,0,'free','free_sort_order','',0),(2211,0,'bank_transfer','bank_transfer_status','1',0),(2210,0,'bank_transfer','bank_transfer_geo_zone_id','0',0),(2209,0,'bank_transfer','bank_transfer_order_status_id','14',0),(2208,0,'bank_transfer','bank_transfer_total','',0),(2207,0,'bank_transfer','bank_transfer_bank_1','апавтватватватва',0),(2212,0,'bank_transfer','bank_transfer_sort_order','',0),(2219,0,'news','news_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(2223,0,'newsarticle','newsarticle_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(2224,0,'newsshare','newsshare_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"5\";}}',1);
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
INSERT INTO `stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня');
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
INSERT INTO `tax_class` VALUES (9,'Налоги','Облагаемые налогом','2009-01-06 23:21:53','2013-02-06 23:27:32');
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
INSERT INTO `tax_rate` VALUES (86,3,'НДС 18%',18.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
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
INSERT INTO `user_group` VALUES (1,'Главный администратор','a:2:{s:6:\"access\";a:140:{i:0;s:12:\"album/format\";i:1;s:11:\"album/paper\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:16:\"catalog/category\";i:5;s:16:\"catalog/download\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:16:\"catalog/material\";i:9;s:14:\"catalog/option\";i:10;s:13:\"catalog/price\";i:11;s:15:\"catalog/product\";i:12;s:14:\"catalog/review\";i:13;s:12:\"catalog/size\";i:14;s:18:\"common/filemanager\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:14:\"extension/news\";i:20;s:21:\"extension/newsarticle\";i:21;s:19:\"extension/newsshare\";i:22;s:17:\"extension/payment\";i:23;s:18:\"extension/shipping\";i:24;s:15:\"extension/total\";i:25;s:16:\"feed/google_base\";i:26;s:19:\"feed/google_sitemap\";i:27;s:20:\"localisation/country\";i:28;s:21:\"localisation/currency\";i:29;s:21:\"localisation/geo_zone\";i:30;s:21:\"localisation/language\";i:31;s:25:\"localisation/length_class\";i:32;s:25:\"localisation/order_status\";i:33;s:26:\"localisation/return_action\";i:34;s:26:\"localisation/return_reason\";i:35;s:26:\"localisation/return_status\";i:36;s:25:\"localisation/stock_status\";i:37;s:22:\"localisation/tax_class\";i:38;s:21:\"localisation/tax_rate\";i:39;s:25:\"localisation/weight_class\";i:40;s:17:\"localisation/zone\";i:41;s:14:\"module/account\";i:42;s:16:\"module/affiliate\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:11:\"module/cart\";i:47;s:15:\"module/category\";i:48;s:18:\"module/categorynew\";i:49;s:20:\"module/cr2htmlmodule\";i:50;s:15:\"module/featured\";i:51;s:20:\"module/featuredalbum\";i:52;s:20:\"module/featuredframe\";i:53;s:18:\"module/google_talk\";i:54;s:18:\"module/information\";i:55;s:13:\"module/latest\";i:56;s:16:\"module/latestnew\";i:57;s:12:\"module/login\";i:58;s:11:\"module/news\";i:59;s:18:\"module/newsarticle\";i:60;s:16:\"module/newsshare\";i:61;s:16:\"module/slideshow\";i:62;s:14:\"module/special\";i:63;s:17:\"module/specialnew\";i:64;s:12:\"module/store\";i:65;s:14:\"module/welcome\";i:66;s:24:\"payment/authorizenet_aim\";i:67;s:21:\"payment/bank_transfer\";i:68;s:14:\"payment/cheque\";i:69;s:11:\"payment/cod\";i:70;s:21:\"payment/free_checkout\";i:71;s:14:\"payment/liqpay\";i:72;s:20:\"payment/moneybookers\";i:73;s:14:\"payment/nochex\";i:74;s:15:\"payment/paymate\";i:75;s:16:\"payment/paypoint\";i:76;s:13:\"payment/payza\";i:77;s:26:\"payment/perpetual_payments\";i:78;s:14:\"payment/pp_pro\";i:79;s:17:\"payment/pp_pro_uk\";i:80;s:19:\"payment/pp_standard\";i:81;s:15:\"payment/sagepay\";i:82;s:22:\"payment/sagepay_direct\";i:83;s:18:\"payment/sagepay_us\";i:84;s:19:\"payment/twocheckout\";i:85;s:28:\"payment/web_payment_software\";i:86;s:16:\"payment/worldpay\";i:87;s:27:\"report/affiliate_commission\";i:88;s:22:\"report/customer_credit\";i:89;s:22:\"report/customer_online\";i:90;s:21:\"report/customer_order\";i:91;s:22:\"report/customer_reward\";i:92;s:24:\"report/product_purchased\";i:93;s:21:\"report/product_viewed\";i:94;s:18:\"report/sale_coupon\";i:95;s:17:\"report/sale_order\";i:96;s:18:\"report/sale_return\";i:97;s:20:\"report/sale_shipping\";i:98;s:15:\"report/sale_tax\";i:99;s:14:\"sale/affiliate\";i:100;s:12:\"sale/contact\";i:101;s:11:\"sale/coupon\";i:102;s:13:\"sale/customer\";i:103;s:23:\"sale/customer_blacklist\";i:104;s:19:\"sale/customer_group\";i:105;s:10:\"sale/order\";i:106;s:11:\"sale/return\";i:107;s:12:\"sale/voucher\";i:108;s:18:\"sale/voucher_theme\";i:109;s:12:\"setting/menu\";i:110;s:15:\"setting/setting\";i:111;s:13:\"setting/store\";i:112;s:16:\"shipping/auspost\";i:113;s:17:\"shipping/citylink\";i:114;s:14:\"shipping/fedex\";i:115;s:13:\"shipping/flat\";i:116;s:13:\"shipping/free\";i:117;s:13:\"shipping/item\";i:118;s:23:\"shipping/parcelforce_48\";i:119;s:15:\"shipping/pickup\";i:120;s:19:\"shipping/royal_mail\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:12:\"total/coupon\";i:127;s:12:\"total/credit\";i:128;s:14:\"total/handling\";i:129;s:16:\"total/klarna_fee\";i:130;s:19:\"total/low_order_fee\";i:131;s:12:\"total/reward\";i:132;s:14:\"total/shipping\";i:133;s:15:\"total/sub_total\";i:134;s:9:\"total/tax\";i:135;s:11:\"total/total\";i:136;s:13:\"total/voucher\";i:137;s:9:\"user/user\";i:138;s:20:\"user/user_permission\";i:139;s:16:\"module/newsshare\";}s:6:\"modify\";a:140:{i:0;s:12:\"album/format\";i:1;s:11:\"album/paper\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:16:\"catalog/category\";i:5;s:16:\"catalog/download\";i:6;s:19:\"catalog/information\";i:7;s:20:\"catalog/manufacturer\";i:8;s:16:\"catalog/material\";i:9;s:14:\"catalog/option\";i:10;s:13:\"catalog/price\";i:11;s:15:\"catalog/product\";i:12;s:14:\"catalog/review\";i:13;s:12:\"catalog/size\";i:14;s:18:\"common/filemanager\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:14:\"extension/news\";i:20;s:21:\"extension/newsarticle\";i:21;s:19:\"extension/newsshare\";i:22;s:17:\"extension/payment\";i:23;s:18:\"extension/shipping\";i:24;s:15:\"extension/total\";i:25;s:16:\"feed/google_base\";i:26;s:19:\"feed/google_sitemap\";i:27;s:20:\"localisation/country\";i:28;s:21:\"localisation/currency\";i:29;s:21:\"localisation/geo_zone\";i:30;s:21:\"localisation/language\";i:31;s:25:\"localisation/length_class\";i:32;s:25:\"localisation/order_status\";i:33;s:26:\"localisation/return_action\";i:34;s:26:\"localisation/return_reason\";i:35;s:26:\"localisation/return_status\";i:36;s:25:\"localisation/stock_status\";i:37;s:22:\"localisation/tax_class\";i:38;s:21:\"localisation/tax_rate\";i:39;s:25:\"localisation/weight_class\";i:40;s:17:\"localisation/zone\";i:41;s:14:\"module/account\";i:42;s:16:\"module/affiliate\";i:43;s:13:\"module/banner\";i:44;s:17:\"module/bestseller\";i:45;s:15:\"module/carousel\";i:46;s:11:\"module/cart\";i:47;s:15:\"module/category\";i:48;s:18:\"module/categorynew\";i:49;s:20:\"module/cr2htmlmodule\";i:50;s:15:\"module/featured\";i:51;s:20:\"module/featuredalbum\";i:52;s:20:\"module/featuredframe\";i:53;s:18:\"module/google_talk\";i:54;s:18:\"module/information\";i:55;s:13:\"module/latest\";i:56;s:16:\"module/latestnew\";i:57;s:12:\"module/login\";i:58;s:11:\"module/news\";i:59;s:18:\"module/newsarticle\";i:60;s:16:\"module/newsshare\";i:61;s:16:\"module/slideshow\";i:62;s:14:\"module/special\";i:63;s:17:\"module/specialnew\";i:64;s:12:\"module/store\";i:65;s:14:\"module/welcome\";i:66;s:24:\"payment/authorizenet_aim\";i:67;s:21:\"payment/bank_transfer\";i:68;s:14:\"payment/cheque\";i:69;s:11:\"payment/cod\";i:70;s:21:\"payment/free_checkout\";i:71;s:14:\"payment/liqpay\";i:72;s:20:\"payment/moneybookers\";i:73;s:14:\"payment/nochex\";i:74;s:15:\"payment/paymate\";i:75;s:16:\"payment/paypoint\";i:76;s:13:\"payment/payza\";i:77;s:26:\"payment/perpetual_payments\";i:78;s:14:\"payment/pp_pro\";i:79;s:17:\"payment/pp_pro_uk\";i:80;s:19:\"payment/pp_standard\";i:81;s:15:\"payment/sagepay\";i:82;s:22:\"payment/sagepay_direct\";i:83;s:18:\"payment/sagepay_us\";i:84;s:19:\"payment/twocheckout\";i:85;s:28:\"payment/web_payment_software\";i:86;s:16:\"payment/worldpay\";i:87;s:27:\"report/affiliate_commission\";i:88;s:22:\"report/customer_credit\";i:89;s:22:\"report/customer_online\";i:90;s:21:\"report/customer_order\";i:91;s:22:\"report/customer_reward\";i:92;s:24:\"report/product_purchased\";i:93;s:21:\"report/product_viewed\";i:94;s:18:\"report/sale_coupon\";i:95;s:17:\"report/sale_order\";i:96;s:18:\"report/sale_return\";i:97;s:20:\"report/sale_shipping\";i:98;s:15:\"report/sale_tax\";i:99;s:14:\"sale/affiliate\";i:100;s:12:\"sale/contact\";i:101;s:11:\"sale/coupon\";i:102;s:13:\"sale/customer\";i:103;s:23:\"sale/customer_blacklist\";i:104;s:19:\"sale/customer_group\";i:105;s:10:\"sale/order\";i:106;s:11:\"sale/return\";i:107;s:12:\"sale/voucher\";i:108;s:18:\"sale/voucher_theme\";i:109;s:12:\"setting/menu\";i:110;s:15:\"setting/setting\";i:111;s:13:\"setting/store\";i:112;s:16:\"shipping/auspost\";i:113;s:17:\"shipping/citylink\";i:114;s:14:\"shipping/fedex\";i:115;s:13:\"shipping/flat\";i:116;s:13:\"shipping/free\";i:117;s:13:\"shipping/item\";i:118;s:23:\"shipping/parcelforce_48\";i:119;s:15:\"shipping/pickup\";i:120;s:19:\"shipping/royal_mail\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:12:\"total/coupon\";i:127;s:12:\"total/credit\";i:128;s:14:\"total/handling\";i:129;s:16:\"total/klarna_fee\";i:130;s:19:\"total/low_order_fee\";i:131;s:12:\"total/reward\";i:132;s:14:\"total/shipping\";i:133;s:15:\"total/sub_total\";i:134;s:9:\"total/tax\";i:135;s:11:\"total/total\";i:136;s:13:\"total/voucher\";i:137;s:9:\"user/user\";i:138;s:20:\"user/user_permission\";i:139;s:16:\"module/newsshare\";}}'),(10,'Демонстрация','');
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
INSERT INTO `voucher_theme_description` VALUES (6,1,'Рождество'),(7,1,'День рождения'),(8,1,'Основной');
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
INSERT INTO `weight_class_description` VALUES (1,1,'Килограммы','кг'),(2,1,'Граммы','г');
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
INSERT INTO `zone` VALUES (1,1,'Бадахшан','BDS',1),(2,1,'Бадгис','BDG',1),(3,1,'Баглан','BGL',1),(4,1,'Балх','BAL',1),(5,1,'Бамиан','BAM',1),(6,1,'Фарах','FRA',1),(7,1,'Фарьяб','FYB',1),(8,1,'Газни','GHA',1),(9,1,'Гор','GHO',1),(10,1,'Гильменд','HEL',1),(11,1,'Герат','HER',1),(12,1,'Джаузджан','JOW',1),(13,1,'Кабул','KAB',1),(14,1,'Кандагар','KAN',1),(15,1,'Каписа','KAP',1),(16,1,'Хост','KHO',1),(17,1,'Кунар','KNR',1),(18,1,'Кундуз','KDZ',1),(19,1,'Лагман','LAG',1),(20,1,'Логар','LOW',1),(21,1,'Нангархар','NAN',1),(22,1,'Нимроз','NIM',1),(23,1,'Нуристан','NUR',1),(24,1,'Урузган','ORU',1),(25,1,'Пактия','PIA',1),(26,1,'Пактика','PKA',1),(27,1,'Парван','PAR',1),(28,1,'Саманган','SAM',1),(29,1,'Сари-Пуль','SAR',1),(30,1,'Тахар','TAK',1),(31,1,'Вардак','WAR',1),(32,1,'Забуль','ZAB',1),(33,2,'Берат','BR',1),(34,2,'Булькиза','BU',1),(35,2,'Дельвина','DL',1),(36,2,'Девол','DV',1),(37,2,'Дибра','DI',1),(38,2,'Дуррес','DR',1),(39,2,'Эльбасан','EL',1),(40,2,'Колёня','ER',1),(41,2,'Фиери','FR',1),(42,2,'Гирокастра','GJ',1),(43,2,'Грамши','GR',1),(44,2,'Хас','HA',1),(45,2,'Кавая','KA',1),(46,2,'Курбин','KB',1),(47,2,'Кучова','KC',1),(48,2,'Корча','KO',1),(49,2,'Круя','KR',1),(50,2,'Кукес','KU',1),(51,2,'Либражди','LB',1),(52,2,'Лежа','LE',1),(53,2,'Люшня','LU',1),(54,2,'Мальси-э-Мади','MM',1),(55,2,'Малакастра','MK',1),(56,2,'Мати','MT',1),(57,2,'Мирдита','MR',1),(58,2,'Пекини','PQ',1),(59,2,'Пермети','PR',1),(60,2,'Поградец','PG',1),(61,2,'Пука','PU',1),(62,2,'Шкодер','SH',1),(63,2,'Скрапари','SK',1),(64,2,'Саранда','SR',1),(65,2,'Тепелена','TE',1),(66,2,'Тропоя','TP',1),(67,2,'Тирана','TR',1),(68,2,'Влёра','VL',1),(69,3,'Адрар','ADR',1),(70,3,'Айн-Дефла','ADE',1),(71,3,'Айн-Темухент','ATE',1),(72,3,'Алжир','ALG',1),(73,3,'Аннаба','ANN',1),(74,3,'Батна','BAT',1),(75,3,'Бешар','BEC',1),(76,3,'Беджая','BEJ',1),(77,3,'Бискра','BIS',1),(78,3,'Блида','BLI',1),(79,3,'Бордж-Бу-Арреридж','BBA',1),(80,3,'Буйра','BOA',1),(81,3,'Бумердес','BMD',1),(82,3,'Шлеф','CHL',1),(83,3,'Константина','CON',1),(84,3,'Джельфа','DJE',1),(85,3,'Эль-Баяд','EBA',1),(86,3,'Эль-Уэд','EOU',1),(87,3,'Эль-Тарф','ETA',1),(88,3,'Гардая','GHA',1),(89,3,'Гуэльма','GUE',1),(90,3,'Иллизи','ILL',1),(91,3,'Джиджель','JIJ',1),(92,3,'Хеншела','KHE',1),(93,3,'Лагуат','LAG',1),(94,3,'Маскара','MUA',1),(95,3,'Медеа','MED',1),(96,3,'Мила','MIL',1),(97,3,'Мостаганем','MOS',1),(98,3,'Мсила','MSI',1),(99,3,'Наама','NAA',1),(100,3,'Оран','ORA',1),(101,3,'Уаргла','OUA',1),(102,3,'Ум Эль-Буахи','OEB',1),(103,3,'Релизан','REL',1),(104,3,'Саида','SAI',1),(105,3,'Сетиф','SET',1),(106,3,'Сиди-Бель-Аббес','SBA',1),(107,3,'Скикда','SKI',1),(108,3,'Сук-Ахрас','SAH',1),(109,3,'Таменрассет','TAM',1),(110,3,'Тебесса','TEB',1),(111,3,'Тиарет','TIA',1),(112,3,'Тиндуф','TIN',1),(113,3,'Типаза','TIP',1),(114,3,'Тиссемсилт','TIS',1),(115,3,'Тизи-Узу','TOU',1),(116,3,'Тлемсен','TLE',1),(117,4,'Восточный округ','E',1),(118,4,'Мануа','M',1),(119,4,'Остров Роз','R',1),(120,4,'Остров Суэйнс','S',1),(121,4,'Западный округ','W',1),(122,5,'Андорра-ла-Велья','ALV',1),(123,5,'Канильо','CAN',1),(124,5,'Энкамп','ENC',1),(125,5,'Эскальдес-Энгордань','ESE',1),(126,5,'Ла-Массана','LMA',1),(127,5,'Ордино','ORD',1),(128,5,'Сант-Жулия-де-Лория','SJL',1),(129,6,'Бенго','BGO',1),(130,6,'Бенгела','BGU',1),(131,6,'Бие','BIE',1),(132,6,'Кабинда','CAB',1),(133,6,'Квандо-Кубанго','CCU',1),(134,6,'Северная Кванза','CNO',1),(135,6,'Южная Кванза','CUS',1),(136,6,'Кунене','CNN',1),(137,6,'Уамбо','HUA',1),(138,6,'Уила','HUI',1),(139,6,'Луанда','LUA',1),(140,6,'Северная Лунда','LNO',1),(141,6,'Южная Лунда','LSU',1),(142,6,'Маланже','MAL',1),(143,6,'Мошико','MOX',1),(144,6,'Намибе','NAM',1),(145,6,'Уиже','UIG',1),(146,6,'Заире','ZAI',1),(147,9,'Сент-Джордж','ASG',1),(148,9,'Сент-Джон','ASJ',1),(149,9,'Сент-Мери','ASM',1),(150,9,'Сент-Пол','ASL',1),(151,9,'Сент-Петер','ASR',1),(152,9,'Сент-Филип','ASH',1),(153,9,'Барбуда','BAR',1),(154,9,'Редонда','RED',1),(155,10,'Антарктида и острова Южной Атлантики','AN',1),(156,10,'Буэнос-Айрес','BA',1),(157,10,'Катамарка','CA',1),(158,10,'Чако','CH',1),(159,10,'Чубут','CU',1),(160,10,'Кордова','CO',1),(161,10,'Корриентес','CR',1),(162,10,'Федеральный округ','DF',1),(163,10,'Энтре-Риос','ER',1),(164,10,'Формоса','FO',1),(165,10,'Жужуй','JU',1),(166,10,'Ла-Пампа','LP',1),(167,10,'Ла-Риоха','LR',1),(168,10,'Мендоса','ME',1),(169,10,'Мисьонес','MI',1),(170,10,'Неукен','NE',1),(171,10,'Рио-Негро','RN',1),(172,10,'Сальта','SA',1),(173,10,'Сан-Хуан','SJ',1),(174,10,'Сан-Луис','SL',1),(175,10,'Санта-Крус','SC',1),(176,10,'Санта-Фе','SF',1),(177,10,'Сантьяго-дель-Эстеро','SD',1),(178,10,'Тьерра-дель-Фуэго','TF',1),(179,10,'Тукуман','TU',1),(180,11,'Арагацотн','AGT',1),(181,11,'Арарат','ARR',1),(182,11,'Армавир','ARM',1),(183,11,'Гегаркуник','GEG',1),(184,11,'Котайк','KOT',1),(185,11,'Лори','LOR',1),(186,11,'Ширак','SHI',1),(187,11,'Сюник','SYU',1),(188,11,'Тавуш','TAV',1),(189,11,'Вайоц Дзор','VAY',1),(190,11,'Ереван','YER',1),(191,13,'Австралийская столичная территория','ACT',1),(192,13,'Новый Южный Уэльс','NSW',1),(193,13,'Северная территория','NT',1),(194,13,'Квинсленд','QLD',1),(195,13,'Южная Австралия','SA',1),(196,13,'Тасмания','TAS',1),(197,13,'Виктория','VIC',1),(198,13,'Западная Австралия','WA',1),(199,14,'Бургенланд','BUR',1),(200,14,'Каринтия','KAR',1),(201,14,'Нижняя Австрия','NOS',1),(202,14,'Верхняя Австрия','OOS',1),(203,14,'Зальцбург','SAL',1),(204,14,'Штирия','STE',1),(205,14,'Тироль','TIR',1),(206,14,'Форарльберг','VOR',1),(207,14,'Вена','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Брест','BR',1),(338,20,'Гомель','HO',1),(339,20,'Минск','HM',1),(340,20,'Гродно','HR',1),(341,20,'Могилев','MA',1),(342,20,'Минская область','MI',1),(343,20,'Витебск','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liege','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapa','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceara','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espirito Santo','ES',1),(448,30,'Goias','GO',1),(449,30,'Maranhao','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Para','PA',1),(454,30,'Paraiba','PB',1),(455,30,'Parana','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piaui','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondonia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'Sao Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Hi','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chi','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovar-Bilogora','BB',1),(848,53,'City of Zagreb','CZ',1),(849,53,'Dubrovnik-Neretva','DN',1),(850,53,'Istra','IS',1),(851,53,'Karlovac','KA',1),(852,53,'Koprivnica-Krizevci','KK',1),(853,53,'Krapina-Zagorje','KZ',1),(854,53,'Lika-Senj','LS',1),(855,53,'Medimurje','ME',1),(856,53,'Osijek-Baranja','OB',1),(857,53,'Pozega-Slavonia','PS',1),(858,53,'Primorje-Gorski Kotar','PG',1),(859,53,'Sibenik','SI',1),(860,53,'Sisak-Moslavina','SM',1),(861,53,'Slavonski Brod-Posavina','SB',1),(862,53,'Split-Dalmatia','SD',1),(863,53,'Varazdin','VA',1),(864,53,'Virovitica-Podravina','VP',1),(865,53,'Vukovar-Srijem','VS',1),(866,53,'Zadar-Knin','ZK',1),(867,53,'Zagreb','ZA',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan Laani','AL',1),(1086,72,'Etela-Suomen Laani','ES',1),(1087,72,'Ita-Suomen Laani','IS',1),(1088,72,'Lansi-Suomen Laani','LS',1),(1089,72,'Lapin Lanani','LA',1),(1090,72,'Oulun Laani','OU',1),(1091,73,'Alsace','AL',1),(1092,73,'Aquitaine','AQ',1),(1093,73,'Auvergne','AU',1),(1094,73,'Brittany','BR',1),(1095,73,'Burgundy','BU',1),(1096,73,'Center Loire Valley','CE',1),(1097,73,'Champagne','CH',1),(1098,73,'Corse','CO',1),(1099,73,'France Comte','FR',1),(1100,73,'Languedoc Roussillon','LA',1),(1101,73,'Limousin','LI',1),(1102,73,'Lorraine','LO',1),(1103,73,'Midi Pyrenees','MI',1),(1104,73,'Nord Pas de Calais','NO',1),(1105,73,'Normandy','NR',1),(1106,73,'Paris / Ill de France','PA',1),(1107,73,'Picardie','PI',1),(1108,73,'Poitou Charente','PO',1),(1109,73,'Provence','PR',1),(1110,73,'Rhone Alps','RH',1),(1111,73,'Riviera','RI',1),(1112,73,'Western Loire Valley','WE',1),(1113,74,'Etranger','Et',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1428,97,'Bacs-Kiskun','BK',1),(1429,97,'Baranya','BA',1),(1430,97,'Bekes','BE',1),(1431,97,'Bekescsaba','BS',1),(1432,97,'Borsod-Abauj-Zemplen','BZ',1),(1433,97,'Budapest','BU',1),(1434,97,'Csongrad','CS',1),(1435,97,'Debrecen','DE',1),(1436,97,'Dunaujvaros','DU',1),(1437,97,'Eger','EG',1),(1438,97,'Fejer','FE',1),(1439,97,'Gyor','GY',1),(1440,97,'Gyor-Moson-Sopron','GM',1),(1441,97,'Hajdu-Bihar','HB',1),(1442,97,'Heves','HE',1),(1443,97,'Hodmezovasarhely','HO',1),(1444,97,'Jasz-Nagykun-Szolnok','JN',1),(1445,97,'Kaposvar','KA',1),(1446,97,'Kecskemet','KE',1),(1447,97,'Komarom-Esztergom','KO',1),(1448,97,'Miskolc','MI',1),(1449,97,'Nagykanizsa','NA',1),(1450,97,'Nograd','NO',1),(1451,97,'Nyiregyhaza','NY',1),(1452,97,'Pecs','PE',1),(1453,97,'Pest','PS',1),(1454,97,'Somogy','SO',1),(1455,97,'Sopron','SP',1),(1456,97,'Szabolcs-Szatmar-Bereg','SS',1),(1457,97,'Szeged','SZ',1),(1458,97,'Szekesfehervar','SE',1),(1459,97,'Szolnok','SL',1),(1460,97,'Szombathely','SM',1),(1461,97,'Tatabanya','TA',1),(1462,97,'Tolna','TO',1),(1463,97,'Vas','VA',1),(1464,97,'Veszprem','VE',1),(1465,97,'Zala','ZA',1),(1466,97,'Zalaegerszeg','ZZ',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Алматинская область','AL',1),(1717,109,'Алматы - город республ-го значения','AC',1),(1718,109,'Акмолинская область','AM',1),(1719,109,'Актюбинская область','AQ',1),(1720,109,'Астана - город республ-го значения','AS',1),(1721,109,'Атырауская область','AT',1),(1722,109,'Западно-Казахстанская область','BA',1),(1723,109,'Байконур - город республ-го значения','BY',1),(1724,109,'Мангистауская область','MA',1),(1725,109,'Южно-Казахстанская область','ON',1),(1726,109,'Павлодарская область','PA',1),(1727,109,'Карагандинская область','QA',1),(1728,109,'Костанайская область','QO',1),(1729,109,'Кызылординская область','QY',1),(1730,109,'Восточно-Казахстанская область','SH',1),(1731,109,'Северо-Казахстанская область','SO',1),(1732,109,'Жамбылская область','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1819,117,'Aizkraukles Rajons','AIZ',1),(1820,117,'Aluksnes Rajons','ALU',1),(1821,117,'Balvu Rajons','BAL',1),(1822,117,'Bauskas Rajons','BAU',1),(1823,117,'Cesu Rajons','CES',1),(1824,117,'Daugavpils Rajons','DGR',1),(1825,117,'Dobeles Rajons','DOB',1),(1826,117,'Gulbenes Rajons','GUL',1),(1827,117,'Jekabpils Rajons','JEK',1),(1828,117,'Jelgavas Rajons','JGR',1),(1829,117,'Kraslavas Rajons','KRA',1),(1830,117,'Kuldigas Rajons','KUL',1),(1831,117,'Liepajas Rajons','LPR',1),(1832,117,'Limbazu Rajons','LIM',1),(1833,117,'Ludzas Rajons','LUD',1),(1834,117,'Madonas Rajons','MAD',1),(1835,117,'Ogres Rajons','OGR',1),(1836,117,'Preilu Rajons','PRE',1),(1837,117,'Rezeknes Rajons','RZR',1),(1838,117,'Rigas Rajons','RGR',1),(1839,117,'Saldus Rajons','SAL',1),(1840,117,'Talsu Rajons','TAL',1),(1841,117,'Tukuma Rajons','TUK',1),(1842,117,'Valkas Rajons','VLK',1),(1843,117,'Valmieras Rajons','VLM',1),(1844,117,'Ventspils Rajons','VSR',1),(1845,117,'Daugavpils','DGV',1),(1846,117,'Jelgava','JGV',1),(1847,117,'Jurmala','JUR',1),(1848,117,'Liepaja','LPK',1),(1849,117,'Rezekne','RZK',1),(1850,117,'Riga','RGA',1),(1851,117,'Ventspils','VSL',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','JO',1),(1972,129,'Kedah','KE',1),(1973,129,'Kelantan','KL',1),(1974,129,'Labuan','LA',1),(1975,129,'Melaka','ME',1),(1976,129,'Negeri Sembilan','NS',1),(1977,129,'Pahang','PA',1),(1978,129,'Perak','PE',1),(1979,129,'Perlis','PR',1),(1980,129,'Pulau Pinang','PP',1),(1981,129,'Sabah','SA',1),(1982,129,'Sarawak','SR',1),(1983,129,'Selangor','SE',1),(1984,129,'Terengganu','TE',1),(1985,129,'Wilayah Persekutuan','WP',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairprarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Республика Хакасия','KK',1),(2722,176,'Московская область','MOS',1),(2723,176,'Чукотский АО','CHU',1),(2724,176,'Архангельская область','ARK',1),(2725,176,'Астраханская область','AST',1),(2726,176,'Алтайский край','ALT',1),(2727,176,'Белгородская область','BEL',1),(2728,176,'Еврейская АО','YEV',1),(2729,176,'Амурская область','AMU',1),(2730,176,'Брянская область','BRY',1),(2731,176,'Чувашская Республика','CU',1),(2732,176,'Челябинская область','CHE',1),(2733,176,'Карачаево-Черкеcсия','KC',1),(2734,176,'Забайкальский край','ZAB',1),(2735,176,'Ленинградская область','LEN',1),(2736,176,'Республика Калмыкия','KL',1),(2737,176,'Сахалинская область','SAK',1),(2738,176,'Республика Алтай','AL',1),(2739,176,'Чеченская Республика','CE',1),(2740,176,'Иркутская область','IRK',1),(2741,176,'Ивановская область','IVA',1),(2742,176,'Удмуртская Республика','UD',1),(2743,176,'Калининградская область','KGD',1),(2744,176,'Калужская область','KLU',1),(2746,176,'Республика Татарстан','TA',1),(2747,176,'Кемеровская область','KEM',1),(2748,176,'Хабаровский край','KHA',1),(2749,176,'Ханты-Мансийский АО - Югра','KHM',1),(2750,176,'Костромская область','KOS',1),(2751,176,'Краснодарский край','KDA',1),(2752,176,'Красноярский край','KYA',1),(2754,176,'Курганская область','KGN',1),(2755,176,'Курская область','KRS',1),(2756,176,'Республика Тыва','TY',1),(2757,176,'Липецкая область','LIP',1),(2758,176,'Магаданская область','MAG',1),(2759,176,'Республика Дагестан','DA',1),(2760,176,'Республика Адыгея','AD',1),(2761,176,'Москва','MOW',1),(2762,176,'Мурманская область','MUR',1),(2763,176,'Республика Кабардино-Балкария','KB',1),(2764,176,'Ненецкий АО','NEN',1),(2765,176,'Республика Ингушетия','IN',1),(2766,176,'Нижегородская область','NIZ',1),(2767,176,'Новгородская область','NGR',1),(2768,176,'Новосибирская область','NVS',1),(2769,176,'Омская область','OMS',1),(2770,176,'Орловская область','ORL',1),(2771,176,'Оренбургская область','ORE',1),(2773,176,'Пензенская область','PNZ',1),(2774,176,'Пермский край','PER',1),(2775,176,'Камчатский край','KAM',1),(2776,176,'Республика Карелия','KR',1),(2777,176,'Псковская область','PSK',1),(2778,176,'Ростовская область','ROS',1),(2779,176,'Рязанская область','RYA',1),(2780,176,'Ямало-Ненецкий АО','YAN',1),(2781,176,'Самарская область','SAM',1),(2782,176,'Республика Мордовия','MO',1),(2783,176,'Саратовская область','SAR',1),(2784,176,'Смоленская область','SMO',1),(2785,176,'Санкт-Петербург','SPE',1),(2786,176,'Ставропольский край','STA',1),(2787,176,'Республика Коми','KO',1),(2788,176,'Тамбовская область','TAM',1),(2789,176,'Томская область','TOM',1),(2790,176,'Тульская область','TUL',1),(2792,176,'Тверская область','TVE',1),(2793,176,'Тюменская область','TYU',1),(2794,176,'Республика Башкортостан','BA',1),(2795,176,'Ульяновская область','ULY',1),(2796,176,'Республика Бурятия','BU',1),(2798,176,'Республика Северная Осетия','SE',1),(2799,176,'Владимирская область','VLA',1),(2800,176,'Приморский край','PRI',1),(2801,176,'Волгоградская область','VGG',1),(2802,176,'Вологодская область','VLG',1),(2803,176,'Воронежская область','VOR',1),(2804,176,'Кировская область','KIR',1),(2805,176,'Республика Саха','SA',1),(2806,176,'Ярославская область','YAR',1),(2807,176,'Свердловская область','SVE',1),(2808,176,'Республика Марий Эл','ME',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3031,197,'Ascension','A',1),(3032,197,'Saint Helena','S',1),(3033,197,'Tristan da Cunha','T',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakir','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazig','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kirikkale','KRK',1),(3364,215,'Kirklareli','KLR',1),(3365,215,'Kirsehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Черкассы','CK',1),(3481,220,'Чернигов','CH',1),(3482,220,'Черновцы','CV',1),(3483,220,'Крым','CR',1),(3484,220,'Днепропетровск','DN',1),(3485,220,'Донецк','DO',1),(3486,220,'Ивано-Франковск','IV',1),(3487,220,'Харьков','KH',1),(3488,220,'Хмельницкий','KM',1),(3489,220,'Кировоград','KR',1),(3490,220,'Киевская область','KV',1),(3491,220,'Киев','KY',1),(3492,220,'Луганск','LU',1),(3493,220,'Львов','LV',1),(3494,220,'Николаев','MY',1),(3495,220,'Одесса','OD',1),(3496,220,'Полтава','PO',1),(3497,220,'Ровно','RI',1),(3498,220,'Севастополь','SE',1),(3499,220,'Сумы','SU',1),(3500,220,'Тернополь','TE',1),(3501,220,'Винница','VI',1),(3502,220,'Луцк','VO',1),(3503,220,'Ужгород','ZK',1),(3504,220,'Запорожье','ZA',1),(3505,220,'Житомир','ZH',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3808,236,'Kosovo','KOS',1),(3809,236,'Montenegro','MON',1),(3810,236,'Serbia','SER',1),(3811,236,'Vojvodina','VOJ',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,220,'Херсон','KE',1);
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
