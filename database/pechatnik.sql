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
  `user_id` int(11) NOT NULL,
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
INSERT INTO `coupon` VALUES (4,'-10% скидка','2222','P','10.0000',0,0,'0.0000','2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Бесплатная доставка','3333','P','0.0000',0,1,'100.0000','2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 скидка','1111','F','10.0000',0,0,'10.0000','1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
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
INSERT INTO `currency` VALUES (1,'Рубль','RUB','',' р.','2',30.17600060,1,'2013-01-29 00:45:27'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2013-01-29 14:11:27'),(3,'Euro','EUR','','€','2',0.74309999,1,'2013-01-29 00:45:27');
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
INSERT INTO `customer` VALUES (1,0,'павы','ывап','vittalik@i.ua','23423434','','30cac757d89a393f566d4e17d24c0dcfad1b78e6','9d25d5d56','a:0:{}','',0,1,1,'127.0.0.1',1,1,'','2013-01-30 15:59:56',NULL,'',0),(2,0,'wrewer','werwer','dfgsdfg@dd.cc','23523','dfghdfgh','2d7d057a45cf7481e0e1636136320f03ec6341c5','7847aa2dd','a:0:{}','',1,2,1,'127.0.0.1',1,1,'','2013-01-30 17:11:23','sfgsdgsd','sgdgsdg',1),(3,0,'test','Test','test@test.com','235235235','fwefwe','03a330cac34aa5d89bd71f046e33e9f14a8a9285','9cb44d6d1','a:0:{}','',1,3,1,'127.0.0.1',1,1,'','2013-01-30 17:29:28','gsdfgsdfg sdfg sdf sgdf dg sdf gsdf gsdf g','sdfgsdf',1),(4,0,'sdfsdf','sdfsdf','sdfsd@ddd.com','23423','sdfsdf','2f5d31a81ce618730d286535552314791379c485','456a08637','a:0:{}','',1,4,1,'127.0.0.1',1,1,'','2013-01-30 22:31:51','fgjhfghj','fgjhfgjh',1),(5,0,'asdfasf','asfasfa','admin','3152353','sdfsdf','9dafedc42c10b6044ebf81aa36f2ce75b6bc818e','3c7c03e72','a:0:{}','',1,5,1,'127.0.0.1',1,1,'','2013-01-30 22:59:40','','dfgdfg',1),(6,0,'werwer','werwer','w@w.cc','2535235','gfdgfg','d132601ddeed37d4a15e73b30fe55d706d101020','e3f641c59','a:5:{i:41;i:1;i:40;i:2;i:28;i:1;i:43;i:1;i:33;i:1;}','a:1:{i:0;s:2:\"46\";}',1,6,1,'127.0.0.1',1,1,'','2013-01-31 20:57:43','sdf','sdfsdf',1);
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
  `photo` blob NOT NULL,
  `size` int(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_temp_photo_id`),
  KEY `cust` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_temp_photo`
--

LOCK TABLES `customer_temp_photo` WRITE;
/*!40000 ALTER TABLE `customer_temp_photo` DISABLE KEYS */;
INSERT INTO `customer_temp_photo` VALUES (5,5,'fon.jpg','����\\0JFIF\\0\\0\\0\\0\\0\\0���Exif\\0\\0II*\\0\\0\\0\\0\n\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\Z\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0(\\0\\0\\0\\0\\0\\0\\01\\0\\0\\0\\0�\\0\\0\\02\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0i�\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0Canon\\0Canon EOS 20D\\0��\n\\0\\\'\\0\\0��\n\\0\\\'\\0\\0ACD Systems Digital Imaging\\02012:09:23 16:02:43\\0\\0��\\0\\0\\0\\0$\\0\\0��\\0\\0\\0\\0,\\0\\0\\\"�\\0\\0\\0\\0\\0\\0\\0\\\'�\\0\\0\\0\\0�\\0\\0\\0�\\0\\0\\0\\00210�\\0\\0\\0\\04\\0\\0�\\0\\0\\0\\0H\\0\\0�\\0\\0\\0\\0\\0�\n\\0\\0\\0\\0\\\\\\0\\0�\\0\\0\\0\\0d\\0\\0�\n\\0\\0\\0\\0l\\0\\0�\\0\\0\\0\\0\\0\\0\\0	�\\0\\0\\0\\0\\0\\0\\0\n�\\0\\0\\0\\0t\\0\\0��\\0\\0\\0\\0984\\0\\0�\\0\\0\\0\\00100�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\05\\0\\0�\\0\\0\\0\\0|\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\n\\0\\0\\02005:11:12 13:15:49\\02005:11:12 13:15:49\\0>�	\\0\\0\\0\\0-�\\0\\0\\0\\0����\\0\\0\\02\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0R98\\0\\0\\0\\0\\0\\00100\\0\\0\\0\\0�w5\\0u\\0\\0\\0�#\\0N\\0\\0\\0\\0\\0\\0��\\05�\\\"\\0��\\0�\\0\n\n		\n\Z\Z(\\\"&#/#&)*---!141+4(,-+\r@+$+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\\0\\0!1AQaq\\\"��2Rr���#$%BSbs34Cc��&5��6t�����DT�d�E���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!12\\\"A3Q#B�4Caq���\\0\\0\\0?\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0_k\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0.`T���H\\0	��\\0	{� �.� \\0\\0\\0@*���mp\\0�ku \\0�.� *��nd\\0`\\0Yx�\\0�\\0\n��26  %�b,�.Ti�x��\\0\\0T�nB�\\0\n�^$Yx�\\0+\r�l�E��\\0��\\0K����2\\06�͔�`\\\"�Ā��K\\0	��mrH�E9>}r��v[�	$�\\\"Ze��R�L��_�k̴�T�R)j�A)/\\0Z>,��؄Hn��=nA\\0T�|B�~l��J��yy���K�v� \\0�X\\0�;y�\\0lJ�d\\\"X\\0\\0������q��R�eu%we�r(��s��]�B��O�w�D��m��{��F���:W�B��eIߗ0&��(���ZW{s)�����IG�ܶW@Wh��oȅ��M�n�DOJ[-�kЕ���\\\"�\\\"��\\\"\\\'$ݖȇ�����X��_b��K^���	\\\'{�k���l#��[�	\\\\�R	{�s.NISP^�J�\\0\\0TbߡrS�El�j.�Po��5r��Sz��Z��oBS�\\\"-o�G]�Sm&�2��)hܫSj͔�	�!��_p��\\0\\0\\0\\0\\0\\0\\0\\0�*�\\\\��\Zh��Ѻ-�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�`@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0R�.% \\0\\0\\0V܉+\\0\\\"@�,ŀ\\00\\0�]\\0��\\0\\0�b�vB�t�@IR�\\\'�L�s��J�%�uԋS�R������?��_x���C�x\\\"7P�Q���O��x,C[[�x�2{|���b*ӕ9ZH���E�ujJ���H��\\0\\0	� �� �	�l�H�\\0	�܇���E]��\\\\еrئI&\\\"��Ȁ%�\\\"\\0\\0\\0[L�\\0m� ��$��	��)p��\\\"I�q�AU��h�� R\n���E���:�n�%�^��Zdg�=�@%\\\'�Y�\\0�0��  TJ6�H\\0LU݉�W�� �/��/��\\0�?��0 ?m��V���;�‥Hsez��+�M-��زN�.FDb��h�4��-�d+ܹ���aA�&������N��U���\\\\t)r|Ȼ*����������92TB{�wd��ܕ�S�Xr�e,	d���)]��=��\\0\\0\\0S�sU��D��{��[��س+��Wcb�1fʒKĕ�<��C�#�[Q�^`S`Uh���@)J�4��\\0\\0\\0\\0.`�Q��-��o��\\0]:n�it�N�@P\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0q�%۠0� ��	w�!�{\\0\\0�����\n��Z)\\0\\0\\0\\0v.�w�\\0\\0.�%�b�\\0c�\\\"X��nB\\\'{\\0܅�Hw��1ԕ���@&I��&�\\0\\0\\0:[W�vN�s\\\"ĥ`v!\\\\�ّ{\\0w�\r��Z��n7���/}��D��Yؕ~��l��P!�G�*���$��	���ܒS_�D����2	d.`V��o�V\Zq�QJj�(���X�1���^��b����c�7#��x�AY?�������~�TyXx��d/�S�]|e)�zi���<�-ʑ_\r�/h/BRK�ܑ>�]z�j�`\Zm�t����+u&�a��\Z���7r�nF�Vw-q�D�Xe^ƺ��d�!�П2^ȰI%�RT��\\\"�{��j�� XCt��V,Kf��\\0\\0\\01n��E%~���\\\"�h�_�U�������Uɐ�4�ܦ��9�DZ�Ő��k��\\0\\0\\0\\0\\0\\0\\0\\0���6�R\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0.f^�T�\\0J��1j�O!��iYT��o�c!�e�\\0,t�\n��M�g[����).L���\\0�y6��-�!�Vq~R��c�R�Q�5�Ĳ�|�)ܜq��\\0�Ȃʀ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���̘�Z��ݲT\Z�����M�Jm��\\0\\0\\0\\0\\0\\0\\0 ��\\0B%�9\\0D�\\0�O�#��Q�\\0�\\\\�ZT�JŠ�`W:�v�Ъ�9��ſB�l��ў�W���E*P��䈷I�;�f/�u~OWDwr����X�M���RJ1m}N#���ڸI�zj�L���<��`^�\nNNV�{��\\0&M<qj��X�)��gX��{Y�a�c1-�պ�y��M�o�ym���=)��)[��\\\'N܉B4�����1g{�!��\\\"�	��!�,:n�%�����D��<�2R�����G.d�tYsE.7*Ӱ��T��z�ՉH\n��+���ߡD��%\n\n����%v\\\\��\n�܂d�B\\0\\0\\0\\0fWM�l����n���Z����^/rU��(�0�HH�K�Q�>�/m�P���\r[���0��MƑd�Ġ!����&ˠj��S;(�E����Z��h���Sj֋)$B^!��.�����p�w^v�z�I+!NOZ܄�Ǖp�q�|ƅ7�c�\rK(Qt������B�\n�EFm/.u���������Z�\n⣃���>�7Ѫ�>\\\'\rR��j+[Ñ�bkNj�����W���n[�U�b?4�_�6�ː�Bʡ�2/nd�<����g�}�#M�v�C�h�n��.\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0WKN�oc��T�!n����#�܋6�t��!X�Z���ݴf���,(>�F�r#�>Kؙғ}�4�Ǩ�n�\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0R����>h�����2�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���B&�V��dJ�����̪�X��S��\r~W6L.a�:NppWV���5�.�V�L�������0��<T�ZrO�k��̼f;\\\"�%�a�gk.~͋s������|\\\"ix6c?:��kJ�E�GR��ۘB���_�\\0@\\\'��&�\\0	�&�l\\\"H�) �rm���>@\\\"9�l-`d&��`��_�6�b��?�\\\"�f�]ڹc6�M%)�b*�N-[�������̡&��.ԅ���E��4gQn��ĥ��!��ċy�О\\\\�u$Sk0�Iy�k�p)�Rwh�+�����nM�[�����Z�;Z��b�,7~�ۨ��4��Ad��%����YN�Ȓ��\n��D���Un	(�S���+�V�CQҴ�rv�K��*��M9��\\0!+�����;FO��X�,���u��=\\\\׈p��&�<��7V�������M]i���AP��-;3m�3���Z�<-�-�9E>�����X��N� ��I�0#M5�*�J6L���2U,Ouԗ��Z�!��4���%.�����rZ���\Z�)7̈�ʂ�W2t��� �n{�M�	2R��j��$n�?S�����w�Y���}��д��^$[w�\\\\pl��m\n\ZDX��l8;� Qb�Q��\n�+����*c�«Gb��n��8t�6*��~���]�aT��Mk�s\Z{ܴV���w��RZ ��]��ٕH��\\0{�{�^̰I�nS̪L��\\0�!��\\0\\0\\0\\0\\0\\0\\0\\\\���U��PLd��`f�ʱU��N��1�^\\\'J+E(ϓ�2�<]hr����u�$�RRQ��W���ʀ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0&\n�Km�O_/Ȟ.[b)F�<��ػGV��9�ze�&=<��b���V�(_c\Z�S��8S�����q��މ֔����c�ק1{t�+<��X��-l;j�9F�%�3�W�\r3{}��V��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`\\0�	�\\0�V%-�&�W�*Jː��ӵ�����d\nm�\r7̮��!�1����*��i\ZV��\rx�a��\\\"�lE�\n�d�ĊW�Rw��i��@E���@*�J�(�\\\"��X1m��\\\\�/�mɷ�@,\Z���k�E]�;�E)6N�z�v/���pq�/�g�,��p���	8�5Х��\\0��+YPo�z�$�z�>/����WrIZ�n�.�s\\\\5ue����r\\\"H���vEK�{��Q���E5w[�Qg�]^[���/���are��!�Ћ_�W�~E��k�5h��Q�ہJO�BZ��-��v\n�ԅ�	lJI�J7EVd[� ���(�Ѕ���U��B�&���ۙ6`Ж媗or�#�\r�K\rn\Z�.ʋI��B�d)��LSc�\n6`f`W��Y&༶<|*��=ZN�L�6��5`��y��ocծӃ�<��;SV4�4��Ļ.c��u�%D\\\'bw�h$�Ra\\\"R�L��[����J�d�&�Kk�;y� 	];��\ZBWD٤<�]��i�u�6��A���y��>iU~�C�[����+V�ۑj�\\\"��!*e�r���Ӌm�\\\\�r��zm_N[sdeu���\nmS�U���z��O��4�(�bq��P�\Z{mu�|������^�J���-RZ���H��w4ŞSJlE���Ȧ�.�d��-���k�& ^�2���r��K����\\0-��\\0�r�\n�����Ż��/�����/CV�\\\\�NRK�\r�YS��u%oTR\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�E�I%vA0n2Ms>�O��\rT���-G/�K�~�]�ж�N<�ab�*=�[�T���,E����K�]��yb���m�`U�:Rq�FK�G���md�Ti�f\\\"���w~$���u�Z�\\0��\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\\"@�@��fB�U�\\\"U�uԆJ\\0U��E��-��2t�܈�r/ѓ���R����q�c\\\'�N	WUR�	Nv���ˎ:�#�4��\\\"�&Tk����Q+&��-�ʱt��	�TaT����V�319�&�n�YJ�}L9I�yo�Z\\\"�j�yZ�M.�Y��$YT[�l�dO49�o�:vG>`Bd��k\\0v[�e^�`\\\"�J×&9�.�]\\\"m��	ۚ��2Z�kט����ĵ�ʥ];n�dY���R�{*�T�Ԝ�)��uZ�ؚqz�|�ҳ�E.i�\\\"���*���x��b���8�ݻ܌�Bv��i�ˡ|}(��Z���䊢���eg�$�Tu)[s�ܛ_an�Tm�&ˠ䐵�	G7��(�GĄ)�Е�ʴ��-�Y��>�YߙW%�&�J��ܖ�BK\\\\>^d�g���k�lPպZ����Xx�Kڂ��bio�\n.���	<\\\"��`iI��ܭ��\Z����������xXD�G�G�/b)a��f�c┞ŵ*��R�ɥ�x�}{9�����D����&i�[\\\"6\\\\�ӸI[b�!ID�g�^�p&�]�Xt��l���Bz\\\"�-}ż	�K��i������ht�Ae�Y�,��۠��v�6���\\\"��MH�a��,Uk��.���bnɶ��\Z|���Yr=l��~�F)F��򤯿3<���F/B���$���mcus(Ҽ�bݵϩ�;o�gb���0j%vm��D2]�\\\"9s.�<�m\\\'�n�۩1wl�ݒ�S�����b.\\0mȔ@`H`@\\0�fa�\Z�l��a�5���(5+Y�(�u0��:QI=�̏��q8�ו��d��\\\'ZU\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�=	֚Qi_�,�5���n]S\rB5gR�֋�e��{�+GMjW��T��Q����d��У�����p�ó�	z3�6�wd\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0%rzZ�BL$H�@	_`�Af�IZ�\n�e{�X\\\'��=�	A>�<I��䊒k�2)�U�1��eQM�H�P[��f�2�b�X�SkX�f��,�8�e����j�͗����?\\0�&�r,���}Iv[x�cg�)G2\Z*ߡg̀J��C݆�qܛ�Z�����̝��\\\\(�D	��,J�#���R��6��{�1���l\\\\D�u�b��{��_��G�G!�Nv�QW~���^_W��:N*PWnRKk�ҕIF�Nޤ��L���.�[[ntݼ$��;[�������͖���Y��F2\\\\̚��,io�x�Rպ��N�ˠ�4HY�fT�\r?p���˚v\\\"͒�[J��S[ؔ�����&�I��Uek0�%�ӧrv\\\\���r!e6���k��T�k̔�+{�Qv	gԩ�$�%.�ė���](�J��Z�����~@zt���[�š6��Dh�i�w]D�ܚ�ϝ�wq�Vef�0��gJ�t�*��e��c���2�\rE=ز,�ɰ�\\\'�	}�\Zoț;X\ZR�)�W	nv���a���E��6I�.��!\\\'a�*�rm~@қ0�B]�M���m�L��Ĺ�QWJ�ye\\\\S�\\\\R�g����s���zc}7wg���(�&���qt��?��V���G���lV�z�#�Q{B�j����˞�U��\r�9ʃZ��f����x��V��2F(���UO��5%��r���+#�kٹ��%�V��|���#hܤ_/O/ͻ�aT�2��sKw~Fѕ[����ovT��CM�Q�IT��E-!�r�Sk=��]Hwe�4���\\0�%��u%��0 \\0\\0 \\0��`�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0I \\0@��LV���o�;��������	��b��B�%_�\\0�|���T�H�{x��V��^;�N��!	��M\Z�~,Ə�~�w�\\\"�.{mB�d��-�EkȢ��K5\Z|ʦ�K��/S�t\r\\\\�J��EB[����CH���-T؞l5�\Z,�����<��M���E����J�R�$�Q\\\"���a\\\\��ȟB��Q�!F�����}�Ў��Z�wFL��*c\\\'���%�*��]�w�KZE\rY=�$�/�*Ŧ�t@î��b�fUe��a��/�K������\\0%vv\\\"ϫߡ(E����rzY�BB�Y[[	&�����g�=�*��]B4�hE��Zw���%g�S�W �\\\\��Rչ\r;�sv\rX+�Z�_p��%�E��Zz��]�R�.V���� ����*Wi��n�E)j�h�kt��EYoȭZ]�^��ڕ�����{�%�S�Ҳ�f�F�&-h���.�o�2�~�[�����!bT7�[k0)�܅��R�@�U�YJ��\\\'Mߙ:m�Ixs!/RR���ۨeϩi�4з�6�W�1N����N�\\0D��%���w%���BQo\rʣ��\n��� ]���ǭ��T�M%�����{�I���t��x8ֵ��r*�����\Z�F+V<Rg���yt�{��_7	sOb�+�������d��̫Z�y؛��SkV}��bI�u�ɯ��Ly/��g���m�\\\\��CE�PՊz7�V�\\\"�H�����#J*k�!��D��B�b�_q.{�7�1bD}P�\\\"�~@-�0����	�C,2\\0\\0�`@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�� GR���%$�͍�2}�4���+��M�4>Vd+�%��K�_~E)�J�$Uk���B��报Z�V_iz��E�s2���+S_k�f[�k�[�Y�w�V;i>d;��TҸ��*��*7&�eIu\n�[-�i��Y�6�,��{M�s\r/y*��b�\\\"��܄�����kab^ː�b,ʭeqe�i%��6�0�㰵Պ�M�o2�2R�\n�V	��D!�{<�0MrV2���e*̊i���n>E0�W�\\\\��V����\\\"�I]X�qN<�RWDl�J�~F<���Z+{�ҊR�-Qa��{%�Vܰ��|J�oȝ-���;��=�������+ح-�R�|�m��\n�R��(�ːB��a���*���C]|@�xf��E��W��J̔��U�6����{���+���K�%�b�4Ҷ�M��;j*iV���.ӋlF)��\\\"��E��CN��8jW����Gd��[��T�4�R*)�ab\\\"��gU����^dʋ�]��El\\\\�]\n\ZZv/���^�qA;���p�ȫ{x&��[���Wm�ŗ/ �6�*���ɵ��������ܩ&��u-~DX���(� �XZ�H$��J�V&�\\\"��B�K\n�4��zx[��m$���p�+���bmA�x���F{	-;s<��>��N^�����3��r[u0����=�Uc\\\"WH����c:kL�����+�Z�*����2E��ױb[%��)TZ�ׇ2ZKx�$�r�չȍ\\\"�$�Jz����mЪ�^�SȆ�T�ȒE�z��kr�.@�X�u*v�BD�~d;�*��/o@\\\"ħdJ�).h\nPeMx�t �B\\0	\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��&�aՒ�]y����\\\'����P�}�!r��^,�nłK_�0��\\\",�r$��1�H�v�%\\\\�2S\\\\�\\\"���&�[3*܌�O����Զ��Uwv�/��媱�Uv<���ܗ̥�{�R�i��LmȎI��(TՈ���UrZ؄�m&�\\\"{�Ҷ�_2M(�\\\"�2�\\\"-�\rort�,���ŭȪ1�؛0)�-�b�;r\\\'@��&1����\ZE�\n���Kb�E�Ȫ꠶��d�]WR�nϙ�F+�M/B+J�yRi�\n{\\\\ȥ%�>�v����B?�,�tܺ�ҳ�Lǔ��@Ǭ��Y-�2����.~%�|��Jٓ��Ak6�-�M��%�l��̯{ �ՃJ,��!���4�|ҙ��܁�=?�\\\"���L�w�I��Rʴ���˩\\\"\\\"��_b��%Y���Q6��!��*i	ܝ��&>�WE�j�Ȣ���\\\"�^���{��\\\"�-ьTvFD9Y��ȳ��)���]�t(^ϧP-Պ�Fh�ߑ�Ri�[����0a?K����%Q%b�(K.�[4�=�MX�IJ܃]z��rW���T�M�\n�o�ԕeԔ\\\"KvSor��#�4�;!n�V��!\\\'����g�5ԭ��\\\"˨��Д��1H� \\\"��J�r�Kܔ��HS[����Ϧ���:zQy�������\\\\�饧s����~bl`�+�ߩ�Ai��Ƃ�TS���y��Ů��&T��kncb.�e^|��e�s�~����2J摝[�}��_�C��,�->l�k��>`�,[{����%M6�ZK�(�\Z\\\"��TE�B�&��[�w�@���~M��m��\\\"�	�F�\\0�!]��m�?\\0��V\\\"ہG&�ȍ�07�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0D�\\0y2SD^ȕv��	�*[���Bv\\\\���/���~d�Vc��Ķ�Ȗ�ܤ��\\\'��p�%)%\\\"����� �dSn�,b�]�c~��fZ��Y���v��\\\"�Vʭ��\\\'m��(�Em�MO�(��#{n+ؔ��m�Y*�KۑJW�t&��*\\\'M�D���q[lC��d�e�$���ߘKmºS�b\\\\}�b�\r���h��[K�%wr�\r,��m���Uk��_h[�%nN���4�*�q�o̢;�!`��5�/#6�uZ�%Wۑ���y��1�GE߉]4�����n��\Z[|�Q�^�7�s�m���7tX١X���$�;U\\\"��1���B�Qk��+қئJĪ�;1m�W�Z�|���E\\\\��-yM�\n��R&�ۡ_K����-��BWEM_-m�@�\\\\����ȗp�,�nJI�#�&��reAxkr)�)�%x��t�\\\">Ej R�o�2��}�u�30�Ke̊�ʄU��<��SMmuԻ�#:�-���[��nE���u�Z��k�U���lf����1+�{�aIo̥��ܹ4�ܡ��R��\\\\��EJ6݈��p�M�zo�nB����J-m�q��&۴�t\Z\\\\@��[}����o��5w�|�W��R������V%oН��ۡ)n.�ϛh�1m߉1L�����m��H�ë+�*c.-�0qɷc6\rn��3r��Չ��eQI+E\\\\���2hE�r-U]��mm�LJٙ������dDם[y%��ɮ����h�)T7b%�M�Q�\\\"ʩ~lT���B�r)eMxs\\\"� D�ߙ;^ȋooUFױ�Um�����N�]��M��S�ذ_Ć�v�@eȫ�)[�e�E��d�^(6��-K��T��R�e��r\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0&<�$�L�\\\\��V��c��q�)\\0\\0\\0\\0\\0\\0\\0\\0\\0$	\\\\�\\\"�>�$JM�`*��b�\n�9n��$��\Z�Y.A�6\nȔ��%/tSmʬ�2�6�	t��n��,&̪)��*��**�72�EZ�ŏ=��Fn�jb�J4��X�k+��e���]\n-Ve��J�Qݔ>eQe�J��P���]�l���L4$J���/Ao�>�T�*/U��ʬ�TS��JӁ.��6��\n���-��F�E�Fӥ�I.E����$�.[�o��c8�-�d8���W�eTyX����r����=�-�+J��\\\"��Z�����\n��a҃빟�ZQ�i�dR������y>�&M$�6E�:�x\\\"�^Źaֆ�ߑ���c�qMY&X�4���+��n|�y�7���A\\\\ĔU�*�Yh�N�K�O�OfX�Ԡ�����S[�2R�@P���o�V���\\\"[~D�B�R%�.=�t6-�;�K�;���6���K�J�۷\\\"�|��|���0�ݛwKaf�*�[)?��Ԕ�d٠!%r���n�*�w�6h�����Y��̠����D�˩��e����2�k{>eZE5���6��2j����y�V*�|���3\\\"n�бQݲb��8��(�d��Mmb���Z+bۊ��J=y+J/�*>D���\\\'M�U���e��W�̸�܋!�-�����u+���S��t8ئKr��\\\\zR�6\\\\����q!\ZQd��Gd����Y�~O�4�M�EJ-_ԕ�0�`��3.��c@ʣ�Ok����Ħ�d�x����7�U5b�Ȥ������V�KЋv��U��\\\\Ů���n�m���Ŭ��15�Y-[��^Ue�r1�+\\\"�Y��؆���Q�eT�܈��*�R-�-�����\\0�\ZYd)h����\\\"��r\ZW*diz�\\\"�VdiܮW�Sm��b�	E]H�\\\\QM�Ҩ\\\'̑<����W\\\"WEE9���T��F�2L��Z�L���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�.�(�*�\\\\�.��n|������Cw*)��-��+l��`� \\0@,�\\0\\0��\\\"	���T���i��]�^��՚ܡnJ*��)���+��P�%��4�B$�LS�łT��ĥn]��6��7�rU��;6 �ș$�-�h��^�m[���K���ԵU]�\\\\^+r����ie��b�h���.*vE�!B�N�n���s)�|H��]�\\\\�N�r����8�W*��\\\".�Z�YLS���*�-�%]\\\"�E�Ck%A�8;y�_v��n���:c�=,[pvfK�\\\\��F�\\\"eE�yE�ks!l��������Kj����m�\r$��Ŏ��b�4���[��U�y�r	_LL��}�$��faz(��G�B	�\\\\ȧ=�r�)E_��I�إ^.ѧ	A�DƫB�k�2ܛ^�V�,TM��*�<�M5k�`֊�}�K�+�������lb�b�YsE��>}J\\\\]�YM-ٰ��ѕ=�\rlLb2l�t\\\\�a�%&��FܑR[=ʋmx\\\"\Z���Um�{r,-�E��mx����iV�N�{��i4N�+JTS[�-nV��-�����:P��ep��ʣ+��w�Wf���ɤ���K)]y����r�����ı�齼ȫ*v[�	��ĪQ��\\\"��c쭈C����Z-~&cOU��j���1���e\r+���i�)��]E\n6�%-ʒ���\r�R��$���+f\r\\\"�\\\\;t&�)od�eנq�x�l���iWWWi\\\"�F�KW4�.O�YZ����*�wޔB��b�;�-v\r\\\"�[�c�%�)oԃF��U�[�M.a1z�QQ��2�-�T�gq\\\\w(K��ཧrvN7k��]_u�\r6��X���������c~f]efb��x�Ze;�+n�y\Z*�.�%6��Wkz�\Zk���RҾ警���m��\ZK�=ʚ�CJŐ�Cؔ�dIN�[M�\n�ߙ\n�IUKk��+ܮK̋x�ȕf��ȘŰIr#fUˑC݁\rە�m_rm���JdP�W˙L�H�\\0\\0\\0�.RQ�6W^���L՟�l�����\\0\\0���`T�%�;�;���|�o�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�	6V������J܀��D=�2[�)m=����%�\\0\\0\\0\\0.\\0\\0\\0H,�n\\0+���C~`U�>�Q\\\")>d�[�QT]��v54��,�ٽ�v\\\\��r%o�U*ܗBZv!X��D,�&E�~EV�ܔ!��$�utE�����	�~%�_QDl�K�+V�Խ�~�_��Y�o��]��U��6{�\\\\v�J�]���QE�I�̥��Z��$Ke�\Zۗ��r���Lb��.�6�R���7���F)r�ЭFۮ]BJ�l�)�*\\\'��\\\\O�ܢon���Ȫ�\\\"P�E���tN��\r�a8�[���S�OȥӲ&Ut���J^�E���*��lNѥ���E$�/�ms\\\"QH\Z[��^e���ejۑ��VV}�>���q7�\\\'ԷG��+}\n�T�k�;8�,��M^ۗ-⮊,ï��y��y_��14��f�xX�qʒ��M��_ih�k]S�І�m*+.���.���n-eeԫO�7�\r-�7ۛE-[�\\\"��M�Ե+���\\\"���n�r �$Ug���F��\\\"��.Y�QҬJ4���ĸ7��+��Z��!�KJ	|չ_w���5��i�ڋ\\\\�*Q���Sn�j\Z[�SKV+��\Zپ\\\\����z��%-�.A.EL�N-$U:W�v.�}�F7W�\\\"�\\\'u{Ȯ1�-ɜS������r%�~EVQV;ZI3��3��s�\\\\����d�\\\",�2�H���;Um�r#r�n\\\\����\n�	;n%{m˩U��DI7�t�ǧ�	]\\\"��W&׳��5}�\\\\8���y	>@Qg�r!�ٽˎ��sd���>�F�g���\rn\r)I�nUm�%�{/�R*i�qk�U��p�6��2�$�it/Sv/B(�I4�R�d��yT�DbT���Bmt-u�cE��c�fCiG~e���h�:��1���v2��z�Ӌl�)V\Z�|H�Ⱥ״S$�#J\Z�\ZJ�\\\"6�`�-آI�f]h�I2ȱM�!��&�id4�5nD[ı��І�˛&R�iX\ZQ�����$��2�n�-�䥾�J��`�����vV���}�UK_D�+����O�o��+�n�uE>E2�1 @\\0\\0\\0\\0\\0\\0\\0�]ؙ�Ǟ�G�#6�l5\\\\V�F�]��l� t\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0$\\\"@+���)t�)���\\\"�2��{�\\0\\0\\0\\0\\0�@I\\0$�\r�[�Mr%Z���@%%Ы��)�\\\\��er�J��G��J�\\\"�5�M�{�n�T��v�UȢ/rz����E�Щo��On`P��Z[Z�I.�Ȋi�Ą�&W�����x�j�T�p��&�q	ۡ=���Rj[����rZ����ɴCZ����	M���+��O\\\"���r\n�x��M�̮)���)rW+��R��U	4�V��ةC���6�*��qG���\\0��\ZK���U�b�$��ۑ����y&U:Zq�A��euԾ�u�\\024+�LY�w�v�T�L�Er!F�h�֋�E��￁��D��4ƌ<�I�#�t/Q��X٥�+Tl�y$)��mȻ��[W�iF�m�M8�E��ܪ��go����fuw{��Vߡh0�F��r������ط�ejܯȅe�\\\\��P���vY�ݺ�������-�$�T��ȝI=����T(�dJ���\\\"���1���Ӆ��Exs+�W�!G}�TiN�}�t6vn����K�Km�*I���r�&\Z|E��}	L�v��,(��Ǣ)V����~n�U��]J�Fܼ\n�e���%\r�Ȕ�Z�{�M�r�Q�gk�ǫ�����-TI\\\\#L\Z���P�/�n�Zq{l]-�R4تJ̅�\\\"�s!��v)����ؕ�Ļ\\\"��,�p�rv����� R��՚){>E��L��$I���M��S�[s�E��y�$T��č��i�&̝�Vn�f�r/RN�I��S�ĥr7\\\\��*�|�\\\"r+zm�QL��D��LvV�̉o�7�s�2d���k���n̳Qy\\\\�Q%̳5~E�:�m�ȦV{\\\"��2�o���j��I�$C�� (�B)�E��БC��#��T���(MՑ\r�E©�Ȓ����v�[�\\\"�+���v�d >A��Jk��\Z�*v��;>���xOk\r6�\n���O\\\"U�D�\\\\��ʀ\\0\\0\\0\\0\\0\\0\\0\\0-�\\0�~@\\0\\0�`\\0l,\\0`\\0�\\0	��d\\0�:[D�b�t \\0�6 6d[p\\0X \\0�1��\\0�,�\\0̮�B*��\n�~�ZR��J�%���E���.L�6��\\\\�ik��;��R\\0�M�X�4�t�t\n>h�� T�6��\Z�UqMى-��ʻ��E!Wv�W�6ٯ�����.L��v�ҟ$:y�:_\\\"�ҿTR���qI�EJ�F�.��B6_9�b�{���t.WE;��)�,�B��!B�v��^�\\0�M��=�\\\"1�r��Hp�͠��-�KW�ZK�H��Sݤ��L�Si�dh]C[�t�N���H���Qb���2)ߧ>�mN�(+��TaNH����&4l��4�*i=�t�{Is2\\\'M8�㇓~�٪�ն�ʩ�V�I/�û�s.Ƅ�l�i�ԕ��uP���ː�����Z��aB7ݢ�rܸ�6�z~�6�-*W�tt�2�����=�]����Ms�S���b����K��6�-҂/F	�{�F	4V���v��I.e*��/h���%�����c�*�L�����ldi\\\\�R��bˢ�MH�t�4��.W-٧�;F�N1k{���p��~�ʇ�~�[�٥�RO�R�%r�pW��^�;�F	B����\\\\p�?RܷVܪ� �s1��M�Q+�Ǩ��/��I&�Ջ2����R-7n���s.��%M%{��k��\\\\��%CĔimA5�\\\'�VOR%�LS{26\\\"4��ةA.L���E�6\\\"1\\\\�J���&\nɧ}����-��%�I\\\\��9=ʚZ�ն{��<��l۲!��{;��)ߖ���B4�[��&����J۲cE6�J�_N@�#Mj.�)�\\\"�_�2�\\\'&��}J�.A]�oRꦟ&D#��:Zt��&Re�ݢ\\\\�R�#f�eM$X����$�,T��\\\\�Ȕ`�)Kn��ҏ+�2\\\'��i���t��%�b��x��-��(�������Gv���Ӫ�-�&�,Z���S4��Z�ГK�RQ���\Zq��tQep!�^%2�IY�Z�C���\n+���Â�Uk!t�aF��h�QO�b�K{lSkl�B���u+P�7���U5~��,%SW�]���R�or�S|��[��sDm��J�[`��K�#B���R��b%m��j��ܙn�WR��n�*;r\Z����!|�.{��MlZ(ƔcMܶ�Iܽ4�-}��*��ۡ=�Z��y�*��*�8$��F����|�ڳ��\\\"N�np���Z����n,��anpK�S��*�]�A\ZJ�k�\\\"��m�V�\r\\\'�\r!�����Wd����������r+i!bv�:a�\\\\i��^��$�J�;t)�Oeq+x��$�vMEsDIF�?qR�{E2JČPeE̩�ZogoB�̫\\\\��S������{Z�\\0\\0\\0&)�d��&-�t��@�R��D����+��]�^�%���Ri�I��N:v��!-�I��/����S��`&I�gtA2m�m�������6v�Bt7$�rv\nM=�[���6��@��$J����Rk��R�?���ܾ���\ZkȕR}$�ҙ6����\\\"��T�ɭ�߸�6�¤��d��8��M{���4М�?���Ü�ݷ���.d�/�OR��/}��A�t��lU:5c�KŦS���~{:�tiu&��6��A�{)���$݉���ڸRk�j�T������5>���Z�YTi/1���I���v{žBM�w��\\\\���M�̟�)�\\\\y�ꊕj�YNKєJR�����̭E�~��r+��V���1R.*wo�Bmr+�����T�S�h_��S�+]\\\'��->W�=:T���A�b4�E�9&ں��[nR���ue���+l���u+|�}�J�eʤ��Z��e��E\n�]��p��I��JS���ߋ&R��ͻx�TiJڬם�\\\"T��v}lUEh�G����I�^���NZ~�� Z��T)J6-�+���Ot���դۥ7O�;kM�g��\\\\��k���k�I�ɹ;�����ƽXSp�ڏT��J�����U\nR��T��S�Q�y�r��41U�mJ����Oi�Ov�J���Bkv��m׫R�yRrr�os!ck�{U�ׅ�K��.��]��̦�v���׌�(���i�W|�t�T�+ӓ�����!n��?:�4����M��Z���S�ە�^+J���$Ҏ�ߓ��$�/F��}w�ս�R��=�ʧHPrZ�L\\\"�-Ʉ�F6��\\\\���	\\\\P�b�EǙ.�ݛ�\\\"�RsV�Tҍ2P�\\\"1i�ĭV��Ob�Z����4�^�cM�)Ԫ�v�TkU���SkiM=7��\\\\S^\\\\����E�߃!dƒ~�\n��k�Nua1���q�+�hԓ^dZ��Z\\\\�ܮ0�ߟBc)y�/F;{W��4�4[�\\\\�跉}^�׸�s���\\\'+x���[�M��/*Q[��5*�8�m/�9�P��.I�#k�c��$���e8�&��J�ն�m��F�1eNܓ�*6���_nj����\n�W�O�4�\Z{�r���2��z�&�>o�v5\\\'.R��Wf�{�kݥ��%Ū.����^�$��Æ��\\\\�/KU�W\\\"�����lc�)r��{���.56�w�[*�,��;?\\\"�(+{%��Ov��JIl6��	Y(��C��n���KΜ�\n�҆�Ks���/:s�/��R-x��l�\Z�٧{�F-H��]W9?k��ST[k�/�LJ�v-I-��2*:���nY��w���t�(Y��\\\'?:�s�M��[����M�.���&�*�9���.�\\\'\\\'o�\Z]�E��mr)�Z�vRi�b%x뛾�S\\\"ҧ�Z���W4��~Koq_�$�+��[K�rE�Jo�+Jq����\r�ch��^��v�^�&���b_{m�Y�^cf�ӆ�*L����vC�V�ط\nwOk�hi]��)ǒeR���l[T�.E�p_`I�\\\"�Eh�AIlU\ZzV��S�mЭ9;�6�\Z~�ܻm��F.��U�m5v���r�T�3%7M;.e�ݽ�`1jA��ȣM�v��WT���-�S����m�2�n��S�m��u���%7ؙU�ĩ�ȥ�ϒ{��)9$߸�*�M��?\\\"vi�(;�HwO��넛��O�*����Cf��ܯgtP�ӷ3)ε�\\\'6[�y)곿���4�����D`������RUJ�VM�icKO��Ӷ��:���nN����{ߑ(�ޛ�I{�Jt�eԦ�f��F��`�!��b���ە�ԶW�rb��d���٥���\\\\�R�=H�en�K���N�F��Z��Te4�l����#bԢ۶�3�J�4��7rܢ弓����d�W|�zQ~\r�ȷ.�;���Փ�yB��u�饩_�X��8���2�c�Z�-Imtd�����/\\\"�Bv���4ںcĮt�,�7ȸ�T��\\\"���Y;�hm\ZXq��|�ӽ�B�Sv��r���y��J{�7��\\\\ӹ�F\\\"����)�WQ%=����qi��ӯ�B��Y�9��;IM]o����[����U�Kjn�*�j���Ȱ�Ÿ�/yF����d��V�Bޙ[urB��F�����.p���k.H#J{�ۋm����iq\\\\��D�.E�����I�*����eq�E��4���EM��f�6��NN��J,a`]Qv�l.�.\\0��b�]�v]��v.�]�l\\0�`���p	؝Cu�+��@��VDY�_p}��V�pI�	��7o�\r}u;_Kc�=����V\\\\��Dws�,(K������o�Q�v�\Z%kY�F�x1Нn˗�5�/���d�r{$�A��}��[��	t书��Y���O��w�2m�!E��@�=�.O��6i��}�R����JR���3M�?p��CW�\r]�Uw�}���������\\0H�7�����ȩIߗ�U�o�_�]�j�\nZ�-����t�7q������oB��޻x}��x�6��ʜ�-�\n%�Lѥ�U��-��J���o�:S�e*��_�[�i=��;}��Z^�Dw3���x�*ro��F�]i��؈��ku�M��4I��!.���I{����؂�/�������4�/��I���\\\"	��d:S�쿰t���O� ��u�*[[J��&��� sn[Y�B��ob�/���WK�}�U��J��o\\\";��jv�\\\'.eR)H�M�EX��m[��)YߡT�H���W.)5���Ue\nrJ�\\0��%̗\\\'��#�k�\\0�#S��5$��숌���mu�2��;���KB��\\0�/S�Q.~�J�}����&Eн\Z�WN�G��\n#I�x��\\\\�9=�)V��\\\'\\\'����\Z�_��i�v��ˎ�K�*���V�e�Bu/͍2Ou��\r7t��T�{��N���%�o��B���Wu�z*WI�w��и�e��]U;��˗��n-�ϩr-��؊#Km�%_��W��̪)/���E�Ov,�|�2�%�ۡ�0��q&�+��b�\\\"�0ia\\\'��U��ˮ.D8�l�Z��\\\\������*o��*Mt#f�w|��J\\\'&�kiy�k�(�|Qd-�r���]	4��\\\"�*mtߩ�F\r���~���^��m�E4���[x4ˊJ_��K��ɘ��e�̽q뷸�^ϑQ�V-�j�����2��ɲ���R�����c��o{�2�M���1�m�Ɋ����~�ީ&����-��7��ܔif��� �Kۥ��˝�豢.N�{�/Ѻ��E0��2�n�^T��JV�o�+��ݱ>l�����҇5�#u-��K��[�������f�x�����/im\\\'m�pk�mk����M�n�������$[���7ewܩm�+��%Q�V�BI��%^�D_����-�J�����g�B�����[v٫��ef��J��)���\\\'&�m�X����o�ܑm���.�u��un�)-�^�I����U/o��\Z_+)r�F�ҙ6�6\\\\�6�{�{��ױ;���o�\r9ro��Z�\\\'Kj�Bܵx��/S�ˎ��#���a�e���)Nj;\\\\�w���Ju5ԝ���>w(��Կyrww\\\"W�ڔ�m�U�K�ɻ�1yt�b��R��y�s���.Ӿ�a*�9r�a-�nE�8�ej[l@^v��D����qM��)ri;��=V���,���o��\\\'��ԳRO�e�=F�\\\'yb��ME��E�}�NK���T/VC�Q���5�2��J�S6�e���v]p��J��vch҆������T��m�qi��m�v���(jkĻ�K�.�9?E��̦jS�.�+=�s��Z,-4�*�m�C����9td�i�a6�w��8�&1�^��\\\\Y�^=�(�t#D����Kw{r$[i����\\\'ȸ��\\\"�{?��2N�)�}9�J�\\\\�� ���:2�޻���sl\\\"������f�-���\\0i��Vճǧ�\\06d\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0b��\\0&��j~$\\0&�ĕ�)D�`l\\\\3�Q��n�d���{�x5Rϧ3�P��ͧKG&yY}�p�i�K��2o٩�G�[�?�ǽ����O;����|\r����a��7�j�=��hC��\\0��x��+�K�fWO��T��Q5�G�ea��\\0;�����x:�T���\ZV>���3�Qm/��5�x���8V�*�fmÕ��\\\\��o��� �t1J�\\\'S� Tg%���/�\\0*�}H��r,N�n����ݹ�Gbc~dQ�JO����Q�^�\\0ib��[�ʋ��\\\\�^*u�wwb�O##o�E�\\0\\\"�_�s���9B2������[�<\noz�i�Q�髾H�F�%��ۧ�5��x��\\0��D>�o�_��ǥ?R4�ն#��\\0��x�xg	J���Դ�Z-D0-���� ��2T;<���5���Wo��\\0���`R����\\0���@Pww�<c]\\\\%��z�����_���6=i�w�<c����J3S�*�yܷ��|i:��R|�\ZHش}����L䨸G\\\"�OMi�tv��S�V.�x��t������{�k�Ty��̦*6��T�DE!-�,:�+Q���b�y:6��,��Kg��\\\"�yܸ�k���VE[lT����P�N`Laq�p�KK��*���ee���-�� ���3>K��t��a�}Y{�v1�V��_���B�h�SG7�o���z�^d�\\0F�-�j���i8\\\"�T�x�$���Oe�$U<��H�֩��v��>ރʧO\r��	}W�E��_�U��kG�ܕ�ySO�CF4�.���[_a�B:W��\\\"��*}W�����?���\ZWI�[ÙuF�%��>��r|�{�Eq��̸��\\\"7�\\\\\\\"ﷆ�U�i��JJ�H�\n����m˩T��eZV��\\\\�+�@�-wi�\\\\!��v1+��p-Ѣ�Z	�׶ǩ�.����b���Kc�p_�)jcΖUE��e(��:�i�g�b�����ҍ�Gr��h����=K\\\'����y+�����uOB�<���O���gn��!�i���-|�iU<�	?�K��=�Ӹ�Tr�q^��g�����N�m3�5��)c�.���ǙY-;�#���ߩf�WNe��F���cԊ�Ӎ��{��F�����&d�=B�	r�NѦ?v�5�:b⮷2%.[��\n�|�Kq��}C(�ƽu	]+6�cB���C���W*�#29M&��2�e�����z�V�-յ��ڔ�?�<������8Yy��[O?�m+��C�)K��s���F���i�⡦���I�rʎ��X��;��e�	�U8��\r\\\"TZ�-4\r![��ĩ/+��ѕi@жv{rAG×R%�]\\0��y���W�c�(��ۗR�\\\'�[q���d�)H�(���Qn�$҆S%����u���W[�\Zf��\Zx��RrV�#юKF�r�[�U�Q��ۑ\\\\�dyK&�.r���(u�6z�v&0����ӧ��\Z�j��(�u/�{6A�d�I٧�G)�\r[��}牚PTq�)�j�6�e��{�cV�H�7�W�๦Rҽ��[r��Et�ԓ܇�\\\'��B��(Ҕ�߈q�^�	G��mm�lUdײU�o�R�݁	t�Y%�!̭��iۘ�o������-4��V)��N���\n*&���LF��\\\"�[\n��D擳.>��T�z�\\\\o���\\\\�(m�er�[Q��\Z��ڛy����Uj��eb4��ySQ�F�j�yQ�]��ѫ�S��-6=��[�ڵ�G�<c_|3A�j�,c�~�%J��یo��h�13�����,����KS��)p]K��rW�:g�v�(�[�_qW��Q8]�diiErAF��M�N� �-��F�_8���ܕM,�29\\\\c~v)�R@Q�B���qm��kء�q_iaE�)P��vI%С[R\nٶ�N\r�\\\\�\Z�$�>퍾\n���G�v���������\\0,@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0,�	d\\0�vA0�����Nw�mJ\rk����~&Ԓ89>μ=-8[� �n�˪.���(�֞���eo�\n;$������6v�\Z�Zv9vv�̫\\\'�o�uj�N/��9�٥o���=�����.p�M��6`6%�!��\\0��\\\\|\nvEq[��V&���iL��R�E�d���\\\">�����F^�q1���r���c�������\\\"�	N�\\\\z��\\0��8��N��nF���{BKncN��UQ���P�qA�D���%oN�iM��<^���.�iY�!������`����Cؗ���Ħ�}���=�Ʊ�KWO�e��2q��&����q��B^��N�(�B���	t#N�m])�����[�w[��V	����\r_�TV����t������\\\"��t^�4��N��[��*n���LҶ�*.�Cf�ҥ��o|O�}o�\Z]8n�\\\\���|�����<���~�ꅞȩGĻ��B	#�m�Tm̝6�^P�o�Owr6,h��*�\Z/i�8��mD���sM�S���l��?3?���o�Do�᪓�f�\Z-[о,(4�/Ӆ�\\\"��\\\\�1ou�j�1��v	\\\'�*/�\\\\W�ԭJc�d�\\\"�o�*��#i��ع]�V�$W�EVN��ֿ�R��D��\\\\��d�UOk�J�(��G����t�u�`I��E\\\\_;nR�~e�>%.�26-(�#N���F���\\\\#�RE��Z�	 ��T|�z�,ҷP���ֱ��1_�*x�mM���r�O�~[(�ek�����ɩ�RO�}��R�э8[�˩{X��o�Eb:[?0�8�m����w�6����2ܡ���ՊoE0V�z�ucU��ϧW�zyLK�,�L{�n4��ˊ{EJl�m��V[��{E����bΟ�#Bo~e�\r�A�\rOҪyH�o���#�]O�X�sf��Q�{���e�/�RtZ*��ێ���V�ܫK�ō(�/!k{�㷩-+ݢ\r-i�r�h����F	��QVآ�w/iM�7LlcN7�ܵ(%&d�=|z-�صgɒ�*q��[������8Y&�_�����n�^�\\0�{��2��bΛ;�)=��7�8�����h�U��7�4�|���j��s\n���(ߒ���o�ղ�N>�^U���l�2��ҟ4l�Í�M��.J�Pն�$Sk����v�	x�*�줺)��);Z�Nֽ�Tw��+^���I�B�l��/��MȘ�5����i�MZ��nj�b���J��\\\'_�h}Dd�;rX~����h˔n��-�x��ǑK�BD8&����A{��#F��ie���<�\r�߄����b�Y}v���\r9�D����̭{u�]���-K�׏�7ڛnP�J���%-4��J���orR�C������~��[�\n\\\\[���,��rA�˦�N:�nF�y�-��L���WK\Z]��\rl\\\\�n�QD�Y�\Zw�rK��������u4�)�>[-i#}P}Ѣ�zK0���N/�y=<0��\\0\\0\\0\\0\\0\\0\\0\\0Q�|��9G��\\0	�odU�V�\\0��\\0�	}���XE6���NZ��1��~�16��6��\Z�g���&��ͭCm�K�:�����m�\\\\��[}�ѿ;��e��go���D��m:XУ�i��/�ov��q�Lj�Zɳ��ҷ�g_�`�Y�6�J��������<��������X\\0����$VB��.� wEqK�ٗ\\\"�2�Lb�R�r�ž�T��Z�S$�]���b��m5󑓖���z�����g�x]tE��V�\\\\��c�+۫],�ie��t]{Cf�TI�]P~�݄�i�b>����J�{K*	n��v_����pvۘ�;�ܷZCۡ���Z�~��i�1��EE�L�*���2qtj|���ݤ�N-sM7�v���v��s\\\"��R��p�ŕBN�a��j��lB��|��E%�ȧf��!B~b�!8���Z����u�[�K�����*Pm��m,�z�]��ۑ�ܭ�\\\\��Ӡ�db��v��7��Ym_�~ԣA%�3u�8[-���z_�t$��N��K�*ȝ[$s6Z�}�N��wM�t\n/���	�}��F��\\0���QE����V)ҒO�4�I&��ou���չ3E�w��lQ�j	�[ƚ\\\\��k�}��)�Q^�R��4;rةA��[Jwi�*[r\\\'O��1|��4��ˑM[Q\n;��W+�W�N�E_k�#�\\\"Rv�XH�J�����鲱����M/���Km���ΐ���>ve2��ʄ_1�܋�;nR��O�\\\"TJ₩�ob�$�=z�io�Ym��c\\\\Π�_R�FΣ��C\\\\����.�>�*���ǩe�Hʩ���e��\r\r1��r�\rr]�]\n6�t6D��Qz�2�&!bQv!�>E�dSg�ܰF�zyOW_��g��GV`�祕�1�y�o��7W1Ymć\r���[��=	�4�)�Խ�r%��6i���W�-c32V�U弛1��왤QmlN�U���!d�#B��D��\\\"��ˑ:[��.WحS������x��Y\rع�=��)�N�f�mdS(�Ŀ�ܓ��m�}�4�௺)������T��濰��c8���ؿݵ���ȅ}�٧�°޷���y<\\\'Mڳ�W�{�v���N�-btm�y��q���Ώ�Tׁ}��ť�4}#P�/�5m�n�+�������ƚx҅��Qi�}<�߉�R��a��i�Փ(��z�%\r�ދz�?E6I��Ǔ\n��r4g%���Bh�۽��-$_�\Z�o��C��SJ!�H�Kk}�J��ϩqGVѾ�\\\"ۈ�̬�얛�s.xj����,T���V�гm��)��\\0��éni���I�X8#)�KԳ�A<��ݣ7E��0�֋r�Q�=��8���%�#O�\\\"���J;M1�.bf��\\0W�_��E�70�x*�Q��9]}�.e��߉��_��M��u��^�?g�\rة��se.�\\0��eQ�۩	]���ȡ��]~j2��K�˱0����G�i��\rm�Ҋ\\\"1\\\\�\\\'7W.a�X�Rn�TKk�ܶ�3{oȦ��fW�1���Bp�����X����L��rdii��ѵ.o����-�����1x�z�P���47�M�di��Q�Y���O/B��\\\\�k��_Џ(��n�-Sw9�\\0/�s�E����\\\\s:�wܧ�<��\\0�s�\\0\\0\\0\\0\\0��D�\r��04q:�V�go���5ɰQ�U�p���������?�zVo�������\\\'L�9&*5$�FZ��/cW�ߩd잜����UqTԬӒ[�/��{�GV�vݴs���e%�H�(_\ro��͕����]���\\\"���4�{#\\\\[�m��n���5n;�Yg�J�\\\'`-r���k��Q]9%ft�?\re��,5;���3�T��ذн%s��++��t���|\Z�S��2To��n��A5�somt�����Wغ����\\\\\Z~�Ɲ�/:m��k[rE�����:wq�U��	�s����[��*�p�s�6�G���\\\"�L�F�s�;Ȱyv\n5p��7+=߁�=�һOMeP���sW�#���/$�G�\\\\�I����$[�;��|`4����ATV�1���^ʱLW�\\\\W��SL�5�I�w���g��)�)6�k���j}�v�v���Q��������&8y�(Ɩ�$���r����t�6����_i�z�\\\"��x�_���`��k�*�\\0qu�t(�	M�p_�[Ů��ԝ?qyErd�o�	XPd躹{C�N�6TX�����=��ČuJ����2t��݇��2{��l;����O.y>Rr������Gi�6�%�N��Z�:�:S�M\ZkI)`S��\Z���$頨\\\'�E�(�R}qCk+��۟Knܽ��狂�\\\'$�gOk����X�[�X�zL���,��+�(=��N�\ZhxJ\\\\^a��I�	+�t:4�J_e]�#��[�\\\\��|Q˅����Q���̝7e�k���6�ȍ6^aI��6���s�r�iTb��;��A�O��\\0��F�N���7~��ڿ_�F|����(�F>+rQ���J	�%@���*E�6W%C�r�kKi�����6J� �1kA�r���� ���ЫS�)�3Ct��i�Km��F?���Mj_�U�~e�,=��Q�,��i��)�/҅\Z��!\\\'�;#f�d���q�&��g/k<U�؝7w�*��\\\\�t[b�a��T�nJ�R�a(q�}c\\\"�	������<�6��xv6�����d,5%%%Jx$\\\\ҹ�R�[��ԁaA7%��/��#C XӽƟ���!�ċj/�T\\\"�.(]\\\"ts��T�r����n�ŗ\r�5���&�\r�OC\\\\�clƥ�����ʛ�s���[�$Y���Y\Zz�N3��Z۷ne9�,�mF+x�32H~����\\0�-g����{Q+���in�2�A�̉���杗K\ZmyGĄ����}�\\\\eБM������o0�����(�lz�;�J��ȭb�\\\"c$���ꊴ�35��\n\\\\l��<�����/�O�N��\Z�g�ʫ��YD��#�ud��f-��i=!i��:52��%r,��!(��B���\Zo̮1�,��)r%&��ͼ[�)�w��]*I�`���[��-���\ZwZQ\\\\�K<~\\\"��)�ukc���O��6%���ǖ�$���L�#M��:0�\\\"��и��/�/�0���-�(���Ty9��/�Q�z��H�r�~����rFş��l�\\\\�<,�)f���\r��((�1Q���F��L��b��wv4��^Tƛ�,�&B����������q$\\\\s:��8��x�i�k[Ķ>�b����������kJ~�Oȷ�0�ߴ��S�E�Ds�%��o^0\\\\��-���=�#��z�}#̔���EY�~f�´�,���w��4�;4o�\\\'��ux��#?DaqM��r�I��r�5�[��B�{\\\\���5�����C�L�8V1�s�gF�z�)	O9�c--FVf�n��\r/�\\\\�{�ә�TW���tHԷ�Y(M}��g��u��ۗ��i�5������o�KM��#e]�����\\0�F{��cp��0���3�,s�kE���S���ݷ�4t��X�F��ߑ��q����cӶ�\\\\��������Δ>��:�x:�Q�=�A��礒��c�љ��ڼ�^�+�I�{μ}0�v���1z�V���U�W&6%]7ΩE��_��3��*0y6\\\"�/a�<^�m(bW���q%;�؟\r���������\r�������ܥ�Y蕺\Z�\\\"?����f�r�WO��5��*I�2x�J�QZkSv�)3�8��\\\\��U��i�m�c�T��FGNq��݋$�%ЧN�5�������p_�a��h�ۑ�x\Z\Z�h�ylW���=�WN�����q��ЧK���m��(~a�ێ�Ҫ�#��Z�̸�5�T�:8>�9=5���\\0\\0\\0\\0$0 ���*��@oݜ��������e{��\\\\��~n��h�����hg���׏��q��g��=��|�mue�G~>��{z9\\\\����;�G�M�ȸr7�i}dvl<�S�Tr|���9�i�f��4�F��|t�q�Љ�ntq}Xg��	h�G���՚Q�=h�jv�{���l;J���v�0�Ҿˡ��/n�?J�;x��FN���k�;��Īv�_������٥�6�C��div����E���ޡB�F��0��sƝ��diV؇\r�D�J:r�w�o�s��]���=/���#�������Ϛ�w|��l�\n��!bZK�{D��\\\"�W6.Ax��I�v�W��)j�2�ط^>�j������\\\"q��/�N+��r�7�P��������\ZWjP�a}e�\ZfIׇ�7~ՒXL-���E�[�Tn��p�+~�у�����\\0e~�r�F?������G5���*���нo�:7���V�5�$��kc��F���e@([��������6��*o���x���	\r���ww2;�\\0�OvF�3�{ls��#��\\0�t�����S�\\\\�yO�\\0i�\r���ӟAmn�ح�ȍ;H���Վ�\\\\�D���#-��]6��!.WFn]M,]7}�Kz^Nݎ�?�E%�\Z/i��7��r�����vW4^�i���\\\\�(���Ml�ۧ�z�]�\\0�d�Eŝ;WJ�m��ت0o��r�of�������)G��7��yeW���F�F���>�������^5/�#.J�z�7�J�}Cˑ:�VY�bt;rغ�ۗ2�s!e�Ӷ�v�p�{F��iA\n)l��2��\\\\(]b�?4������tJ��Ծ�9�/��Er���IU��jE����V�]Z-��$��ũ<E�C��h�v���Z�������WcĊ�>��G�)�]K���!R����z�/#d�{Z���i�$�[_�x�6W�Կ��P�4�r�˶�\Z~¢֋��ik�u���,8>iӑ{C��dL��\\\\�1���U�+��.ʴ;ظ�T��\\\"ˍ��>������6�\r�5��?��]x/cʒ�jp�ʔn��Z��ۑm�w$���V�-qVM��&fGՔ����,q\\\"K*���64څwKĿ8ݐ���-�mE��[����E��N���mA6�z|6�ZE�H�V�OO�����R��\r���/y}Gk\r73\\\\:���e�7��)*a�*w)q�L�\\\"�\\0(WO�\r.g����5��1$����Y����r��Q]Iإ$�����ܕ�̸��Sۖ�V��)�$b���/�Զ���J<���7,E��\\0�\\\"(���+E5�xM-ٱqBZ(�ŞJ�\r���%�%���V	І������]�Ѝ�+>�����O-If>�6n �YU[y\Z�6�(9}8�6�Gd��*�nE�SZlN��%�P�/���̅\r��N�$d*m���	X�v����7��r7�\r�h�\\\\�\\\\ַ�l}�.W�p�\\\\�{�e��\Z/��o\r��B�2rUθ�.9�!?��*H���7�b5s�y3�r/��j�V����Ցе����(��o��to���Df,�?��t�4YG��N��q�M���4=	��Ս7����p�W��%�L���4��E�?�nZe�ȽU��jK�K�S��4�؅e�F����s%������L=��Z������ԟ.AųU]����	��h��[����u��	��z]�9����T�\ZL�:vd%���h�C%һ�{���*����/c7Ak�TIs�K��	�D�\\\\���VN���\ZzqS��QWۡ׍鍝��\r���)Q�Ȝ�K��Ŷ����(�<U�H�Y�gԻ̟����e�lZ��vyd�������Ӑba���m����lK�h�qQ�W�So��+��Er�lk��Y��qM+�׆�.��۩���-d��UZ-I��FkrZV�,�����v(�=���-�и	j�U�NH���{?W�[�\\0����=����8�M]��)�-����J�T��8�K�e�Y�*A*L�z��V_�Ο��a�� z�\Z�]�	K��9VA�W^ڥ4�\\\\Y���t7�٠�ps����B؃)`k��L���`1	]ђO�̍żkA{H�,=Ho(��(��b�4�ѭ:?fP�J���Đk)�m���e�O4��͓��#�l�\\0�gw_�?\Z�H��,�����y������}����\Z_Y�\rJ�X�#�p��*P��_�P����c���>�<~���%��yB&����j�_�ߎ��2����\\\\W�a��Sm�[�>OQ+�2�?koq������~�ç�K�v�=;Ҋ�G\Z��ΰ�\Z����x%Mz#��{vq�V�2t$��dwj�r9�1�\\\\�����v`c�w�ّݾ�*{l6�:�3!���45�F�6�l627\\\"P�����A����kw�P�g_�n���R��y�9���࿋��-�k]�����{�]�b���M�JWe��|�Fӥ}K��\\\'�P᧚e�v�_��˱���QN�\\\\����eW�3�޼}y�*���:��R]�}N�G�u\rg7�OF�j�f���}��r��Tt.���˝I|�e)�T9|�i��V���pQ����_pv*�SOOm�+���#���1�䊻��.�$�EJ�VT\n��em�yCJ�+P�q���׉R����T�J�H��ݫJ�R�~D��h�L����*{y�1]4�k�Lt�˴�O�\\0i��N���}��F�]nZ\\\'����ӝA]��ԕ�V(�M���5T����:�c\\\"aN���UI<]?��4��6�tzYT�)��R)oK�;v��{�F��d?M���ܟ���*kO���I������r�\\01ˍ����eE�4�ѣ�멗\nQ8�4����j��aM�~~%����2Ot��㇓��X�S��0i������mWo���ԽMち���߷�#<�&G������<�f�ˤ��;��Կ�����4��4X���4���J�����5H~nIuL�*\rI��:�-	m�,��}�Z\nv.��L/��Ĉ��\\\\é*��Ծ$��4\\\'SZ�i�пЗ�[���WsY�8�����ʝ<�������J��I�3Kt[b�_�Kd\\\\�4�Mz�J)��bI�l�$������\Z�����l�%\r[�?��zz��T<y�,�h�di�`�ƅmÂ�/��;�K\n�䋺\n��@[T݊�m�r0W.(�������s�~����{����~R���\\\"�ɗ\\\"ۧ��(�Q8]X%��P�WK���k,�,䙯≛�C�e%��Ŕq�+^�<��Ə*Oks��fK\rR�BO�[�7����/�LYA�nU\Zk����R���$�z\\\\=��8SM�z�?N��7�R�4\\\"T-{��l4E���X�;�\\\"���\n	,8%ϑC�|є��P� 4���kxkf�_����^��ق�R�Y��r�����W-I+�2~is\\\'f�Tv�=ҡR��~WE)�6inQi�!+�E�Gb4����.F�O�T��a\Ztb�F���\Z6��~Z<~-��K՚��?��4���kr[?$@ݰ���.���q��������S����t$�k�^�����k~م��&��0_�+��S�aG���t�=ڱv0��VՑ:n_Q�4n�F��3!C���~���8�5�V�+���j�f�ƪ��m�>��<�K��O��cb�G=��������JoԜ�Ӛq\\\\t�8�o�<f����y���;}��\ZV���e�U�����x-�����&�;_����.\\\\?Kg���Ԍ�\\\"EoN�+k���9�M6t�1�:�$�J.m�<����[�꽾�#�l`Y;��E�!��ї��kQ��D���G����EJ�F_���p����MN��\\\'���*�����l��U�w��0���xN-lE���ӊE�4�F�GO�H7�a�I�w�����2�a��ג�=uMt9ﵘ����~C��E���d�\r�X�݋x�z��o�fgw�QR\rE� 8�mmH�jN�\\0i�(�z��(Vۜ���s[�xzgbӏ�D�k�bW��˫���\\\\I�/����s��e8����5.�al~%-�I|M�2�����\\0w/�˝�1�1P�wu��F�٤�N8�9�ٵݍc��%�f�ٕ\nUkb��KJ���5��\n뷽��\\\\���[[��U^+[��8�O�Ey��⹧�丈�n�#�9�Xqe6�.���J)�cfV(p��轞��E�g>�Ӳ:?f��G-�UZ_b+��8{{�[��~FT���8#���;�g�\n9�_���8~i��_���qZ�&�\\0�L9}5(���:?e�jsu�ݒ9�?��ӻ\\\'��/C��_ŗ��t]]�4��8�gOR+��>��U�k�o�p,�?�T�f_\Z�[�0W3��)�y�4��<��\r�VaN�(�����v�������#\\\"Yu��M������B��d�k��\\\\����._��S�}�/����8�**8�F<��w�+����\\0�g�+�俈����<��;-��r^66>*������g��LC����|t�x���?�O��&9~�4�Ye-�w���,ǚH�q����C^m����w*4퇎���<��{��-��w��B����|^�w�t�t�+�\\\'���hW�0�\\\\����e���#�<�M��t����O�e��ס��l�-X<;ۭ4�Q�f��\\\'=(�V^�l��S��8�k?����1��y/�:cvu\rY�x��;�\Z�K�O�X9g�{;{H�MtE9���:YP�ܕMs2{��D�jۘmv:���c#��!�lm+\Z6#��������^AgM[�ڷ��t��ȋ1��l�����˔?6�et�1�vC��Q�h^�f�3˭�Y.���=��w{1T�{r&eK:|�ĸha��M\ZQQ�f�^\n瞏c�W�ŋ�/��o�=Ln��k�)b\\\"��w.����M��\\\\\ZR�8��\\\'��9jk�}	�Q�E����9~EtpΜ������hT�ahќ�ӕ8�uc�RK{x�g��[&��\\07�9=;����\r�Y��ז�����f�����y����ʼt���)���Q|��U�o�d�o+ÿ\Zk�r�x�4>��l���#@ɣ|T}Q��h�Yv\r�\\0�%�#��+��h�B���`���Oꯂ/ƛ*w�RW���FDac���i�ȯ���u/�}YR�T鎩��h�d�{r&4�9K��]��_t���K\Z��J����2{�7v;�+�v\n��!S�,��,���S�|�˜\\\'�\\0��R��ۑ˻t�lN\\\\�П�㿔W9�@����n��?��4r�T��������8���W^�?�ӵX�z��\\0?Ŀ5�\\\\#�������`��0�zRv�R����rD�:��9�o���S��\\05l�	��[鯉;�S�v�N�˦Ƈ�\\\\\\\\s/�����3B�.?�����c,}��!E�����pErK��V��XZU2�ҩJ3�K\\\'(���<���qKjRk�^����7˫�����g���;�|�������}����[U��#P�$�j���1_�*[e޻}���%��\n+�yAu\\\'B�t�\Z.����cE�P24��wm�	Pl�ݲt;s�4��%ͤ���T����r�/�5���)���]«և�E�n��[����Q�{�\Z�\Z�,V����z���5~7��V�K�R/��e+��ǟ���얈s��\ZV\\\'��o�G�o��KR��Q�&����t��F\n���l<]\rX�:_��Д|�c4͓��|O�~��z��Sf�(�����}Ȕ�-r\Z��ynUU�\r�n4Y�dh��8��>��D���/(m�h�2E�k�>¥�[ԭAu+�?��G@,8�Y\Z�EG3��qP�\\\\���?����;�Y��䴢R�Ȳ[Cet���fc��Y?�4�_ř�6Ehŕ?#LϠ�*b\\\"��7���͚^}f��\\\\�@�t�b��×\\\"�\r�EQ��e��dz|9摷ё�ӵ�S���m\r2cP�\\\'K�24X���h]C����mȍ�����eg���ЦP��Б���2�o��+��{�N��3Q�bbV$��d�Rʰ�~�5;^F��VQ������+��\n�߷�\Z�F��Ѷ���\r^��i^�V�&ͭ��/F�B�\nʏ��-�~���E,���\\0?\\0��������5y���6�1��h�fk[{��7�������H��KꯁIy\\\\A��j8(��?��(�x���lK���0i<}�k_ �cej�[r�\\\\�eR���dh\Z4_����A\\\"ƍ�{���-�)���.;�5��]-��/������GO�v^7�\\0C�p����j:�w�O���0�X��u�M��dxill\\\\s�+�~�ׁ|U�2Z�c���j���\\\'6�ӻ;��j�ןĜ�!��O�������;��2Y�x�*9�)E/�˼\n��Z)u��<ce����r.��QEr�\\\'�f��WHP�v�9_GF}�K����r~0�Y�.��\\0�eq��t�Z�㻏R�\\\\�Q�4i�zu���������WE��~�;w���t̯�����*w2���\\\\h��BX�ݟ �#)�ېT�P1;�\\\'M4���t�B�N��.�љ�Q�6�۞s�~���t�ײ����f�}�Ӆ�Xq~�����M�Q(�\\\\��m����؅�I���>��{��_B��<�G�r�����4�׿���9���s-��$�vm=�E|��\\\"���[3��T���k�-�X���|Mo�O�o�zqY&%�Z68�!~q�v�+�|��Q�11�Ii]Jq{N^����E��N����tE4�\\\'}��٤ud�.��_���r�t���|���_���}�N���L�{x�N6[��g,léN�%�t4g5���*Rj�.��Z�j������c���M�����Rr��;$�SKy�{��j/�i4t���>mˈal���|���/�ϣ8��6&�~m�:�~P��̾*�ޞS��Xj����#���=���(�飫��,x���YN�H]]YN���e�O�$d:|�*�v~��A,���p,lo�I/�ϡ8�*9-��>}������Ϗ�$u���9e򗝍��� �?�g��2o,��Z�xl{�s�{��W�i\\\'����*~����H�����Ֆck���ON;�^�����ҷ�w�4ڠ���p�\\0_�p�+}k�w�p�ŏ?��N�9���k���J�����:�[�/��v­�U�F/f����u~&�\\0��r~n�\niPV]#��K��(���GxT�C�C�v���5Vs�o�NY�;-����N�F�Tם�!�:K?�׉�iRN\n�s���?��7ȫB��B�О��k�/w�ǠT�e*K���\Zb�a�H�� i�ݥ�������H�T���ߑ݌��t�����ɖ1T�w)y���ge�LF�4q���o��|Oǹ�Q��R��,�G����Ol��)�b߉�OS��\\\'�o���\\\'��\\\">���1�8F�\\0u���~M��w����U�lrJtܓ����l��\\0\\\"a�_޿��hSr�\Zp_�^I�4鴶��ғ鱑Kk)+��0�E8�m�l�Ҹ����5^6O��2jVʰ�ܩ��9~F��;��)�|��k���^l���9�mJ+-����|�rU�T=N��nK+�8��%�G2�!l\\\\�r�Dk�}\r��|/��2,04���V�����-�k�;�����V���OȭS�}S+T��1�?\\\"�O�2#M^�R��!����Mu2U+���%�����OvN�\n1];#����u���vT�M۴t�j�\\0\no�\\0R/�%rh�\r;c���H��>�T��􊷼��;����y��?v�B���c���fx���Ʃ�E�ƒ\\\\���7�)��yw�g�sU���t-���G�Q�v�S�o�\\0���6�%�\\0��*t����]�Ӿm��������j���*��y)RQJ���4Dn}�Sk.�~]��{Y�-�bN�y��6��x����O.���S�3��r�/f���n�,����\Zj�M۩�p4?TԿ>��k�����B{���\r�*,�t�\\\'IyAs�Q]\\0��r\\\\�Z\\\'C[�\Z���>d�2F4��4�S8�rW���ҁ�e��i��z�0q�\\\")��/�\\\\b�˟R���D=Wĵ�t�ϑ�q��aU��_qP��W�\\\"��\\\"B_Pk�r�6���d~\\\'CѳF����T�5���gw�F��	,V�o�M׉�q�7��ݿ�<U�/���p�/�����F��u�l��\n���+��r{�����wi�AU�\r:��%��p���Ğ�Z�����!kM���r�:����]P�bT[	Z�j|E�I/�������j|C֓ms�w�<i+\\\"�2�Okȥ�g~Ccc��~��o|Y������?�4ל�&vcJ�4����k����ݾ���1՛�-��F�������%]��Əe��C��.�fFa���x^��xxi���i�\Z72;��*���pfN�t\\\"Q@c8j|�e�#&PE=�l��q-��/�فk��z\\\\Gg��6y��+x�#t��/��k}i�OKf�ð�M����%��6�T�_�~�m����\Z��O�����6������I��;�E$����ܘMJI��W�/���\r\nͧ�߲�~��*?\\0���(~�B�I�����f�Ɖ�=��܍RQ����\r�\\0�)}E�FDaw�S���m��d(���LU�������C�����\\0�_�1i/���Xa�ϼ�����ƞܶ�V��!��Z��H���T�v^���(;�cHP�##@��TX��s�Դg�<\\\\b��*w�V�sn?���R�!�G\r��C�_�E��V�;[��[�Q�\\0x�?Ώ��*��x�2��`��8��S���N�gh0o�1^N�q�hw/�E�u5��{6���Q����������}��K��_��?�3U��}H��##�]�\\\"�g�v�b�6W�\n�W���/FU�1o��w��+���W��\\0��SO�+�(+r����g �+r��¡x���S��c?��c�?��m�q�2��K�������pk�0/���~�z�\rwB�1�};�Ş΅m�jcAܗ##�~@%���lh�2{�;���������v2{���>DQ¸��a�bc�Q�;N����1W�껞,��ta�\\\\���E��u�}��7(�7�WRʶ��U���~�_�ӱ4�a�G��;%_�;Ms�?��ؚ�N�����|���,]E�6��m]�+�إ��s:��mD�[~�f���;gx�����E�\\0��ݸ��y���l�8���o՝߉���������X�z�8�i�t���ؘ�m��R�י\n�7�=-r^����d-��V�W�G=�7[\\\'���\\\'�������/I��T���n�����(�/}�v�5)~i��v�ϠjQ�\\\'��==9�W���?ٗ,���%�Y����^�K��9�_�Gp�R	�&�X��_Vw[wR�I����|ٞ��B��g�<M��l�\ZQr��I%s��\\0��\\\'��5��o\\\'���.R^�����W���x2.Y�\r�i|O�����E*���ů���ߖp�S_��ˇL8��.�C���ɠ��(�t�ex\Zk��~��5��/���V���.�\\0@���\\0��Y��Ob����:�,�_X����H���R�T��#���%�x���H�d�x=�O����)���?��Ο7㿵My��[����\\\\ݺ��wi�����^�O\\0T<���ku�whg9g��x�=/{�\\0��;<�|�7��y.^��0ᅌ4GekX���Մ�\\\\��E<FRt��mf�	���7��L���iǈj�b�F6^��ex*�3�;�NJ:���i��Čq���S�ǪG���)4}�^���s,�[���J����F<L��x��S�}F��iҵ5���; �ԣ�{�J;[twjT�A[��ɦ�{XT���2�m�rU=�1Y����fWt���n�����!݄�7�Gws3�)t���t�{�3�)����̱��h;.����г������/��&����������Î2���|l�/��|O�:w�j�(�pϨ���g%��!Y_s���l�f�\\0����4a����}�p�C��ߺ��ϖ���Ţ��J�~��Y�¤��;f��%�����08V��hq�L�ه���O��P�8{��l$��-ӎ�N��moDa �Dv��h7��r<*]�ߩ�r�\\\'������2�/�s�ړ�Y��d��9o����ꎳ�M8��	�x��f|�I�4m��O��\\\\�\nX*-\\\'�\\\\zy#*4�p�������\Zw9�֣\r��r/F��\\\\i���i�*e��]\n�K��#L��V/�k��4�X�*���+�ȍ�n�wFJ����Dn�Ǚ�?�(cr�~��GhѾ��\\0hd�e�B_���\\0ԍ8���D�|΂�~\\\'�=գ�:p�Z��\\0�����u/Byof>��������	�\\0���8��\Z�9{Q�u�ܻp���e�_����j�3�X}K�X��/>��:�����i{yr9�iU{���%QI9&���:�J{�����{S��|\\\"}(?�3�f���.ӊIE�싰W��e����/���b�#��!���Fy���VOU�ߜ��gp�Q�k�s?�+��$ڹ��S�*5֫�#CN���X�=���G\\\'�U��ڌ\n�K�\n�\n�*�ۓ�kt/i�V�F:�*P/(�d�nTYT�؞������:i�#��o\\\\����\\0i��6�����;W���ZQb�-��fai�Z?YN���S�NF^\rS���.k�b���9z#S��%[�fsP�+n��O�~s��_�TF��_�R�ӏ��3�ο���8l]�G�t�G�{uj�?���f�r��\\\'Cb�x��¯���G����W�R�O��\n��G�F��zֳ���L�x>�ၭ�I^�U�́�}��E�\r*��tC���\ZU���~ASl���B6�gGB��]P|�����D�Vܻ�rt[�\\\\-��8�)f�S�ecr�j<Mo��=���h��,�K�-���5�EJ�GiJ�.h�5����k�\\\"�OM��/���k�R�s|���a��O4�Jqqz��\\\\���i�A������B�����w%/��*�n��eU�W��U�R�-/�jϪօ��xV���|ZxLD��\n����[=n�֧�BS�R1�+����,��̞��Bd�n�����駸p�\n�]4���VFWw��i��q,Z�1?\\\\�_�cl���yz	�1kM�nF��P�E�~���!���������~,��;�в��9�li�-����0�*對\Zn����+�fjK)���-o��m$���/��Y^6��Z��2�#[��Ft��&��cY(��7���4=\r\\\'��7��,�x�mM�]�n[��(�}Mˍ#l��\Z����Q�2�m�h_�w���P��9t/��������P���_$�ySg?�/���\\02/�:N}�\\\\e��,��W�t������R�n��w�*P�E�@�@!gCeJ\r��N�,h�\\\'C�A=��c�~���\r<AR�{0�IS9�i	H%nj���1���o���~\\\'_T����1q�]�~\\\'`�ծ��jW&�<I�ۛO�F�R����e~$��%�(�*C�w&0������ل/´��=��1�%m��W��[��o�O�\\\'/J���\r\n%����ǌmx�-p^!���	YBU-))F*��c;�(_���rS��;8������,���;������\\0��c�qT���UT\\\\uTm)^�;u��ܑ˸�\\\"̱\\\\C����V�Nu���M�4��7G����\\\'[��F\r��\\\\فZV�}�N����¸��3���O3�i���3����c��i�C#B���+1���O�\Z����B�v������\\\"���ޓ�����\rS6~�b���m��[�c\\\\j�E��#N��-�g,��2�G��j�R/L�%r�HҾ�{�\\\\Q	R���MZ���N�[1��������BW~����\\0f�^}^6��N0�[rWn�:�M�]���:����ZrX��V��F��􆭺�x�GM�ֳ����@���KƄ�_���������/��p�u+V��ۻ>��0ӯ�ףI\\\'9A��9n+���Uیh۪r)�Z�Y��\Zm��^�����3��d�������;�yn;�6�K閴�1�^��O�X�.�W�Q��t���yV)xU������k��D���S-�ۑD�s��R���s���J?�+��֭��t_vp.���T��ݖ~���x��w�è���O�I3�PiWL�݅׋N���ί����<u7F��upѳ�F|i�]\\\"����p��8\\\'o!z����5�)���.����v��	c����\Zgܳ��E�Gn?�����CE*����]��r�����.�}lq:?MC�:j<3�����������S>��\rp�.�\\0E4Nߕ_����������:Id1�����v�p�/��(_!��/���.6�l]�iG=���\\0��,�5���e��c#1_�N��2�[�>��/m��JQ�}�O�#�|=/�-6��?vCK>����.�?�/q�s�ݸ}#\Z��Wz�����2i��x4�B��O�fƝ�\\\"���v<h�YX�x\Z]�ҥ7�♛\Zh�4��4��<\Zp�I5�0I��Om��߂+T�1��{��*�=�C���z�*����D%���ݳ+��0�LN��:{}��4�t�S��3;��ST�%J�s5��Q*~<�4���}z��|��9J�m�/k9F�Q�B���^�mY�����\ZlP�CE�ޯ�/��n.K�PN�|�;��K%�%�����]5�F�\\\'v�����ʉn[��5\Z�k4u�8u�S�4<�z�MuGH�N)et.��Eʖ��K�����g�aܰ���㻂�/C]�/	B�]Ft�S�u,�\\\"�}�\r�&��?���5�ԣl���\\0�\nc����V�!9�)���=�v�3������\\\'�yV�\\0���~�/l�\\\\��&߷/�9�WF���u:�k�ue�U{~v_�G;�h/�GR�i/�;w\\\\;`��E�FLi�\Z_�P����FLac\Z�-B��v4�.FK��\\\\�Yj4�����䫵�L�D��T���kzF�Z�ƒ����mY�q�����\\\\���?�Q�Y��\\0���m���a���\\\'���k@��5�+s������x8p��c���?�YG��lO7��9n��q�\\\'�\\0�N�\\0��[�������\\0����m��ż�/�\\0�K�Ƨ«Nm�Կ��ę�Lw�Ӷ��s����8�_\\\'o�\\0Q�eko�杭��u��\\0�\\0s)������\\\"�5u�*�\\\"�i9+��tNΡ�����#��`�#co���\\0��g0_�j����G���G��\\0�e*+�F+��s:/g�O\\\"��|����׉��=���+~��+�����tlJ���UV���V����<	ӵ�t�n^ӵ�Q��>�A�E����o@mkB[x��M���O�I|N�o#�V��56��_bv��7���vW�?mt��K�5��c�.��M�£kN�ƥ�;�����ܴ��h�J�\n�\\0F�D6�01�.��_��>�9��]+}5�:���ߘ����ڶ\\\'	��|Q���X�̏����6��<4K�\\0���gu�G�A�DЮ�24�o\\\'�\\0]Y)�mcN��l��}���-8_���b����m����%�t�gN�Q�qD����n��sI6�#kzM;�U�y�X�\r�N��&��qk8���~1�Eu\\\"�]�	^|�isdU�l�������\\\'��`��M�#�qM����ٮE�>ۙd��8�?�*5��g�4�7f��+�$��~,�l�6U8��\Z��+_C�f~�bpʾE����=+�Wk:���\\\"K\\\'ká}ĥ��lw�L�pئP�mű_�1\rtk��%��g���K<�����8���o��8Z��/��Y�F<��8Q_ ��?�;@q��^Ѷ�h�UfQٯ#_�/�Qo��͛M�{� �EE���Zb\\\\·���V�Q����:FM�8K~�?\\0�������Pkvn�w\r���\r5���%Ҳ�_��T~�P-�p�]��T_܌�\r�n{O�&7���KO����W<��lo�%�9r�x�^?m֣Ҳ.h�\\\\c�Twڍ$�ع�����&�F��\r���s^���ͮ��t�9�i�}/��N7��Ê�A��\\0�C�v=M�����\\0/��\\0��ؚ��\\0^��r���������Q��]�ۻF�����#�F�(-�D[�Ɣw�ꝕ��ԍ�S�c(+4���b_�D�J�_U��i\ZU���#O�ۍv�qN2�f�ʊ{;V��\\0M�fWhP��/��\\0[����`�[����Y֣�z\r�{N�N�ЭR֫�d�_�}���|ν�\\\\5p��l�N+[�8����o���4�y<�G/�[�\\03=��ִ�4�t����;Xi�]h(\\\\���>#Iy��.;2)��&���c-o��k\Z~�n�\\\"�W��lմ��5��j�II��8j�����\\\\m��ڻ,�����/�C/H��t�\\\"T��\\\"��\\\"Q���;|�Ŵ��qJ<���=^�c��/:_�)��q)����z]���\\\\��\rg�:ڧ�)�=��OĦTњc�v���Z[o�F�\\0���ܮ���8(���������zFB�^��]���n.�eR7��9Ɣt�ƣ�.�2?s��n����\r�Q*f+�L�M���v�env>��5ݴ|��ж��=������\\\\k֍���݅e�%M�-h�:W�3�`Sx��Iv\r,�����:�U�c?��Li[��MjmE����SR��y�Ͽ���֝����{/����^��,m�%o؏���*���>��Gv?��O�����\\\"�u����$/B-x=�m+I�2��\n�����N��[~��j0��r>c�\\\\�yxk����rN��n�h%ð�G-�����x��Od1o�`�����ڴ-�x�wŘO��z|����S��YI�|MOR�4�+��1�8��:?ct�<�e�Gєaji����\\\"�{�~h�2�/�<�k�;����m�+�?��X�S2�V2��/($T��v�\ZeJ���\n����nE�F�F�tݓ�t\\\"t�\rYqH�*�/�D8�A��$8\\\\��ԍBv���P�d8�R�6�*e�td��bBXn����O�/�/�:+��F��7��������Q\\\\�*���w����;M�C¯��ò��P���熡|�u��I����e��_q���X��#��_%��Ӛ�z�QrDϩ��������F�\\0a����.����nGY>��G�k=�S������s�-Y6����о[��Z�k�$���jvʰ��5�,�;\\\\��[��l�ʍ/�����~���\\05����Չ�D��Y|-��ݯ�2J01�\n��\\0v�ȌJ{V�\n)Zۢ�$��*,�1eQEj!]��T�\\\\Q���%]�����qD�!Z�4t�\\0mbP�_���\\0�6�r��K��eq9o��i�m���r�{[�E���g8k�����>����|��ԟ�;���O�4ݷ�3[>����9�G��\\0�j�1A<�\r�����wm��w�V�\\0���w�ii���y��=/��۷[}�Z��uڥ7<��\\0w�\\0�Γk���Ny�z�q�^�̪1��%��&�J��О̹+�t\\\'k��� ��U����\\0j=N!�����g���_�f�����W>��<o���dUk������/��߇w���q�f��H��?��Ml���bk^�TbUb�Qb����%D�6�HӱsJ\n*呵����\\\\�q��kzw96\\\"/�5<;�/��NO���UoҤ��J�{m=�G���\\0��M�I��o����m�o�)��[Q4���i`}\\\'�\\0�ݔM3�����������հ0�2�׏���/+x3�eͼ]�G�u�F̈́�dһA���^p��x9~��)�8�M��X��t��/��2���ѿ>�?Uiw*Q��߉\Zl�]���\\0��iw,�ִ�b��\\\'kv!���F���Z��r.i�XQ`�+�RR�iR�:QZD�h�ޓM�������ݜMC��|�_R#/Kc��Z܅�wM���?R���_�c��z�WS�����ב��d�V���X8l˪!�fJ6���d�\\\'���^KI��|S�x�?���ܭ��M߆W�L\\\'�Jۘ\\\\9d�D�w���,���8�F���F�p��8���;�#I��E:w��$8��θ��������#�qw�=�/W�+���.l5Y��߸:7��7����q�ߩ��Z�ៜ��µ�h�4n^q\\\"�����x�?�Q���[�m6[\Z�h�_G�Tw$h�=��E����1���]�? �y&߹��&�^>���£�\ZL�]�7�?����\\03�4z������YLVa��������\\\'�!�2􊭬<�)�X���_�(�֧���g5���W�q/�9T���%���Beu�C�^�`��.$Y��zv%D�D�$#j4�l\\\\�N��Q��>8�6\Zs��ZqgLp�۴��\\0/����W㿓_���>�x|�v=)=���:���\r�\\0��|NѡYܓ���}���!��?��d��ѷ����\n�V�59��ߑ����u:�eq�\\0u����̒JN�P�)��\\0�O�%\\\\�6w4]Xq�nm�;F��b����Qk��ߌp~��\\0+2;FO�K�O�+ziE��R|e�]}��Z�ӭ���W��:C+Z�i0�I��c���t�l�}�E�\\0G��w��9\\\\��=��ӭpo�9u�v�,��zG��\\\'�_��,��%����\Zv.�\ZHFִ����h�#kzC��л��@\\\"��F��$�[�O��\\0�����nݩS�J��|\rBPD���c8]�v���+�:��\\0Q�l�fvN��6��Q}蚮]F��Q(l̅%\\\'c;�8hcK�q��{\\\'��=�$��nN�O�IZx�o�K�˝��N0v��k�\\0K4���Wk�dR�d(%����r�++���I|�%��W9���GN�6�����n�\Z`e�M����جT�9���9�k��;\n��2�����F�\\0(YnQ*{r39J��fT����������+J��#�ߦ��Kt��x>���5�0N؈�՟Ev�X|��EF�tƔu_c笲\Z�PR�ϧ��ҎMR������X��~����1�M\\\'�o�p_%���z�n.1\\\\�q��s�t�B����p�2|���>8�����t�^���<Nȩ���m������f���e�\n�c%w*t�x����q��z���N\ni�J���^x�\\0���n󆅨����2�(^�����I�^��G���>_��\\\\�/�Rv�).�8��[����\Z�t�5+���g���K�*\Zxf�ֻ�_kq�	�|u/���\\\'��t��b���b}��e�|��_�Tkĵ����ة���l����u~�(�Ϩ�^�є�h-��,�h�[���R^������R�m�Q]�]�Q(��P*Q.F$�F����\\\\P*���t\\\"ѰW�g@�2�.y1�<��м�ЍK.$i�_p#J�%�4��%ȇ�ʰ�R�_p)qy,4����p�/毁�\\\\|N�LW�r\r��Y/u�3��ݹ>X�^6g}ᨯ�8K��%�ʡc�nK�ߺ�l��i������]k~9�(�Z).L�=��S��9?���\\0Ek^HK���r(~��+o�DֻS���CΫ�fM�xk~�&�ڜ/��k�g������:*��s�d��J�MG�c\r2�-)�{,�\ni�V~�;6EF2�=:J�П���9zh��f�����£����ے{\\\\�2Ⱦ�7�c�����_*��p��Q�����08Dk/�TK�̓Nϗ��(��/��b�7�ҿ=��/�!���Qت1*Q+Ka�mSخ(�ĩE�+jJ�R�+�\nڧHQ�r��Wkv#N��Y�i�%���MK4�x�3�\\01����snײ�V3���J��)�Nn�Q-8����9O����1��o��,�.Ue	֔e}�JVO����xw&��3���J�=�y�v���vxRP���R�-���Nm97kU��p��n�p�����ɻ��<n�|·�#�6N��Х�a]:q����J�Q��f�f�\\0y�\r1׏N�׵��N{�to����\\0���-����Fr���T^�GN�m{��<=�����/ƌ��+o�B���Cf����r��p����i�ݖǧ�u%�\Z��r��%m-t���l�����S:��c#y:I/��3��qw�~_\r�:7g��\\0w����F����z�sJ�7��:9��q}�i4��D/���N���% �j&�j(��#jw*QةD�D\\\"�\ZPӹsH����b�.�����ι�s�b�|]^����4㽶��b�����j���o����fߧky���#L�>),\r�*�7�ǡ�v���֧�;�4�g�N�$׭κ�x�¢o���]��KKoۏ��J<ȋ�V���bp�Ӕ`�+J[]�?�Q�d~&�ǸJ��a;�S����7�^��Ռ�公��[}��AZc�tM>��wغ����z��a���W~E�;��֜~�,�]q\\\"ˡ��\\\"��t\ZBv�\\\"Rت�ةD#j&�j6\\\'O�F����F٫O�\\\"��I��F�|�J�)�hI����}/�&����⹙s��NN�U�n-4��[Эo�m\\\\$��/�H��Y��tT�%�Β�˕�m@�Gb����m�q�SK���M7J��f��1�J����M*��K�ɿ�����I����9@������)�;�7�҅�q.�\ZU�����\\\\K�W\\\"H6�q)p/�(�qV�%i\\\\�������?x�E��g✳���գ����Z�\\\\��b2�V\Z)סR�{�H;7��R<��\\0������g�cI�|�7�\rK�?C�O���g^��\ZYr�D[rt��8�k}���]�y�3��w�W�KƧ�\Za�����y+���4�+I�Q��B��M���\\\"����~ųk�i��[F5(J��Q�FM>��8�-��p5��*q�Qu��ok\Z��{4��\Z��K4�:�S��D>b�c+����zu,�\nP�^I���1���B�f%�/�9\\\\��H/?�k�E�w/��Z��t#K�]rV���eT��DW��V��J�Z�V���[ѱ1���t�mi��s^ө��E�Δ~\\\'N�i�c�<�0xyT���t�1�N,�&��7K5�Պ��x��wG^x�N�8�e*m�O�JK�hy\\\'	��3|-j�9F�:є���\\\'�t�	&��bܹM��ݠ��곲Q�t�}\rfN���;K�\ny��-:�?7nf��vV{m=E��o������CAՒ�R��{-�M���lZ�e�\\0x�8��u���q\\\'/��_�\\0��\\0�O��\\\"jߖ0��\\0��\\03e�.�%���q�]<��\n��^��Ҳ���,]�������ظ�3L�?�_�u)I�L�%{E\\\\��\\\\+��8���a�*T�]�\\\'�5��ܥ��#e�B^�Զ^�6�;E�����*G�9\\\\��8�_�O�����ZW�Ͽ��Χl�\\0�\\\"��}�e~�-�\\0��ډ�p�\n�!�a�+MZT�5�ݶz�WB̭�oHP�.(�t�B�[Q\Z7.(��4��h%D����x�k���E�!�n�/�dis�ks���\n�Y�m�`��t�\\\"�rK����<��h/Z���3�������`�}j��1�\rO�\\0�9칼4}&������C�Ȳ?���	TueS�wi&�܋)ɔ�{z��v2\ne�VNڕO�1�����}�����\\0��/�z�^�3<�;�����Ɯ��&������f9\\\'a�^/(Qm�{��^d�zt\\\\��t5%�b6/(��g�)�!���;p��\\\'\r>���k9S�oɳ������&�G��S�\nq����>;�<�\r��Y�5N.V�]�cd��r�8�o�ջZ�y��\\0�O�9�3���Nr���L����|�7���M2�ΏN��E:K�)��6F)�.�mN��]��ןV���}e^�ϒ;l���W�3^���%�鰿��_b4�y��׿�|���cao}Y�|?P�U�4�^�x���E.N�R��])2c:hwiJ>A3&3���ۗ��b�h�����BpoT�u˩��_g�;����W���^/�O��\n����3���Z���e��O�m�S�([���u�\\0S;��zxO�cvĿ�����s��[/o�q�\\0��xje��W�_�T�źWr^G�=8����v\rY�;��g�0����\\0g�_9��FϠ)��G���ve�1J�*H�CkrTlWL���Q.F%Z:��|����bT�ƑrZP%@����i_%�AB\\0�c8\r;Dh�Ƃ���\\\'Ɏ�F�#AK�O��{���%.!2�8�mt�>�������B�v�罵a�O!�R�!SL���L��ےdt��Ǯ�����I�];����\Z�Eǭ�����K��\\\\I���.�X�U[#���W���/޲��+�8j���\\05|���/�^��d��%a���\Z�j�KA�\\0���rU��\r���\r�����w���)�s쮊�U�͕��\n	t���c�؝�+��4>��\r-�鑤�0�%D��,mQ��;��U�+�\n%Ķ�F;��\nڧNے�WЫNī�	�%J$�#h��O�RD�+�	\r�ZB�ڍ$8�����Ml��)��\r��kR�0���\\0�x�3�l-�{�6��9�#�g��pK4�������nGU����{D��H�#��K���k=��Ԕ���?	\nǎ�Q�p�5\ZX�/�Ƨ���}��ñj��ʯ�x�Եy���\\0j�x?�������#l������{Ha��E����r�B�R�*/�T�ɶģjR*H�(� �P�6*Qؕ�mB�ƛ�6\ZX�6�c��clmo������G�\\\'���\\0͗����vj���C�7+lj�ŵ�^P�M�ۖg�%����L�����\r�#Q�\\\"���w�jlU>����eGo��xZv�S������[[�\\\\Z���[�FC�E�	E����{���y�r���Z�KH��r����E:K��L�V\ZK��i	�ޒ�īI)h��Z[�i]�Q%�7A�a�m���~I�-�7vﱾ��U��[�\ZF���rtpޛ7ż��\\01��W��d��G�G��Z0�����\r�����+k���%z�y�Ҭ��o<k����f��R�xo��xr���L�4#����������^9��iW\ZK�F���J,�A~Qء�i2�8�C�zQ(�4��z�n���ǑŊ��*�vn?7���������	d�e�;�ȫ�{s�/i�3{�~��\\0��f��[r����*�/�?�21m�zz�.�4�4��}2�ݍ{���$R�>�|\r���x���NMo��\\\"�������:n@�R��\\0��������>��pm��?\\\"��f����ة\\\"YmM�ӱRH�J�\\\"�6>7��˗��5�[�s�D����KUZK�|�8�Uר/b>����P��D^�lK���(�\\\\��ī�\ZIH���mE��]���D4\\\\�[6彨�/>�\\0�D�#��n�����/��j.�vX��s��V���\\0�9����O�)p�_���-��9���Q)�]�ᮥ��Y��5b��E��v�CEֈkb��(i+H�j4���D�!P�N��m�6���%ĉ�N����N�摤���\ZlJ�]�D�ڝ#I]�\Z6���ȱr�Hѵ�R�^��8�U2�8�J%��\\\\Bұ�L��ʱN\\\\��|NQ0s�\\\'���Ծ|oq�nt�N������������г�/������x�fi}\Zi>�󮑥��%�2�Gc56��C�g�=��qϪ��l��o���~��Uv����ۇ�����\\\\�!��|/�}g؝-<=t�\\0j�q�~@��i�����b��,�5�-�������r܃Fm�����������%�F�~��@��-������M���O���z��yM�O�{`V��G��\\0S弑_>���v�N��o���Of�\\\\8Ww}Q�������=�ϓ������\\\'��ۂ�%����}��O�q����:�E%y/]�/�*x�ܧ�\\\'���.S�w_�|�嚩>j\r���;\\\\����[hgx��O?.�t�u�1��j$�;�;��څ�QةD�D�+�1��R�*Jđ�ԤN��l�\nR%�I�E�ܬ�.���\\\\�#�;[�R�^�K�ѵ�R�^h��-���cG�z\Z�e[�����kg�i}������G�%��Ȳ|<^\\\";��x~���N\\\'˩��^}N����rj._�x��Xߓ��;K��#��.�[�f��aҭ�c�\Z/�$-���f��Ū�x}\\\'N���~J���\Z�ipה�Vo��l�J�]C�q�/�VWO������e���a�b���G-��J��:�[���߰���ܷ�آ�QEq[�ajw+����*J�+j����JDز���JED؍+�*7*�N����$M�D�����Xx�d$TA_ܡ�r�K	s~���2_�?��+���*����|Q�v�Y�~��\\0s<���#n��+����b�\Z�hI,��ݿ?���;ӿ���\\\"�M�s&�s����;��:��S��\nڤ����a�ʉ��/�Q_�����b?N�~տ�,m�5�+�#ݱ�p*�H���#�Ӿ��^��I�Uv���V��$�J6�īI6d�Y����iV	�ЅmR�&�I��mD���G��������g_��9&e�C�ş��zo������%yC�7-(�;8J؟�?����q�/�E�S�Hގ�K�����ӻC�\\\'[\rM-�r~��\\0�b8��g��K�u8+��ac|D>�:�>j+#_��)h�-�:s��R��vH�+܍,��-m�K�	�̓�q.4C�	�݆�V�&�;[�ĥb�$�Sbm�)nT��*�JDخ��\ZFؙ�o�b�/���O#z͗��G���%���3����l\\\\ �WO����i#���K~���X��sr_ʩH8�W���\ZSo������ir����K�W�\\0�~&��g;v��o|:���?��ж�/��_�#б��8��U\ZJ�,N����h�m�h���D���[���ˉ�q|5p�)xF/�=�D�x�?��+�!b���5��o���~����&�%�׉�p\\\"�\\0w����J�����Z�R�zȥ��}�h�5�;��Q��a$�������M��5�<��&Bk��^�+L/��%}�nGO���$���c�9��{��M���\\0\\\"`���~Z�Kr���ZD��J[%�ZD�J����-_��\\\"�Gu~Gb���j�Q�K���ӄ���[\Z�^��aw�8�]�(¯����b��\\\\�ؑ$���	`��L�$X�K沫���N�|�?���i�.�ϴ��6]?7Rз�a}�>�bT��t���n��\\0���,��ق���/�N���[E�h��i�Sm�qح �	�ݯ�8�V�`څ�ӱRD��%�V�Rؔ���i�[r��m&�[�*��o*��>�XX�M���,<$=ʚ؋�%C�+�\r�t��J&.gMK/��T��6H��c|��×��[�|�C��Kr��\\0#{�*6��%�E?�4� �Y�k�7�f��e����O��Iӷ���N%.(��b�D��ҳd���>��	c*�-�Gg���ײ|��.YW5�I�h�+��/oYD�||� ��*v��>��f����6q������hb*`g���̧��+����/�^���)���<Z�gD��%�qq��F�T\n\\\\S���!��R\ZES�����E�圩�9��w>��/,�f|3W��:�{鏅�\r�vg��wZ�W�Q�ϻl��2���qv^�3o�M�X��*�QQ����Glَ9�Zr��Ҧݻ��/{?o\\\\!���J�%	N.�q�v���3N���R�J���W2���<��O�qpo6�Z\\\'�%����_J���S��Ԙ��gB�sʱk~�������:\\\'�?S-mn�;��F;�����դ��Z�o-qk�:�⺷��E��#IR�)nJD������E�(EV&Ɠ)H�\ZL\r���ȪĖ�6��Ȩ�)h���b�E�EMѝ�*,CEdIlgq���{Q�|:�����[\\\\��E���dzi�����=�6⿛�`)^���x_�l��\n�|K�ےQ�tש�e�uxV��U�\\0E�\\0���jv��\\\'����]LZ�bgS+�%��枩Zܞ��C�\\\'c���\Zu���)54ڊ��3	��UX�B��\\0��\\0Њ�;ӡe3_��E��女��׫.��mw����l\\\\m����P����xޅJ�]5NN3N�W��-����4|mS~gQ˗�T��9���Ez=��t��~�K�+��}��E��b�����,�	YX[b���H�Ԫ�OBdB,\\\'�2|BĤ,JE�(,-�M�&���G���KE-���ţ;>�)_6���\\0�f��Ӕ�1�nN�.�����)O\rB�H*z[�[���x+���0򫅭��m�=��)�~I��)ftc\Z�����	�yl�����e0�.�R���Ҕv��m�\\\'�\Z�hK�,o�����9���jGVx\\\\L)R�F��/O$����y���r|���8v��R�Frs�ԊK���S������t�.���N�{�߁�l�?^_��[s���h��jr�-rzd�v=��-���n��J\\\"�]�\\\"R*KbR�%\\\"R*�(�*�(��!\\\"��%�}*�-�M�%�G�������S�3�f9V:y�\\\"K\r]�՛OCwW�S9t���W��U�x�J������k_�\n6��zҗ����λ�Q�+���-7k�F���t�5�.��(������q�{^�*���7e-��|�Nf�8�,�x�	[J�qJU-&ڊ�2��YI�P�ѵH���S�1f�K+��I����3y����c:i�,�Ү�I=��΍$4M�ň�!Į�[r���\ZJ��Z�\\\'jQ\n%�;�t	ڝ;\r;X[`���)�6�Um�K�OA�Z������\\0Q�n�Ix�:\Z�u��ۃI{�c�^1?�e��\n�9���xK�D�\\0x��ly�=����N5�NwKnVG�^c��]	�b���y�:�x�_*�\\0�/���Mۉ0�q8�\\\\椝��������Q�x����L{��!V��t��3��ce4�K.�Ӟҍ4���c)#y�NL�t�*�\r���)qJ�\\\"�nVC[��r[3��~�ť�D��`qx��F�u�p���E��(�o��o\\\\�C*�F��g6վ^?9t6�����*�*\Z*w�����\\\\q��˜�����4\\\\~[rXJ��/S�㘷����/�6+o���qf�3,�,==s֛�����s�uo�p��A��DM%��i������2Z�e�jUc�p��%�1\Z�Y��R[�lJ�\\\\���RH��K�ev������9.aSZ�\Z����:�U��z��?)2�F�\\0��x%�=+}�/��_���ԏ��H�zs_a6	cI��H�\r<DX4H\\\"���D>L�ϻG��8�\Zk��KI���$�fx��	�:�zw��k�\\0Ь���R�\\0������Ó	-kzU�:/f��	%��|�B�eΝ���\\0#n�̲�U����T���}����6x�z{iC�m�\\\"���X��E����\Z��ЄH�Kr�@$ش�@�+�)��	bE�&\\\",I6/�\\\"���X�m� ���\\\\ܪ����\rWb�e�)Rя���%U��2_\\\"�x�8��V��X�]X�Ӊ���VK���v��k�8?���c�r���Y�.\Z�{*w��x�!���#��!׊��R��I�����,u�̦Q/Z�H9�_��)?q|fcx�}�S�;>/l5O��M���x�^տ_�;���וu�,���u$E�/B厜p�8��M�kr�� \\\\6ܪ��w�dX��K���4��c;�v�HҮWab<M�І�UbR\Z6�E\\\"m�!-��P$M�)���6&��cI��)R5�TX���&�\\\"��B���l,M��ǈ�b�y�lE�[h�n\\\\�KFY`�-M�!��,VR�D��\\\\��4c�)�e������-���i/X����ZQ\\\'I^��jTlLcr�l%J�K�/��@�4��M�CBlJA����X�i1bP&Ɠ\\0XX��Ub����b��#�U�!��E.>\\\"ˢD�o2�)R����D_�a���&�%d�o�M�X>?��������������ۚO\\0��O�/��ܽů?�p�SD%�,K�$�RW	X��6�:JB�s-\\\"���҂[��\nl�R�!����IE��d�2�\nA ��#bA]%�$`���er�E�J���U� t$�%�a��H�@i[HF� $���&ċ1B,*-1abl,[B\Z\\\"�Dq�\n�C)qJ�ʚ �Ġ���-����E,�$Sb*�[�b�DY�[���*h$Jv����R*��JA\\\"RW,����ؔ$V���ȱ���]�z2G%�#�ɿ�\\\"3����ul��\r������o���#�2R:�ǧ6^�bW2lk1V�\\\\ʁ%�abl,[�E��U���E�gqLE��TC+���(��F���X�\\0��(hA6\\0����i���M�1�%c_!\\\"lM�yX	Ѐ�hSb\Z*)q4E��!�,�J��ee,���R�S�:ؕ��\nZ.2��M&T�/N�� �i�4��3��{o��9��_Yx��M�0����|�[����O�:>5�7�K�^�v\\\"��G���\\\\U\r�VC+�\\\"�CW�\r\n\\\\E ���V%&���&��B ��,M�@��PX�!bR6�K�%\Zɠ\\0\\0\\0\\0\\0\\0\\0�h��W)�C!���c�)�0ɱ\r�E���VR�lLP��E�*j�4B�l-�6$\nZ	1�iEI��� hR!�q���D���b�&Ą�f!abAy���Ph\\\\E\rb��2�H%�̬J�؛RĨ�����EO���M�\\\\���v�������&yE����v}�\\0�o\rnhݞ�]�\\0t�(ޚ3k��@�X1,,7$D�d$�\\\\��d\\\"Q2*\\\"P\\\'���OB65�H�@�6B��\Z�qbz��J,A!��A��ІA6�J� 2H+R�жé(�$�H�bGPLBID\\\"MdQ�� `0��$���P�bl,_�R��$T�)q�X�\ne��T�Y�Q(hЃ;,����gR��b��!�VSm�D�تá6� H�\\\"&$�I\\\"��\\\'�Y��4�Z�|���:��4K�>�_{#�:~7��yg�\n?R?%�F�n�\\0�����\\\'Q˗�\\\"m`�&�!��$�ZD\\\"�Ă�!�\nZ\\\"�Mb�K[��!��R�bE��x� �b�%�VČ!blF��$t4��R*�H�#LqU*H\\\"Mf!`p\\0\\0\\0\\0\\0\\0\\0\r�Wԥ��n\nY\r�0��4A[)g>X�M�D��ؕY����i�6�8×y����W�/CK�(O�M)��F�+�F�\\0�v��T��ؔz��IK* X)hX�nCFv�+�\rJ�)�����\r�`����Q�~��^�%�Q�0�=������,-\ZRK�N�=>��V�+����(ɿ���m��{1��ev\Z��S�%tѕ�i���,��*D$T��1)Q�@\\0,\\0\\0\\0\\0\\0\\0\\0\\0��AI>��#`C* �\r�V�YϞ)�YIT�\\\\��͔]\rt�ѝ�,6�)�.D%Z�t<�~>�LC��֕o۟��^/̔ɷ��\\\\�	e��|6mU�¼��:����?�h�ur���o:]��&h�n��9����ƹV�I���y��F��4��ji�XIZƓIχ,{{)B*F��4EV!���\\\"P%\Z@\\0\\0�h��l4,K!�X!�(��쭞W�#�V�}t�NQ����Qy7t���\\0���O�M)�j��{?����8��x�eZ�֞�M��\\\"�G*Ӝ��n��ķr�k�9�n�1��=���Q�jV�\ZO⎋k�q���5i�Ck\\\\����vXY%nIY�yګbnE�bn:��	D��z:_U\\\"Q\Z�(����B�R�r�>DX-��l.\\0��V�n�Xt\\0��\n��P+`�\n�(���`[BPaH��Ix��@F�TJ)EH�*\\0i!L����a*�.�Pm2�MM��Ue~{�qoqk�C0i\\\'��?q�p\\\'g��{���	Μ��)ErI�#���t��e���[�I���%m�/�\\\\U�`��C�b)R�U���H��Ҝxy]Ghm2:�(����:�b�d�����p�T��-R���Y����p\\\\!��(�E���Dy��?,T\\0�`���\\\"B[�ZD�SxǛKՈJ2~̓^��>G&���uW���γ/�rl�lue�#����ӣ�{����\\0��ʏ���ȿ�_�C�g#��~1˗�Ġ\r��\\0�\\0\\0\\0\\0\\0)h���,ئ�X��-��_\\\"IxT�,�x�yZ\reJn�[�ue�g��_|���/1�9�d�0��5q��T�:����^�VN�����V���r�v���U`E�U$؅̩#Lb�@$k�`\\0\\0\\00S)Es���\n�J�|�~�W��I$�rܐ�V�g8�x�Zsv��/��+�t��YQ�S(�/�O\\\"+U�(j������%��T��l���OP�tjӭ:5���e����+�͒�<������=�m-��tG����3���\\\'�ߟ_ɂ�[�ɰr\\\"��i�>������?Fueu��)7Zfo��xgN�N���8w8�mC�P��>~�ڭq���l���7,�7���˝�J�9�8���Ǩ��\\\'�������2�[�ɘ�u\Z�q�<��Ί���������5�>�C}T��\r��R�d��fwe�����sμ�oOC�0�=��(���b(Ԗ��`��������-�<������[�n��j�W)I����9�\\\\>:������mx7[�I�+�E�m�Ӕ�\\\'����b���e)Jm�FH��G��Vi5�ӡ�`�~?�|�uɵI(�NP\\0X\\0\\0\\0\\0\\0\\0\\0\\0�\\\"Jd�����b2����w��x���1��j�j�9/�~\\\'��\r\\\'V����wx�I�$y\\\\�w��?�vJ_6?�YE��=,~���jYK*e,�C�㚒��X�����6i���`sl\\\\��z���gZ��~��O�[/_�r�89=���v���e�7v�ݞ�<�\\0���g�\\\'�\\\'\\\'���QW|��8Ӧ�9(��m�4��7��f˲�(В��x����0����s�1�W\r�ӧ��ٖ\\\"r��T��}��T�`�J	oz��}[zw8�����T)a�.�J���Vd�y�[b0/֜��L�iz�j����<59V�J�+)Ш�nܟ#Yɳ�n7J�#[C�K�f��Ը�YTӆ�Ӓ��������K1��PqNI��߁:xf�m�p_�aeZ�|E:�95$�\\\\��OS��F�M�n�XՅ��v�Q���##P{_o��6�\r�s��v%/���OC�\\\\�H��-ʹ�ni�a2�F8����ż`1U#\nUo);-�K�3��8����]��C���vg�`�ꑆ*����ۡk��m�n�zK�\\\'��ϰʱ�B����ٞ���F9㗪Y�>Ճ��s�Y�Tqq�����e�A��V�*��&��Lw���-m�ئC������2�����u5(�hF�ɔ�h��Q�y�q��W\rR�X�Bqq�_T��0�f�y%���P��wn�}\r�{C��\\\\4���hR;�V���6Y�����2�>[�b(����(�]8��|�ǉwd�+���&�~��MS�����gu��8S4����ênQM%5t�\\\\��{�s~eB�eCL�E?f�7�s<6\\\"��w��pT���<�G�*2��۴][o�ո��Y%\\\\40������\\\\oɯ�6����{������>1(���k�y�j���O��4���:-6�����~\\\'ɥ|]5������E��>3i\\\\yGBz`��|b 5�)%�2Ax5^6��m\\\\:��Ц�����p�[�άT�	�����C��\\0�0_R_��Ք�n�M>�2�۳�	��c�f8<x�E:+����8�\\\\��#.���9��M���p�u��mQ�R�\\0�Un��̮$�%��Eb�N�\\\"�V�H6��/gr��N,%�ȇfҚQ��}E���ù�<�-�UU�J�R��WO��4�j2�񵎃��YM\\\\�V�x,u(��k�4��<r��<�rΣi�\\\\]\\\\I��PzjB7N��|c���\\0�_���s��<nE��ԫ�Q�pnP��8���$�FOf���8��?(��y��\\0��\\0��yOf��ʅ:���U\\\"�ҕ��\rC]��=�y�������2�zvHt~⮥1ݦVͿO<dB(��	\\0X��đz��, _@�D�H�JF�⊄��6�$k1����	��1�/���/���|��\ro���F^�g��ي�\\\"X�x_\r�9�b�S�V|��sg����7����=V�l�|D>\\\'��z7��n/O�W�>}�\\\'R��}��[s�G�_�x=����}���\Z���s�u��t�qj�_s���h�\\\\�N-����9S�)[���x�8,��|D�a\n1m�Dg/i��4͔�)4��{�_�������\\\'\\\'Sz4���t��i����<�/�GO�bg�{c���X�8Z�^�iӏΔ��1ig9e{wX�,��MUvka�u�YcYf3R�d�3W�/�\\01�`�\\\'�0���#-�u\n���\\\'m&F��9On�NP��$��SL�Ǔ��$�Zs�)T~�㥭��X��Y��\\\"y�4�4bc�KB5�Ѽo����mm�]�;8����x�]IYS�Q������=�L\r��i��W�b���8�����&�6�aax\\\'�����b��k��&K��r,0x;G�����_�7���W�r�3p���v���d��;ԏ[!�c0�e*Y�!b1��Q+]��7�U�؏���΋�gx\\\\�e����g�[s�g��}{��e��mY4����;!�\\0��?��������	��|l�0�4��J~ҿ����1�u�e�j=~��[��Y��S�O��RJ*��آ��|3�/J�l���\\0�:G@\\0������gZ���]ۙ�T㼶7Zq�Ҋ3˓}��e�\\\\#)�S�p4�TST�]��ٵ������l�\\0$,CD�dX)�D��.X�\\\\���1���i��sg:��/]�x�\ZS�f��Fr��=�{Ila�[$b,M�dP�6%i $H�\\0\\0\\0\\00D�EF�&엉��u�����W�B����N��m���5�����#̾Y��Zm�No����1u�|<q��wh�I�c!V�cY�2R�F�\\\'r�{��|O�Ygw8|d�����G�n��XֻƢ�}H��ja��Jr��+�E٧�[���RٗZ~�Eߦ�\\\"��r�4��x�|M�:���&�{��﩮L�k�\\0U?C[w�af����*�<޼a^vs��Sb�;V�q��Z�k�����I\Z����y|Y�v\rN2�qS9a�_���q_��s}�b�bT�cfz7u�~�������������%�O���u��jp�T�%����^<�_�z?�ݧ�麜#\\\'w���7\Zoc���G���\r�\ZIӏ��^\rמ#)�:��+n�L��������0���T��Zemׁ���~V�$����wǶ���Oy���}R�-b�\\0�T�����\\\\��|���\\0���\\0�{.�\\\'^������\\0�v������/�W�Em�����s��3�y*Yn�&\\\\e��g?*�ǻRZ�����gva�a�av��n��=̕�t�lyw�ӟ��7����\\0�C�1��U�ɳ�D��%�\\0hL�\\0-���I�u����S�q��W͔p2�:7�\\\\˰]�kN6{5{+��)##�����D�j|���[c1�}9ضV��$k;-j�.�葵��λ%���ӥ�Ч]+89�R�GC���������|���\\\"HM\\\\���\\0\\0\\0\\0\\0\\0H`@\\0�%�I�n�罧�ץ��������o�����K��U?��#�ձ���#�ϼ�����ըW�n��Zg���c̾�r)d�L��Ǐ���}O�W�ĭ�����3�~(�I%�89=��?��8~����cZz�VJ0����x\\\\V���RQ�u96_�)浕|L\\\\0�w�A���K�DKӟ9����֖>��������έ.���,СSS�G����ʍ>�^v�W�ciխ<T��W��{W��OxUj��r�+����,4�]=u��Jq�d�i�t��Rm菕�9>Y�Sk��h��^�sE�s���Ns����w�2�^*��ź���/�/����w郞q63.�U�W&�EE4��E?s���{J�9(֡F��O���˴\\\\�����U�����8�_aNO�d�wV�US\r�Jq�7��c$��n9i,e*\n�qԭ+�}����e9e<�i�9�Y$��d�I#��_ۏ?�)�T�AQD��i$?�Xs��$�/o��\\\'����O��?�G����\\\'��_y���R{m$y���������������b\\\"��T�&�\Z*�y��ǯ�����֘v���Ο��q�o��WK1��7���j�)ъSr��ًg,�)[6��s��zj�2���M>_��}���S;�u;ڒR��wdpkf�uߟ?qOj��O<���n�n�7e��ԧ�P�����-��1��t�8�]<:�����Z-��}�f���EZt��NZ����#���sG#�Ev�Z�\\\\)�M��\\\\Ϟ���V��)j���ݳ^L����R�Uq��iԻܵ*�r�z��������6���.S��7c3|���Btm[�]�����q-��C�j��L�x���`��V���?��~�s��6��zU���[Y[���ӗ����1�.YN�N5R������9;rqOɮ�_*��;�?�p*4j�M7�v:��5�aaZT����⤪b+jm;5�-c^|m�j\\\\��k�\\\\�R��Ч��}���T�a{����]�\\\\�\Z�F�]O�I��~�l���q�m�$abs�\r�o	T������s����3��I���O�Uc3���-�&���\\\\�\\\":�=�,~\n�O:T�SN���旗�����l-E|�t��	�t#�﹕ű��K�GTl�����}���B9^R^ʦ�נ^�1�]˰��PT����6ٖE�E�+wRA$>���+E�Cj�5��\rK.Jx�)���3m�M�{����Z�\\0K��2�y=/�vZIwq�7��=�K���5��Vnt�\\0�^�����CB^������������{~�Ek�7��G*��a��0�V�uI�O���oW;+���\\\\\r_��-[?��ZU�+�\\0ϭ;9w����p�O���]l>]F�HA8�7��y����9���F��a�!�o��+ON�{�5=���1�u=Iuo��\\\\��H�ߏu�N����W���\\\'�a�G�	�k���_��)�8OZSK�N�O梢�kdVm�y߱�K �\\0� �D�J �[؉�8w�.qG��*��\\\"��Z�T�6�*i��]9�_4�;E�\ZGJX�%�c�G�e��͸�������p�y�d��:���S��eB��w{�I+Y����g3�8Ֆ\Z�K�u�W�u��8|��*���N\n3�+6��e9:�z|\\\\,�m�\\\'��C�p��Fz�N�w+\\\\�#�ic���N�G�*ЛnQ�t��{1�])BR�H�\\0,\\0\\0��?�����d2�?�o��s���o�s\\\'lLׅ���a��\\0Kp]��_�ig��l����K�Q�_�\\0&���ߣ�����|��W��y���}�{��;N�\\0�9��\\0��c~_Q����$���N��o�;|�Գ,�qo.ô����ʪ�v���N��ш��M;��!J�i��f��\nT���ys^ʼ߯C\rn���m�B�8������ܩI�K�r&O�#{�)��S�gf��+��[YBU/�*.M�$�	q�E��z���r��$��ޜۋx��p��uZ�L%D�\\\\(J�Km�=>�,�1�8��&�XF7k���3�<��U��(�*�/�S���X�(v��N�\\\\�ySm��c�a�6��=:dw[��R<N\Z�lR��s����\\\'���na��2�|���&U��z�8�xK�r�Vx�T_�e���V�&i>�V[D�q�c��\n�ʖ}�Uk�\\\\����9���\r��gG0�,Di˻��r��ާ��VefU����S�2�&s�rJMmb}����m�B0��RK~G\Z�d�2������M�<�C��|���\\0�Y^Y������q5�,u\ZTU���J�籯g���\n�����m��6~�-�f?^���٦#�����~�������\Z��G��\Zo�1������L�VU�ѩO����{���\\0��?ȇ�\Zj���?������_��xq������\\\"q>����|Q��O��V�>�\Z�t\\\"RK����J����P�ЕZ�P�ݻ�2��0Sy�KW_�Ko�KɌ��co����dx�~���?��S��G��-�B�*5\\\'8m�t��1�e*�I���8>NS+4����۱��\n`_�{��;<w���g���?�qg��Bx����%R��E]�N�#M�;Kʰ\r�\r�b�⽕���1�َez��;%���}���%�;���;Mͱ�\Z�xʕ>�.7�4��s+�1�5�7oM7̝��v��d�!���ME�������p���p��a��-_�#�\\0\\\"R�eOo˘��\\0��L��/i�e�u+c�ӧFt��^N-x�y�2L��Q�r�D+EsI�U�q�/J�Q�@F��Q(�Qx\\0�\ne��x��\\0�X~�4�V���u���.F��/��\Z�1U�\\\'���a�s��׆c���j����s\\\\>�_Nugݷ)Y��N��UV���\\\\�iSq��97v9�P�hb3,]\Zti�I��O]Ӿ�e``���e��k���_�ܳ����oZ�GJ�pգ�O\\\\�k�3�F�ʥM��>��\\0h��2�����Z�\\\\, ֆ�g����.r��ѩ��+�w����/����ޫ�v�[Rwۡ�����Q[t^4��{\\\\��O��\\0�/8�NO���Q�Te�5�4w\Z�����{����q�L:_��a�u����\Z�տA�֣��?v�g�����`���-�w�dk��K��T�����\\0`n��-��������w����I�^[^��߇+ۤp,jk=�O�8����_���g��?���o�v>���Q:_n���ڷ\n���F���ӏ��|�x����g���n5�6E�8���k\Zr�\\0f	��d�X����.��٪z}k)�>i����8�?�흘+d���<qI�7o���ٴ\\\\r��3��c���[Z��*)\\\\��G��T2�NL�\\\"�E�9yeLq�ӷͥ���W�d�W2��	l���fv�UQ�jJ\\\\�m�<q�}[��!6����.>+�z9e�#���oT�BtrkA>R_:�}��Gĸ��<F.��ۺM�-Z��nR{��������&\\\\�jM.��n�{K6�\ZQ���z�c�d��OT�+fG�ج��Q�Σ���b�҂�\\\"m.p�ԙ��������Ғ�em̲��m�7���<�X���:���d,���;%�\Z��҄�՚��}]�؏��*�w(&ߙ^.L��j9���e��D�I��\\0\\0\\0\\0\\0!�\\\\2�A\rl�!�+}%ϻK����q<��C��j�.���p���_Y|O7?����:�����Z��(����H�o�����6�|o��Q�i�B���l�\\\\y�\\0e�S�G�=���L�k���]#�s	O/�𱕩ת���i#q��j,�jT^ܺR�՜�-���J�89�NSpR��fۖg+9�Xў�R��Z�|�či9ỵx�8�F*���F�֞�%��͋%�c\\\'K^��\nj�|?Jk��\\0�W�e��\\0w��K��I~�A��]$��3,�������\rB�؇5���\\\"FW+z�u$���QZ�\Z��jS�������2�q����/�em�U&���\\0�����\r%K��r�J�8��/%VqU�߆8Qf5T�:�z���q��_����S.�`�R�0�zQnׇ_[��,T�Jum��[�k��C�ھ6�0�N��R��)���\\\"l�\\0]���t���[�$\\\\\\\\��#ϩ$ i�!��;[v�`��m}�g�<�����ԗ�g��aJ�\\\',�ޗ�:�y��Ɩe��~,�럼潯�\\0���\\0u��\\0:9��O���~�)�y�.��xEm��?�y�0�Ri�S��K�k�/&P���$��|l�1����;���y�ϩ����e���,PM�{x���2�gy�+�!R4�MF������w\rq��0���Ju#M��.�[4����q�2�\\0�{]�q����R��0m�oڛ���c�U��w3̥��U�T���r����W�cѭ\nr�Q_nF�=�x�I�[��)آu=��D�ѵ��s�йJVw{��ս�2�9��64m��Q��.������b#V���/TyzԵ&dӧ.��J)++7��;O�V���Z��X\Z5*$�.�[s�i|A�S�sJ��aV��r������xQ��et�>�a_㟤x�q�ҭ�V���d�S����:���������!+u��{aSu�\\0k�������]_n��Rť�����v����,2���Q���*�7	]z���<?�F]�c�<.�+�i��o�|5����ř47�\\\"�����t\\\\�^3-��\Z\r֊���Z_?���x[N_F�o��()]Z�s��e��ƥ�w���p#��G=3��\r��%�3�=�OCX��ڝ����~���Ѷ���S�c5�SP�?�CԦ�w�[���',108247),(6,5,'fon_.jpg','����\\0JFIF\\0\\0\\0\\0\\0\\0���Exif\\0\\0II*\\0\\0\\0\\0\n\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\Z\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0(\\0\\0\\0\\0\\0\\0\\01\\0\\0\\0\\0�\\0\\0\\02\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0i�\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0Canon\\0Canon EOS 20D\\0��\n\\0\\\'\\0\\0��\n\\0\\\'\\0\\0ACD Systems Digital Imaging\\02012:06:08 01:26:28\\0\\0��\\0\\0\\0\\0$\\0\\0��\\0\\0\\0\\0,\\0\\0\\\"�\\0\\0\\0\\0\\0\\0\\0\\\'�\\0\\0\\0\\0�\\0\\0\\0�\\0\\0\\0\\00210�\\0\\0\\0\\04\\0\\0�\\0\\0\\0\\0H\\0\\0�\\0\\0\\0\\0\\0�\n\\0\\0\\0\\0\\\\\\0\\0�\\0\\0\\0\\0d\\0\\0�\n\\0\\0\\0\\0l\\0\\0�\\0\\0\\0\\0\\0\\0\\0	�\\0\\0\\0\\0\\0\\0\\0\n�\\0\\0\\0\\0t\\0\\0��\\0\\0\\0\\0625\\0\\0�\\0\\0\\0\\00100�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\08\\0\\0�\\0\\0\\0\\0|\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\0�\\0\\0�\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\n\\0\\0\\02005:11:12 13:15:49\\02005:11:12 13:15:49\\0>�	\\0\\0\\0\\0-�\\0\\0\\0\\0����\\0\\0\\02\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0R98\\0\\0\\0\\0\\0\\00100\\0\\0\\0\\0�w5\\0u\\0\\0\\0�#\\0N\\0\\0WX��\\08�\\\"\\0��\\0�\\0\n\n		\n\Z\Z(\\\"&#/#&)*---!141+4(,-+\r@+$+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\\0\n\\0\\0!1AQa�\\\"q�2R���#%BSbrs��$&3Cc456���dt��DT���7E��ң\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1\\\"2AQ3aq�#BC������\\0\\0\\0?\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\\'`\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���O�P\\0\\0\\\'y��@\r\\0\\0\\0\\0J����Ӡ\\0N�d\\0\\0�\\0��e�@\\04\\0���\\0�mw eo�\\0M��H�ݴ�`\\0�\\0��^�h@�^$Yx�\\0i!�\\0M���� \\0v�\\0t�	.���Vݕz�\\0�xӫ \\0��@� \\0��В(�Λ�\n���ȭ6�ԙ8�S��O��w	ؒ.Q�+7�1;^唒Mv�M(JKĀTZ��d4�� 4K�+u�\\\"�ZѾ�����˗����A 4�X�Ao\\0\\0��\\0���ߑ\\0\\0�\\0/=�ȣwe��`��%,��\\02Ҥ��B9}q�1�{��z\\\\���I;��\n;��Բ}�M��jVv�[߹MnSI�J���FF���\rF��&N��ʢJ��\\\'�&�L�VV*+��L䒴U�j�wZ0-[o��c�CmI���IV�ړ$�*���jȪWe���U+���o�A/��HIB\r�����\\0\\0\\0����rB�w�&ܷY�����+�1����$��ս�?-�,�܇\\\'m	��z�^�&���U���M�\r���\\0\\0\\0\\0\\0\\0\\0\\0\\0JNN�mͮ�ۂ���I.Wd@n�����nW�\\0e���7���s7{�Jʑ�	b����\\0B��\rYFS�#ʼ\n&���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�@� \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0A��ʵg`\\0\\0,�m��q�@* @b�\\0\\0\\0%��\\0Y�4\\0\\0\\0����@@\Z���.[&�����WT�Ӎ��%�FNE�AҚ�,�x�{�Q�|7W�u7������,�\rk`�2�wE��*Q�\\\"����\n�w�I֔���[��b�\\0:\\0\\0Y�~\\0@\\\'�E��~��[�P-�,�R�\\0 ��%\\\'���28-,����ؠ�;��(��� \\\\\\0\\07V��\\\\\\0�%/ ��	&�t&���AhŹj��i�\\0��DY�+pY\\\'�E����I�)�J-���A6~n�@%&�O�ُ����(\\0�J*�p*	�~r�g�O+�`@~���-��ߊ��Iܼ`�X�t��ڱ;V�œ�Cc�9-RH�E��XmXy�\r��2rI��#Op)w���B�ܺ4G#]GdUɲl���-N	;���iܗ&�J-ɴ;�ՁNf�ԙE�pJ�ܢ�ܲ�{�I=p$D�]րL�J�E@\\0\\0\\0�\\0.�,��J�R�ŁF�Qf_�!�+�&�,�w/ʯԔ�{���K4B2>W��[/0+`ZѷP��Ad��4��\\0\\0\\0\\0��t^$��h��U�\\0c)$�e�E�F��~�퍊\\\'t�Q۾�lPݓ)%gm��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��N��pb��\\\\��u��\rH\\0\\0��B��]�W��\\0\\0\\0�v\\0�v\\0w�	.л\\0ػ�^B�r*��#}�\\0.�R}C%&ݒ�	q�Wi�@\\0\\0\\0	Qon�d����)\\0M���-tF���R5E�ƽ\\0��	��]�J��ZڭB�j@i��~a�k�]C�$�-�$�]v�\\0���A$h-n�B-s��pݣb����1�����x�.�M�`N��lS���a��=�?��Ltd��m包�_Q�ch�ZT��S�K�Ծ̗��U���Ю�DJKp�THW݅��{\\0w����@OR:�M�4#K���ś��נ4�Y\Z��b�E�Md-m@��d��.��sn�AW��-Iܕ��!�[eI�ꌴ�;7?� �\r��iZ&*��F�\\0\\0\\0��ʶ�+N)����	DX�t-`� �M�Y���\\0�5~�}K;�\\0�v,���,.5P \\0\\0\\0\\0\\0\\0\\0hK�{�\\0�v\\0w�E߈\\0O3�d\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��b8��}Ĥ�t��5�)�E�6��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0.�U�����ٲ�N�?6�_�ࣙ�����{�#�%I�����k���_*�K;n�s�fXl%\\\'�����4���l��&8\\\\~�r����\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0$�M�I��@ք��IP{�[Ջ���7�DK��\r4C\\0,\\0\\0\\0\\0\\0\\0\\0Y�H	X#p\\\"v0&�P��RT�ub�pI֔�OfVrv��	km�O*̥�v�\nw�i��G,���\\0V^�F.��kN�\n*N:1�m�+�e8�UO�CO����U�8h�V�~yj�ws�����Ӌ�U�1���U��b�mb�z3����uy4����kM՗4���m�X�I�&{�l�KK��(�l�t%��M�Yu\\\"�%�ߘ�@GK��-_�M��RL���n�y\\0^d���Z��V�TY2\Z�%Dr�^],,����Emrm����B�[�or�Z����ȴ������ʒ���\\0\\0\\0 \\0_[����(�A6�ʬ�Ԅ��-��-��@��In���b-b�X�f�^��	xh\r!��H[�i��J����(j��J�����е�M�W�lCIx%�ft����vXT%vL�Z���*��R��\\\\��Z2t��oM�!E��7:�)�͈��V�k�A��8����6�;����~�J�1�k�Ǜ�;���՜_�\\\'s���wQ�r�-�t��5r����S�ƭ*J2�-Gf�n[_	>Y����r�+�Ҳm[��2m����ev�M4��[VKI|�ke{���N��.��\r�6V$��QB=�Պ�\\0��r��� \\0\\0\\0\\0\\0\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0گ��CK4����i�j�s��NM��o@*\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0U���#��:�\\\\ϭ�4ͬ�sy��+��2TZ���|�.�R���)�nv�~g\\\\�\r��G�U�����ۣIE?I��\Z�In�P\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���\\0�/�%A��(r?��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0$\\\"l��d��%UQ��,�I�e�(��U���v<�0�)�*�8?�:��3$4Fr�U�i�c��O2�M�G�>��[�9\n���*�������n�)&�sOv����%��&�pw�_C�i��D1�s���^��=5���E4�$�-�	Cm����HlĐJXI�).���l�\\0B�����%+����C���%��H��R��c�\\0Z��{la��J6FIBKF�9WI��b�va����\\\"�S�|L)#�b��	2Ra��Mȶ��{2_��\n�`�%���F�xk���- �����jM����\\0��RL+!���\Z쉵ž�����,����J�0ն&�D�%vTb�W;!��vzܪQi��Q�%���DR��\r�*s{&s�?.�����>�L�8�	\ZT�2�:P����[���t�g��rJ�������j�3?���n\\\"XjSX�7�&����,�0�eF�B�?f)���t�8HAIj̑��vd���-oq��X]}D�4Dua+��&��Ԇ��(��#rR��-\\0=v	=�j[p�����TM��[hȺU�{1fJZ�JVWA4��ܕ���j��Z�v15f߁���U�����G����5�K\\\",_�l:nְ�)bb��i�fLW���\n6���m}�\n*��ĕ�r��0�ڮ��}ͪ�^�V��ŉX�o~���GCl��{��Y�W��F��-6*%���/�Y�\n���\\\"�D�\\0\\0\\0\\0\\0\\0\\0JNN�V@M��ڣ��+;B����I��Fug���ƥ<MX?fm*c�Λ�{>Yn���s]����Z�yN����9BV��/MXÒ3ix#���w/vP\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0lW�V�F�Z�JSpjI�\rp\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�<[��S��Y�^\\\'	^2i����c�W���E:���-c��0�f\\\'����>�J�6��k��%f��\\\'(�e����oN_���\\0�JIx�j��3|EH�ތє���ݛ���u�@\\0�]�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�Hؔ\\0\\\"HV%j�Y�I���LW[,�I�JԖ��&�T�!��^���`c��,�`�{�DU�m�CK�-i��K�\\\"�Yd��\\\"�nN���#Ȣ,,���%��I&A^\\\"àJ���E���\n��I��l����h���\n���-����2�Z��?z�۱�RͲ��߃������51��y�L���I�\Z��g�(�6��uc{��j�~�/tIr��c\Z;�����\n�r�y�;m���׆�%7������Ǧ����T5�E�̶�Di4�Z�(�tՅ��I��Z�x\r���r<@��%%�!\\0�[�h[� &�XI��=>%��؊�Yؔ��d]=�Y�+V�t/���ۃMv��C*��N�ڳ������D��`е�͇^��a���{���������y7�e�:�v)+�rriF���[�g�jr�f�5m�[�E�M��Zv���#��\\\"R�Ȃ-m��d�/4-��m5&���t[����I��^@[Q��5�p!-lJMj6��\Z�BZ��I��������w�/Y�$b�b%�����ncI�&.ڲ�Egn�ҍ�B*u/-Q�咡Nk��ԗ-E�f�J�Ҏ�G)V�*��!��5m≧���Ɣ%��Wg�^��؄֯�ԩ���s)����&�kCx��Q�H��/K[r�KZhE���!�4=����R��fE��Ԣt t:�\\0�ŀ\\0�-\ns�͋~�*\r���8�P������rr[�jM��bIҩM�pq��P\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�B�Z��	NV����0�݉�\\\\%f��\\0rx�l2Z5)bjO0ujҷ��m\Zv�e�$\\0@\\0\\0\\0\\0\\0\\0\\0\\0]��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���qX�hє�����5EE�rۙn_�bp���Og�W��*���j��[jt��!�e�5KZ�\Z��%|,�q�M����c]5=�8�V:�%��\\\\���n_r����cp\r�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0H7$Y\\0�%h��ف+ĕ{��:��S]E�P��rZ�Ec���M�s5S\nr�m߸��j|�-6�F�,eZJ��R��iTz�}<L�b�O��o,=E�F�z)|�8�3�b�;J�䗋�hT�9�ɷ�,�t��#b��R,ދsl�ߪ�BW��@#_�\\\'m:vޡ{��ud�wLu%mn�E��	[���n�#Am6/}�ѫ�t&�\n\\\'}ƶ�%���� �5{��I#7ԼU�]IV2��ث�v���&Ϛ��dnaSQ����WD�1�n�n�2�_��熦%_�i�fob�4���Mb�V螃N�RR��WV]\n�[m̍�݀����%�;X��:��[qk����6d�IK�؂5�W^e�S�$Oq6d4�K%n� ��N�E�Z�M��Z��2m��n�DU-��1U^Ѱ�\\\"��$��e\Z�o�-t9���I��ӟ���z,Dm�UI�^�v��~�ѷ^��5�S�F�\\\"�	EwXhE����b��s7)Vc�M�SGk��ݛ��M,J�w�B���E���ZI������Z�{�,�u��JW����:��o\\0�%[�+���[��e��k�Tm��w�%�H@��I��[���v�\Z�`�]�,՗�\rs 0��Z�f��,�MM��v&얯�i�-d���`\\\"����4hF���r��}�d�.f�_&�k�GU��J�C%4�8�����kݱ����g#�n��8���닖L-/�b]���F4��vK̗b7Z�\r��o�.�Z�*���Z�\\\\�4A�`�\\0@\\0���CH=\\0Y��Rϱ���^&(擆\\\"U��=��n63ъ�V�+W�ڱ�,�xM��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�	����φ���k��`\\0L��&ۻ{�\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0Z�ݢT&��r�j��U]Zv����/��?�(�j�)��Z]N=V���ݽ�´���:�����e�\r&�jr��4Z��.N[��,��\\0@\\0\\0\\0\\0\\0\\0\\0\\0n�D�����6ԟx����\rX4֡+�B\\\"����[�_]vROBQ	�mKh�¥.��+�4a��lPOFf�e�I+��tl(�H��|�m�,֦:�jW6 ����YktjVt�{���ye���*���vZ��ϡDo�\r�֚�!+jM��[@��I���%kԏ%�*�����XD���+B-ө)_R	��A�\n��\\0Ln��JTgZV��(���͹v%Y�#�U�Q��i*`*�1XIۼrQ�Z�󝽙?�2:o���s��Z��d،</:���i��N-�[�L[�����ow�F�t�}��F��n���Z�n1Tk�¹n[{ŬՊ���E�)��G}����E\Z{\r�c��d�Ś�1V��wе�JVe��6+O-�Zd���p��\Z���K-�$�f�ZkԲN�A\\\"l�g�6�r�l.��&+��8�+������+3n6i[cG+|�M�I��V�*$߸�O�����o�{����f�!-M��w���\\\'Y\\\\�J�z�K�y�$�ze����/�6D�!.���Ů�I��V�z��)j7�\Z5|	zl�\\0{?E�5d��@BN�^���_�N��i[;�YjZ�ө	i{�	�Խ���\\\"+C	SRб�`8J�*?�c�l�(I�^�׸��D�3�ɕ�f������#�O)*P��\\0\Z��e�|�RJ�9[�쐩7���g������̭��d�E(8ɣ.�秉�d���/o�j�$s��������������5�i%vr��vq8�w��Ъ�߉��w���Q{Z�q�2WKīwм�OB�����,앺�j���*�TY��[f� 1Р,���!�\\0\\0\\0H�-C\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0$��y	@,Y�b��w��\Zp׈�������d��Il-���v�B��@I.�h�̵��U����k�љi�}5%V�j]_T�T����Z¥�|4ĝ�1�wѓ&�M�5U[����i\r��a��U^�ZE��CEE,OK0֛�]�abW��k���	}@.�n�XZ�7w�OfB�J��H��\n/vO@�Ek��1�[SS6)�d����3k�K�ۡ�_�1[����F�����J�țV�udkJ6f�h�5�ٸ͊/�$�j��ȳ�Q���d�]IZ{���\r6^�/f�4���-���Ow�j詥S�K]	��\\\'�D\r\\\"�a�;�-kt!k��k�\\\"�>����4������Z�*-��J�I�J�\\\\�4�,���h�)I�]4��t`�Q��B-�FJ�ٳ)}�i��B���L�a��IjkW�����{\Z�bj%k;�J�˻�WMͰ����$O+}%opK�+�$����\n��Ԗ��<��\ZV Z��G]IKE}�j�0!$֤4�-m.���a�6i��_!�!�i��~�\\\"�wd���Vؕ���U�%�9<��m�6*�is��-丹*rz��qY���}�J���+M�����㕛7�乕�+>kx�6���}��O.j7�ƞ:WM=��\\0������wg9�Ҹ�M�tiTw����#M�I����9d���jdit+k#l��R�}ş�\Z�b���E��,�D5�TCV؋hM�]��hK�M�����F��ŘkR5E\\\\\r��@H��\\0 @\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 C%2U���TK��	�5}�#�m�n�Ѷ���°��[�*��M?pU��h�td�^�-$�K�c��KV����y-���RZk���ҷC-5�k�\\\".�Ť�6�A+�����}�!&�j�,�御U!�ط�]B)/�]��;����\\\"��$���RR�`*���,��M	+]��6������VД���Zi���%+l^)t\\\"�*�xGD㹊+[�lQWz�5�6(&��fQ�c4�t2�WV3[�M��I�+���.�$�tM�Z��\Z��7j��ԩ��+,v��h]/���\\\"��	J�߸%g��T4Ҷ̏r.׏��ݛ؋uW�v��R\Z�ʊ����F*�\\0��hb�{E���!���)=���%+��B����&-opvL�Yd��Л;�	\\\'�ji�}Y\r+X�R�nEdPm_��&)5��J*�HͭH������em��V������gdȨ�u��]_cr�ֻ�R�eK\ZROi����i_̥����,�u��M+���k���bѿ�B^ S��[[����,���T�J��[}Q1Vק�U^��7��QkuA������\\\"Ŭ�I�t�,-mK%m�Ԃ�h�,�ܔ��l��T�d��G\n۲�\ZI��7���x���?goC4N�f�;5vifq�3<�|8�v���j�V��R�Sk����+���tkbd�m��_#Skۮ>�w�����ٯ��5�����Vw!�Y����Y�i��ev.�֥Z��EdF��ԇ�QW��o�g�\r+P��6�KK���\\\"�Hj쳱�:y��,�\r[b�ؕ�\nŒM�]�,׉\Z-\\0�%��r@ @\\0\\0�\\0 \\0\\0\\0\\0\\0n�\\0\\0\\0�\\0\\0\\0\\0\\0�\\0H\\0 @�\\0\\0\\0\\0\\0�	 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�I��z\r�[Q�>�	_F��� ����K�;��*���m�,F5��[��n�!h\\\"��D����;Y&g��F���zO�3VF�U�E*�o\\\"M���e���	[{���]��sL�d�z����1�\\\"���5mV��t-`�M�Cw^e�+ �Rϩ\r4]��K̥�*>!&��\\0�5A-/ԴUބ٠*��ſT�O�(�\\\\V�������ţrV%/�I�II��jE����3�WzicMJ�cf��U��Vm�f�6�t(ӺV6(��=�s��QQ��Y��O�Ub���CU�-�\Z��KcN��Cr��CVI_�n3X��_\\\"lK�%fT\Z���ϩ6{1o\\0!��!]�_]m���Q��I;�d�z-Ȕ^��^Z�ܲWD;ip+}*��Z���4TU+�L���%x=�]��J��k2.�{��Z�`��5}�[��F7hQ��V���+W��xx���٧��9��Em#���Sz�͊����)5��ED⑧Z:��ݜլ���t��,F��o�Woq�i�s����;���iٲ�D�߼-��Z�wЄ���JW��Y+�-g�T5k���������=zX�Z��\\\"��4�V{�]��ԋ[p*��ے��)+�d[�BW�����_&+�7p�Lӊi�naS3Z�B�o�j�KM5F��`�ֆ\Z��Ysxx8t�f�ݍ�+�:V#f2v�0WK��.��F\Z�j�\Z�>���ƽMY�Y�뱯;=N������Z����\n��*4߸��R��؂���B4Z���j��i4�DZږ!�T/��!knCM=\\05g���e�*��(���E��܇p��D;�Œ�(^�ĥ���\n5mG�iסA��W@G��5$�!���\\0\\0I\\0\\0�\\0\\0\\0\\0�\\0\\0\\0\\0\\0$$��\\0:H�B`d�� �7H�� �!v\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0�@OK�tB�]�ۓt	X�$AX���%�Ȩ�l<�V�=6�*:ܛ��ؔ�����B\\\'�=\n\\\'�)���_����ؤ���Z�=5��3Zm��>�*��4�V����My\\\'��C�̒n�e�t4͌oW�W��ߠ��/���KZ�̢]R�4EJWܬ����V�a���b�	yjd�����.�T��Tt~%�[��_Y6���9X٥,�E��Ћk��e��)��\ZLWB�.�{�/$lF��z���j���M�:i���5cn�5k>����������8��n�Գ���ӒWfě���ו��E��UYo��$�&�D�5�S��K��ĕ���,[�[A(ج�gp�ӸԲWܢܔՕ�j�!m�\\\"�P���R�R�7��K�Uj˵wb��ki�T�Գ�Be�v؝�!�����m�M������J���[_Ԫ�K�}B��n�|:�xy��o�60�J͒��N+��������<\\\"��s��Y�$c���~�j�%~��v��+�v�5�dm\\\'k�h`�n��#B��Vczx����F\\\'�6�Q���KB��w{.o�m�[B�]j�-=	_RRM?Z�V��W�IZȇ��/n��(��^��l_����xF���VD���J۔F��$�-^��u�A�ůk���������.�&�U�m�m�n�m/#6��Zm;z��n�k��yZf���՘�w�c5��cu�6\\\"��`��6�����q����=�6�	�tkJ�#�b~d7�ɷ��Yli�^�;��T���N��El��ЄݬY�lC_iQȆ��5�V@����^�Ȗ��wN�wԆ�Н����^:����OqBK���%Y���[~%�)g{ �Ǚ@�MȰ6�\\0\\0�HH!\\0�$hH\\0B\\0��`\\0�\\0\\0\\0Z�B$l,\\\\�-�N�h\Z�!�f\\0k���/\\0-�[�\\0	`#qbtZ���Aq���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 	2Ze��L���65���-���\\0\\0\\0\\0\\0\\0\\0\\0\\0$R@�,��$Y_� ��WdۨI��ٲJ�� �\n��I�㭀��*֥��i��-�:�$5Z�M�z�I�I�YG��B6��^Lء&�3V6��ocKY�\\\"�f*�OC��R��v�Љ�ai��M#�Oc+�EZ}���r��w2Am}�X�V��K��]��E6�\\\"��[r-m�7�\nd#�#$)�iԲ��s$c������%eM�-i�rOkU�Y������W�m�1��Y���:X�+۠Y��u\\\"*�e�[��Mjn����sR�[���n�cgC�ۣ	?s-QZ�;�p���V��H���k�hsk\\\'�kʗ,�9�(�[���SM��\\\"i�:v�TkՊoS���iԊO�X�k���q�������3[M1�+r�-$d�������V%E��r�IhCM�\\0�[�E�˥dE�]�|�Eym��ꌩ;�b�x���;r��8[�]��e�	=�6�m_H�f�/���*��Q	?Rԛ=�k0\\\"ˡx�����(�V��3Ѝ�~�(ǡ�A5k�F�8�S4]���:wJ헊��c\r��^Ζ5�oCjqn&\\\'N�q\n�4�n�z��#b����VWf�5�R+s���4֩���\\0��͌r�����v�������������rRвDV;Y�\Z���d�MjȲ���e�I�����V�TQ/}�Y-�k�-}9Eo�M�ܻ��G)QF�T�.���z=�0i^V�{��֤ۣ%&�\\\"�k�6h=Q�;�lQ�l��6)�Mţ%=t�J���ekS�S=%mYH�}��e��^eHȒ^f\Z��ngJ���F\n��F���kTJ��՞�Y�$t�U���2�ir�\\\'�[Y�e[u�U��B������Q\rYY�kO,�ب��U�]�?2���(��$�Y��v`RH�W��+��2��Y�\\\"�H�Qr�ֺ����\Z���;��wІ�~E�m�QV�DYؽ����T\\\'��ܢ,ŉw@\\0	\\0!E�{&̈́0��-��!�Ȏ�4\rX�\\\\Y��X�v\Z��f�u+k\\0�d�{\rP�Z�l���n������%�{��A���l��\\\'r����f�#T$-�M���\\0��B��ŚZCZ���D悔�\n�\\0*\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�]��Eu$7�[o��v�fK�̊��ߙy/��,\\0(\\0\\0H\\0\\0\\0��$\\\\�%z��H�mjY=/�ܴ|��e�%�����\\\"��A-IӨKB�C��O�5�N���$5���*��Ci���L�]���he��]֥m�ںZ���I���I�F�a�	EtWz��ٖ4��T�z�����$��\r=�V�2A$Q)%��dQkRb���D[�E��̪9y�ĨYߩd�d�]܊��غ�KB`�ѣ*�Չ�����7sa�ǩI�m:�%�iE�^�mn�g��:/2�4ƣ}z�M-��%em�ר٦��I+K�g�օu����=:�x},������\r�=���X���ڌ-��5���#v\r\\\'�κFZ��g��=7+�C<e��)6b�yo��Zhb)�{#������I�g�hׅֆ�4�lU�c#���eͲǾ�>�7.�<KB��b$M�ۨ��\\\"�D�u���Y-w �Vz�J���r�j���TQ��2+��U����*��t�)u}A�cݖ��.���DY/ H�ao�мc�.���nWm��Рg������3-(����<m�3��xX�Ml��zOĕ�Ge����L�֬r��jA�RfjV�W��ڪ�峽�Ub�X���z�Fj��{EZf�\n(�kBlZ�ً46*�����k�Ж�����ĽHn���_~����,���m������jȺWZح��٤Z�XI.���b�]&7�\Z^�彬\Z�%��I�-x�\Z\ZV�2�Vf;k���I\\\'b,g����Ka�M�\ZcK�ļ]��r�j�2E_F�U�j�T���\\\'`4++�hը��7+���_#q��մ*�s#^(���6�-����ǩ{ud4־%EZ+%���{-\n�mw	�Z_�=�r�EDt!��e����!�]��dY�e�QVׁMkMȷ�DY=ɍ���$��JK���ַ���=6�V�%�oA��������E.P�(&6@���y�B�\\0�;���RmmSЍ���h\Z{��@_�V���yV�\r$��*M���_�^hv��d�D��Ɲ@;\\\'����~��(����-�;l�B�Y��Pw\\0��\\\\y��R��4Z�ćn�\\0h�[�&�����N��\\0!!d-}I�������JN� �\\04�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\n���rVR���Mݭ}\\0�\\0\\0\\0�WI�U��Y��{lV[��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\\\�S[�ޅ��IZ�mԛ�m�����\\\"�E�\\0\\0\\0��\\0����5q�\\0�M��XW{����K_#*�w�6�L]�XTu�%���i�]%[�-fB�e�K;�$�tY�\r�\Z�U�M�N�LS��7V��b���5Y`���d��X[�۲��J�iE���%V�S$Rݒ��\\\'w}��=˶��i���ZmrU�E馁$����}|HQ](�{�����Q��q�סx��\\\"�;Ynd�ݵ(���H��C-hq��ث�Ց�$���N�,���~&�Jmlc���Vt��֤�o6e�it+����]�c�o�^T���k�8 �bi��la�I4aqo�8eg�QF�V��Óߡ���c�q��j��#i�g���MY�=���i�^w�����9�N���rq~	\Z��T���ꭧ�e,q3Z�l�W}��C������	[^��}X�Q���B�-�پ�9�\Z@җ���]]ܪMK̽�^��4��CW�di����%4�Ӿ����˨��F�ڍ���4�Z�T�J��o�\\\'���h�鏒�k���D��e\rS[4Ƒd��g��0�J��IKkld�K�Q&�2ӋՑY �Fe���B7V.��f��]&�E���H�ۓ$һ�{�%G[4jb ֩i�m�U�5�%e���QtثZ��V�[�һ�6��KB5���K���Q��S��Zo�YF�!f�At�m.BV�e�zܖ�~A4�_gQ��9t܋4�\\0���q�{ܽ�*�Z�T��S%Gu��w�kB�Ҷw\r��-4���CJZŒv��\\\"Rv^\\0BN�ld��T��\\0S%=�B(����Wj�OVdc�K����LW@�����CT�eV[�b��DjU^&�U㡵Uuf�DΑ��i���ĭ�2�ZȆ�����]��a�Ԭ�Z�24VV*X�DY��-��۩QNWІ��\\0�v���e4�]j�L�\\\"�F=v{h^�W�F��E�D��%\\\\�AQd֬��7Ы�P���nLW�@ַC[�E��2���J bk�k_\\\"�!�T@Z�J��o�El6\\\'�`,��!5ԝ/bM�r���*��U���P�Kҫ��D�Udqҵ��U�	zr�W-m	���6��G��qzuD�iْ��\\\\�USr}���c�[nQ�n��-�W�d��Ől*,�\\\'fYY��;k����DY�%]����`iܞ�n���=��-I��hJ�DEB���&�\\\":��kt!��Zĥp5��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0-(4��ĩ����Xz��1�ڼ\\\'�̔i^��P\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0$�H\r�Vĕ��H%+|H��M�܉k�v�25E\\0\\0\\0�0I\\0	 \\0�$\\\\�[r;��[�>����ߥ�%%�r�E�̪H�U�ȩZf�\n����\n���z�K]F��!����R���m�\\\"�,J�X��삍;����Iu�4ԯ��$��m�\\\"�x�\Z�TF���b�=\n�gKOF�X����w��Bl��}@�Z������.ց=<§�/\\\"�V��eb���d����Y\\\'k��V&	_]��)茵f֝	�i��\ZZ�%At��M���m)����4��H;D�����E֎�+��e�meT���PP}73����PLmt֜.���*��jm8�UB�B�4ġ��*S��͈�&�M8�_35(�b�7~�ZT�����L�{���l(��Z0����W���\nJ��dE$�ѕEF�6�uh��\Z�^����Ҫ�O���Ҫ�zj�2��ةnm:=�3X�ҽ�Z���+[���}V��\r��x%��m<Ƌ^�R�B�\\\'�R[Kb�ߥ�EyR؞W�E��bֻ���\n���m���2�$����\\\"\n���C������u�V��	�Ex\\\"R~�\\0q1i[K�@�+�,�%=I��\n&Zq�J����O]�D\\\"�Vl��ȍ��.��r4]%~�-Kw��[���3r�+��R6�c5>��+Q+���X�w15cf��C���4͌O�ru�y��TTE��̋_���_��ߨ�E��\\\"�w�P�Z��*�z�[>�UūZ��V�I�lF���c��&��Yv�z�Ъ�*i\n�2V��ՓI��� ���$�[B��,�u�zi�B����H��ػM��)oy�Z��EQ+�z�_��۠1��u0�Z�^v1T���Q��Cў��0N�cq��պX�e�R�G����*�e�*ҵ�k�G2�*)�k�-��ݝ�j�B�O�v�v�1���M���%��\\\"�n�5mv	��+@)o-���j�J�Dm�\r�j�i�h������L�-m���;=���[R]����m�9Y2���d6T:X��&� ��0�]E�\rw<�cR��y�W#�L���D�p�V�v����\r.Cd��*U��WD+��~�ЖC�l���+Ȏ��j�Y=W\\\'oq/\re�z��*,F�KX�B	\\\'�&\\\"��/M�Д��\n���I���V����[ak�~CmIJ�@�v@k\\0\r�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0-`\\0n�\\0\\0�`\\0�,\\0`\\0�\\0g�,�\\0\Z�)7�n��#`̛\\0���\\0,\\0l�+� <��X\\0������v���r[v��6 J>z�۱k;؍�84��\r��\\\\������*-�4U�����(r��*�e�j�A[6�(_�*\n-ݿ��N�W��� ��_�}Z�����	�h�i�v����Ո,��jռ�wjۢ�]	i7��T���ȗTWU�%=l�����V!G]Չ�z2TWB�,���tB��e�$;���D8�DYk�,��ۓmi\n��sH*}SMᮤ4���,i�Fn�k�kC�f�/>���\ruh���FU���(��Rmt�:im%b�)=$�6]5f�1w\r�dJX�յܘ+�-/�f�;�����ۍ��R���њ4\Z���I%��d�1ks�-.�*k�Y�Sn�Jt|I��:|�]=��6W�fuI�g�ЕOC;kLT�xT|��6օ�,��c:i;��z+\\\\���3��X�[ܫ�����)�kBT7��\Z��]u1�K_ijl8��!�\\\"�,`tb㤈�4��fi-��%}6.�Lt�flR�-���cQ���i��٦�:i�R�K]I���fxѾ�v�R�#�w񵌎��B���W���Swl֯M[��QYy��S鱨4j�I����mz�c���5u������)ݧ��2�i�\n7��i,QAm}	T�O�E���Do�&�*I�_ĺ��ђ���-���F)�7b�	��MJ��Ȣ��#Q�á*�j�U�\Z���4ĩ�j�v��_q��qk�F	At~�w��v��\n)nX�7�/\Zz]�a\r��b�u�]!SJ��L��Z=�KK2c{���\\\"�%m�2�\\\'ԭ8���ʴZ��������̭�2F��LJ�Q�F*�V_q�$�]L5#��U�%\Z\\\"��s���}Z6jE�E��H�FI\\\'tʺj���ؒ�YQ.�L=ݞ�yѳa�ݑIE&���M^�\\\"QI[��I\\\'�W+�	�5��O\\\"�dqI-4+$�QWM[rO]L�^#���%�vV�K��Y+���ٔS�\\\'�q_����7�\rY��܃\Z���.�~�`Q�&+ڵ��\\\'�^>��\n���B�]\\\"Ax�-�2�)��B��[�̉Ti.��+�����My�K��VPIh�r��}o��N��#Z�(�t�j����6�;�*%v��5�(A;ݘޮ�&i��d���n3T�OBT\\\"�luܵ�>²�*ilʸ%�]ْJ��ܫ�P�\\\"���PO}{]��̢�KFQE_�v2M/�D�R�c���JO[\\\"����J�����9`���ƚ�G�ڕ�Kc#J�!/\r����o{�u�u��mq���V��ԗ��R\\\"���IZ�F�;1t{�ݕ�J������QV���-�,�ʴ���|���\Z4�!�-��}\n��D��\\0�[��|��hA	�@��/Q��7��M\\\'�	}�K�w���[]�JzM:�kK��`���A%ak��i��`]��}�5}Ȗ�Ȗ�b���%��S�(�ŬOQeԊ�-����Y\\0Iu���E��=l$����Z�j��w���Z��P�\\\"\r@ѐ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�[\\0\\0\\0\\0\\0,�\\\'�S~�T�g8��5�`V�w�\\0\\0\\0\\0\\0_���\\02_P�w�M?�U�%eR_[!ԛwrm�������yT��t���(����I�K�jͶ�\\0�{/����ؕ$�ЪmlM߈�MԳ���Rm���QT�طy5���{�}�D8������I�dNR��m����Ժ�&��-�;���\\0�(���(�^��%�VrV�����rJ�v�C^Ղ�oA��u��`YA��)��*�Wh�n>);����~L�kՍ�*I\\\'�M�\n(�쓹������˛���!�N\\\\ͻ��1�6������З��Uj/�6��O}W����;�����^�i�R�ͻx�(��7�oܮ%NQ�5�B\\\'\r#&�̉T���������]\n�ГN�@-��S�O���j۳5W�-]:u1ʋ���FT�w��YՔS���׳M��fD�Ӷ�<�������9NZI��7+\\\"�ںO�aR�ї�J�V\ZF�V�̕�����_;�84�Z=5��N�=	�J�^Ԝ���\\\'+m��L)9l�^)*sz�ݼ�Z�4������,�5bۍI��i��׳+�Ș���+��+�wܼ*J\r8{/�nI�pv�i�5b���U�ڊ��V�5Z�ok�waJ�J-�Rqo��¡�o[7�\\\"��M�dU���[���ԥ>zrq~+A��:R���^�d�	��O�dU�W�eV�����ZX��kM%��3vM�&����e6�e��8��V�i��&�Ns��������bt�v��b#M�^7�Wc$��+T�9/�:�i�NN)�ZC��G���i�c��䜤䓽�Љ&�v���\\\"�\\\"1r�n��O���e8ɸ>V9�)^N�őW�\Z[jĠֽ�7^mF�G^�٢*���h�+Z�I�o���e:��m�KӤ�oc4i��R�H�ɻ.���UOF��֘�v{�ΒkOyI^r��l�[�̕���Om����R\r���V\\\"�VU\\\'s5�\\\'\ZԚq��|�笙�kBlґ��2w�ٖ\ZE(��#���Ngo�v֘iSo[jg�$�ޏ�d�*��p���ʭWt�;=��%�H��OE�T����eNQ�:_��ȪUZ���rZ�k:V[}B4��fٰ��ӻ�ՅZ��O�4ĩ���EM�2\\\\�&��mms,jT��w��٦%N��J����d��wo_1\\\'6����p�B;����緵����SV�]�^PKk���M�O#$�ڲ����Ҳ�Ch������J\n�nU)��I�}��a-�]��^l�J��s\r?���\n��v3i�mסI�K�C/w5��)84���6i�Qx��ԩݾ�n���z\Z�S��\rJ5*A�`j����IU�-��s�n�5��P�ompj7��I�|�W��9JrI6�)�w��Ą�п<�m�Ԥ\\\\�g��Q��[3B��)F�Jir���x��ܵ\\\'��*Ȣ�gbѦֶ2.���oR�յ�v3����xPoC7w6�e�	Fֺk�٦��ʵ؞�m��q���rR����ރf��\ZP�6m6��o���cf���ĺ��4-�;�;nmkrlbQmhd�;;=ɌZM����Qh�b���M�ri�A�;����M���᧴�%E��Ԧ��dک4֌�Q6��ή�5�1�NRof�F�H;]�o��ڨ��f�1^q�:{��a�M������L��,FR��^�\\\\Zq6ͳ<��d����E.h���.�0:mF׳�~,�59��6�l9�����A�MyS���eg���]�\\\\��R��;&���.��NMi�\n���gO��o2 ��^���4��﵈p���s�?�۾����һV��b徉^�a-�$T��S�*���Qm��.�gmI�2wW�н��{;��\ZQ�ڶ����9f���b�ٓf��6�L�-x�D�Vl�sn��X���*���3J�Wմc���I�y\r��eZoDfp{k�䦵I�y\ZF�Uu��8��ʒ�(���\Z�5!\\\'(�K�YY��8[k������IWj���������r���ܻ��9�̿q5�����f�����0�-j�*�o��P�)]Ř�	�m�6�(� ��/i35*��X�ŪW��.2wO�\r�Q�(���T�۷M̭�t�\Z�WK��w�h�fޏ�Ov��S�9sGFd�F!�^�Kr��խvQ��S\\\"�^;uw�Q�ɶ��\n7~,(7+/b��U�-Ͷ�հ��m;=�N-J��TS��b�omYa�>[>�Sm�^Qi\\\'-��)��tE�iNWyY&��2�u%=QI)�g��&�\\\\ZW�G+fW	�M��-�[4]���\Z�9]�dJ���Wa��Z�;08م�r���Pi[Kf��4�k7��=Ճ���\r�4�	.���ѐ�֏�BQW���̕m��!�nW�9�4�\\\"R����n���Qga�)=ªմ%\\\"T[��%�u��زORU���k[�\\\'�-`��Qmh���Y	\\\\��h��w�)�%]j�@�7�ܳ���K�\n�,��M���B�P��\\\'V�Z�\\\"RCmZ�Z`�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`7d_K�%���\\0��v.��7`Eػb�ػ\r�l�\\\\]��\n��;�\\\'��V�\Z�`!���Z��h����&E�k��;�&�)���Y>�R��6;�����J�;}H��E�	x2v����D:�j��R����G$�{	�z����}DrK��	x2v�?/����Jkx�����]����m�2m��&��(���g�\\0h��C_�\n�2y�)K�~�yg���W��!�䄯�X�t��tP��в��!sx}��w��\\0e������}���ۗ�3S�_���6���euf�Y%��U�������W�gk�.kx}E]]֗�.�ڼWԌn���N���i��*�M��^t��2�O�y�}��{��}H*����AQ��-�w-�����Z]-�\\\";����7�Yzr��K��d��l��混ԇw/����ɽ\\\"�dy����U���R\n�����/X��v^㛿�\n�gtZ-�G�2�k~T�m&����F�Z�m����e+쾢*������5��&2v�}D9��m��I��dSv�[�U\Z��iɽz��Q���ɽ�Mk��f�S�w��y&Y��er��?�r��-	�ۗFB���w�X�~m��,B�>ko�2ӫR�N�QNFމ��\Z�&K�f�y��xר�����:m����2F�ZX��]�#Rrz���\Z�[I��M����Rkt̵\\\"9����D)Ծ���$���Z0�Ӱ]U�R��.�\\\'-��]+}e�s)=�E^�mY���Zl!{���d݌Z��32m-Y�{���mh����M�fJ��/5�1Ku��I�+�9Z���*-��4�Q�ԼSZ,�м~���\r�ٽ�r�+�c3N��*�ҵ���.�js7��6溿}ͧM��IR{�J�`M��YY�����Λ�J/�4��JM�[�4��{��M�^��b����M���x�\\\'mJS��gf�陹�ܿa[��L�Z�nd�j�V�ЃB���]�%�mͺ�������_��\Z��{�k�5��mԛN�0Tm�}<j��m~��%}��fr��!��^��)�(جn����{���h��A�����ss\\\'�+NM-vfdݭ�J��\r��̑m��ea��h���+J��ёi$���f�6�v���w�C;]0�勤��ٛ����p{��c^NI��U�\\\'~�y&��U�*1�=,.��]�P\\\"���0�������h��؝|�_����@�i��Ḍ�v~����dr{�nc�gw�.姴C���\\\'\\\'�1ݫ�g\\\'�w����m}̬���_k�YK]@�y\\\'��&��|K��h�eyZ�QW\\\'m��rmn�]��k�t���	�X�Z�v���m�K(?J�zX�ڒV��U�[Fet��\\\\��-������Ԣ��{��)>k��Q���F;��������-��!ߕ�l�e$��]9t�%7�}$�\nR{ܺr�R������}¯Ii������u��E�\\\'�p�j��K��6����v݈1>kuV0��\\\'�3�O�����&��i\Z����c��u3UN^&�M\Z�1+�n���-��Gr��Օrv�l�&۳l��/�t����ҍ����C�]��^Q��KK�哳kS[Eܟ-�55�dnI�O�#��Dܞ��-�}�c���Q������KM�9I��F�&���#�il�M��$��dEI���=P���H�{��!߭�oK-�(Ԗ�誋�����*�n�U�kW�\\\"I��V+{0�R�3��JۖqnW�dZ��Pս�^ť�L����(�v#m�Y��oD���ZnJ�}�O,��`�I�Qg���Y�?xQA�Z������OF��o�.��o1�����AVP���h-ס�]����.��D�-�\Z�M�+��������\r��F�$Ul�@���k+[DV��m\\\\��h��|�V�-vN�x\r[j�[�I\\\\����C^��~����ZځEa��p���ep4��F\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�l�U���N�NRj*�%y�vl��،��Ԕ����]��2��N7(�O\r�PtkA�Pm6�����2�<N9G�5G�Ž��0a[U�gmI�]��v\ZY5\Z�ӗ;���Y5:w�[���c|<[��q�P��Ix�q���,f�X\\0z@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�v��\\0M߈�~$\\0&��]��$O��p�c#N�m3�P��%9^*�k��\\\\��a���T�������;8Z�5��+�5.��S������<�ߙ-_Dr뿗N���S��?���[r��\\0���n��Yz���1�U�;�S�&J�|\nw�e�\\0h�VÖ���u�t�	���%ZiO�۪z�K����gwB��\\\'�����tN8��%o���Y[��&3N���$��lz����~$\\0%NI���������ݑv��bU����e���Qor��f��v�3�����jfVծb�*�}~����E�Z���X��/᱙u:�]H�x;#y�ٷW�6�Usd�5ѧ�r��,�ޙ&�z\\\\\\\'�}j�\\0��\\0B���O�_���ʖ��ku�\\\']��LpXn�P�<]K�i��xORnRun�ѝ��u\\\'������t�]|!��J�����0;�U����v.Q��^_��:��׭�\\00|#�zޯ���;&�r��u���up�	|�U��1\\\\7��E*���q�o�s��$N6��뿓�<��00�f��K��)5���zN\\\'7�*��D�叡�3ٍ�1�˵Lw.�jV)_^��Ih*E���-��d��\r*�T]m�*��4�Y=vfU4�0��2�]ȱk��J=uْ�v��Z���Dcs�ᬾ8�r�9M\\\'ݷ8�k�;?A<�~�ϴk	���\\0U�ߥ�����|2_�����9��I��G�����\rPۿ�n����Pz��o�9�M-QnEc=tӅ��R�UZ�W���#����T�����P_�Zӄ��Q����h�xr�W��~Û��U�*\rn:�i�����ũc���V�[j2�os������o�v���m���JO�N�\\\\�u�����NO��\Z����D�2#w�x�{���Z|E%И�l�2(�neT�h�[x�Ѝ�E��qj�Ʃ�_bЇ�\\0�*���N�_���ҝI�ݤ�\Z2��J�簱O\rM�=�fՍ\\\'�Qq��U�4<j]�����!��(�c�Q����\\\\�L�����Dߚ9+%�㓧�v�/�5ۚ��i�Z�Y�rY]��F�pʨ�nj�Yh�纜����#\rԣ��c�YDnU],h�4!�T�uN�;��p�I����.�WR�M�R�~�rI�n�)�5����R��F\n�]\r���3�ݛ�.�3�����q�([Eԧ\\\"��kl�鵺Еf���M.�Uw�M���N�ZJUb�ͤ����jm��ׇ�/RZG/O)����r�*����F�,�;��4_��;/�//�-/;�(�y\\\"n���[K��-��n[�-���6�u���VP�mZ��N>�}b�����SGI�_�YZŜ--6��EU���I��	=�u`h�[Y^$(��d�-� .��\\0 Ȋzi�6]z\r|6\\\"��˨�IGwс��ԥ�2�+vcj�TSJ�B�_̽��8����]������9��S��,q�\Z�cM?�ve�3�YW�j;sT�<���\\\'c�Q\nӥ�mt��Z�T%���O��9R�r���\rO\\\'�	�y����ϰ���.��ѝ������\nΗ����{�p	�2�I�������VX��ס\r7�2�7����tX�(����q�_�5��i����YY��F;]�Lb��\\\"*�[�˨��~v�F��>�(��	6�2F7�@b�����m�6\\\'���֗Z�%n��]<m	T�Rqq�Zlo>��yR�^M�����a���WmH�7�-M|��\\0V�~��G<Ὀq}t\\\'U5�n��5jc�PT]8�g���5��!S]z�H�\rP����|3A-j�l��N��huӦ<�IR���FM\Z�+}��f��:��3NK��zq��r��e��9�Z�iE2������t�����[;�����*1�%��ӡ�1{���M1r[m���Ҋ�2�)m�+Ԏ�d�i�BAַE\Zw.�B\Z�Ԩ�Ԭ�s-�]\n;,s|=�C��;�|��ޗ�߼��<����Y�����p�++��:��b���̫�zj��b�_9V�fy5�q���l�|/F��ZGb�.��TRнw��S��T���o��U��)j�=N���X8.�uR�\\\'>�)�d�������b�&�N�ӿ�=wq�9�l�-m��6�,�D�mBK�-	��%$J��A	%�D�ܖ��E?��T[R�6w��-�.�{\\\",��\\\\-J����g�z�j����f�9nW�4�Tc�}����Ϫ��c4�ӵ�e���E�z3P��US�R�w�ٛ���6Qu(�V���-��G��؎V�Fz�\\\\�z?#nZ��Q��hE����CJ��T�5vKVw�Y$�a��\ZU���5�{x���̋[�M�œ@G�iX���ni�\r&�\rF�\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\00�\\0���Ez�].K�g�yˢ�\Z7���x�)a��u9��6�C�N\\\'���+ug���S��p���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�	 \\0\\0	!\\\"?��o0��\nZlt>	�1��h��c��}�Oō��q˥�e���by�хF��\\\'�ڙ\\\\PQ��¢�Bmc7-�aǯ�Q�QIX�<x�̣�z��fy�h\nٜo�Qׇ��\\\'��ŇP�C��{��\\0B\\\'�i�\r	!�j]hU+ݖJ�\\\"���͕I�2F-�f������m�-M%4��2ԏH�8�C��_S�P�8���:	n��ӖQ��W�z����t�\n6{�P�w��eXT\Zi�-���FE����F5�rV�nMu��#j�����̠׼�]�m9nD�g�bQ�_D�������*�8$�S����5��1�G��/�<��UE����ȗBK�t�w2�i�Ў��2�\\\\�,�k�4ނ:�_��1r�I���\\\'-Q��7�6i�����:m�.m4��QE�A��:z��;?S�i�\\0�g_�.����7�u_峟%�����J[j]E�l�Դ`�x���(��O/S2��~�_q��C�&0{��m���BlcQ\\\'��fE.,��X�����ֽ������7MG:��\\0\nWk�/Dk�,q��K�f��2*m�o��n�UB�c��]���x��J�z��(ݶJWKMKE}d���[��H�숫ker���\\\"ĨY/�e�[��OO\\\"ֱ�j��簑OM%k����0����Oez��mj����6[z�poo��0��r�n�UK��1�uK%��Om�B6顖1�Ј��H�+����G	đ_���δތ���?�uܲ�	��q�p��3fq��c�F��yCC^�;^�\\0a�+�]<MJ����vUR���e�բ;��.�Gm^�\\\'ll�أWn�F*qixUzвәz�i��ck�^��*�<!en��/�xCMv/_e�����Vћ��U�ڰ���C����W�[\r����%��o���\\0i��e����j�\r��8�-����]����䥥�8�Z1��QD��Z�\\0�Y�KWZ�i����%$�2r�`��������+bu�\Z�O��(%cfP��{�nw4�f��);����]��kco#_����v���1���z��0M��������8��+�T4kvfp��r�]�`ԩ?&v7k#�����V��5<��$��*ӽ��V��R�����������e�>��[Q�Q��˭���,���J*��LS]$�l�V��#D�d����bl���&_B����DU��i;{���Z敬^^F7���v>_��_���4�p��U��qθ�G���_�����ubS؛V�뱛��!��0�t�VPm4��mЬ���&�s�F����6��FvO��3���f�͜t�=X�r�ʭ�W��Y�;��v���\n�]�\\\"�E�g�\\\"WA��!yj.�*�T4�;\\\"�[B�Z�\\\"���cj�;���G��gm\n�<�����:��8��\r�q�fV�Z��&���������;����$���^dv7���v���o�W�=L�*�Z��L<�Ѣ�s4�y�;��0�=�����ҽ�ԇ�\n��kM8S���ݡ�x�rӧm�:��立���y}$��g��Mhte;���ۖI�R&�^Rc��Z�V/t\Z�֚jK��]�L�U�d5�e���,s�8��?z)�)���d�����!��^�u�\rd��v*��֖�Y�Yэ*�W��2%}Hi�6��U�\r˵ц����[�Or��mIqw��K�-ʒ���i`���\\0�^B�~�3`���h�2n�j�wz��V�CVZ��ar���\\0\\\\�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0U���n�3���]n��Ul\\\\�h�����������V\\\\�ٰp}��{��jP��SɅ�;��Ӏ��\\0\\0\\0\\0\\0\\0\\0\\0*-�YӒW��\\0\\0\\\"�����Z2\\0���$a1�,��������o���hŸ��p\r?�J�dz,`�7����ġ}^���-}�eG\\\'��q�l\\\\�_�d�3rt���[`0r-���Ω�o9t����[������8��=&Pѣ�{F��*��ۇ���;:�\Zմh���y�xZ\\0	���l-��h�x�,�Hvк^$%c\\\"M�*ce�h�S{i��MLՈI[Ĉ+�q��hZ�o4F����o\\\"���3ɦ�g����Ei���TC�����ه��fP���P��&�0��	��2�[���mq�LJ7Dwm�7vO#N�t�ȯ��FuM���c\\\'���\ZV���Y��Uǉ�\\\"����\n1��c�q�)�#�ʛMG����ռ�n�l�u�\\\"�R-�ܘKSl���-����d��W��-ֆzVz2��ɭ������O2U���n̼�y\nm]�d�lŭ���}�\n��nl�I��L����6�4�BҷS�p%6�g���<p�=~ðp-6�g��c;٬qw�[mK(�w�#fYC�#����en��[}̪:y�g��bQ������9u�(��ed��3(�lO# Ģ�o��I�4�m}���x��:~z������F��V�8��E�Mn�5m�T����ұ�����2F-����7�6֔Qj�K$�Ŝt&�2���$E���t-�~��z^����\r-$dQ�V:-�E7�EU��c�`������8�K���ZK�(�Q�s3���8��H0r���=�:y����|u�t�,�r�V�t_�F7Z��}u\\\"��ש��t�ߙ�����q\Zv�?��~���#�zr��[�%\roc����(��������G	>�i�ޤr4���8�Q��د*���d�z����R�0�Cc\r�CM9���F��͌*�u4��^��v�\r6в��}K�[G�e��5�74�ʡ���nQ�ïB�738h:x�N��*��������1�Q�&;i}����7/fk[��yi&މ!d���#�[}Å�-��ܔ������캅��\\0�^1�-�,�㗪�dQOBѧ&���1(؆�.gt�z�~���@���U�t69�j�!Җ���������&~�K^W���M�L�;f�����j\Zo!��iM��}~kQk}�eVF[�ަe�t�X��Em�w��S?-�P��Q�ql5+x3����qlS�}̳��J�����M�{t�6�QQ�Vt�j����޽\r���\rd�~h�۽�����H7w}������Iigd\Z��̨UK�?���Z2q�o{�i��d�k��2$�����I/3oSm��5w	��f\Z��O�F��7�W�Zxz=u�I��ܨ���j���㝕4����OV�\\0�����o��?-FzZ�����2֘e��+3�6O.��Y��lVT썇Ոq[��x�<��d����;6�s<R������õ���Î~Tk��oK��%�I\\\'��\\0��\n���\rY�əhѝYr�NO�+�,��Tv�V-���|�jBJ�Fj��7g��\\\"�\n���� �=�˲�\\\'��إ�vF���zM�5D�^[\Z2��Q�-|����ٖ�ԇk�׉Y,���A+{���L|T���s��\Z�;�C��9H�9�Z���9d�����-��?+�\\\\���W��Ge�l��2�N�W^�Z���������`q��^Dg���n�i��_R�/��ä��[c?-݈�M˱������s����;�\\0e��a<.�w:��w�Q��<��˓og�w�-X�R��\\\'n��wft۞��%ޟQ<�w�.�߲�r42,]jj�!��]jK��M����\r6��v][	�ef�6��,��fCL�]EJ��Z�kh�-��\Zs�0�wR�(�#IJ\ry�x^���+J���?��>.�[�����&�znE�j͝C�īn�q���>��Ԩ�ʥwr�=@��6�`��`ҶV�\rX�k�\\\"�=~��U;{�Z�n�JڄE�kn\ZKW�d�I��SJ�����.�!��q��VCV;8�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0����S�O�\n�EN_.��t�8�IIm���[��8�Pi5̵1�����<<\Z������kا�;v���:�hiA�K=\\\'���å��\\0�<�\\0\\0\\0\\0\\0\\0��\na���!\n�R^\rhw�d�\\\'N�\\0&�~��:?��;x����+>kz��\\\'g�q\nt3:���b�얈����r��[_�g\rsՇ�8��z1�G�p�I���ө[Nr���<�\r�E�=[�c|���c�=���w�rl�B�a.k^\\\'Fz;��\\\"k+I���ǚ��p�qg��-��N�nvse�G��S��d?���R�l=97�zk��z���<1���z�g�~�I��U�B����f~K5�PW�M�˾�yY.+c+���n[���9[��\n>�\n��ATC��fnK{�嵴܊��g��X,�jx�*r[=S9w��FYu��t�!�|��Y^�\Z��M6y���&��=��\\\"�K���<n���}n�gV˷��iK���YܝwS��X�tJ]� $�1VȔ����^r�k�]+y���A75s��7%�b��T�a�ԕ��G�a��Z���/������G~(㸳#���5z�0��R	5(���զ��V�H_��>Q^���/�|I�{wk9���d4|[~�5ʒ8�\\\\�\r+�l��|O6^k�b���ؕ\r,eQ�n���\\\"�r6�P��nG�\\\'�k�`�~��ͅ��&65��P{��2y\\0�p�ĸt�L��KR{���b2�&\\\"|��R�/F���q��p�\\\"�5(T��$�֨�ݖ��{�4�b_Og�\Z����vy\\\"z_TYE�mt/�wv�v�U9.�#䭱��v�Ei��ۢ4��ʰ�r5J�zU%$۔�����v�ԩG\rJS�R�R{��Sլ-�vU��B�=Q�ל=O��N�<ښ��x���N���Z���RSkM�(ݶ�-dޮ�kE4ڻ��<\r�]F�ゅ$���8����c?\rH��.������C���ʛ�%@ʠJ��5\\0�}Z3(�\\\\��!A�Σwft�\\\\<Q�s��q^��/Dw�C�g���j��%��ܮ>)�)���2\\\"���2F:��)�ѩ�Q��Sm�V�f,�J���̕���?�(5�~�a�H�-o�����ӫ�}W�K��d�fd���эF�c���\r(�����K�8��ҒPz?QCC����\Z��2Qɼ-&�§�#*�J�Y-,f�m�����08����Fn_9o��Y���Ç�TZ,��c$ct�(mmʊ�b�7����zu/�Y�����8~%��K�s��8�%�Q��byyӲ��:m-M�u�1�O�h�k!���.T۲Nױ����4��!�_E�jp�n�=�9:�j�����	|�gIq���IA�6g]jb�vjۛ�5�ԪZ���=�85���V���τ_���d��c��g¯�Ӿ���Uv����YBͲ�u��rV\\\'9,f��V�q���l��Ԩ�E����q�渖)ba�y�4�n�f��V&�\\\'��Eڷ��6�V(�[iД��)6�F/e�Q\n+rR{�J��jKJ�YQ\\\'�ز\ZjX\rb���\nWGc��|���L��%�:����u�:�H]�c��4����:==N�$�BcMm��Tb���0o�����AY�/�\Z�;��k~fr-=�F�zt��!�_E�u)���u���5�Y�����с���j)>U�Z�l(xlF����\r�\r��D�X̩��aqDrX���9l��ο��r׃Ggq��[�EiP}l�<��;��N���B��N�]�ޫN��`���EȽ\r��xڜa:<�����:ԓ���|s��K�Y֜���V]-��N-�����^I���n�7�O��xH�s\nt&�R�\\\\��GB���g�f���K�\Z�=���{=lcɊ���X�i�5�Wg�����M4��z�Yz%:P�W������Q��q[���۩9R��mcm\\\'��:�5,t9]�����ɪ�\rx�j�\\0#�~�6��a�x7�W���v>[����S�W���ٜ-��?-F��[乱��Ò��w�B���\r�K��65�;��E\\\\U�Ci���\\\"zc˸���t��\\\\��h�<eg5��G��t�z����;�8�n�8������I^��\Zs\\\\��m����)Q�#\\\\�o��!���V�O��C�������<�:��>�����M��\Z��,�_�m4��|��V�S~��\\0E��{85�w�f�s�V˩w2ru%d�t���9q�zI����_\\\'�E�Q�Ӷ.m���|W�Y��-Xi/��Q[\\\"�7g�n:U���v}���S�%�v��#|Mt�����+��m�p���6\\\\,Q���.���Z��(�l�w)(,`���yL�-jC��Mwr9�\\0a�Ͳ��\Zh���p��-�!�/ i��R�i�	_k3aA�dc������sh�S�nfj�.�73ell���5�=��p�wE;)������m����q����d1��C�˗�X:�\Z�*�}m��Z��\\\\oU��C�5e��?���R���e�-5GW1E6Y+;�JD];\n&�Q/\\\"8�/��Ŀ��_���e\ZN�qOFq���<:��R�5etd���7m�I-�us҉_r%is*�W�RN�M��k�n����z0��m�Z�辡�P�kM�m�ծ�=YQ[�VC�ԳVwD=> DR]Y�Ȗ��!;-:\Z ��pփFQ�\\0� \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��	���H�S�U�\n[|�g?�Xyz��W�:�hQ�7��N넇�S�:�h�j�?s<<W������=��@\\0\\0\\0\\0\\0��6d�xsft�w==ŪZ����\n�i�c�%�i����=\\\\s��/�\\0{����p�5��/[�o��|�^���\n����|!d���ty.\r^�n{	A<������^��Q�v���F�\\0M�d���=�F�Tߝ�^�s~���/�\rŵC��g�Z)�sٸb���<��^�}����yMk{\n���O��&��ڙ�-�-ȯcɷm5�6�\n��{���P}�LQ=M��{[�l`������Qk@��lG%͎[�w#��p\\\\Wd����<Z�����=��!���x�]*Iy��M���m]�V��v�-ў�j���,M����B>$-w/�x\\\'�ȡy\nI�c\\\"�{�dd���z�g��\\0!G���XX�QYjz�g�o\\\"�����{=P�H%�ا���UNI��g��mø���!��ee����\\\'���<o��Z����T:���U�v��{{�z0}>^]c#�jO%�&eh���]lgj©��eu̼��=�(����By5�����m�9�������;����`�{u�6>�����&Ʒw��u��#n�/��Gm��gX�2��K���H����� ���)��\n��Uև�כCZh�&�;�X��4g�M6���vԏT��ݜ.���Y��-Õ4�\\02�%�T��&����f�hT�\\0��?ySǿ{��<��V�2S�ө��K�[��ON��JM��Բ�oD��WZ�3�W���6�#(�;/E��ۥ7�\r:N��g�JV�$�\\0�k����v�ibT53*},YA�6�\n��%A�F^�Ĳ�݅`T�ve�?T�ɵ���9Rԕs2���F�bp�z7�#�^��e���ec�q\r�u�_���|�9E-і�RZnB�̉Yiњ�#�yU��{0q*K+���}M��_(���?V`��*��ۉ�^��q��HF�lD��1Zhj�k;�˵��b�dw]>\\\'\\\'é��I[�3�Z��+�];�����nG\\\'�ʗ@��a�-���o\\0�ڶ�apo��r;i���܅��1F\Z����e��F�#HȢZ1�%��Ḗ/���^�=�p�O�F��O#�J6��8�Si����75�r3����x�Fk�+�48^�����W�M�E����ݘ]�6j+����nTbQz{��Fw�WM�z\r�J7����e�Z���F�U��%�6wwCȷ-�\\\\��byzՅ��r7�C?/@� k�%�WFÆ�\\\\-�����kN�r}��iX�x�j�����I馆��$C���f�\n�ٗh�]K$�ur\\\\|5FH� )�^�Ҿ��z��|v;\\\'G���vu���e���\\0��T_9���[X��I��gK�e[�Ri\\\\�]��R�י��9%�i��o�GÙ���\\\"��BZ�z��9i��2qI�yުA(K�ΑR-���e��/��t�a[�6yz�򸧁��`�\r�KhJ�J-�u�3F>[�H18]�m\r�F;k���<sO٠���;c���x�Z8u�R�*��ǣ`����/Dy�և�`����}i�CY�c�q�k�}����ǩ��Eo��Ym��<%`��h�y▗�N��n��i��?��xZ>���;>��U�WM�kZ6��=C`k5���2��w3�ִ�ݑ����:�\r%��_���K~u���K�/�����@�����I:w�N�{	X�=��������,~J�Mko��/FeI���\r3����o���o�/C�r�hu��c����^�i�OS�&�]���r[Cc���OK�V���ݺ.���K@5�;�ʺl�v!�ڤ6<����VIkt�ï�i��h�o��f���8��������;��y�{�|M�ֈ��պ��\Zr���:��~���ŧ�y���G�O�?C��=��8r���yR���G�o���H�?��U��U|ֽ���3�$R�*=n�����ĳ��\Z��F]/�\\\'�࣎��$��ՠ�	[��3������|^W?\r+�s�ۿC-��Yi�=Lv��]�]�k��O�:���}����/���g�1��\n��6{hl�7�Z�*g�ݪ�G��m8�*�m�5\\\\[vc�i�l:}Z�U���^P�U�ۛ.\n�{���b9]�l:o��ֺ�l�]Ţ�!x;�ck��u)R>�����<�:�Y�U�I��=-���&�\Z�<��ZJ�;�|<�y\\\"��3��~/�F��#�b����|8����\\0a��e�˯��t�V��%{�w.=�U)����_�^/���F��-uؙ\\\"Մ�kܲ�E?��z%�d�ԛ�o_�գK�8*\Z�Ӣ2q�J���8��v�������Ѳ�Ou�]^��\\\\�e��U��.�z2�N�@W�l4�����\Z�*!����f��O\\\"$���f�z]2RV\r+\r�mt)��I�jUۮ�Dj��Z�H��Z�6Q\rm����U��zq��y�����\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\01��s̨��8{���|ڍ��F9>-�����������[Q�4���;��TW���+T��\\0W�<<_\\\'����ǹ$[[)R�Wh�ߒ>���I�,\\\"*��K~�0J.�M1�WZ@&ݐD-��Cb*�W�)5�e�A�����o�&��֪B�ya*��A�����f6�v��c|֚��u)�Cn���j�ͣ��Y}G�Ղ�ms���z��/��f��S����L����8]�f�e峁��G�{?���E��<k.�\\0>�{\nE<��Z{(�z�n��|m��~��<���=_�X��S��l�Vݖ��=?Ŏ_(h+�ʰ��۱IA��J��ܵ[9dm���t{�S�UA~��<?(W��/��z��ie�-����5�᝛\n��%@��M�*Y�vk����.�t��k�>��6;�=|�ƺ�`���Pv�&Ʒ%��À�:���������<*��e�g��e&�bW�\\0\r�\r��5ZZ=�g������7���H��z�nz�u_�6�6�]R����mt�N�FJj�\\07�&^���L���3(�՗��I��2�iyn60������ϣ�\n7�L�\\\\*\\\\��vy���h�s�w�8�������Q�j?�^��8�[�1�-����Wu�n^��^���o�T<~�aPm?gпa����;�D�<�y�т1k�]SkS/\\\'[P]�\n�h����Nڢх��<�\n��rʛz��;�T�d\Zꚾ�S���T��,�ٍ�^頩�}�o�*j�@j�ks�v�p~-���Gqt�����pv)���\\0�E���x�vOC55f��XǚVZ����>Wg����eN�[O#gK�^\\\"�	�y&����R��f-nN�S�v�\\\"���Y��?�����/����_��\\\'�Vjv�N�����g�_s��\\\\�97dd�E�U�܍(�Y�YҊkM�g��\ZMm�c4c��~�aPr����ONVM��!}�vn��7��o�8%I�c�p,?)�?�q��e��.J����4�ޟ���v�o�*v�Π������9:��<�(�˩<��ݒ����:?A���^��\r6:7���#޽q\\\\bM�k�J��bRw�CKׇ�O�����8�ʛ��Ss�b�I���\r}��ők(o���c�:|c��*�����EFv�B�t��~�n��6��~���T������8M~R��~��|_�!lɷ�7���T4ԞS//TJ���Q����qf�/B4�\\\"v�3��A��e6���Բ��(�e�\r<˨#\\\"��p|U*	x���n~�p�(����m�hcpM��l8+x�q���\\\\�A_�������_���,�}�3^��f��_��<�=�U����\\\\4��a/��:3�΋��3{4ԩ��4���/�Bܝ�1�)he�Ղ��%B���S�H����-WmP�̲���3F\Z��fA���:���r-˱����{-\r�\\\"���GV�i�o���+�Ԏ��qKI[�>�n�5(���\rY��z5��N��k���Ɔ(���O-��\rV*��[���٦>F��\\\"���k]_�\n-+���-�c��o/z~{:ڋ��-��������o��o��:��^��P��Z��~�8�ؒ����b�W��5�����_C�������r�w�*0��}m�����vw�Ar�3��V�-z�R�w�_/��wk_���ש�\\\'���;}i�uFȃ��\\\'�K�o�.%�q��3�yh.��t�un?�Kow�u:�h*԰��H��GJIn�=;/��to�8�#�$��ў��E�\r�\\0GCy#���V��_��e��{DK�����9���l\\\\|0�h����\\\\�b��я�:��m�{4W�b�Nܑ�n\\\\�2�Y�;�k��w/Fymd��z�2�RW|�O��5r�[����~�1�j��z�[�T��ש���A�:\nJ̦j���S��z� �W�:Gh��\\0�����w�p��:Oi),u~�_����t�E�J�+�Cbi=|L2Z�#��;�f�o��UW��;���م)��6��4��m�⩮��3��k�c��t6<�w���t����<�j4[��p������pkP�*���wV�mc��\\\'p�!%�I5�R��%�zx﵌�\\\\]��:7��ҵ�Z��tcNC���	~�-����;Y�0K��m+~5���78r�o��*��b����x\\\"��;�QZݽ:��1�9��y�ӅN!�B�n����3r���H�ZU)�1��\\\'�L�L�6�U��g�b0T��q�\\\\��ic�s�(��w�3^W/1��b���2��Z�=�rc�nv�ͩ��5��y�ҳ;ofqo5�u�+��?3���i~�\\\\/�ͧ\n�.��ݫ(�TUá�(_b;�/�\rg+乵��U��M�Ѭ��W���*}Jw}@�p�B;��c�A�{�r�g�b�)����%*��v��i�EO�2���3�㚲�c��{�5�uf����^����y��.��0��p�}��̠���=K��|����َo��׻C��[]W�t���m+�,�t���b�|W�wb��%��v|��XxV����43���S$�IK�Uc}x�Lt_.)$��t�����k̘��4���:��6e�H�.��Y�V��^�~8�T��K�p���\\\'gP�wЬ��������R�ʸ�v��U��F��VDIZ^����\n�BhD;t%�j�z|J#m\Z�V��B/��*�V�6�e�VשI/}���{������\\0ބ?o�-YX40�@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\02��Oe%�� ��Q��\\\"�y�����\\\\��/��Y���a��(/���\\\\�����z���ǟv�M.��~�����J��罭Fʝ�����?-�����T���+�s����ۻ<W��/4{��/7|��,��������\n�sZ�/i蕑tS�<G�D�\\0\r����y}5�;�Nΰf��:�L�cc�Z+��_,��n�R�IA�A�;��Ny��m�?�Q�p\r7��~yػ�ϕ��W�G��p����_��n.�\nY�eM(�w�Zn{�*���8�[9��]��;�k�ǖvs��S����U�Q����ˣ�R6�=b�?ߑ�o�x|^�I�����8K�����o��c����Ǔ?�k-W�Ey�ݸR��ZW\\\"<3+O���{�8~D��r-O/�z8|:�ki�����?C�r�jx�������Q����~����\\0+��#|?s�=��r,\\\\�����6����ꝫ�X,��a�Rm�a����K����GM�r��%�y���u�vy�H��B�Iz�@d4�r����Y\no}$}\r�Sk+�}}���ߩ����(Y��������1�g��۳]SA��lw~�����C�}\r�M�;�\rƷv�T��]������W���6�7k��Q�W\Z��g�%g-\Z8��\\\'�J���{��gcT�T��m�f_�O�S+���!��\n0�劲�����ݴF��4�F�N��}��w�x�\\\'�4�毳=s����LV\Z�V����ǓP^�Z�=��H��J�\\0�~�/Q}��i�e�x{R�q�`�L�t��׼��7��k�\\0�g�4�F�\\\'����c����y�i��V�x_��j�8T�׉�=�F�?��<{\n�4�콙E�^Sg����Ŀ��������Z\n�׼�� �\\0���\\0���G���U��\Zf������ÿ9z��4��vq�﬽N�\Zv<�y��=޻T�ӡ�Sl�����S}K([cb4��T��p�`�=*j��w�*��4�����lF��ŕ6�\Z���ͥM��\n�TΧڭ;pf)�U8;�w�kO��v��K��C�����vx~\Z��%�{ge�Yp�U0�f�Swr�n�~G�aURg��M?�_/���w�xG�F\rK�*Ζ�\Z��$��c��z�=k�(5m��i��YB	�)�N;�j�z�S��`���Y��\Z��?�a���S��`�a��G�Hۇ����g��kwc*��Z�JpKs+I.�]��8�*�֜�v�M]��4�B��a#�po�iҜ��(h�r��O2Ω�g8�F)%U���s��X[3o�7��w���_���<̦�o�;�h���C�QL��ryC\n��p�s?\\\"kAݻl�C�lr[A�p0wi*�ݲT�����R�s�BK��#�y�:+q#�\\0O�5���F�r`��6����4;�\r�����Y����\ZokN>��E��;~k�f>.��\r?ۏ��t�pN�v�(��t$t�Dt�%��rX?�8oݡU��EG+n1I�RH�ц�����1��%׼�գM-�9��\n����v��i��/��+���@�v953(�∌\n\Z�&�fu\r5D�\rw�%F��\Z�9�bP\n\r32��eQ�0�����2(kt]B�#*Lฮ�A���;\\\'�p\\\\_c���e���	ꍇjW�5r���HY׾�O���|N/��w�~��9	F����[���^����;c���u�0���mk��H:ˍ�&0��s,��`�[\Zi���uzз�^�(�XɇMՅ����jY<�C:��p��`��\Zy�<Q\\0`p�E\\\\���b�@u^-�����N��tgc������/��yt�f�V$v�xjɯ�^�%}�����u�T��Κ�_O�gL��;�oe��\\0a�%�X�W�\r+{�$J��D�7;G\nF�t�;�获�ݝ��b�[\\\'���+6u���\\0���*��v��Y�$�����3[�;G	G�Do�o�����F7����NaGBQ�������\\\'�O��~��\\0q瘵���o�EwL���߻F�5�\\\'�a�ۻG �p�*�t��ΡtO 9>��뱰��O08W�Z��>��z��O����a��� �;�ղ�~Oç�(��G��=Y�a|����䎣�<m�gէ�ht�-]���dm,*�Yz�\ZJ��x2a���N��t��W�G՝JKWs��YⱫ�#�o/��%�\n����P%���y�\\0iPQ��ݕ����a�X�o�:�;�i�GB��yӰ��E/�-~\\\'L<%{8�+k�c�v�\\\\f�tߩ���r#�����~��~�\\\'��\ZJ�Dr\\\'�3r�{W}U��sӺ�a�8�~�>��ݎ��|9�X�-;��3�wz�ۍn���m*aS��UӷA��mruh�L\r^�K�O��鮅{�t�;N�����O�c�4��;�j���?1z5��G~;�c&m�Sfw���U��x6�{�4��{���\Zzjx��\\\"���}S��4�8r��x���ʗ�4�-y�M��Y�L���A���٣���(��w���2���SN���<k���)^�Nv{l�ޓ^O��^\\\"��:�-y�ϋ�Èqf9+�߁W�3����v�̓y�Uo�:�����距U����D��I��<��\\\"%&�������;5%Oī�j�ӧ�WO�(�qv�r�>&ˇ[X�E�VA���U���t�įv�F��ep��l:o�\n��[��N�jS�Y��ЭJ~ͭ�5ŉK8�m���F)ns�Y\\\\ھ�\\0=��>�{KSۅ������{I��ѾA�mmo��W�OY���p����f9���?.��RJWUvth+U^7;�i�j4|��:\r4����8~\\\'\\\'��p�o��]%�u���i�]R;_\rA�$½����<Z�Mۡ�_{���=����m�кWo�[��8;G\\0ź���Sc���\Z:kvc��sW��Uz��n�J�8�j��+�u�vtJ�iߩ�[�llb�Ur�}\r��;�*��T�K����\\\"RMi\\\"���V���m�^�teA�؋]X���k}J+.�e�ZW}>����k[��׽�-�d[[-@�~\Z�4�i�R�%v�V݋Y�J�|@�ob�Hv�vr@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0�����}�Ǜ9��IR�ǳ�sgx�G.o�u��=�O�	ys��>X���Q��}�mo�%;Q��f|��O\\\'��?����3��R^w��_Ϸ��;-�\\0|Q����7¼�?\\\'�wv��ǅ����W��~��8.�m,xi	,�_m��OM�v��������h��k4�����{������<I���_d�]����<���)�]3��{׽���M�����ko��O��pJ�~>z�[~��o��zo.<���zNY�^\n��)ڃ�]��l�濉�8�g���5�����v�\\\'|��S����s\\\\b��k������{��1�������[�\\\\��)8�{��Zy���PӪ>��X��a���G����G�ѻfIe����<�%W�E~�=O����0��g�dj��w�K��鳔�GМ5J�6�^�m�:?m�,&�����N�|�u�Z�<��(����������g��|9,}?�^���.\\\\���P^��.��i?�^��Y49��-��^�_S�1�=��~�;h�6;lOty]ڮv�DmwJ�ݐ�W��^��u�ä\r5;��!Ӳ�7;�t�SMN����sk�]v��j:w�J��^�w�1ԇ��Q᝷&��W�\Z�g�X�n�cl����/��S�p|#��=���z���/��kn��#��N�G��AO��%Ӽ~�/U}��7�ޛ|3�_�?�����Z^g�\\\\sN�3���\\0%�>�>���3�j�,ڔ����ӓ����Wz���a�VKs�Y9�ZXZ�h�g�ʓ\\\\:��sg��	I>�X��.D�m�<��n=c��hQ�\\\\��x]�Q��>���\n\\\\)�V׻�����8bmn�K�{T�w�p���L=���Nʩ�ft�\\0�x)k�;2�ef�>^]t¡tZ0��Se�M4�����C<i��6µ�?\\\"ʝ�64���;� 5�6YS6cK����ݮ���l�d�aZ��S�v��+�S�#��wW]N��9x*��Zk�.7�J�-;TO��{�S��<��6��g��U\\\\����	`?v�Yۚ�g	����N�#S���Y��uj������5�P���^��\\\\<-U4N?��n\r��`o�v���;��[�u�4>���7��\\0E����2��?O��<��zi4���P}	�J��Σӡ�i�\\0S�.��w�S�]���_�����P��|��,�~Y�tN��N[���g5���G��,�n�e�r��u/�t�Qo�N���*�ᡑ�B�x��eP��RyU���ry<L܌����%@Π�*\r~K/#�x�6�,E��}�N�q��bW�?�#������S[������ƚm{��]�\\0�!�����Vc��%��v����|+��~��e8�6Ȫ�����:%8٤�c�dq�S�~4������?#a|;���G�QK*��#�uT��Ê鷔;t���!c��9���&�蟪8�S��8��O��rt%S��nO\\0�~��a��(Yjf�Շ-���mY*�{�U7��*`bQ��	P�eP�,��b#���#YE�Ub�8.-�T�?�~��|�;�B��o��%\\\\�-ٶ���S��blr�#k��s����-<E��}Y��~!Z�:��KA��~�m�߽k�#����#��_�J�385�1�t�B�B�x~:\Zi̽K��c-\nv����@we<��ͅO�A��k�>����[`5\\\\n�b:#e�X��`u>2�����~�_��v^7��G�u�$���X�Iy���໌E���:��;/��1��J�szw�+��[:$����Y�Z���<�Z=DI}A|lZ)^�&��Z�����|�����GW��x3�pto���\\0���=��E���tj�m���E����Q�j����Aڸ6���%�sJ�_F�<_^�ڀF.E{o�V����~����ǚ�1�&��ʣ�b+���/�aZ_�-�AC�58f��t��(x��CȞ^�~M5\\\'������(uF� 俸����M/�i?�%�#��i�ԻL�X\\\\*���؊�=��_q�=?�xW��a�\\\'����4?%a�0�F�:jڎ]\Z��:X�W=�8>L\Z^i�󃿁p�5y-��żf;�p�:��g�wN�U���\\0EVk+ٗ{��C�Dlwhrx��O:�V��8V��~�J�V��k��}�E��\n�wo��x>���Q�od�j��n����*ic0�|�O��*0}�W^U�t.�b�3\n�wO���c��C�ܽ�����N���e0�\Z�]�t�3�r=��;&�xj��Gѝ�A�����Cc�~�ʵ���}\r�N��k�zl;�#g����yWj��s�����t��t�����k5��)+J��;q�g&&�V1�>ϩ��e-N���糞�_�xz�ܕ;i�x~D�s�kj��G�*j���\\\\�G�v�IC��	�i�����M������9�Ӡ�W�_?Sk���SX_je�������|WO��1��~��:k�Ǉqt?,Wrߝ����-��&��#�͎U����z���SO��ݘS��&��\\\'�f0�Dv��������R���{=��У�m���Mv+(kkWV���:ko��t슺w[����6y.����U�K�W����p{u*黄kr&�pMjl�~((kwzݑ:z;�y���Jʟ��P<S��(gX��\\\\��5zu;/B��t���:���#��}���i7%c�x\n�|5����<�+�^�vynÿ9z���.�*+���|9�U���ڽ6��\Z���y�U��q�}�r}������?v���]%���i���#���ѣ���N�)[K��8��nxy�~��\\\\��ӱ\n:]/����N����k\\\'����\Z��ik��=��<]f�����L\\\\pt�=>�+�t�vy�U՘����ت��)�ں=.Zb���I�%��#r���q���$������I��]���G�Z�\ZfGt��rj��(������]�V��TӷR���/gk���p!�\n���Y�lU��Tq�\\0vr\\0\\0I\\0 `�\\0\\0H$U��*Zt�\\\"�Sջ$L�}�\n���v_��:����-Z���\\\'�y����?»�|�燥z+�y�m4���k��������5��T��?S��|�Ӝ���/�=u��;)�|拾���_�~��{��W[��{�y�\\\'��2�jt>z�2-g�ׄߩ���zK�ལp�a��+N\\\\C\\\\ͦ����k&]ݹ1�vyݍܩ7���QlnS�����=X/A��NN���u�>�V\\\\{<��f]�Cp\r6�\r�杇�8���A�kOŤs���C��/~�n6��e�f|�����T��S�l};Q���_��گ�ߩ���\\\'_���>l}�\\0U����l4��_�����r]\\\\t=_M,4��_�ϖ�ړ�3��{}7�p�9�4\\\\��m?=��&�t>��<��*�2V㊃J�4}�9��M��lL)�SW��u�����y���G��E�RJM�6�՞OSf����y�l��6\\\'Aa�¢W�;\\\\��66��e���~�2��\rF�\n�[�1���8ἶ�<}7*S�2�י�;>�.6�B��;e{t��:��6��_���z�GM<���F�8��WO�Brj.�W�y���WL��<���|ʓ�����c%��:���/C�~�k���Қ]�z�3�\\\\���$�Ez�\\\\�<lǹ\ZD�Vfҧm\Z&4��tj*vZ������\\0���[�!��ck�C��\Z���#��nwd:~DV��U�����Ы�fTj:or�)�7H�t��):VN�x/o���.��/VyӤ�W�:������΀�J�V������/&ݸ�\\\'�E��{!��ߝ�y���.1���=��zid3V�\\03�9���ᚕ�����X�\\0�C\n�f߉�G\ZSo��˯t��a�WX�ކ8rԭg��C\n���9,>\r�I#.4����BpZ�n��%��R�ԑ�ݟA��]=�y�IIX��b�D��l埆��>>�\\\\+�k�z<\Z��mmn}ǔ��l}��o��FU���Μ=�9G��[næ�ԥ���J�׻0��C�%%���0��/-�F\Z�^0�c4i��?\\\"+i�T�LѦ��w?�uM�5�Z4�5�2ʝކ�i\\\"U;1�kwc��6T<<��\Zʟ��K�\n<�}{�^�}p:Gm˓��\r��I}����-kF�Y�7\\0ӿe��7�ϟr���6��ќ�~[����y������_����\\0�K՞G���8����}�ӷI��\\0���g��az�Z铎�U�^�0Jjq�i��+�W���Uu,���*ɶ��Z?#���/��{[w+՜Oiзy:���v�ie���R�eSKM��+���ٻ?��}?G/��R�C�vr���[jO_����Y����O���9���iR�ړ�G\r�\r��\Z��\\0:{��s��sfU��\\\'��WrPԲ��@�(Ġ�J��3r�%B�\n	P3r�O\\\'���\\\'���~K\\\"c�@�pV<ߍi����>���G��[��\\\\oN�I_�0b5_�N�͛4��ϩjt���m�d��Xj� ��-i޸Z�0��~���4��\n�k�S{���8u%gg��va�[��~�=Q�t\\\'s�x~�p���gA�l�D���\\\"���R�e����������M+hwN/�Y,����:o*z=_BK�����v�Qƪ^��gfs#����Q�J��_ad��By�@(?xF^��M.lr˧�9l�\\\'�������w�y-�h��U���%lJ����K�נFKlp\\\\]G�����p<b���^o�m�\r��ߡ��tC]Y*�)��Q�^М�ⵊ���w����Ԏ/���+��}Y�4֠i����o�9���xN)Aۙo��q���e��V�Q�9�.�)�j�.w�Lc���n�/�%yaꤺ�?�`�i��X��ɇ�U���^�Zz�n�R��ߕ6la�8����o̿5���;��������Q�ݢ4v6]4�#�Kk8x�p���p����\Z����?S���;g��f���GVq�X���t�;GB�qK����u����v��t��F6W+�B�^\\\"��\\0�zu(�&�N�)�e��c��6�[��Ay^5ɵ����0��Ĩ���*ƥo���\\0���n*����)]�E��i���Q�YRߤ~�꼝zÂ#|���\\0J�R���m���}��q���,�6�q/����r��.\r����[�9����q���\\0ݒ�9���1�����y�m���Ԓ�Yꑂ�O����-f��T��$X�|-�8Kt���r�F���=�����P �fJ���\r�-�60(u&0fuU05�3���N�<#��4�ݕ;G����S߼�_R\\\"ǛIo�=�#���\\0Ї�<�Pm�ˑ�K&���?��t��)��I/�R����W�|\Z����<�P��\\\'٣5�f���o�c��*>�Q�5�gt솝�LoGܯ�5|3c�T4�rX���9,`y�kT���ſS��\\\\�N;����D�v��K~I?��4U��Ù?��>\n��>yB�xsr��--/c�����n:��\Z��i��b����E*qV���vW���0���YB�RpW�����|�?2�\\\'1S��XSs���B0M�8��J���joi�{�?�1�¤=�U7�:wdt��1��Hz3��f2��O�r[����w}H�~K�O���AS]�]��J���`�*�~��cE��4��;��һd��^[jy�v�����9085\\\"-�6$�ӧ�����s���?{ݴ��gN;-��e��ګ�����b�u�����=}Ǟe���Fu0��E\\\'\\\'%d�z��w��jG�������T�I�r��{��p�_���j�=Q��Y��N��W��8v�>�?\n��F���)��=��xPp��*Zڣ_i�*��y��&m�敱4cIF��W�C]U�kݽU��u���y�f9.5�j�Rv\\\\����m6;̥��f��_Us�va��Δ�㬥c�v\\\\���/\ZS�x#һ�VT�՛J\Zh�+(t<�G��Sk�#�W���]7�m:c�[�MGLwwz�.�J�����[���6{��O���m\Z��]���ȳ�ef\r<7��wY�%K~vu�}��4Z�G6���\\0���x-Og��O,]����g�֟7a��%��;�%}�j쾛���K���<�	��v��!�?7C�i�*�������?��,�����<�ۭm�d὚�=��)߆�m���g\\\\�R��(��;}gm��|�5�����~.�z��\\\"�eIF���w���3��5�����~�vkV�\n�~V����1t;����;�s�xr���]�����y>���m`p��ߡ��T����w�Q�v�O�u���������UIJϠio�/Z\n�M��zk�im��-�l͗�x��*%�]���I+�1��]��RItZ�I�-�ש\r���RWOS�[le�ި�K�QG��Abֱ\r;�R�vd5�.օ^�袒���y{�;ue���,��Hvok��$��\Ztan���bP���D��}$CV�F솝��5�n��Ψ��{d8*�aj�{m���z��^�O7��(R��<�ZQx(s+.I�B��^�鵕�kM���Q����!%�ix����%<����<η�����~�q\n�qE�iΑ�=D�\\0���}\nW��,D���6�SN���^TϘ����a��_M�����<+)�����Ϡ;m����Myߡ��4[̗�}���+Ϝ�G�|\rAG���\Z~�t��3�)[���κw�7����\\06���.5_�*�nw�}M�S}��9_����g�o�����\\\'_@�F��&n�F��||?���_��݇G�/��Y�`�v�������c�Y�g���������^�s?S��]���\\\'���S�ӿ�G��;EG+��Қ��|��	��������)��X{�ݯC��Q���3T�ª�XBK����-�/�����/�o*},dT�3�Z��Z)%�*a)�V�MxI&mƚ.��\\0� І[�[a��\\0�5���QQV��]\r�O�Rѧ����*��\r�L��\Z����o���ݒ��������{�����t߀V�w��ٷ��:`�I�*���n:wd:a4�t�:W��n:v*�����𘶾U��Z�s�J�ř[O �Ξ*M���ӷM��?S��u�\\0C/B�)c�T�Y+j{eԔr)[��ON	��s�;.��9��O���wf����w��j���a�V־���d c��g���{��c�z/\\0e�\\\'�^�\Zs|�YE>���⌿\r�(��Eƛi�$��ó�|����7x�6�q�~����xҳ���3�{;����l��շ���E<�߮����oM��~��<64m^�u=߆q�?�Q���ھ���5�uO\\\\�җ/\nP_�/S�F���zIp����N�\Zv9V���\Z~�,i����̑� ĩ�P2�}ɰ6Ʃ�Q��D��\\\"m�Dr�TG(M�r��fQ�\n:��)�;q����b��;�)�{m�����S����M�._��S���;,���;���\\0h���ϣx��=������v��p�F�>��i[�g�e�]�U�콳E���\\0���g����\\\".�\\\\��u�\n\\\\�1���O�g\rڤyxgM�\\\"���A/�\\\\��W�8n�i߆c�\\0���9�*�j��jI�Ʌ?d�Vv��v�͡|�o�Q�e�vg�i��/�����y�w���՜�\\0f�O3����>Ig���(��;f�<ʻ_�~������C�*)T	�S(�ݭ�e��CO2�6 £х:���D|�rx#//�<�P6��mz�w�T�\\0���������x#�x�?�J��A���I��\\\'󿅞��+l��:G�Æ��z�-bT�8~2��z��C����?\ZF�7^�\\0Jā����z/��\r����=��G���o�`��{kG�cl���!�t�k��\\\\i�\Z�p�:<#�^�ew܊)��K-�#q�S@��`�\\0v��u�Z�gl?yY��� 1rim���S2����+#�Uyu\n�1��D��ƣ��/������>S��mG�R�Gd�g_�x�#��~��ҿ�f��\n��5�Jӛ฾�}}�����s����o��N�ˠK{�r�le�[��SmlDo��}}���l�{��Nů쵴��z3�y]�Ћ��p?����q�gb�~��%|6/���������<����C���9,�L���mw����U���6-�/��n-���}�Asa_����{��\r>�l��7�����3�(ٝ�����׃��Qؔ4>;�<�/�F[#K=�yF%=����X����O������-���?�j��_�:�[��ˁ#|��)[��o�b|;�t\n��=?��lS�g��]�;���/�\\0v_qΨ7��#��d��\n�q��/y��-��{����Tu^��8�+�-�?V޸6*\\\\5����9�-N3�c������g2�lj$�IKĉ�>^��9I�*m���=�A<������\\\\�:�i������z ��y���e���B��<=�2����>_���xz\\\"�]�W�H��j�Nq�3W����#|6N���:�5g����gs�~?�q�=�w���8%����Y�9ut�\\0�i+��G*����r�go:�~>�	�䟪:�\\\"ޞ�i�ݮA����K�~�R7�^��k��Z�(���~B�#��~��-�e��sH/�����g��\r�B�[�S��h�+�/������*�u���Sü�?�1��Hz3�r�����W����=��K|�Ģ9L�:l9Hm�F�[Z\n7!�._�r��z�\r�׶Zi���k�o��G���=��NxV���g�J+�Do|0���G�R<�3^t���m�C�{�y�/զ��k/�7N�:~v������;a��yn�+�;$���#����v�M��-����r�G2�?\n��G\\\\<�ʞ�J�����J�9��;V�\\\\?ֽ�V���Wzt=���idݿ�~��UK���ƙxUF�3�vZ��I������U���R��S_����^�V�Ь��iBȫ�pn54*�鱴�ekp�\Z������!���kwi�������%����Owtl*z���\\0�n�ȗN������=݂<\\\'�ԥ�X���GS���O���x�+{l������ģ�^��ۻ)�7\nRk��^��F7���{d���H�Yz\\\"s|L|���b�SJ)o&��<��mUsug���N�e�Yz#�!��y��燵�;��\r�\\0�����&�8�ϩ�¸\\\'��՜�}���^Z�Fif��m�G����d�9��&oI��+�/C���6�T_�����?��2�iY?ѿTs���eo���vB���_�Tv����e-��w�/\\\'�1y\rtܓ��J�]��Ҝ)�\Z��cNM����;�ꮕ�`��+-|L�\r�k�_\r\n�����[%��ʲ!�dK�@�R�mkK2�\\\"��1�Y�������(�{�ҷ!��ɗ�U��TҲ��?=���_�e+CV7j���%\\\\p�I\\\"�\Z�,5�6�P!�p,<�\\\"m�D=@$Zs�������}\\0��e�+�P���OC�ó<�T�a�|�Nʿ^�����B����F��J.4�4����W��t뺹�U�ʱ}�)EKG��I[ޏU�n�k�Ppnϙ/q�5*δ����Y�2-��w�����w����}uv}F���<۷Zid�~��h�J��g��Q� �V���w�����O{��ؾ]<^kEEi)6����R���;M�����>����y�<�W��8ҊkU��Tݍ�t҂%����z�[ۄmé��z�Ȣ�+���s�Nݣ�����<���X��o¸�7�}A�Tr*�G7����*.Y��h�eO�7[���t텨�\\0U�*q���&��g�y�;`�?�o�>O�D�Q/����M�q�����hsU��!���4�U_�����E��+Y�S�3x[/�oѿFr���Mv|�Ɗ��g���$s�f�-�_��\\\'~�>��<\\\\�\\\'`�9f4�_��O�2\nN9]�Tס��E�Γ�d}Y���e�]5�x�M�=|_h����fT�uN�m��~�N�x�E�Q�S.��2�x�\r�(��f��(\r&�yt�<��e�D��h�\\\"�)����9Hq����y.l<��W;��8�\r��;�����~�8�i�v8n/������^�bt��8n/�|?�ik��в�|�\ni�Zw���]N�$����%Q(����ʢ�I;��>�%�O�{���c|�6x�ڻKMOq��w��&xu4�{GĘxG�vu�V�������~A�~�}��,��ң�9>+��A��虅�^1\Z��ivz�g1�B�m�c5QY�=S�zmdW���d��5��\\0�X����G�Ҧ��Oj�Hvqߺ~��+��y�odz�g4��W�r�;\\\"��vw�Y��/S��>2�ꨭ�e�$�]3�oR�,�uͪ��*&H�ŔC;c�%GS\\\"�<�M�rC/(pІ�yN��\\\\?����YޜN��</��W�\\\"��,��7���	�DSWW>��5�9m�\\0B�Y���x��[S���S-^�7��]�u���6K�O�<�E:�N�����{��\\0ک��e��8�irc�p�{_	C����ӹO�g�|y�n)m�z3��U�����E/S��1wb�q�f	{��Sq��B#G��m(��Z4�VF�۲�kN٭Fֽ̽Q�nt��b�\nտJ/�����k�����=���D�\\0�������8��\\0C����\Z����\\0?Vv�Y�\\\"�GG_����9l�Q/bRDgj�u�Dڜ�aD��9QSlj%�ndQ�	�>]=㨿�k~��=���;����������ov.���\r�\\0��Y�|�jt���\r��=��PguX�|�����Ŀ89����\\0u�w���$���a�����Q��`o֟��3��5�Q��\\0w0�/���5��v���ꎉ�o3�8�/��]�����ti\\\'�.����C���k՛�6�����\\\"�/���n����.Pѕī@����\\\'/�Q\\\"� ��\\\"�6�W	\\\"��)jSj�O*�Y\\\"�\ZM��\Z��l?��#��F�\\\\?�A|.7��[�fW=�+(�2��8!j����;7/��8\\\"?��?��N�����ؔP�2�؞R�ڸ�_Y?�/Fy��}�=3����\\0R^��CS5�.ݓ���K�]y��vF��!l&*ھ�>�bQ,g+ݏ��yLܨ�Vv��C�����]��B�?;�Wiv����\\0e��9zBQ}���\n�{_q�\\\\.���-���⼱��}�Z�m�Dv��U�^\nx+�rX8x�H�e�����|�����NS���������n���y�ݯ��~��ki�s�GLj��c��x�ʫ���\\\"�rY�/���l�i�i���g鬗��y�D�büv|������ؔN�����/�����3j�:��x�	g8�~�^�����y�B��6ߦ��\\\\k��Lo��&���\\09���xۅ�i�9��\n�ouIQ�~RyC;S�$d�%F��/��;O�����F�ø8i���QMeeӼ~��\\\\/�<ѭ�c��%�`����-Y��9�/}>OB����;S��_�%�#�&��=3�8�\\0b�����G�Ջl��~,��=�G�7�\\0.��E�&�w>Ȓy�7�����L�=��[�yXq�q���\\\\��	��f��y�\\\"�خ�^������Ö]�簲��%�#��ǻҍ��~��-��^�mJ+�W�<��m<��n%xҗ�<?���X����Wg�J�Q�x��5�ğwL<;�cѶ1]{�z3��ٝ+���?ׇ�;͍1��c��(�yG)��)*&^P�Slj#�ʡ�o<펍�`�թ/����8�ݞ��6�N��<�PEƺ��ƴ�q�}��؜�?��k:Mm�=��G2^4`�\\0�\Z�{G�8�*�g��Ɯ��M�M�>�����p�!AǥX���;n���w׺���9%�������<:�􊅶!�����/A(���]+��J\\\\3w�j+}G�Ս�Տs�n?ݛ���xuKs��o�ox��-��JO�(�\ZS�:��[c�vF����R�η�1쪝��UӿCo��+(/��MáQ���t��tÇ��ධ��]S�ަ�v�*�aZ�[nYSI��4�,��c]S%���T�[�ѐx?kt�x�����6W:R�٣�v�N�I�_������=\\\\W��l1��{�c�O��Z�:^��5��{gc��5.�֧	���+���Lb;^��CM���;_�Ǌ�~;�{Ol8�4�zT�ք�ݢ���\\\'Y>�3��o?S�	`��/՝��8NͥJ<!�R�M;J��&�gcu(?��\\0̎Yy#���O\rQIi���:��aU%���G2�A�+.������8�����ۙ���xv�� �\\0�];����]\no+��Zʣz�ֻJY�T�;7lT�x~��\\0V�c5��L^9�(<T��5��`j��v�Q���!J���%;/�����[:rq�u[��i�լlN��J�M��֝��j1X��ԉh�2Y�_B��LV7��Z���VZ1{{��{�i����?\rª�E$��f�W)&��wܣZ��^�[l���Q[-K7�V�R��4KL�;�{���ѝ\\\\�E�kAkI���M�@#�&N�ᾈ{�~V�n�Z��\rY\\0w!^囷�����-���VZ�?p�RVZ%�j&��ͪ��ƢR�-�b�\\\"���7����|�S����}�o�C��_��WА���(�����)Ao���z�!�^Ǎ�\\0H�8���o���<<(�p��o�g���Xlڔ�\n�:ߑ]��y5����n���*U3Znq��my;�S}�^�o+^�K3�(ڞU��]d��l���N�ʱK�\\0\\\\?���V\Z9ת<w�\\\\�52X�TjSqo�TJ-;#ø]9f���^��]���|�\\\'��<,�Ս�����x��{�̣9exĔ����Ş3���>���\\\\�Z֦�a����;Ft�|4\\\'	F�M5�v9V����z�k5�w/F|��i�!�~�~��y�������[tg��dܸ�����O��9rxz�`tn�J�ro�����m{��^���R�*��*=;=����Խ�;ﮙx|�Ɗ��ofp�k��q�m�����p���X|c���v����f�V��z�X�Թr�+oaz+�oʴ^u����/�XJv��x}G��ö�Fڒ��ndQd��Wj(Q.�[��6��YD����m�@�DeQ%@��0�^�ey<A����Rylf�#�l.$r���G(:�\\\\\n���Bnl$8��W���)GG���k�2�9���\\\'�c�۸�^��o���\\0�4��Ǳ�Q�S��>��!��}#ۻ(_��_~��:rxo�܏����k����#m[=������\\0C%�3�����L.��٭>\\\\������O���A�~����R����G�a|�\Z��,�̼�b�;��;?�J9\\\\�R��5.k�eo7fy�8\\\'Ut�S��:�O*�^��f��\Z��ֿ擧��h��UN�7:o�+][�X�1}��w=���N�c��\\\'I�-o��4��B���S�ĩ�߇�vv��4�^yz��/��\Zr�҄�MN[����^��$��Q/�UG�t�Q.�˦mB��(�墵ڎQɩ�\\\"R��J&V����e����*�������un�0u�|\\\'V���O��.X�ݮ�V��<?	Bբ����q��p�]K)Ӛ�k*r��z�.�d���\\\\�<E�����=��p�\\0\\\'��;��k�ZͿ-���$ǻ�������zq·V2���viFɻ|O8�S�dVǪ�����iU���,D���S�04[���Z��\Z��w\\0��^��;J_���\\0�!��w ��\n_���v�Fur��˖�d�eg��\\\'�汍�6��zt�����Ȭ��ڒ�N�l�۫�vy\\\'�o�RN�M�{+�N�淴�\\0�gO��?���?z;����W�ǳ�9�عԏ$�Zm��wz���Qħ��\\0$q��_��u�j�F�y����9��0�p��C�JpN������n�]�\\\"TK��JA�j$M����:ڊ7,�vZ1в�M�������r�����w�\rK����z/)�8�?�*��8i�%o��`����XT��=D���\\\\G����g�����c�L��������?��cc��x_����Ċ��G���/g������5R�ӌ\ZM+���y�:k�hz�G��������o��q������Ӝ9�ՔUΆ����<_Bu�~�)A�NPv�����k,��+a+[�o��|]��������G�0d4�O$�¤\\\\g\ZIJ-Y�vnr�q��D5�\\\\Hq\\\"��������/�6��25a`�Q\\\"RԵ��(�j%�M�%�I�^�6��p�c�T���#��=Z�\ZQ�	M���Wv�/��������)���qk�\\0���f�����J�;4�L�c�W��B�\\0Mz��E�o�������Ңjxy�/���8�9^�򢱶�.?�+~�^��޺�����u����\rY��g\\\'n+��?��<V��/C����&ߥ^�aQ5<9�}Չ�[�/(qA����hC���)�\r�8���53�)�CR������ok�:��ϡ�8���S�,5U�r�*��c���1�麕0�c��Z���{8��������x�t=Y�T�g�ש�{=K����=Ya��ghr�#^D4W=��h�ѾM����ȸ�f�v��b��lX�����v��Z�\n8iV]�wRQJ����l�ݞG�V![��7��|��yV&�l$��Sj2sRL�5#y7���[+�S�;���;��\n|?��u���1֝���|����;\Z���0U�Y3����MՔ�e���uE�+�UO2�x��x�׾~�����g�qk>ƿ�_�J�^���_�|\Z��3�Qg����?��\\09��ӞW�QD���|cP%Dȣbܡ:��Y��P��\\0aݴU~㸨��r�Vc�S�����U�i[k�;�#p����7��ˆ�.�	Ԕh�>��SK�����0/�K����ᧆ��t+G�t��2^\r!yr�t�ӫʮ	Rt�\\\\��&�N��龈���(��~�/��(���g(�̟v��cH�ݝa�\nٞ\\\'�^*�\Z�h�r�d�և^�;�d1����\\0���ɝ�5�~Aī�\\0��_�\\0��\\0������_�\\0��\\0���|G)t�����|&kE�	��c��9B�x�C�*v�zZ�����2�nkC	Uß��+^�:T8#=s��.*�W%oR;㔸ǬR�⢿Uz\\\"�,�8�ӊ{����\\\\6����[�KwN^��LToVM��㍃��b��NI/fym~ΥQ���\\0�#7˷�\\\\�dq�0_�Cѝ�D�=�d�̫\r��:�t�ԋ��z$��ʍ9�{���Ȣ�Q��D8x9I�\\\"m���/)*I�C�v���,����C����l�%�gX\np4�9BM˙���k�I�\\0�E_�O�=e:\\\'wI�-����g2�$`�\\0�|��/w���ٿ�=�b1�Rj�.�(6��ކ��7�������8؏?S�{r��l%N���_�<���&\r�${�i\\\'��W�X:���ũw����P�7U��c0�����i}E��oF9c�;�^�?M��DY��J��J��*7� �\\\\�t��)9p�䶌���x%v��yI�K_<�%��ԍ79&�-�y�N�3)I����V\\\\,������쬶;wc�|q�M��?�g�\\\\�S\rZ����[Zu9��!��;=\Z��T���=�E$����U�p����Ggq!�X�!���(y\Z\nnQ`m�����2(�Q!�5y[[�\\\'��6���0ܼIY�+K�GD䶇�qgg���0�*�6t����)�C��b�\\\'�\Z�N�Gl3��S++�w����3�`��WNu#]�)F��v/����#�Tw^��9���Ru\\\"���-�e��y̦�>S�̣�~8�SP�\\\'��^�(5V�k�OqFAO?�,-Zӧnf����\Z���icq�#<yt�kr��fy6\n������S�5������/_��?�ϑerl����J�r�sy�Ż�M�Â������W[����\Z�XEi4}G��xy������\\\'��4�{���\\0�o��לk�v,��{w3����=+p�7���gX��CQ�?��}�P��^�y����3\\\\��L\\\'w�؉r�OM56 �KN��e��x�s\ZS�_���k����E4�����N������1�]J*�|�u^㍩��9\\\\F.�z=��+��e�����J����qqg&��^��BnD��6歟Rֈ�����J\Z؆��ñY6�_�1��,�b�jQW�Q�f�~Ee�i��C�I{�D?~�v�a�:���愮��Bl,�m�h�&�/ub���!h�[\rY�6ԝǼW[��Y\\\"%��F�Z�2�k}@����ܛ]���I\\\'%�숫�M�X�^�)�[ÿ�~���F��:�y����ͨ���<����K<׾B�<;�I���z(#��ŧ�x/����T�ez>?�k��}���/y��x������c�i&���@�\\0G����{�?C���)���q���xA�����k:i�ݛ8�^����,��r�#Mm�g���q3QrJ����ϑ8�J\\\\GQ�om�b�\n�v%�\\0�/F|�j�K4�����M�r�ڿ��8�f�u�����V+O���:���킬���Y�$�ߊ��8e�~q�������8X��9�8_����7��x|c����ٌy�|>�w����a���^��]����O�K�>����<�C���z�n8��,�]E�P�91�#�&H��.4ͬJ:��u�3rbP%@̠J���=L<���ȇ&��k��l8y��@����/S]��Sc�ć\\0�MyB�\\\\M��!ek��OAK���J�\\0���c�qg	Ƹy��|(˒]ӕ��o��\Z)c\Z����d��=��~���Sk�{We��e}���Y����O���\\0�s/C���}��=��c|�\Z�җ�����<Lʘ�z�gQ_���vr\\\\K�8ԿE/CC����^~�)ĩ���~陉���)^���U�((�j�f�0ëԿ��\\\\�k��ov���I�<�(غZ��yt\\\'�B�Q�gj(��%D��KUQ}IQ,�������hĲ����\\\"��)`�Rڋ4]\\\"llv��Ƚ���lv�)$ej�4WP�F)�żq��6�B�^\\\'�����W�\\\">��$��M��?�d1�E���c�Fr�%c?q?Fd�������/�8��O�Xq߹�?M~�;k�C�x�����\\0?Vm��0��C���?��;���D�Y>�M��{6�X�G�~�w{$t�Σluv�C�����˒����CO�{y6�Q*/�d��Sj�Y\\\"R.�KUK��E�TC6���%ļcԞV��l|����?���o�(z3�y=�\r5�r����]xo���������H�<�S���}��Y�\\\\�а��\\\'Ʊ��c-��G5mN+�#~\Z�/Տ� ��G��6�K������w�\\0Q���q\Zz躞��;�����fqz9�1��D4�̭��W�l�e\\\\nf�Hk�5�&�U�eh���[bh�FV�q�.ج,dhr�ږ���|IHE����ڊ$��!F�FՊ�����m�o�K՞��H�x��\\0n���z�9;p��C�\\\"�>��\\0K�GiP:�G�o:_z;J�g�9o����M����W-�qq�����ўm$���zn>6�b?u?Fy��c\\\'������P��\\0�K�;\\\"8��O�W𝓕\Z�yo��8��e��cl.,����b�!ek�%\\\\lg�J8�4Ԭ.:��\n����|��jn8�sZi�WI���ƥyN%^����N���|j�Hz��b?Ɲ���;\\\'g���e�GVg�?�����FG\Z6�6�L�+�N*�wo��q4��)e�e{A�cR�y���w^����;�GL��߁ݻ:M��E]�\\\"GL�;�)�%\\\"�m\n%�%$YEhj���Yg��޻�kk�����~��ӊ������1��\\0��L�np����_|�\\0���cb�g}�UT��jr��{�	�-�,]�`mKђ���t��b�a��z�0�=����}�G�NO���n\Z���^��`�5��; Vͱ��\\0����;�dQK9�y���\\\"�+��FqЫ����m��A�#�~�-n����4dh��*.���S���7\\\'�&�Q%D�D�l|��$[�h�-��]�#���9lnd�Hi6�(��/`]R�ld�q&�����&f��������$jV��GsbQ+˨jW����>%�Il��H�6��������:���bWNw��}���s���R�o�՛��]��Lܺ\\\\��ܶ��G)�ć�K�7G.�V���]�r�*�Q��P,��]F�Bm�+��9(�3�5�E܁��y<����	���C���b���_�lr��ib%)��-���k.l⾟:W�ϩ�4�\\05����c�/ڲ��\Z��;aw�v������	��~�z���+�A&�Z6����=�\\\\P�빟���j��.V��ѿ����\\\\>Q�u��+�NɿE��3��Q�7e���Î^j��Ok��)F�j�T��0OgmͱP�*�z�.��V���e^�[[�i[M�����k]�H�-F��Q\r��+v��6��ܫ�*!܇�e�E��i���}�4�J�#G���.-j�3}C���䍶�y�mudǐi�\\\\����j^ϔ��4ﮅ�]�`*�M�Y�-�K*���.ֆ7v�@e��.K�k�Į����fç��[��/�z�|ʋ���>�����\\\'ҽ�ѣV�P�������z��G��OnU�?���&)>��o�{�^���\\0�Z�p���-�.(�\rݱ�mz�y�EGz?��{A��Qk��1�o�wMՍ�N�����o����}�C��*�4y^m�8��fq!ċ����3�q\rm��Q�Y��������Q4���>��#l���z3��.W⺉�����>U���Ӱ\n\reU�}��D��l�����T�KV�h���1�K�k�3�8�5�K�|g�	~�.����\\\"�3���z���v��1��},>1���נvKI�8�/�_Y��\Z����; �y���b�>��/�G�xy{��gۏ�%���h��U�K(�Q.�VvƢ]E�,�H�;U/yK$M�t��&ēb�\nY�qb\\\\9H�2XX�&؜Hq2؆�M.�\\\\QW3EZ#[aq8�$��<j�\\0B~�1$q�C�m���27�����o���{ft�r).��\\0q�q��%����vi7�\Z���I}�^�^\Z���7ɱ��s+�G��î��s�s��H���R�<��Z��dg���8\n9L��}��G�1j�\\0�5x~G��G=��R�\\0M�ᜯ����5[�\\\\���I�����J��\\\'�pR�N��=��|�\Z�/,������%\\\"�]6�ܼcb�X��U�%\\\"Ĥj�r�$��a�BD�X�R\\\"����� �t*���j\\\\�Eu>����w���<�	�����^ҕ�~	��g�PN5Q���|�����>����\\\\�~I�?�\\\'�,�7,�\r}ZR��̹�������~���l������z��w�_���\\06�v�y�m툧|Q�����T��)?��xz�\\0��;8�����?z;������׈��ގ���<8r_s(�����=���[�ķ))ڱ��.�JL����D��	J��P�&ŬO+	�R<�(߈��wP��FH���R��6�ч�K�ׂ���\n��Xg��\\0���ʏ9�t�a��ў�b�7�|��8�,��w�����WO ����5����8��(���sX�nW�0���Y�qM�ў�ª��_�1�z�G�9R\Z.C4�1�VH��\r&M4�֤4dh�l2L�]�h.���e�6\\\"�\\\"�x��% mT�JDز_YYکb��\\\"�GD�b�_�^e�wԵ^��O_�ԗ�3���z5���ٍU���GiH�<\\\"�)OǺ~��)s��H�R�$�B��mltS�b������J���G����;qF3z�7���`1?�^��i/�8�ޯDv+�vp���,G){X�sڍh��\r\\\\�إ����F�aq)8�-x���;�I�����i���W�I������W��䏫:�-_S���Yػ9_�q�����|���\Z��X�F[\\\"\Z6�m�����u�U�]����%{�W����)�X�����l+X���ӽ����9V�1ƻ�GK�l�����k)�/���f;rxvD�Y\\\"R,����F=E�,�Y�U�x�/�����܏NQ<�h��c�t�E���ׂ���vo�.���\\0����~���)����5#�\\\'ʡ\\\"IH�������S@�\\\"��	�#�v�l���G��2�5������4x�6�7�8e�{�N0:kv���,m�b����_����g8��\\0��\\0�D���|+��CW/b�x��r��h��;in���Zfj(�J�k�\r�b�$�fJA6�mX\r&�blH/H�mr~ƺQ-ab�\n���zDXX��ڤ2�\\\"�n�%Z24CG;���Q(����V�L�+»V��ĸ����jv[q�^��o�Y���q#���4�0Ӎ��m�?�c~_��ܺ〉:(�O,�.%\\\\neq�v��r9R2����H�)*$ѵT	Pe�K�!�TQ�e�>E�VmQ@���D�ͪr/(�M���e�h�M�(��e���K��X%NW����]�5�z�������X�_���C��ѕ���x��zx.��ڿ��o�-�?Cѻh�|R�\\0���y��pW������~�hҫ�3U���`���9��7���c�Z�k�jr���`�hЎe%�P�I|ӮJ���=X]�y&�tR~f��We�{����kTt�Uk��Bi1�W+��*\\\"I#�Y�V+-�U%��:m]ܼ�I-,TQ�{\\\"��س�ۡN�J6�%\Z{�K^B�4ˤ���*ݵ%�tD�[��zhO��M��B��rV�m��7{��r-���t�	[T�[�^U^��S���k�#i+�^!����˄�,F\\\"4�ZT����;%�(�Eb��4\\\"�-C��Դ�R�u)�V��ev}��X����8�\\\\y���:�\n��4���%�f/W��XȲ�,TUnK7�M;�}�c���t99�����n��P�u�v���o�y��m7ӑ�OU�=|�薇�H(�T�ή�/�C������JUc\np�qI�q�Zr���|���7��#����E�FV�@�̋���4�^RTd��$�=��n�xn|��<��Z�h�>S)$w���[�GHX���x�!� ��X䊴ed4���f{�+��z�k�j[W��O��z2��b)Ӌ���Wc��\\\"�ˈ19��0ʱR��wT��t��c{�\\\\3�߰�v2�Y*p�q��ߌ��Q�Gs�qFc�������$�J�u!h�{���|^S�J�7V������}מa�[*�R�)N�QKv�r��ד)ק�\\\\�W9�)�V��^\Z�\\\\ ��.z��c�X�ֵZY^*P�����8��O+7�c-����v<��|��W-��i��ayu|�O��F\Z6�q�}��^s�f�z���N�mʛK����<��\Z���J�embF�]�\\\"��S@,�)&(�M��U\\\"l��65�mK\\\"���.E���4E�wVȆ�X4s������V.�\\0���ɵsG9����v�I$�n����	ix��p%�R�J��J����8sks�G-�GۣS��\\0��\rI���	\\\'��[�����7k�ټ�˂���j�%m7��JQN��O\\\\ͩ�e؈�]ʛI.�d��J��\\0V����c����|$��\\\'e-\ZM��Ϧ�b�Sm�����a��R���T��罚i�og�S+��\n�T�In݋<9�}�/�-W]�B���!~�:DpX�;�w����(eJ3���ލ4I;����bY\\\"b�.����R.��H��$S~���\\\"��V�\\\"��!`�6	\Z��6�\\\",,M���#�A`�q*�rv+����ᇇFy�(�1X��>�V�dІ\Z��MVRj)�mN�C&�cQ_�����9׻���7��&�K\nѓ���JI��{�f��4��R]�r�(�КW��9��Y�����(���;���e��\\0?FW��\\\\�<�(�:X�0s�j�J1ݴֆ�*�ቫ\n�p�fԢ�N��A�XV�V��Q|�*�O5��\\\\CR�7���m뱟����[�������Gr��x��b+���ZI�I9����n�c��}�v�-˨�\\\\���H�Q)�%\\\"R%�Y\\\"I*T$YM�H��罡$���\\0�Vz�8�.�ⳮ���R�W4bڽބ�vv��\\07�3t��<┟3�ݕ��=fXvݻּU)[���\\\'�b�g4*W�Մ\\\"�r�\Z[4w�	lo�\\\\z�O��Ƨ�\r}��U*b��d���r���m<w;����d��t��9F�-[Է�2�e;<��w���a[#ï�Y�VQ���G[�Vv삕J9U\Zub�5{�n�g<c��,����a�t��CE��E��^RK؆��F�^S#V*��Q�F��j�KX$R%\\\"lM�m�	.���DV�K�clu�?S�%�u�~Y����*t$�)����3�w��In�Mfr��ߪ;=����>:U+�p�#Wv���c;3�eϲ&���X��ŭ�W��K�r�g��������b�����e���\\0��֌rc�=^��.��el�����8��W���MӔ�t��k#���}�Ö�:�b�\\\"Ʈ.hh��2,b⪵�V����ch��w�L�ȵ����G��X��[M�����1��$��[�Y��5\\\'�e6״����̣�b��P��*j1�N��1���L�M��mё�U�o4�m\Zٴo�bW�O��kS>��`k��M��b}�^��u#��wNΗ�O�𣃗��`�oz�gh�̻�`*�K���s%t��1w峥ͤZ(��Z14�ZF%�]BE��X�H�5��ci���:�h�F��u�`�y��#9xv��\\0*�=���X�o�?Vv��}�\\0\rR���N�	�˗�Bl,M��4X�lnb���6/H���&ĸ���$y��O§��7�u=[�r�Fe�F�*SS�N\\\\�Y�:d�+7m���\\0�G�������ծ��k����q���?����������\\0��\\0���Wc��µl\\\\i�N�*��7��\\\\��p�ݲ��xPCE�A�$B hA$�XքI�dD`�H��BDؑc��blJB��\\\",,Z�X��o2؋�mR\Z/b,b⪴T��g,�U\Z!�솎Yb��n�/V�ws���5��j�k�g�qo> �\\\'�x�盧\\\'6��vi�:���\\\'UЗ2�\\\"W��g���p�����\\\"Q2�Љ �����V�q�klVB�24',131331);
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
INSERT INTO `order` VALUES (1,0,'INV-2012-00',0,'Мой Магазин','http://pechatnik/',5,1,'asdfasf','asfasfa','q@q.qq','3152353','','asdfasf','asfasfa','','','','','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Оплата при доставке','cod','asdfasf','asfasfa','','','','dfgdfgdfg','','Украина',220,'Винница',3501,'','Фиксированная стоимость доставки','flat.flat','','105.0000',0,0,'0.0000',1,2,'USD','1.00000000','127.0.0.1','','Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2013-01-30 23:10:52','2013-01-30 23:10:52');
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
INSERT INTO `order_product` VALUES (1,1,47,'HP LP3065','Товар 21',1,'100.0000','100.0000','0.0000',300);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1,1,'sub_total','Сумма','$100.00','100.0000',1),(2,1,'shipping','Фиксированная стоимость доставки','$5.00','5.0000',3),(3,1,'total','Итого','$105.00','105.0000',9);
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
INSERT INTO `product` VALUES (65,'4456','','','','','','','',1,5,'data/frame4.jpg',8,1,'466.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 16:06:59','2013-02-02 16:46:54',7,0,1),(66,'цук ','','','','','','','',1,5,'data/frame.jpg',9,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 16:11:40','2013-02-03 21:06:15',21,0,0),(67,'пыв','','','','','','','',1,5,'data/Corbis-42-29243612.jpg',9,1,'253.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 17:45:58','0000-00-00 00:00:00',10,0,0),(68,'йцуйц','','','','','','','',1,5,'data/big.jpg',0,1,'90.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:12:17','2013-02-05 23:17:29',130,4,1),(69,'hfg','','','','','','','',1,5,'data/Corbis-42-29965284.jpg',0,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:12:58','2013-02-03 10:11:03',2,2,0),(70,'5767','','','','','','','',1,5,'data/frame.jpg',0,1,'0.0000',0,0,'2013-02-01','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2013-02-02 19:13:47','0000-00-00 00:00:00',3,0,0);
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
INSERT INTO `setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(982,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(656,0,'account','account_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),(93,0,'voucher','voucher_sort_order','8',0),(94,0,'voucher','voucher_status','1',0),(102,0,'free_checkout','free_checkout_status','1',0),(103,0,'free_checkout','free_checkout_order_status_id','1',0),(1947,0,'config','config_fraud_score','',0),(1948,0,'config','config_fraud_status_id','14',0),(1949,0,'config','config_sms_alert','0',0),(1950,0,'config','config_sms_gatename','testsms',0),(1951,0,'config','config_sms_from','',0),(1952,0,'config','config_sms_to','',0),(1953,0,'config','config_sms_copy','',0),(1954,0,'config','config_sms_message','',0),(1955,0,'config','config_sms_gate_username','',0),(1956,0,'config','config_sms_gate_password','',0),(1957,0,'config','config_use_ssl','0',0),(1958,0,'config','config_seo_url','1',0),(1959,0,'config','config_seo_url_type','seo_pro',0),(1960,0,'config','config_seo_url_include_path','1',0),(1961,0,'config','config_seo_url_postfix','',0),(1962,0,'config','config_maintenance','0',0),(1963,0,'config','config_encryption','515711997217bb8c619e05bca7a956d1',0),(1964,0,'config','config_compression','0',0),(1965,0,'config','config_error_display','1',0),(1966,0,'config','config_error_log','1',0),(1967,0,'config','config_error_filename','error.txt',0),(1968,0,'config','config_google_analytics','',0),(1972,0,'login','login_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:9;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1945,0,'config','config_fraud_detection','0',0),(1946,0,'config','config_fraud_key','',0),(1943,0,'config','config_account_mail','0',0),(1944,0,'config','config_alert_emails','',0),(1942,0,'config','config_alert_mail','0',0),(1940,0,'config','config_smtp_port','25',0),(1941,0,'config','config_smtp_timeout','5',0),(1939,0,'config','config_smtp_password','',0),(1937,0,'config','config_smtp_host','',0),(1938,0,'config','config_smtp_username','',0),(1936,0,'config','config_mail_parameter','',0),(1973,0,'cart','cart_module','a:12:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:4;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:5;a:4:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:6;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:7;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:8;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:9;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:10;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:11;a:4:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1986,0,'cr2htmlmodule','cr2htmlmodule_module','a:22:{i:0;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:3;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:4;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:5;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:6;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:7;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:8;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:9;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:10;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:11;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:12;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:13;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:14;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:15;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:16;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:17;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:18;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:19;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:1:\"9\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}i:20;a:6:{s:7:\"area_id\";s:5:\"area2\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:21;a:6:{s:7:\"area_id\";s:5:\"area3\";s:9:\"classname\";s:0:\"\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),(1982,0,'cr2htmlmodule','cr2htmlmodule_title3_1','',0),(1983,0,'cr2htmlmodule','cr2htmlmodule_header3','0',0),(1984,0,'cr2htmlmodule','cr2htmlmodule_borderless3','0',0),(1985,0,'cr2htmlmodule','cr2htmlmodule_code3_1','&lt;div class=&quot;title&quot;&gt;\r\n	Тех. Поддержка&lt;/div&gt;\r\n&lt;div id=&quot;support&quot;&gt;\r\n	&lt;span&gt;т.&lt;/span&gt; 096 433-44-55&lt;br /&gt;\r\n	&lt;span&gt;т.&lt;/span&gt; 067 455-65-21&lt;br /&gt;\r\n	&lt;span&gt;icq:&lt;/span&gt; 187-773-553&lt;br /&gt;\r\n	&lt;span&gt;email:&lt;/span&gt; &lt;a href=&quot;mailto:info@pechatnik.net&quot;&gt;info@pechatnik.net&lt;/a&gt;&lt;br /&gt;\r\n	&lt;a class=&quot;soc&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/fb.gif&quot; /&gt;&lt;/a&gt;&lt;a class=&quot;soc&quot; href=&quot;index.php?route=product/shop&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/vk.gif&quot; /&gt;&lt;/a&gt;\r\n	&lt;div id=&quot;helper&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;&lt;b&gt;Онлайн&lt;/b&gt;&lt;br /&gt;\r\n		помощник&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1974,0,'cr2htmlmodule','cr2htmlmodule_title1_1','',0),(1975,0,'cr2htmlmodule','cr2htmlmodule_header1','0',0),(1976,0,'cr2htmlmodule','cr2htmlmodule_borderless1','1',0),(1977,0,'cr2htmlmodule','cr2htmlmodule_code1_1','',0),(1978,0,'cr2htmlmodule','cr2htmlmodule_title2_1','',0),(1979,0,'cr2htmlmodule','cr2htmlmodule_header2','0',0),(1980,0,'cr2htmlmodule','cr2htmlmodule_borderless2','0',0),(1981,0,'cr2htmlmodule','cr2htmlmodule_code2_1','&lt;div id=&quot;shop&quot; onmouseout=&quot;$(this).removeClass(\'hover\');&quot; onmouseover=&quot;$(this).addClass(\'hover\');&quot;&gt;\r\n	&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot; id=&quot;title_left&quot;&gt;Магазин фоторамок&lt;br /&gt;\r\n	и фотоальбомов&lt;/a&gt;\r\n	&lt;div id=&quot;title_right&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class=&quot;clear&quot;&gt;\r\n		&amp;nbsp;&lt;/div&gt;\r\n	&lt;div id=&quot;pic&quot;&gt;\r\n		&lt;a href=&quot;index.php?route=product/category&amp;amp;all=1&quot;&gt;&lt;img src=&quot;catalog/view/theme/default/image/blank.gif&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n',0),(1584,0,'featuredalbum','product','',0),(1585,0,'featuredalbum','featuredalbum_product','65,66,69,68,70,67',0),(1586,0,'featuredalbum','featuredalbum_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1059,0,'featuredframe','product','ра',0),(1060,0,'featuredframe','featuredframe_product','65,66',0),(1061,0,'featuredframe','featuredframe_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1826,0,'welcome','welcome_module','a:2:{i:1;a:5:{s:11:\"description\";a:1:{i:1;s:1541:\"&lt;div class=&quot;text&quot;&gt;\r\n	&lt;h1&gt;\r\n		Multiple Photo Frames&lt;/h1&gt;\r\n	Have a browse through our complete range of multi photo frames you\'ll be stunned to see what we have on offer. Our multi photo frames have various different brands and styles held within especially some of the hugely popular and unique Umbra multi photo frames.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Multi photo frames are perfect for showing off various series of photographs together that either tell a story or you just wish to hold a collection of your favourite photographs within one multi photo frame.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	If you are looking for multi photo frames or collage photo frames then look no further. Here we have hand picked a fine range of multi photo frames for you to choose from. Our multi photo frames come in various styles and materials such as silver multi photo frames and&amp;nbsp;wooden multi photo frames, each holding&amp;nbsp;at least 3&amp;nbsp; spaces for your precious photographs.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	There are now many choices when it comes to displaying your precious pictures.&amp;nbsp; During the past decades, ready-made frames are limited in options.&amp;nbsp; Most are made of wood, plastic or composite resin in few colors and designs.&amp;nbsp; Nowadays, artists and designers collaborate on projects that result in frames in fantastic colors, different shapes and various sizes.&amp;nbsp; They can hold a wide range of photos, from single portraits to collages of many pictures combined.&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"6\";}i:2;a:5:{s:11:\"description\";a:1:{i:1;s:5353:\"&lt;div id=&quot;tizers&quot;&gt;\r\n	&lt;div class=&quot;cont t1&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				1.&lt;/div&gt;\r\n			&lt;span&gt;Удобный интерфейс&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;по загрузке фотографий&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Теперь можно печатать фотографии качественно и по минимальной цене не выходя&lt;br /&gt;\r\n				из дома.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t2&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				2.&lt;/div&gt;\r\n			&lt;span&gt;Фотопечать на качественной&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;фотобумаге&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Бумага таких именитых производителей как Fuji и Kodak.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t3&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				3.&lt;/div&gt;\r\n			&lt;span&gt;Самая быстрая скорость&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;доставки&lt;/span&gt;\r\n			&lt;p&gt;\r\n				Доставка по Днепропетровску бесплатная. Для других регионов стоимость доставки можно посмотреть &lt;a href=&quot;#&quot;&gt;здесь&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;cont t4&quot;&gt;\r\n		&lt;div class=&quot;title&quot;&gt;\r\n			&lt;div class=&quot;number&quot;&gt;\r\n				4.&lt;/div&gt;\r\n			&lt;span&gt;Самая Низкая цена&lt;/span&gt;&lt;br /&gt;\r\n			&lt;span&gt;печати&lt;/span&gt;\r\n			&lt;h2&gt;\r\n				70 копеек&lt;/h2&gt;\r\n			&lt;p&gt;\r\n				Хотите ещё дешевле?&lt;br /&gt;\r\n				Вам &lt;a href=&quot;#&quot;&gt;сюда&lt;/a&gt;.&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;servises_cont&quot;&gt;\r\n	&lt;div id=&quot;instruction&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Инструкция&lt;/a&gt; по печати фотографий через интернет&lt;/div&gt;\r\n	&lt;div id=&quot;time&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Готовность заказа&lt;/a&gt;среднее время выполнение заказа - 3 часа&lt;/div&gt;\r\n	&lt;div id=&quot;delivery&quot;&gt;\r\n		&lt;a href=&quot;#&quot;&gt;Доставка и оплата&lt;/a&gt;ваших фотографий к вам домой&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--SERVISES END--&gt;&lt;!--MAIN TEXT--&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; id=&quot;main_text&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;top&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n			&lt;td&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;div class=&quot;text&quot;&gt;\r\n					&lt;h1&gt;\r\n						Информация о сервисе&lt;/h1&gt;\r\n					Фотолаборатория «Печатник» предлагает Вам воспользоваться услугой печати фотографий через Интернет. Печать фотографий через Интернет является основным направлением развития нашей фотолаборатории.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Приём и печать фотографий осуществляется в круглосуточном режиме. Мы гарантируем качественную печать фотографий и своевременное выполнение Вашего заказа. Для печати используется высококачественное оборудование Noritsu, которое позволяет печатать фотографии любым форматом от 9х13 до 30х90. Данное оборудование позволяет нам печатать в час до 1000 фотографий форматом 10х15.&lt;br /&gt;\r\n					&lt;br /&gt;\r\n					Для печати фотографий используется фотобумага фирмы Kodak, которая является одним из лидеров на рынке материалов для фотопечати. Гарантия фирмы Kodak на фотографии, сделанные при соблюдении технологического процесса, достигает 100 лет при нормальных условиях хранения. Фотолаборатория «Печатник» предлагает Вам воспользоваться услугой печати фотографий через Интернет. Печать фотографий через Интернет является основным направлением развития нашей фотолаборатории.&lt;/div&gt;\r\n				&lt;div class=&quot;bott&quot;&gt;\r\n					&amp;nbsp;&lt;/div&gt;\r\n			&lt;/td&gt;\r\n			&lt;td class=&quot;right&quot;&gt;\r\n				&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;div class=&quot;clear&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n\";}s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1971,0,'specialnew','specialnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(1969,0,'categorynew','categorynew_module','a:4:{i:0;a:5:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:1;a:5:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:2;a:5:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}i:3;a:5:{s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"content_top\";s:5:\"count\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1935,0,'config','config_mail_protocol','mail',0),(1933,0,'config','config_image_cart_width','47',0),(1934,0,'config','config_image_cart_height','47',0),(1932,0,'config','config_image_wishlist_height','47',0),(1931,0,'config','config_image_wishlist_width','47',0),(1930,0,'config','config_image_compare_height','90',0),(1929,0,'config','config_image_compare_width','90',0),(1928,0,'config','config_image_related_height','80',0),(1926,0,'config','config_image_additional_height','74',0),(1927,0,'config','config_image_related_width','80',0),(1970,0,'latestnew','latestnew_module','a:4:{i:0;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:7:{s:5:\"limit\";s:1:\"2\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:3;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"7\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1925,0,'config','config_image_additional_width','74',0),(1924,0,'config','config_image_product_height','100',0),(1923,0,'config','config_image_product_width','110',0),(1922,0,'config','config_image_popup_height','500',0),(1921,0,'config','config_image_popup_width','500',0),(1920,0,'config','config_image_thumb_height','300',0),(1919,0,'config','config_image_thumb_width','300',0),(1918,0,'config','config_image_category_height','110',0),(1917,0,'config','config_image_category_width','110',0),(1916,0,'config','config_icon','data/cart.png',0),(1914,0,'config','config_return_status_id','2',0),(1915,0,'config','config_logo','data/logo.png',0),(1913,0,'config','config_commission','5',0),(1912,0,'config','config_affiliate_id','4',0),(1911,0,'config','config_stock_status_id','5',0),(1910,0,'config','config_stock_checkout','1',0),(1909,0,'config','config_stock_warning','0',0),(1907,0,'config','config_complete_status_id','5',0),(1908,0,'config','config_stock_display','0',0),(1906,0,'config','config_order_status_id','1',0),(1905,0,'config','config_invoice_prefix','INV-2012-00',0),(1904,0,'config','config_order_edit','100',0),(1903,0,'config','config_checkout_id','5',0),(1901,0,'config','config_cart_weight','0',0),(1902,0,'config','config_guest_checkout','1',0),(1900,0,'config','config_account_id','0',0),(1899,0,'config','config_customer_price','0',0),(1898,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(1897,0,'config','config_customer_group_id','1',0),(1896,0,'config','config_customer_online','0',0),(1895,0,'config','config_tax_customer','shipping',0),(1894,0,'config','config_tax_default','shipping',0),(1892,0,'config','config_tax','0',0),(1893,0,'config','config_vat','0',0),(1891,0,'config','config_voucher_max','1000',0),(1890,0,'config','config_voucher_min','1',0),(1889,0,'config','config_upload_allowed','jpg, JPG, jpeg, gif, png, txt',0),(1888,0,'config','config_download','0',0),(1886,0,'config','config_product_count','0',0),(1887,0,'config','config_review_status','0',0),(1885,0,'config','config_admin_limit','20',0),(1883,0,'config','config_weight_class_id','1',0),(1884,0,'config','config_catalog_limit','15',0),(1882,0,'config','config_length_class_id','1',0),(1881,0,'config','config_currency_auto','0',0),(1880,0,'config','config_currency','USD',0),(1879,0,'config','config_admin_language','ru',0),(1878,0,'config','config_language','ru',0),(1877,0,'config','config_zone_id','3491',0),(1876,0,'config','config_country_id','220',0),(1875,0,'config','config_layout_id','1',0),(1874,0,'config','config_template','default',0),(1873,0,'config','config_meta_description','Мой Магазин',0),(1866,0,'config','config_name','Мой Магазин',0),(1867,0,'config','config_owner','Мое Имя',0),(1868,0,'config','config_address','Адрес',0),(1869,0,'config','config_email','vittalik@ukr.net',0),(1870,0,'config','config_telephone','123456789',0),(1871,0,'config','config_fax','',0),(1872,0,'config','config_title','Мой Магазин',0);
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
INSERT INTO `tax_rate` VALUES (86,3,'НДС 18%','18.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
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
INSERT INTO `user_group` VALUES (1,'Главный администратор','a:2:{s:6:\"access\";a:130:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:16:\"catalog/material\";i:7;s:14:\"catalog/option\";i:8;s:13:\"catalog/price\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:12:\"catalog/size\";i:12;s:18:\"common/filemanager\";i:13;s:13:\"design/banner\";i:14;s:13:\"design/layout\";i:15;s:14:\"extension/feed\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:11:\"module/cart\";i:42;s:15:\"module/category\";i:43;s:18:\"module/categorynew\";i:44;s:20:\"module/cr2htmlmodule\";i:45;s:15:\"module/featured\";i:46;s:20:\"module/featuredalbum\";i:47;s:20:\"module/featuredframe\";i:48;s:18:\"module/google_talk\";i:49;s:18:\"module/information\";i:50;s:13:\"module/latest\";i:51;s:16:\"module/latestnew\";i:52;s:12:\"module/login\";i:53;s:16:\"module/slideshow\";i:54;s:14:\"module/special\";i:55;s:17:\"module/specialnew\";i:56;s:12:\"module/store\";i:57;s:14:\"module/welcome\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:14:\"payment/liqpay\";i:64;s:20:\"payment/moneybookers\";i:65;s:14:\"payment/nochex\";i:66;s:15:\"payment/paymate\";i:67;s:16:\"payment/paypoint\";i:68;s:13:\"payment/payza\";i:69;s:26:\"payment/perpetual_payments\";i:70;s:14:\"payment/pp_pro\";i:71;s:17:\"payment/pp_pro_uk\";i:72;s:19:\"payment/pp_standard\";i:73;s:15:\"payment/sagepay\";i:74;s:22:\"payment/sagepay_direct\";i:75;s:18:\"payment/sagepay_us\";i:76;s:19:\"payment/twocheckout\";i:77;s:28:\"payment/web_payment_software\";i:78;s:16:\"payment/worldpay\";i:79;s:27:\"report/affiliate_commission\";i:80;s:22:\"report/customer_credit\";i:81;s:22:\"report/customer_online\";i:82;s:21:\"report/customer_order\";i:83;s:22:\"report/customer_reward\";i:84;s:24:\"report/product_purchased\";i:85;s:21:\"report/product_viewed\";i:86;s:18:\"report/sale_coupon\";i:87;s:17:\"report/sale_order\";i:88;s:18:\"report/sale_return\";i:89;s:20:\"report/sale_shipping\";i:90;s:15:\"report/sale_tax\";i:91;s:14:\"sale/affiliate\";i:92;s:12:\"sale/contact\";i:93;s:11:\"sale/coupon\";i:94;s:13:\"sale/customer\";i:95;s:23:\"sale/customer_blacklist\";i:96;s:19:\"sale/customer_group\";i:97;s:10:\"sale/order\";i:98;s:11:\"sale/return\";i:99;s:12:\"sale/voucher\";i:100;s:18:\"sale/voucher_theme\";i:101;s:15:\"setting/setting\";i:102;s:13:\"setting/store\";i:103;s:16:\"shipping/auspost\";i:104;s:17:\"shipping/citylink\";i:105;s:14:\"shipping/fedex\";i:106;s:13:\"shipping/flat\";i:107;s:13:\"shipping/free\";i:108;s:13:\"shipping/item\";i:109;s:23:\"shipping/parcelforce_48\";i:110;s:15:\"shipping/pickup\";i:111;s:19:\"shipping/royal_mail\";i:112;s:12:\"shipping/ups\";i:113;s:13:\"shipping/usps\";i:114;s:15:\"shipping/weight\";i:115;s:11:\"tool/backup\";i:116;s:14:\"tool/error_log\";i:117;s:12:\"total/coupon\";i:118;s:12:\"total/credit\";i:119;s:14:\"total/handling\";i:120;s:16:\"total/klarna_fee\";i:121;s:19:\"total/low_order_fee\";i:122;s:12:\"total/reward\";i:123;s:14:\"total/shipping\";i:124;s:15:\"total/sub_total\";i:125;s:9:\"total/tax\";i:126;s:11:\"total/total\";i:127;s:13:\"total/voucher\";i:128;s:9:\"user/user\";i:129;s:20:\"user/user_permission\";}s:6:\"modify\";a:130:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:16:\"catalog/material\";i:7;s:14:\"catalog/option\";i:8;s:13:\"catalog/price\";i:9;s:15:\"catalog/product\";i:10;s:14:\"catalog/review\";i:11;s:12:\"catalog/size\";i:12;s:18:\"common/filemanager\";i:13;s:13:\"design/banner\";i:14;s:13:\"design/layout\";i:15;s:14:\"extension/feed\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:11:\"module/cart\";i:42;s:15:\"module/category\";i:43;s:18:\"module/categorynew\";i:44;s:20:\"module/cr2htmlmodule\";i:45;s:15:\"module/featured\";i:46;s:20:\"module/featuredalbum\";i:47;s:20:\"module/featuredframe\";i:48;s:18:\"module/google_talk\";i:49;s:18:\"module/information\";i:50;s:13:\"module/latest\";i:51;s:16:\"module/latestnew\";i:52;s:12:\"module/login\";i:53;s:16:\"module/slideshow\";i:54;s:14:\"module/special\";i:55;s:17:\"module/specialnew\";i:56;s:12:\"module/store\";i:57;s:14:\"module/welcome\";i:58;s:24:\"payment/authorizenet_aim\";i:59;s:21:\"payment/bank_transfer\";i:60;s:14:\"payment/cheque\";i:61;s:11:\"payment/cod\";i:62;s:21:\"payment/free_checkout\";i:63;s:14:\"payment/liqpay\";i:64;s:20:\"payment/moneybookers\";i:65;s:14:\"payment/nochex\";i:66;s:15:\"payment/paymate\";i:67;s:16:\"payment/paypoint\";i:68;s:13:\"payment/payza\";i:69;s:26:\"payment/perpetual_payments\";i:70;s:14:\"payment/pp_pro\";i:71;s:17:\"payment/pp_pro_uk\";i:72;s:19:\"payment/pp_standard\";i:73;s:15:\"payment/sagepay\";i:74;s:22:\"payment/sagepay_direct\";i:75;s:18:\"payment/sagepay_us\";i:76;s:19:\"payment/twocheckout\";i:77;s:28:\"payment/web_payment_software\";i:78;s:16:\"payment/worldpay\";i:79;s:27:\"report/affiliate_commission\";i:80;s:22:\"report/customer_credit\";i:81;s:22:\"report/customer_online\";i:82;s:21:\"report/customer_order\";i:83;s:22:\"report/customer_reward\";i:84;s:24:\"report/product_purchased\";i:85;s:21:\"report/product_viewed\";i:86;s:18:\"report/sale_coupon\";i:87;s:17:\"report/sale_order\";i:88;s:18:\"report/sale_return\";i:89;s:20:\"report/sale_shipping\";i:90;s:15:\"report/sale_tax\";i:91;s:14:\"sale/affiliate\";i:92;s:12:\"sale/contact\";i:93;s:11:\"sale/coupon\";i:94;s:13:\"sale/customer\";i:95;s:23:\"sale/customer_blacklist\";i:96;s:19:\"sale/customer_group\";i:97;s:10:\"sale/order\";i:98;s:11:\"sale/return\";i:99;s:12:\"sale/voucher\";i:100;s:18:\"sale/voucher_theme\";i:101;s:15:\"setting/setting\";i:102;s:13:\"setting/store\";i:103;s:16:\"shipping/auspost\";i:104;s:17:\"shipping/citylink\";i:105;s:14:\"shipping/fedex\";i:106;s:13:\"shipping/flat\";i:107;s:13:\"shipping/free\";i:108;s:13:\"shipping/item\";i:109;s:23:\"shipping/parcelforce_48\";i:110;s:15:\"shipping/pickup\";i:111;s:19:\"shipping/royal_mail\";i:112;s:12:\"shipping/ups\";i:113;s:13:\"shipping/usps\";i:114;s:15:\"shipping/weight\";i:115;s:11:\"tool/backup\";i:116;s:14:\"tool/error_log\";i:117;s:12:\"total/coupon\";i:118;s:12:\"total/credit\";i:119;s:14:\"total/handling\";i:120;s:16:\"total/klarna_fee\";i:121;s:19:\"total/low_order_fee\";i:122;s:12:\"total/reward\";i:123;s:14:\"total/shipping\";i:124;s:15:\"total/sub_total\";i:125;s:9:\"total/tax\";i:126;s:11:\"total/total\";i:127;s:13:\"total/voucher\";i:128;s:9:\"user/user\";i:129;s:20:\"user/user_permission\";}}'),(10,'Демонстрация','');
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

-- Dump completed on 2013-02-10 23:16:50
