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
INSERT INTO `customer_temp_photo` VALUES (14,5,'111.PNG','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Z\0\0{\0\0\0|L�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0���k�\0\0��IDATx^��\r�d�u�u��TV��e���u-K�k<F\\Q<�0�y0x�\rfd0�j�c����\r60\Z� 0=��c�A�M����� �!�4�����g!R����t@�9��+3r��_�+O$��S�#bǎϵ�������_ߞݐϏo�x��?8��]������w=�\Z�����}���w���퓵e�O_���_8�����g�x�s�Ϲ	���}��߽��O>Y߶�m�_��={��al�I�����/��Z�x���T��?����*���Ms��^*�P(�x�޽��{��4	��E�۷�s����]���~�����:�O��������=�s��������g_��w[�����ϙv�s���ߝ������������Ͽ�<{ǿ���|���2�|�[�������~���{��?{#�X��]?C��;yr��7tv���w<���2i�S�o�\Z�+_�J����;������o?��w�����������?����On�]/������_y텳�fXYM�������{�8ѹ���o{�������yv������7����_��Ggo�̿;{�/����|��}_��Ț�SY�������/�����_e>���?��������u.�s�))t|\rS��S������5��m\0\Z�U���rk���Z��r�vח6���\\<خ���7��^�������v�\\�6�w���۾��^zi��X,[�jz/�s��NS^�|鳐�sJ˻1vm�9�\\��xd\r�n_���\\��?����jc�d���N�Ƿ���{������a/��>��ZW�����خ.��ws���oo��1궣;��0�����3��VS1k�f}�]^��^-�e4d���p�˻ۍ��1e���վ��s��_��us�)m�;�ԏ>_<Y�\\�@�Zܼ6,��4�ѫ�u?t��IW��Ζ��-��m���G�)}�w�s�i��so�Y_���̷#J�n@f���hج����5Vb7��|�\'TݻOy�i�\\��W9>�0D���s��V@��k�hX�\0\r��v��0@����E���AKpc�ۅ(�}̯!�M���6,.o�ٔ��FH_..�}�T�>�lJez�Á��m���M]�෺��z�\0���(�����\\�9��e��M�>k��}�ci(�{q�@���������1vݏ�+�<�)����\0���nuͫS���N\r1�ֹ��2���D\Z<N�}\'�/��[�MO��$r����_an��:�b��!ƬO=r��S����!�Иc���WW��fu.J��Ȥ���;@�b�l��ʔ>cy�F��ڨ��s������=Y7�������*�!}�VG<xV�\Z�M�\n�4����Z,VS�;g����k.君��6�������u T�J����Q�*��:�����<�UU3��Z+���\r�V�S�_�V:}�;��_���@� �m\r�K1�]=���3	CҴ���>\'��ᅼ_L�!ޣO�\"��b�(G�>� ����*>����ws,k̱7b�P����@��\nƮ�\\7�8Q�9��4��6�SH;�Z7\0tyq�hѢ�a.kl��дm�º(�e\"�=����1c�k��[��m/������:���q�����е�<��n�6�r�j��\nԟz,��y盖��9���&-d���O�qP���@��t�����o�瓛�m�U���]�B���{��R���C�G�\"⛧�\r<�-����S�����M�M�({W��}N=�b���:�p�h��F��\\��c�:D��ź!y��8��UF\0����!A�!�H�3|�嘾kz�u������)�L��aL����b�QS���-ߧ�*���)$<8�\\\nm���#��4*�\n�Jw�B��-m�|>c�+M�Е/�~N�4d\Z�B!Z�P.�a(` e���\r�Cl��u�Y؆x��}�7\'����-Bʞc��}1s���4B.�R\\+����1��99\nh������U����˚�����?�14�tm`�k��ֶ���d� �	q��9=���=.��i�T0��M�\r!�8���\"��v��]��qBl���QȀ��B�\rk]㹏�Mrx��}[���@Å%j�:a��Č�w#��v��\ZTC���5�}�#6�P��W�\rh(`C\\�AM�X�\\8�|���IT#O,�W�V�����{������\\�|N��Z�|��<?ºE���Q��D�;�ꧩ�S7~B��.y�	C��ek�21նj�WH{�������!����T˩��N�6@؇��Z�f~�,\\q#Ŀ���I�����C�?�\\���u��g�s��h�4?�U3а\ZB�؁;d�.��:���@�{���\r�}�e�m�G�Si��ԣK�ɵ��їS,S���D���lj!m�	������b�?�0E�>�Z�u�J��.���Z�g�b2��N�*�>m�ki�w�0�	9��i��!���گ���y3����3���5�n���e�4�k��pAT�.%R]�V�C�\Z�>c1W�&�)f~��)�-�y\nАh\0=o�f�w��˷�\n��� f�}+X}/!�FlZ�1;�tSi��ԣ���ʦ6.r��D�����zu������@C�bB�|\0�s	Q6�0:����Ůq^�\"������kA(@�klY�Zmz��.fS�B]&LD���L��I�\ni��1�M�c!�}4��Ε��Z/C:i�KN�ǭ�6�J�1cu�<Ms��:���4d�	���wb��\0\r}.\"!e���)�KXB�iT%�!}W��ڦ8&r��BJ�	��p�Y��4��n7��!�r�sS9��Ω�l�y��Hk�$�e�_�uyb�x�@���%�����9��;�b�Ww��\0PuD}�qY؋{�L-c���^~�xMݷ|�7�{}ֻk����bѐ	xX\n���F6�;�.t��\ne�m��&Z�)��]P��n����wS��\n�}�����\\��$���7�\n� ��B��0�]�i,\'Y���`��Io���J^1���^)����Lr^�u�\n�`��q{��w�vM�)�U��K�l[�n��Đ�\r1�&f�k�S�;���nބ��b���y�h�Lg>kxj��>��9d�4d\Z:�]\'�n��!�D���:�C��!��/���H\n�T���{Ju\n� �;!�^�BZk�&B���w�ӻ̻�Y�<���R��=�εV�9��u�X,����@q��!��Ou�V���O���Mu��Ӻ!TfӺĎ�y�@�<3�}R��X��r{�����߾��gh�4U�����D�(@������щ��k��>��Ӥ.4S�?Ԙ���1�q���c�%��n�	!�mج,!$�\r��Ő>�)�����c�}c�%��+�Fi������NIij;��{]��2!��&̺tjs˷>�󣫽��k��[O�tM{��\r�}S���C�U����R�7��>����U��l@ù\0	@å����9�R}h��;�����n����g�>�g貇Wm}2F=\nȐ_�1��(\\m����-)�x\ZbH[�Qv��K>��Ӻa�9T��ԡͅ\"��D���7P���)i|���uK]&6�����L,�n�/}�;S츊���yH��nަ�ے7�^:v���Ec�iҡ��S��Vׇh�4���h�`�P�� A8u#	�|}.ps\Zr,4}�oL�C����\r��+Dƴuhþ��m�]0W��w0��M����`@1�C�z��!�o�)�c��	Y�lX	A\\.���udȾ������eb��U�R�m�Q&�?B�KJ�\0)�A���͟.\0+�\rJ����Θ��d��u�Ա\\��l@��H�l�h\0i_-$�y�h��S7��� u\"���{yϘ��4�_C����!��\nT��縏-{!\n���a�$1����)!䦎R\"O4B�h����9�9!�e�Z�3o�&X<�+ny��NE�~� ��5�J!Ͻx��e┬|��k�9�	�@x[ ���_>��@����yi|�\r>c�	,�����^%��\0��>�%��ڋ��_�>9�@�{���4d\Z֗�f{\0\r���`s��ϐ$t��S&�O�!�9��B�ͧ=��f�16�P�zLͲ��VI��z��M�{��턐�b�M��W���/H�&y��8�A�-u���_�\"B������kck�Yr>ϧ�9��9��T\\&���X�@�s�Ħ�{Oh�:�X6(x�.�P�#G������SL㎓���v���i���}R��4�\Z��@Ã�ͣ����Dh[�C�!�R���s���E&����3��I�|���Ӡ�!(f.�p6Ƚ!�Dȳ�@��c�D�X/����B.;CA�%C�=vZ�Ϧqۺ?H$��cI\"sH��n蚯c�).�8v��<ߧ��֦Sq���p�x�Ѐ��XD��el�:�ز��U��4G��VۼO��֯�]�|_-hݶ8u��?r\0PC�!>�*@C&�}ʓ��n��a�Eò\0\r!}�3�r�	�WL�1�\\ms6�)�O��T��6KM;���\Z�kQ�v��{C䱄��&�Y!\r����!-��r�^�%ь����!��}�(�\n�{���}�-\n�ʄ�L�n�C��\\ks����?���]}���O�e��y۴X��AV�{r�gWm���9���Ne_�jK��u�OYsO�B���N�ܺ~�^�:@�h����5��uk�B��R�>^l�!Y�3B�N\"�w�s?�>>m�w�)�Q��T �X;�ݶm�/.�\Z�\rd�+�6L��Py!ł��Y/�	!W�,8,?�@�R��o��+�(pW,.����rP��zJ�c}ȩ|�.�@��c� �D�~�u�\ZZfj�}0�\Z ������>\'�2�eդ�\r����C�XO�S��Q_�[�/�p����̍�����4d\ZDh�\ZV\"��MA�	�]iC׮�r��jB�ܔv��8D��h��2|Lys��.E%e��ʒA���f���F�\\GS�FW~y�auY4,\Z\\2����I]��&��!�\\���9/j]&��\0W�uC���Y?�\0ɽ�����k�����eB\"��pw�3�}��j�/L��W��.>s�n~�̫�9�5ǖR����HW�������5�r�iL����\0\r\r�U\n���\'D �nCl$9�Q7Ρ���q;����P�\Z+�	d@�Fx�q�\Z؀\"�{�Z,��4,�	!�4O�ְ�kh�uC�\Z*�	��c�H>�\r]u躟{����4�R���2!V�D���(����[�		��:5o놔��\'V-�b���`^�:W�3�\Z�·*�{����2�b��y�\0\ZR�O\Z�\r���X4�r�z��ڤ	\Z�2�J�@����.�������.Oإ)�\r!�XU�[;�����r!~�Q���tڄ��m��}Dq�@n���s��]c�mmw}g}޹:}���9�(����p�]u���~1��ػ|�k�4\'�2aB�ƏU��9��u�E����uC_�`���B��w��\n�5o\n�Q�q6�r�ڹ�:��m\Zr\r��m��Ѱ��a� ����쐅��6�Rnp�ڎs�\0�=�2\\&�*�[�a|�e�<QO�i$�����Z��W \r���B�S77�ƺ�D���^�\"�Ō���;���<�Q&��2a9i!|�ǭZ7L��0�~:�uC_s-w���3]��Z��������٧�sL�c�\r��b��\0\r�6�U\Z�|OCj�`�k2����,�%m?�AJ��!Ĝ�t)n�!s/����b��Ʋ#t��	�\r1��}�s_�v)�uc�-�O=;�a��D3ۿc� �w�w��\\{U���ˑ&�\"%�3�e��˄���\\�1;놾�GJ�!`E�{g_kC�,�47��B�3���#������\"�;N}�a��ӷ�@CW�4H]���m����F��1@�ŝ�U�E�Z⩇>/�=��/��\n�0=�;t��=}����[��2L������M�\r� �c��!�$̥p2\\�<��0�p��\"1�o�u�+U��\'���$@�]&��-�R]*�� �~�����u�b-RR���.���=u��������U\0͉��>q���c�D���+��w}+>!�Au����{���>�;��RU�c֡P0C�E���C�i�vs����1�g����C��#|�V(��b�ӑu@���\n��i��+Tj��Me�9vr��RF����z7�8�\n\r��i���\'Ƞ�\"ĒK�b1�;�B\nY$ʏ�q@b�:�xn��_�@q�PU�g9]&��i\04�����J�z��Q�(G?����C훧�2�ζH�\Z��\'���xB�yJzРM��C���}��v��j���\n��Eu-�M}ڥ�ݴ��d�>�=v>D\r]\r�x���\0��m[:#D����t���-0�}�|���������4D��;9�_)�_����\Z��*ts�N�|���4���z�6Q����&��z%=h��a���zf����{��:����L$�Ō5N�/%��+���G�9׻�m���]&V�2�z�Q& �����7N��G��\\s<W9�k@�x뺟�D��7W[4�3tu�a����z�)�\r��c3V7����\nM�I\r����cf�s|;�\'�1� �\0\r~1�}�4u<��O5W\n�SIۿb?�6�\n�p~~n��)�Q]��79���N��:�;B���fU�=!.\0��k�f����%D���\06�k�Y][�͔}�gl\0�1cj�q�*|D��}ǐ�Iӎ1�Cֻ��/_�	����21�5Q(F��j\Z�1c=G���U��w9�w�e�v9�Ȑ����;}����kK;Ļ�ֵ7���T���k���R|r}����!�P����O��ae^���1�o!}<��!�w�j�Ĝ���]=úȠʠ�\r�`����F\\%��4�?�a)J��R���X���E�N]-#�]c���{��4s�{�q��Iq��[<���&��ƔkBe��k��eBB���p�F��h����?���|��7C�k�L�ROIƯ�}�kHӚ��z��:>�P7��|���(@C����7o�Wb��40�|z��\\����j=XH�\n����0�`X�;L9}Ș��{Y�1������\'�[�p\00\'�;�ୄ�k!��D�rL|�iL��D��v�l\"/������+Gl$�a�V��U�\ZB�Qߴ1]�y�C��Q�5���R��\rh��˄�A\0\0?���u���\\� ��\\�܊r�a�2�jߵ(4��]���\n4��V�A�C; v>�w�I��D�i3�$���@CL�t���9��6�M�ۘcǷ�J���U�9��n��IX���``�IHeYN��\Zc����ӃU�0S��&��ڕ���z�^�}��8�P�_����G���c��`�/H�4��˄�L]Q&n��D��6������1�b�Sߵiyзn��>F>�>���\'C�sL�B��д}�{��T,\Z�X4�w\r�w����\0��+�����6�y?d#���S(���ܵ�	]��l_|�95���$p�S�=O��c�5\\m��RF��@{��_�LP0�����X���V���XqX��wn�;��s�9��C�úL<�p�3w��\0�i��\n5E��C�1��Z6��׎�>m��&g_��K�l�����_��~�w�Oo@�;qB*z�yNδ����X4������u�[YC,��B���Χ�!�Oy7-M�\r���ԓ���Eo�y���I�@�D��H����~<\r�ZAf{B?�K@]�r�3�����;�u L^�u�uq��#|vǃo��8q�X/$dd� �1���1���!�l����v!�U��Ӛ��9Ҏi��纭ru�>m���i�������wՙz\Z����ٙ�m����\r��-\Z������s��\'�Sn�>��4�.,}�yje�l@1iB��ۅh���(�c�1`�(�}��	a�H�r0����j�1�:EF\"g����||�.1�O�ǻ��$\\&d}�7��,sB,������C�xuB��!㨼���̟9��\r4���PcK����HL�}�{h_D\r�t���܀(u���ɫ��\nK�&��Aާ�,w�ߘ���,h���]X�3c<;� 0?�Axj&2(�a���8a%��ڸO6��{�]�=ShO�a�5�:�|燵�J�\nAa�=���s�����T\\&�xKr�7��D��{t��A��kw�s��Y�t����K^m�\\��Z?�侾״����g�3�~��w�\ZB2��m�����������䫫�Z(b��w*���g���N�����v�I�D��1e���x�2�e�E/kց��u�a��\nKI���������VǾ�����&}c�3O��ˋށ�1�}����n��	n��O�Z��.�TP+�\ZG!lS�g���ǡ�\Z�V�����D9�T��Z�v��O_�X]���#o�\Zg]��|������а#�l딮��Z�\rk,\Z��h.���\"]�\'u��x�*дuY\r�ݯ;�몳O�,�]�=������@>�vcM��B#��D�!�+а�	H�c	!-O�\rm}�)z�{�̃�F۾��Id�\\�ڗ�mk�`�Y7�g?���;��Υt�Wۻ��˄XuM�w���9�m�5e���K���5��t_��\\���3.�j/}ǜs!�������\0\r@C�\0�ZH(7�\\\'�vX��C\Z^�r-P]�M������]������b���>���ǩ���ñ����3�p Klx�.�Z\"�bBX\ZB��uB�����mO�>\'hS��m�\n���!��\"78�8�������,����|}�]�ޡ.k�(��J��n׀�ɸLt��~�>��1.��WW�]��?�z3�3r\r]�X]�����A_L���Q��}�����u,@C�A�庀�գ4D��s���m�@�P�+��ԯKX�]pnJ�Ѝ|n �HD��ujy8��N#O\\	W��\"Oi��4�\r\0 �3�Kh� F��>�ɶ��c-�+�P.�k��Oۚ����enz�uM]&�j�ws`3U�	c}4��q����T��X�kDl�̗��O�H�{o���m]�Z�C�d�wo\Z\'!}Q����AW�X�\0\Z64���~�x�}.}N��͢k�2�|��SN��;]}��}�����as��X�jg!\r���!WB���v2�E����&f����.�H:���@�sj�i]&��f�4�w}JM�6�N�e�\0�yC���S�\'�����a����rBה��S�u�+u�M%�O{��5f��-�\n�j���΍��}�3-���/@�s�^����w5�j!�|�@���*�ynW�N�~��X4X�ا�c�S�)�ѵɍ-ż����.Nof�GY��-�M�y �3@C]��ʸU�B�yB��6y��Q�t	��kJ�ܨ�߇Ї5K�����ZW��0�o�y����2��v�������s�����O��k�Xe�X7�UG}n�L�u?���R����5���C���[��s�ך��o�w��@×����׿���f��~���3�+s�7�q�4>\rH�եd����l�h�nO��sL�2�`}7��Ŧ�Y4}6=�r|��MK�fz��룝Q��7��/t��/?����5���/�!�%��F�μ7Vk�37��SZ�&�m���B����w}K헦�6r\n�,�\"%�D2����2��h�.q3��=E��k�Ŕ��MEN�Z#�X}�С�i����O�bd��gOe�̏j�P�ŵ�UP��-L���(��_���;���XP��雴�i�pm/�A��禕���J�Wۆ,r���]��˧~���v�G��m�#��Q��2q-���p@���@�%;���<\r�r��#��@C!�2�$[��� a\"��)��:�=)�Y+\\!�K1�]�Z�珓m��Jc�y}떚��~�.�Fd��w�+�����e\"�%V_픻�:E}�5��]|�I�4�sp\n�s\r��O���n;Mi��g]z�qV�T�7u���Ս\0\Z���/\ZKV����}�o����l���ݞ���\\��o�#��\'/e�u�\Z.�l�:,\Z�b*�c�ܴ2�\\(�j[����{�,>��)���;�r��g	2�y9�ܹ��[\'�����=� !,7K�$�?k�͇���po��\"!��EC\\ƬQ�uCL~U(bN�b׍\\�H�����N�݌����ܱ˚a�.:��%�ӣ����2�4�ݱ<�=�g��|ʙC���N���F1���5C�k\\p��}�ƫ��|�@.?��h���G۟�����/���~\"�~��\\����mIK�RF�;��ѻ�]����>��g�J�S��4cn(>��O�|ʉi���gj�O�u`\Z��{�d����^�_F��*�PO��\n\"R��\Z��\0uc \n\\�N\\`�z�̰�\'|։���Xa�G��ǡi�NMs�5c��}���>�v\n.�X��*̋\\�zp\\&�殎����w��9��\\�z�\\��Ȣ�.�|�=6�,�j�;���u��I\r\0j����X-��@������������W�%��S� \'}m���/�߫��vuF���O{�����;ǻ�,�>��)���+�^�C�	���%$\Z\\���X�A	!-��Ȥ�\nBȕ!$}��i�χ/�2�:�J��z�}C���社s�\Z>�;��O|�h{���D�(��W�RT���}C��\rA;��.�\"��^7�>�O\Z�97�49,��}$fUۺz�?��.!yr�M�]�9Y�W�dx�\'dx����{�S��������_���V�o~{�v�<������u�0��\0	h�G\Zr�,����L|\0�����>%_?s\'�]9)�� \'���0(>\"�`���O�ԏKc�0���H\\\\��kݙҚ����6�;����]�f]&�L��e��)F�p�\"k��Mu�H�׆�ߵ��ZSR��Pyum�i�:ŀ\n,P~L���M����h���+\'��z%\0�\0\r��]���ۿ��Y��9{��4g���v���?���l�l˥�@C[��>֩�9��Է����W�.�q���s*c����F��7��0\nr�\"�i%��1cb�� .��.+<\rb��C��lk�=̅B��#�I[\nHĴ{_yr��X��Ƨ�A>���]�\0��AB��՗9�s}�?s�w)��`�g>�=/}�0D��@u.��o���>� \Zh���C����\0q����?��������\'�[�����r���O�ޏ���a7Ƞ� i�s�n+$?e��т\r\Z��h�Z��*h�U��g���S���kҕ��ς�fR�>��y[ʌ�}���\r?.��P\nt�sL�K�H�mk�����HB�F���(2A[�Yu�ʮuC�\Z��}�K=��s��{��>\nٻ��ݺL����.�9�Ǣw^��K�����u)���2��m�C���f�<Α֕]�\\�;�\Z:�����Gnp�4�r6l\nҥD�(IԳ�_��׷���������o�~���k�2�`y��-��u����\0\r����K�Pz�Q�kX��n��,ֹƜc�,�nC\0p>��7�S��&n~�n72���@\'�S}�2�?!_\Z$��p�tB6\r$�kVnRN�U6�2��׹�Kyg_�&G�}�F}�Oں4]B��Dn^��>�mmo	Z	\r��)�uc�1FJ��>\n�O�ع9T�*��4�rէk�)c�xL�jwd�>���j��.t\"�c_�w0���?�i2���	0 �}{}���&������ۻ\"�q��5���Z��[)������[?4`×��e\Z��\r�pY���1��Oh�}���?��m}���(���o�� B�+q�s?W��7!d-+\nO^�{8l�������v�T�̮uÜ�f�u��L��\r����g�Z��O��M��棴�W���eb��e�N�H�nXʼ����L�K&�Y}���P}�s��}1�<?�:�c-�B��Y��9�������_����/~W\0��ȵ�>���_����>�!�`P��7�q������<��{Ɇ���7��]-�7QÞ|y�X4$���k���rLa1(u�� qJ��0�t����\r�V@Q�s��r}!�vUB��vm\"R�b\\(B�I4\n@��DP �	���Q%Ă>��py��wu\r�9	m���w)�����L��v�]�8����޽{�\\�������v�.��v�L,��\'�\\nk��v�S_0G,(2��, �+Wq��5?�(�i.U��C��ic���6�Z�|�/������\\��f�РnO��f{��`�[�,��p��q���xN��]r�4�2Ξ����|�ٻO|�s ����\r�\\.d`S�S�_�	�u23��/�*�C�c`L�cE9MP�~ Ý���1!$nǟu!$�α	�	��)C�=��p$�K��x�	�}��>��Y����u��穧��H�;�Ա�=��2�#;Ĝ����\r�F�p\"��1~K���]�����5�S�����gN�ֿ�Y�1���C���\Z��E��{��={�^_��1j���l����^�q?_���O������o���|�s����_�c��o�1W�QyR/!�r��7i�� �&�ޤqP��S	i���\n�������S~��!\r�p��HԢ��{E�Az���ᓸoN;�r�rq)i}�źt>&�)u�+o���3���=�D,=zd.��hPp����]&n�eO~����sR�{+��ymhH(��В�����]}��!d\\�\n��Է����z����R�9�\r]�҇�E-�R�O�؁�;�\\D�{���\Z�����Q�x�^o��ͫ�i�e�����?���^��n��wl��K�4Wp\0h vt�$�����5Q��D|�����f�틹�P\'r��\0ԫ/A�uO)nv׀q�؈[E,!��瘯�۶VO����Z7��1���g�T�u��mB���ֺ��e\"v��Z7(��`�\Z�&׸:�r�{�w���!�l���k�0�;�|���>����׀�>6��IRm�=�p�k۳g����c΅[���=���֋4׀�g�\n�2�l�g��?�~��mW��폾���?т\r\n8`��O�à�h�W�b�OȤ\nks_lJ����)�\'�d\0dx���yO��p�B\0�~ ��(�F�e�)�/�]R��X��|��@�ݾO����y�?��޽{�������|ʪ�7}]&����s�+�̧�)��J�kl\0��&������7ᾂi��M����>s-6M�n1�\nd+�|�j꺨}�/�Р\r�w������Ͻi��[?>�[xQ,\Zn}�����9v��񾼳�_5 !.?��綯�xk��W~j���~j{����u�\Z�����f�Hc&�\\��](�\\ۧ�;�B|S�s�չ����m*�5��~L%�$��F�z����9�W��?Th=i�����Ԟuu��+�����p�o~\Zꔳ��L�)21 QN�ȾAС��X�M��T�Zs)ߺ��:3~���T�>1D]O���=����%�|�b}�_ڞ����W��{��	?����4��O�/��#I�~~�o%��][ޓ���=�k_���o����g����?#B�?�6��_?�\r_{I,\ZVhH��9\'GAG�R�2O!��RB���S< ��6T�E�XG<\rK�$�<\rb� Q\'�j8u@:֤=�$�n�ۺa�u#t�d��\0����!\r��2��¸R�\"�Į�X�1v�z�����__��r}��j�����~���뮉S�m��u�4w?�ry]�M�}߶�4�bʤW�[��s�h��/�����vM�[~E��w�����Ǘ�ƽ�2������������������gϟ�~��ޱ���p��D�P�����Ѭ7���W���R\Z\n���8�C�(�d�(@d8d]V� �Z/T���R�ǉH�ʍ�NԗuC�q��\r1\'�����F�r�\\& �^_�����6]Sv��n݀�X$��3��{��rߗB_=�U�BOis�����ns\n�0\r��w}��;!��䀆O������\"�+���>�f�_��?]�Z���|i{�s�wՒ�L�5e�˖u��7��������G�/�����>~��������om��I6`ـ�W���jިt�5�<��gb�>�}��~\Z��M�\\�fG�=�2.#C���|�2�x6+�Ӱ^�.OCu��a��W��u��{7�j���֙d��L|\nQ&B�7Ģ�:����]oW���L���&�9��)��7Yb)�r�:u\'f�5����uj���9gOh�Q�}���G�O/�ze{������;�5���ה�����o}�[ۯ~������?��wl?*@�g�\\���֖M���/��~�k�o���\"X������\\�kb��(�s��ɩz�y[�@oa�`%��f���ӬD�xŸP������\"t��A�>qJ�\r)���:�V�uy!ʴXs�Y3�p�w�iN7��\'u]mT�և�5\n����[�~!sO�7���t﮾\n�rJZ������m]�UW�W-X�_B��O5�����SL3W�����Nh����׾��@���?�����\'��������&\ri�x�J�,��)�g�������~�3���گ�������_��Sۿ�㧷�gl��߈u�kM^}�U�T�	�o��t�\nqΉ���s������&��^�ߧ��Ϲo��^@6ӄ�V�1�xO)\n�F���g���\r�i�k�T��C����C*�z�|��^@� ���EV�����{����]kˁ(�)��]���U���ϼ�u��ї)+S닾���>���3��n_�2�rs�_��$�^�F����7$����������N��4gϊ��W�~�ol���on���`���o�[�����_{j��Ͽ}{�o�~慧��~�����F���m��E�����\\�T-\Z������^db��-�s�o�d\0d^N���n���X��,����HY���9t���uCJ{Ŵ�]&�l���P7\0K)�䪺��V��F�<7�SH}��1�>�?S�m�y�|�ҷ�r��X뢩���\n��9��I\r�����\'>ax\0��3q����\\��^�u�緿��7��|�������Ŋ��۳ۤ�K�%���j�2���a�˿������������?����?�����o_|���z{��g�H�%\0$�ti�At��ȱ u-�!HllW��:���m��7=�\"�7xH���5�SB�X�z���Z�����7���n~*x���^c!1�u,�}R�T�k%QTB]&r�ɩ�3�{���E\Z���jC��>TNs�����mξH-��}O)�����R|�&d����!��O}nR���/@��̵��0\Z�e�߭�:�S|¹>��[�����i��Sۗ^��\Z����x��w�[���}�����j���ޱ��?���/�����K_���r�я~$��FH�ֳD��0�rM�&�=�x��\r6&����>�S^LpCȆS��̆��]@��w&���y\ZP\0X�s������LHɉ\nܵKO�B�ܹX7��O�:_��3fV��2��eb�6�j���U%�n]�&�N��q�s�5�������O]���rķ�ꬃ\\@A�@!��m�o�}=�EC�������55�ˆ�}�{�W�����g��o������o�w���no����g?�������\0\r�=wo�����_}�������׶�n�ھ��o7q���~o�����h�}�SNW��]@rM�4\\�rj�؜�؞ڻ!��.p���? ��T����p)��Cl��W̕�(����)�eʘ��m��U���Cʚ��6Ğ��դ@�E�x�=t�m2v\\�g�f�Zߺ��m#w��4��G�����sK7��H�کs�W�[{O���s����wg]\0@�@U�j@W\ryF��]���O}j��|���|e���|ǀ���׶��_n�xN,~��g�^���p�C���?���ﶫ7�4@�o��ol�~A@����k�ܝ�m=�U>����O���x��?�|�d����5f�@$W����\n�����=r.\">e�l,)�W��!�����4��))��Ӏ��?�D^	Y��@�����x1��@�zr�b��#D\r�.��ɹ�T�1�e��F���N��/wy1�\r9�g�t���8U�!$o����7�y��O�j�u-e��{1����5���	�pj�]�}���^�~�c�^\\\\l�m���?�}뭷h��on�x���_���>�p���?��L�^xa��3Ϙ��g���g��~ד�����6V\\���\'�_��Ld\n�,����F侢NT��̑��,��S��*��������2�\"�������c�]ʻ�-.��ƛ.��N\rd`�B.	gY\Z�i��\0\rX?1�1�v�ĵ��m�M~����Mm}Ki����{��2�g8�q�s=i2��S\Zb�Rr�o_e�����}�C)7\02W�Ɓ�:�4�B�\n�1��M\0h�l�w�w���;�c����� ��\'�  �G��h��#�{~ـXE��O����~���@ý{w�����}�Cۧ�~�X2@��Wn���l��_��D�x��a�0%P ��}�����r�)@��\0Uf�1oK�a\n��1����d�0â@Oq�p��\0���f}�4\\I�!����O��ڢ-\"���!�\'S�\nI�n`�)c*\'Թ�C���i^/�����v��D�j�H�^�,�	�Z�oyb���ׯ?f|�{��ɡ��ʦC�A�g�>�n�Sm�}0�2b�j]����\rj��|d�g�g�Ǐ.�_��_��?1@ý���\0۳���~��~���m���/�+�����ھ�]���������ݻ�{?w{�Kw�f\"K��o��q��E������?���_��_�O=�����F�I߁�k �8�>�g��V��Ʀ�[08����|��MN��ݟ�`�`\'�S2����=O�z|��}���.p# ֔�V�Z��AL�{Vmշ����˵�2q���\n2l���K������c��c�]�!�%��p��fz���~�sʝO}�o�w���*?��B����z��\\����K�?y��A�����}��ꯌ%\r<��������s�����_�����WW&z����p-pa�\0Ȁe��_����_xj�����N�ix��\'\r����t ���?o��^�L��!f��;����w=������gmiN�?�n�Զ�)�-���7Ҫ���R���A��k��2q����}\"���ȩ�!Ub�w-]�ǲn�gL��Ǫ�Ս�եG�	!^ᖀ�R��\\�fJ�h[���5��%�*��i.�M+���<��t�2N�m�7f|��9U�f�6����;C�C�Í1�l2|Ҷ�ɍ\Z��\r��GdBT���W�����̹^����\0�\0D��	@!��;���KO���Q���я~t����r�ѣG���������q�=��4��}#�A�#M��|�v�-c�ŷ<����`���q6����u�Ӱ����O@\Z�G=��!J��Պp����o)�\r��G�ԕ�&���ً��D�k�X ��8DQ1\n���Tp�.2���^\Zdn9�}�/W\Z�5!5]��t���Z9ƢH�u�Zbo��C�\\:I��q#��1�n���s����@��ｼ={��\\��>�>�{�6 i]����Ϳ�7d��_�>��wm��Om_�įl����P��K�}���t���7�\\�:u�+���\\�Pe�W�b:����`J_�Z�w<\rB��Y/�mk�t\0d�˪��~\\�i���Csʝ��}�OY�R��!˾O�}�A�L��2��G)c#&o��ܷl��PVL�Z*_�Na���1��͇�wז�|}��R�|�bj��^O�~�ڻO�>ֲ��a�\Z���əù�k]�+7h�A\0���}OBW\n���x=��K��n� yT��\Zp����������g����[���\0��U�	>XC`�b���\\���9�����mq*��g�E����k��N�����%l��>��Ԣ#t���0�D���>H!dBB�..����}�]��u�T���7���D��eBx��!�p���/���+�t����\0��B�:/@���Ƕ_�xC��z���g�x���G]�U�?D��L��^}�W_e\Z�ѓ��Eչ	\0��j3�8���400?��O��}��0�����ۯ|�[&4%�\"\0h\0d���������/��/���_�~�ӿ���O~b�\\$(�<|�������k�.C��\Z�cl>�}����ӷ/C�+wZ���ċ�>�s��&*���ϱO��\'$�D5���/����a$�;6��l���ţk��<G]�,#e�����24o�w�{/�����\\m�\n��~�)~�wN-�Եk����?�1�7��>y�n�+#\r�ƹeB���όmߐ|!n�X(��ݕ�g��i�+7h�����M<��zހ\r�����;����Z\0dx��߾[	����n�����g>�}��~i�����P��%���\0!.:8�X|Q_�&��EC�oh_��[��Tn�����lR��t�� �3�>�[5��fu�J������9�3D�1.\r��}(�9��-CO�|ׯ�t�{����>C(�<���1.9�]�m������Վ9ۤ�,M&-���m:��4L݊�G~�K�ҷ!yc�G�����s�!���W��6�{,4��F\r\Z~��! �cs���_1 �(d\0hx�;�i8�p������>�)����B�x����>�\Z\0X4�LQ,\Z��c�E�\0\r~m����\0\rӷ�X�W�ټ��7|:@�;�TQP���)d�r�u�7������t�sǼ����m�0����?�.����}��2}�Br��O9�3���c�4���G�e�A��Q<�&S�X+��aL���w�:R�:��y�;|w�}�m��8��_���_��_��x��0��\\޾����5p���A���3?�3����=&Z|D�X.�{Di��x���\n�\\�%*d�\0j�����!k�i}�E7�x�>�\\z�v}�6d!��Ӡp�\n��ǧs���B?�$���ah\"�ܻOl�E\\�;#��÷��\\&�N��t�[�F�\'����v�X7�����}�� ���C�y��Ї� Qh{Ħ�i��y���8��ޔ�r���61�E�wH%���� ��ʬ1}��^����Zn[z�gƶ[�B�+F9�k�A�t`\n\0(���B@�m�n���������{n��O\Z�+�_��_���������}��\r�������$!,� Ѐ��^\0\r���n�F��7ղ|��\\���rN�jYC�C�;���=�e��v9�N����\nWu������!U#?���8r�ilYD�ಜ��bc@n�G�`	A��������R��v͗����`L�{EW}�˄�aW;���\\��4�[α�+dO�}�WF�!�YFH����w�	.�h����\'b��._�\\Ԣa,eĝP�r�H�ݖp�b����,����7�[�O<a�~���>���������ab�,�/-\'S��\\�2�\'ƚa�S��-�,��hJ��O}����Bt�՘��9, s�ps	q!�h�i;6�4]�&�@K�S�1@��3O\rd`�\Z)$��������K|�K�Ɵ����Mg���i��Y׺����(��)?佺N�˄�r=��yf����qUw���@�XzK��雯�uF�ʡ�3G����}�y��n:\'��4Wn�puue��\'g���}r��k�m/�>���ٟ5���?���G>�c��.��\0�����s.�N1%tEF��v�\\\'|�-�u�٦��LV�S��ߕ�ws���;��5�|4�4>\0B�1�h�=�\r1�l�T��	��3�tǤ��z\\K�K>��1�B�\Zl�	k�T�y,��9�s��\r���:寫-�\\&���2�\r����j��g�i�n��7!}�!��N;GŵK\Z� �W��)/��>�4D\Z�Oz[�m�aV�\\m�4WnЀ5x\Z�z��\'?�Iã���韚�}�c��ׁ�;����L����\'f��-t��@����6�&B׉�O]��t�Q��.��s���m�t)�?����]��P}Q�+����[^�Ol0�\'2h?�UC��{\rX�6�Z5 ��D�X��C���{?��>d��N�2�5oLm�S�o��aH[;��nk�h�`�������8z]��:6�$��*Ѐ��G!덦��\rc�m�3�>�٧��W�6�M�k�agq�����}����X-<��3�����f�z\rh�\0h�&�*����K�]�����g2�iY�i~�*uq�1 ��6���b����7����q���\riـ�L��z�)��V\r�ՅX����Pp�5��b�`,W���\'�L�i.m��ڷ�������m�uD�T�g������:�W+�5�SoJ䬆�j)B��Oɺ!c+W���)m7蛫��z�|�]��\"sQx\Z����(פ�i�9�+W��|���v��;!�>���)Oε�N�Ԣ!V�\nm�jz�$������z�����U�ayq[�����$����f���<\'�rN��w�~ꂐs��.1c!�{��uL������0�����.%!UH�b �4�WXMIg|Ž#�����҂��`ŀ5�~�\0֪a�.��o_�:�8й�Ŏ�9��ƀ�^)�;����}֏1]&b����|�q*�M���:\r���x f�bŰs�Hߡ ���[��[�������ӆ!ru���<��v�)3��Ʉ�٨�9�Z�s��!�9�i\'r�?um��&��������	ö���]פ�\r����2)Y�^*���)@Csqꂐka�M1f��<�u�y�o�]c��~L݆ȣ�C;T��w:��C�VM��.h^�b@X9���zX��������mo{���ÇG[��@�5�a?�D��#�XP�|��\rd�x!J�,�=t�H]�]��Բ|���2a��Vh�f��n��Xr�1@����N3�\Z��M�%�X���2���,el�䭶o��K)/UNBF�yFJ�4�U����u\n/]u�`;����m��Z�0��ȵP0V�\"/-$�8P8&�67-V\r�ھ\0\r;�vrk@_4�h�����\r���� ��A�\'v�����I9���<g�U�����=�6���\r�g��k�<w(!׆Cl@8�[ ��=����,�{�u�����~xE��+|(���>c16\rc�/�v�\r�j�C�{$��}�ޔ�H��9�=}�u��.HF�9u}�Ҟ�m�+]̘\Z3����,T�*�b�핫�R�I�\r���b��Gn{�\0�:��S5l�����pP#����c@��`p(��|(���`�$��K	���M�:��G\Z��>\Zp��ng��{q�\0�\0�\0�\0������ѐ����[&�u�}F��,@C7�W�\r/��.e!�0k�q��۵qIx_1��yY��~����\r�(�vl���J>�P�q�S�n�`C���X��ݪP�l��J|���2���ۮ�MmƸ➎�����Y/�ɼ�Om�e�i6��Q&r��>�\Zr�M]{T�1cT� \\W��6������j;�>���>��xB^չ�բ����m�X�����ק�be��T��\\�kC,���,�Ş\0T��\0,��ϧMCҸ��ub�N�H>��r)l�W�;��zt�9�����2@�L�:.r��u�}F���߱㵯|C��)>kA�<f3�q��TA{��\rW����~>�G\"a9ǻ���W̅){,�@�C�/U�!G?Y�����ZsјgՁ\0���N4��!ڽ�L��c����U��q�3�S�hH�)\r�U_�M�r͚(��=��Gߞ�Ƣ���A���?}u��U�1���0g���d\\��l�����i(@C@u@�J�j)a�\ZN�Vw�W+!�Y�7~���,m���SI�x�.�!�9D]b��k�mk�غ��o߼!�x�i�vA���~�@B�� Ý(��W(�K:�����v#`6 ���pX]���H\n6�\'V�֓�!�c:պ���ǄGM յW��7�g�mݵf��LX���2�:Fs�;C\0u�2t�WAE߱^����H75��(�����ف	Xs�=��ě{����U��h��g9ӥ�����\n�\0C�����Z�\r�1x\Z\n��Ѐ��FH� Mj�T�əs�\r��>#u���>C�%�9�s�\r9M�B��Tҏ%�.`$7�z��O��U#�@>�����\0���e�.!1�5��s�n\0��}��M������rQ��Ϣޱ�u��v�qV�e5v���7�P7Oc��P٥:_B��ֳ+_���#���1>���t��bO���X�>�S���t�C����Z~]D�as��,�CS�s͵�\\9s�bB;0$������[-��5Z�A�b�и�����}Y|��Q�q���~���>e��ǦS����;o���=�X@3f|}�\r��9Ҽ=�0?�2a�\rԑDƀ\r�\\)�Kƶ�XW���!])b�4�?�e��l8G�����5��YC���\\&hL ��c.�q�EH�1��6C��{b�x\r��Kh^�w�I�#��%a���D���Z�W=S�͹>�����B~�����w�����9g��`���:E��:D4G�Ŕ�k�r�j�h��sB8\Z6��ʵ~,�#�\ni�����>w�ՙ0��+����l}�觌������}��;��Oi�!�o�g�!����)�2��lpuy�Q\Z_\"P�n�>���ȇ�Mu�66\ZE�WY�kl��=7�a\"f�a�S�\n�G���<�Ӣ�KAV�����l#�$��Mu����u�B���׼-7u�\r�_�!yC�+&}���+\\i�Z��El=�ȗ���\0\Z�\"B�g-Zm<\r1�-O-А{\0���H`�A�9kȇS�ض\r�{((P7H�\0b��\'�[���r�?uQJyv�{�^\0�hѐҾC����!ܦ�����_�PӔր�N�S�i�y�_�=�N���\"q���\r)�\r��1�ڔaN����1c�D7������v�*�U� ��>��.�cL��>�R_�nH?����V9����QnJ߅䭮\r}�Kl��2b���v�\0�&�@�Rڦl��1Wސ��֗C��2D��ѯ>e�}͢���h�#��\\�dj��n8��e���4	Vp.�i�x≽I+�S�N�SuBMșR��]�.J)㬫\rc7Ɛ|������S�7����M9�ts��H�\ZN�g�s��4a��NS/Pac�l\nB]�~c�� �2�.����η�s���Y+�P�@qU�#L��6*�O�W߿�����N�s�;Su���~}��s��3�Pm�5 4o�ix��p2u��=x�@C�9�*{����*CŦ�d���4�!�R�=\0 �( $]L���s�?���##�\0\r9\'�M(k�@����{�-\ri!φ�:A/F��#����fhu��G�N����D�6��u�e\0�\Z�b��#�lZB��yR�OU �Zc�[�@fʗX�]c�k�w����j�Х ��2ѧ�HW���o���q*č!��6u��w�;4o�{���:;�\Z�<e} E����R�u����AL�!x\Z\\��\0\r�@\0@��=\rC�4q��2�K�zd��]|6%5]�~����sc��o���x��Oj���\r$���K���s��d��琍΄W���u�I屿0�o�����r80���� ����h[kt���#mcx�.��%p$*IS������	����\Z)\nyq����eJ��Υ���!���DH�!�%U��͏V�z��de�����r�y�\\;nD����<}�4����\0\r�@�.4��!�9��)\'PCL�� Q܍�O4:v��Y}��:h�>�\'u���xR�h��S\Z�C�b0��/F�?�<vo�RA� ��;�?�! �$\\�I��<�Ib�c����}��޻��ZB�,�?W�ۍ���>�NB�Ǯ�zRj�е6���^ᖴ];�Z\"���3��X�e�s��Ч�C�9��1�^�1$o�/��|��G^K�u���+��U�X�yYD��2^������\"G����e��3�y�@ԍ��\Z�NaB\Z���WX�՚��$�?nx�RP��&rU�VΆ��W�m_�cǘ��5�F;e�!�}O%_� �%(�޷&�Z _3��:��|\n*\0nc�@�j�����K�#�����Q�.�����O��ϲV�w�P�>���;�|\n>�G=��^u��J��}���u!�eb�K�L�`|�a�5��\r}��g������Oy�м��Ẽ	 ��]O{�\0�6�N���d�ԱZw�x�a-�,�f�&�_,�n�ze���c��E3��6W]P�W_8�!t��L@N����ǰdPsV�~S��>&��`������A*����1�4(H�3|��.}��2}�a����+�s�G�#�l��i[��~�B6F�����Hv_B�U��[�(�w��6����BG׼��eh��`��U�k\riC�r�����X����zm݃��Q@c��V�N������Bd�7�^�٬��ܹ��Pr�O���O{��a�S�34�i8�IY�|cI�:(�K�	�78i�dh�:�%�\ru?�������ⱼ���H;����֕z�!޴/\"�5�eu���c��\0\r���2�$]/�te��ph�Ol�t�]�C6�6��I�Teh��jW���i_7픀��}�Ͳ�x��ؾl��\"(��#�N=�5_z���o���B��@� H�C9�Z���۠�\r(�JJ�rn���.3y�}��nT�ky��Nq���/��}��X;t\r��>s��ցm��]\0E�����:��v����Eq�H��sߟ|ǽO��4>k�歎�����OY��lH�ԝ�Lx`������~:^�m.�\n���X�m5m`�ھ5P������s�sh�T<�@�������-�V.��3�b҄,�},��JU����ƴ��Ķq\Z�,I�,���W��������	R�}�q����=yw�a�Yn �\"���V������~�\r>&�u�Q��}7/�1����rS���g��Ϯq��M��w�ٟ�ڧ��U���}�v�������t���}�>��r<�[��Cڧ�7S��}e�>�RD�7�Y\0}<c*e�����P�B�����b��v��8��n\0��\\�\n��Xp�ª���!�(@��⨂�6���/h�,����D��t՚u����h��p�,#� �����ݴ����+�9C�AU��	z��l9TP=��X1,�Щ�j[דc�Θ\nx����=�\\�ؓ��ý=ǁXB@yu���k��)%�.���ҹ6d4�����5���t����e�i�.P���s�C��˄�~i�r��]c��>S�����IyǮ��>[7\'���~�2[��S��<]�?�r�`aRn��`�:Y�gQǞ׵\'��#�\0Uh�\Z��Ţ��������H�(@C\\ȩ9.�����5�&;���U\0�-���II�o%n��j#��U��z�6X�:��E}���,|���SwNՂT	�j�&�0�f8\'T�<����]}��^�9i�Z�r���t}L���kt�ꓯkL���y���t��6t|TA�gJc+�I��e���Y!��Zaj�\n��8��.��{�]d|,1lzSsՅ��^NOC��/@C$�@�(ȕ���YOX\04��6Ɣ5g��eMi�ͽy��f}���@���S�<C�|����0m�;T��kz��(�1Q\0�^�OÝ;B(�\0TI\'Z@9��^���|�N��E\0/�+�]I�h�d���(Pͮ�����&��]}�R����eBM	U�F\0I�Ks`�1�D�{�/\'�S틡�%�y��B�����c<�]�Nߧ<y�ʆ��Z+H4,L�[a����ĥ�v��{`��^���(`����4�hH\0\ZԢ��\n[*`��~��[S���1\n^�����������9)bˊ|���z�R>w�wY#T�{��h��i�\"> �A ���\'�����\Z���k�\00��Օp<@���\r]$��[�t�)��.Р@	����@�\rd�>��v�%^��9��Ex%D�!Q&b@����c�SN�-+E��Y�s���wt�u�#�^)c;V�J�o���)�VC������l��*�C�H!����`v�����\0\rQ@�0�c� B�\'F<�qa�\06^��ې�Na��U�c�B�s\Z|��.͐������\\�;��%�i*�S���AƱ�y�ٗ\0������Y�ث\0��,�l���\"ZU���2�|Q��fϭ^Wb�Qg�jº	�RL���\nj֝º�un3F!޻L�ڭ�=D����}�\"�c�\'����>��I����\r�y���*���x#�`!ު���AcG���1OC\Z���{b�\Z8]�8嘥*�\nm!@C���)��D׷�)��+����<��Uj[�T%Or��w	��^��Po�ٓp�\0��P��]�����{��X7\n��n�����x*�#H�,/�y4�P�J�6R��}�g*Iu���f�2�).�㣮_��2�}Wl�{>�\'$M���<7m�g��\"���o�ED� B�u��ZD�cA����^�Z��n><\r6�v�lݕ�\0\r@�h���4T˝����w\r�r8����:V�)�\nؐkX�!�q\'�����$�.,���\0�\0؀U��}���e�/oCW;�o�s���.9��m��c�`\\&.-wTۅ�\"kK�6*.��Ǿd�����8H�����gl�\r����)�H��r\rX�`D�=y�X�^�B��Cݡ�����b��7_\Zb��KK�E�0\rv�~�39ݚ��P�	���	E�ks�S�4�����Wh�X���+@C�1�\n2�0�EA�ďpY�D��G#8��9 ��%�W7\n����,�?4ت�CX��C�4C�m��K9����L������CX�T]f���sR�������sɪ\n���!������ba����b�H�ǩ��\Zd�=&��әa�Ɨ�\\bn�E|MN�%,�f$wEr���F�*���c99��p3(��\nk���[M@C�B�f�����s��YV\Z\nА{m���r�\0\n}��hw��Ȇ���V��*�\0 ��F;`���n?�bӗ���-m�O\0����U�!�ʶ}�͢��Lt��NQlc�F�<��+����94O�;�8}��>�ٹd֛\"�\Z`A�a�N1Ԥ	���T�����F&Yo-ay\Z�wP�S.��9�H�U�<�uW\\|l0�HyA�+ȵxԕs4<2&�^�������f�hԉOSx�X�!�¦�z���\rN�|��1U�-<Sk����- D�苛�(�\" �֋�	 ^!�q%4V�H\\,H��Oo�O݈��{��&� ܤ�/>u�����cd�����2�n�!�oh��~�}�9��Cُ�s����Ա��O���\0�\\�u쾞e�Tt?���Q ��by8�8!<��h(@�Y�TqZ-mam�Fn���B���Iي]��Vī�Dn`b����r\\��jJ�2Ď߾\\ �%����o#!-\0��سnݺe.\"\'�͚��jݠ����v�a5��]aI�r�%��!�\\.�\0:�#�����pC�2�x��D�X9�\nf�z�r��Ɯ��껧�M\n\0������.�Y`�c��`w�b��\r\\,||_�(NƲE<�k֞��@CuO	7�sr���\r���̥~Z��O<aN��\'�͢A�.xsS�C�&��~9�p)+�Pז!BbI[���1���\'Ƞ�G*\'�z}�m��pA-Hg��j ��Na�r)�ƯӘ����Uɓ�_����9TFh�ט.)���;a���)c���\n0���.TF�Zh��k���!u��+D�{�Zm4�_\nА��1U�;G�՘�,��)w�����V�����\r4��4��%��\Z�6���mɭ+R�,ݔ�u�YP|�]\Z6�fsdC�Uk����6�Uͦz��U�߯B[�w��*H��l��Vd���S���惇��Q��T��)�$��MWb\r��\r�xx�R¢����Գ�h�q�r:�˄�LՖ�1/m��j�\0��K\ZR�ԹtS�\0N������1\\��.�Y`�y=����n����h���H�`����1�SF�4䜠CM�:���6w��1��`�Yب��e�n�h����G�tc�v�}�G�J���藛\"��� �o1DQ�=hKg�^���J�GI\"�;ұ�#����bcH%��6`����e��J��c����4[3�G���2�\\q->���lPy	9�q�o�@éY����H�)}���.�?���x\Z���,dVb�\\&��_�8�^y�ʰ.\'������8���>�n�P���.R�@�4�Қ���z�_�a�X�t��Ca�k��m>5��,�IrY��q�)�� ����c��Z-�>���i�p8p��\0ؠ@����,�����X\rx��p��a�����c]!c����2ᾫ�0�T�7�ॿJ�(|n��Z�h_�Sd:��6�}�S��P\\!�}|�\'p?�Ì�wF�(@��>Oh��>jNwp��X�W+�۠�|�h8VS6�9�����g_!b���\0\n>c�����N�	�g���d���6X��l��(�\Z��\0��!&�\r)$�n{�v�\'3y�E|��7M���.^���Z�^m��ʖku!\\�����GN�I�Z40�\0�p� �	����tꏟj����%�t�@ͧ}}��i��Oq�[�[2�R�����\n1\\[���@c�IoH��,@C�py�D�`� ���Z�ɦ�Y��B\0k\Z�B�9�BZ����!��&<�Gp)i\n�3�$����@L$������j����\n(�\\�T�!=`�Z9���`�D��6�c�i�<��M�9�ri]&�@�bM�eBۅ1���Y\0�3�P\n���k1D�ߴg��u)����y:��-��\r#X�����S,��\Z�����Vk�`x\Z�P\n�4��˻h�CTغ�Z�o�T���\rh��+p�S\0&R6��㛠xߴwLhJ�@4����2�0�� Ѻ\0Z�@�Ck�`��\0�Y�ՊO�#7ˋ�Օ�n�;�+\'yp7�\0R���)�\rM�:�	d\Z\0��+�?��QWS%�Lq��_K�������Px\Z�@Y��,�(�%���Pޏ�Q����N/��1�=����E�̈́jH�\'�=T��\rb���6E��&��)q�k;M,!b��6\"E-sj�4������Y�g}Q���Ĕ�\Z�p\0���+�Ǟ��\0��+{�*�WX<,/x��3w��]^���e��2!����x��}�����F7ѿ5�Z��{��DW��h�RF~��~�m��c3��\\r# ��r��8W���\Z�_��쀅]H��M�W��4\\$�4\r���D\r��ä�5q��\0�7Iz�p�$ꄍ0\"TV6��@��B8�������\Z�����4V�)�\n@Q7@�}��R�1�V9.��Y-��Ty4\Z��sHg���!0s��Pe��жww���2�΅1\\&|d��4�?c�N60�22d�3�c�DL�W�b��yBe���qX��DWĝ~������D�x\Z� y�~I��*�i��r�5I��\rQ�}�����.�E�����j%����W�ë�u#H����Qӆ��PJv�w���9�	<�3%�x��۞�O�� ��J]s�!�\r�T`c�âAI�\\���pجĺ�q��uҞ띆(�Ǖ\"��D�w���#�z�RN�Z�2NRA��g��+�49�ns�iL�s(�>e�WZ�����.	�X\r�(����?=D���S��������o���Е>�oӬpKl�i�C��68kR�	��\n�i|\']�t!7f��\'�4j�\0�����W\"#�HaMV�U���6G�t��LMY.@�i*�Sgm�)d�\0Y��z��d8�����6kS?���q�0�N�sNc��@��V��ܱ˚�F���2#S�-�Ĵߜ��\\�:V\nOC\rOC�@��	f��Jg�|���ǰ��ϕ�E�W+뢵�}u�(g�s0�d���i�\Z��f��8`�hKI�Z�*2�]��Z4�A�&G�F!��]�����q���׳R�\04�훚�\0\rhHC���*ĕzO Y+�xd,�e���l>�:�+�\ri�!n-$��a�(샀�UW\nB`�ı�Z7t��.�2�e\"�f�2T������k�w�!��{�����T9E�[���.k��_�}ջR�X1�l��p��z��_�5�w��qW��p-�\rA:.�n//���\\�/�u�u��\nQ�s,t>VK!�Z]�ϰ�b5cpC�EY|\n�`���1U��\\�J)� &V�)�����6�b�?�p0@�G�a����0����&��=P- �|���]������@_t�2\\\n� ���ݚ���$�C�>�q�H��s�O9	��V��7��g*`Է���~!:K���7O�P�k�{ߕp�(O�k�#@�ð�#�\r�}֧ϲ��6��żc�@X)k�a/�.��������k�X��������ztPx�!����`�p�\Z8�a�Zs�ǻ�6�\nVu��Pu�ZȆ��P7�+@C�����a�g��\0�c\0�����8\Z���sch���5\Z�Z\0�jh�̝+�\r7���k,��L`�p]&��ڰ�n�O��\n�P�:ax\Zй���a�){�r�\'O��+!��C^=��}g�@��r�Ё.���!h�10����ka�.�`2�U����H�NW�*@C��K\Z\nА\nN�s8��ښ�\rv���Pf-��J�=�BB`���I�\r*�!Z\0p�F��e�\nc�	8�x�nX/dk�.�l*�S�S#S{�T�6�}R��s\\�UcO�}���N�}꒔F��ઇ�p5���O]��]ҳF��볝�\0 C�@8��c��\nk�:�-�	4�oW��u�80E��S�i���2�UQ\ZbQLU�r�����9���Vʛ�\"Ȕ�� sxn��d�!��3���`o�H���OO��XPK~#����jP�ކ�n�`H��\\&����e��夬��kuL�kc�K�`]2h��\\2!�t���}y��g�C(��D��-�5��Z5�Ƈ�f�w�\\V(���\n�@�~�h`���1`GА/܊��<�\Z�.&���*K�,մ�e��A|&�$�4��I\r~@�iQ��)+w\Z­����c�\']���[I3>+Ĕ|邫*1*�ΡM{W�9Z2<Ԭ�\n,X���n�4I�Y�M���^���|��1��o��].Wkq=y�!�,.�k�����|�5�j͑\"[���E]�@G�;�{���i��#���\\		1m�V�/J����s !w=�t�\r�\0X��\n>��\nBk `��=�k��X�\r���$���#o��Ź���(��4�x���Ģ����6�������.���-)ψ}���,i��!��M�ss�²�s��[-�\r���s���6�]t#,��.\0_�!���!])��1��r!�)@�Z?�8_����\' ܴ�������r(XC�1f���xl: ��eX�UAj���RƲ���#����`B&�H?�@�=�9���>���r�jy����-��&�\\ ��A���g����V�ac�h�&�����hh����ui�Xd�E�#�d�(\Z�n��z���\'5M�-����R��w�NyF\Z����|C\n��YE�i^���fc�nH�BO\r�6�Ѝ�\'�u�֒�k�B`�8�앮u��cںE�*Ӗ�a��u@��c�(�L�Z(A�b>W��l�Z���2�*@MUS����S\\/�ƿ��.`�N>�-{�t)2X*�2��N�S�9A��/Hc�[�P�V�Ӗ3OC[���L�>v%��Cի��}f\\ ,:v�8�*���\0>�uπ���6\0h�8�ـ1����Q4M����±Z>�x�5p���	�S�\Z�S�S�����?h8} d�ǦR�*ϲ@�？B{@��A�P!���)�c��+&��#�n.�`�Mb��/�`C߮]��Pm�RG��V�Np=�i�qE�2aD��d�����Ѯv\Z�~�N%�����Jy_��.�I�����)�|��4�>���?t�ʞ^, zĕb��B�p��^!��������磃/=i#;J@����i\0�KS?��1�?� ��{��d4�u����@�`����e4u?\Z�Ksy�t�ȉ���j��\rh�a��\'��⦖ӗpUʭ7�Yg����*:�m�	��T��_�{�FN�6��+E�\r>��\'�Ky��_�	\0b8�P�i2�d�+���S�����v��!������O��I�Sm���k*��Wf���|O��X�Q�������q@ſ���p+d>��uiV6�\n���P?o�a!잹&>G�/ؔ/u��ʯ�5�9uSFcθ�Ģ�.��i�kߋaJ�2X�}.�I}���ξ�v�3�����J�yX\\��%O����sne��/g2��<�q��U>(�֔պT�}��������w��t}��9!���2Aۨ�1m���F���\0#8�H�O��3��s8@3�r�g}�QĴYp�*t]l냔���qӖ7��R��w>�=�}eVٱ��K�-��L����_$�1�;�P�\n�Tٿ��?c1T�2.!��)��,cgy�o��~$ו��u-:�#��\ZĤ���@����	�1,\ZR86Õ�ﶟ�/6S�>L�\0|�)�h�7}������J��`Dh��2Ĺjw	�����\rF]6��q�hD�6�\r���\r]�~��TE���Vb%��\0R�$�\\�	m@~�USe��~��1m�+�j��-���-�B�I1fΚ\'���2�ʛ�~��+ט�QNN��`��.�\0\\����W@i�.��*��5#b4�EcY$���3�����\Z�dPҪ�!�T��j|�&�!�\"�T��R^kH�ҏ����8HyF\Z\n�З�u�ʍ��c�\nf͹��!�A��#Ƞ�lyv&�*В@\\+��`��Z6��6��9�����q��=���2\0*ph�~�n����Η�9ڧ��&Ϥ�k�]p��Y)7А����.��:�R���y�����[}�x�4��5��8�^U����,X���>ci�4-@�X0��� t!\n�O���@T�z����L�)=U`�R�:ª4Y4��&\r\"���І�c����N)Ϩ���h��.i�:��J��&���1�o� �r���~l\00�p���$�e�g�Z\nQdކ\\{E��ݻL,�Wvy�8Yg�e-%S�۷�����)�X|\ZYX@�Pbt�%��N�}tL�x���kn������#���4���E��wp�~X��\0�f����g줦��7��=�h0>g��RV�˻�S���G��K	/��r2T��\\\'�4ЦMl�u�	��~LY�}�g��E�w���.Ex)y��\ZB��X���A��I����2!,l�\0\"�fW\n\r���е߇�Oi˕0�[�	�E�x��޶���~�kX	В�<����u��-��2�G�U�	�\n탐1Vx\Z��,t���r|�VyǇ��\0\rC�m���W���x\\n��w?��}E�)���>�V�x\0\r�� �\'�>B-.tBH%�����股\'��ҏ�2QG\Z5��~]�\'4��~�\0\r���wͽ9�O�K�f�/TXd�Ⱥ����9���o�)�Õ��JAhKB\\6,oæ����\"���:~�Kq۹��UK�֏ͫr@���fb�@_s���}���C�zl��w���u.p���}�Oж���g��q�:�b�[�rZ�v�`��D�ȱ���qz��+�+�p�+��n�6F�E���.��t\r�4��vrO�d���o��E�gq9\Z.�gX���P�@���۰�\"	�SW�祤IEQ�&�=C\":D��S�q�s��m���_�O��&�\n�*;t�a�ܸ����Q�m�pc�o�-��}�3��\'\n2�8��mh�J�e}�:�R��6��)~��J\\0�^7�����,���$\r��9D�PW̔9���C�MU4S���MO�-6��r�*c�US[��_��\nݏ�۹�E�����i�����\'�-�	�ł�st���Tx���\0�\0�����-�hYCЮ���ͷ�>�R����\Z�)��	��\\	d�SX�%�WS����z�W)o�_H?O\rhHm;7�ϸ+i�r�o�\0Z�_�h5�d�_�Dɓ����D|�`rQ#���D]\ZGH� ��$O.sωk�\rKx\0��?�[K\Z�����z��]w�)�)�J\0�r��=�}3%�t�\Z̸���̩)_M{�X�Ñ�D�aKؚ@D��s�*S\Zr�_�x�[\'�}�Tyܕ�Pl�,��D�=�v���s˭c��bm���]��?�}��	4`�Ia!\nh��k[�\n���{Q9\Z�X@ x��\'ͷn��U�&��w��M����X�����?�I�#�w�m�>}�|ۧ���H\\J�z���y=t[b�W��@6�=h�S���\'��ܿZ���@�M�qX��m���>W�m�\n6�*v{������\\w޻���e���{�h�����6���\\�ih9C���!�v)t�k��O�~R�c_m��~��5���+�����ׄOmV�А4�\\`�:�\\�	\\p�q��\0\Z�4EP����Zd�gb���{Qq��JN\"4��O<aH�\\B�G�lT���UW߶��\Z�)�\'��>�u���\nC<Ͻ�۞%_�\0�o�%T��rc���m�%@H�%�!�Y�!ߣ�|�OD!B/��q)��!�M\\W�}8K�c���F_����\0�CLLe8U�1f���������2��_\\@��kN��S��ȝ&G�v��������Z`xVDf��>��f���iR�]�X�=6S����)����}Z��X0��o�=�_�s���a�mb���\r;w\n~o�s���	4�	�����i�����쀔�w���F\04 �Ғ��K��\0\ZR��΅�AS5d�O_����@C�p�8�3�|��\nL%�uk�HȜNc��}����p�@�k�h���\0�����;Ő@�D��y�S�s�JAti��ѕB,!�\\��|��D��i�ZLiۥ�L,M�	�\n��9����h���7��׾��~����p��[ǈ�|3v���7ռ!rPغ�E�ì@�k�O[��u���Mir<��2JW:���,�s�ja�:���3�=]`��\0�e��ۄq�p�ץ��}�]�\rr*D\'�V9��)� db\"(�A�T����#�}�>AM�����,z]�U���\r6�/}�ݖ����X|�������)�K���0� lA����B\0�J�\rH EQ�Ú��\n����NX���ƃ�e�smB`��6��(��yR�\0sJ���|8��\n��BAA��/~u��\\|��q)`���M�\ZB�H��5J���ۯ����Ӑc��k����9�G@�.���>aA,�^j,��,t��Gn;�G��#���o<���Ƥ�kp�\na!��]���9��2�EÅ!qR!0�|�buאA�)����o�ե\ZlD����\0�xF�ȹQt�G�߽ƶQ��r��2���m��5m��J�+oW?!���h؁p�U�u�Z3CY@����ۀk�!]n	�����~�m����\0�V�R=�J��	�K4������[�}��:�k��4!kt�M>�s�o���_�	뎜C.R+��<��oK�:.�2�sʏ�4t	]�}u���+�B� �.�XP��o�x�4M��+�w\r��0�8yLc�\\2VY��˵Xw-�h��;�	|w���,��I�����u����u7?��Ŷ��i��1��8ȹQ�\Z����E5��4�2\\ �n>u����u�D�v�3;d�*@�Q�d�YM���\n��L{`S9�8�16vݎB`�x\0�>����\r����`��lK8���B�*��2��>@C�~:��9ڷ�1r��6X�*���\'���޽/�Ms�����<�a�:�����:`����rq]��?��]+���mm�	4`r��x��g���`�B���J�h�����FH@ 壧���:�ECꂶ�27>���6���K	�\Z}��\\@C����6C��ꃩ��K �-�j��W�����:߶ɑ�� ����h�ٽp�3@r�@��A�!OV��6ම�.�A6�n�ې:.�����Kk��AV��e��8�D�0 B�5�/�\ZI#vȑo�\n2�ӫ��i�\Z�Ա�G��� T�1���\\�Q7On]\\-���$��i��,tr�j�RN\Z��\r4�5����,����kh+�h��a�%��`��pK+��O�;�,�>�4-PaD|�ߔ�k̤�ݕ7��w�w�G��\\m�Տ}�������M`H[[��v�w��(q]˻>W�e�=���.?-.h�T|��#9��g����\r@(4}lL$�{#���a�e���Z	�9���R�U!3��Q�8��\r4�e�j���o���+eOcޅ�e���L7}���補�SV���\0@o/\0\n���Ψ�����r,���v��i�)?]6��������u�z^а��|����h؛�,��TL1-�� �:0�r�2����]��@%��Co�(e��wJ�]ysmS���޷I��ꃾ� �2�`\Z34���x�A�*�_���0����z�\Z#(��9%�a��q�� �-	q����\rq�P���7*E����q�X\n�S��ɵ��\r]���zp� �z���!�Nm\ri��>�\'��>��s��:�R�k*2W.��4�[,�[�YK(ܲ�L�?H�L�d���BU~f�W@Z�9�l�[��]~+�`CQ�D�Gh�ICY9_���] VK1��:ޒ���X3�{��1�EC��,h������J#uCk˟�]�}��9�Auo��G��V�0R��P��-=\']B�Ͼ4F���m&�C��#�!��)a�7+�?Xˆ�X9��eb�� �{]��h�yrA���u����ͷ~x\ro��_~�-s�hȥ��N�e�]o�u����}b�m\Z:�T _�;�>���>r��n�\r�Y�_P�n��h(�B�;�\r���A6:\'.w��rH�V-��Ս��J��o��M����O�n��2�ڢj�a�T�	X\Z!�{P����_�;���U��>�#��.̉��V�\\>p6�!�:`�vj]��T6s(�pr��Ą~�ݟ���@ǖ�/G���~Q�i��&軽�T\"�Яi,����8IU|�w��p%n�&�w���\\�\0��`�JB��2Q��6J��\\�ॗ�q{�}���]����7��g̽:��O�\"���ۯc��}\"g���^u��y?�X/|��{|7����h����y�˻�Q$Z*X}�ZS�B�ŗ����\r\\�A�,�\Z�p��Z<( x���A8���+\\A|4̲��>�o�����\Z���y]�c�^�]�\r�c��	4pb�:��Zx�1� �7�\Zi�n����Fq�����cڀ�>�C!%�$�oƾ��@���Wǀ�\r2Ŷ�o�c��M|�_�Ml��\0 Z,�!|@��C�\r(9G�\rb��YYe��cy�C`��mX���R�`_������b�X6���w�P׉�~|\rh��2�e8Ee��NX����X�����ᦰ.�\r����x����)C�ii���=�\n,<��,����W�\'��)V(�\n@��0�7�^-T�W���Z�����`|d�@�Z>hDE��	\0MG>>���.�a�߶�j��s-��!�=�rr4�G�u�)6W:�&��o��Y�ҟ����@�dܹ��:f�EC�h��S�7�@X���kO\Z����K��\n�C�\r�xLh#���a#��\\)V��l�쩓\n|�xŀ��Ax\0#���\r���k&�o|�Z��������}�(��և��=RX���}�[kX�rɅc��M�5�n�a���ס�U_�)�|�r�OC�}m��Y`�DO�j�,�Yk�\"8@�3.��Q��zꩽ?V�U��ݿ\n4`�P\Z��ĥV< ��T�U@���\0���N�A�W�8\Z�L훔�!]V+a7�������x��	�|�Asm(my�B��h�.`!*���@���b�y�q��}���6�{N�n�R���J�S�\Z�2����k��J�1o�u�����C�\n\"W����eb��V�zz�|@l=}�Z&[@#��g_�?��W�k�{>��k@��}��{惯:@Ë��ϘkX��\"/\nk�=\\�`P\n;����1��!�&�c���sʖ9-͛@�}�k�.�pg,��r�iU��%��A�ژ}+�f�\r�	��@\Zu�\Z��pk	����\\��.E?��a���Z-L�Z4�������YX8�)\rz2���iH\Z���o%�� ĺv���T�@L�\"��.\\ab|��+��|97��Bz�w�-+��*@�t�bǁ�Na���ts=4�����r\"��Ē\r�\'s��ɰ��Ĝ�p�	��\"�U݅	s�¿�~�o&m,D���s�S ����k��GcI\0o!0[yD�����\'ĕb�2!�M�*l�p����|�6����ރ?:�Pp-��~�s�fz��&t坃�z��P�om�<h������Bא�ҧ�]]�;侏<듆�����L(X���[�,<4��O=oz��_���3�\r_���������=�SP��j���@��;�ÐFS\0p���(�΢A�U�\0P�\\����c�i�����B�q�Ȍm�~�W�s�تOZ��r�P�ƣC�,����,E`X���6*k��f.c�|�PQB��r��~�/!}W�4\\W�s��4��py.��&D��ƪ~[�u���O��4�\0�P�VQ���L��!�˩�(o��0�7	�Ph�\\ɩL����>�Y�%�z���Ѕ��?XWP�e^P�RN�b�w����G>���\rc��O��i�Z�k�k	\0����I3��������O����)G��9��Gұ��)�_��x+�g����@����f��Pn��~tO~g�{����ߺ�����i]����=�2����P����\0��Cw�����g;�\0�*(o.X�ަ��h�@e�@v`\'WW6�1m?Ϲ\r���?��Q�0�h(@C��p��^�&�����?���%�K��1��V�\\ކ+�E�`�u����%|yVK�����	�z���@x�\n���ھ�~!g��K-#�=��7�9zu�1��\"[���Z�\r�fsx^N�0��|�Y�:�!p���\\�I�Xpܧ%M;����ś��k�n�w���/��\0���(��S���^�\r?��)5\\e5������ZBZ�3�.��re9H�,]��&z�=t�c�������P�	\\��5Д�\'\\f��r�Ѕa-��~S�N\'Ԅ������0W����y��Ջo�����Svӆ��>��r�1e������m�K��y��\'���B6���00𜩀>�N�[�<d�w��mp������ۀ���Bw�*)G���T�ve�ͧOS�-G����o[�F�ʱ��\\�>�[{��KW:Y��JrF΃��~k�`]�+��x�\r\"�b�K�u��dx��W���ŷ�7�i�<]���X�E��E�	�Ld$ 4�i���h����*1���(9d�MT,OY�k���b�d�BĢ��QT��{Ͼ�C�_0ĂE	C}�5��}�)��1��<�����UG߱��xn�U}N�;��	}��> S�,mW��N����!\'�u�|�x����>��6@\0	���K�IZ��*o�j�@�H4	�`R����?+y�X4�Z3�Z��7}�Z�w)�ƍeD��\\��M�ip���v���\\�c���E>i8�k�T�q+��l�A4�w�<��	%���?.��}��:�������hD����\'�1\\J��S���T����?���2��@���7bՐ��\r��0n�*ua�(t�6���m{z�\0�\'�>c\0\r�gjۆ�c���i3_�P���w�x\"���ԵB�#�	\ZD�r\'Q΅�����}q* �\n�!�yM`C����Y�m�U��cy6�r�`��L @��/ܒ�P���0B- ��0�,�>>Jo���\'C�sUx�r���7��k��T��ٚ֝�̗��Y�<\rU9�..�:Q�\\\Z�@����΢AI5Z��E8���ٯ4_^\n� x�[�K��#�[��N��;�H�d����MW#�`��\r+x.�!D)��ܜs[Y\n4�1Ն�Z�r �Rߘ�\raQFB�4f��]�c�ڢ�\n�4��/SM���Z���\0����\\W����a]���}qj �*�c+\'��A}G˱��0!{xo$�U�\\&6�R?�T*yVp�z��խ�S^;c�q\ny�q��-{Y\0�9̽�~Vp�X��mM�����W���׌��Q$�t<��4����=PV������@������pk-�E��J��1B~c�ˤ�<�>x@��\0�&4��>�k��������ρ{-@�%n�6��xQJ}r���o���\Z�+A�0�Ѱ��E.\"��!}\Z#�.�1e\r4��雘&W�\r��=��h3���\\ZcO���u\0h0\'�����v� �\n�]��G��*��5\'E爷��\",m�xv�X6\\�\\i��k��<�X:�^�l�9A��>}�<�ܮ���uc�u�0�	Ɵ�к}�wbA,&̩}�������\0uc�Κ&Ĳ���R�����Ĺ�dK����gO�P��K+	��7�aeqaCc\"��\r\0 �\0�1c�p~n���Ѧ���;k�	���7yƅ��.��������o���@�@����E6�B�3��^(_�.���X\n�4�$MuO�D��7��K:�&���p�r̸�c�G�SW*=�d��Y�ǪW�����\'�� ��S޻L�]Eշ�].�sT2�y�B`�`xd]&�������A�Wr2rʣ������Y}�d]\Z��1W�	��\rI��\r#(�{N�����\Z����Bn`�nlW�\Zr�T扞J��9%ͼe�*���w��k�h�}�@�/�3k-��S��\n\n$\n�+���o7`�p�����(4�uոk,�n�P���ł\r�=4����{Ⱦ�u�	DP2+� �p�I3Ģq\0\Z.g�\n>.�4��Kh��\"�s>Ɩ5�<B��g�넒��E�ϐ���YŢAO7�2�Y6�\0M`ChYn91\nx�<G�\r���6ԇ�\\]J���j��,�h��()�J��?��!kcH�>׆���z�P���9��Ef���-��h�,��׭ES\Z|�be��o:r�4|孫-��o���kx���So�{m\r\0\Z%�_�pu���}h%��\"��[qm�ZO��;����s�g6������\Z�\\+V}h����\0�NX[�; E#Р&�1�S�YP�`��U����>u\r�k��EC\Zr��RV��?�<�S��+[c\Z�tp��]�>�W������tV�\ZUZR<wަ�S:��m�L�{�@N�\\Y�r;@�U9s�#s^�*b�9f]�ɓk�1m2f��C7\r+� !E���kޯsT-k�|��ga����Y4�\Z���a:@@�򹫴���?n��[����^��������!\'���Һ:\0*\\�?�>��X��3Q�qsP�a\"%qK,� n������Z�\'�.���]\0\r�Ċ�\Z,��B\\5�U�@��D?@ý�\r:���K�HFr�ȹp��KŢ��,�}-�c\nǩCȀ���ϷZ6����w��ԮO��˞\'Ƞ·ӆ*��1�E�EĔ��k�\r⿺n���E��W��0�Ɖ����vNYS�Ʈ\'S�ж�M�AY���p����ϟ#���.8;�r嫺� ���\"��%�6��:�����@����0�zN�[��/qW�Z�7(��9��>�����Nt�\"L�g?���\\��]���F����o���G��bi.���B�Iݺ�����BZ,\Z,GC1`�\"��X�N�{Cu�w:�͢a#��\Z,��j�U���p����q.�ŧ.N2Y�Y�U�:)2HX������\\�d�e\n�Ԝj�6��))�.o!-�6Aԉ��|��-+D�Ӱ�ZYn�	%�%�̱�(�g�sӜ���\"T��%i�����\\g�p\nmE�O	X��iP9e���4�Re����4<�ۯ���7�����|��{���R9\r��>\\�u|�!\'7	�~�{n�\n2<~��������:��0yE~�����v����J�96B����h�Lݜ���\Z� 1G�8\Z,� �AΌA�Ӣ�����y]}\Z�_��Sv� �[��c�&�5D߅�ulz�\n.L�����c˝Z��4@W@�E��HR����ʃ��\nT!��0A���zC��o*�Z�ac�|H�r��C*���2��_���������u��\\��}�:.�4yr� A��ֳ/�����+�5�=��5����>o�=��W���\Zu�&]��������ZY�|}�>\n��)����0��ٌ�_Ӛ�/\"�߈/I�@9,�9:n��hx�]�\r�y�E;������m�(+fs�]�c��ߺ��v�\\�}��)�R���>��;���	4�!V)�t�MMqUW�ե��K>\0\n��$ذb6J����w(Ȑ����l�Z_ŎO�|\0	*�j�K\\*N\\p�\\�G7\r��YLy:7OY�+�f�����ߎ�Cx��{.h��,���Łxj��k�6X4ؘ�X X���&�W�Ȍ��/~\Z|�����դ7��XH�|}/~ׁ���\r4S�ɢ�o߰9(�1���^1e�n�u�9�)!���x����a�6�K\0B{��cBt�-sO��5l�6>x�Ey�ߥ��!�.��K�v��4�撯BR�}a�2Ll�]{-	�Q��k���~\0`��3r��}�\r��2���^,��f_]�G�q��L;6�c{�;>U��[o�t~!W�g�c1��k	��Y�W�������6\02\\}���@�,�+<���DR���z�\Z�����{.>l��^m�\'\n4��!�P��@�R�5�N������,f1B��{Ŕ����o��X�Z93,�}?J�}����U�P}��%O=�p����P,��O�Y� Ô�Q&�H��(��p3�6؀���@Dl�^�n�5ClN5�)m<\r��{�U��s�o�\\�%���\0����}d,�r�@�ج3Ƹ>�偘x�E�<�\0,��.�w\n,T-&4��\'�m@��M��ª�I5�з��h:W�h�\0\rtt\Z�1��@�OJ�Q�P̓�C�\"쓿�M�����}�j%V39����( ��2!Ta�tߝ\n�����WX��{.��	��uTC��F��n��^s�\rd����(W��,�{�;N�\Z��U��y>���0�=�h�K�`�R�D�� 4��\0��J\\�\r�pq��ȉw]�\r��0�8\Z�����O|]���+���{�넺9���P��q����o&��l�ubp�a���FM��yJ�E��\0��W!��L}���|�+��жvQj���vr�-�$d-@�ɐ,��ɱ�/o\0�`A�{�\'ӹ�9�2L�u�D��S!9>�P�s���]+k�\0\0�~�r34�o�=-gyS��87���M�,��]�*u�,��i�	G2��X�u����-rr@`P�\0~CN|u7��M�\r_y�j��o���������O�e�5�A*�p�+�A�7��\\m��߂�z�BZ\ZԦ%V:���A�6W�4\\����ѐ�P��w�ܵаz�x��4�\nyߊq[�1���{Ŕ���U�����\r�`�&��C_����Bj������fk�1�j�g�_�!��6d�\nذ^KW!��H�r>�E�*aNmL14 )/C��D��{_�U�P�ry��,�B�����+s�T`�wwV�1����\'p�����#p�\0m�D���Ϛ���K/S�}��k�:!����`�Z3\04�;�C-$!|����N7	pTt��ϩ\r+:�ˢAB�bַ�⫐�8�l���%@���o�R���/�\"�S�P@CH���� �mt�@��+J����m�d��~_}DX˵�������;@P��4Wk���O��M/c&�ޖR^q��}�Q����>b���UUkk�,�`�躆�Q,҅�̺#X`bž]!(�Zd!f���\\d�8\Z�!�6?�q#аX[��p�p�o��)�A�C\ZNR��3qaYƤ�o������u�2�	�P랣�hh�9�B����7�\r|�6�x�����-5ͪ��b��a\ZJ}��3��(8v�M!����0��pL��� C�P׹�ݸL����*����e�M%��\0���kq�X�2vr�o1呧�L�4`!|OVp�\rh(��M�!��#\0G�!�~c#C�y��	���kf�z���no=���7�g��C_�\Z\\�	\\p�6�\ru*|7\nB�q����(\Z\"H�c�/���l�1��h��6�|v��3ӤTQ�T������jn_��k������[j\Z��1��4�51k��,[\"�1Vs<���JT_ ClhzNN��`%�\r&���Ɛ\\��&�y�駷\0\\�\n:�`x�`C�v.eu�7XCƙ��T\'��Y4�LZ�Odh�1��B`d�~��������\Z��\Z�p�C�7�������l�n�>�v���z���^\n��b<%�Q�2�V�J��j�5f5��K,�63\Z����h)@C�b�5{�p�=gs�Ԝ�\04�wX^H\\fV��Ъ9���2,����SW��\\��m�����e�0xcհ�>��{P��p�p�\00p�r|uj`Cq��r�?�K�	�����Խ�	��g.�m�r�#CX�}���rD��h�����#�¡��w��~����6a�v��#��Z�A�.4��\r�}::M��|4���/�h�_蓁��\Z,�ڔ�4�,�n}�/�s�dq$��- C�5e�z�({�(b���\\B�\0:]+y���p8��g*�(��D��h��q�=v>�!��cy�\0,��V��}\r?��g�\0]�B�>y��>��7�H\\�ې@*�P\'��2wX�9\r����5[�0k�P����o�aaw�ͫՅ�Ò�je�Z���auT]�\ZR���>�g��n��:��z�(Dma�s�}�S@�<J��uH������Trk�%~t9�z��R���Q��M-�\0�\0c��\0 �@-��,��!\'O32D��2�}	!�\\\0� Yx�lH���⡑��S*X8�r	xD�H]i��h\Z.�E�X���]�2�5�?��;y�A�>\Z��ju4��h�i��4)cc�~}f((P������\n4X��av%��6�C�������L���{���ۮ�X/��K#8@���ʤŐ@6�x�6��R����4 �\0�U�]��T9��Dhj��#C��>�D�c��32��@B7!�,���u��|��h��]���\0\r��o;w�\\�u�A�j�3�ez%�M��Cs�(rc�A�j׾�I*��4��:i�A\\%0]z�葉�N�\r��2���?��X��4&C��j9S�PX�4�el�!M��Kms*e�\n6�		%�^>ܻI���J`Š]O�Vb�䳑)���)�\rd�X��P]�R唒X��62�>���8!\'mdd� \"��!�\04���\Z�\0�\0�\0ؐ��kq.���;����W�4ʖ�6vR44��쳾C)�1��yBE7���X��P��:q%B/mO�Y��e��~�ɛ�9A���>���97�����ͥ}�V�:��>N���_���2�@�A�V�NDT	������m�}����4�gCHoc� ���ޥbn�\re=�\Z\n�0.�2F}d��fX0�m�Cd�{�%��x�!D^�`!1�f\r�pǸM�>�hF��d�*�u�\nАw���4Hԓ@����!/��WI̔�lc浘{\\��4�.�m�>㢺��Ma�K}�4X��Q$Lc��:wy����Zx�(%f�W���z	������]Kq�p��K���A�/��@�ܜ\r}�k�fh���+ה|���Ne�T���Gβp�r˫�?糦T�R���ⱀ��_ڬ�s�p�	9yy�ZL\\��E��\0�b��oݮC��\Z��4>ʈ_\Z�1e\Z�&��,��xӉg�B4ȩ��EC��y�b�U��ӛ)- uu�}?�2�D<�^*l�����3;g�F �{���o߾m�\Z�f@��4hhv\Z��s>�O��&�=������9�k��{Jq��Fۉ�\re�P�n�n���o�5�j@�^���ƶ���s�;�(�\0������\06��Q�a�q��6`!�Ղ(\0Y\'��sp�Xn�y�	�����s�>S(kJ�!�+�\09x[?�u�x:�yH]��ؗ�Kf\\�C��3�5�A��� �;FsD�1&A��4���4��az����.]ϛ��O��7e��wJi߼1@�`��\0��`4}fZ�ַ��ҥ\n�%��0�aU,z�`�}���P��� �L,��lVFHD)>(��\ZĒ��\r���j�Z6Vv)�,@Qڸ]B\\!��q�@��\ng����jcdId4��)2ϘyKd�a�\Ztc\\�rH\Zmxf.>�����w��P��ÞXg1q�{�r����1��.T��S>�	����9w����Z�/�d��	�X���Mi(�\0��mJ�~h׉P�o�P�Ōׄ_��f>����|�t�h���<TX�b����ƍ�#�R�5�� �+���Y��M��nr��|�6�L�Z80U��A-���\nkv��l� ���ثl JE;g\'Hōb|�B�l\\�8V^)����>��е3E~�#��~,�P�4�;��xn�eN*2��D��+!p���~̲���x�	����\n����1k�{��T�ZL�W�z	wѱ�u=d�Q�Fh�4�N�P��6��z���N ��h8/@C\"�g�\\���ō��^iCq�^msR�=�)�pmiu��Σ��LJ�8%��d�	k4��\"��?��1��\0��uk��{G=h�^���q�8���\r6���e����ЅP����QU0c\r��P �\04\\�\0��l(nÏ�B�؟+Ĕ��)[4��,��zA/�%��s�2�X(�!��\\\'����e�(쇽���^�{\n���}�\0Bh�2�B\Z��\'��[-X7C��-�월;а/�2i|���a�E��y6�)>��O��|Q�Ҷ�]G|�+��R���/5��M�pep�n�V���E���\0\r��C(ss~�h��W����-\\�BA��)�����6��6����������A8�,,�\0�\0���t0�UC<؀�\n��s����1W��,�L`a�@��6���St�(�!�q�-�\r��+�1������g_c�n�5B�~\'= �k�@\Z�hp-x�\r��\0��u�AN���J]�����)0>��1��բ�h�y^J�9�N�����v�ySA���(R���Lm���M5NA��U@�2��@����}@��	�RLi���DK*#Lm��lc�$T�d }�5C�4\n����;Ǧ4ܺ�\'R�3\n��mb���\r��KyNj^Bd�bz\0��.�`�\n6��E���q�Z�@�Z!�{���s>@�Z4�^�uQ�d\05�,�\r�������$]-h�(M\r����ɢ!�0u�,\Z\n��b����ޔV�`S7��柪\0Tꕮ��6�_��} \reIH���C#xa>\n?��FP[/�M�k�fkl���h�>nŲ!n`!/��K�8�5w*rI�m¸P8���R��C������Ǆ���\\�%���x�<��!\n�iU�,�bc?�wx��N`�sOd�ou�����8�oj��@��m�hྱZ�EjR�	~co5|GU�sT��9���w*��z����J�z�H~�$3CL1�\Z Sjߺ���yU�,@��pa|�s��4�	�s�J}K?�=r������&�����TԚ�\"!d�j^�Ĺ�<�l�	l��U��6HzΆ6t��,`!f����|�6�#}Tp��:�Ⱦ�~B��	�(J�c�\0$b� ��G�6��98�7�d(X��ތ\'�(�v,�;����|��߹��z>��IO9�f�v�Z\'X+�Ω�$������n��rW�^\Z�\\ʋ\Zv�}M��r]ĶM�r�Э�v�A\Z�۰���\0�	\\���9ߏNJ�n���Qi��1�h6k�m�J��,�DF���7��G�3�0�ĝ�R�������B��Z�%\ZE�P��� �/�!�����髧��妕�r2����o*��Q�$��Z,(���Z<h\Z~�Yw��%�]K�e�,��x��_nBd� �+�\rW��\\��Yw��{n>�ΖӘO����w!�\'���ֳ��7qM������Ѐ	��ǹ�g�\r�\0�xΉ��,�*a������X40I9)i�h�Q�C7��m����6(\r~���9,\Z\0��6���\0T�U��8R�_���7�BY�)LB1�ĬӍ2anrn��7n~.%\0C��\n8�a���=؀`��R���Z����\"T��I�Ad�Z-��#C��S\'�TPa��\0\n.��èu������$#C�$��䴭]\nv��o��E�f%���\\�Ϸ���G��\n�`\r�\"�3@��c�N�)��\Z���d�l��\'���\Z�h�\Z��Z��b�s�m��)Ĕ�XP�@�����2X}m������ʆ�B��d˅����<Y$y� �> �@,�u��\0����!9�_+S���4�cL���S\ZB�q���H�p�`�ߍ�sQn�џ>pc#\Z��o\\)����*(q4p2�@%�y�R[��c��N�ĚZZ��Zh2+��0�\0\r͊q��3u�a*\0O�1ƢI��6�rէ(��`i��f}����d��Տ5��|p�pɯ�M�u!\'9]VM�b^:5�!f�\r헐q��,�B����\0��t.9\"g9�OB���^L���\Z�u\np�q����_6<����L�7��.�썱\ZP��b����W���.s�������.��}t�}���&���.���|�B�Y��g��1��>\Z9���]��w��~�j��ۚ�~w�W�2�\0Qǵ�60^\\��\0T:V�}��r,���\\u��)��w�W�a�4@�  X�)C�1rNΡ˂�\Z��4�����O��S���&,e��j]���_C=/D.i���F��r��1dP3c\\#�8�Q�*��r�B.�vH|����4�Ų�*��(b�^���#on\Z���W��9�k�ε��䌶��`��ۀ\Z���u���A���[Jd�R��-\0��;k�F�������4��+�^���s�+�\r�G���H�T��ĨVa�_��h��s��FD���}\0T���� /�5Z�Q��G��lK}\Z�oa��Wl�?�\'�k�\0h[�Iړ������X��ތ����G�4�d�,����\0�7)\\��\0\r���Y�a��؆�ho,��),�]u�v|����c�j��X4,�	���K�g��˹ޟ��T�]��0���P�\n��\r��\0�1������U](p}��d��4��(2l\0�C��FQ����B��\"t��_M�Q��6 �]I�@J ʡ�e�� �GqG�3!w�`�����o\n��&�\"۹�I�:yp�e�D���zZ�}�T�^�7�,�㗿)�@�:�U���z�7�(�t��2�3�PR_���\0�(��8ѱB[B����ۍ\0�m�E\\��0\0H�=5\"���\Zh�F<|���AҪ5��3�H�@�u� JD��{&LfI��H,�,�h��U�Ip����2>v[Ǵ��Ŕ}J@��};��a�(�eL{ԭˡ �����A E@�@LYE\n: �rB�\'e�@-ǂ\r��	`2��8k_��g9�؛\\�����%M��6����B���AQ�ҁ(9(��KN�-P�Z��hN���j��Ɯӈ9\n�\Zsy�:�x�*��=ҹ@�q�P�V�!t�D�$���,�ƪ��M�ԛ�(��(�֔߮�\n$PƽZn�g�����)���A#L��\0���e\0#�E�4�/�SSܧ}	4R����傴��\n40�H�i\0\Z\\ k\Z�kӷ.��%�\Z2��S6��CM�>�c\r�yj�b���\0����D���=h�s��cܟb�E���Y���c��+BANe�	ۆ���@����z��Ћ��)\Z���F�\Z��Z��������~�:���,����%�ĹCT��H��\r`ar�	9�B���K�b����q����H�sr����\0���t����\n4���!έ\r���&iX39�fUw4\\�A����r�����@�Ƭ�\n4(�z��y��Ba,��\r�:D�P�`�������菋�s�\'Jɷ\Z@б�����4��A�j�7嚾?\Zv�!��|�\n�p�h �\0\rD �<\0O�N�\0#�`���L#x��\0\r9�����+ȕ�-�k�����`���	�B\\� �B,e��Μ��g�Z�2xjH\"{RB��R�c��\\ϞC9.�2�sͱ�VNNY\"��\0�D���b��B��U.8\Z/\ZS�P��\0kJ<ʝ�FX�\nF�����^4`=Q\Z��L#������ʡPu�PN�\0�C��J��|�\r�\0������T�D����{\"ǋ#G\Z,�����j�Ձ�A�>��ʇ�iբ�1@u�~�EÅ�G\n)�t�{�4���\Z��!�$�,k� �K�,6�A�H�	���W׺�U���8g�������V\Z�@�$�b��w�);� 2���~��io�`U޷(�s!��\Z>���n�(N���������C\'�D���/���+��`��\"���m~��ks�(`C~����\0��)���C:\0�`�7��=� .�W�f��Dz����.ʠ^(|j��U�+Ȁ2�Z��<�����x$����>�;|��C��Lyt0�ڀ<��o����֙��;J(����jM]ܰ�\0�P ��4r�V����;}2H;���q^����0��^�j��\'\0&Ж�F�e&r�X1�;c�<\0X�W\ZHKw����J	�Dz}�p��s��=�����.e�$����@��d�G��	SZ�J�3��nK�t	� �.�1`���]Cۡ��Jc�JW���Bji���d��AN���\\(t�e}�x��ߗ�D]�K¿ɉ���6`6[��i\n\nF`aZkF����R��\0+��j�\0�ТK�f�ڐ����%��E��\r�А6҃I\'y�)�.����<3i�M�h�\r;�<	�6����𷵜�7d���o�{��C����=���y���{:�\'X��L0��\\ua\'��4��(���\r���L�5� ��@��/� ���^����η��],����S.����;Р���W�������EY���W���G�P���7�0_+����V��g��g_����`�䤨l�x[6�a\Z@���\"�s���[G�d0�KK��&k�\'/��R,��n�D>Xh��n��g�,�V@���,&Z���}1V%��Şo���\rJ��`����:�ɹ*Z,<\0\rm��,*r\"Q���@�@����s,���p%�� &W�\"Ab�����@xt\n@�\\�p��9�@�\'��v*�4�1�ެ>�u�	2���\Z�\04<\ZԢA���hˆ6d=��)wy��q>keUJ�Q��\'pe��8>D�f�%��r�X\Z��w�� �p�@)���@aY��~�\\�g,p���q,��r���b4��DY����\\�&�HЀ_J=� ��c���K ��\0�\\\Z�\0C>\0S�;L\Z�?џ��U�9(O���\\K_��W��C��T�D��0G�|X?X�ٷ�t�p�eC_�j,�)~�F�6���(\\:�r#�|~jYXoΧ��)�`�>2D\0��\0,\04�\\\nʍ����gHUq~�7!q�bm�\0mn�h�+���\0��\'wyvxNT��\r�۟����3w�\0�h@BNM���R��f���NS��\Z�R��,\'UP)��+d��;��SW	2\\]\Z3eL���t��]��`��\Zx.`��l��� 2�ʴΗ>��>�L��`a��F�;�d�Y�p	��>0�@,���C��@hA�������?z$�\r;�R�����w���~�B�ؐ����N/���\0Y�F��*��~�7�$�CNi�����ny^1�&��7, (�-��9�V��Z��L]������Y��Z�}��p*䮧4X.��VO���G��!����b�v\r&<\r��@ã���`�p	)f8k���/DW}�\r�f��1/��w�����O��7�H�����c��9_���]�;�,A�D��!��\0K�D�vǑq�\\m�\r�XH��5@)�{:,�Fa��v�!Ų��_ f��R��(��>����7�dȩ������s\0�E\Z��%�d��\0\r��\0(����h�\r�-QH��X?h�	\r#�=\ruHYD�(\Z�G�cV�\"���Q�ݻk@B)�A\Z�͚�o\ZⒺ��F�8X?`h��9\"��\Z(�\"\'(��,nR] vV$���9��\Z��o!���7��\\/���l:1�/Ԅ�i\Z$BC�J�F�!>l�,.L^>}�\rkVX�C��g��K�vz�����(��\"K����SW	\n\r����uY2`n���K�;~ؿ`YǢ`L�}�؀�6 �4͙�Зm$�}\0}�*g`a�kJ�;�T�@P�1k����C�i�2�@ �\n5�%�z�`B�&� �9 ��^�u���2��\Z�n.�`�+$�ͷ6�\0	��ACn�3��\0 @�~�o�I�uQP���b�܀\n���\n\n4h�L�{�4��e\0V�\0b�8�Vp\\S��]�аY�ހ\\�1.\Z�bJ\nGH]\0\Z�جM�[dL���\0\'W{֕�������IM�ܾ�k��9��5��6\04}H_��hhEQ��PY������*��!����d؛�!N;0���Q�)��A̗�a/+�\r}�\r>��\0�(�M�(�¼אXw�)\Z�P*�c@�B\Z.DA7�r���Z\'�[/X\0\0ȋ�4�Ңc���Bt�\0��\n4P6e*�@:]�y>@�Z9��:ӿ�\0�ߤ�g�U��@C�V�h���h.a.EH\'�@.�(	M���������(���\Z.�����y�_ ^ٚ	���F�K.��h��EǋO���24	>�4`�EQ���Y��f��F�8��b_�G��X�U-�F��\\-\'4\08,Eil�_}\0}���D	9�f|�s��3����g/�.��g���q��� ��\ZrҬE�X`������h�Y˰0@IGG��߱\\P���f�w��`C��г*а�tp-\Zv@�Y�wi�dP�	�9�T0�~3k��\Z��nkM�����\r9�:izu۠��\0��]����!l75�V���O�O�|4�\'�K�\rb����~U����Q*B��tqn�)���oͿZ\n3t������6Y4@���=��#�|Ԝ�E�#4�Ր)Di]9���o;�� T�L|�}�nZ\0H��S҇	���J{�\ZUW	a�ҸA����yyy�\Z�@��S\Z,ذl�>���e��u�ރp�AA	��бT�>&���,���!��C�,T�Pa�|s���)�r#`Q\0�\0��e,v\0�!{���M�sG2i�\"�F����p9�L,(pwP���P�\0@\0�/��r9h���A�����O�)\'�P�ҭ|@4�����q5:A�f�7ЀĔ(ȸ3\0�P?�\ry�ChI9��A�ĵ� �D��D��l\ZX$�ЎִH��\Z�\r�\"=-E��G{��J�Bli��v]c��U�F��ǀK���n�`̧4\06���k#��m\'v�,]��{?\'0�ZĸX`!ߺr�����s��v�ڷ�\\Y���o���c��b���q��>���Spˡ�\\�§�\n,�\'��e�Z$�߽WI�yywϫ�9��s�p�\'I+�a�P�u���^�o�=���h�߻,���Y+�(�%M:a�Q�UIɩ	4�	�p߸��|l�I?��\r-�S��e�4ж�)��udѺKX�	�%PC�@�[�4�i�\n�%]>���eiK�1`	\Z�+�d�=66��2(�0e��lXɩa�ũ�\r] F�[S\\�	�����r�����I\Z7O�\\���;(�����R�3���%O�e��.�X���b�#2DQNەSBtZ�qQ Z��,��k�kn���\\]@Þ�Q#A�^r��(@��O\\2*�X\rT]\'��w)-�V	��7Z%�Z�nk	-�&�,a���h0&`b-ѧ��E�2A��TA���+�(1���J���Ҷ�m��@5t�+H��F�xae�2�[���Eô� �ĔD�(`å��T�wʲ������@�����[�}��:�z�hu�������rX��؊�Ϸz�\\�%�d��41}f�=��P1��2�c!�D��*��Ł�\\���f�_\\\'.:\r~@C�ŻXK���*�.�)k]&l\\���[���c�1�/jji�Ҷ1c��T�f@�H��:r��U\"L�.\0�P��S�:QW6@�aZ��h|�����T,��0�R\Z�@��	hp�!ꬔ�\'�7Xp����j{�_߇��݀��{��W���6LkC�:��ӹO�]�U��\r,\\<PAN-�B!�š�8��Zm\r�Qq�R4\'���Fһ,$�.\'60�B)�CRy���n���<�z�(B%ϰ�ni���m\0���ߢ`C{J�	K��p�2�Q��\06���\r6HZ�\0&�|�rw�:dr�����U�R��z�\n4t���]aSP��W>c�C�\rQ��.�P�4ŷ�߰�w4d>�w]LT�R0Q��q%�k��V���+\n\r�OV�iJ����?�mR���i��M��\ndy^-|��M*QP�!p�-w{�!v�(?w}KyÃ\Zu���4S���^$�}|�m\\��\Z\ZSCY6Y4,��{�@���r�!��`�x��&����K)#nn�\rM���b�O�3���\0+0\04�;�XQ��ڲ��t��ry)d+⮐E9���c�r=N�S���\r\"�`�P��\0���e���G�\0��cׇ�a��D���B|�����\0Sc	�jF���r�{qZk������\"�~�}���#�TckC��̺��;Q���Z-\r�s��@��~WO�s>��խ�TȾ6�G�H����n\0�D�p�e�{pCY6\r+9՟�`����\\(�͸Q��n?.�P*�U�l�؀%C�K�s��6�\rGu���h4�B���B��X�\0���p�p��}�\ZZ~I?�����\ZOÎ����@��R�&D�(���p)@�8p�U�\r� �(Gl�=���p��4�a��\r�؁w�@]�bq\"�\0-oNEA,�(`E�1��֦�v)�u��zϘ���BF$\n���u�K��Q���+q���\\b-�%k��e��%\Z�\\6���_��KTa��0G1��D�!B\r����iV���Q���R�\0�����q_Ic�$���\0@s��.���C�kdH��Uރw7m`��p��H�k����TتX\0Zxg>XWp�b���AVY�L�T(�,���V���jA�T2v\rc�\0]�MV\r0�S{���F�Fyns�p�����t��d�+���,e�.h𕷮�>����A���O�e�yJT�xe�po���\r.�P�\'����)�Sz_4\0�`ZSP0�Ǘ(����	L\0�����ne��K�𨞣A�\0�\Z��4�g�5Bq{(�{�}�2��&P�\nذI��S�\n�AY6J�(��e�^��ګN�_�I,�������2`d�B��L���(\\Q�]E��4�j���om�X\0h@��\n8`������ɨ{��vD1������v�������F�����u�[b����Bڃ��U����F�bN�@\0%���ޡoH�R��5]���M\0l�\"7\\��-�b���X؁>\n�X��\n�@#�̷*I�\0H�:`ǽ\0w���\0�Kaж��/[Ǖԛ��`�@ہP:����?��Dt��@^>0}��]�u�\rX�ǲ׈\ZrHc� ��`鯇u-h��,\n���N.h��������n��~^z��r�3���P�MF�6���6��V�a�N����0%E�ԥ\0 Mc`#r�h�g��u�Z%�[��.�}hE;�U�\r�4ߐc�P�f�`	i�Z2Ȍ�B2.\r�\Z�X[��B�}Fөo0����\Z�0���\r�\0�⏂�^�qR�2��:����(;��`��\r�u�6�w��>��۷��m{�٤�Ht�7�4^�����l��\\���%\0�|P�)��(0�|z_��c��`��p�F�Q�[�n`�r�?�x�~x7%z#B�\0�-��5�u�0�o�S�N0u޵ŕXCT?��;ŵD� �ӏ>����ݤ��\0o��}\0-�Z@2 Vʐ{{ E�Y�c�!�l������Q�}Q�P���-���ź�~y̩�9�Ǽ��F�n_ʲ�u����� �lX2���,|�6(�d��s)����Z�S�\\\'�������ݿ9��M���=����;����͸K1�-x�Z)V�\"���U��w�&���P�w%�x��Z�}ڠs��,�%��κ\Z8���>���Ű\'�9�QV`�\r�`,nMB�r䔭N!�5����5B�R[�6�������V.0��n��ߪ�@���r2z:Q�ղ�r\ZX���w��uZ�wr%WDi��4����צ���z�rw\n5�\0,�(�U�N�������O����.����\r�\\+xG\0�C�[�7��Z~���|^����]\0S\0P���-b&χ��~ԉ��lE��w�kki����h.�E/@>����p��0�}���j{����{l�����\0�F�-��Pu3�0V&&�Ds��6�a#�\'9������(\0���(��l(�%Ƴ`0h�̓{Q��������R������]���� �����*�PU�����>*�`x�<Q!�,\n�i+�s��:`Aq�+���\r�__N�-�B��n�򕕫N]�`-�\n�Y��|6�P�\n000���m\0�v<��cm|��I��T]B-b��Sȣ�(�{�QRQ�UiE�C�W�U-��*\ns�E�(M��AN���_g��=Ki])\\^�ʶ>������\r��)`Ay�O�r�?\n�ZI����EZ�I?\0�7V5ma��h�\Z�����<���_�6Hx�>mX��\0%�u��ԃ�ԉ���ܶ�\0��D�����OA\'�pE�[h+����0GB��B֧X��X�\\�ܘ�`��r�\r(��,�&\n�0<Ƞ��Z��E��ޭg?�~���׈�|��h���K�{�s��v�ڷ�kq����o8��_y\r7X�*��@�d�R����A���\\�R��Dp�5n��b(,����=Р�X6t)��m�C�C�\rwZ}J�E�%��^C�x��p#LK��U�疮D�Q	��{\0A��v�.��d~u/P���	B���WW	Up]~ua@u]4-��i��\\rz�+�T��B���\"�����Ī��\r�A�F��p��e%$�*�*xRy��;+@^�p�\0����\Z\\+���wt��^Z>���*���.\0����C��s��� R�����p-xW喠l%�4m���1�y�Kk�P��@g:؀�|8V&�L(���ِh`<6\00��À\n,t��8�_V�,��o{Y-(���ůn���o�o�%��bԀ�7X�f� r���H������ۤ��HEy?-�}���;�!x��l,l��.`�h����fS����!�p�c&.��F^e���qn��\\�� H�\0�����\n;�w%e�pr��nx\nv �\\�����`�/�ʋ�@���s�ʨ*��qP�pPE��P�5+�g�%�*�{�~,�b ����;��+׃\r�Ղ�|�%�U�-��ʽj��3ݲ���M(�o�\r2v�HР���������+���u�8�_뒝�	i��Z2���EjA_�u��Vܧ-(�%�T�k�b���-�`�2�9�����Q�.:	�S�`��r�b�@�y�\r�H��\Zˉ�^����[.+�R�u���%B��(���E�u��������Q\'���}��t���V��\n4`�(�SU�K�>j���� �\n�Th�Xh�d��:�b�!�)��<Q\Z8�m�eL��0Ib¹�	� ��\0Q����P�6:��Y �X!�Y	9ٺ�u�*��ʠ\n�\0.a��y�n�쑓���J�0(&��4Pa_���\\˱ϵ��(�{�a炠ʽC�V�����3��	X����Ϥ|�oк�@����D��֕B�\\�:q\0\Zx�ުCr[WX~����\01<\Z�&���k;�\"D�j���?iX�\r�7���=�: 6��P\'_�8j�GƫZ-��$Z�!�3nW��7�� �A�#3/ B�� ]�g��u�\0Xf�, �<jk_��O@�_?�K2k#�@<����̩�y)������\0�buV%�l��*�0�F\ZH~\r�oqS(o�&@����,q#�X�B��]\'�\0Oå,H�!����x\ZhUPA�a�oSrL淚RQ����G��\Z[~��l�U\0�� X\0A#(\0�]�Ċ��*�U��\\DYr#T�]�����]G2�Tu1������6��pڭB �3��QfEY�0�:n���eaQ�y��,�*���@D>���ޘ��|P�Օ�XΈI�7�g��>�r(���,�o�� P���uˠ,7\"��y\0�R���P~�:��mo����%�T�}gU�\Z�4w�=y/80�8$��5��A���+G����^X��`�PGs��s�`���N&�)�Q͈R��Y��\\(ø}�A���Zvz��4�a%u��@d�7\n\0\r�`?k�[H�E\n{���d(`C>���%w��o�Km��n]��Yk�J�j-��{�ke���th%}*�0���=������z\0QN�OSپI�j��z�ȅ.��̯(tr4\0,��mBH*�\rh�����N�P�;�F\0s����G@@B\Z\n��\"]�B`�r\0����@�� ���`B�/��G��N�W���(����2dr5��ZrCf�ߪ�33.1E5 �� ͔�s��cA.�a\rw\0J���hA�p����o��M�D4�p��\\Uz�s�%���{�r�c]��h]1P&\04�4Q��mه�\ZJ�h�;��8��B�*H�ZC�%��ԯ\n��G��*�F������Q�C�\r������~����6�+�:�y;�re�T�S�!]��=��N����r>����+�\0r9�^9\n�Z\r������mN�5O�\r�I��� G����H�7�\'�0ʱZ$���\r�6���~�F�&\n ��ٖ�.vM^K4�m�>\n\0+n@�/���\n4kW�\Z����G#	񷂞�@��:h�=Q@��6�}׆��+Ɇ�ֽΒ7Z��T��v�=��p���`�º��}�ZW�ߦ��K�°�i�_�O�.�|����d��g�8�S�ӛ^��!�b�_`����(�&)&���q-\Zl�H��8`��\r��&%�Sg��S�b�pZ`D��ڻ0T\0QB\n� ��	\'��Tz��. @@���S�W���K�n���k.YD�Y.�U�B�f�B��BU�`�st:-���Q0o��A�S_� �g3�M��c2)#@9$TFp2ϷuA0q9��g�1�r�Z�w�V��LZA�$G��ގ��x�{:g��4�(��W����Q�\nH׽���w�ٍ����ٱ1=6����؈eF!�����@�U0���c�n�\'�VB>��u�lP�E�+0��h@���VP�\n�����|��2�Hڿk������\0�q�\r�e�@\r��N~�x7���?\r��`����!��\\ʊ.�\\\"�ZX�\0/��YT����*�|\0)5]�Ӹ��D��7�k����gV\r���v�t����_\Zl۹�e��5k��i[��}@����/k;m��VzU�	�\Z�ȵ��o�X�ri~��C�p�������p�~��0\Z%I��h:��C\0��Ӳɧr���U����a!rX,t�q�:�I?\'�p5�pC_�*��Jp��A���Qb#=p2�4��41�/@�|�D���\r\"��O4�c%�>�c�B���@<�4��\'�����\nS/s9��(�+s���G��n+��/��}nf���L��9���-���:�AD-\0\\0�{(��{]��\'GG\0\0��ԕu\0X,��궡\'F�g�N�4�u��;���.�9�4�S(�T�%ɱ��%�z9��y�T�A�����ڃ<�s�ּ_���ny��%l؝J�y.|S�#�nM��{�:Y��\nn�u��D�X]Y8��*����=7R���^�Xd�}@��丠�W޺�B���[?��0q�/?���7W�AI�i7U�Q�]\"d������7��`�FW\"�Z�)�M�����Z:��Y�5�\r���OAݷ��� @��N����Iʭ��a\Z.$��`!&\"DH���5��I��l�@��X%\0X\\�J�/`�#���\0Ѐ)u���U���\0�VD�Eb0�*f�b��sa(��-�\0��\n�[�~���ۀ�.�,���܅\n�]Jp����8U�)u�0\nw1Vլ�m�����U����h\\U�J�,��ϭ�&Upŵ4�Xr�͡ʰ\\5X��U�ao�`��\rd]�i��\r;S�h��j))�65��\ry@�н#$=rUT:�.1Q�p�\0�3VY�zA��X�T�DID�p��AI�$eS�t�t�{h��\0JZk�	Ǣᥗ�q{�}���]����7��g̽�\r�\'�r��5����v\n��=�?�V�����U��h�<��� /�W;���l]p�4j}G?k�*Р@��i\0.@���k��e��S���繌�4�4Y,���&s\0�e\\\Z!�lP�!-H�\\��8���X��h0�}Ţ�w��N.�ds��]V>ꩥ�L��?�!��@8�&\0�Ê��z��9���ᏴC)Zu��C=;�s���Z��8Q?e̪�&��즖\n0�[77��`�(Q��C��b��mf���\r�\Z`��U\"G�縑,�� P9m��qu�B�T�Q�[WQQb�dܒ�\n���><D�8\0\rʍ�:����g4XP����Ӟ����	\0:\Z�Cӣ���D��F���ׁu�Sk	@�{�,Pk\Zx���;�]�\n�eʦ���F7RRP��Ϛ_�-C��42\0*\Z�/ o�]:-�d(H�#�h�X��1d.�\r�a��8�TFܲ��e�`N��\r4ԇt��De؅t<\"T�	�X�m�=ua��I�v�{~�����@�MU4��ާd50��F�`�<~un��\r�\r�>0؀/;����(,�������5���6�y�q�!r��@@�����׺O�ǜ:���Ѝ��ד^����\Z��в;u1C�V�hx�_3�|���n�a._{�{�޻?��\r�����\"��\Z��o�\0��j�\n�Z\"(Р�7\r�Wk�/��}�n���\r�w�^c!A^@(��.�?�K:Ɛ�q�r.׉�A柉<7pT�`B[g����A<!d�0|	�Cԣ�����n\r���:��Y\Z�]\'\ZAB�f|��\\R�\"�ƛ��!.{�C%9�ql\\��B���Ӈ\n�SQ�J=���K���``���f\0���(L���(Q��4j�@Đ�H�.��\n�Э`������)r��^�rS�fe-	P`�+\0�P#�\0>�\\����m�\'�\nR��$����We�S�k�c;�Z�~ ͭg_�?��W�k�{>��k@��}��{惯:@Ë�YƮ�z�r�ʹ�1���\'�t����nʥ@ڍ��Fp߄�)�\Z���ȣ�$�˫�=>j�B9\0j��=%��2�������:�`D]Ap��<K(�g�� ywX_h��:�w�4ah�����X�u�Iy�!�Ԉ�А\r��\\4�.h�w�,\Z�|\rD�^y�C��t0˷��79��FY0>�5<nEL�D��B�9BB�X���˻���o{\"H��il���Z�%كd�OVb~>}���{��B�Β�/u�j�`\"�8�uLQ�խ�\Z�%QILݫ|P\n��V�b�R�����-@�#���B6j�w���Y(�]��_���\r�,�\0��5�e��	;Qkv\0�FUړ���X��}x�]��}X�]�J\r�yx��e�o#7ٿwV`\n��8���+��!Ԧ�b�!2�^��W\0W���z��a�<Rs�\0�;āgah���5�\0�1������1\Z���a���M>�(����]|�X\"@Tą��FL1�B�5f>;�\Z��F���ƖW\"E�[C�h,8��_ HH8@ \Z�M�B��>�B�߹m^���U�O���BT��@�Q�q\0�-�n��K���P\\C�ϛ��`����P�j�\0@�\\�~����F,n�b�J����:�	4��j���|s�}�Z�vm�B�\Z�������T��\'�����Y\0\r]mP�=6��5�zHe�g5\r˅�Y�� (����I)�>�ɚ��O4ܟE��Y!X\0����@|�:rE%T�ڀyN�N�4�ˍ�\n �6{\0��B�\0�i]@X	Ӻ���x,i����*T�ͱ��2�`r���X\0C�P��\'�0{W.�a-��X6\00軬\n��\r���k	k� �2�By`��o~L�1��=K\0u�8\Z��J���@��%\0�CZ���\0���&�`N��D�#�MZ�|�\0�X���t�KhL?��˘W4��(�%��/��X��Y(�}+^�ľh\0��]嫲�⪗k��fwu����E0\0\n���\Z��5B�괁�Hn(ǃ��	�C��@(D�i�@���_��im�E�9���\n��F���l��͂\r�- ���x�Kx%�\\(\\��\06,�e��C4�#n	��F�����QY�(��!w\n�Ra�	>\0�[��F���عDL ����x�r\0�4�䘠\r�XZ��9�����7�X5�ie0�-\ZB�SM�4p���I_��e����Y����+V�1tEb8�-w\0�J�cq��t����W���Qlo��2���\0��ڊ�B.������O�;6Ȟ��F��ZJD�Ǔ�nX�B�U�:���d%�\\�(��\r���5�#v8&��a�\0����9�e�(�(���e�F�Ш���ł\0\n��}�+�\n4(O�}���\0���ag��7@�jdF Xd�f��!\"2.L�E\Z����2H�s���8�^�dI:��5�c!y4�A���Ǐ�����r��K�{yi#\0i�IC�y\'�	�Lm��]��T��~��Z	���m\Z�ѵIY����\'�Fi�4!ʎ�m�Bػ1�Ꮜ5.\r;�c���\"H\'���7�\\��A�¸1&�ȍ\0�.d�&C�B��s�S��4�njy��`�=\"\'�pd�\0�\r�\r`ʢ=M���1�f�/�`CȠV\rlX�ag�`�v!�\0�P��\'�(�\Z�%U�Uj�\0��$��o��	ҫ{�k��µpS׬��V���}\0\0����ӯ(�(�@�gC�D�%���<���|\0ڧ��}~в�+2�Z\"XP�cb!ϵ�Fn�2�����}��K랣�1\"�6�=�w��]�N��Zw���}bڭ�閵V�ц2>4\0���\\`���\'dg\Z\Z���x\0\r+1�t._+�cAPE%W��\r��5.�e�=�0�o/B�`�5�Ec���D1��\nan`@��-@C��W��Fmc`N\0�1���\0��`��@�ď6l �B,\r��۠`C���\r�6�GL�d6���A�A��Bhxv\\�	\0������BV�.�6���F)X@�\n\0�\0	��{�\r��\Z�5\0�(�\0\n��[-\"\0\Z��2�{\n4\0<�<��<��%�@�0\040�(���	\"P\'~�\\@	��~�,����ͳy�R�.�L�ϸCg�3O�5`Au�;��U3�\r/���g��G���!o�\n�O�h�Ѻ,\Z8�EdPW�=���E��gǋ ��0[r@�&bك��� �|@CY@&�4>�w���w���ۗ<W���č� �ݎP�:�P�Ȁ%L�p!�ӝ�n.\"pq��s1����mi\n��φY��n�\r��X0�}n�.>���+��>��D���/lXK䆋I�\r������E�:��&Қ\0P��4�̦	(�|\0P�а��C@��#���PUQ��Q0�����q���:A�h?��0�֠����\r�G(�@>#j��4X����؍�g�*�.РVZ�.h�b����A@%$�Pk�1�Oh�@8�܂B>\'��Z`RKY�ڲ7����a��aq\0R����\Z��h\08���;9��L�BR\\S�����\rZY��[���`�E�͇���l�V*�/�ڟF�/`�����\rD8�(>lX\"�L�q��ʰ4a��2����<`L�]\n0�ߤK}�P�k�,�O[����k@qG�1�`��E��\0\0u�IDAT�A,�҉n$���qʖ\r�us��]c���\"�%�XO\Z!q�{&(�#ʙ�(p�w3��\"��\'�˂j���I㟿;\\R>����L��h�=N�r�O���Q�(��r�����~�\0nk��r?J}�E�\r<�\Z�c��\\\r�_�Qu�����V4�+˸Z�ZM\0���Z[\0�ٺ�~S��:������<~,sX���K-75��y\Z���{�B�fD��\0�h���{E�w.��.^�������~�7���d��W)q�L��7�\rG$��$���Z̍�i,����x���U	�����o�w����G�G��F�c3R�[�~,�}�*\Zh`�5@a-����}xG�V�؀��ЎU���J��Y,�Vjy�ԁ	m���(���z��7��A��b�7\r�w��e<?6\0�D�5h���_�\0XB�eé�\rj�\0�	)}wt���(r�*�顑�Jpz�R�Uu���x(x�|�o�\Zj-g�Ӈz��8h�I��{�+}�Q9��]-\n����&�$�\0k-�Y\0P��Q�y([-4�.��4\0	<\0���cG0���X/`�`	&�{���\0v��9�c��=�h%������s>3�,\\���>q,�N(c��t��,\Z�:�o�����r���͂K\Z7O�b���:�[�RA�=٢���� b�}�?��\"��b\'��d0�R�\'7t��Ȣ�|�}��<�H�!�N~��R�U���m�V8�F0 �\r��.\rK!�PrEî��a!��K��>,��.�\'��\n��O��g1G�3-A���:��{���5��#M�)\ns�\r��P�sP\n�^����V�В氉�\'��N۽[+rr��=r��@.T�T����g�#�+RY��ש������>[�\r�Uº+�1!I�b�.0�Nm���`����{�yGQ(*u�[S:��6��\\17�k�U4\0��E���(ՀC����Y\" ���\n,l��+,Ӄ[� @���ǅE����^�c	S��C,�c�_U��4�E݄�ܹ:R��n�cs���\\rm���HC)1�������$>l,\Z�X}��P�Q!݈(W���Ƞ�B�W��m���Ep��./DXX#,k@�T���&���/c\r�5�:֥+@�t���7�����0�\r\"L���0U���s�\r��$�C����Ӻ�+�6�V9(A�A�!����Ae����ޟ���C �]�A-�4/��M^sN���z��a�`C�ZK�X����n�`�q�؜[�\0�H\0Cַ�YW��A�^\0\Zj��k\0����&�AO\Z�(����|�t}.̆�A{6�́�j�`QH��`B�������.ɦ����Pb��i��\rq����J���g)���մ�\n4����A����\\1E�+y�|,R��>-@CQ��ޠ�����M��\rbJ�i�\0(a�	�f�R���6���T�A\n���X`\"џF9��ZP�V~S�?d17�ʔ�OZ~S�����=����=� 1�a����<]��gW���Uu�;D���	>e��n��/8��x+�MA�I��X��\'4�fUUt�\n�m������\"��q�5<�0��?nl\nB\0\0�<�\0~PaHφ�fu������\'���8�ML	u�S&b:�$�g�\Z\n(0,(�G{�(�9�\r�u�y��&�Cٱ7���te����6�\0��� �����kF,��L���9����XA�=a��Z/X�ncƎ��o�AnS�W\rM���\Z-��\"�?d;e�W9�u����G�^�Y�\r�m�ZkfrO*�oٗ��f���Ey����\0��>�B�6\'O�XI�g��m0Y�Ajé`������Q\n�u)�<r���U?�Y�d����\r�\Zb��>(?J����ojh}ߤ�03�y�`��~���C	�4$ҁ��R�\0�`yl�K6<�\"#բ!Ea+y�R�(�h8�UЀ@\Z�a��~�Ci�q�Ʉ�,\0��/�زA���\'|�-�-0��\06L=�eذ�ذ�=�RZ�)BSZ�T׽��%j�Ј�+���7dF�����Ԙ���S��n��n�v�\rB,����h	��;���>�<&�;zޞ�1�\"���׋1�\n��� ���Z�I�[����}�`@�5-��Wy����k*d�Fz0<o\n���2���ej\0��u��asQ���+�\\�@C�b��Wb�oCu�ѐE��0��f�r��7 ��?b:���\rq���Z���>\n���\n4��o���C\Z���\0\r7O��f;V]�\0��CS�X\'����21o�A�/�P�����\r��R�C�)�]J�E�ؖ\r{���{[�.K�he0|܏K֨�j�#��8B櫺�^�B9�</ϝ��fHDw��e�@\rf�0�S�\Z7���i5:Dp��B\n�8���s�60n<\r׀������ @�W޺�B���[?��s�/?����*�ꮠ����<\0 ����];�p6���5�n0ʱ`��K�n8���7�4�x��rXYK	6U��\0*�P5;�)��+�D�r��e�F�X�9ܿ�Q��b�7E�-y�ܾ�k,�!��!G�T�4LC{c�	�G�5\0d�`��b�%DQ�Tw,�a%��S����j}�dl ,%ĎR�����z�B(r\Zr�ˁ�\\��%�8tRkT��w�OIUH�n\Z�{Paw�h��O�ܢ9��wS�vP����GI3BH�̺�Hx���,< 	فPdb����K/�����>���y��oʽϘ{n�yu`�iF�g�G�W�6,jME��pә��Q�E@�\"K(�`�a������Fi���[7\Z64�V���r�O��ϥt��o�z�r��4(�v۷JhT���h(@C��8Ǵ`��\nV��\0���-/7\nBB��.� ��s醷�����FAXJjۘ��j�X�\\ە��|�,�\Z\'��.��zP�F3}-��儺�+ս��=\'�\0ph\0��ש���@�D�M\n�ꎘ�/���A����պ䏵�cI�3�K�D�0X,>�y�8\Z,)�����@��QN����$Դ��a�W%��A��o������߂2+߂����A>�Rk�	�Bb�3�\n���Wv�Kx,a�Bpm6R��V�S۷����� �\Z�\0�����qU��\"�%H���A\"?���iğ߇��a)i	��l�\ne��/��B�$���\rd�Íb�Rq��P6K+�!#����|��*�q�z��\\G�r���N�$���]�,�P��)f}����[�~\\%��`\"��h��CD���B\00T��[dL�Czi�!q<`�\Z��f�o�	{hLѤ!#~-w���&�^���.^,������s������7����a|��{�����D;��\0��%�m.Ic� p%��j�F~�3e\\6� ?V\Z-�\0;@�ם��(E��#oj��Q�Rf�����c\rs��4�!U��Z�0�\\K�P���D\"4f���	�`y��$�\0�T�k5+\\\"��q�/�9\0B�;vo�P�2!j�q�`�]Pb�*a�v����s+�����{P�.���#O`A�������T~(� �s�\"���ϸ#͞	��co�\0���:� Űb�B�@����(�`ꇅ����=p��|ŸF���_�4����ͽg>��4|̸=�����?5�\0�!&+\rW��{BHұ�ff)���k���	��F�&u]|	c(^��}1�}_�p2F���hv\n�P�16�>�Y\0�~�#���n�.�+���l�6����]	}ߏ�^��F��u(GBgr�GX:�G���u�\rMiO����!���$\r�����X\0,��b�P,�0�w=WN��&̥o9SI�1���P�Sr�H�U��PL��s��P@�_�:At���\\Bt���Ƣ��9\Z��E�Q����#����w�#����Ƞ�v�4*\"��	l�\0#�}C�>�\nL�A±VPs9���	�S�F���B��{�0�}�y�M���S�S\Z\nАs3(e��c�U�\\����`�\0l�X8�]�\06`�\09�F��e�s�Ͳ�{��`{La�=bCjXq�BdE\r5��Z��,�����0��<�2.o{��qj���4�a.WN�ˉG�0��r�l���2\0�3V�IS���5Q(�]�6�N�>g�F��41��q70�h+��k�G�p���\0\0�e��G?�t�\n��O<�Ny���o�0t�qM���\r�->s+x#�ˇ5�c3q]\\�}u3�*��;i�h�@}���a`ھ�y��(@���A���\0\r]>�u�������+ҧ����`��x��q�6؃\rb��e��}�Z*�5Y���S��-(\n)��w ����T���(bj5�=u�u�d@7Ԥʬ�a�W�	=�Rw^=�\"�F\r����{�֊a�\na�M)3}���i �%���si��l�`������q�P�5c&�_|ƇM�\n�:@�a~׼�wI��JT��\\��#��G�7��ğ`�Fڏ�TQd�̓Bާ��?hӇ�@Cj���p�1\'h r�)/�����!ېP�dd�@�G\\$|�����V��X�\0���p/�k%�mu�b�#_\Z��4T8r���}j��O��N\0dE,��L#�)�Ӎ\Za�c˅�*1�uq�58�Y�0�u<\rƔ�;ρg�-|,\',OãI�K�~��3\r�����4J���+1�U��[��ƍ�\rD�Z�5ej�\nX�V���l��@�k5��F}R�;L�R!E�*yo�P����.@C\"��lS�]����I  �E�l�0��J�, �����;���G��-Lh΃թ�֢x���#��0�\nH����f��/�<�\\��a�~� ��m�*Q���5�r��(sl��Z4L%�%���.�i\nOC?s��Fb�\Z+X�\0��M�]_%d�P~p%����@Yp*��Z;(ᢂ0���!T(\nx�BV�k�5U��y�ZK��a���5���&�*�������Pi�>,��\n`��Ӳam��m��#�Z6糠���>\0\"_��b�p.0~�<W)�����V�x\\����\"A�Q\0��PJ] �G�C.=\0��G(����\r\\ؓ>�F�]���?6�a\n4XW	{P���r��o�\nÜ�E��	M�[� A�L�/����h��}ޘ�À���|&_>��,�(	�G*#�gPS6Ҩ?��h��us�������R�<���O��4U�!�%�\nR�\Z#hȻy�l0%M�6l(@ø@�6I��)J~`���[^�`-\0��.\\:\0��%LA=��[�h�I����0��țz�%�r��q/4���!��u���=�0�0�p3�2�Ka�K9\n,�X��ae��/�?�V���:q߀,�ʻ��k,�.���uf�P@��L�Egv?U\ZQ��k�*ac.Ţ��Ė��~��!��\n�P�Sx�0>Р`Q��-�H!`��*HW��,ú;�(^m�.P_�y�f/\\`P��IՊA]h��˕U�b��u����e�\0�ꩬ�=����\\r@/��k@�R1��Bў@[�k��\0Xf�2H�Np]#�\n�PYPAM�629���k�`	}TAu��[���{�$\ngB��T���^7h�٢\0\r�l*S�nB�BQ,�P\Z�P�4�Frz�i�\r�+8��R��5\0Gm%J�ʥ�\r��^x�Q��P�]�u`�񕟀	�MX�n�;��}�\rDu��,hN�����+�\Z�ba�yw���.ܸ@��,͒�`�`3D�l��!�T�N�9�a&��q�!$�2_��)��4���4�a�\r7��9.`Ch+9\Z�!d](ذ<9���5bOZ��I<9-��PA��Y����R#����=C&q��s]�ZY�a.e�j��	�\\��̝��:�pǸ�Oșژ�>g\0�*b�r((�`]�o�c��`B�B��&�)DSVnKݦӗS\Z�d���\r��c���\0\rCo�}?������\r�XO�y�/�5��&������SBO�B��\r�����oL�~�-r�	\n/������F�P	7zD�+D�}�֋R����h�߃\n\rs�0pn<\r`A�v\r�B��1�0�\Z�8D��PA�.n�Q>C����w��!��\n�p���+a��$����*�7�B�Py��δm·^�F�o���ui������DO��^W+�cX?��\\E�����7��&���1o�S���v����m��u���چ��r�he�?�W�.�2���`�u�(̥�\n��!���� S�i(��|��YQ6Ô��^���2�\n4�>�Vn�q,\Z�A�4�0t�ς�	Aj-J�)�g,��ָ�bmi_kQ�\Z��j\0����G>֢�Z@����t��Z�M�����?]KP��ZYhZ|����\\��uS�C������R7�����T`����	Q�0@�	��!J��b1�UP�F�_�;�u��S�2x�Ӱs	�8�0�B�K��3�7Z��c���zvv2L\Zvn!SQ���rq��}���g4;S\Z|��F�a�H�O@�^�F!\Z�^}���o�e\n)\'�\0�+JR\r_��\Z�@�x�4\rV(����?\\\0��s��o�ˇ���o�\"piT.�~@@C.�Jy֭ck\0�QpĂE�C9J|ȷF��C^.�޻�6�M���e\0O2�&w�	��rkP��8\04R���c�)�����{Pa�>!�w2��S�k,���3��S���j�x��m\ZNh ����vq~o�|���%~��>�<i���\'o�T6��Q���c5�u�X4��F���{j�	�\'��C��ʍ\0%����l�q.�n�\"���(�j�\0ЀR���\nD(�\0`���\0�\0h�[�Ƭg(��ϱ��Q��o��7�\"���w��`\0g\0\n�U>,��Z]�@���\0!�\ZP�q�� `0Q8D.����8�ͅ��Jd��+�}��S)�\0*��m��4̥\0vc���4���\0@�u`A�?\0���X8��Z��\Z�VX\\<�;X0\'y�y�U�p-.���������2�\'��zҧn]@F\ZNo�R�Bq�#�bD�G�\Z�>d%Ҭ�w{���&�\r����4�ts��c��Gyw,ԵB�W�W��V����Q��R�c]-���grO�u�;�\r���}4\0\r�{@�\0\Z��m\0�p�\04X@c\Z@����DR-�\0�̉�%�O��6���#C��m�ٻOP�Y[,�\\x\Z��ꋧ�\0,Hx[,�\n�0��1��/@Ì������Ċ��ꀅ*�@��������(�h8X����#p�\0We-l:�9�\r�w.Ƞ��`�������rH=�P�9H��J�\rX.\0H����+�@~�\0���]��\n��\0�Ee�\0��F�R��|�u�\0h0�6��4XNu5�K.��Q$�`h���u�\nC�)\'�~�B�]���Y���c+S]ϯ\rs)�����OL!�e&��#`�x,�_,��|cu\"���\0�t����/@Ü���ί[+TA���J���}�ާ\0\ra�/h�B\'p�pP��eC���u CrFǰ��XX+K�����\rʻ\0�@��łXD��2��a�W{^��ꀲ�\0�7�\0 �\r�gmVk%�ĢA�*H�n���>\"�U=�@Y�_� ���u��G�&Ny���I���$�F�XY��\0Ķ�ҳ͍c\n��S�K=�����B]��	��g���,��x*㜶3���?���$����֜K��a�@����E�\0\r��B|Bg��7��h(@él���À��Vj����2�\rrJ������4��-$`DY���}�w�\ZP��^���{�U�5��jP����+(���\0JI�\0���)$ ���>��>�7`�Z��v��ڈﶆ��AA��������OP�T.�h�vS�$��P����@ȵ�p�L@q�k^�r�\rb�@9�%���}b�R���2s����i��G�7,�X��(��O��%�;��:�Lc)m>�:7ե\0\r3V��M\"d�Ebq!BČ������\0\rm��!c�X4�S8��H��Ƈ̊M����D��l�����8�+˶g7�F�l��~�v�S�9�B��,��4ǹ�qʽ���j5�z�\"$E%�����\0��K�_f23c劵�� ����`\Z���f�%ؽAR	zkJXN�ν� 	�� ���������z>aT����3ޖg�w�D�ą	d�����D�oD@(���\\\Z��TꄤI�8�*���b���/��\0�`�j6�����\"����%�a\\^S�g|�6���ry�\\n��t\Z��^���o�uR$�6Mx����t��΁��\0\n,zS`đ�.b5/��^��h�k\Z�L�%\'��s���8cAVA�Ѓ\r�3T)�Rl�٠njM����9���#�!,\0+@�R�{{�w䤀�\0rK/�M��\nr�$Ԣ���Q��0w.�\r[�sO���:���4�\"���ep�i�1G��m�\\��\\(q���o,���\n�����Z��s\Zv4�aB��X\rp�������r�!�n�\Z��a�ۊ�9�����ў.AL�_�d��YZ/!d���:Z��hJj#�>�XZ ��:��\Z�^Y�8��Y	��ر�MBh��pPD<�1����+[��b���h��w��{����LZ�l\0��\r��.*T~(�����7��Y�H�e��$R�*``%y\Z�>V�n��!�Z���s�j�k\'�7\0��C��l���C�:�9\'\0��+��Xh�K. ��� ]Ł�\rJ{˴x��¹\"&���q�m��r�!�-�\Z���b�X��\0�Եv�c)k���B,Ȁ�c��l�:o�s�z��T)������#� �����6Pv���H���H��&`����=J�ʩK~���:�9\0G�;�&��$�:\r\nN�X�������e�wu��ۅS2>;-\\Ku!P^ϥ�x&զ�c �4	���i(��\n/��e�(M�x4\0�l�(�2�ޥ#�ŢyH���w^�+������\'li	;۫pm���?Iso�~��s��ԔV�^t\Zh�9�\0��TF+N�_4�lh���g/\Z\r���0҂W��P�xҩD���ǚeP�*�d�d\0e���a|,��w�`C	�a6�߫,���l@��\0�iqs�0 \0�uw\0\0\0�G�!��{*���2%�P;L��T�����p~�����Pה�\0��287�E���+��s��qen���\\\Z�9����7<�:k0\0�ީ���1�c��q��T�e���1s�g�\\�lxl��3X��e@����\r�*q�w�m.��6l.ל��Z��*�+�����(����@�N�L�)?��g2����\Zv�h����Ӯ*��ൖ��L@$�vM�nM� ��\0��\"b��C�Mf	\\i��t����\nEZ��� ��\r���^�c t��U[:~|�r�N�t�\n.�x�\n0�,t�b�`\"�X��q.=ί����K�+�\rH�\0Р,e+���p��8�EN��������Q{M�s�\rH�xe@-+M�@�R6�&��,YJr��1��F0SpF�t�Bpց\nC�Kb	��Vd�1�9�{Ǆ�y��)k�/��/4�4�T��t��%	FDMz��;.��/\Z��V��p�3����� z|M\0`9�^��LO�D��/�]dZv�PJ����4\n��Ѓ\r���(ގ�ga���:\\�\0\0�D@���\0�lP��c|D�$�������\0-@�x|�	�q@�Q+J�p-��@�\0p��h�@y	h@�@����ƀh�=��xfeGh �4	ݐ&��b�4	�An�&1Խ0�_��,�w�2������N*0��6��7�T��\'?�c�}a�Қ\0k��[;STd˖�C4�h ��	Oc6`��	n�l\\p[��h�k�\Z@C2�H�<���\"��`/����M�u�<T5d��Q�515q� ����~q�L,s�D�;!�Yd���Rj��A����8~~����@_m%�k���(��3L����j\0h@0��\n��2�x��\0(�Z`\nhꄦ0(P�c�;���t&�,�`�yp�zo�oei�����-C˪-\'���˳T�=�I�u� h�`�c\\�R����OK��K���P�4\nسn�}�Ɯ��s��(��7b#�>�`a��4�h@ ��T�A��xp�a��`�@揮� �f\\[BGA�顅�!XI~jk�|\0��йO��0��N�Ud�X��5@�[��<CE�\r�$mB��ޱP��N���\"كĕ�r��пc�Ҵ�0\r�x�`���\':��8M{@�\"��ZF����v��c4���p�D|���^����·cPNu�*��&��	h9�L���;,�Pv����[b.̂��~,����%���Ц�����wW+TM�a�Q��Ҷ^��h�a�9�%?eX\\�E:^h�a?p����]F9s�E����ha��\nQ��*�]O���b��,��2����L��[^5�c����=D\Zk���Pw��IK��?N�*{�IM�P�J�d��Ϳtu��h0�<���r��C�y��\Z�=\rm%�����*&�����L�a�ҙ�\"I$���d�y���V6��#.\0H��A�䄁4�wҜ �̘�&�$Y6�	��\n�xg�:WX�� ��x����,U�A�Y�3hJ�Zu���`���BPg�a����ȁ��c���Fy:��8�H�5)�~�Z_4��k��	͕�	b9� BG!��q�5\0� v��.��V	�?���\rK�2�ABwe2��\r�eJY��ӳ4�;�\'�6��B ��)\0(�Uw�k�&��d	W����a	 \0\0���0�H��񩙛D������8\0���qtXf;���w6�80��	�Bᢐe�*��X���\rs\ri����m�g=ށ�\0\ZNG���`5 ��\Z�z���f}�\0\r��\Z枯�5�do�Z9�u�����ϧQj��[�-{ �q��_z���ˬ�>E������}� !��ږ��R��^�:��� �������րm���6��i\0Fj]��GH�q	l���失��}�����M�S���A-/~w�|eBk}�2\n�:\r\0���+]�F����\0�6��u���\00g3c!X��l!���ܺ�q|�p:�}b7�w����˖�lpA���Hlh�ܟ��\nЀI+��,�i���X��н\0��ΨeI	��@a�ư�,�=����=C�lgGYdP1���.Y�g��_ ذn��\Z�?�q�c2�\'�\n�`����4�3��-f����g���c��˳n��ܱ���\Zφ�D��\'���l.=\\�ըG����b]m�u]ae,X�h�+��Z�Y�x^3�p\"wX)}g�A΃�]tY|��|W�!;\"O��X����1�@\nK ?�[|K����ܟ�\Z[\0\Z��vy�LR7�F�G�0��;/X&\'I9HKP��c�kŦ���eAt C��.��~2ǉ��R�5��1ĩlXh1�\Z�\0�@�sSax\0�Db�X@�`e+���uf�\ng1X�何#0�Wж�s��%@\Z$}�jsI)-�m���\r�+кL�eâ$����OC�r=�uo�@��o/,����;%�%�9���@�!�\0VI\n�A���k��5�@ށ��]S4\Zb�@���4�f��ڪW`�L�=�L���e�u�����d?�l�9N�f:��j)\r[�RV*�\r����=�aJO����)�b`�M��q��+�R�`1���<U�MZ�e�)Qs�Ҝ;�}s���/�d ���Y\\qnu\Z������s\0X`}�X@<\n��\r��7BǢ�m���xЀm�\'�lk���R&?.?�(�h��͆����`�~�,@X%�6h8���H���ғْ5$�%2�����\"7%$&u\"Wo�^ �&�\0[ϯY�������_Z�>b 6�Ɖ�B���c���pzLI��1�I��g�hy��c���wyL3�[�4�\Z@��\Z I�8<��%6X��W*Y�����v��V�^�ş�G3?R���4��ql���ₐm۠D0s�g\Z�S7��1@�;�4�\0t\"�9��G��􅰀T�{1��䕛2��b�.��\rK.9�,`�^Ĥ�o_��=�yGx��I�gO���Q��\"2�i�I����\0ƌ�J<Ȁ�s[�|��\ru\ZX_�lj\'m.�$퇁��f��)�Ɣy3��/F�#�%�巔���1��@�nn0�ǧ�9��X�{���}�~�@C\\{Y��2������/LM�!P�TJ�u�V\Z�����*m���6���k���\r��c��j�g4ti���^�4�J,<Ub�֭;�)½%������`�m��P5��$1��J�(]g[8��2���|0�V��uNN�g\nذ]�-�_�=\Z��<^hh�Ӏ�t�����װ�b�\n\Z�\rp�QaՔ�(�!��m�ԵǠF	\'����]��\Z\n����`i�y���Z*�68�\0��w�a%�n� @�F�b�̞���Ȩ�À窠�\0��S%�YS;ŭw�-㎵L�N�\0���.wcsIc�\0\r����\\\Z�K�W��	��V���½@�@.͏%�o��Q�]�:WA���\\6R��@#�uZ��6�q�k,0P���\rx>���:�!+���4`g>G=�r�\nj��Dy�3�� ���\0��(�6�ν���v�2K���3�O�ְ�sO�PP��Z\\\"MǴv�\0xRC��S%��N�v�sǣ�v�J6[���A��N�T�AJ��\'�)���m�Y�L��R�M�>GQ��u\Z����sY��ڶ_,�h@�>O	P!V�l�L쁺R��y4�P?c���\n CO�\'�\\���Sd�5�,�����{��d�z����G�E��lX��0f\0d��d@��XV�4N�C5��S%>Y8��)�-��Gڕ��Qμ`M�+1�N���m.�]�k�q�\\���:�)�7f�l���6�1��(Ѐ���`�˗nO�#ې.\nS�{��k�5�u*Ѐ@N%>s�i���=LYq���)�8�h�ߚ@ÚZ\0}�AY&@�ʨ���A�\Z��L�xr�/gg6Te8��\'.��}�@)���l˻�� �%$����OlNK�m��\Z�-�)Ke��l��-��*6��i8?��%��0hh�w���/K��־/\n4`7��R���\'>������ۏlN����E�Y�P��@�>t��㔈j-��O(�;�g�l�b�&s�$��CL}��]��0^�ذ����jS\'��y-�\n2@��Y�.���-�׼q\nʛ;M=?�f͟�Z�@��g`�����4�֚}���rY\'K���xBB����Q�Wh�����ՆZ\r�k�r\n����AA\r\Z��k��0�J\r\0�\'ū�@�B�zo-@�ZB�xfi8�\"������N��Z��r��>�r����	�P01:�\"r\r�|�\0���>*�=�z~����;P��4��؀���{pM]�b�9Kyݸ��-UF���4�xdG�\rp>h���ה���&�j�@��.��V��@C\\;M\rH9R;˚�k�÷���z>OR\rk�/��9u\\K�Agg6T	�Y��\"b@v�\05�v?[���.Ϟ*1^ȗ\n���-�K�\\�	�T`pals�\0:\r�ꓷA07\'�:w�%*֜� �����\n@��4�\n<q]��\'m���B��-�ځ����\Z�wv��(ٹ>dx~��5���5�wZ�@dr��O*�^����9ϰ�#!G:Z���W*��Y��ࣧJ��g��x�����`��Uʝ55�����q~�7c=�^:�K�=��%�9����D��Nd�\'Z)�\"4b4`�B�s�\0�ٯ=�sn�[�����o4ĵ�Ѐ��\Z���N<S�dPO��,������/�g-&�އ֧�P�%�.����%����hd時ξ� ~��	��h���c��S\'��<Ub6�)���\r\r��}����וּ��\Z��8��7��X�cɻo��0es	�HI�hwo95[�R��Ht��fq\'l<X�F��@}�AUs��rlqF\Z�xxq���N�5��,ܗA��z�5l?+p�@CY������c�nQ_-%ݙ��Z`����K�n�un2�n�������2\ZJ�X���!\0fY,L�q�!_��N�d��Pe߱[�d�g[�˻��r��iئM\0Q4@Ք`\0\n///�����?����o߾]5\r>?�|�����������������0��rUM}(074�\"��k�u�t^���dm��r��#���B�͚�s�\n@	B�{�5X�rq����P�i ��[x��oK�Ŗq�!��\r��ӎb\'�;z?�؍v\"��:1`�-����,B�{K�2������R �(���9�A�\\�D�bAa�@���2gR�vW	��e^�+�:]@��X\0�n�<������j��ׯ�>D�����2�u�c!9zX�F��}�1A���8��:k�_�<��Il%N^x�\Z����Yh�<��\0(6�\\*FB� $1\"���߷mcԿ\rqm0)I�^b{�Y(aZ1��0�4ƻ�9��H0�������yMu(�L���A��Gʀ?egi\"W��@b��Ї;7��>ؘ�m\0 �n+�GO�Xf�$��P��ʦ����J������{�\0��׿:p�?����\0\0>`�k�h@���K��pcsI�@�gVÎl.Ѿc��o��Y3�����K}��G�ޝ����T��Ƨ�u�\0\r��@4.*Y_�XPt/����׮�b��\rq�4ioI��2�\n��,Pno�:��r���YXI�1�^�<�0�\"2VƯ�h����{�K�(2 ?vd�U\\.C�;�ؑ~8@�xrȀ]1s��K� �k���ڪ��+��S�b��&;��/Pt���t,�8=����pa @��~<y�?�gV�����u\Z�zP�js�q���>u\Z�6�嵴�����������u�37�~��~�*@ՠ�4yٸ�i��d�6�yB=߼�6���@C�;3ooy���LX@�C�K޽���)���*�hp��0���jZ�B�\'1t�4fC��{��/2����V�� �F@�(�D���vdKi.�d\0��K�[Q�ת�b`+OO�H�Y 1S\\�f����˸,�\0���pW��:6��\\X��\r���;����]�Y���k/s���[B��^���\0\r���������ٹ�LMU6��U�۩u՞�+�Zh�<�%\\\n����@)��N?d�\r�~��~�ӑ����\r�)�Ȏv�<�3�u�!�����DA�,�X��&�`��۾�0��5A���,v-;�K��~�>�&�$��:�r�%�a��+53g� �3�\0J9��������\'\0�� +҃M\0V�Z@CE�JآBDAUN?�cK����X�T �x<-\0,���\Z���\n6@k!�\r�(�)�h�[\\nA ��i �����&v��7��D��njj)���rjƍ��!�%��(���ǗR�_\rh@�����V�@O�p��#����¢�,�Vh��:�A�\r�u4|�� �/�ְ1$&8�,O\r̠ݕX➖��:L�i��5J�Rp�=S�K���~�>;w9�����T��^�\r6��I�@`���nγ�P!EB��]%��<��b�-��]��\0�mk�{IDj�|\\\0������h4�*2O��b\'CehV\0\Zp�l.w��bݨEl�X�s������u~:�I�uj_�Whp����RW�\n6�������W����2�Z��֯�@CY�@ޛ����9ޛ����%����hI\0EA�;���x�Aݖˢ\'���z�%�jj��ԯы��bXy�6؂7k�P\Z�)]BAV�6�R(��Vz�D�=X�9�<�4~��|3`a@s���H+\Z�\Z0� ���?�ca+��a}w�B }bo,���3_��+��t�1�:ah�����ǳj@���{��*XE:�{F�?�#����QV�\r|t���_�zH����@Cy�`\\[,���Կ#���.�@�3�ց\06l�Ud\08S�K�}\Z�P^�bnՃ�oű`;vsRp%�\r6P�\0A\0 �h ɀ��E\rVCM�GO���k�ks��\'d�\'�	�^S!���1��qH�=X��\"�%B��\Z��:\rWM�\n���	�n��P�ĎR�X�`�Π�3E��\0�:s���C\0�[Z#��v� ���\r�Xǃ�-��AHi���@`�ui,�3)�@D���R��4�\Z\06�#Ea&h� ,���4��x1h����?2@sb�\'�����g������^�L\n�Y�i�oѻwK��2`�Ԯ��V��_,�@9�AMf��k��<�T�������{=�^t	�mW�X��f�(�|{/�	�J��4�=��\ZjsI��u�V�`5�sR���������y���4�� ���*?O\\P��B�ng�GB�q\\絛�i!}��k�\0\rn�:��8��N,i4�?��u�ׄۃe�pY�H�	�YS���i�\n1�\05��--��Tf�`��+��8�,�\r:/-�R�w�!\r� û���~�8�������*Q`�1�Yrƹdj3OSǊ-#���T��Ҧ��h7�h`�%145��=޶�b����}Kk�~��	�\\h(���@C\\P��B����(��;K�A��_�N�|��\Z �4�^Z��p8|��k��@C(ϿDЅ�Z�\Z�.s�U07Y���b�1�5�\0��-�\rBW�SR�䘳�\n�\rp�}��E��/���2�w����u �%UeP�X�Ϻ��8?�\\/���J���G\n�%�/����q*�q���1[p��8�L�\\�;뼷�r,�xM��Z�0�6f�PG�|U�,@k~��@\"��W��u�9>���q�Ӑȇ�w\0�\0?��g\0\Z̉��2O��SUv��ߘs��@4F�rxOV�$�+����LL}���זZpO�G��2-�8Pg�/K���yr���A���n��L?\'v�d\0� [�E�K���ࣧJ�2�8��Ӱ����{Ѽ��ma�jq�Br3�g0s�l=����{��D����Ej��@>�f(�F+ю~�ʌ��C��x6B�:�����zk\ZP{�Py�i��;ƀ\r}��0\Z��9����d*��eL]��M�)7`��А0Z��hN���dZI���0�ݰ�z�xN��]#��xM��A�R��=,�@�\n\0!�hHR@�;���� CE�GO�X`耆�4?�x��r�Z��ً\0޻ Em�c���\\��BW%���<�\r��\0}������)}bG6���I�B��@m�Ek�6���@b4��\n*�>P*h���Y��,�X�,��~�@C��>\nh ��pҨ9�1�Ke�Mp��=��\Z��0 ���l�Lќ(=���\r��=�\0pnK��X���	\",�V�A�lHc�\0l�uT��ٯG��c��mc@�@\n~�בT�t�����J�x7j\0��Ǘ�χ��jL��n��8A�b�iȩfWm$q�g��\0�>#�WP�����ㄦT���J^Ϫ�t, \r��cU&d����z��+hG�I����65��?O<�\0Aǥ`~�{\n�2R/ү�߳�4<Ѐ���xЀ��J��s��B�]���CV�8@��B4QK���9a}Vk�!ؠ �؀�pj\Z�2�����f�B_�T��S�l�H`\r���Iޱ��p!&�.�ci�n�Ce�ǵR%z�ij����tK��NƼ�{*���)1m�\0u��B�9:P������t\Z����{A`��kr曘>�,e��{f-�T@{��2����R���C����#��`=��Jh�>�:\rS���R\'�4��u��\0Z�{�#�>�U0w?���̆ܜ��kM� X�,Jթ�<�F�>d2��\\#b�e�Ё��Gd�i2\\�_�\r��-�u����dC��Jw����R&���2\'�ץD��W`��S@z�\\��r~ߵ�e���*���2CeO���^Y0�@6l���[P!�R�k���8�\0�e�0�D,<����ŉ�%�	Hc6��bu�Ǘ8�u\Z���@��=���h@�󊬆5&�l�GA�j�Ҝ(YG`xg9�.�������l����X	�B���$�)6��ϩ��k��v��h�(d`0�l�>5�U]%R��zܜ��ع�z�G-�k���)��5%��)��z\"�I��\\^��{�i�N�p���c�_\"�/�![�,��\n�-�Zo	^iG���@:�\0�����Q&[\"ҊhUwk_Ns���8��N�\0\r�BA���@���<i9��{@���k����*��[T\\���i��.B�3�:zX1eJ2���W�}�jay��T���2rD����\0;E����\ry�<9�疎ݻ�%��oMVߖ��z/�6���6���ˉ��GW�dk����*������\0޺��\'\n�L-�c�f\"����uŒ�X6=�˱d	8��͗�#aO�[K�P`b���}K�c��w���b+jc\ń\rS)���q�K@P�lM�A��v�Kn�ۖ�H��|�Jay>	RE�ZW��*�>��=���ƾV����_b��=��F߼�����OH��t������m\n,RxΤ���}\r��y*��1%�9~˥�[I�i��y��1e�[�)\\�� $��w�7\0D�^�>���qKy\Z��-���yȹ�o���L��XA��d�\0l �4Ƞ�ʻ%l˹n\Z�\Z �l�����2�ɀ��#dHu��h])�����}GU�5�=�c(3�V#,㨵L�����hP���ͥ�T�<}b/�TF�E��OG��[��%XN��������P�-,v1���-L���Z)�>ѥA0���L\Z�\\��}[[�\Z�ߍ��	=n/��gt`��+�˺�E�1�\0�繷��+E=�؇�_7�Ybʮ	2�l�%@���e�	?F3�X��\"d-W	���i�\Z�l,Ek��f��S�tZ٬�M��������Xӥ�i���\'�ﰹ��4<���\Zuj��M:�Kҷ-�;8R���T�\\��w2�U\Z*[\"�=����\0:�]$^R�A}��F�㛃\n:4���\Z�O���ʝ��|<r\'vZS\n躃\n��*Yd�q�j�<���[�L��s��kΩ��@�����o�v���r�a{��k�J0��};H�wp��Vc�:tX�����)�V\nY�F�+J�ϵ��Z��l.	T�\0�H��R�>��ԗ7�\n�˄,���@h���A��Z��L���ZYb4H\Z��id��N#�;�4lh`aH�=���+�(��G��� �.0�g����>(Y�n\0��x�Y(<g#+9�c[�\'b���2X�S���;�L��{A�\0Z�.��u|x�r���R@�B!g[�;D�}h�=Z��>��4\0T��l.��\0�C.�=���|<�b�t��wc���\'0�ZYS�,����h��f��H�����3�[{V� $�� �,X ��_$��iE�v,Ѐ4���k4��h�!�<�>ӽ��^�$N��(M�`aɕ�rOlΘ�Q+&ø_l��R\n�㰈�\Z�	d  B��a���k�JȀ�g>���.�;��|\"ˎ\rJW�I���r2����i�ZzV\Z�6�>.W�K�iH�/\"]�}ѱH�\r~&��R��|_\"�*0a��j�%�uA���`E:k��Vx��i�-Jh�>����S(�N����b_��ˊ����--�-��RFv�-��2h]���]\"\Zd��%�T/h&�smP�q�T�\Z@�=��|+ƣ\\v�T:D\0`	p��:�s+�4ܧO�!Қ2G���U�zAR��:�`�II�s�&Ѐ�i`�Z���u������uoa�� \\��ca�O�4,� ����b���^o��r���h�)6���k���C�М���ψkb�*��5�a`�q��Œ.Ae��dH�c`��\n����Z}��R}w>�9w�c���1�#���rE�T������UM�\n��O�Ӏ�	��Li[aT����Ƥ�W�cbǃ{&\'!$��\0\'�T�vY^V	�r��G>���\"i,ڈ4�рC�#�����\Z��3X\0�P��8K�g\Z��Rr\"�s�.R��������ø>��l��U�A߉sfR8�\02 �B@�_� �0�@�U@��\\/H��6�]�ӎ\"1�m|�n���A@K:Dl=*-;�sz��}���%��4�pn�H�|���¼�Y#���8(f<�4�8�!l�3\Z(�>��6@\'`ˁޣ����Fu�I۔�a�s��.�$��S(�\0%\n]@�h_���`��P4�GN�*\Z8����U��A���R�=ޡ\rq�.9G,�KĀ|�T��R\nɚ�hK�5�ʓ�d\ntK�5[?W�>B�]W�+\rEn���xdv��(`sI�egs�@CJ��H-�[C���Ly��1X��6rEZ{��v����)e\\��mP�]X|P���9а/��](�6��W�\rرˡ�.$p-u\n���\n/�\',�2�`�A`�\0�F�Np�Xf\Z�:K�WѩPW��~�S�=�9�g�e��>ޫ��q�V�-��b���~���Z���>�3��jJ���3�Mγ����~�&�����h�6`>�\n�b�:��;���\'غ�^\nnt�A��w[���߁��\r�B�<��NZ��J�W�76Є^깰p���x�T��ߟ��6v�����Jܪ��\rdXl����``2�;�A��y�!�Y��j�a��*����kr߿0�Bf�N�ť��5�3�Tm�]���4b��X������m|csIlI�p���z�5D\0�X u����/׵!��Tx7g�e��Dw�[����%R3N�\0x��ٟ1�q�a@�P��ߜ;�<��5U�S&��;D�n.8���A�L\\w)�/mJ�g����eA���,�KA�lg��q=��*! C�}������$�ע��\\��F�8+r�P1�@@h�|���c�=�\r�B}\ZX��m.s���H��X�������em�&���\0\r��v=�B����h�\'��)�P�)(�=<��-�蟟����o�>�~���>���������| ���I!�6bW��3���+u,T�0�X��\02\0�`&Ñ�  G���s�4Ubm<f���41�SjY�E�yK��V�a�B�d�{���ϥ�js:���\r����-�!�Iѻ�k@Ɖ%ȡc\n�,�*���q��t�]��rY�咦us�h8�^��\0AB�?h�6�oc\Z�4x\n�z`�Z��K����� \'M�_p}yyya �.\0����]����I���� ����L��%�rh,\0<� �����@;ôC_dx�T	�G�kM@�i\0���?��������\n�z�m.��i`1Ef��i9¤Q\r���t�6��w�F�Y��0��5����!�i㙚r4 8��@��,�.�z��u��@Ò]f�{P�ub|>O����\\۾2l˸��2\Z�K~����?T��\0\Z0N�ox_���k.X�r-,���6�{��\0����_/U��\\E��E�D˔&^�o����w�����vw6�4�_�:K\Zſ����\0��؊r���~xw?58]�^š�*��W�$u���tv��6hr�e�c��\0Ɓ0H-�uK���s�g;ށ���(��N� \n�u��r�@qF��Q�](��AOJ;�e��\0.��E9��d�����o`<���WF����9��\0@���t�@.ؑ���V���Gy��V������e=jϔ�͏������Y��\0΋:R�\Z�i���r�\0�M\"2R	k�3�eqT\0\rǔ9�׆Ru�{�y.f�$���\r�_e���_��Ë�O{��i��6w�a�@��i}�b�Ih���@��E^�-��oQ����ϗ/_(U�����������s�����1��6�	q¢�`c�2HL�\'r@��/� [�J��L�z7�q�p�ӏ�l����=��{P����6;����e�aB���\"��������ǰ,�\nj?������֎\"$M뙄q���p�(�P`j}�t~:h�>p�h�?���؉;:����O�l;i�,���AM�P�,�P��`:@�!��<Җb�\r`\'�- �d�s�HL�\0Ȑ&L�\"U�A��1�!}��n]wL�;���_��y�0.ձ���[[��wt�:\r,��C2ǵ�����9ϛ�r4�/��S�\r��� ���}����\0\Z\06���<��^�����6@�BK������?���u���	�_)�Y�a�n0�`��	���4��\0�Qz�J�Hb@��-��M��)K`�\n�ZͽE��5��G��N��m.��K�\\�Z\"�{�U�ՓIb��qm(�K\0+)my4 \0Ph@���6xpF\'��]r��)��-�ږE�\"�%����0�C~��O4}� ]�J�%�����R��G8��}�yp�����2��Xr��dh�\r&���[ދe:g�pPy��Ο��|7�c?	dKK��� ��W%m.u�9��ݲNÚ iJ�^�ݲ�xۺs�\0�EH�\"����\Z*[\\\"5�t��`��4x�g4<��S(�Yxml\0�4��\r�����{�*���\\8�Ð�N��_(n��YrT�\\S`�x��d��2Pϲ	H��Oy��V�h/f��V�1�;��A6j��k?����e	KD�q�-�/���Č_��댭�)��-� �\"lWJ��;��{�Y���FVZ\\���\'�o?<�t����\r�h\0�p�4�ԁُ�/�$?<O�(f��TV4��Z�0���J��P�go��g�[c����TX\Z������)����\0#\n�>�L�`����@�X�X�>C��g��{�+�`/@򣳹F�%��𩹑Hu���a���S)I�e�S���`*@\Z�9����\Zf4���	4�Fө�>�}���hx,F����P�2��riM\n�Ԃj�~?\r6���+@��CC��\r�v����6�D3��4�@h7`��8�`Ў�h1�-\'���3�X�N�oV�\\J=jQ~�����\n4H����]p��\\S*N�;��g~t�Ni.^�@(�}�U��f	3T����hh@�;D���t��A�}k4,��8yD���^�ғ���~���}��|�N�� u�6s`C�v���)o�O�ށ������\\(�D���La2X�)�\0ʵL��X��V\0��p�J�[�%[��\Z6��t\Z�n��ؤ�Ԅ-�C���\Z�8�2༘8Nǃ�\Z<}����Xs\r��B�S��c@�r���\r��\nS��{\n�j��B���)�A\'�)���}�`C��Z���E\nęR!����RX�OȀ�BL�֩�P�oR������[����t�c�}���|���>�ߑR���M��ΰD�w���&�cl�xƐ�\"����]�	6�|CJ���L\r�_���9^<�t����\r���H�c��|ʟ���ҽ�~jp{�5�6��$&�-�E�{���S&t�v�!�X�2�Z�J��Z	�jjD9[�#���\r[�76�l��%���HQ }L�����ڱ�E/�`�R�B����J�4s��:������0KY��??�\r��T�� $�iWԿ��g��hx<�O�h�H��[u��d��\r���rA%�}���R�\Z�y8e��\nsl�6\0�`��I&�=ǈ?B����e��YZ%�ҕS%ܾ�͸i}���6� ���%�g���\\j�jm�8�oS��T��I���\0*��Jxk;��u*~9\r4�Wssj�P�N���\"X�Ӂ;�0L�2!,i5�x\nź�3�!k�\r=�ۦ �֊+8cly�h���M��%�X�B4��D��u��\nL�5r����+˚}Ư�����]��?��%��H��M��w%��%R�`�8U�gT�B��@����Y]p�֠\n6��2��A��$Ѐ�@@-�Aiq�\0��8 �}�ف��6��6��&H�,���2�+��\'��̆h��u#��D.,���u�h��gq���/�@0b�\0%\n�2�t�о��G�3$���ZJ���\'�=�ԍ��<6Wߝ�%�~��@CY�K�<,��\0{�mꭄ��X���la|��;�\r�7z`A4u�遵��y����%R3NZ�N�ׁ��cD-e�$3X�j\\GS`�$(U��@�&���S�,�0�\nȀ]p[޸�*�VO��\n�8�6t��\r@�s)���1!��\r2��v27e�u�3\Z��-�W2#�ܾ>-`W�=��+:��tz�K����\\�N��d�P��Fߩ�u�3\n8���`j�81A���8:4�Ū�j8��� ۃl�����N�4���{)�r��S:c�����Yh�K�(Y$�A8\n�)����Pv쟩���bO���栖B,�!d�B��I�>�{z_��W�l�-�o���ʀ9�(�2WP�K���)��66R4B�Ֆ�)���8��_�a��0�����N��yFÑ|�+�\Z`�`xYO�x�>�m�<\"�b^̵����>,\0A�2�&��ʳ�����~V{.�٬/F9<(0�,�&,��=���g�d��{�e��p�{i�J��~�\0`c8T-^[�Mc]^�z��&\0�V}b��\nw:\rB�x�R�@��S�>a�]ġs$,��e �(N�Ȩ�4�86�3�4�\rX諀U-V�B:p��A������g)��|1`@�\0���Ŕ)	\",��E!�N�s�*UG�	�z��nS�A/���\n�1�,U�S��nމ^H��]&��v���p�j��d�g2l!UbH.��,��Ba�0�4]\\��X]\"8~�st6�*\\���%\r�j�w�@�Zb>�w�5�J�I$%l���0)��^�m>�\\�!D�j���}�(�mjs�.\r`�$ߕ�\"�g5x�����>`	�ki4X�\Z�L�p6C��+�*�34\096{�5��W��bc{�Ol9,vЮsL|�.���\"��0A�p1�˭�J \0i��W�}�R~.ed�To˳y�v��Zu��$���ͥ��´[�n�:2v	���)����߃=�r��\Z�5豋@��`����y<�x�d.�&����q��P�ٰ�B(����}V�A��3Ƌ\ZL�[�쏸��@�R\"f �2�8���+���@�\\%�x\'��5��%���K�}�gj?��۠�m.��*�f�,��c��sQ�z��c*��MO����y��0\r,�\'�t�t<��Ӂ��Qh��y��{`�����q�6�:�`�?-caH�hS�\\{-�K�������\rO�%SZt�v������c�\0b*,���2J!���P��`CȰ�T	�n�d؊}%���J�T���{�Z�\'618M�m./Ul.K�4��z6��\Z}b(�8�\"A]��\Z:���W��X]5؍g\"�E@��5�2�p:2��&��:\reP蟣>-�t�ԉk��s/	gZ�Fˬ4�.���Sl�� �..�\06���	5<�Ω)�^��$톱��]�	l &C���VR%d�P[��w�r��b\r+�b[�Ɍե���߭Ɯ�^��i`��S��P��u\Z�E�]�����B�K�*c��iPB�i�\n(�~XUJfÜ�$��!���Z\Z��Ph��g\r2��s�����l	�[\r�{�A�_��q>��(J�E̝�S&�L��yc\0��Ѓ\rmv�5���Nr�vd���	!�F1p� �l`-�Ȕ��9�U��N�v5\06d_���Lv��?�>��@�Rgs[P����Ca�K�������B(c�e���q20W̵�r�|P�V�4nڀ���H�8H��u\n�����%�o4�A�9J\r��d\r@!t\r�\'Ԛ��l�[W4��W����\\���k9ee������F�LbS%ؒ;I9�9�ǮWvj�@�z�-�W�,�87O�����^<ұ�6��\"@Y������w�5��\0~�4гN��3�p�,!�-p��Y��f����0eM@�����������`9 ����u��u��K`���}��~�hp]���t�� ��e}�D�k�*c��FкF��]�56�jH��2�p���ϙXC�!dHI���g�%�_���9d��8M)+�b�.��\'�<9¬�tJ����9��	}�\ZƸҒ���]�;֢)0�a,����S�)��@���3L	0*�Q�&�l�$}s(��m}�Ņcn�%�<{K˳���ӑ,�*�\Z`��D���X?s��ށ�����q����b��*��0\Z��U���\Z�Oev,����bV(�xJ07w�l�H<b���L�s��m�<��%�ߟ���� C\\��\'$�� Q����n,��z����j䂴V_-���;��\Zck��-��\ZT8\n��6����\"I�6���+�Ӏ|��\'έ����7��?`�:��������A��+����\Z�� ���4`���A�\r�-P�yt�k�\n1{pFC�.�	4�HD���T������ V*{�`Ov����_�\0��R&�z����x���M��T	8�!L�X�������1}���IJ.2tb����g�c�1�o��:P�](�K�(hs3&L�E\\��:��=�:uy�j��  \r1����t\Zn�$D2���@eA�q@h�D��^hp}���9l3���6@��2��вx��m1g\'A-86��l���2L�]���)#S�s����a��`	lHI�X��Fk\r�lR���/B�Y���g���3�9|.����%����KI�x��K�40���窘vK-�:\rH��7�l�FYsH��5HH�A,HIׇؗc�:V��4��E����V\0X8�������xx��r�;�~��,��l��\r5�-s��Z��e��a̢��`C��L�U���T��ȏwM���%��؀g\r��0g͆	�	�J�,����,	��wR��\\�r/s~�[���v�`���*��������k>�����/�i��L��P`�2v��eپb-h��\'��%�q���-U+K��\'YJ!�4��e���\n�_��\0)p<��9���춨C�;t>���U�1E[�\"Xʴ`4<3��e\'�gY�vbn[���j7��6�����=�`�\r!�4\0	\0�`CJ�v�b��NX1a���WhWdؘ�(;�Tpw�]>O�H�j�	~��9w��REpK\0e\0|K0�Ud�D���8��L�v��N\\�����4��Re;X�=;�@��>�=�@l�k\Zđ&�T �l��5ۂ`��.],`�0��ު\0���+?���a���{�kX[b\\��hp]�op�\0�\\�%�nh�Z��<S�c-v�p����oň?v��	�4N6��Jྸ��������X�q\\X��3}C��\n�󔗞����O�_rL�u.�}���P����	���u����ʩ@�{��98�v��}1��¸+�\Z�[T#�x����@�N���Zq#�K�b�w3Ѐ�:DA֑!���A�>D�� EH0	�\Z���|�MYf�(3F�ݓFG����]˷`4�\nX����\ZR��ց�˕���Z�s���\"|����1��:\0�;K����Ǌ?ZT�9��h��<g��Ln���\ZS�B�(������>�V��P�����P_~�跥ۡs� P��r�csY�1�;^��j��׉��\0�U֝^s\\.�0�4�i��6��\n0�~܁����%��4`�\Z;Ї_�Vx\"�FN}��n{���\\ڍ\0��Z���:[e+X���X�Z�1�_�ڲ6��us�V{�?��X��ڪ�=�}M �,�R��)�5�Q�ܮK��9i2��\r���̳h�\':*ªu-c��������7s}�F����$6VA������qE�\0�O<���-,=��i��k\ZCN]��*5���Fk��|2?�.���xS�Xt����\Z�����cl�����2�sX4<����䔋F�7{b+,\r�\r1�_1@��5�\0���?����N��rz=��т�r���A����������T^�f+Kv��Wc�u	&ý���֦�aqˢ��`C�0�gU��q:��ۏt��qK���>�o}L�X6����\\z��c��e��X�������u8\Zo9-�C��0`:$����́@.�y/��\n�Vh۠�S�ܛ\rO�L�\"��K�4�R򀅩f7��J�g��P`A�)� �����j;�=�ۤ�����2��C~BW\'��h��Ҏ�n.��`3`��ؒ�l�&J�i�t�[Ft�Ҵ9T��X�^i��k�I��px�Ϛ`�pm�օ�+=������[o�Q}��Nå̺��N\\����ҟ��$�\nyS��Ca�{�Z�,5u�l�\0�B�X�@�\0\rػԇ�F�����\n�`�U�?��t�Xb\"X�>C���\r��A��C�]нL�~���c?�IM�9�c[!P�����~P�w\\�\"xf���Ą�cn}�n5H5<A3@��w�&�%f�@�;��@@>o��[n.�E�%��\n\",�SM�����덋^�����\'T���ot\ZD(2��	.�C�ZC�-��8M��IR\"�\r�z��9��X�Z��4=$��EN=����-��Ϲ��4<�h��x����}1���-j���5��Un�V�I��	4��mγ� Xʺ.�m�Sj�z�����u\'��俇�d�¢��0<b��2�`�Ģ,�M�~\r`Ü��dP��RD3��+��\0ݱ92�\0�y9�[r�@��\0��6�SAm���H���n�\"�u��F2���i\Z�	1�Y��E\nP�?h�)а�@��)��H,����R�D����VX�٧�R��r�%�X�k�e��`�D�S��V�/o��s_����H̱�B�l���h]�;z�:\08��b]h����i����}0�v��{$a�0�Ѓ\r�Y_���\Z�ֺΩ���碩>Ѓ\n`zɏ�R���_�}��N��\'���ϐs<X\0*�\n,�2�&�Z���O�\0Ѐ�\r,��ԁ�\0\r�\Z�3!�B�t$J�)�)�s�1�)��Qd)4�Q���\n\",�{w]��J����>��6����� C�Evd`W�0HZ�������;����г.���P}#a`�A�7b�����`sy�\Z�ѕ��٭�KcęB�k�E��^�>��z����Zk̄t�ac@�\n4\"��c#�\r�B,x��k��5�b�-kl,�����\Zbν��DI{��;tK�#�\ZL,�����#(�vۯy6Å�\'����2�Xd�wX��nKq��≞&�5d	���8��?����d�Qħu��t\r���:u&���{[ol.ϧ+�p,jsYT�!�2�u�`]�b��Ae��֑���r��{?�;o�Q%\0\0\0\0IEND�B`�',95764),(15,5,'fon.jpg','����\0JFIF\0\0\0\0\0\0���Exif\0\0II*\0\0\0\0\n\0\0\0\0\0�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0�\0\0\0\0\0\0\0�\0\0\0(\0\0\0\0\0\0\01\0\0\0\0�\0\0\02\0\0\0\0�\0\0\0\0\0\0\0\0\0\0i�\0\0\0\0�\0\0\0\0\0\0\0Canon\0Canon EOS 20D\0��\n\0\'\0\0��\n\0\'\0\0ACD Systems Digital Imaging\02012:09:23 16:02:43\0\0��\0\0\0\0$\0\0��\0\0\0\0,\0\0\"�\0\0\0\0\0\0\0\'�\0\0\0\0�\0\0\0�\0\0\0\00210�\0\0\0\04\0\0�\0\0\0\0H\0\0�\0\0\0\0\0�\n\0\0\0\0\\\0\0�\0\0\0\0d\0\0�\n\0\0\0\0l\0\0�\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\n�\0\0\0\0t\0\0��\0\0\0\0984\0\0�\0\0\0\00100�\0\0\0\0\0\0\0�\0\0\0\0�\0\0�\0\0\0\05\0\0�\0\0\0\0|\0\0�\0\0\0\0�\0\0�\0\0\0\0�\0\0�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\n\0\0\02005:11:12 13:15:49\02005:11:12 13:15:49\0>�	\0\0\0\0-�\0\0\0\0����\0\0\02\0\0\0\0\0\0\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0�w5\0u\0\0\0�#\0N\0\0\0\0\0\0��\05�\"\0��\0�\0\n\n		\n\Z\Z(\"&#/#&)*---!141+4(,-+\r@+$+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��\0�\0\0\0\0\0\0\0\0\0\0\0\0	\0\0!1AQaq\"��2Rr���#$%BSbs34Cc��&5��6t�����DT�d�E���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!12\"A3Q#B�4Caq���\0\0\0?\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.`T���H\0	��\0	{� �.� \0\0\0@*���mp\0�ku \0�.� *��nd\0`\0Yx�\0�\0\n��26  %�b,�.Ti�x��\0\0T�nB�\0\n�^$Yx�\0+\r�l�E��\0��\0K����2\06�͔�`\"�Ā��K\0	��mrH�E9>}r��v[�	$�\"Ze��R�L��_�k̴�T�R)j�A)/\0Z>,��؄Hn��=nA\0T�|B�~l��J��yy���K�v� \0�X\0�;y�\0lJ�d\"X\0\0������q��R�eu%we�r(��s��]�B��O�w�D��m��{��F���:W�B��eIߗ0&��(���ZW{s)�����IG�ܶW@Wh��oȅ��M�n�DOJ[-�kЕ���\"�\"��\"\'$ݖȇ�����X��_b��K^���	\'{�k���l#��[�	\\�R	{�s.NISP^�J�\0\0TbߡrS�El�j.�Po��5r��Sz��Z��oBS�\"-o�G]�Sm&�2��)hܫSj͔�	�!��_p��\0\0\0\0\0\0\0\0�*�\\��\Zh��Ѻ-�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�`@\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0R�.% \0\0\0V܉+\0\"@�,ŀ\00\0�]\0��\0\0�b�vB�t�@IR�\'�L�s��J�%�uԋS�R������?��_x���C�x\"7P�Q���O��x,C[[�x�2{|���b*ӕ9ZH���E�ujJ���H��\0\0	� �� �	�l�H�\0	�܇���E]��\\еrئI&\"��Ȁ%�\"\0\0\0[L�\0m� ��$��	��)p��\"I�q�AU��h�� R\n���E���:�n�%�^��Zdg�=�@%\'�Y�\0�0��  TJ6�H\0LU݉�W�� �/��/��\0�?��0 ?m��V���;�‥Hsez��+�M-��زN�.FDb��h�4��-�d+ܹ���aA�&������N��U���\\t)r|Ȼ*����������92TB{�wd��ܕ�S�Xr�e,	d���)]��=��\0\0\0S�sU��D��{��[��س+��Wcb�1fʒKĕ�<��C�#�[Q�^`S`Uh���@)J�4��\0\0\0\0.`�Q��-��o��\0]:n�it�N�@P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q�%۠0� ��	w�!�{\0\0�����\n��Z)\0\0\0\0v.�w�\0\0.�%�b�\0c�\"X��nB\'{\0܅�Hw��1ԕ���@&I��&�\0\0\0:[W�vN�s\"ĥ`v!\\�ّ{\0w�\r��Z��n7���/}��D��Yؕ~��l��P!�G�*���$��	���ܒS_�D����2	d.`V��o�V\Zq�QJj�(���X�1���^��b����c�7#��x�AY?�������~�TyXx��d/�S�]|e)�zi���<�-ʑ_\r�/h/BRK�ܑ>�]z�j�`\Zm�t����+u&�a��\Z���7r�nF�Vw-q�D�Xe^ƺ��d�!�П2^ȰI%�RT��\"�{��j�� XCt��V,Kf��\0\0\01n��E%~���\"�h�_�U�������Uɐ�4�ܦ��9�DZ�Ő��k��\0\0\0\0\0\0\0\0���6�R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.f^�T�\0J��1j�O!��iYT��o�c!�e�\0,t�\n��M�g[����).L���\0�y6��-�!�Vq~R��c�R�Q�5�Ĳ�|�)ܜq��\0�Ȃʀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���̘�Z��ݲT\Z�����M�Jm��\0\0\0\0\0\0\0 ��\0B%�9\0D�\0�O�#��Q�\0�\\�ZT�JŠ�`W:�v�Ъ�9��ſB�l��ў�W���E*P��䈷I�;�f/�u~OWDwr����X�M���RJ1m}N#���ڸI�zj�L���<��`^�\nNNV�{��\0&M<qj��X�)��gX��{Y�a�c1-�պ�y��M�o�ym���=)��)[��\'N܉B4�����1g{�!��\"�	��!�,:n�%�����D��<�2R�����G.d�tYsE.7*Ӱ��T��z�ՉH\n��+���ߡD��%\n\n����%v\\��\n�܂d�B\0\0\0\0fWM�l����n���Z����^/rU��(�0�HH�K�Q�>�/m�P���\r[���0��MƑd�Ġ!����&ˠj��S;(�E����Z��h���Sj֋)$B^!��.�����p�w^v�z�I+!NOZ܄�Ǖp�q�|ƅ7�c�\rK(Qt������B�\n�EFm/.u���������Z�\n⣃���>�7Ѫ�>\'\rR��j+[Ñ�bkNj�����W���n[�U�b?4�_�6�ː�Bʡ�2/nd�<����g�}�#M�v�C�h�n��.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0WKN�oc��T�!n����#�܋6�t��!X�Z���ݴf���,(>�F�r#�>Kؙғ}�4�Ǩ�n�\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0R����>h�����2�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���B&�V��dJ�����̪�X��S��\r~W6L.a�:NppWV���5�.�V�L�������0��<T�ZrO�k��̼f;\"�%�a�gk.~͋s������|\"ix6c?:��kJ�E�GR��ۘB���_�\0@\'��&�\0	�&�l\"H�) �rm���>@\"9�l-`d&��`��_�6�b��?�\"�f�]ڹc6�M%)�b*�N-[�������̡&��.ԅ���E��4gQn��ĥ��!��ċy�О\\�u$Sk0�Iy�k�p)�Rwh�+�����nM�[�����Z�;Z��b�,7~�ۨ��4��Ad��%����YN�Ȓ��\n��D���Un	(�S���+�V�CQҴ�rv�K��*��M9��\0!+�����;FO��X�,���u��=\\׈p��&�<��7V�������M]i���AP��-;3m�3���Z�<-�-�9E>�����X��N� ��I�0#M5�*�J6L���2U,Ouԗ��Z�!��4���%.�����rZ���\Z�)7̈�ʂ�W2t��� �n{�M�	2R��j��$n�?S�����w�Y���}��д��^$[w�\\pl��m\n\ZDX��l8;� Qb�Q��\n�+����*c�«Gb��n��8t�6*��~���]�aT��Mk�s\Z{ܴV���w��RZ ��]��ٕH��\0{�{�^̰I�nS̪L��\0�!��\0\0\0\0\0\0\0\\���U��PLd��`f�ʱU��N��1�^\'J+E(ϓ�2�<]hr����u�$�RRQ��W���ʀ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&\n�Km�O_/Ȟ.[b)F�<��ػGV��9�ze�&=<��b���V�(_c\Z�S��8S�����q��މ֔����c�ק1{t�+<��X��-l;j�9F�%�3�W�\r3{}��V��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`\0�	�\0�V%-�&�W�*Jː��ӵ�����d\nm�\r7̮��!�1����*��i\ZV��\rx�a��\"�lE�\n�d�ĊW�Rw��i��@E���@*�J�(�\"��X1m��\\�/�mɷ�@,\Z���k�E]�;�E)6N�z�v/���pq�/�g�,��p���	8�5Х��\0��+YPo�z�$�z�>/����WrIZ�n�.�s\\5ue����r\"H���vEK�{��Q���E5w[�Qg�]^[���/���are��!�Ћ_�W�~E��k�5h��Q�ہJO�BZ��-��v\n�ԅ�	lJI�J7EVd[� ���(�Ѕ���U��B�&���ۙ6`Ж媗or�#�\r�K\rn\Z�.ʋI��B�d)��LSc�\n6`f`W��Y&༶<|*��=ZN�L�6��5`��y��ocծӃ�<��;SV4�4��Ļ.c��u�%D\'bw�h$�Ra\"R�L��[����J�d�&�Kk�;y� 	];��\ZBWD٤<�]��i�u�6��A���y��>iU~�C�[����+V�ۑj�\"��!*e�r���Ӌm�\\�r��zm_N[sdeu���\nmS�U���z��O��4�(�bq��P�\Z{mu�|������^�J���-RZ���H��w4ŞSJlE���Ȧ�.�d��-���k�& ^�2���r��K����\0-��\0�r�\n�����Ż��/�����/CV�\\�NRK�\r�YS��u%oTR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�E�I%vA0n2Ms>�O��\rT���-G/�K�~�]�ж�N<�ab�*=�[�T���,E����K�]��yb���m�`U�:Rq�FK�G���md�Ti�f\"���w~$���u�Z�\0��\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"@�@��fB�U�\"U�uԆJ\0U��E��-��2t�܈�r/ѓ���R����q�c\'�N	WUR�	Nv���ˎ:�#�4��\"�&Tk����Q+&��-�ʱt��	�TaT����V�319�&�n�YJ�}L9I�yo�Z\"�j�yZ�M.�Y��$YT[�l�dO49�o�:vG>`Bd��k\0v[�e^�`\"�J×&9�.�]\"m��	ۚ��2Z�kט����ĵ�ʥ];n�dY���R�{*�T�Ԝ�)��uZ�ؚqz�|�ҳ�E.i�\"���*���x��b���8�ݻ܌�Bv��i�ˡ|}(��Z���䊢���eg�$�Tu)[s�ܛ_an�Tm�&ˠ䐵�	G7��(�GĄ)�Е�ʴ��-�Y��>�YߙW%�&�J��ܖ�BK\\>^d�g���k�lPպZ����Xx�Kڂ��bio�\n.���	<\"��`iI��ܭ��\Z����������xXD�G�G�/b)a��f�c┞ŵ*��R�ɥ�x�}{9�����D����&i�[\"6\\�ӸI[b�!ID�g�^�p&�]�Xt��l���Bz\"�-}ż	�K��i������ht�Ae�Y�,��۠��v�6���\"��MH�a��,Uk��.���bnɶ��\Z|���Yr=l��~�F)F��򤯿3<���F/B���$���mcus(Ҽ�bݵϩ�;o�gb���0j%vm��D2]�\"9s.�<�m\'�n�۩1wl�ݒ�S�����b.\0mȔ@`H`@\0�fa�\Z�l��a�5���(5+Y�(�u0��:QI=�̏��q8�ו��d��\'ZU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�=	֚Qi_�,�5���n]S\rB5gR�֋�e��{�+GMjW��T��Q����d��У�����p�ó�	z3�6�wd\0\0\0\0\0\0\0\0\0\0%rzZ�BL$H�@	_`�Af�IZ�\n�e{�X\'��=�	A>�<I��䊒k�2)�U�1��eQM�H�P[��f�2�b�X�SkX�f��,�8�e����j�͗����?\0�&�r,���}Iv[x�cg�)G2\Z*ߡg̀J��C݆�qܛ�Z�����̝��\\(�D	��,J�#���R��6��{�1���l\\D�u�b��{��_��G�G!�Nv�QW~���^_W��:N*PWnRKk�ҕIF�Nޤ��L���.�[[ntݼ$��;[�������͖���Y��F2\\̚��,io�x�Rպ��N�ˠ�4HY�fT�\r?p���˚v\"͒�[J��S[ؔ�����&�I��Uek0�%�ӧrv\\���r!e6���k��T�k̔�+{�Qv	gԩ�$�%.�ė���](�J��Z�����~@zt���[�š6��Dh�i�w]D�ܚ�ϝ�wq�Vef�0��gJ�t�*��e��c���2�\rE=ز,�ɰ�\'�	}�\Zoț;X\ZR�)�W	nv���a���E��6I�.��!\'a�*�rm~@қ0�B]�M���m�L��Ĺ�QWJ�ye\\S�\\R�g����s���zc}7wg���(�&���qt��?��V���G���lV�z�#�Q{B�j����˞�U��\r�9ʃZ��f����x��V��2F(���UO��5%��r���+#�kٹ��%�V��|���#hܤ_/O/ͻ�aT�2��sKw~Fѕ[����ovT��CM�Q�IT��E-!�r�Sk=��]Hwe�4���\0�%��u%��0 \0\0 \0��`�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I \0@��LV���o�;��������	��b��B�%_�\0�|���T�H�{x��V��^;�N��!	��M\Z�~,Ə�~�w�\"�.{mB�d��-�EkȢ��K5\Z|ʦ�K��/S�t\r\\�J��EB[����CH���-T؞l5�\Z,�����<��M���E����J�R�$�Q\"���a\\��ȟB��Q�!F�����}�Ў��Z�wFL��*c\'���%�*��]�w�KZE\rY=�$�/�*Ŧ�t@î��b�fUe��a��/�K������\0%vv\"ϫߡ(E����rzY�BB�Y[[	&�����g�=�*��]B4�hE��Zw���%g�S�W �\\��Rչ\r;�sv\rX+�Z�_p��%�E��Zz��]�R�.V���� ����*Wi��n�E)j�h�kt��EYoȭZ]�^��ڕ�����{�%�S�Ҳ�f�F�&-h���.�o�2�~�[�����!bT7�[k0)�܅��R�@�U�YJ��\'Mߙ:m�Ixs!/RR���ۨeϩi�4з�6�W�1N����N�\0D��%���w%���BQo\rʣ��\n��� ]���ǭ��T�M%�����{�I���t��x8ֵ��r*�����\Z�F+V<Rg���yt�{��_7	sOb�+�������d��̫Z�y؛��SkV}��bI�u�ɯ��Ly/��g���m�\\��CE�PՊz7�V�\"�H�����#J*k�!��D��B�b�_q.{�7�1bD}P�\"�~@-�0����	�C,2\0\0�`@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�� GR���%$�͍�2}�4���+��M�4>Vd+�%��K�_~E)�J�$Uk���B��报Z�V_iz��E�s2���+S_k�f[�k�[�Y�w�V;i>d;��TҸ��*��*7&�eIu\n�[-�i��Y�6�,��{M�s\r/y*��b�\"��܄�����kab^ː�b,ʭeqe�i%��6�0�㰵Պ�M�o2�2R�\n�V	��D!�{<�0MrV2���e*̊i���n>E0�W�\\��V����\"�I]X�qN<�RWDl�J�~F<���Z+{�ҊR�-Qa��{%�Vܰ��|J�oȝ-���;��=�������+ح-�R�|�m��\n�R��(�ːB��a���*���C]|@�xf��E��W��J̔��U�6����{���+���K�%�b�4Ҷ�M��;j*iV���.ӋlF)��\"��E��CN��8jW����Gd��[��T�4�R*)�ab\"��gU����^dʋ�]��El\\�]\n\ZZv/���^�qA;���p�ȫ{x&��[���Wm�ŗ/ �6�*���ɵ��������ܩ&��u-~DX���(� �XZ�H$��J�V&�\"��B�K\n�4��zx[��m$���p�+���bmA�x���F{	-;s<��>��N^�����3��r[u0����=�Uc\"WH����c:kL�����+�Z�*����2E��ױb[%��)TZ�ׇ2ZKx�$�r�չȍ\"�$�Jz����mЪ�^�SȆ�T�ȒE�z��kr�.@�X�u*v�BD�~d;�*��/o@\"ħdJ�).h\nPeMx�t �B\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��&�aՒ�]y����\'����P�}�!r��^,�nłK_�0��\",�r$��1�H�v�%\\�2S\\�\"���&�[3*܌�O����Զ��Uwv�/��媱�Uv<���ܗ̥�{�R�i��LmȎI��(TՈ���UrZ؄�m&�\"{�Ҷ�_2M(�\"�2�\"-�\rort�,���ŭȪ1�؛0)�-�b�;r\'@��&1����\ZE�\n���Kb�E�Ȫ꠶��d�]WR�nϙ�F+�M/B+J�yRi�\n{\\ȥ%�>�v����B?�,�tܺ�ҳ�Lǔ��@Ǭ��Y-�2����.~%�|��Jٓ��Ak6�-�M��%�l��̯{ �ՃJ,��!���4�|ҙ��܁�=?�\"���L�w�I��Rʴ���˩\"\"��_b��%Y���Q6��!��*i	ܝ��&>�WE�j�Ȣ���\"�^���{��\"�-ьTvFD9Y��ȳ��)���]�t(^ϧP-Պ�Fh�ߑ�Ri�[����0a?K����%Q%b�(K.�[4�=�MX�IJ܃]z��rW���T�M�\n�o�ԕeԔ\"KvSor��#�4�;!n�V��!\'����g�5ԭ��\"˨��Д��1H� \"��J�r�Kܔ��HS[����Ϧ���:zQy�������\\�饧s����~bl`�+�ߩ�Ai��Ƃ�TS���y��Ů��&T��kncb.�e^|��e�s�~����2J摝[�}��_�C��,�->l�k��>`�,[{����%M6�ZK�(�\Z\"��TE�B�&��[�w�@���~M��m��\"�	�F�\0�!]��m�?\0��V\"ہG&�ȍ�07�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D�\0y2SD^ȕv��	�*[���Bv\\���/���~d�Vc��Ķ�Ȗ�ܤ��\'��p�%)%\"����� �dSn�,b�]�c~��fZ��Y���v��\"�Vʭ��\'m��(�Em�MO�(��#{n+ؔ��m�Y*�KۑJW�t&��*\'M�D���q[lC��d�e�$���ߘKmºS�b\\}�b�\r���h��[K�%wr�\r,��m���Uk��_h[�%nN���4�*�q�o̢;�!`��5�/#6�uZ�%Wۑ���y��1�GE߉]4�����n��\Z[|�Q�^�7�s�m���7tX١X���$�;U\"��1���B�Qk��+қئJĪ�;1m�W�Z�|���E\\��-yM�\n��R&�ۡ_K����-��BWEM_-m�@�\\����ȗp�,�nJI�#�&��reAxkr)�)�%x��t�\">Ej R�o�2��}�u�30�Ke̊�ʄU��<��SMmuԻ�#:�-���[��nE���u�Z��k�U���lf����1+�{�aIo̥��ܹ4�ܡ��R��\\��EJ6݈��p�M�zo�nB����J-m�q��&۴�t\Z\\@��[}����o��5w�|�W��R������V%oН��ۡ)n.�ϛh�1m߉1L�����m��H�ë+�*c.-�0qɷc6\rn��3r��Չ��eQI+E\\���2hE�r-U]��mm�LJٙ������dDם[y%��ɮ����h�)T7b%�M�Q�\"ʩ~lT���B�r)eMxs\"� D�ߙ;^ȋooUFױ�Um�����N�]��M��S�ذ_Ć�v�@eȫ�)[�e�E��d�^(6��-K��T��R�e��r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&<�$�L�\\��V��c��q�)\0\0\0\0\0\0\0\0\0$	\\�\"�>�$JM�`*��b�\n�9n��$��\Z�Y.A�6\nȔ��%/tSmʬ�2�6�	t��n��,&̪)��*��**�72�EZ�ŏ=��Fn�jb�J4��X�k+��e���]\n-Ve��J�Qݔ>eQe�J��P���]�l���L4$J���/Ao�>�T�*/U��ʬ�TS��JӁ.��6��\n���-��F�E�Fӥ�I.E����$�.[�o��c8�-�d8���W�eTyX����r����=�-�+J��\"��Z�����\n��a҃빟�ZQ�i�dR������y>�&M$�6E�:�x\"�^Źaֆ�ߑ���c�qMY&X�4���+��n|�y�7���A\\ĔU�*�Yh�N�K�O�OfX�Ԡ�����S[�2R�@P���o�V���\"[~D�B�R%�.=�t6-�;�K�;���6���K�J�۷\"�|��|���0�ݛwKaf�*�[)?��Ԕ�d٠!%r���n�*�w�6h�����Y��̠����D�˩��e����2�k{>eZE5���6��2j����y�V*�|���3\"n�бQݲb��8��(�d��Mmb���Z+bۊ��J=y+J/�*>D���\'M�U���e��W�̸�܋!�-�����u+���S��t8ئKr��\\zR�6\\����q!\ZQd��Gd����Y�~O�4�M�EJ-_ԕ�0�`��3.��c@ʣ�Ok����Ħ�d�x����7�U5b�Ȥ������V�KЋv��U��\\Ů���n�m���Ŭ��15�Y-[��^Ue�r1�+\"�Y��؆���Q�eT�܈��*�R-�-�����\0�\ZYd)h����\"��r\ZW*diz�\"�VdiܮW�Sm��b�	E]H�\\QM�Ҩ\'̑<����W\"WEE9���T��F�2L��Z�L���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�.�(�*�\\�.��n|������Cw*)��-��+l��`� \0@,�\0\0��\"	���T���i��]�^��՚ܡnJ*��)���+��P�%��4�B$�LS�łT��ĥn]��6��7�rU��;6 �ș$�-�h��^�m[���K���ԵU]�\\^+r����ie��b�h���.*vE�!B�N�n���s)�|H��]�\\�N�r����8�W*��\".�Z�YLS���*�-�%]\"�E�Ck%A�8;y�_v��n���:c�=,[pvfK�\\��F�\"eE�yE�ks!l��������Kj����m�\r$��Ŏ��b�4���[��U�y�r	_LL��}�$��faz(��G�B	�\\ȧ=�r�)E_��I�إ^.ѧ	A�DƫB�k�2ܛ^�V�,TM��*�<�M5k�`֊�}�K�+�������lb�b�YsE��>}J\\]�YM-ٰ��ѕ=�\rlLb2l�t\\�a�%&��FܑR[=ʋmx\"\Z���Um�{r,-�E��mx����iV�N�{��i4N�+JTS[�-nV��-�����:P��ep��ʣ+��w�Wf���ɤ���K)]y����r�����ı�齼ȫ*v[�	��ĪQ��\"��c쭈C����Z-~&cOU��j���1���e\r+���i�)��]E\n6�%-ʒ���\r�R��$���+f\r\"�\\;t&�)od�eנq�x�l���iWWWi\"�F�KW4�.O�YZ����*�wޔB��b�;�-v\r\"�[�c�%�)oԃF��U�[�M.a1z�QQ��2�-�T�gq\\w(K��ཧrvN7k��]_u�\r6��X���������c~f]efb��x�Ze;�+n�y\Z*�.�%6��Wkz�\Zk���RҾ警���m��\ZK�=ʚ�CJŐ�Cؔ�dIN�[M�\n�ߙ\n�IUKk��+ܮK̋x�ȕf��ȘŰIr#fUˑC݁\rە�m_rm���JdP�W˙L�H�\0\0\0�.RQ�6W^���L՟�l�����\0\0���`T�%�;�;���|�o�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	6V������J܀��D=�2[�)m=����%�\0\0\0\0.\0\0\0H,�n\0+���C~`U�>�Q\")>d�[�QT]��v54��,�ٽ�v\\��r%o�U*ܗBZv!X��D,�&E�~EV�ܔ!��$�utE�����	�~%�_QDl�K�+V�Խ�~�_��Y�o��]��U��6{�\\v�J�]���QE�I�̥��Z��$Ke�\Zۗ��r���Lb��.�6�R���7���F)r�ЭFۮ]BJ�l�)�*\'��\\O�ܢon���Ȫ�\"P�E���tN��\r�a8�[���S�OȥӲ&Ut���J^�E���*��lNѥ���E$�/�ms\"QH\Z[��^e���ejۑ��VV}�>���q7�\'ԷG��+}\n�T�k�;8�,��M^ۗ-⮊,ï��y��y_��14��f�xX�qʒ��M��_ih�k]S�І�m*+.���.���n-eeԫO�7�\r-�7ۛE-[�\"��M�Ե+���\"���n�r �$Ug���F��\"��.Y�QҬJ4���ĸ7��+��Z��!�KJ	|չ_w���5��i�ڋ\\�*Q���Sn�j\Z[�SKV+��\Zپ\\����z��%-�.A.EL�N-$U:W�v.�}�F7W�\"�\'u{Ȯ1�-ɜS������r%�~EVQV;ZI3��3��s�\\����d�\",�2�H���;Um�r#r�n\\����\n�	;n%{m˩U��DI7�t�ǧ�	]\"��W&׳��5}�\\8���y	>@Qg�r!�ٽˎ��sd���>�F�g���\rn\r)I�nUm�%�{/�R*i�qk�U��p�6��2�$�it/Sv/B(�I4�R�d��yT�DbT���Bmt-u�cE��c�fCiG~e���h�:��1���v2��z�Ӌl�)V\Z�|H�Ⱥ״S$�#J\Z�\ZJ�\"6�`�-آI�f]h�I2ȱM�!��&�id4�5nD[ı��І�˛&R�iX\ZQ�����$��2�n�-�䥾�J��`�����vV���}�UK_D�+����O�o��+�n�uE>E2�1 @\0\0\0\0\0\0\0�]ؙ�Ǟ�G�#6�l5\\V�F�]��l� t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\"@+���)t�)���\"�2��{�\0\0\0\0\0�@I\0$�\r�[�Mr%Z���@%%Ы��)�\\��er�J��G��J�\"�5�M�{�n�T��v�UȢ/rz����E�Щo��On`P��Z[Z�I.�Ȋi�Ą�&W�����x�j�T�p��&�q	ۡ=���Rj[����rZ����ɴCZ����	M���+��O\"���r\n�x��M�̮)���)rW+��R��U	4�V��ةC���6�*��qG���\0��\ZK���U�b�$��ۑ����y&U:Zq�A��euԾ�u�\024+�LY�w�v�T�L�Er!F�h�֋�E��￁��D��4ƌ<�I�#�t/Q��X٥�+Tl�y$)��mȻ��[W�iF�m�M8�E��ܪ��go����fuw{��Vߡh0�F��r������ط�ejܯȅe�\\��P���vY�ݺ�������-�$�T��ȝI=����T(�dJ���\"���1���Ӆ��Exs+�W�!G}�TiN�}�t6vn����K�Km�*I���r�&\Z|E��}	L�v��,(��Ǣ)V����~n�U��]J�Fܼ\n�e���%\r�Ȕ�Z�{�M�r�Q�gk�ǫ�����-TI\\#L\Z���P�/�n�Zq{l]-�R4تJ̅�\"�s!��v)����ؕ�Ļ\"��,�p�rv����� R��՚){>E��L��$I���M��S�[s�E��y�$T��č��i�&̝�Vn�f�r/RN�I��S�ĥr7\\��*�|�\"r+zm�QL��D��LvV�̉o�7�s�2d���k���n̳Qy\\�Q%̳5~E�:�m�ȦV{\"��2�o���j��I�$C�� (�B)�E��БC��#��T���(MՑ\r�E©�Ȓ����v�[�\"�+���v�d >A��Jk��\Z�*v��;>���xOk\r6�\n���O\"U�D�\\��ʀ\0\0\0\0\0\0\0\0-�\0�~@\0\0�`\0l,\0`\0�\0	��d\0�:[D�b�t \0�6 6d[p\0X \0�1��\0�,�\0̮�B*��\n�~�ZR��J�%���E���.L�6��\\�ik��;��R\0�M�X�4�t�t\n>h�� T�6��\Z�UqMى-��ʻ��E!Wv�W�6ٯ�����.L��v�ҟ$:y�:_\"�ҿTR���qI�EJ�F�.��B6_9�b�{���t.WE;��)�,�B��!B�v��^�\0�M��=�\"1�r��Hp�͠��-�KW�ZK�H��Sݤ��L�Si�dh]C[�t�N���H���Qb���2)ߧ>�mN�(+��TaNH����&4l��4�*i=�t�{Is2\'M8�㇓~�٪�ն�ʩ�V�I/�û�s.Ƅ�l�i�ԕ��uP���ː�����Z��aB7ݢ�rܸ�6�z~�6�-*W�tt�2�����=�]����Ms�S���b����K��6�-҂/F	�{�F	4V���v��I.e*��/h���%�����c�*�L�����ldi\\�R��bˢ�MH�t�4��.W-٧�;F�N1k{���p��~�ʇ�~�[�٥�RO�R�%r�pW��^�;�F	B����\\p�?RܷVܪ� �s1��M�Q+�Ǩ��/��I&�Ջ2����R-7n���s.��%M%{��k��\\��%CĔimA5�\'�VOR%�LS{26\"4��ةA.L���E�6\"1\\�J���&\nɧ}����-��%�I\\��9=ʚZ�ն{��<��l۲!��{;��)ߖ���B4�[��&����J۲cE6�J�_N@�#Mj.�)�\"�_�2�\'&��}J�.A]�oRꦟ&D#��:Zt��&Re�ݢ\\�R�#f�eM$X����$�,T��\\�Ȕ`�)Kn��ҏ+�2\'��i���t��%�b��x��-��(�������Gv���Ӫ�-�&�,Z���S4��Z�ГK�RQ���\Zq��tQep!�^%2�IY�Z�C���\n+���Â�Uk!t�aF��h�QO�b�K{lSkl�B���u+P�7���U5~��,%SW�]���R�or�S|��[��sDm��J�[`��K�#B���R��b%m��j��ܙn�WR��n�*;r\Z����!|�.{��MlZ(ƔcMܶ�Iܽ4�-}��*��ۡ=�Z��y�*��*�8$��F����|�ڳ��\"N�np���Z����n,��anpK�S��*�]�A\ZJ�k�\"��m�V�\r\'�\r!�����Wd����������r+i!bv�:a�\\i��^��$�J�;t)�Oeq+x��$�vMEsDIF�?qR�{E2JČPeE̩�ZogoB�̫\\��S������{Z�\0\0\0&)�d��&-�t��@�R��D����+��]�^�%���Ri�I��N:v��!-�I��/����S��`&I�gtA2m�m�������6v�Bt7$�rv\nM=�[���6��@��$J����Rk��R�?���ܾ���\ZkȕR}$�ҙ6����\"��T�ɭ�߸�6�¤��d��8��M{���4М�?���Ü�ݷ���.d�/�OR��/}��A�t��lU:5c�KŦS���~{:�tiu&��6��A�{)���$݉���ڸRk�j�T������5>���Z�YTi/1���I���v{žBM�w��\\���M�̟�)�\\y�ꊕj�YNKєJR�����̭E�~��r+��V���1R.*wo�Bmr+�����T�S�h_��S�+]\'��->W�=:T���A�b4�E�9&ں��[nR���ue���+l���u+|�}�J�eʤ��Z��e��E\n�]��p��I��JS���ߋ&R��ͻx�TiJڬם�\"T��v}lUEh�G����I�^���NZ~�� Z��T)J6-�+���Ot���դۥ7O�;kM�g��\\��k���k�I�ɹ;�����ƽXSp�ڏT��J�����U\nR��T��S�Q�y�r��41U�mJ����Oi�Ov�J���Bkv��m׫R�yRrr�os!ck�{U�ׅ�K��.��]��̦�v���׌�(���i�W|�t�T�+ӓ�����!n��?:�4����M��Z���S�ە�^+J���$Ҏ�ߓ��$�/F��}w�ս�R��=�ʧHPrZ�L\"�-Ʉ�F6��\\���	\\P�b�EǙ.�ݛ�\"�RsV�Tҍ2P�\"1i�ĭV��Ob�Z����4�^�cM�)Ԫ�v�TkU���SkiM=7��\\S^\\����E�߃!dƒ~�\n��k�Nua1���q�+�hԓ^dZ��Z\\�ܮ0�ߟBc)y�/F;{W��4�4[�\\�跉}^�׸�s���\'+x���[�M��/*Q[��5*�8�m/�9�P��.I�#k�c��$���e8�&��J�ն�m��F�1eNܓ�*6���_nj����\n�W�O�4�\Z{�r���2��z�&�>o�v5\'.R��Wf�{�kݥ��%Ū.����^�$��Æ��\\�/KU�W\"�����lc�)r��{���.56�w�[*�,��;?\"�(+{%��Ov��JIl6��	Y(��C��n���KΜ�\n�҆�Ks���/:s�/��R-x��l�\Z�٧{�F-H��]W9?k��ST[k�/�LJ�v-I-��2*:���nY��w���t�(Y��\'?:�s�M��[����M�.���&�*�9���.�\'\'o�\Z]�E��mr)�Z�vRi�b%x뛾�S\"ҧ�Z���W4��~Koq_�$�+��[K�rE�Jo�+Jq����\r�ch��^��v�^�&���b_{m�Y�^cf�ӆ�*L����vC�V�ط\nwOk�hi]��)ǒeR���l[T�.E�p_`I�\"�Eh�AIlU\ZzV��S�mЭ9;�6�\Z~�ܻm��F.��U�m5v���r�T�3%7M;.e�ݽ�`1jA��ȣM�v��WT���-�S����m�2�n��S�m��u���%7ؙU�ĩ�ȥ�ϒ{��)9$߸�*�M��?\"vi�(;�HwO��넛��O�*����Cf��ܯgtP�ӷ3)ε�\'6[�y)곿���4�����D`������RUJ�VM�icKO��Ӷ��:���nN����{ߑ(�ޛ�I{�Jt�eԦ�f��F��`�!��b���ە�ԶW�rb��d���٥���\\�R�=H�en�K���N�F��Z��Te4�l����#bԢ۶�3�J�4��7rܢ弓����d�W|�zQ~\r�ȷ.�;���Փ�yB��u�饩_�X��8���2�c�Z�-Imtd�����/\"�Bv���4ںcĮt�,�7ȸ�T��\"���Y;�hm\ZXq��|�ӽ�B�Sv��r���y��J{�7��\\ӹ�F\"����)�WQ%=����qi��ӯ�B��Y�9��;IM]o����[����U�Kjn�*�j���Ȱ�Ÿ�/yF����d��V�Bޙ[urB��F�����.p���k.H#J{�ۋm����iq\\��D�.E�����I�*����eq�E��4���EM��f�6��NN��J,a`]Qv�l.�.\0��b�]�v]��v.�]�l\0�`���p	؝Cu�+��@��VDY�_p}��V�pI�	��7o�\r}u;_Kc�=����V\\��Dws�,(K������o�Q�v�\Z%kY�F�x1Нn˗�5�/���d�r{$�A��}��[��	t书��Y���O��w�2m�!E��@�=�.O��6i��}�R����JR���3M�?p��CW�\r]�Uw�}���������\0H�7�����ȩIߗ�U�o�_�]�j�\nZ�-����t�7q������oB��޻x}��x�6��ʜ�-�\n%�Lѥ�U��-��J���o�:S�e*��_�[�i=��;}��Z^�Dw3���x�*ro��F�]i��؈��ku�M��4I��!.���I{����؂�/�������4�/��I���\"	��d:S�쿰t���O� ��u�*[[J��&��� sn[Y�B��ob�/���WK�}�U��J��o\";��jv�\'.eR)H�M�EX��m[��)YߡT�H���W.)5���Ue\nrJ�\0��%̗\'��#�k�\0�#S��5$��숌���mu�2��;���KB��\0�/S�Q.~�J�}����&Eн\Z�WN�G��\n#I�x��\\�9=�)V��\'\'����\Z�_��i�v��ˎ�K�*���V�e�Bu/͍2Ou��\r7t��T�{��N���%�o��B���Wu�z*WI�w��и�e��]U;��˗��n-�ϩr-��؊#Km�%_��W��̪)/���E�Ov,�|�2�%�ۡ�0��q&�+��b�\"�0ia\'��U��ˮ.D8�l�Z��\\������*o��*Mt#f�w|��J\'&�kiy�k�(�|Qd-�r���]	4��\"�*mtߩ�F\r���~���^��m�E4���[x4ˊJ_��K��ɘ��e�̽q뷸�^ϑQ�V-�j�����2��ɲ���R�����c��o{�2�M���1�m�Ɋ����~�ީ&����-��7��ܔif��� �Kۥ��˝�豢.N�{�/Ѻ��E0��2�n�^T��JV�o�+��ݱ>l�����҇5�#u-��K��[�������f�x�����/im\'m�pk�mk����M�n�������$[���7ewܩm�+��%Q�V�BI��%^�D_����-�J�����g�B�����[v٫��ef��J��)���\'&�m�X����o�ܑm���.�u��un�)-�^�I����U/o��\Z_+)r�F�ҙ6�6\\�6�{�{��ױ;���o�\r9ro��Z�\'Kj�Bܵx��/S�ˎ��#���a�e���)Nj;\\�w���Ju5ԝ���>w(��Կyrww\"W�ڔ�m�U�K�ɻ�1yt�b��R��y�s���.Ӿ�a*�9r�a-�nE�8�ej[l@^v��D����qM��)ri;��=V���,���o��\'��ԳRO�e�=F�\'yb��ME��E�}�NK���T/VC�Q���5�2��J�S6�e���v]p��J��vch҆������T��m�qi��m�v���(jkĻ�K�.�9?E��̦jS�.�+=�s��Z,-4�*�m�C����9td�i�a6�w��8�&1�^��\\Y�^=�(�t#D����Kw{r$[i����\'ȸ��\"�{?��2N�)�}9�J�\\�� ���:2�޻���sl\"������f�-���\0i��Vճǧ�\06d\0\0\0\0\0\0\0\0\0\0\0\0�\0b��\0&��j~$\0&�ĕ�)D�`l\\3�Q��n�d���{�x5Rϧ3�P��ͧKG&yY}�p�i�K��2o٩�G�[�?�ǽ����O;����|\r����a��7�j�=��hC��\0��x��+�K�fWO��T��Q5�G�ea��\0;�����x:�T���\ZV>���3�Qm/��5�x���8V�*�fmÕ��\\��o��� �t1J�\'S� Tg%���/�\0*�}H��r,N�n����ݹ�Gbc~dQ�JO����Q�^�\0ib��[�ʋ��\\�^*u�wwb�O##o�E�\0\"�_�s���9B2������[�<\noz�i�Q�髾H�F�%��ۧ�5��x��\0��D>�o�_��ǥ?R4�ն#��\0��x�xg	J���Դ�Z-D0-���� ��2T;<���5���Wo��\0���`R����\0���@Pww�<c]\\%��z�����_���6=i�w�<c����J3S�*�yܷ��|i:��R|�\ZHش}����L䨸G\"�OMi�tv��S�V.�x��t������{�k�Ty��̦*6��T�DE!-�,:�+Q���b�y:6��,��Kg��\"�yܸ�k���VE[lT����P�N`Laq�p�KK��*���ee���-�� ���3>K��t��a�}Y{�v1�V��_���B�h�SG7�o���z�^d�\0F�-�j���i8\"�T�x�$���Oe�$U<��H�֩��v��>ރʧO\r��	}W�E��_�U��kG�ܕ�ySO�CF4�.���[_a�B:W��\"��*}W�����?���\ZWI�[ÙuF�%��>��r|�{�Eq��̸��\"7�\\\"ﷆ�U�i��JJ�H�\n����m˩T��eZV��\\�+�@�-wi�\\!��v1+��p-Ѣ�Z	�׶ǩ�.����b���Kc�p_�)jcΖUE��e(��:�i�g�b�����ҍ�Gr��h����=K\'����y+�����uOB�<���O���gn��!�i���-|�iU<�	?�K��=�Ӹ�Tr�q^��g�����N�m3�5��)c�.���ǙY-;�#���ߩf�WNe��F���cԊ�Ӎ��{��F�����&d�=B�	r�NѦ?v�5�:b⮷2%.[��\n�|�Kq��}C(�ƽu	]+6�cB���C���W*�#29M&��2�e�����z�V�-յ��ڔ�?�<������8Yy��[O?�m+��C�)K��s���F���i�⡦���I�rʎ��X��;��e�	�U8��\r\"TZ�-4\r![��ĩ/+��ѕi@жv{rAG×R%�]\0��y���W�c�(��ۗR�\'�[q���d�)H�(���Qn�$҆S%����u���W[�\Zf��\Zx��RrV�#юKF�r�[�U�Q��ۑ\\�dyK&�.r���(u�6z�v&0����ӧ��\Z�j��(�u/�{6A�d�I٧�G)�\r[��}牚PTq�)�j�6�e��{�cV�H�7�W�๦Rҽ��[r��Et�ԓ܇�\'��B��(Ҕ�߈q�^�	G��mm�lUdײU�o�R�݁	t�Y%�!̭��iۘ�o������-4��V)��N���\n*&���LF��\"�[\n��D擳.>��T�z�\\o���\\�(m�er�[Q��\Z��ڛy����Uj��eb4��ySQ�F�j�yQ�]��ѫ�S��-6=��[�ڵ�G�<c_|3A�j�,c�~�%J��یo��h�13�����,����KS��)p]K��rW�:g�v�(�[�_qW��Q8]�diiErAF��M�N� �-��F�_8���ܕM,�29\\c~v)�R@Q�B���qm��kء�q_iaE�)P��vI%С[R\nٶ�N\r�\\�\Z�$�>퍾\n���G�v���������\0,@\0\0\0\0\0\0\0\0\0\0,�	d\0�vA0�����Nw�mJ\rk����~&Ԓ89>μ=-8[� �n�˪.���(�֞���eo�\n;$������6v�\Z�Zv9vv�̫\'�o�uj�N/��9�٥o���=�����.p�M��6`6%�!��\0��\\|\nvEq[��V&���iL��R�E�d���\">�����F^�q1���r���c�������\"�	N�\\z��\0��8��N��nF���{BKncN��UQ���P�qA�D���%oN�iM��<^���.�iY�!������`����Cؗ���Ħ�}���=�Ʊ�KWO�e��2q��&����q��B^��N�(�B���	t#N�m])�����[�w[��V	����\r_�TV����t������\"��t^�4��N��[��*n���LҶ�*.�Cf�ҥ��o|O�}o�\Z]8n�\\���|�����<���~�ꅞȩGĻ��B	#�m�Tm̝6�^P�o�Owr6,h��*�\Z/i�8��mD���sM�S���l��?3?���o�Do�᪓�f�\Z-[о,(4�/Ӆ�\"��\\�1ou�j�1��v	\'�*/�\\W�ԭJc�d�\"�o�*��#i��ع]�V�$W�EVN��ֿ�R��D��\\��d�UOk�J�(��G����t�u�`I��E\\_;nR�~e�>%.�26-(�#N���F���\\#�RE��Z�	 ��T|�z�,ҷP���ֱ��1_�*x�mM���r�O�~[(�ek�����ɩ�RO�}��R�э8[�˩{X��o�Eb:[?0�8�m����w�6����2ܡ���ՊoE0V�z�ucU��ϧW�zyLK�,�L{�n4��ˊ{EJl�m��V[��{E����bΟ�#Bo~e�\r�A�\rOҪyH�o���#�]O�X�sf��Q�{���e�/�RtZ*��ێ���V�ܫK�ō(�/!k{�㷩-+ݢ\r-i�r�h����F	��QVآ�w/iM�7LlcN7�ܵ(%&d�=|z-�صgɒ�*q��[������8Y&�_�����n�^�\0�{��2��bΛ;�)=��7�8�����h�U��7�4�|���j��s\n���(ߒ���o�ղ�N>�^U���l�2��ҟ4l�Í�M��.J�Pն�$Sk����v�	x�*�줺)��);Z�Nֽ�Tw��+^���I�B�l��/��MȘ�5����i�MZ��nj�b���J��\'_�h}Dd�;rX~����h˔n��-�x��ǑK�BD8&����A{��#F��ie���<�\r�߄����b�Y}v���\r9�D����̭{u�]���-K�׏�7ڛnP�J���%-4��J���orR�C������~��[�\n\\[���,��rA�˦�N:�nF�y�-��L���WK\Z]��\rl\\�n�QD�Y�\Zw�rK��������u4�)�>[-i#}P}Ѣ�zK0���N/�y=<0��\0\0\0\0\0\0\0\0Q�|��9G��\0	�odU�V�\0��\0�	}���XE6���NZ��1��~�16��6��\Z�g���&��ͭCm�K�:�����m�\\��[}�ѿ;��e��go���D��m:XУ�i��/�ov��q�Lj�Zɳ��ҷ�g_�`�Y�6�J��������<��������X\0����$VB��.� wEqK�ٗ\"�2�Lb�R�r�ž�T��Z�S$�]���b��m5󑓖���z�����g�x]tE��V�\\��c�+۫],�ie��t]{Cf�TI�]P~�݄�i�b>����J�{K*	n��v_����pvۘ�;�ܷZCۡ���Z�~��i�1��EE�L�*���2qtj|���ݤ�N-sM7�v���v��s\"��R��p�ŕBN�a��j��lB��|��E%�ȧf��!B~b�!8���Z����u�[�K�����*Pm��m,�z�]��ۑ�ܭ�\\��Ӡ�db��v��7��Ym_�~ԣA%�3u�8[-���z_�t$��N��K�*ȝ[$s6Z�}�N��wM�t\n/���	�}��F��\0���QE����V)ҒO�4�I&��ou���չ3E�w��lQ�j	�[ƚ\\��k�}��)�Q^�R��4;rةA��[Jwi�*[r\'O��1|��4��ˑM[Q\n;��W+�W�N�E_k�#�\"Rv�XH�J�����鲱����M/���Km���ΐ���>ve2��ʄ_1�܋�;nR��O�\"TJ₩�ob�$�=z�io�Ym��c\\Π�_R�FΣ��C\\����.�>�*���ǩe�Hʩ���e��\r\r1��r�\rr]�]\n6�t6D��Qz�2�&!bQv!�>E�dSg�ܰF�zyOW_��g��GV`�祕�1�y�o��7W1Ymć\r���[��=	�4�)�Խ�r%��6i���W�-c32V�U弛1��왤QmlN�U���!d�#B��D��\"��ˑ:[��.WحS������x��Y\rع�=��)�N�f�mdS(�Ŀ�ܓ��m�}�4�௺)������T��濰��c8���ؿݵ���ȅ}�٧�°޷���y<\'Mڳ�W�{�v���N�-btm�y��q���Ώ�Tׁ}��ť�4}#P�/�5m�n�+�������ƚx҅��Qi�}<�߉�R��a��i�Փ(��z�%\r�ދz�?E6I��Ǔ\n��r4g%���Bh�۽��-$_�\Z�o��C��SJ!�H�Kk}�J��ϩqGVѾ�\"ۈ�̬�얛�s.xj����,T���V�гm��)��\0��éni���I�X8#)�KԳ�A<��ݣ7E��0�֋r�Q�=��8���%�#O�\"���J;M1�.bf��\0W�_��E�70�x*�Q��9]}�.e��߉��_��M��u��^�?g�\rة��se.�\0��eQ�۩	]���ȡ��]~j2��K�˱0����G�i��\rm�Ҋ\"1\\�\'7W.a�X�Rn�TKk�ܶ�3{oȦ��fW�1���Bp�����X����L��rdii��ѵ.o����-�����1x�z�P���47�M�di��Q�Y���O/B��\\�k��_Џ(��n�-Sw9�\0/�s�E����\\s:�wܧ�<��\0�s�\0\0\0\0\0��D�\r��04q:�V�go���5ɰQ�U�p���������?�zVo�������\'L�9&*5$�FZ��/cW�ߩd잜����UqTԬӒ[�/��{�GV�vݴs���e%�H�(_\ro��͕����]���\"���4�{#\\[�m��n���5n;�Yg�J�\'`-r���k��Q]9%ft�?\re��,5;���3�T��ذн%s��++��t���|\Z�S��2To��n��A5�somt�����Wغ����\\\Z~�Ɲ�/:m��k[rE�����:wq�U��	�s����[��*�p�s�6�G���\"�L�F�s�;Ȱyv\n5p��7+=߁�=�һOMeP���sW�#���/$�G�\\�I����$[�;��|`4����ATV�1���^ʱLW�\\W��SL�5�I�w���g��)�)6�k���j}�v�v���Q��������&8y�(Ɩ�$���r����t�6����_i�z�\"��x�_���`��k�*�\0qu�t(�	M�p_�[Ů��ԝ?qyErd�o�	XPd躹{C�N�6TX�����=��ČuJ����2t��݇��2{��l;����O.y>Rr������Gi�6�%�N��Z�:�:S�M\ZkI)`S��\Z���$頨\'�E�(�R}qCk+��۟Knܽ��狂�\'$�gOk����X�[�X�zL���,��+�(=��N�\ZhxJ\\^a��I�	+�t:4�J_e]�#��[�\\��|Q˅����Q���̝7e�k���6�ȍ6^aI��6���s�r�iTb��;��A�O��\0��F�N���7~��ڿ_�F|����(�F>+rQ���J	�%@���*E�6W%C�r�kKi�����6J� �1kA�r���� ���ЫS�)�3Ct��i�Km��F?���Mj_�U�~e�,=��Q�,��i��)�/҅\Z��!\'�;#f�d���q�&��g/k<U�؝7w�*��\\�t[b�a��T�nJ�R�a(q�}c\"�	������<�6��xv6�����d,5%%%Jx$\\ҹ�R�[��ԁaA7%��/��#C XӽƟ���!�ċj/�T\"�.(]\"ts��T�r����n�ŗ\r�5���&�\r�OC\\�clƥ�����ʛ�s���[�$Y���Y\Zz�N3��Z۷ne9�,�mF+x�32H~����\0�-g����{Q+���in�2�A�̉���杗K\ZmyGĄ����}�\\eБM������o0�����(�lz�;�J��ȭb�\"c$���ꊴ�35��\n\\l��<�����/�O�N��\Z�g�ʫ��YD��#�ud��f-��i=!i��:52��%r,��!(��B���\Zo̮1�,��)r%&��ͼ[�)�w��]*I�`���[��-���\ZwZQ\\�K<~\"��)�ukc���O��6%���ǖ�$���L�#M��:0�\"��и��/�/�0���-�(���Ty9��/�Q�z��H�r�~����rFş��l�\\�<,�)f���\r��((�1Q���F��L��b��wv4��^Tƛ�,�&B����������q$\\s:��8��x�i�k[Ķ>�b����������kJ~�Oȷ�0�ߴ��S�E�Ds�%��o^0\\��-���=�#��z�}#̔���EY�~f�´�,���w��4�;4o�\'��ux��#?DaqM��r�I��r�5�[��B�{\\���5�����C�L�8V1�s�gF�z�)	O9�c--FVf�n��\r/�\\�{�ә�TW���tHԷ�Y(M}��g��u��ۗ��i�5������o�KM��#e]�����\0�F{��cp��0���3�,s�kE���S���ݷ�4t��X�F��ߑ��q����cӶ�\\��������Δ>��:�x:�Q�=�A��礒��c�љ��ڼ�^�+�I�{μ}0�v���1z�V���U�W&6%]7ΩE��_��3��*0y6\"�/a�<^�m(bW���q%;�؟\r���������\r�������ܥ�Y蕺\Z�\"?����f�r�WO��5��*I�2x�J�QZkSv�)3�8��\\��U��i�m�c�T��FGNq��݋$�%ЧN�5�������p_�a��h�ۑ�x\Z\Z�h�ylW���=�WN�����q��ЧK���m��(~a�ێ�Ҫ�#��Z�̸�5�T�:8>�9=5���\0\0\0\0$0 ���*��@oݜ��������e{��\\��~n��h�����hg���׏��q��g��=��|�mue�G~>��{z9\\����;�G�M�ȸr7�i}dvl<�S�Tr|���9�i�f��4�F��|t�q�Љ�ntq}Xg��	h�G���՚Q�=h�jv�{���l;J���v�0�Ҿˡ��/n�?J�;x��FN���k�;��Īv�_������٥�6�C��div����E���ޡB�F��0��sƝ��diV؇\r�D�J:r�w�o�s��]���=/���#�������Ϛ�w|��l�\n��!bZK�{D��\"�W6.Ax��I�v�W��)j�2�ط^>�j������\"q��/�N+��r�7�P��������\ZWjP�a}e�\ZfIׇ�7~ՒXL-���E�[�Tn��p�+~�у�����\0e~�r�F?������G5���*���нo�:7���V�5�$��kc��F���e@([��������6��*o���x���	\r���ww2;�\0�OvF�3�{ls��#��\0�t�����S�\\�yO�\0i�\r���ӟAmn�ح�ȍ;H���Վ�\\�D���#-��]6��!.WFn]M,]7}�Kz^Nݎ�?�E%�\Z/i��7��r�����vW4^�i���\\�(���Ml�ۧ�z�]�\0�d�Eŝ;WJ�m��ت0o��r�of�������)G��7��yeW���F�F���>�������^5/�#.J�z�7�J�}Cˑ:�VY�bt;rغ�ۗ2�s!e�Ӷ�v�p�{F��iA\n)l��2��\\(]b�?4������tJ��Ծ�9�/��Er���IU��jE����V�]Z-��$��ũ<E�C��h�v���Z�������WcĊ�>��G�)�]K���!R����z�/#d�{Z���i�$�[_�x�6W�Կ��P�4�r�˶�\Z~¢֋��ik�u���,8>iӑ{C��dL��\\�1���U�+��.ʴ;ظ�T��\"ˍ��>������6�\r�5��?��]x/cʒ�jp�ʔn��Z��ۑm�w$���V�-qVM��&fGՔ����,q\"K*���64څwKĿ8ݐ���-�mE��[����E��N���mA6�z|6�ZE�H�V�OO�����R��\r���/y}Gk\r73\\:���e�7��)*a�*w)q�L�\"�\0(WO�\r.g����5��1$����Y����r��Q]Iإ$�����ܕ�̸��Sۖ�V��)�$b���/�Զ���J<���7,E��\0�\"(���+E5�xM-ٱqBZ(�ŞJ�\r���%�%���V	І������]�Ѝ�+>�����O-If>�6n �YU[y\Z�6�(9}8�6�Gd��*�nE�SZlN��%�P�/���̅\r��N�$d*m���	X�v����7��r7�\r�h�\\�\\ַ�l}�.W�p�\\�{�e��\Z/��o\r��B�2rUθ�.9�!?��*H���7�b5s�y3�r/��j�V����Ցе����(��o��to���Df,�?��t�4YG��N��q�M���4=	��Ս7����p�W��%�L���4��E�?�nZe�ȽU��jK�K�S��4�؅e�F����s%������L=��Z������ԟ.AųU]����	��h��[����u��	��z]�9����T�\ZL�:vd%���h�C%һ�{���*����/c7Ak�TIs�K��	�D�\\���VN���\ZzqS��QWۡ׍鍝��\r���)Q�Ȝ�K��Ŷ����(�<U�H�Y�gԻ̟����e�lZ��vyd�������Ӑba���m����lK�h�qQ�W�So��+��Er�lk��Y��qM+�׆�.��۩���-d��UZ-I��FkrZV�,�����v(�=���-�и	j�U�NH���{?W�[�\0����=����8�M]��)�-����J�T��8�K�e�Y�*A*L�z��V_�Ο��a�� z�\Z�]�	K��9VA�W^ڥ4�\\Y���t7�٠�ps����B؃)`k��L���`1	]ђO�̍żkA{H�,=Ho(��(��b�4�ѭ:?fP�J���Đk)�m���e�O4��͓��#�l�\0�gw_�?\Z�H��,�����y������}����\Z_Y�\rJ�X�#�p��*P��_�P����c���>�<~���%��yB&����j�_�ߎ��2����\\W�a��Sm�[�>OQ+�2�?koq������~�ç�K�v�=;Ҋ�G\Z��ΰ�\Z����x%Mz#��{vq�V�2t$��dwj�r9�1�\\�����v`c�w�ّݾ�*{l6�:�3!���45�F�6�l627\"P�����A����kw�P�g_�n���R��y�9���࿋��-�k]�����{�]�b���M�JWe��|�Fӥ}K��\'�P᧚e�v�_��˱���QN�\\����eW�3�޼}y�*���:��R]�}N�G�u\rg7�OF�j�f���}��r��Tt.���˝I|�e)�T9|�i��V���pQ����_pv*�SOOm�+���#���1�䊻��.�$�EJ�VT\n��em�yCJ�+P�q���׉R����T�J�H��ݫJ�R�~D��h�L����*{y�1]4�k�Lt�˴�O�\0i��N���}��F�]nZ\'����ӝA]��ԕ�V(�M���5T����:�c\"aN���UI<]?��4��6�tzYT�)��R)oK�;v��{�F��d?M���ܟ���*kO���I������r�\01ˍ����eE�4�ѣ�멗\nQ8�4����j��aM�~~%����2Ot��㇓��X�S��0i������mWo���ԽMち���߷�#<�&G������<�f�ˤ��;��Կ�����4��4X���4���J�����5H~nIuL�*\rI��:�-	m�,��}�Z\nv.��L/��Ĉ��\\é*��Ծ$��4\'SZ�i�пЗ�[���WsY�8�����ʝ<�������J��I�3Kt[b�_�Kd\\�4�Mz�J)��bI�l�$������\Z�����l�%\r[�?��zz��T<y�,�h�di�`�ƅmÂ�/��;�K\n�䋺\n��@[T݊�m�r0W.(�������s�~����{����~R���\"�ɗ\"ۧ��(�Q8]X%��P�WK���k,�,䙯≛�C�e%��Ŕq�+^�<��Ə*Oks��fK\rR�BO�[�7����/�LYA�nU\Zk����R���$�z\\=��8SM�z�?N��7�R�4\"T-{��l4E���X�;�\"���\n	,8%ϑC�|є��P� 4���kxkf�_����^��ق�R�Y��r�����W-I+�2~is\'f�Tv�=ҡR��~WE)�6inQi�!+�E�Gb4����.F�O�T��a\Ztb�F���\Z6��~Z<~-��K՚��?��4���kr[?$@ݰ���.���q��������S����t$�k�^�����k~م��&��0_�+��S�aG���t�=ڱv0��VՑ:n_Q�4n�F��3!C���~���8�5�V�+���j�f�ƪ��m�>��<�K��O��cb�G=��������JoԜ�Ӛq\\t�8�o�<f����y���;}��\ZV���e�U�����x-�����&�;_����.\\?Kg���Ԍ�\"EoN�+k���9�M6t�1�:�$�J.m�<����[�꽾�#�l`Y;��E�!��ї��kQ��D���G����EJ�F_���p����MN��\'���*�����l��U�w��0���xN-lE���ӊE�4�F�GO�H7�a�I�w�����2�a��ג�=uMt9ﵘ����~C��E���d�\r�X�݋x�z��o�fgw�QR\rE� 8�mmH�jN�\0i�(�z��(Vۜ���s[�xzgbӏ�D�k�bW��˫���\\I�/����s��e8����5.�al~%-�I|M�2�����\0w/�˝�1�1P�wu��F�٤�N8�9�ٵݍc��%�f�ٕ\nUkb��KJ���5��\n뷽��\\���[[��U^+[��8�O�Ey��⹧�丈�n�#�9�Xqe6�.���J)�cfV(p��轞��E�g>�Ӳ:?f��G-�UZ_b+��8{{�[��~FT���8#���;�g�\n9�_���8~i��_���qZ�&�\0�L9}5(���:?e�jsu�ݒ9�?��ӻ\'��/C��_ŗ��t]]�4��8�gOR+��>��U�k�o�p,�?�T�f_\Z�[�0W3��)�y�4��<��\r�VaN�(�����v�������#\"Yu��M������B��d�k��\\����._��S�}�/����8�**8�F<��w�+����\0�g�+�俈����<��;-��r^66>*������g��LC����|t�x���?�O��&9~�4�Ye-�w���,ǚH�q����C^m����w*4퇎���<��{��-��w��B����|^�w�t�t�+�\'���hW�0�\\����e���#�<�M��t����O�e��ס��l�-X<;ۭ4�Q�f��\'=(�V^�l��S��8�k?����1��y/�:cvu\rY�x��;�\Z�K�O�X9g�{;{H�MtE9���:YP�ܕMs2{��D�jۘmv:���c#��!�lm+\Z6#��������^AgM[�ڷ��t��ȋ1��l�����˔?6�et�1�vC��Q�h^�f�3˭�Y.���=��w{1T�{r&eK:|�ĸha��M\ZQQ�f�^\n瞏c�W�ŋ�/��o�=Ln��k�)b\"��w.����M��\\\ZR�8��\'��9jk�}	�Q�E����9~EtpΜ������hT�ahќ�ӕ8�uc�RK{x�g��[&��\07�9=;����\r�Y��ז�����f�����y����ʼt���)���Q|��U�o�d�o+ÿ\Zk�r�x�4>��l���#@ɣ|T}Q��h�Yv\r�\0�%�#��+��h�B���`���Oꯂ/ƛ*w�RW���FDac���i�ȯ���u/�}YR�T鎩��h�d�{r&4�9K��]��_t���K\Z��J����2{�7v;�+�v\n��!S�,��,���S�|�˜\'�\0��R��ۑ˻t�lN\\�П�㿔W9�@����n��?��4r�T��������8���W^�?�ӵX�z��\0?Ŀ5�\\#�������`��0�zRv�R����rD�:��9�o���S��\05l�	��[鯉;�S�v�N�˦Ƈ�\\\\s/�����3B�.?�����c,}��!E�����pErK��V��XZU2�ҩJ3�K\'(���<���qKjRk�^����7˫�����g���;�|�������}����[U��#P�$�j���1_�*[e޻}���%��\n+�yAu\'B�t�\Z.����cE�P24��wm�	Pl�ݲt;s�4��%ͤ���T����r�/�5���)���]«և�E�n��[����Q�{�\Z�\Z�,V����z���5~7��V�K�R/��e+��ǟ���얈s��\ZV\'��o�G�o��KR��Q�&����t��F\n���l<]\rX�:_��Д|�c4͓��|O�~��z��Sf�(�����}Ȕ�-r\Z��ynUU�\r�n4Y�dh��8��>��D���/(m�h�2E�k�>¥�[ԭAu+�?��G@,8�Y\Z�EG3��qP�\\���?����;�Y��䴢R�Ȳ[Cet���fc��Y?�4�_ř�6Ehŕ?#LϠ�*b\"��7���͚^}f��\\�@�t�b��×\"�\r�EQ��e��dz|9摷ё�ӵ�S���m\r2cP�\'K�24X���h]C����mȍ�����eg���ЦP��Б���2�o��+��{�N��3Q�bbV$��d�Rʰ�~�5;^F��VQ������+��\n�߷�\Z�F��Ѷ���\r^��i^�V�&ͭ��/F�B�\nʏ��-�~���E,���\0?\0��������5y���6�1��h�fk[{��7�������H��KꯁIy\\A��j8(��?��(�x���lK���0i<}�k_ �cej�[r�\\�eR���dh\Z4_����A\"ƍ�{���-�)���.;�5��]-��/������GO�v^7�\0C�p����j:�w�O���0�X��u�M��dxill\\s�+�~�ׁ|U�2Z�c���j���\'6�ӻ;��j�ןĜ�!��O�������;��2Y�x�*9�)E/�˼\n��Z)u��<ce����r.��QEr�\'�f��WHP�v�9_GF}�K����r~0�Y�.��\0�eq��t�Z�㻏R�\\�Q�4i�zu���������WE��~�;w���t̯�����*w2���\\h��BX�ݟ �#)�ېT�P1;�\'M4���t�B�N��.�љ�Q�6�۞s�~���t�ײ����f�}�Ӆ�Xq~�����M�Q(�\\��m����؅�I���>��{��_B��<�G�r�����4�׿���9���s-��$�vm=�E|��\"���[3��T���k�-�X���|Mo�O�o�zqY&%�Z68�!~q�v�+�|��Q�11�Ii]Jq{N^����E��N����tE4�\'}��٤ud�.��_���r�t���|���_���}�N���L�{x�N6[��g,léN�%�t4g5���*Rj�.��Z�j������c���M�����Rr��;$�SKy�{��j/�i4t���>mˈal���|���/�ϣ8��6&�~m�:�~P��̾*�ޞS��Xj����#���=���(�飫��,x���YN�H]]YN���e�O�$d:|�*�v~��A,���p,lo�I/�ϡ8�*9-��>}������Ϗ�$u���9e򗝍��� �?�g��2o,��Z�xl{�s�{��W�i\'����*~����H�����Ֆck���ON;�^�����ҷ�w�4ڠ���p�\0_�p�+}k�w�p�ŏ?��N�9���k���J�����:�[�/��v­�U�F/f����u~&�\0��r~n�\niPV]#��K��(���GxT�C�C�v���5Vs�o�NY�;-����N�F�Tם�!�:K?�׉�iRN\n�s���?��7ȫB��B�О��k�/w�ǠT�e*K���\Zb�a�H�� i�ݥ�������H�T���ߑ݌��t�����ɖ1T�w)y���ge�LF�4q���o��|Oǹ�Q��R��,�G����Ol��)�b߉�OS��\'�o���\'��\">���1�8F�\0u���~M��w����U�lrJtܓ����l��\0\"a�_޿��hSr�\Zp_�^I�4鴶��ғ鱑Kk)+��0�E8�m�l�Ҹ����5^6O��2jVʰ�ܩ��9~F��;��)�|��k���^l���9�mJ+-����|�rU�T=N��nK+�8��%�G2�!l\\�r�Dk�}\r��|/��2,04���V�����-�k�;�����V���OȭS�}S+T��1�?\"�O�2#M^�R��!����Mu2U+���%�����OvN�\n1];#����u���vT�M۴t�j�\0\no�\0R/�%rh�\r;c���H��>�T��􊷼��;����y��?v�B���c���fx���Ʃ�E�ƒ\\���7�)��yw�g�sU���t-���G�Q�v�S�o�\0���6�%�\0��*t����]�Ӿm��������j���*��y)RQJ���4Dn}�Sk.�~]��{Y�-�bN�y��6��x����O.���S�3��r�/f���n�,����\Zj�M۩�p4?TԿ>��k�����B{���\r�*,�t�\'IyAs�Q]\0��r\\�Z\'C[�\Z���>d�2F4��4�S8�rW���ҁ�e��i��z�0q�\")��/�\\b�˟R���D=Wĵ�t�ϑ�q��aU��_qP��W�\"��\"B_Pk�r�6���d~\'CѳF����T�5���gw�F��	,V�o�M׉�q�7��ݿ�<U�/���p�/�����F��u�l��\n���+��r{�����wi�AU�\r:��%��p���Ğ�Z�����!kM���r�:����]P�bT[	Z�j|E�I/�������j|C֓ms�w�<i+\"�2�Okȥ�g~Ccc��~��o|Y������?�4ל�&vcJ�4����k����ݾ���1՛�-��F�������%]��Əe��C��.�fFa���x^��xxi���i�\Z72;��*���pfN�t\"Q@c8j|�e�#&PE=�l��q-��/�فk��z\\Gg��6y��+x�#t��/��k}i�OKf�ð�M����%��6�T�_�~�m����\Z��O�����6������I��;�E$����ܘMJI��W�/���\r\nͧ�߲�~��*?\0���(~�B�I�����f�Ɖ�=��܍RQ����\r�\0�)}E�FDaw�S���m��d(���LU�������C�����\0�_�1i/���Xa�ϼ�����ƞܶ�V��!��Z��H���T�v^���(;�cHP�##@��TX��s�Դg�<\\b��*w�V�sn?���R�!�G\r��C�_�E��V�;[��[�Q�\0x�?Ώ��*��x�2��`��8��S���N�gh0o�1^N�q�hw/�E�u5��{6���Q����������}��K��_��?�3U��}H��##�]�\"�g�v�b�6W�\n�W���/FU�1o��w��+���W��\0��SO�+�(+r����g �+r��¡x���S��c?��c�?��m�q�2��K�������pk�0/���~�z�\rwB�1�};�Ş΅m�jcAܗ##�~@%���lh�2{�;���������v2{���>DQ¸��a�bc�Q�;N����1W�껞,��ta�\\���E��u�}��7(�7�WRʶ��U���~�_�ӱ4�a�G��;%_�;Ms�?��ؚ�N�����|���,]E�6��m]�+�إ��s:��mD�[~�f���;gx�����E�\0��ݸ��y���l�8���o՝߉���������X�z�8�i�t���ؘ�m��R�י\n�7�=-r^����d-��V�W�G=�7[\'���\'�������/I��T���n�����(�/}�v�5)~i��v�ϠjQ�\'��==9�W���?ٗ,���%�Y����^�K��9�_�Gp�R	�&�X��_Vw[wR�I����|ٞ��B��g�<M��l�\ZQr��I%s��\0��\'��5��o\'���.R^�����W���x2.Y�\r�i|O�����E*���ů���ߖp�S_��ˇL8��.�C���ɠ��(�t�ex\Zk��~��5��/���V���.�\0@���\0��Y��Ob����:�,�_X����H���R�T��#���%�x���H�d�x=�O����)���?��Ο7㿵My��[����\\ݺ��wi�����^�O\0T<���ku�whg9g��x�=/{�\0��;<�|�7��y.^��0ᅌ4GekX���Մ�\\��E<FRt��mf�	���7��L���iǈj�b�F6^��ex*�3�;�NJ:���i��Čq���S�ǪG���)4}�^���s,�[���J����F<L��x��S�}F��iҵ5���; �ԣ�{�J;[twjT�A[��ɦ�{XT���2�m�rU=�1Y����fWt���n�����!݄�7�Gws3�)t���t�{�3�)����̱��h;.����г������/��&����������Î2���|l�/��|O�:w�j�(�pϨ���g%��!Y_s���l�f�\0����4a����}�p�C��ߺ��ϖ���Ţ��J�~��Y�¤��;f��%�����08V��hq�L�ه���O��P�8{��l$��-ӎ�N��moDa �Dv��h7��r<*]�ߩ�r�\'������2�/�s�ړ�Y��d��9o����ꎳ�M8��	�x��f|�I�4m��O��\\�\nX*-\'�\\zy#*4�p�������\Zw9�֣\r��r/F��\\i���i�*e��]\n�K��#L��V/�k��4�X�*���+�ȍ�n�wFJ����Dn�Ǚ�?�(cr�~��GhѾ��\0hd�e�B_���\0ԍ8���D�|΂�~\'�=գ�:p�Z��\0�����u/Byof>��������	�\0���8��\Z�9{Q�u�ܻp���e�_����j�3�X}K�X��/>��:�����i{yr9�iU{���%QI9&���:�J{�����{S��|\"}(?�3�f���.ӊIE�싰W��e����/���b�#��!���Fy���VOU�ߜ��gp�Q�k�s?�+��$ڹ��S�*5֫�#CN���X�=���G\'�U��ڌ\n�K�\n�\n�*�ۓ�kt/i�V�F:�*P/(�d�nTYT�؞������:i�#��o\\����\0i��6�����;W���ZQb�-��fai�Z?YN���S�NF^\rS���.k�b���9z#S��%[�fsP�+n��O�~s��_�TF��_�R�ӏ��3�ο���8l]�G�t�G�{uj�?���f�r��\'Cb�x��¯���G����W�R�O��\n��G�F��zֳ���L�x>�ၭ�I^�U�́�}��E�\r*��tC���\ZU���~ASl���B6�gGB��]P|�����D�Vܻ�rt[�\\-��8�)f�S�ecr�j<Mo��=���h��,�K�-���5�EJ�GiJ�.h�5����k�\"�OM��/���k�R�s|���a��O4�Jqqz��\\���i�A������B�����w%/��*�n��eU�W��U�R�-/�jϪօ��xV���|ZxLD��\n����[=n�֧�BS�R1�+����,��̞��Bd�n�����駸p�\n�]4���VFWw��i��q,Z�1?\\�_�cl���yz	�1kM�nF��P�E�~���!���������~,��;�в��9�li�-����0�*對\Zn����+�fjK)���-o��m$���/��Y^6��Z��2�#[��Ft��&��cY(��7���4=\r\'��7��,�x�mM�]�n[��(�}Mˍ#l��\Z����Q�2�m�h_�w���P��9t/��������P���_$�ySg?�/���\02/�:N}�\\e��,��W�t������R�n��w�*P�E�@�@!gCeJ\r��N�,h�\'C�A=��c�~���\r<AR�{0�IS9�i	H%nj���1���o���~\'_T����1q�]�~\'`�ծ��jW&�<I�ۛO�F�R����e~$��%�(�*C�w&0������ل/´��=��1�%m��W��[��o�O�\'/J���\r\n%����ǌmx�-p^!���	YBU-))F*��c;�(_���rS��;8������,���;������\0��c�qT���UT\\uTm)^�;u��ܑ˸�\"̱\\C����V�Nu���M�4��7G����\'[��F\r��\\فZV�}�N����¸��3���O3�i���3����c��i�C#B���+1���O�\Z����B�v������\"���ޓ�����\rS6~�b���m��[�c\\j�E��#N��-�g,��2�G��j�R/L�%r�HҾ�{�\\Q	R���MZ���N�[1��������BW~����\0f�^}^6��N0�[rWn�:�M�]���:����ZrX��V��F��􆭺�x�GM�ֳ����@���KƄ�_���������/��p�u+V��ۻ>��0ӯ�ףI\'9A��9n+���Uیh۪r)�Z�Y��\Zm��^�����3��d�������;�yn;�6�K閴�1�^��O�X�.�W�Q��t���yV)xU������k��D���S-�ۑD�s��R���s���J?�+��֭��t_vp.���T��ݖ~���x��w�è���O�I3�PiWL�݅׋N���ί����<u7F��upѳ�F|i�]\"����p��8\'o!z����5�)���.����v��	c����\Zgܳ��E�Gn?�����CE*����]��r�����.�}lq:?MC�:j<3�����������S>��\rp�.�\0E4Nߕ_����������:Id1�����v�p�/��(_!��/���.6�l]�iG=���\0��,�5���e��c#1_�N��2�[�>��/m��JQ�}�O�#�|=/�-6��?vCK>����.�?�/q�s�ݸ}#\Z��Wz�����2i��x4�B��O�fƝ�\"���v<h�YX�x\Z]�ҥ7�♛\Zh�4��4��<\Zp�I5�0I��Om��߂+T�1��{��*�=�C���z�*����D%���ݳ+��0�LN��:{}��4�t�S��3;��ST�%J�s5��Q*~<�4���}z��|��9J�m�/k9F�Q�B���^�mY�����\ZlP�CE�ޯ�/��n.K�PN�|�;��K%�%�����]5�F�\'v�����ʉn[��5\Z�k4u�8u�S�4<�z�MuGH�N)et.��Eʖ��K�����g�aܰ���㻂�/C]�/	B�]Ft�S�u,�\"�}�\r�&��?���5�ԣl���\0�\nc����V�!9�)���=�v�3������\'�yV�\0���~�/l�\\��&߷/�9�WF���u:�k�ue�U{~v_�G;�h/�GR�i/�;w\\;`��E�FLi�\Z_�P����FLac\Z�-B��v4�.FK��\\�Yj4�����䫵�L�D��T���kzF�Z�ƒ����mY�q�����\\���?�Q�Y��\0���m���a���\'���k@��5�+s������x8p��c���?�YG��lO7��9n��q�\'�\0�N�\0��[�������\0����m��ż�/�\0�K�Ƨ«Nm�Կ��ę�Lw�Ӷ��s����8�_\'o�\0Q�eko�杭��u��\0�\0s)������\"�5u�*�\"�i9+��tNΡ�����#��`�#co���\0��g0_�j����G���G��\0�e*+�F+��s:/g�O\"��|����׉��=���+~��+�����tlJ���UV���V����<	ӵ�t�n^ӵ�Q��>�A�E����o@mkB[x��M���O�I|N�o#�V��56��_bv��7���vW�?mt��K�5��c�.��M�£kN�ƥ�;�����ܴ��h�J�\n�\0F�D6�01�.��_��>�9��]+}5�:���ߘ����ڶ\'	��|Q���X�̏����6��<4K�\0���gu�G�A�DЮ�24�o\'�\0]Y)�mcN��l��}���-8_���b����m����%�t�gN�Q�qD����n��sI6�#kzM;�U�y�X�\r�N��&��qk8���~1�Eu\"�]�	^|�isdU�l�������\'��`��M�#�qM����ٮE�>ۙd��8�?�*5��g�4�7f��+�$��~,�l�6U8��\Z��+_C�f~�bpʾE����=+�Wk:���\"K\'ká}ĥ��lw�L�pئP�mű_�1\rtk��%��g���K<�����8���o��8Z��/��Y�F<��8Q_ ��?�;@q��^Ѷ�h�UfQٯ#_�/�Qo��͛M�{� �EE���Zb\\·���V�Q����:FM�8K~�?\0�������Pkvn�w\r���\r5���%Ҳ�_��T~�P-�p�]��T_܌�\r�n{O�&7���KO����W<��lo�%�9r�x�^?m֣Ҳ.h�\\c�Twڍ$�ع�����&�F��\r���s^���ͮ��t�9�i�}/��N7��Ê�A��\0�C�v=M�����\0/��\0��ؚ��\0^��r���������Q��]�ۻF�����#�F�(-�D[�Ɣw�ꝕ��ԍ�S�c(+4���b_�D�J�_U��i\ZU���#O�ۍv�qN2�f�ʊ{;V��\0M�fWhP��/��\0[����`�[����Y֣�z\r�{N�N�ЭR֫�d�_�}���|ν�\\5p��l�N+[�8����o���4�y<�G/�[�\03=��ִ�4�t����;Xi�]h(\\���>#Iy��.;2)��&���c-o��k\Z~�n�\"�W��lմ��5��j�II��8j�����\\m��ڻ,�����/�C/H��t�\"T��\"��\"Q���;|�Ŵ��qJ<���=^�c��/:_�)��q)����z]���\\��\rg�:ڧ�)�=��OĦTњc�v���Z[o�F�\0���ܮ���8(���������zFB�^��]���n.�eR7��9Ɣt�ƣ�.�2?s��n����\r�Q*f+�L�M���v�env>��5ݴ|��ж��=������\\k֍���݅e�%M�-h�:W�3�`Sx��Iv\r,�����:�U�c?��Li[��MjmE����SR��y�Ͽ���֝����{/����^��,m�%o؏���*���>��Gv?��O�����\"�u����$/B-x=�m+I�2��\n�����N��[~��j0��r>c�\\�yxk����rN��n�h%ð�G-�����x��Od1o�`�����ڴ-�x�wŘO��z|����S��YI�|MOR�4�+��1�8��:?ct�<�e�Gєaji����\"�{�~h�2�/�<�k�;����m�+�?��X�S2�V2��/($T��v�\ZeJ���\n����nE�F�F�tݓ�t\"t�\rYqH�*�/�D8�A��$8\\��ԍBv���P�d8�R�6�*e�td��bBXn����O�/�/�:+��F��7��������Q\\�*���w����;M�C¯��ò��P���熡|�u��I����e��_q���X��#��_%��Ӛ�z�QrDϩ��������F�\0a����.����nGY>��G�k=�S������s�-Y6����о[��Z�k�$���jvʰ��5�,�;\\��[��l�ʍ/�����~���\05����Չ�D��Y|-��ݯ�2J01�\n��\0v�ȌJ{V�\n)Zۢ�$��*,�1eQEj!]��T�\\Q���%]�����qD�!Z�4t�\0mbP�_���\0�6�r��K��eq9o��i�m���r�{[�E���g8k�����>����|��ԟ�;���O�4ݷ�3[>����9�G��\0�j�1A<�\r�����wm��w�V�\0���w�ii���y��=/��۷[}�Z��uڥ7<��\0w�\0�Γk���Ny�z�q�^�̪1��%��&�J��О̹+�t\'k��� ��U����\0j=N!�����g���_�f�����W>��<o���dUk������/��߇w���q�f��H��?��Ml���bk^�TbUb�Qb����%D�6�HӱsJ\n*呵����\\�q��kzw96\"/�5<;�/��NO���UoҤ��J�{m=�G���\0��M�I��o����m�o�)��[Q4���i`}\'�\0�ݔM3�����������հ0�2�׏���/+x3�eͼ]�G�u�F̈́�dһA���^p��x9~��)�8�M��X��t��/��2���ѿ>�?Uiw*Q��߉\Zl�]���\0��iw,�ִ�b��\'kv!���F���Z��r.i�XQ`�+�RR�iR�:QZD�h�ޓM�������ݜMC��|�_R#/Kc��Z܅�wM���?R���_�c��z�WS�����ב��d�V���X8l˪!�fJ6���d�\'���^KI��|S�x�?���ܭ��M߆W�L\'�Jۘ\\9d�D�w���,���8�F���F�p��8���;�#I��E:w��$8��θ��������#�qw�=�/W�+���.l5Y��߸:7��7����q�ߩ��Z�ៜ��µ�h�4n^q\"�����x�?�Q���[�m6[\Z�h�_G�Tw$h�=��E����1���]�? �y&߹��&�^>���£�\ZL�]�7�?����\03�4z������YLVa��������\'�!�2􊭬<�)�X���_�(�֧���g5���W�q/�9T���%���Beu�C�^�`��.$Y��zv%D�D�$#j4�l\\�N��Q��>8�6\Zs��ZqgLp�۴��\0/����W㿓_���>�x|�v=)=���:���\r�\0��|NѡYܓ���}���!��?��d��ѷ����\n�V�59��ߑ����u:�eq�\0u����̒JN�P�)��\0�O�%\\�6w4]Xq�nm�;F��b����Qk��ߌp~��\0+2;FO�K�O�+ziE��R|e�]}��Z�ӭ���W��:C+Z�i0�I��c���t�l�}�E�\0G��w��9\\��=��ӭpo�9u�v�,��zG��\'�_��,��%����\Zv.�\ZHFִ����h�#kzC��л��@\"��F��$�[�O��\0�����nݩS�J��|\rBPD���c8]�v���+�:��\0Q�l�fvN��6��Q}蚮]F��Q(l̅%\'c;�8hcK�q��{\'��=�$��nN�O�IZx�o�K�˝��N0v��k�\0K4���Wk�dR�d(%����r�++���I|�%��W9���GN�6�����n�\Z`e�M����جT�9���9�k��;\n��2�����F�\0(YnQ*{r39J��fT����������+J��#�ߦ��Kt��x>���5�0N؈�՟Ev�X|��EF�tƔu_c笲\Z�PR�ϧ��ҎMR������X��~����1�M\'�o�p_%���z�n.1\\�q��s�t�B����p�2|���>8�����t�^���<Nȩ���m������f���e�\n�c%w*t�x����q��z���N\ni�J���^x�\0���n󆅨����2�(^�����I�^��G���>_��\\�/�Rv�).�8��[����\Z�t�5+���g���K�*\Zxf�ֻ�_kq�	�|u/���\'��t��b���b}��e�|��_�Tkĵ����ة���l����u~�(�Ϩ�^�є�h-��,�h�[���R^������R�m�Q]�]�Q(��P*Q.F$�F����\\P*���t\"ѰW�g@�2�.y1�<��м�ЍK.$i�_p#J�%�4��%ȇ�ʰ�R�_p)qy,4����p�/毁�\\|N�LW�r\r��Y/u�3��ݹ>X�^6g}ᨯ�8K��%�ʡc�nK�ߺ�l��i������]k~9�(�Z).L�=��S��9?���\0Ek^HK���r(~��+o�DֻS���CΫ�fM�xk~�&�ڜ/��k�g������:*��s�d��J�MG�c\r2�-)�{,�\ni�V~�;6EF2�=:J�П���9zh��f�����£����ے{\\�2Ⱦ�7�c�����_*��p��Q�����08Dk/�TK�̓Nϗ��(��/��b�7�ҿ=��/�!���Qت1*Q+Ka�mSخ(�ĩE�+jJ�R�+�\nڧHQ�r��Wkv#N��Y�i�%���MK4�x�3�\01����snײ�V3���J��)�Nn�Q-8����9O����1��o��,�.Ue	֔e}�JVO����xw&��3���J�=�y�v���vxRP���R�-���Nm97kU��p��n�p�����ɻ��<n�|·�#�6N��Х�a]:q����J�Q��f�f�\0y�\r1׏N�׵��N{�to����\0���-����Fr���T^�GN�m{��<=�����/ƌ��+o�B���Cf����r��p����i�ݖǧ�u%�\Z��r��%m-t���l�����S:��c#y:I/��3��qw�~_\r�:7g��\0w����F����z�sJ�7��:9��q}�i4��D/���N���% �j&�j(��#jw*QةD�D\"�\ZPӹsH����b�.�����ι�s�b�|]^����4㽶��b�����j���o����fߧky���#L�>),\r�*�7�ǡ�v���֧�;�4�g�N�$׭κ�x�¢o���]��KKoۏ��J<ȋ�V���bp�Ӕ`�+J[]�?�Q�d~&�ǸJ��a;�S����7�^��Ռ�公��[}��AZc�tM>��wغ����z��a���W~E�;��֜~�,�]q\"ˡ��\"��t\ZBv�\"Rت�ةD#j&�j6\'O�F����F٫O�\"��I��F�|�J�)�hI����}/�&����⹙s��NN�U�n-4��[Эo�m\\$��/�H��Y��tT�%�Β�˕�m@�Gb����m�q�SK���M7J��f��1�J����M*��K�ɿ�����I����9@������)�;�7�҅�q.�\ZU�����\\K�W\"H6�q)p/�(�qV�%i\\�������?x�E��g✳���գ����Z�\\��b2�V\Z)סR�{�H;7��R<��\0������g�cI�|�7�\rK�?C�O���g^��\ZYr�D[rt��8�k}���]�y�3��w�W�KƧ�\Za�����y+���4�+I�Q��B��M���\"����~ųk�i��[F5(J��Q�FM>��8�-��p5��*q�Qu��ok\Z��{4��\Z��K4�:�S��D>b�c+����zu,�\nP�^I���1���B�f%�/�9\\��H/?�k�E�w/��Z��t#K�]rV���eT��DW��V��J�Z�V���[ѱ1���t�mi��s^ө��E�Δ~\'N�i�c�<�0xyT���t�1�N,�&��7K5�Պ��x��wG^x�N�8�e*m�O�JK�hy\'	��3|-j�9F�:є���\'�t�	&��bܹM��ݠ��곲Q�t�}\rfN���;K�\ny��-:�?7nf��vV{m=E��o������CAՒ�R��{-�M���lZ�e�\0x�8��u���q\'/��_�\0��\0�O��\"jߖ0��\0��\03e�.�%���q�]<��\n��^��Ҳ���,]�������ظ�3L�?�_�u)I�L�%{E\\��\\+��8���a�*T�]�\'�5��ܥ��#e�B^�Զ^�6�;E�����*G�9\\��8�_�O�����ZW�Ͽ��Χl�\0�\"��}�e~�-�\0��ډ�p�\n�!�a�+MZT�5�ݶz�WB̭�oHP�.(�t�B�[Q\Z7.(��4��h%D����x�k���E�!�n�/�dis�ks���\n�Y�m�`��t�\"�rK����<��h/Z���3�������`�}j��1�\rO�\0�9칼4}&������C�Ȳ?���	TueS�wi&�܋)ɔ�{z��v2\ne�VNڕO�1�����}�����\0��/�z�^�3<�;�����Ɯ��&������f9\'a�^/(Qm�{��^d�zt\\��t5%�b6/(��g�)�!���;p��\'\r>���k9S�oɳ������&�G��S�\nq����>;�<�\r��Y�5N.V�]�cd��r�8�o�ջZ�y��\0�O�9�3���Nr���L����|�7���M2�ΏN��E:K�)��6F)�.�mN��]��ןV���}e^�ϒ;l���W�3^���%�鰿��_b4�y��׿�|���cao}Y�|?P�U�4�^�x���E.N�R��])2c:hwiJ>A3&3���ۗ��b�h�����BpoT�u˩��_g�;����W���^/�O��\n����3���Z���e��O�m�S�([���u�\0S;��zxO�cvĿ�����s��[/o�q�\0��xje��W�_�T�źWr^G�=8����v\rY�;��g�0����\0g�_9��FϠ)��G���ve�1J�*H�CkrTlWL���Q.F%Z:��|����bT�ƑrZP%@����i_%�AB\0�c8\r;Dh�Ƃ���\'Ɏ�F�#AK�O��{���%.!2�8�mt�>�������B�v�罵a�O!�R�!SL���L��ےdt��Ǯ�����I�];����\Z�Eǭ�����K��\\I���.�X�U[#���W���/޲��+�8j���\05|���/�^��d��%a���\Z�j�KA�\0���rU��\r���\r�����w���)�s쮊�U�͕��\n	t���c�؝�+��4>��\r-�鑤�0�%D��,mQ��;��U�+�\n%Ķ�F;��\nڧNے�WЫNī�	�%J$�#h��O�RD�+�	\r�ZB�ڍ$8�����Ml��)��\r��kR�0���\0�x�3�l-�{�6��9�#�g��pK4�������nGU����{D��H�#��K���k=��Ԕ���?	\nǎ�Q�p�5\ZX�/�Ƨ���}��ñj��ʯ�x�Եy���\0j�x?�������#l������{Ha��E����r�B�R�*/�T�ɶģjR*H�(� �P�6*Qؕ�mB�ƛ�6\ZX�6�c��clmo������G�\'���\0͗����vj���C�7+lj�ŵ�^P�M�ۖg�%����L�����\r�#Q�\"���w�jlU>����eGo��xZv�S������[[�\\Z���[�FC�E�	E����{���y�r���Z�KH��r����E:K��L�V\ZK��i	�ޒ�īI)h��Z[�i]�Q%�7A�a�m���~I�-�7vﱾ��U��[�\ZF���rtpޛ7ż��\01��W��d��G�G��Z0�����\r�����+k���%z�y�Ҭ��o<k����f��R�xo��xr���L�4#����������^9��iW\ZK�F���J,�A~Qء�i2�8�C�zQ(�4��z�n���ǑŊ��*�vn?7���������	d�e�;�ȫ�{s�/i�3{�~��\0��f��[r����*�/�?�21m�zz�.�4�4��}2�ݍ{���$R�>�|\r���x���NMo��\"�������:n@�R��\0��������>��pm��?\"��f����ة\"YmM�ӱRH�J�\"�6>7��˗��5�[�s�D����KUZK�|�8�Uר/b>����P��D^�lK���(�\\��ī�\ZIH���mE��]���D4\\�[6彨�/>�\0�D�#��n�����/��j.�vX��s��V���\0�9����O�)p�_���-��9���Q)�]�ᮥ��Y��5b��E��v�CEֈkb��(i+H�j4���D�!P�N��m�6���%ĉ�N����N�摤���\ZlJ�]�D�ڝ#I]�\Z6���ȱr�Hѵ�R�^��8�U2�8�J%��\\Bұ�L��ʱN\\��|NQ0s�\'���Ծ|oq�nt�N������������г�/������x�fi}\Zi>�󮑥��%�2�Gc56��C�g�=��qϪ��l��o���~��Uv����ۇ�����\\�!��|/�}g؝-<=t�\0j�q�~@��i�����b��,�5�-�������r܃Fm�����������%�F�~��@��-������M���O���z��yM�O�{`V��G��\0S弑_>���v�N��o���Of�\\8Ww}Q�������=�ϓ������\'��ۂ�%����}��O�q����:�E%y/]�/�*x�ܧ�\'���.S�w_�|�嚩>j\r���;\\����[hgx��O?.�t�u�1��j$�;�;��څ�QةD�D�+�1��R�*Jđ�ԤN��l�\nR%�I�E�ܬ�.���\\�#�;[�R�^�K�ѵ�R�^h��-���cG�z\Z�e[�����kg�i}������G�%��Ȳ|<^\";��x~���N\'˩��^}N����rj._�x��Xߓ��;K��#��.�[�f��aҭ�c�\Z/�$-���f��Ū�x}\'N���~J���\Z�ipה�Vo��l�J�]C�q�/�VWO������e���a�b���G-��J��:�[���߰���ܷ�آ�QEq[�ajw+����*J�+j����JDز���JED؍+�*7*�N����$M�D�����Xx�d$TA_ܡ�r�K	s~���2_�?��+���*����|Q�v�Y�~��\0s<���#n��+����b�\Z�hI,��ݿ?���;ӿ���\"�M�s&�s����;��:��S��\nڤ����a�ʉ��/�Q_�����b?N�~տ�,m�5�+�#ݱ�p*�H���#�Ӿ��^��I�Uv���V��$�J6�īI6d�Y����iV	�ЅmR�&�I��mD���G��������g_��9&e�C�ş��zo������%yC�7-(�;8J؟�?����q�/�E�S�Hގ�K�����ӻC�\'[\rM-�r~��\0�b8��g��K�u8+��ac|D>�:�>j+#_��)h�-�:s��R��vH�+܍,��-m�K�	�̓�q.4C�	�݆�V�&�;[�ĥb�$�Sbm�)nT��*�JDخ��\ZFؙ�o�b�/���O#z͗��G���%���3����l\\ �WO����i#���K~���X��sr_ʩH8�W���\ZSo������ir����K�W�\0�~&��g;v��o|:���?��ж�/��_�#б��8��U\ZJ�,N����h�m�h���D���[���ˉ�q|5p�)xF/�=�D�x�?��+�!b���5��o���~����&�%�׉�p\"�\0w����J�����Z�R�zȥ��}�h�5�;��Q��a$�������M��5�<��&Bk��^�+L/��%}�nGO���$���c�9��{��M���\0\"`���~Z�Kr���ZD��J[%�ZD�J����-_��\"�Gu~Gb���j�Q�K���ӄ���[\Z�^��aw�8�]�(¯����b��\\�ؑ$���	`��L�$X�K沫���N�|�?���i�.�ϴ��6]?7Rз�a}�>�bT��t���n��\0���,��ق���/�N���[E�h��i�Sm�qح �	�ݯ�8�V�`څ�ӱRD��%�V�Rؔ���i�[r��m&�[�*��o*��>�XX�M���,<$=ʚ؋�%C�+�\r�t��J&.gMK/��T��6H��c|��×��[�|�C��Kr��\0#{�*6��%�E?�4� �Y�k�7�f��e����O��Iӷ���N%.(��b�D��ҳd���>��	c*�-�Gg���ײ|��.YW5�I�h�+��/oYD�||� ��*v��>��f����6q������hb*`g���̧��+����/�^���)���<Z�gD��%�qq��F�T\n\\S���!��R\ZES�����E�圩�9��w>��/,�f|3W��:�{鏅�\r�vg��wZ�W�Q�ϻl��2���qv^�3o�M�X��*�QQ����Glَ9�Zr��Ҧݻ��/{?o\\!���J�%	N.�q�v���3N���R�J���W2���<��O�qpo6�Z\'�%����_J���S��Ԙ��gB�sʱk~�������:\'�?S-mn�;��F;�����դ��Z�o-qk�:�⺷��E��#IR�)nJD������E�(EV&Ɠ)H�\ZL\r���ȪĖ�6��Ȩ�)h���b�E�EMѝ�*,CEdIlgq���{Q�|:�����[\\��E���dzi�����=�6⿛�`)^���x_�l��\n�|K�ےQ�tש�e�uxV��U�\0E�\0���jv��\'����]LZ�bgS+�%��枩Zܞ��C�\'c���\Zu���)54ڊ��3	��UX�B��\0��\0Њ�;ӡe3_��E��女��׫.��mw����l\\m����P����xޅJ�]5NN3N�W��-����4|mS~gQ˗�T��9���Ez=��t��~�K�+��}��E��b�����,�	YX[b���H�Ԫ�OBdB,\'�2|BĤ,JE�(,-�M�&���G���KE-���ţ;>�)_6���\0�f��Ӕ�1�nN�.�����)O\rB�H*z[�[���x+���0򫅭��m�=��)�~I��)ftc\Z�����	�yl�����e0�.�R���Ҕv��m�\'�\Z�hK�,o�����9���jGVx\\L)R�F��/O$����y���r|���8v��R�Frs�ԊK���S������t�.���N�{�߁�l�?^_��[s���h��jr�-rzd�v=��-���n��J\"�]�\"R*KbR�%\"R*�(�*�(��!\"��%�}*�-�M�%�G�������S�3�f9V:y�\"K\r]�՛OCwW�S9t���W��U�x�J������k_�\n6��zҗ����λ�Q�+���-7k�F���t�5�.��(������q�{^�*���7e-��|�Nf�8�,�x�	[J�qJU-&ڊ�2��YI�P�ѵH���S�1f�K+��I����3y����c:i�,�Ү�I=��΍$4M�ň�!Į�[r���\ZJ��Z�\'jQ\n%�;�t	ڝ;\r;X[`���)�6�Um�K�OA�Z������\0Q�n�Ix�:\Z�u��ۃI{�c�^1?�e��\n�9���xK�D�\0x��ly�=����N5�NwKnVG�^c��]	�b���y�:�x�_*�\0�/���Mۉ0�q8�\\椝��������Q�x����L{��!V��t��3��ce4�K.�Ӟҍ4���c)#y�NL�t�*�\r���)qJ�\"�nVC[��r[3��~�ť�D��`qx��F�u�p���E��(�o��o\\�C*�F��g6վ^?9t6�����*�*\Z*w�����\\q��˜�����4\\~[rXJ��/S�㘷����/�6+o���qf�3,�,==s֛�����s�uo�p��A��DM%��i������2Z�e�jUc�p��%�1\Z�Y��R[�lJ�\\���RH��K�ev������9.aSZ�\Z����:�U��z��?)2�F�\0��x%�=+}�/��_���ԏ��H�zs_a6	cI��H�\r<DX4H\"���D>L�ϻG��8�\Zk��KI���$�fx��	�:�zw��k�\0Ь���R�\0������Ó	-kzU�:/f��	%��|�B�eΝ���\0#n�̲�U����T���}����6x�z{iC�m�\"���X��E����\Z��ЄH�Kr�@$ش�@�+�)��	bE�&\",I6/�\"���X�m� ���\\ܪ����\rWb�e�)Rя���%U��2_\"�x�8��V��X�]X�Ӊ���VK���v��k�8?���c�r���Y�.\Z�{*w��x�!���#��!׊��R��I�����,u�̦Q/Z�H9�_��)?q|fcx�}�S�;>/l5O��M���x�^տ_�;���וu�,���u$E�/B厜p�8��M�kr�� \\6ܪ��w�dX��K���4��c;�v�HҮWab<M�І�UbR\Z6�E\"m�!-��P$M�)���6&��cI��)R5�TX���&�\"��B���l,M��ǈ�b�y�lE�[h�n\\�KFY`�-M�!��,VR�D��\\��4c�)�e������-���i/X����ZQ\'I^��jTlLcr�l%J�K�/��@�4��M�CBlJA����X�i1bP&Ɠ\0XX��Ub����b��#�U�!��E.>\"ˢD�o2�)R����D_�a���&�%d�o�M�X>?��������������ۚO\0��O�/��ܽů?�p�SD%�,K�$�RW	X��6�:JB�s-\"���҂[��\nl�R�!����IE��d�2�\nA ��#bA]%�$`���er�E�J���U� t$�%�a��H�@i[HF� $���&ċ1B,*-1abl,[B\Z\"�Dq�\n�C)qJ�ʚ �Ġ���-����E,�$Sb*�[�b�DY�[���*h$Jv����R*��JA\"RW,����ؔ$V���ȱ���]�z2G%�#�ɿ�\"3����ul��\r������o���#�2R:�ǧ6^�bW2lk1V�\\ʁ%�abl,[�E��U���E�gqLE��TC+���(��F���X�\0��(hA6\0����i���M�1�%c_!\"lM�yX	Ѐ�hSb\Z*)q4E��!�,�J��ee,���R�S�:ؕ��\nZ.2��M&T�/N�� �i�4��3��{o��9��_Yx��M�0����|�[����O�:>5�7�K�^�v\"��G���\\U\r�VC+�\"�CW�\r\n\\E ���V%&���&��B ��,M�@��PX�!bR6�K�%\Zɠ\0\0\0\0\0\0\0�h��W)�C!���c�)�0ɱ\r�E���VR�lLP��E�*j�4B�l-�6$\nZ	1�iEI��� hR!�q���D���b�&Ą�f!abAy���Ph\\E\rb��2�H%�̬J�؛RĨ�����EO���M�\\���v�������&yE����v}�\0�o\rnhݞ�]�\0t�(ޚ3k��@�X1,,7$D�d$�\\��d\"Q2*\"P\'���OB65�H�@�6B��\Z�qbz��J,A!��A��ІA6�J� 2H+R�жé(�$�H�bGPLBID\"MdQ�� `0��$���P�bl,_�R��$T�)q�X�\ne��T�Y�Q(hЃ;,����gR��b��!�VSm�D�تá6� H�\"&$�I\"��\'�Y��4�Z�|���:��4K�>�_{#�:~7��yg�\n?R?%�F�n�\0�����\'Q˗�\"m`�&�!��$�ZD\"�Ă�!�\nZ\"�Mb�K[��!��R�bE��x� �b�%�VČ!blF��$t4��R*�H�#LqU*H\"Mf!`p\0\0\0\0\0\0\0\r�Wԥ��n\nY\r�0��4A[)g>X�M�D��ؕY����i�6�8×y����W�/CK�(O�M)��F�+�F�\0�v��T��ؔz��IK* X)hX�nCFv�+�\rJ�)�����\r�`����Q�~��^�%�Q�0�=������,-\ZRK�N�=>��V�+����(ɿ���m��{1��ev\Z��S�%tѕ�i���,��*D$T��1)Q�@\0,\0\0\0\0\0\0\0\0��AI>��#`C* �\r�V�YϞ)�YIT�\\��͔]\rt�ѝ�,6�)�.D%Z�t<�~>�LC��֕o۟��^/̔ɷ��\\�	e��|6mU�¼��:����?�h�ur���o:]��&h�n��9����ƹV�I���y��F��4��ji�XIZƓIχ,{{)B*F��4EV!���\"P%\Z@\0\0�h��l4,K!�X!�(��쭞W�#�V�}t�NQ����Qy7t���\0���O�M)�j��{?����8��x�eZ�֞�M��\"�G*Ӝ��n��ķr�k�9�n�1��=���Q�jV�\ZO⎋k�q���5i�Ck\\����vXY%nIY�yګbnE�bn:��	D��z:_U\"Q\Z�(����B�R�r�>DX-��l.\0��V�n�Xt\0��\n��P+`�\n�(���`[BPaH��Ix��@F�TJ)EH�*\0i!L����a*�.�Pm2�MM��Ue~{�qoqk�C0i\'��?q�p\'g��{���	Μ��)ErI�#���t��e���[�I���%m�/�\\U�`��C�b)R�U���H��Ҝxy]Ghm2:�(����:�b�d�����p�T��-R���Y����p\\!��(�E���Dy��?,T\0�`���\"B[�ZD�SxǛKՈJ2~̓^��>G&���uW���γ/�rl�lue�#����ӣ�{����\0��ʏ���ȿ�_�C�g#��~1˗�Ġ\r��\0�\0\0\0\0\0)h���,ئ�X��-��_\"IxT�,�x�yZ\reJn�[�ue�g��_|���/1�9�d�0��5q��T�:����^�VN�����V���r�v���U`E�U$؅̩#Lb�@$k�`\0\0\00S)Es���\n�J�|�~�W��I$�rܐ�V�g8�x�Zsv��/��+�t��YQ�S(�/�O\"+U�(j������%��T��l���OP�tjӭ:5���e����+�͒�<������=�m-��tG����3���\'�ߟ_ɂ�[�ɰr\"��i�>������?Fueu��)7Zfo��xgN�N���8w8�mC�P��>~�ڭq���l���7,�7���˝�J�9�8���Ǩ��\'�������2�[�ɘ�u\Z�q�<��Ί���������5�>�C}T��\r��R�d��fwe�����sμ�oOC�0�=��(���b(Ԗ��`��������-�<������[�n��j�W)I����9�\\>:������mx7[�I�+�E�m�Ӕ�\'����b���e)Jm�FH��G��Vi5�ӡ�`�~?�|�uɵI(�NP\0X\0\0\0\0\0\0\0\0�\"Jd�����b2����w��x���1��j�j�9/�~\'��\r\'V����wx�I�$y\\�w��?�vJ_6?�YE��=,~���jYK*e,�C�㚒��X�����6i���`sl\\��z���gZ��~��O�[/_�r�89=���v���e�7v�ݞ�<�\0���g�\'�\'\'���QW|��8Ӧ�9(��m�4��7��f˲�(В��x����0����s�1�W\r�ӧ��ٖ\"r��T��}��T�`�J	oz��}[zw8�����T)a�.�J���Vd�y�[b0/֜��L�iz�j����<59V�J�+)Ш�nܟ#Yɳ�n7J�#[C�K�f��Ը�YTӆ�Ӓ��������K1��PqNI��߁:xf�m�p_�aeZ�|E:�95$�\\��OS��F�M�n�XՅ��v�Q���##P{_o��6�\r�s��v%/���OC�\\�H��-ʹ�ni�a2�F8����ż`1U#\nUo);-�K�3��8����]��C���vg�`�ꑆ*����ۡk��m�n�zK�\'��ϰʱ�B����ٞ���F9㗪Y�>Ճ��s�Y�Tqq�����e�A��V�*��&��Lw���-m�ئC������2�����u5(�hF�ɔ�h��Q�y�q��W\rR�X�Bqq�_T��0�f�y%���P��wn�}\r�{C��\\4���hR;�V���6Y�����2�>[�b(����(�]8��|�ǉwd�+���&�~��MS�����gu��8S4����ênQM%5t�\\��{�s~eB�eCL�E?f�7�s<6\"��w��pT���<�G�*2��۴][o�ո��Y%\\40������\\oɯ�6����{������>1(���k�y�j���O��4���:-6�����~\'ɥ|]5������E��>3i\\yGBz`��|b 5�)%�2Ax5^6��m\\:��Ц�����p�[�άT�	�����C��\0�0_R_��Ք�n�M>�2�۳�	��c�f8<x�E:+����8�\\��#.���9��M���p�u��mQ�R�\0�Un��̮$�%��Eb�N�\"�V�H6��/gr��N,%�ȇfҚQ��}E���ù�<�-�UU�J�R��WO��4�j2�񵎃��YM\\�V�x,u(��k�4��<r��<�rΣi�\\]\\I��PzjB7N��|c���\0�_���s��<nE��ԫ�Q�pnP��8���$�FOf���8��?(��y��\0��\0��yOf��ʅ:���U\"�ҕ��\rC]��=�y�������2�zvHt~⮥1ݦVͿO<dB(��	\0X��đz��, _@�D�H�JF�⊄��6�$k1����	��1�/���/���|��\ro���F^�g��ي�\"X�x_\r�9�b�S�V|��sg����7����=V�l�|D>\'��z7��n/O�W�>}�\'R��}��[s�G�_�x=����}���\Z���s�u��t�qj�_s���h�\\�N-����9S�)[���x�8,��|D�a\n1m�Dg/i��4͔�)4��{�_�������\'\'Sz4���t��i����<�/�GO�bg�{c���X�8Z�^�iӏΔ��1ig9e{wX�,��MUvka�u�YcYf3R�d�3W�/�\01�`�\'�0���#-�u\n���\'m&F��9On�NP��$��SL�Ǔ��$�Zs�)T~�㥭��X��Y��\"y�4�4bc�KB5�Ѽo����mm�]�;8����x�]IYS�Q������=�L\r��i��W�b���8�����&�6�aax\'�����b��k��&K��r,0x;G�����_�7���W�r�3p���v���d��;ԏ[!�c0�e*Y�!b1��Q+]��7�U�؏���΋�gx\\�e����g�[s�g��}{��e��mY4����;!�\0��?��������	��|l�0�4��J~ҿ����1�u�e�j=~��[��Y��S�O��RJ*��آ��|3�/J�l���\0�:G@\0������gZ���]ۙ�T㼶7Zq�Ҋ3˓}��e�\\#)�S�p4�TST�]��ٵ������l�\0$,CD�dX)�D��.X�\\���1���i��sg:��/]�x�\ZS�f��Fr��=�{Ila�[$b,M�dP�6%i $H�\0\0\0\00D�EF�&엉��u�����W�B����N��m���5�����#̾Y��Zm�No����1u�|<q��wh�I�c!V�cY�2R�F�\'r�{��|O�Ygw8|d�����G�n��XֻƢ�}H��ja��Jr��+�E٧�[���RٗZ~�Eߦ�\"��r�4��x�|M�:���&�{��﩮L�k�\0U?C[w�af����*�<޼a^vs��Sb�;V�q��Z�k�����I\Z����y|Y�v\rN2�qS9a�_���q_��s}�b�bT�cfz7u�~�������������%�O���u��jp�T�%����^<�_�z?�ݧ�麜#\'w���7\Zoc���G���\r�\ZIӏ��^\rמ#)�:��+n�L��������0���T��Zemׁ���~V�$����wǶ���Oy���}R�-b�\0�T�����\\��|���\0���\0�{.�\'^������\0�v������/�W�Em�����s��3�y*Yn�&\\e��g?*�ǻRZ�����gva�a�av��n��=̕�t�lyw�ӟ��7����\0�C�1��U�ɳ�D��%�\0hL�\0-���I�u����S�q��W͔p2�:7�\\˰]�kN6{5{+��)##�����D�j|���[c1�}9ضV��$k;-j�.�葵��λ%���ӥ�Ч]+89�R�GC���������|���\"HM\\���\0\0\0\0\0\0H`@\0�%�I�n�罧�ץ��������o�����K��U?��#�ձ���#�ϼ�����ըW�n��Zg���c̾�r)d�L��Ǐ���}O�W�ĭ�����3�~(�I%�89=��?��8~����cZz�VJ0����x\\V���RQ�u96_�)浕|L\\0�w�A���K�DKӟ9����֖>��������έ.���,СSS�G����ʍ>�^v�W�ciխ<T��W��{W��OxUj��r�+����,4�]=u��Jq�d�i�t��Rm菕�9>Y�Sk��h��^�sE�s���Ns����w�2�^*��ź���/�/����w郞q63.�U�W&�EE4��E?s���{J�9(֡F��O���˴\\�����U�����8�_aNO�d�wV�US\r�Jq�7��c$��n9i,e*\n�qԭ+�}����e9e<�i�9�Y$��d�I#��_ۏ?�)�T�AQD��i$?�Xs��$�/o��\'����O��?�G����\'��_y���R{m$y���������������b\"��T�&�\Z*�y��ǯ�����֘v���Ο��q�o��WK1��7���j�)ъSr��ًg,�)[6��s��zj�2���M>_��}���S;�u;ڒR��wdpkf�uߟ?qOj��O<���n�n�7e��ԧ�P�����-��1��t�8�]<:�����Z-��}�f���EZt��NZ����#���sG#�Ev�Z�\\)�M��\\Ϟ���V��)j���ݳ^L����R�Uq��iԻܵ*�r�z��������6���.S��7c3|���Btm[�]�����q-��C�j��L�x���`��V���?��~�s��6��zU���[Y[���ӗ����1�.YN�N5R������9;rqOɮ�_*��;�?�p*4j�M7�v:��5�aaZT����⤪b+jm;5�-c^|m�j\\��k�\\�R��Ч��}���T�a{����]�\\�\Z�F�]O�I��~�l���q�m�$abs�\r�o	T������s����3��I���O�Uc3���-�&���\\�\":�=�,~\n�O:T�SN���旗�����l-E|�t��	�t#�﹕ű��K�GTl�����}���B9^R^ʦ�נ^�1�]˰��PT����6ٖE�E�+wRA$>���+E�Cj�5��\rK.Jx�)���3m�M�{����Z�\0K��2�y=/�vZIwq�7��=�K���5��Vnt�\0�^�����CB^������������{~�Ek�7��G*��a��0�V�uI�O���oW;+���\\\r_��-[?��ZU�+�\0ϭ;9w����p�O���]l>]F�HA8�7��y����9���F��a�!�o��+ON�{�5=���1�u=Iuo��\\��H�ߏu�N����W���\'�a�G�	�k���_��)�8OZSK�N�O梢�kdVm�y߱�K �\0� �D�J �[؉�8w�.qG��*��\"��Z�T�6�*i��]9�_4�;E�\ZGJX�%�c�G�e��͸�������p�y�d��:���S��eB��w{�I+Y����g3�8Ֆ\Z�K�u�W�u��8|��*���N\n3�+6��e9:�z|\\,�m�\'��C�p��Fz�N�w+\\�#�ic���N�G�*ЛnQ�t��{1�])BR�H�\0,\0\0��?�����d2�?�o��s���o�s\'lLׅ���a��\0Kp]��_�ig��l����K�Q�_�\0&���ߣ�����|��W��y���}�{��;N�\0�9��\0��c~_Q����$���N��o�;|�Գ,�qo.ô����ʪ�v���N��ш��M;��!J�i��f��\nT���ys^ʼ߯C\rn���m�B�8������ܩI�K�r&O�#{�)��S�gf��+��[YBU/�*.M�$�	q�E��z���r��$��ޜۋx��p��uZ�L%D�\\(J�Km�=>�,�1�8��&�XF7k���3�<��U��(�*�/�S���X�(v��N�\\�ySm��c�a�6��=:dw[��R<N\Z�lR��s����\'���na��2�|���&U��z�8�xK�r�Vx�T_�e���V�&i>�V[D�q�c��\n�ʖ}�Uk�\\����9���\r��gG0�,Di˻��r��ާ��VefU����S�2�&s�rJMmb}����m�B0��RK~G\Z�d�2������M�<�C��|���\0�Y^Y������q5�,u\ZTU���J�籯g���\n�����m��6~�-�f?^���٦#�����~�������\Z��G��\Zo�1������L�VU�ѩO����{���\0��?ȇ�\Zj���?������_��xq������\"q>����|Q��O��V�>�\Z�t\"RK����J����P�ЕZ�P�ݻ�2��0Sy�KW_�Ko�KɌ��co����dx�~���?��S��G��-�B�*5\'8m�t��1�e*�I���8>NS+4����۱��\n`_�{��;<w���g���?�qg��Bx����%R��E]�N�#M�;Kʰ\r�\r�b�⽕���1�َez��;%���}���%�;���;Mͱ�\Z�xʕ>�.7�4��s+�1�5�7oM7̝��v��d�!���ME�������p���p��a��-_�#�\0\"R�eOo˘��\0��L��/i�e�u+c�ӧFt��^N-x�y�2L��Q�r�D+EsI�U�q�/J�Q�@F��Q(�Qx\0�\ne��x��\0�X~�4�V���u���.F��/��\Z�1U�\'���a�s��׆c���j����s\\>�_Nugݷ)Y��N��UV���\\�iSq��97v9�P�hb3,]\Zti�I��O]Ӿ�e``���e��k���_�ܳ����oZ�GJ�pգ�O\\�k�3�F�ʥM��>��\0h��2�����Z�\\, ֆ�g����.r��ѩ��+�w����/����ޫ�v�[Rwۡ�����Q[t^4��{\\��O��\0�/8�NO���Q�Te�5�4w\Z�����{����q�L:_��a�u����\Z�տA�֣��?v�g�����`���-�w�dk��K��T�����\0`n��-��������w����I�^[^��߇+ۤp,jk=�O�8����_���g��?���o�v>���Q:_n���ڷ\n���F���ӏ��|�x����g���n5�6E�8���k\Zr�\0f	��d�X����.��٪z}k)�>i����8�?�흘+d���<qI�7o���ٴ\\r��3��c���[Z��*)\\��G��T2�NL�\"�E�9yeLq�ӷͥ���W�d�W2��	l���fv�UQ�jJ\\�m�<q�}[��!6����.>+�z9e�#���oT�BtrkA>R_:�}��Gĸ��<F.��ۺM�-Z��nR{��������&\\�jM.��n�{K6�\ZQ���z�c�d��OT�+fG�ج��Q�Σ���b�҂�\"m.p�ԙ��������Ғ�em̲��m�7���<�X���:���d,���;%�\Z��҄�՚��}]�؏��*�w(&ߙ^.L��j9���e��D�I��\0\0\0\0\0!�\\2�A\rl�!�+}%ϻK����q<��C��j�.���p���_Y|O7?����:�����Z��(����H�o�����6�|o��Q�i�B���l�\\y�\0e�S�G�=���L�k���]#�s	O/�𱕩ת���i#q��j,�jT^ܺR�՜�-���J�89�NSpR��fۖg+9�Xў�R��Z�|�či9ỵx�8�F*���F�֞�%��͋%�c\'K^��\nj�|?Jk��\0�W�e��\0w��K��I~�A��]$��3,�������\rB�؇5���\"FW+z�u$���QZ�\Z��jS�������2�q����/�em�U&���\0�����\r%K��r�J�8��/%VqU�߆8Qf5T�:�z���q��_����S.�`�R�0�zQnׇ_[��,T�Jum��[�k��C�ھ6�0�N��R��)���\"l�\0]���t���[�$\\\\��#ϩ$ i�!��;[v�`��m}�g�<�����ԗ�g��aJ�\',�ޗ�:�y��Ɩe��~,�럼潯�\0���\0u��\0:9��O���~�)�y�.��xEm��?�y�0�Ri�S��K�k�/&P���$��|l�1����;���y�ϩ����e���,PM�{x���2�gy�+�!R4�MF������w\rq��0���Ju#M��.�[4����q�2�\0�{]�q����R��0m�oڛ���c�U��w3̥��U�T���r����W�cѭ\nr�Q_nF�=�x�I�[��)آu=��D�ѵ��s�йJVw{��ս�2�9��64m��Q��.������b#V���/TyzԵ&dӧ.��J)++7��;O�V���Z��X\Z5*$�.�[s�i|A�S�sJ��aV��r������xQ��et�>�a_㟤x�q�ҭ�V���d�S����:���������!+u��{aSu�\0k�������]_n��Rť�����v����,2���Q���*�7	]z���<?�F]�c�<.�+�i��o�|5����ř47�\"�����t\\�^3-��\Z\r֊���Z_?���x[N_F�o��()]Z�s��e��ƥ�w���p#��G=3��\r��%�3�=�OCX��ڝ����~���Ѷ���S�c5�SP�?�CԦ�w�[��ڔ}\r+�5��.N���+~&�K��߮ƣ����hԟ8�V��k������H�rO�Η��xs���hO=�:��Ӳۗ#��ETZ<MÆ���)a�U0�#����������v��r�Q�q�ió��T(T�:����O{�y��u{����Ӹ����gb{�x�*�։<4����T��_���oj�K1�n���^~\\��F�\r^���k�W��0��t2�B��yT��*�N��H�WW�+�.����&>��(Ke\'��\0V6X﹫���0��	�boN�^�_F_�У ���b�f.R�9*s���tS�^�G��Ŗ�6�R�8�)E�=�Ed�\0*\0XX=\'�h�mF-�d����{Y�u�p��a�Y��:J<��/�輖���2�S�S���iON�\"ZeQ��o+�����OYЯ\n�0�Q��I4r܏FE�csZ��У-+��ճ��31�_��V�rx��u����~��ӘYƌ��Nψ���R�����t��������ǌ쪗2@7T\0\0\0\0,c�\0�����_,�w�����^�g�͙�_*��=nΩN�e���߻��M�U4���f��.���VQ�v�O?�пW{|�Sg�=����0^��;�q�S�2��*)M���ʤ��:q^:�e��qUӌ�T�qwVߕ��9l���ǝם���bT/k��ڳ.%�|��KõiKB�b��\\\\�;���O�1�^8����x[���*t;�`g�8��}�2B+����lk�����\'ϳ<�Z�yj5!��F����xR�Ֆ8����\0�5;���+�,=Eg%��6�I<Ɣkc���$�ap�eJ=5i�/�\n���\Z�W�kJ������]w\'W[c��ó|�5����g��B���άt���f9�	U���i����Ĩ�����Ni��iQ�_��sI�^�C�;#V��6�b1r�	�q�E��}�m��4��#��У�Q~�:�[�#x�Ji��1�|������\r�:w������L��.yn��ς2<�Z���)�*p�����*i����\'�U5��vf6i�����b�;S�7�\'F9徫���J���̥��\ZS�V\"��N)6�^�9���.e��l�h�jQ���d��p�_�8�\0�bkS�T�H�oN�;�p~\\��7N�8r�C�gu �\nQ�\ZT�I�bڹ_�o���埌������V�8����F���Wuf�xg\Z�������;El�-��<n>�-c���!SVt�6�V�]�W9$O�]���\'��S��[���^��c_�l���J��{��J�����\r_�sY�J��fX�`\"�օYJ�Wi_v�Z��c?���8i߇�/�|�v�eO\n��%����|g{�my��p�ץ���x�KU,$�--��\\��9��\0��p��������4�\r����μ?̎��/Q�>�����EHң)ͥ���}��o,�9�N��G[�_��u���f��\\�x�<i�_K�-����Ʈ7*�$��n�-��Џ���x����-��5���T�KBQҧ:Zn���&��̪b+:���ݖǟ*��e:��c�y�Ύ\"M|��磗fr�hOx��.��J�x�u��fӍ^\r��.��_�f�ײq.ȸ���0�6.�^\n��b����-�lv���^�w\r�:p�ᬞ��T0��*�wI��3�	�Y��uz��Ϥ����G��Y2��L���s\\&�-U��T��Z�X��Pk�nt�SmF����G�ҥ�1<^3�i�yjZ �m8�˟�s�=���#v8}<���i�)�ԒZm\n.�ylQ������G(Ư8Y}�;���<��kUQ��\0;=Zo���3;4�0�n\ZU�U*qWr~g��N\\��H�y7f��76����a\'Js�i��W�(�x�W�8.�\n�u&�\'UZs{$�5������9agA�E��ՒV�m��;ͩ�U:0J�*��F����\\�ű��u^K��Y��\\�ot�̻��<̻,=*��5lUH�s}<���ã:1��aU��$.d�E@ \0\0S;Yܩ��ii�\'k���7G��g�f^�q��[�9��yW�9�-��mD�\rrT��3��#��f�Q���qt�}��o��;)����gج����9F�9�*ri6��;�]r91���V\\won���,.a�Ԇ6=��r���v���<+�\\g���Jr��A�����`�r�e��r�������:˒�[�>a�W�ի�%{ߢ#	r��ZO=Tc����rI8��Z�B�X��*JR�Zm�#��TU+M�]_oC�����n��:���=�\n�ЫS���nݗ�����)�q\\e�0�:�7tj-���|-4��x,���\n�j�)Ԇ�p��b�u����ݡV�\\{M���l���gص��G�������T�_S�\'}�λ�ϒO?�o�ÿ�N<%�����e�ӵ���&zO9�q����}W�g����&^w>��4��S�,��3�;x�����>7��c;p��ǟ���v5��|��M��99>�1sT�򜝒F�����7\nؘ�R��m�{8���?�g��:|M$����\'+��t|n)�Q�>\Z�:��Jq�|SͰ�=��W%%{o���fX�GU�9Z/�Z�\r�,�\r������p>-J\\a\'���;:�+K�_?��q\\�����;Ogv�������#��?���`����c�14���Ւ�Q�V⌢��Le8����c��Q�ȫJ.�#��s\n��\'f�^[�W9c�^�m���1puUH��%}ϝ1�;��m�f��a.�4�]�9o�3Nu6�k=D_���i�{�rϙ�FIR~�C��=�ɋw��E�A\n��Ȼ{�������U�m�滆m�3�N����9A�]�M~�4�����\0eY�12��m	4��drg��mח���q��Jz�#M7d��x�3��ڕ���6���Q�>���<Ȳتu��U���qO��4\Z�W�\\S�P�R����Ћ�����F|�]�?�n��nxznsR�^ӋVl�\\�G���8��9YM5����[�\\9\\��s�c㖒C%�ik0��Z%��dK�&�&m��u����٩V�)�B��\0�͏��ฏ�q�EG�K~�\'&w�N�<rǷ��<A,�f��kF���i���jS�us��j��*��w�Y�ۧ$�v\Z5X��e�tթa������J�}�f�\0<�������{�͓�w4���e�c����r�ݮ�ѲU����8Ky�_�q�5�Vy�)ֲ�xӲ���gm�7��[���ݡ�����q��Q�����9�j�����aw.g�VwMxl$�\0]2Lf����R��e\n��?Sv��3ӎ�P�J������U����V�u6>�S3�ӡUө*�FK�c4�ܱ�3�¥IK�����\"�J0�\0VkyfW�\"�A$��x]���x����3�3�e�9.[9TjZ�u�����_#̸�x*q�r�<p�۵��������M�<?��?��.�ɺko��s�ȱ�iPt�Z�MT�b�}�O;2����t�8�/U��o�����+�S�����i?��K�\\0��\0پa�6�]U����P���VC�8L��w��i{Z��7�F��\\��<V�;�o��Ov[�s�c��@��Ԩ��i�26WG����l�ӎ#Ss[X��Nӎ7+���g���6��MN�ۧ��ߡ\\s�/Fx�}��l_��Q�L��̩��Fl[�p��\0\r�O?�����\'���\\us�v���o��,��彴JٶxQ�\0��������v��G]�R�����\0��L�J���r�ʖK�Խ��wk�R_�hs��ﺾ�?v�uUV�߉bSv�B*��j�ɬ�m{Ra��\"ƭ��&�Ⱦ��͛�C�E�Գ*r�_d�Щs.��b+�v*-n<E�+2�d��Kөo�o��V.��~ͯ�e�s-�.R�Թ��B{�Tܚ�1)O{o̼�_�\"$Y�	ogȫJ��ص�ez��Is�-��u&�ѕ�٧sϣ�e~]L�\"��2�ȋ�I���\"�Z��$d�Vvn\Zuy��h��*a�c$ڊV��p\n�\n��q�_�9�:S��\r��%	DA�+E�[������\0i��X�#q�Y�����L�?�`��r��~��)�\0S��S�k�\0G�o߯�6�/�1���;Vv���_-�NN?�rJ�jL���_�5ڥ�Tb7v�m�v^����5�Q�=�m�Т��n�ms�z�k��\0qb5f�k^=�XM~�.�_�e�r��g�Q�K����۳�_����Vķl��N�0�3��*��T꾒K�������x�FY�	��VI5%$������II|�l�	��0���+t�]��W��^��R�Ya$�>۷fX�U|3��僩�F��v�\r��\Zap���ya�7Jn-�K}���^2x��N�����W\'m2�����xy�~�8�Uv��K����j��2�tL�����ߓҡ:oK�m��[糩_>��/���Ǘ��H�b�8�.]��#�����R�����v�m\n�\0$���W��!N��7���&3��G\"��|�������VZ�0T�]�q�����v��yF6zkT�aU[���RZ���3iŗ��\0��\0��n,�/�1��v��N�ԗ�8�j����g����j�_*p��\0�S���U���2�>q�ޘo�.K�l��]�O�j�i�R�w|~	;�L�\0��h�;�f��T$���)�Ir�m��-p<<��8;G��^��\0L�=���42j\Z(尯zti����JO���۸>jZXu��q\\�7��2���Q��<c��*���PR�O�L��<^���a(�N3rsq�{�}紿�I�t���At\0\0\0\0�g�Z�U��8���~�+�����^k�.�^&o��e�E���7�J���*����ݵ������´�ճ�,1�ī�T����<��/x�FOAg�ܝ�p�_;^����3�q�j���<UF��IԂ������7���q�6#��	�a�^_��{S~k�WTs�)��g��|�X�����[Zoi%��B~WJa���\n��]Nj�/y�0�������t�>��\\%~�l�nn^-�W�����������q��ov�S�%�ֶ��腆^���\0��N-��{����E�ǵ<~#W��j*s�N���J�����ÑV��_f�@�8�r���S�J\Z\Z��T��r�q�)q����7)����R�T��U^ӓ�%����٪v�t�,�����8\n��<59?Wg�+p�\\�0����z\'=r_h��m�5�7��(a�H�k�VZ��)�yK�6Fb����ź��t�|��4K���G��7b�\r\ZT����}�rw~��ͣ)V�35�,��yyV5V��\n�%��)�O��?��wG\"�c��9ƥZi(x��\0�>�K.WM�B�X=t�-�iG=�q��aOd�I[on���)Jt�QSo󺬝����|�R���\'=��)˔���aq�6��053o��s�CJ�p�W�;o�-l-J�:�m:T�)Ss�Q��o/3`�^[fI��?��;Q���be�)U���z�\\x��S�V�YX�?�zN�\n�|5:��8�\\���a����3�=\n8�.�l�M��}����8*�4�E��5~}\r�\\���;�8zP�h��Q��/�5ώ���9�v<~��K6�ba��u�7\Z��w���8<~��\\\"�h=ԩ�3�������V�eb)���֤v� �`�,��ڣB*0���[$�WlS�c��r�����x�`p�\Z-�g�}Y�kOvg�7�X����9ߩ���g��gR�����}�z�$E���m+�D%d�R���P�o�ܹN�%{�`��J�a�ŻƤZ�3�n��~�s�>t*g�8�$�7^\nm�jW>�oU\'ݸ����mœ����3\Z�(-u�m\nk���2(�m���{r��r���iv�N�e��JP��A�5��Ǖ��˗S�En��/�|����J�L�JV&Od�ɷ᱓7����3�~�U�Uq4b��&�E�[<���1���*�uN�\'\'V�\\�KMF5�t\'$�Ooq�e�i��L绤�J�����6Z�{}�żS�G�1���a�JT�cTRn�r2�����f]4��3��]|���S/Ut�j\Z\\��L���\'[�:��f4&�[{BPjҊ�$�o�b�\rf�<ga�R�R���)�f���ss�N���+���e0����f]��j�T�(]?��\0���#��~U�U�X�/���E��7��{���ۏ�MU`d\0\02JgɁ\r���,�kQ�:�!�m�X�8����M�tލ+�>s�q9�1S��E]���5���.|������s�[t�л0���3L6/�F���ӻ�^\'0�;N�e\\*�\r���a�էOۚ[���3�p���u�`��ӊq�+գ\nUi�\0V�4���r{s5>��6���*���J�kIIڥMZ�����$���9o���3\n��ҝI=�W�|�?�\"*5c��b[m���I���o��rU%�;]S��b��v��E�N�D�\\�v�)^)�>[��-wEJW�ZN�}�\0g�/�!>n����N����4}������\0ws�?8����\0��x�e��#�?���cu���>��\'n�y��>}��x�.�g��?��|o�����¯���#u�h��o�|��:��rr}�\\C,���-,��q_��ErS>���\0�u��>qi�1��k2�?wg��������%��G�����Z���8=8����c�տ�f�?�������v�u\Z|U%\r��}�d��|�z#�qm�I������l�>�|?������D�2Hg��Z�i��ײ���8ͪ�Ok6}\r�G���|�I�U��\\�y���s�8�w�������Q�o����}��{�#�v�s!�KET�j��%t���:����r_�\0NOV��&�	G�h��O���\0��L���a ��J+ko��t����l�\'��<��l:�RaU�E;�5e�j�w+R\\�I�\\�	T~���F!��Ƣ�v�㚸>����T�W�z����z��\'��ׂ{���>��;����w��RU�I�0��N��nmt���q�/M��m����b{����\r&w�\0�YY�Zijv�\r�4�I$]���q�[S��\\�Ԛ�J�D�t�M�[$�v%�\"\"�`���y<Y�\0�}S�b��eo���ś�8���#�����8������\0E�/iz�Y�)��/��j�l��ci�da�o=W`��6��E�\"�Ɏ�̾�佖p�ў�%�}vwI���p���ϋ_����U��֫^j�Ñ�Wt�Y�,�����W�ǥ�I���;��T��o�<�Ǘ��=L�	*���)4��Ś����e8l�;���Xey�w�Gտ^�GR�J��֘�iQ�5N�e��h�\'(W��\\MX�⾉�G��o��bjo�x����N^l�_�Fs��r���E(�m^^�����IB�����=\\Ӄr�nt�\Z*M{3�&��os��va��59�kI���y?����2�l����i�ե}��=9^]m\Z���^�_�g���=o��UЂz��sG:�vN5��_tY��\0�o�F|�\0V�\0���\'5�ҵ��^�S�+F6�^z�r�K�\'�R:�>g�ǆn����q�;Y�P�cB�Lp�C�Vsջ�<�L�+�ƣ�9�$�����\0h\n�g�T��t����:ҋ�N=��ln������VIݧ9�>v�4�8�,��Js�֕(S��T�wo�̞*o�����V�ߙ|��UI����c3J4��(��Ƥ*[V����Y�hd��<^aI�_�Q����y-�uTܥ��y��|���˨����*�Lm,E8�W�M�|��ٻ�F�\0ԇ+���/�w�ۯ2%%��`�/e�*�̙+4�ȭ;J�H���-�/�����{>w,�ٰ�vN��-�\"b��ŝi�S�1❲b��2���7�,)����o��¥?����̈N�V�!��E7���I�N��\'o^��.u���\0��\Zv��g��l_�/<\r�\\�J��e�:>�����^ti�7F�����~Әa*�r��F�͚c��,��F�\"��#e�oo������>��ϣ����½<N��\nѩf��+��{:��<=B�8�I+�������\0+b�*T�SإQ֎�57m۵��ۡ�yݔg�w[m���e�V+Ʌ�M;4\n�i����ط���u[W��x�zx�1��}�s��uFmF�������M3�\0>�˵�������K���clg�]�Gn��D~��v��S�z�3j��FU\Z�k�ܤ�\0Ǐ�F6����UVp|��/���6�e���&i�����ն)�����|�b��%k�\n�T����մ�w�E9��\\�Yo�&���ܤ�?f�e��z��R&��/g��ޖ��njі�\'�F����ө�Q�<VT�q�U�86֤��%,F[�p��,g8Z�%VT�n�ݹ+�ߛ�������j]1����;.�Iq>eJ�&X�Ν�Ri�4������x�Q+q?{~~;��u�vt�\0_F���[�6�<����y�s�9mF�~�Yx/��rj�{��S�J)�:r�:���^G)�N#̸ˈ�S�W�Yԕ�M������M���eɫ�a��#��������C��4%�S_���c�%O�V~h���.�*���R*2�Q4�I.g���_)zi��;ʻ�s&�?���g�N55h��Ys���QT��m��E�CES�޸ɭ�[#��)��������=(%RK����y�������ʝ$�)%�FW���)<K�$��]\r��,�y�+�կİ���*�ͅ8ݷ���O��	Y=�s:q�:j�uJ��\0�4_�r�##�s%R{a�ͭ�|��wG\'\'%ދ������q�X�\0�W��K�pV��\0\0\0\08��~�/��j}VW/I��3�����o\n���xY֧B5*%*�%ek����[W���\\MeO��|��9]ѽ��/���z6�ܸ�|��(`r���gQh�_��>��z/C��[Ue�4�M5o#��X\Z9��=p��V�xl��C�o���q�0��Q�n+L\"�֛j7��{��v�X9|��f�u;�A�yS�ѭ��*��:���m�+�����_5Te�;����ҫ�T�����\r�R�5���-O��H�^O]Vtjp����E�/b�x=�P��+��<��b#�::T�����o���:�7�i�����YV\'��\ZX�Q�JJ��|��c,.�p\Z����<�<��Þ��U�����W�R�rWf����UdJ�6\r>� ���4�����-�s�2�k��}�k�`��b!�d5��H�i�J_&��ow����eV�ЕhƧ{J���h����<I��w���)R��(-ے~\'5�l~#�V�Tu*\'k����e����,��Ն=��*К�%�5}�L�cZ���x�K��3]j�e��$�Eí6ߧ^�RWy��i�\0�5�>�:�#�9�%��sY��/�5�`�w�N���K��<�5̰�����8ԣ:��q�R�\'+�|Yc,��xσ2�<4>\'�0Ů$�9�z)�0�++\'��;�,uw��=]�(ҩn�Ktjݸ��j�j�Mw�3Z��trI�+.�k��9���)bk+�V5�I��g��+��KU*)ڝ+�J���5\Z��{;.���+�ڼ]�%^-`0�O6���#���\\�������w�k�LZ�5�Ҩ���Ji�[�cȯ+M���w~�pTp�l(S�(R����b��8Fd��g}+�72�D��lwQ&F�g�%}�ȴ\\���W)RrR�4��}+��|���J4jw��MZ�?��~E���[�kvJD�b�z1U މYug��qfq�8�e����i��ƻNN�EJW���]��D�*qVW�ϱ���z���i���T�Ç�QS�o�jI?�-c�.�*��\nx��N��Qo�=*J�5>Dn��s��}���|��#Jq�ێ2Q�I\Z�y��$05�Q̧\Zѧ)SP��[�m���)�\"z/��r�V&J�i���F{�L��g�ewa��>\"�Z����q|ݼ�:��I��~&xl=G����Ҩܛ��.W�kݒ��`�a�_&�p�!yI���7/���_������I��W�+�##����a��T���M]�o��F˒�-`�%%����F��$o���6v����p�҆c*��p�]�X6��֌�7\r�����\Z�f����v��WC.�e�b�&�j�L����?�R�׆9J4T��wv��/?�o8nX���8�%ɣ(�Īբ��I�k���i��c�H��p�ui�I~\'5���.(��C��*\r�^m�ݭ��=�%��2�)a�Ts�z)�ũ[��}��e�8��_�n������q�E>檼u�/�=�p=���ߔ�ԩ�tcJ�Sq�vݥ�t�s5���9��W���f����9�jR~�˴�Ͳ�]ln\"�aB�W�P��m��I5cV�����#��&8w�SW��99�����~Oۂ�W\ne�l���S���Li{P�۾��kr�m��_��*�1��\0f�����enW����^�)�s�./����*�r�\ZN����x���d�\'��\nzgMJ)�n��ne,�=���.:|��Zk�y��1�W��efqQ�TI��1ӏ�Ó�U�Kv��n��+����ŭO��%^�I�-�t|�����p˶kD�+��\Z|GY_�?�>r��l҇��K���}��q=E�}���iOk�0���+�7�4�*�3\'��J+����Zo�y��v����$�BXx�\nNKN�]���Y�2�Ykm�����#�?���g+b�Ϣ8�~��}S�\\�_���������Gd�K~��:��#zf��|����w�F�����9>�. �\0�W����v\\]7�&�����)��\0����k�&�\0�������>���|�	��=�	Q�\0	�p$��1O�L���u~�6��\0�ܜ���\0�ΜY&���	~\'h�ݷ���c�c���믉ٻ7��ע8���;�G��ֹ��|����ɞ��j����������+�P�8��3�>��\0��oC�*��=u/�������6�K^1��g�_����0R���|�7�[��gk�K0���ԩ(ў�v\\�4�3�������M�6��]q�ҽEB6�I���0�v{V�f�����E~�+5}_����1��F�r!F������R��ͫ%tp��=n�W�fE5�W��NS��Z��OM��m����\'��n�j��<���Ç͏�Y%l�2��A�䬒�Ϭ�=���D)�7VqNi���4����<�KD��ky?��%d�yy��g�<\"�J �i�%2&�S�6![IE�&�ȃ��$W��_Q�7�\0;3��g�����i|��w|�ܷf����/4j.^�ͯ�Z�6����z��G��E��\n��~�*�SS�?C�v�+qV+���g�I�\0�x��c����}֧Y�W\\�\r;�ļ��ܢ����t騢����xK���FT��4�}w<\njӴ��ER8yR�N�(�UV����9Ή]�!�ʆ��-u�{u$�z/q�\\�T�A��1\n���X�����i?��{U��6�a�%�Ҩ���s���ˇ;v�ײ&.��&����,�\Z�a�Ќ&���v��7�r��s��W�-��v�D��T�ef��/�&�C�����	�g�GFg8�{�V�K�����?����F���uXVr�w�i}tux{0�����������u�k�9�\0�峗Tu�޲��|�;�E�+rZ�4��\Zy�yGZ��:�y�1�;k��Z��}J%;�#�c�����)*��iC��������9��X��ja13��)(N<��i��2fr�+$��\\���P�>���<9��,ގUӅJ�-ǚGF��-���M�3�<4��pOF���~\\�.r&�=�m>eQ������Y7W˲�u\\E\Z\n:�Rͩ��v^�Op~:�(`�8�ӅI;�\Zn�o�����j1�Q%;�W=��x,���b�\\5*��*�לS�E�cON\n_��KnE�WZa�D_���U�Ў\\�Av�u\'���\"�ݻ2⋶��������rWB��I�L��[nN����a�H�K�IC{�X���\ZWj��}�M<ץ�u{�����q��xYT���&q�7C��վ��q�v�F��b�8�u��c���U�y~�0s��K{]��5�q�SLiawj�E���\0�l.9zL�QE~m#.����_��b*`V&=�b�1�$���$�=̳���|E\ZԴІ�E����歿����i޽����F�N����籈�<E��iNx����҃����e�^O�=ӝj���&T�F�^�;6���D~7�em}���3�r�+��gtt�[�����sZ����S���NS��/m�\\�6:n]�����PS�}�(����杹�D��L��s��ݪ`m�?��������v��_%�f��i8K���:p��wq}�o�Cꯁ�v��������ͫ	����_T�i��߅x�$rY�sq�\0c�Ի�W-?����ٵ����v|�n�r���|�X�:zĝw�s6nH�����QU��[��b#�d�i�{(���T�{�S��vf���\\���)�5hы�T\'9$���L�$[���i���cL*��q��	�	m{y>hԻQ�)�y�cR^�iV��;�3�n\"����3,�E\Z�\'����Z)E/7dq�;�\n�E�X�ƢЫՔ�N��Wv_g�0�򬲾7�\0O1���c\'^���M�M����N������wt�V�����\\�۩d��UR����k�r�^Fo�X%V��ƺ�͍\r׽����ܗ~�����:Ҟ��}�u�E�S�hP��4�\0i��#�+鋥��]��F�N:\"���6�˸W��O�����5%,EX�*t����)�k�7�eʩ���(��թZ��R��ߑ��}�3�h�1y�z�pt��c�S��j�쯹��oP�p��F\\^W.�(+i����36�*���َ+\r<\'�ӅZ2���~��6�a�ʷ��H��-��g�����T����\'����5�ΰ ଫ\rk8��\'�\0���M�L�����%0�7���^E�_�j��Ѯ�H\0�\0\0\0\0q��J�U��8��o�Y\\�T�o��w�U���Xw��X겣�uc�ԇ8ǫE���+��̞�a�ގ��\r9~v����W���6��7Ȱ���.+�:��F�J��7���ߩ��|L1y�#N�(F��%J\nю����v���\'N�,h�xd�p��A=�Qy���\0��5_��]-k�a������7���F��eW��Lpy�/:jT��F�I[�����.�<L`�O����:7p�kW���j�pѪ��RzӺ���\\����~վ��>��W��늪��\0�i\\sټ�k��J�IRr�+�Sr{�����M�RI����?�X�����ԝ�69�+�\Zɩ;�-�E�?j�����%�_��j������Y_�;����X˒X\Z	~�+�E�r�nK�(���|�Ģ+&��E�ɭ�W�3��ӵ|V�ye��7\Zڜm>�&���♭���,u)�rt��jW��-�S��X�8��+c��>KN5c(��r����cZ��\n�r���*��wu~���ۏ��єԢ��ٿ3����O?gV���sߚ��YĤ�6���k������<�0�s���oQK�;��[����.�hfK���w�nZ�7J�N��\\�)���\'W8ќg�����漮��y���JX�UJ��\'�Sw�-0ڲ꾏�	K	�YZ���*s{�R}O�Ɩ[����s�9�r�wu��C\r��^���R��t)S���IS��o~^e��L0����_����S�Nz!Zj\n^v>��^�p�OK.ˠ�N�Vޤ�9?3�L��h��hV�¤e&��N��W\'���9�%��Z�_��%/�p�7���٦�ۢ_\"¾��Q��m�\"�n�=�þv�4��]��[{���:jU%gɽ�Y���u�r�\r�����Ko⼒��ysv���c�ʨ*�Ҥ�zXx�[u�H�}9�Jj5$�x�#|��\"�ڬ�t\\�weJ*_Z���`�mGr���-����E5�;�J�).��7�M<<d�l����R؄��84��[J��g]B�Obh5J�oh�����y�Mz�ʆ&�ϥ;�ߩ�Q�Z4#RI�m��{J����4��6��Ȼ9\'FWv�Ą��حU�Qkf�ܬ���تT{A�S��\Z��ի�\'P�r���}WM�*�?벬$0�e���>���G$�>[����ip�X՜�Gi>{��\Z�x�6�\'ԕ|�	V���Q���n)�q.3�&+��:m�^K�5��?e�(G�j8EGM�Yۗ#��{k�b�<>�x��RI\'�-�.\ZRq��9~s�������4𲦧\Z��=m٥�͝C�{4�2�6Y�קWRq��S�Y�:���l�k��xϋ�E���I�}��Oh��.[�*���UpKW2�*\n\n\nJ>�ۚFS#�=�����)F1�䣲��qJo��N?�-��f�؏U�xz��W�Rr�ݧ�Ǔk����ٸ����o�#�Vk��_��)�z9�*�Jr�T�\Z��(ipm�ky����M��y�\Z����?F�x�I��eu��?��1���O�<ڗ�E��T���+�R��[�;Q��m�R����I�?��J�z9�xG��KJ_q���� u5~T��fg��-\\AW��;��xc=�.��7����+�э*Y�uMn���)����g�X��1�+�rM�/�ԛ��6%�6F�XL����M��mٶUR-�ܶ��汎V���Uo���?�u��)m� ���(m7�r�%9Y=�C\'.��bcQ6�wMx��	~[�چ,�W]Aڜ$�x�m���h�JJU[�n�>��\0f̅��p��*S��Rоu�y��ߏz����c�qJ�I��������߷%���+c�eY>_�]e�,>;)w4�ux^����\'��rv�.K�O���8���:�k��?}ŰՐ�W�>r�ݱs�8�G��~/һ\'a��֩�\0xo��݅��f��\0���TtL=99>���3�M����s����G��T��+_��ϴl����_���w�w|9���F�T����f[`��Vy\\��]R�#��?�V������������G%�,�����9�yW�|-Ļ�l���;8K�Wؾ㏋��\'��[�P�Elڸ��NM>���&�`39ӡVq[�]OC���냇��?m��ڰ��m���>b�o[K�6<�?�cb�J�f��Ro�5\\��%V�۩�7�{���\Zs�L�]�3��q+�K	���M�^g��W�+r����K;p�YW*ԕI�M��wۄ��lc$��5-tg(���M�F�J�S��eU*iWl�)8�u,�M����l�X�F�k���]�bV/5�K�ȩ/e��s������fY����#�w2��x�~6_��l��wYY-���x<\r��?��ժo-6o���c���eN�x�Q$\"M\"�(�Ix$�.>D��������Fp<Ƨ�d�������b�\0�ϟ����߫9y\'����\0E�-��g\0���[�4�/jϡ������H�9Ӣz��A�j/ȹr����r�L��ʾ���?C�v�\\W�������ݦ��+�����u|ou��h���d��^��я5�%��\Z詤Ӿ���U:u\'8|�L��_U���r�q��R*pRM���5�F�Ft�Y:�r�����SF�Z�T(�WwV}.w�����U��R���b����N?��%��<>�t��ڽLn]�g9q޴�|G0���\'OZS�����^gpɱ?+�R���]�e��a�ҡ\ZJ�T�d廱���\nQ�N**�����y�f}/@&V	�M��J1{�3�����%�����=�iEⰗ�	|Q�O�0����o	�Q��9�&�wFT�(i������t�qg�[���F�O�����NS�WY�o�GU��#�jվ_�9Oo���9�]Ӥ��\0��;;�{����[���M��h)㰪\\���g:��X不oo��9ys3��n��ZsE�9R~����ۿ�U�:��\0���\'C̻P�|���N4���R���r���o���c#O��LEv����خ3y2���k|��s|u:I��%�.u*��cӣB�9:�z��5�+��v�CW�*q�sE��6�}�޲��\'��i�Z	��n^~yX�/.\\rx�e���p�p��,R�c=zv{r�����X�Ξ�?��Ϋ\nr��KEs},t.�j�<L��I�5��aO�a��B���k��P�����宗�\\|�����1Xm\\6*3�V��8MY���z\\��a�)hSS��e�ٸ�K4��}l$�Bu[S�֥��\'�V1�E�m}���f�[�Ը��cO�&U\nZ���I�q\'�=MR�ȯO�N�ʢ��E��Z{}�J�S��̦��z��UJꢌ����I�����Z�k��Ei�M?�(���r-\"�2i7��&���u|*�_�өR�\'��0�M��JqWߛ�]z\\�z15_���{���1y\n�pҜg���*�i9�Q�|�K�g���7��n �,�+�pq��8���6�8��p�#\'�%ʥj��LL�zcQ�~�W��xw&�y���Mҝ=7t�5h��İy����w�2�SITm_\\U��;ߗB1�񞑹:�V���4����)8��Y�E}�]��1�e��(�Snul���ۗ��ܞ�n1��XV�����}3i�[�s�\'{{��^k7�˛/ӛ�\n�.&��ײ��R����?v�����)K���.��RMN-/ړr{r� �B����W�O\ZqW��9?���p��SMZ� �*������W�.^e���+��c�xS+�^5\'VQ�)ٯ�Ǹ���V]�m2�~�ywX[o�h�.L��Z�{\\�XJ��M툉�v��<\r�ڧ��C�۾V�:���7o���m|���\0�����+p�7����#h�?��/���5N��j?(��G��\0g6w&���KR��UVڝ�KM�Ν;/�6�\'%�&L�&���B5��dj��:	$��TU�(�jM4�s=������j`��`���)Ku����\\�Ǉ�����d������3��fc��q.�1�\Z�Jw��ɽ�>�f>J喢�k9�1�|L2eВP�SI�wn��oFi_�eڳz���-����S�u�]��^O��Qr{-~B��O�y�iE��W�ԮT�W+�JU$�ݷdOP�{����\ZTa*�*IF0�Γ{$�Ϯ{���g	���>]��{�q\\����h���US,�G�x���E�a0��\r�|����;Y^�s�����{��T�k�4n��7ØL=��R���w�\r��4.6�c�W動S8�[(��&�o*Q���J\nфTb��#\'�n<���H��R�v������_r2|7Ϫ�\0��E�|j*�B$� \0\0\0�g����e�ȳ���W꿁z����\\���S��*.J<�3s��2��<��%c��VԸ�\0C!�_CF��B�q	�R��m���qI�VQM����\'+���Zb��UeJz�����o��ֳ\n�J�V�঴F7w��\'Ϟ�<ԗ\"�[���ӼvU���\"�!�c�м(�����M[�Wg�9_�q_ɟ���j�qF�R�*B��N��Ֆ�w��gkY�3��b(S�+�|�+?��Ek,��Q�`퉩�X��\"�=����K4Zub��F�\0��{}o�b�����c����W���|�ܷ�H��d�DK�G;���lwi��B�J��qԝ��h��4̨(�|�J0J֊�$���a2��󇏯N�*���Q�{)6��FγJX��VU#|M��?nL��ۇ�śI�S��O1����T�Z�Q�j�E�}��1������m��*���ѭQ�*4��~V��>?��Z�\"��Ew~ͣv��m/����Jم/)�jʽz��{Sw��aa%%����Q�,���y+�ܴ�o��Mt�Yz�Y��kW}�.S�Ԧ�	X�r��ԇ��B�&�����]Jt�b*Ԅv��ݗ��^��+um-�Q�:sN<�\"*�*T��[U�u+�M��`�Up,Ƌ�_+���WkZ���S�rp���e���R�I�V|ݍ.[�AR��Us���6���!M4%f���)QVH����~�KKݫ��[ظ���#F�=�N齷v�z�,ң��NҥN�����I��f��Zi�\\��+5�=���J�:^W����O_\'�n-\\�4���ĉ^�;��t�d��]\n�L�N�)�v����c��~:/�x����T��̬������\n��E\\e���N��q��5ө(J�O{=��k8�\0\"�E�^J;���Q��������өWّ�%�wZ���6�,F�EZ��Ϧ�- ��aqT��9�J�*rx|Da�*q�goX�v�,j2��n�\0,�O�fqO�z�e���\rv���*i�J;��:?h\\9��V��<�N5+����;�Zۙۮ��~q=��!SS��Z���&���\ZGg<�1J�c[�Ҏ�V	oyo��nn�ۋ�.[.]%���lg�	|�bf��W�g�e���\'����՞շV��iu�ͻ���=��Z��s\\�sq�vs����K�xleM&���\\M�vv5�Z��e��%��̋^N��]����̢�QB�6\\����/#\'-�J��F��%�:�����\'fd9B�J<�[��w�U�6x��~Q5\r�wg~�|���\\f����o����_��:�Z��E�����r>�-U���o�w��s���R��p����L�Ű������\rs�8�+��2���u.zcsbis�g�Y��v��ɖx���㝳&�ĝ�d����2��8�\'����W{���$��0{��ܣ���9l�_*���	��ݙ���ᬦ���)��JT�f���n;U�q5#J41	��W�S�F��k��ʪ��R��;�^,ou���du��?a���)~\'���*�S�>|��\0h��I���$ݭ>\'���VQO��f�\0A��Y���\Z\r�\0����w����f�yk��\'$�\0����Q7����4������Y�R�i.���읚�/Ds��Q��?����������y?S�J���>z�)�g�W[��]�����P������y�S�e��X��S9j�%M�\n�5.^��̔>IW�����}NY�Ur�Mjm_�����ܼ�N-Q�(������Y�.��c��-��L��L���!�S��c�M�T�N��{G�J�j��o)�:9f2���8���e�&c��[j��myG¹���/��ԟ%�$b�cr\\���i��^h���^<�o-^�ۻ6���S���j+v�m=����\Zkϡ^OM8>�8O�xHQm�MI��=�k=�b�#��s��b��[~�#�Eyf���$&�(�FTD��}$Z!6\0$0W��?�w��|��EM>,�����F|�߫9�����ǽ��g��m+����3q���\0/��^^�V������	)��Q?�^�G��D�3�v�g�8�?M�N�>Lལ������9��t�ou�Oe�jR�eugg��Z� ��k�tt��-s���:�[���`qP��[���K���L}\ZU5E���!��uL�	��5e:7�74�;$o����ٲi��})�ڣr�ԝ,4\'\n��[S���Ҳ��rl.\n�)�����M�oS?�W#�`e�x\\e�����g��NYǗ���2Lf&y�iU�9ѝ7(J���S�d=�e8LýTqj�`�s���|>�a�\0��Ko�q_�Կ.��yx��u\0\Z�\0V2UΖ*���ū��Ut��q�K?��f;g8s��H,fRQ��m�(?����`��~��jE^P}S4�\0���\\��jx�n��ϛߚ��R^?h�?i���ҋ������ظ2�̩}tu8|�r���\ZV�h���������q���C\r��Ŝ�?��տħ�Tγ���e�_�~,�\\I�S��%8?Kٷ���EV�Q�UM���aq�a�ZW��go�ʫp�4���i�k;��tw۽���#Oٕ�}�?�Y�8O���z-Ϡ1X�a(F1�����5�O�>y�W^�qJ8Zq�9I(��yܰ�\0)�R_&juڵLTױ����3����M��{c�E.�L}HV�*pt��\\~������x�T)T������+>����o-���>�j��J�ij����x\\7ű��&�8W�=�[�����F�Q��\rE�ӣ�q�h���Jơ�Ī��W���!ͱ9�s���Ӯ�ܚ�j1�G�8���	d핾�{���rkL#�+�n�����^}\ra4���㳽�ж�%��b� �B�[��eU^.���	��[�����오�.^WS��帥eb��+x\ZH2*Z�y�;��G����))���K~⅓�^n������|���8n�꺙�.Z��`��qI$�������\"3܌�f�e�X\Z��,*Ui��)5h��	o���K�_�1��Ӌ�\n9�%�/���Sw�1�r\\�r��\\}Hʴ�wJOw\'�Iu�kyv_�����fs��\n��t���4�\r��d��F\\;����oO�0��8��\Zr�\"�\n2��(��qJܒ[x�l�a;�����mF4�姭��%�j8<΂�3\\�\r%^��ù�wN\n6���ӻ�F����U���M$�m��F>[���w�s��LvT��vU���S樫i�w�ߟ��Y6k<_�k�/���&��_/Jr]����h���Jx����ħfO�V�����xڧ��E���F���վ~S��M�\0<��q�\0��8��焷�)}H�\rO�ۮ���+�#h��,��_�v�ŘlF��\rNN���J������^g��6���_6�ZIu��*�r��Z՜������Ӕ��olʕ#{\\��~����U*�v���eb6�o�!�ޥ�ϥ�]u%k??={Y~�L��\"Z��KO����8�	,6�K�IFi�����2(7��5[�-�7��x��p�6��燝�k��[�����sq�kY�e�쌚�r�O{r�-YTJ�[��YuX�5v���5g���d���\n+ŗB�Qq���[���\0ٿ����W�y�wYa��t0�t�d��K�qz[5������3�G4�e��^�{�(�0��k����wI��q7b��Oț�y�����A��.�sLG8e�HQ��n��Y��h7���_-�qp��Y��B_��\0��l}Z�K�/�%�ƳZ�r��\0_!�=�_�R{/�6�\n�D �P�`I&k�W�x�5(V�:�P����?��\'����R����/EI���g%euk�zi�1�~N���k�j��ׯ�\0�Q�g���FQ�SV}W��\0&Yy��uժ�i��er��}�jN�7̴Toȧ��ȉ=�)S�����ۣvZ�\r3M��j�J=]�v|�*���Ӕ��Xj������N��8�`4��z����V�,=��=\n	���gr��l[���\'���k+�.K�G����ݺ2�2��B1M��Y.��X�Rߡ����k�P�������\0o�K{}G�N8zJJ�PI�\r��msK��<�K�ͽ�\"V�� C,9ZXJ���aN�L4(T�eR:����z�8�O	�Jt�J-���i�˝�C�X��3��)����}uS��r��\r�f�Ԗѽ��%��0vc�\0�c��d�N�ehˣ�]w��*�_��J�^�?���`�\nqIm}�aa!)e��K[+F*����\"��iZ�\n0�ۮ�%/W�\\�������ʤR��L�_jk�����vH�ׁ]ofz^��-M�%e������-�ۙ[W��)�q��\"�Un�)kh=��\\Z\n�)��7M�%M}�2[l�I�Ԕ��)���\"���B�ӊww%���Mڕ�e�\\�cw���,+Y�_�wN*S�Jϒ^E���Dn�g��eړQ�����v�o�.Լ�����Mim����W��\Z�\0$u)ý�]�0����O*mo~kf��{�����5��0U\\V5K�Ԟ�&���s4�b��UL&:��^��8?D�\0m�����%�R�J�ǩCW^%-˧�WJ�Z���˻�S��^���Jqm���	�w��q.0R��m�W{��q�ڎo_�X�꺡Zt�Zn�O��t�i%{3��M��j���~�3	�Zi�q=> ��#,-l\"��<=t��j�\\�;�Q�E�&&�`1��ӎ&���Ex�=�\'��|����	^�\"�*R�g	��QwMx�.����xݲ,����o�a���2t�m���_?�Sq��h�O>��ճV��6^>z���/>��[�K�s��u|���56e�K�]�~�[��,��\r��O��5s_Lo�;�J�ս�E\Z�F�ݽ�6�F�![J�����mz��ڵ�Rȳ��:�2�\"�i���^X�Y{M{u5�y��=�ާ+�-b+J�������#�kK��3\"�\'�S��ߛ��V�)��ߙ;_q�=gr���%���#��\0��;O`��c�������4�뤽�c�;\r����B�Zt���n�6��o[X�%�M8�\0o����\'��~����\0���P�����G\r����*3�w#O�5�sMIl�\nVv�-�ԥKč5d�-^fvTu��y�w���cKN�\"����d��?�iq����8�J<?_��q��\'����翖���]>��9\'��K�=L�l���g�����i�����(ĵ��-a�7$�\0���r�\0�)��;7frՕ�w�㙬T����3�va/���DoV;9��¿�2�>x�\Z�Χ��\'И��=O�Ϟ��z���������mC2�*�J����G-�(w�Fi�}��*�m;^�=⼣��%���:���ص��Aj-�-;2�?f>�#��W�ƒ^\'��Ж/�%���N�n^&�ٖ8��-�}H�?���Y���p��\"��t��V��$�$��h��)µ�2Y�*k���E}�}�09.��	;xۙ�v��C6��Do*Qmz�_�m�������&�;��MG2��&�����3\Z����ob���u��/4w{ņ�#��1Q�]�t�?��FG-���u)7}-?�߁ӣ+$e\"���L���LxKr�d_L,\\*E	�t&E�!\\\0\0C\"\\�d6R��q����}S�_�����p�+���[��ۡ���?�a;�G�۸��Sk������6������Λc껽\'�=ʙEh!^�i��m$��f7-G��L�L�]�K���/���y�a0u0��\"Q|ܴ���������2�`�M��-����I7ۧ���x��W<�l�͙�,�K����m�4k\ZV3��/q*�{�tY��W�K�H�]�O�d��Uߋ1��:�v���k�Ȯ8�~�ˡ�)��+��1�ʽ/��ŗ)�d��_.��\Z��/a��k�Į��zu>�1���MԼ�����_�홟��b/��|��	�R�kU��)���{~G�q�jE:��P�u/fsI���v˚�gz�N���Q�-թ\rN߁Lf��u��u6~w̨�tux�d�Z+3�w�h�p�4|���~]�~T��ݮ���W��g-�Kޕ����gM�vigTt�7�+�Y�8�v�\'�o�̷���r�n�����\0)����E���^fv\"���O�\\����?�ߞ��:1S*��i��Q���;N\'�2������1P��O\\iE�)u�4pf/5��ҎF�,Lޘ�k��o��;s���q\rh⣉�������\'��e�e�9M�Zh<O_�s���5B�b��)��uo��{\'ȰUx�\r}\Zu����WOf�Fk�<>��%\Zti�Q�\"����_/��d�~U�v�J0v�]5������ǥ�>����Y��\n4����#���E�5ʲW�Q5*�nޫ��n�~?{-]�_�ӏ�*�8������ȕ->�K�\nڟRv�-/��q_�������(��J+��*�I�g��e�M#Lgfٔ��}z�JW1���^�����=Jv�o-����GE�r�F:�����_�M�S�ڛ�r2qĦ�d����x������î��;B\r4��sqܵ�ٸ�pif��TĵR�6�gҭE��a��C���X&���jՍ\Z��)m\Zq�\\ߎ�\"�O�s>�,���iug$�l����vS�xZo��04o<�/�r�w\'���0��oj~����)�Q�z)�:�q�{4���V�\0��eUeSQޥ+ө궿��18njXlE8�1�y�t�d�\'����R�sy�j��ü��[K�-{��]יů��M����}<�c�_�\\�߾�9{&�~0�~1z���+4��]/_a+�n��cG�u�8�����B_������8��iM���	~u?��u�}]XR�)ԫ5F�r�{Ei[�+��u�u�xZj�Q����]���;V\'O1�������EFZ]���C���n�\Z����ѫ7M^pi_w��,y�s��<5+Q���Rݞ��l�\"�G��Qd�H�4�E��q���!U�;$М�խ�Z���2#�U�s)`����0�f#\Z�k^�ĺ��q��0X��%�a8у���t�(�tN�l�{��B?�f9_��|���:5�Q�Bt�iFJ�[g̲��{��r*GV����,T#^q\\��{�יͪɩu�����mǞ:�d)&�\"Υ	5k�Nkk1?>�o�l�Ii�7���gO�8����zJg�3C�4��z�m]5\"ӳO�[<��a{}�N�jB3��-I������x�@��\0����˥-U1i�3Il��~�67Ы%\Z����z���Z��﷣�XՀ��{:Z�O�E�7c�7��,�iV�Z^w�0�`�>�qJ�Ԟ6t�A����ܙ�p���0Xx�=�F����V�b��%%BVkX|4�w�������K�!\Z�QU\"�J7�T��\0|�X��~��_\"�/�-_��_D��g;ic���]Y\'����_[�MY5����jo}�rw��MGv[���I���y���h����O����k�j$�R���\'q�?��������ΐ���s�[�p�rv�w�g��63��2�2��%��D���{}��<y�8�_��9��V��\0���ǹD`����V^w�5�V��}GebS�����(eu��B8��v��/e3��v��U�ʰ�g�,��;f�9ŕ�ԗ0�3��3�.w��+=Q{J/�_�=�+e��vj��|<�v��/�?r|s�q%���u�\Zk�\0��K�����I����hj�;��Y�%-)��睍s���T�N�V�Z{�]���k�z���&ݽ�~���:������1m�۟��&�y��g̜=�UN�I\rU��n��\rE<M;O��B�X��-3��bVi���Z��9Yrf5E��>OТ��ߕʧ+r,M���%���)��\\�;���4/�4��ve�\\��+NM�SBmnD_ge�T�\'��\nV����R�\"���	A�JOg��V��[��jU4Ӕ:L����lU1v-;�+s#h��-w��Y�yY��]rwߕ�J3�\\ѐ�:�d��I�fFW��`�xJ�}UKF��Jm�e��a�X�V>��c�T�Rv�I�S��W��V�-7)�w+2�y%d��,����թnP�[�4݀����{\\�7mĴ��0]R����U\'���&�~�o��c���JZ�k����0��ͣR�M;]��>�����*r�gZN�}\"�_Ϟ�,��i�����Z�N�\n>}}�Ϭ8w.��e\\%\n�K�������%yo㧩�����!�\"�fz�y�M�\0g��\0�z��c?�sc�>6�/�5�]�kSwF�Ǟ�o_뿉��{�e�������%$ݴ���a!����虋u}�{�^�ֲ����f�̩��b\'M[C����1�f�g��^zkJ�YUq�kJ}Q���N�h�z����T���\':�xIT�l���Ȣ����q-�o\0���T/��6�T݈C+7�u���J�hylj�8�Mz�g$�&�v�lܸ\'<�d9�0˧ץ-����[��yͶ�}�N�����۩�;t�Y�_�M���a�;O�ҧI�i*�ݣwѣS��	�X�]��?Kg���|n9[\\�Or.�-9Z[0��wd�I���\'�G�����	x�˄��;+v�A��)F���F�\r���������l��OC�8�3�p񥋭	E^�`�k�LOw_U�s���5��3��]��?��۫g�ĳK)�[�S\"���U<�ƚw����_�;F�q�yЕjz\'�J�Nޥ|k<�����c��k+�#�veV+/��*S��\'g�.C��̪��<��w�b�Z嬱Ӻ��KS��4wͪ�f{����yP�)ק���h��X���ҩVM���Kc�>.?��u1q�:u��iT�]�3�m�qp���lΜf����x��18\Z�j\Z���c_��m.Gf͡��J3�rZ�K���kF�,�p��Qi+#��|�z�oݔ�N>��F�B:�%�;eyF�V�13��������m�����}�N��������1�P�a�m5\"ӿ�k+�p�/��\"����5�ȩc���_(��S����\Z�Z��Wl\\5�ɸ���	(�sk�4��bb��}!�ј&7)�.�ZS�m/KL���v���&�.Y�+��w��N���_�v�%�>K�k�V]�ag9=)���rg�x,�\rV�g\Z��%��붙�),z��f^��68�+R�\0̊�_��:���4[Ʊ�W��bUD��uj�\Z�ȉfT\"����\0�\Zc�j��ǧ�[wb�|e\Z1�I�+͚nsĵc�q�T�W�D+�T�55��GG�5��&�\0��c�Q�U�[Qu*[����\\�Nq�q2(eXjQJI6b��\rNN����g\'�c��j�m�	]-����FV����r\\n6�[��)J�+���9�i�#d������c�ӣ����]����]\'�ة^��Y�g�i�fy��d�I�%�ԪN��w�x��R���8��}+�$jR��vW��R3��i�3>N�IO�i?ͫ\Zgiy���Pv�D���c@}��P��1�e�S��x��b|^*u�7�V[}�-�&8p�弞�&��&�/_��R�\'rjcjJ.�q�Z��&���M�[�Զ�C���i�u3j��w0�mm~e�����CJ˙�������e6�&��Zs{�\n���-�grt��r�R�g�W	7˨�*�##\r~�x\\�����鞯\rȫL�]���u_�׭%\Zti)I�Vk�C�U�3:����ʎJ/��{#���5pԪ8ҩ�\\c�V.�{x|<rM��M����DÕF���R{���>�6�\'x��Ŀ,�f��[ɞ;����3�<;N�X�T�I�m�y�f�ޘ&�W_aru[��y��[�<���{R�V���u��\0�0��u�|���J57K�t�E�W������delo]�EJhI������5�\'��a%\'�@������b��� ݛ�+ڗwW���p�ֵ�+����c�=�ɏ���%V�\Z��(B0߭�?���i%ս͏���f�\0,�P}�i�o��s5,ڲ�E�%����n��*���̶�nE�6���%y;{��Ѷ܊���La�����\\�\"4^N�PW{H�&Q}�6�kb�;�見neI�3��i�ʧ>V�\\��^�2vw[���/�3X�^�޴̬4{�S������=T�Z�����h��ӛ~�ͯ+d�28\nz��k�ͳp���w^6z���¤�M��t���8�\')����}<��S��d��{�3�ٸ�94�J�w�H���T������gJU)*�Ruh�];�}W�]{�s�g�0�w��\rN5zsox�ϙ���8��	�FqS�ԗ3�>������8�x�nMV��u����w�����B�ҟ��i�Z��\\�/��I7R�]��w~f��̩��Ӝd�]Y�-��4��ܚz)��Kq���W�5z\\C^���SI�f�lY>5`�b�6���z����;G\'��[�a㳫G�iI�5\"���*`��E{�S����}�-�������^)�%�Z�B�0��\'Og~��o��)���x���T�ڊv��9�K���ǋN���4�8~�C�Q�#U�n1���R�ب4�5��Rk�R��]��-d���g�I�f�Uf&U)��CJ������^�[aᦵ�V���1gd�]L��u:�Rw-�iN1��n�j�q�{B�[|���;�d�2�\'���T�ʤ�\"�ngE��c��&��1��x�\0���������ܚ����)�:d�Us��7�����E4��p���\0�qj��>O�����f����:Ւ�uJܭ��9�iK���)I鴟��m�\0����MVӦ5o�{y�$�i�V��v�FׇI/y4�Ϳ����b)\'kӋ7Ϩǎ~MF*P����O������\'��U�GAZ�)JI}���<J���!�[[)�]o��˼U��IhK�M�w���9B3�&�f�Q��W4��f�4��5��}>gk�⡉�ӯJjP���>�\'?��\\YyM0x�2�30����ڣ<_�*G��~,����]�3��K彥SW}�\n�b��&������|M,5:zi�J^�]-Ȧx��zo��Mڛ~F\n�ju5+N*[��]h,-W�?1�^^���퓂��Iqy�*ú��K��uT�}���Ul]D�-���K��>�~�lrF�Pض�C�/�*���_i��\Z\\&Žp�K��:�?i;4�Ŝw�:�Q�\n�J}\'��ɪ{q����8���|��S{nyU�\\�G:w��qw��/ˬ��g-���j�,�WvO�\\���f}X��5�+2����C��%u��n�ҡ���3v�l+���ڸ��I�z����9/�ϐ0��Н�����fS�1s��^���?�\"�n;�F>iו�Mߟ���8�೜=jS�d�mQvj���%Q�[��ffN�����Rf��^]��:��7)7��Uӑ��\"�>�4�5�e�~#���P�d��ҌkB�Mx��BjpR��]��O{�4��woo#l����a0Р�R�a�M7�m�98��L��i����;�C]�r�ל\Z[9$��C�Y�9�S�����{4�3\n�e�u�gZ���%�I�~~�o���x����7�m��[�L�MhʅE����N�Of�����pj/��R�U�YKi[{��[/dXIO���I\'�T��U��fv���ÌqӅFNw�����-~�>_�ҥR��*jUU��tZ��\Z��:�+UիVW���ܿХ�ܡ>���ϸg=�8fy�\n����U�^Q��v���C�g�h`���oջ��S��9=*�/�V�\n�P�c6���c�ͫN�g9;���i1�%?��1�S!��3���f��_4��u�m���A����$����W���c9\\�J�#{��C.I$�^61��n�����-��.���59Ȋ.ӓQz��/}�#&���N^��R�Q�XǾ���;7����d��i����E;F����/σ�i;�^��z��r�&+�{���+4���*�ՅZ��U;�n�oJ�j�E<4eݝ?������N*q�ա�U��i�|�g��V��<���Ϩ�>̰Xn�a�b�ҝ<5(�ԚWz�Nn[b=M�W�a�ajʕX��s\\��5�����t.ٰ�<c(e�aSު�B�L���\0뙮�O\r,��k��G��\"Ԟ��%�������C��e���\n���a������p�8<e��ｍ�ꮮtq��ti�?��/�a�����S�Ώ��gM�Zl�>]W/+��l��+�i�U\\s/	^\Z���Q_LUҷ��=|��2��N���zr����L���eɍ�����\0�����d,�.�\0��\0U\\C�e� �7��g������nVx�v���$�\0,V���\0SY��sa�z����pi�\\����տ=��e�ֵ���B�]\"�F�\0h�9���R�7�9Ro�R�����U�ʧ\'S��W#*�&�*zߙb1u4ר��\r)I�m�	�����6�˔��[�w�r*�&*�Ujw�}�O)ZqT��H�h=4��S��o8�m��p��St�J��<S�X�����hE9^�f�J��ϙ{���fq�2�v�[��wb���2�6��24��5}��\Z��^\r�d��`FV\\�О�;��q��2�:�n��[ƫZ��*������\'�+9�*�D���\n�O4r���\"eK��%�\0��#�\0��F5R�^�U[��(���_�MBWfK�\0��?���r5U��\"�s�.\'������O��4��o���<vJ)^�R���.$̝t猨����rw��B��/e&׈���|y%z�W��9����{�#��54`��,�Y��\\]i�𣏕�>{�	�r�:�D���I=��o��1vwG��\Z*��*wq��odif��g�_Edط�*{�2�|]�Ӗ��f|�C�3jPP�:�K��ʥ�Yğ��b9�6&.����x֌q�\rx�چ�|���S�T��3���~s^��,��.���T��7\'��]���2���w0xLD$�;�C�^r���M�h�ɟ0Ҩ��?��x�3�R�������[\Za���sI�}2�u+�-������a[�\"�q�t���_���3ŷ���N8��N��Oh;3����r��\0)b7�&\\��Y�V��CO��Ξ�i�1w�]Nn���5c���-���q_���e=.דl�=��kEʵ5��#��p���.���p���b)�N4�9I�$k��,�=U*ҿ�F��]�`)��J�&����r�^/7��r՚��qT��eN�^ƣ�����q�WV������<�q>WU��o~��\0C���p�c�;93�O^�z��1jL����/�U��\Z)��Nl�y.�-�ߢ-����)��ء�\r�w���Z�hŋ��W��V#l�Q�N��ŧ=��Ȯ����w{X��M>E��>�-v��yQ9+_ĳ6䝙2m�\"����%�Y���fQ/J7ܧGX����סv��$ˑI\r!T#v�2)�7�j6r礻x���L�=��J7]lzo���SZ\';ݫ\\˔����p��\Zb�m�V!N�2Ӛ}w(s��&Yb���%��[�iFi�r�EEk�h���J��	&��L��nf1ݫ�W*��y��%�G���.�6���X��\rK��^�S�jO�D���2r��=�K�g����zi=����1�)|�7���`��}F���V�>˵���;Q9�u*���y9U��w�����1Rwu�7���̳9�B�UjJPou-ɜZO��]ߚ^�E=�Ϟ�6Ƶ8�.��x�r�i��Uiܹd�Ÿ\'m��&i&�S/R��6ԙJ�����bY0��Ľ��>�Ւ�*�����7��K��[�1\"�k{X�NOV�����\ZeB1��d����V�gne�3�т�=:S���s���Q���L�5,שӆ�G����R����\Zu\'Nut/��V���ӓ�k�W���T��u��+�����U�#W��;���ms3Y�U)7����V\"��l<��{�.3�.��.M��+��\'�#s�eҌ�����Wp��z3v��\"�\n*�Y&����d�����.-���\ZT�r�)sl�S�0��~�^Ɨ�9����A��+����|�$�zj�C5��u�k�%f���uuF*�VK���&����K�H��,�[?Be$Z���C��sU����[�N*J�]���oc�5j:m�K�\r��2�h����L��\"�ۖ�u]�5;�ӳ�SV�)��r�V�ٽ-�q�ߜ�$�J�l1��U���|̞ ͥ���M����<g���m㋛<��N����{=��SZ��������a0�R0�����GH�ܺ9n\n�]�W�^#�-M#�ݽL�\"���k9ws�=T�Z�Y�1�%����9�ʔ�%t���;VZ�ɽY�{J�\ZS^PR�&���y��<9vߞt�ps��>is^(�\"�|�	<*P���B+���N���Q��u��F�S��TUI?slߚyH�Ǻ�+��\0?�晍������\n1���!6ڿST�8�d%.sNo�M��Q�n�������n6L4�S޼LcR�R���׿\"3\ZTe�Ur��-�m�D���]j���d�xB�w���#�������ӣ6��fg�tʣN���Nُ*s�-b�sR0���d�rQ�m�-R��{��\Z��ڔ]Ҳ�>�_��qZhS��&h��F�;��h��s&Y��1p�r�9z�$��nfG�{1���\0�Ş[���X|5Jt�V{��l���^����eC�\0�Vk�������b8�u���Z����W�37\'(ӣ��T�=���{�Ƌ�����k}������(\'��ZO�\0���&+��7N�8.�$�����K\'�B\nk�q{�2���c\'��R��<��\0Ǘ�������Wp�5IR���y+�˙�,�f��߉g�������Zi��#i&��):��ׯ3���2�R�����aU������ڳ�j��B���^euZ}Kf�)4�V��:�I��-���c3�=+Ɵ�$�k�ɘ�Fq����:�,�{l��3�{ژ��Zm�oT������//,�������a\'���d����V���m/B\\ٍ�$��5l�*��|�y�Q��r}/�)6����V��*_,i�m��Z�im��g⭬=X<e~�M�Ii��r��TZ�������x��$���]��X���f����E�犌�]d����Ƽ���+Y��q9oRM�2�3J�K��m+��Kkt��\\�;A��+�T�����jmFN�Q8���Jq�%X�n\\�9蓔[�˓��ZW�m��&��5+��1j�-��j��ԹVjWM�}�j��W�HQe.J(�RJM-�\"R����#-��-��)��Ӫ�ħЇr[V�[��b��p�K����4�x�5ncOw�d���9�7�֏�%��6��wo�n~)y_��*�qw�Yo�\nx��^�Y}��j�m�	(�˼���3q5a޷K��[t5,>q^��Қ�=l�4�V�a^�r��D���=)�:�����{t2+S���MJ{�JM~��4��E�i_�\'�2�m&��(�r*��ؾ�J�h���P�^��4���I;�&f&R�b��s�\\���b��+�b�*�]䥼�����(��fx�/������/乘\Z�(J��������uj�)�W�F�8���׉jt�n���&��U��%��Ӗ΅jza\n�i�+������ݟe9>GC1�fN�J���JN6T�v���&��cq��׭V����M�u�cԩ�t��n\r�}ׅ�Yc��N�\\9����/�s�(Ӣ�Z�洦�V�K�Ɇ��U�j�l��kƬ�:5,�3��Nw��w/Ez��E�ߛ=>\Z��.m*���kS�*���p����i�W,����\0۬���`+�a)番M��I�O�iݠp�2ZY�:��5���M�N��/sV�f�mF�\"jM8I���F3SB���m-M�g�vT���晓r��婷w�aI$�q���Zx|mHR���>��8Ǔ�-�\'ٍ4�̵5͙]��Z���LR�U��t,��#\"�b�1��-�B�ٷuԙY�&�U��*����L{�˔��s�n�<�����;G�#;Z�	VNQV�N�<�i��R�=�U�h�cr����a*FR���ײ�=P��ގ�%Ӽ_�j8[��Г[\\�$����&H&�k������j����Bd]~���k�~�Č�.Ӗ�Or�6���\0\0\0\0\0\0�Eڢ:\'\0fW��O�wG8��G����q��߳ɔ�n5��WN��W�2��|���fS׉��6o�a��yR�7wQ_�s��Sǒ&���G@4s�\0\0\0�@n���ID�]��̪%	{%4ڍ6���{��{<�����\"� ��	4g`���9_���ݚ�~CS������Zc͞>�w\\aV0�x����x��)�ͻ���[�)����\'�\0)ɜצ���\\�_�&R9ܧ���\"ϸ��n|�+�*���ʽ\n�ө%�Ft\\�*�:u\'�Q��-�?�#�d����䛕5-��U�œ6RVo�m;���R���n��1)Yo�Q+ڵ���R}_B�.�)����ִ��TL�cU��~����j�}z�����PB���Km��D�oBt����)ۓ��m�)s�F��ݷ�{���2u_{B�n\\�+�\\��v��-�Ll��\n�ȿU��0�~��d�Td�gW��=^;�8�^��آr�ns�2��x4a�F�T���n���՟;_�-w�w�b��:��Q�h����1�uL�ͩ���G��9>J<�V#������sR�W��«�Y~����4��ը�I���IǸ�g���v�ZR�b�1�s�W��u���	5�-�.Mm�����m�r�z��I����Ȱ�7G�2\0J���^�I��p}~�*s��q�]$���S�I�{#`���6Wn�oOITKd���_�s�U���O|�ܙ���+ɴM7������+UU��cLrY�]�ٗ��gS~f�����Tj6���?F��+�i�++s���)ZT��|���ҋc������_�QX�U�����~��5M?K�c���էQ�2)Քmt��h�^&���\'�T�.�\\yW��e�zѵ�Ml�sE�y�uF�5�%���\Z�r�r5wN�:\Z�ͣɱC%8��Զ��ǩ���S��Q����ұ�:��6^�*X��z��l�����A�ZX^\r9n��g�&�aVuR]���{�<TҶ�gԿs���Y����m>E��\nҔl�&���qo��&�G7�E=Z�T��q>\"4��ir�zZ���N �!N�n���2sڮ.��T�yY=��;��sK5�e�ړ��ZsW<��5XJ񊔕����zX�F��i���v�j矝glWRw��r��c�WK8���EJU$�S�������v��z����U�Q��E�e��9�M.e2i;���R��2�V���f�ę���Ԫ]\'�4���o�Xj�T�����5\n�r�q�7Ծw�<�in���[\n4�)����:osb�<�N+�eW���2��z�1��AV���O}�\0g��)����1���^��G.Yn����=������\'lTU<�\rQG��9?T�y��\0�~&��.���淜)N���+��#��3��Zn.�s��l���E^�t�$���j.���=��ש���]F��kBS�F��_�;o����ֲ\Z�_F�\"ދ�%��_r=\\E��^�Q����kap0�:RZ�l��]q��lL�t���g&_k�}^�\0�,�0�7�\r�=,�*�_��z�cN���Ri~&����B�n�p�=1m?C1c1�O�ӡFIT�����v���2��ٶ�e�p4\\)�ɻ�_I���(�Q\\G���F+��;	q.5��M?D[��^6�����c���Ux�	o�M_��\0SΟ�_\'O�1!��x�u��7��|p���˭-\\���);t��֏��E⚑{��7��\0ԟ\n�\\{z8�\'A�qM>w<����\Z�o9Z3od]��o,��E���ؼ��4eK�}�������/�I��Κ�eg$�xr~~�>>\Z���Ծ��s\n�X������T��I�3Z��VK\rN7�%���K}[s0��kX�-n���`Օׁ˕�gV��$�����Z��S��|��mܳQ�.��+H��Q�u2�9�T����lO�]���lp�e;^sWm����sɺ�O�P���k;�\'����9B[7I�\'{��m�7��,EW	FRn2i�0�k\\��s���~k32�b������wZQ{�k����U�#+$ӷ�2�����c��yI�,d���K��yV�m�8lMk��)QO�����B�b�]h����vf��՟:��Y?/�����H���6j�Kj�c(�-��?q�m��QVw]O\r�k\'�l��<eu��?��OnU杕9��I�4������<	�k��vw�d<mv��Oo6L��a�RIi�?z1qJ��/�;����u^ꬶ�a�jK~�r�͓kկR�b�R�m&�4aW�W\r�++%��b�Q���Ynu������ک�Q��w-UR��oqL�I�o�Q��n�֜hN���&�|SoB�V����I��I�Ϳe2Rk}%�o�J��lB��O��hU�)��ZI�?Ri1�[]��Ju[��s�m�s~&��Uu12o�Ǳ�ߙ���U�}�h��,�ԖAfI%;r)	_���I�3i�\\�s����R�{��$���9�r��zu����=�0�ZjT%㽤j�(�)��5U<d$�eՑb��ܪb��J3Д����q�ӽ)hv�<���j���k���f8��N���{^*����$���:��[sm��:�N�+�N�:����Y_�并�[rIx���q50u�-p�O�$l�L����r�Q��/���B��2�\n�\'�ɷq36OW�S6�:wTܶN͞\"Pu$�r~&ez��.���:�濫�i�wu��Zl��ܱ$˵&�+ˢ�j��d�M��eϖ���[I�H����&����k؊��@)I���2ҷ3\'�r\"�/Eof���or�����j�Wf`Tڔn�]��C��aUwR�ǻ�R�<�,�f��2�=+~�4���wM��?�eh�~�p~�him���}Le.�݊��M6��m,\0t9�\0\0\0\0\0\\�SCMt-�����kc!�{AYW؀n�\0@\0\0\0\0\0\0\0U5t\"���\0�-�)��)D��[�F-�\"�,-j�����&U:�n�jk��r���\"�T�%(]�����Wi�Q��k���Pʰ�ԥ�=�+c|1�w.�a���KL��^ff�⹢�5U*�\Zv����\\�q6&�Z���+e[�&�ݜ���[1r�Tqxx�\\�;ߑ�i������͆���=[���}$cU�N̽RJ��z�;�U/�!ۚ�W�& nŻ4������Z��\"ʦR�w!I�7��d�>`^����+���a;5r�Z�`��ʪ[Q�Z�S�˧�3&�O��-M4��U��o�-w�u-U��mϩ���U��c3+�JSTk��Nj����\\�g��UZ����D���X�f�%1B�jN1��BQ���\0ׁ��K����{z��3_N��G^�`����|o���p�1Ԛo�wض^�<r���K!s2l]�Щ^n�Vr~�(j��t��e�1S����}Jr�p���j$׃6x��{+ȭ�_v�Jz*�=��˪Mre���keN�*Vd�v~�6�6W���&U�Ȍ�и�eks1ԕ����e̟!}Ծ�q��6�˙.O�ż��B��1��&;i��ʔ���D̓�T&�/B�j+nbFk�*S��_�^dm��r]	U,�f+����F��D�T�\\�R�ב��;�5�-9\r�{ƾs%I��a�n�Q����6���mEj{�3Tko�U�^r�l�$���J}\Zu.:���B��&U��آU��aTI+ݦ�(����J/�1Rq���[ȮYi�ƕ�ri��ܢ��/�����֨���~\\�s���p��\\��j�`�U�#���0�-����ݸB�\\Uz��-�T���D����tVB�\'�/S;_����&����Z�g�EI$��X�N��d����+�FR�Er�I-��gx�N�v��.c[V�0���LMW&ג����7�o�\"ҽ�\'c?\'���)�{���oQ�{��-U��ׄ�t��3j��V���e��VVӲ�C.�j)��,���4��\"�6��&<\\4&���Oqv����cZF�e�1)T����V�{����Ƨ��WAp����Э:U��!	^��vי��qΦGC�������/���Η�xoM+�\Z�Ɵ�W�r��ӽ��=�i�2��wri�&���x.Z���Wb�\n�\0Ro�ū��;��.-~N��8h/g3�ϦЗ���a�ba\n��(�;;F[�Ǎ�m���\Z{=�#�����pHa�S�KhE(�%����N/�J_�$2���hI������VU38(��R�����ܙ���^9����+ޜn���ԟ���X��3mPSIEG�\\����k��u���Fՙ���tr�\rLV\'S�j:c�R{(���&��CW�F�qµ*�j�zs�~)�ۤ[$�c�q���+�&�J��Iz\'��`p�g_4���1J1�e)$��]���s6�\\�<Tg��i�=�ӎѷ�����#$��񨥈�E�i-��Yx�y];N�>EE&ܝ8�����9N1�}�O�:��N0q�Ms\\�̚-Q^\\�ٍ��z�-�M_U�W<�ڥ<>�j�`�֦WKG�Pu���ڿ3��,�.��t��S�X�O�}R��V�\\ӓ����������c3e\'k[���*��ґ�Ufr���tf�H��-6���KF��[u�V��E�&l�-ז��#yE5oY��fu|���(EJ2�{��<��LEGRZ�795w�.4�U��{$D��)FJ�sD��bʪ�x:QN�*��*Rw��5������ٞ�\"��e(J�M��3��c�K�w�ȡ��Y]yT�\'RNN�\0�e���[4���Kš)����S\'vBW��ש��e���F�{mq����U�,�okX�J6�\n��+�X�&�̶��2�V�X\\����d�[6�Jn�nJ-W)���ۖ��)�m\\�r���r)��@��m��&��[O��[x�k��\\�����e��{n���kތLn8��;O�Ŀ�X_�ؙt��é	Szf��[3��wuwu�����K4(Ww\'o��d\0�]$�H��S�{-���d���uRm�-�E��;z)�%�~\'��G6�z�RK�Z1�p�>7�\Z{��mt�\'5Ѝ[^&t�,b�������U��OB�\0�J��g5wb5�*ۢ�*�JpKԗKo�!��j�Ʒ.ҩiߩf���b)�x��\0�s��),nN�j)��}R���&�o����W\'��UV�8Uڤf�U}�sĩ?�m�^N��j~�=�J/��Uj��V��sp\\�+\r+QQ�X|�]��b��A\n��b�nI�L�\r\'�\\��*��=��w�c2����h�����)�8�wv{u%��=\n��ô幖��u�`a�it�*���vEL���Rؕ+r�r�v���L�B�\\��&��2�*W���<�V:U���\n��)^OS�-�w�i0gr��\0��\0\0\0\0\0\0\0\0�t\0\0\0\0\0\0\0\0\0\0	[�	����VS��ҩ,]%Q���N4��pX�O\r��_���jF���y�c��\'�����f�^/\nۗ����K�e���I(׋|�U�ӣe�n\n���ԵYn�vfF�8����D���̰��SN{�]y��z�]sZd����BQ��<��\0k�)������)��4�!˪�j�)�\\�㫯#��qxJ�q���u5�	OV\n��c�Z_ӛ9���W�:s�ZR�wH�g\n{���-����S���6z\\CF�4��+]�v2����t�:nM��>�J�>{�%,�\r\'gWO�z9�\Z�Ʋh��i��ZQK�0�+JZ��r���U劘��[ԏ�O�Vة������ϩbU���Յ�Gy����\ZF�u�\\��7wtSxu��,9�%����m\r��T�Iʥ8-��z���P���C�\n�)?�.��*vڬ-�5Am�Bޡ;f��m�.��9r�y�Mo�A�̩׃߼��i�ZO�!�Ԑr�1��vO�V�;�V���ٸ�)��)�w�[�X\'n�;�������`s|V\Zn4�x�T��%B�������y��~X���C\r9�q�:��s�v�~[����_}��(˰�<��9�6���4Ǹ���ce����\rO�����Iw-8���܄�����#V�kW��i8�����hR6�!��+/�\';�N�{�=�\'l��핔�N:����][�\Z�\\����̓�J>���ӊ���\n]bYM=�ȗ4U�ה���q{n�c�J��S���$�����u����_�\\gͫk���S�ܰ����Ī���J��%J��&2���O�C���-OR�.�W�<|^uKQ�^n�/�mO؎��Dͣ�Fͩ﫩1��g#���q0�ze�L������rS2������:�˙�W���:�+���Q^/�n�q���%Pq����b,E>�!�i-ܶ[����;�]I�~F1T����{�B�^���ZZ2��߈�wz�Pp��)z2*T��q�K��|	�N���T�7�1\Z2*I��c!;x�T�����ך5� ;_QS�uB;��|J̻e�f�y�:�?���W�6��Ue�������a�ʽh�=]��`gG\r��IZ���N9���q(��j�	S�)/gSvF|e�Ɔ�U*NVZ���F���)lG��s)];��5��<:�g�v���Ǐ9[�Z�f,�����<�\"�]*\nyZS��.Z�V�e��ڝzj�Z��/EiIMJ��ߡ�JnN����.�٣Iӟ.M���j��=��F�yF���vl��x�=�����f�Wh�vޝZS���m���`jac�S�!JXe-���/yϲ�s�����o�=��x(|�����f�V�:�ъ�Om1]�\0y����:����J��ʓ_8�h��Z����s|-\Znz���is^�|�I�!B��V��{V��������`;�B�*���Mw��k�,vN��Υ��Tf�׼�Mn���旘,���������A��x-�Ǌ�^\\L|M8�QFI�M�����8s9�N� �U���<�Xr��ӿ��s/���R��K\\龴�w�p�c)c(F��T䮚v����k�eu����V�vp��oy̱�Q����\r7F57��k��J[���q����>����u\Z��8ʮi%J�⮶=�7`]:���ҕZ���_1l��|�GR��BN/���xw�nT�c�j�^Χi\"/�8�K�سt�X�Ui�7��ɷ�O�V�(��>,�Ԃ��t�mи��\n���3I��o9[Kž�_͚GlY�(d4�z�V�U-�_s6�a�\\�Ue��0�\\�Y�s:�n�V�\'�[L�3�<H��ngQ�!��R���\'	ׂ� �i^�g��t�x*�Q�ym%�Q�.%�����in7�a��[���l4)F4�6M����6��8�F8��a}1��&�����K�f�ǼU[Qap�Z���Vg���rH�8�4�0u4U�)I;~m^�-L�$��pK1M(�i�ө��F�6#9\'t��7�l/;�gx<\ZJxJӛ���\r:����]�?�sǋ�^�R�V��h��a��n���]L<l�[�Y���E��񽮏7:��<�,�?ù[D���񙜱T�A�(��Ƙ�v�,�yl�^�}H[�R�wMӣ���K�݊��j���fqӌ���.�P�6�ۏ2��jx�4�B?i�0��&3E\n��6ӋQ0�l�V{��^�S%�d�ѳ:2�]�/+�O��崓��΅H.F9N�b�寗2�ݞ�Z1k�Kx�L)��?W\"J�I��\rK�<�����8�E8||��Q�2�5_(��\nyn2��|��H�7�V�����-��o��WRD�[K��	Ԗ̥˫�jU��Kn�0�Fm�=��O������8ǚ�KI�$5ې��^!�.cks��~b�\0��\n�H��������\\�HN	n�K�Am)�z�����v����4��^0DV�;V�`13\rS��]O5�z����.ꢔ����)��1W%(�)R�|�Z.�K���b�-t��)A����2�3�e�zt0�L#�w�KͳR�I�4��^�J�[�)��e�p��aRMΖ���?�aW�\\}H�5��V�y�Ե\'����8�����\'Z�k�|[���	F��������kV�MGWV�<�A�؇�Zc��96݃�U�1�Ӱqe���u6�]y���6�4�][�7Ԏ�E6d%p+�$ƽ�(a�)(S��QeɶC�@��I�\'rjY?����:�@�JiI�������M���B��Z�dBD�|�떓����!Vn�����m�E�YSú�b[IBZR��ޛ�i7���)l����l]�*PV�\"�X�#���w�[�<��	8�T����Z��Vj�E1Ӟ�V�m�;�5Slx�o�M�R�\"\Zd�|�]\r�P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0/R�N��v(�9M�[�XX1v!��eC]%�L���Z�O�1���V\\��-j�G�$E���m�Φ/����<]9j�%e�癘c�Rn0v�����J�\\����Ԗ��C ����obQ\0!Rn/b�U�^͖﵀�v��J_i��jڙd.cFչ��۹4�N�l���F�3�TqML��5>��Kq�mvu�?�&�i�;�\r_X��f�>U2�#P��\0ʪx��T�,���6�򚯨�UUԳ�2M�׈���e_*�nwf8\Z6ɥ����j�ΦMOV.j7�m�xX�#�/k��&��Ч[��C�DCJ�@U9�[�M��� r��guо�r��~�-�Mxn5��X��Y���\'#\r����X�.Rd�l�mV0Pw{��u�����_�d��#��Cl�co+F���梬�0\n��\Z6�X٭��<t����IY�EF���ݽ�Is$WNr���ʼܯ�̵�XW*���m�R�:N�v,�Xe����q5q�j�Cv]laؐn��|5J5-NRRq�wkϚ=,���L�*8<K��J>f�Ƚ�\'���?�b��ƭߚ_���<U�f�>O��թI���l����@��h�vܥs\0�YZ�\'8��d~S��My!;��fu��}�~Q����WObdܷ���u��\Z��_ab�i֕��[\0�b,	O�M)i�k��e[��oCk�a��[R���yR}YK�\"��𘚴p~�r��T�KU��t�k�\0�0��64�j�k�N��PoS�ݛ�r��f����F�S�N*֏�Lq������N�kT�f���(�����u�\"N�=�\0�!s���T�)�����Cf�0R�:|Ɠ-�깍Z�\Z�[�+��\r4-�:�?e%d��0�^Է�H�R��[wo���2��K3��	%�\Z�F�-������h�h|�*it&\ZV�������U�X�Z����m��U]�).\\� \n�&���e;[�2�na�$M�\r>=�x]\Z��ۃ���=r��m�TS{� ڕГM�^�bu+Y��BN2MsE����r{�-w�:[ht.,MW/�ʱ������(�7ޫ�[����\\�$^�RQZT�b*Քߴ�K�isBu>���IA�-�\0.�+w�O�H���\0.S�(�n�)��X��C%b�o�!�j.���䶺!�w�U,�)��2�=��)/5�W��2�ʕsvKŔ�\Zy;�п���0��g��+��N���-M�e�amkU�}�4*r^���_����jQ��\0nO�\0	�qu~Dt\0W\r>�2�:S�4�$���`�\\�ꍬ߸���e�~\nTq���K#�m]����r����e�a6�݄ݬE��u2D�éqQ�)�z����)��_t��mD�Ks�Our��.:�p��@�����:��rd�\0�\0\0��7��C�\0Jl�Z�\\ʻ�.���;����~%�4.w��)so�!�4%��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0��C�K�\nB�M�`T�%�v|�H\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\0�\0-�\0�\0	��\0\0%w`\0����\0\0\0\0\0\0s�X	��\0\0\0�~A[�@�JϠ�d��\0\0\0\0\0\0\0\0\0wԀ�X�\0\0\0\0\0\0\0.`\0�`\0\0J�Rc+rE ����r�M(?qS�����t��һ \n��R\0\0ow�	�vUVMr!F�7b%\'.l�&Q�T����\\��ӊkgɔ\0�Uֆ�ܤ\0\0\0	��p*��܉G{�vl����M��\0 \0\0\0\0\0\0%[�\0\\\Z��7}\n�M˛dE�� X	�]9K�\0\0\0\0\0\0lV�u�@@V��(*VD;\0X\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[�J��۔�_b�`%�\0fL���\0J{���\0\0\0\0\0\0\0\0\0\0K�\0`\0��@���KV\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A�/2�\0\n��7dB��I�v�6@ⴗ-�$�d\'fWQ�����\0\0\0\0\0\0\0ʛԬ�� \0\0��\0\0\0\0\0\0U�[s)@	wd\0JN��C�b	vҼ@�\0\0\0\0\0\0	@@+�\rH�:k`-\"w�/ǻ���T���J2i.E\0݀J+ĥ�0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��C\0�2�-�|����ߢ\r��W��\0Uu�C� \0&<�d��0U�6K�M�.�\0.d�-s\0\0	��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0�\"M�\0\0\0\0\0\0\0\0\0\0\0\07�C�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0�`\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\ʢ����@\';�Ghܶ\0\0���\0{�\0\0\0\0\0\0\0\0\0�R\0\0\0\0\0\0\0\0\0\0\0\0\0̛�\0����\0�O�!�U4��;>\\�X\r��J�@���\0\0\0_k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?��',108247),(18,5,'foot.jpg','����Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j(\0\0\0\0\0\0\01\0\0\0\0\0\0\0r2\0\0\0\0\0\0\0��i\0\0\0\0\0\0\0�\0\0\0�\0\n��\0\0\'\0\n��\0\0\'Adobe Photoshop CS5 Windows\02012:09:22 19:31:52\0\0\0\0�\0\0\0\0\0\0\0�\0\0\0\0\0\0��\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0&(\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0�\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0����\0Adobe_CM\0��\0Adobe\0d�\0\0\0��\0�\0			\n\r\r\r��\0\0\0�\"\0��\0\0\n��?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F\'���������������Vfv��������7GWgw��������\05\0!1AQaq\"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������\'7GWgw�������\0\0\0?\0���>�s��Hc[X\0�|���L��=�D�>_�?�*�\0Z��O���V=�;�H�|��m>�����/��[}x���k���n�e��l��7����f�?E�/��RO���t0�>_�?�)�W����AO�r���=+��vFP��l�S?F�U�~�ܗ~����\0���*%�ٓ����l�\0\r�1V䞌���w�\0��0��D���H�l-�����*�n@>��}���](W�=7��X{��\0T�-��`�V�[r�=\r���N��َbP�ٍ1�2~+S?��cC��}*��Ç��1vF=��@��Ѩ>mr���11����O�5��Pj��E\'���9��Z]Q���ʝ�]�o�w�֐���0et�+k������VG���Q���L��|�i~�/Qu�)ͱ�h��%LӐ55<ϴ�\\\\j�iW���<�Ǘ��d}��L=�ӯ�����}�O�`�X>�L�cDз �T�	F^���A+�Gx:���[Em��4}�&G��n�˚~�.��^�G�\'�\0�Uq��x���.~ʞ���q��\\5{�	�J�� V	��*��m�w�pw����\0�[���*rGk��܀�V;Ęo��O���fh���;\0[�g��\0Cg��;q�7\r��\"�w�|�s9�[Wc�^T��\rIs�\Z���C�\0X_,��ʐ�1������������\0��V._~����?;���7�O�����~?9�����}���_🺼m%U���eܟ�w�G3��������$���x���O�������t��\r��~��?��bIK��\'5�_����������\0��o��zII?��������\0E��~�������bIG������\0r�)�?���\0Ŀ���J��<~g�Q�uܧ�/7���|�8�g��\0w�x�JXn؞�ѝ����|q�n���-�[�NF������6Photoshop 3.0\08BIM%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08BIM:\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0printOutput\0\0\0\0\0\0\0ClrSenum\0\0\0\0ClrS\0\0\0\0RGBC\0\0\0\0Inteenum\0\0\0\0Inte\0\0\0\0Clrm\0\0\0\0MpBlbool\0\0\0printSixteenBitbool\0\0\0\0printerNameTEXT\0\0\0\0\0\08BIM;\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0printOutputOptions\0\0\0\0\0\0\0Cptnbool\0\0\0\0\0Clbrbool\0\0\0\0\0RgsMbool\0\0\0\0\0CrnCbool\0\0\0\0\0CntCbool\0\0\0\0\0Lblsbool\0\0\0\0\0Ngtvbool\0\0\0\0\0EmlDbool\0\0\0\0\0Intrbool\0\0\0\0\0BckgObjc\0\0\0\0\0\0\0\0\0RGBC\0\0\0\0\0\0\0Rd  doub@o�\0\0\0\0\0\0\0\0\0Grn doub@o�\0\0\0\0\0\0\0\0\0Bl  doub@o�\0\0\0\0\0\0\0\0\0BrdTUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Bld UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0RsltUntF#Pxl@R\0\0\0\0\0\0\0\0\0\nvectorDatabool\0\0\0\0PgPsenum\0\0\0\0PgPs\0\0\0\0PgPC\0\0\0\0LeftUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Top UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Scl UntF#Prc@Y\0\0\0\0\0\08BIM�\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\08BIM&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?�\0\08BIM\r\0\0\0\0\0\0\0\0x8BIM\0\0\0\0\0\0\0\08BIM�\0\0\0\0\0	\0\0\0\0\0\0\0\0\08BIM\'\0\0\0\0\0\n\0\0\0\0\0\0\0\08BIM�\0\0\0\0\0H\0/ff\0\0lff\0\0\0\0\0\0\0/ff\0\0���\0\0\0\0\0\0\02\0\0\0\0Z\0\0\0\0\0\0\0\0\05\0\0\0\0-\0\0\0\0\0\0\0\08BIM�\0\0\0\0\0p\0\0�����������������������\0\0\0\0�����������������������\0\0\0\0�����������������������\0\0\0\0�����������������������\0\08BIM\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0\08BIM0\0\0\0\0\0\08BIM-\0\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0@\0\0@\0\0\0\08BIM\0\0\0\0\0\0\0\0\08BIM\Z\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0\0�\0\0\0\n\0U\0n\0t\0i\0t\0l\0e\0d\0-\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0p\0\0\0\0Rghtlong\0\0�\0\0\0slicesVlLs\0\0\0Objc\0\0\0\0\0\0\0\0slice\0\0\0\0\0\0sliceIDlong\0\0\0\0\0\0\0groupIDlong\0\0\0\0\0\0\0originenum\0\0\0ESliceOrigin\0\0\0\rautoGenerated\0\0\0\0Typeenum\0\0\0\nESliceType\0\0\0\0Img \0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0p\0\0\0\0Rghtlong\0\0�\0\0\0urlTEXT\0\0\0\0\0\0\0\0\0nullTEXT\0\0\0\0\0\0\0\0\0MsgeTEXT\0\0\0\0\0\0\0\0altTagTEXT\0\0\0\0\0\0\0\0cellTextIsHTMLbool\0\0\0cellTextTEXT\0\0\0\0\0\0\0\0	horzAlignenum\0\0\0ESliceHorzAlign\0\0\0default\0\0\0	vertAlignenum\0\0\0ESliceVertAlign\0\0\0default\0\0\0bgColorTypeenum\0\0\0ESliceBGColorType\0\0\0\0None\0\0\0	topOutsetlong\0\0\0\0\0\0\0\nleftOutsetlong\0\0\0\0\0\0\0bottomOutsetlong\0\0\0\0\0\0\0rightOutsetlong\0\0\0\0\08BIM(\0\0\0\0\0\0\0\0?�\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0�\0\0!�\0\0�\0\0����\0Adobe_CM\0��\0Adobe\0d�\0\0\0��\0�\0			\n\r\r\r��\0\0\0�\"\0��\0\0\n��?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F\'���������������Vfv��������7GWgw��������\05\0!1AQaq\"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������\'7GWgw�������\0\0\0?\0���>�s��Hc[X\0�|���L��=�D�>_�?�*�\0Z��O���V=�;�H�|��m>�����/��[}x���k���n�e��l��7����f�?E�/��RO���t0�>_�?�)�W����AO�r���=+��vFP��l�S?F�U�~�ܗ~����\0���*%�ٓ����l�\0\r�1V䞌���w�\0��0��D���H�l-�����*�n@>��}���](W�=7��X{��\0T�-��`�V�[r�=\r���N��َbP�ٍ1�2~+S?��cC��}*��Ç��1vF=��@��Ѩ>mr���11����O�5��Pj��E\'���9��Z]Q���ʝ�]�o�w�֐���0et�+k������VG���Q���L��|�i~�/Qu�)ͱ�h��%LӐ55<ϴ�\\\\j�iW���<�Ǘ��d}��L=�ӯ�����}�O�`�X>�L�cDз �T�	F^���A+�Gx:���[Em��4}�&G��n�˚~�.��^�G�\'�\0�Uq��x���.~ʞ���q��\\5{�	�J�� V	��*��m�w�pw����\0�[���*rGk��܀�V;Ęo��O���fh���;\0[�g��\0Cg��;q�7\r��\"�w�|�s9�[Wc�^T��\rIs�\Z���C�\0X_,��ʐ�1������������\0��V._~����?;���7�O�����~?9�����}���_🺼m%U���eܟ�w�G3��������$���x���O�������t��\r��~��?��bIK��\'5�_����������\0��o��zII?��������\0E��~�������bIG������\0r�)�?���\0Ŀ���J��<~g�Q�uܧ�/7���|�8�g��\0w�x�JXn؞�ѝ����|q�n���-�[�NF����8BIM!\0\0\0\0\0U\0\0\0\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0 \0C\0S\05\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0��\r�http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmp:CreateDate=\"2012-09-22T19:31:52+03:00\" xmp:MetadataDate=\"2012-09-22T19:31:52+03:00\" xmp:ModifyDate=\"2012-09-22T19:31:52+03:00\" xmpMM:InstanceID=\"xmp.iid:44740804D304E211A390B55F5B901458\" xmpMM:DocumentID=\"xmp.did:43740804D304E211A390B55F5B901458\" xmpMM:OriginalDocumentID=\"xmp.did:43740804D304E211A390B55F5B901458\" dc:format=\"image/jpeg\" photoshop:ColorMode=\"3\" photoshop:ICCProfile=\"sRGB IEC61966-2.1\"> <xmpMM:History> <rdf:Seq> <rdf:li stEvt:action=\"created\" stEvt:instanceID=\"xmp.iid:43740804D304E211A390B55F5B901458\" stEvt:when=\"2012-09-22T19:31:52+03:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\"/> <rdf:li stEvt:action=\"saved\" stEvt:instanceID=\"xmp.iid:44740804D304E211A390B55F5B901458\" stEvt:when=\"2012-09-22T19:31:52+03:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\" stEvt:changed=\"/\"/> </rdf:Seq> </xmpMM:History> </rdf:Description> </rdf:RDF> </x:xmpmeta>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xpacket end=\"w\"?>��XICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ �\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0�\0\0\0lwtpt\0\0�\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0�\0\0\0�vued\0\0L\0\0\0�view\0\0�\0\0\0$lumi\0\0�\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0�Q\0\0\0\0�XYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��desc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0��\0_.\0�\0��\0\0\\�\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0W�meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\r%+28>ELRY`gnu|����������������&/8AKT]gqz������������\0!-8COZfr~���������� -;HUcq~���������\r+:IXgw��������\'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�\n\n\'\n=\nT\nj\n�\n�\n�\n�\n�\n�\"9Qi������*C\\u�����\r\r\r&\r@\rZ\rt\r�\r�\r�\r�\r�.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����\'Ij����4Vx���&Il����Ae����@e���� Ek���\Z\Z*\ZQ\Zw\Z�\Z�\Z�;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�\"\'\"U\"�\"�\"�#\n#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&\'&W&�&�&�\'\'I\'z\'�\'�(\r(?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�3\r3F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<\'<e<�<�=\"=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F\"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O\0OIO�O�P\'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\\V�V�WDW�W�X/X}X�Y\ZYiY�ZZVZ�Z�[E[�[�\\5\\�\\�]\']x]�^\Z^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���\n�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���\n�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8���\Z�����n��R�ĩ7�������u��\\�ЭD���-������\0�u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������\n�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s����\r����2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m����\0Adobe\0d\0\0\0\0��\0�\0		\n\n\n\n\r\r��\0\0p�\0��\0\0���\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\0s\0!1AQa\"q�2���B#�R��3b�$r��%C4S���cs�5D\'���6Tdt���&�	\n��EF��V�U(\Z�������eu��������fv��������7GWgw��������8HXhx��������)9IYiy��������*:JZjz��������\0m\0!1AQa\"q��2������#BRbr�3$4C��S%�c��s�5�D�T�	\n&6E\Z\'dtU7��()��󄔤�����eu��������FVfv��������GWgw��������8HXhx��������9IYiy��������*:JZjz����������\0\0\0?\0����kKb�~r��\'$�3�����Ã�^O���D$8����;�%�ՏS�{>)<���C���tbB�%M\Z��>$q����v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]��v<\n�x��+��Wc��ǁ]������A$.Q�C��eiu9pO��^Lbb�%�̍&�<�@���+�\'�Q��/i�=�T||\\?���x�\0㮞Z\Z�#�������X����L<޴\nk#�K|�6�����PO4&B	8����T�Z=0ɖ1?L����VYpĖ�Oam	�.4�ٵ\r6Y�K;���,��_�_������	�0����X�^9K���F��c�Ԟ�����	]�����Wc�+����J�|%v\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]��Wc�+����J�|%v>�	]�����W`����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫱����j�|5v>\Z�\r]�����Wc᫹��k�u,��\0��4�\0���u�����W����sy��K��n��Ȑåh�\nZ�P� �<�S�[�ˇ���gg��!�<19��&Y�c/�0���>�/������~Fռ��yj�m/��ЃZ�1�-�Ѳ�+�CI�O�x��q9���	@p�O�C{xup�J���+�����>���J���+�����G�WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq���1+���WW	]\\|%uq����WW	]\\|%uq����WW���	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����WW	]\\|%uq����W���Y��ӫ��Zy���2)�(4�[��#����%�\\�\\ג���sR2?�||sw�H�Q��/��q��I���F̿��i�-#���2�ݘ�ē7\"��T|?�}��j��_L#��\\�8�A�r<I�cA��|$�	]�����Wc�+�����WW#�-:��KN�>ӫ������-:��KN�>ӫ������-:��KN�>ӫ������-:��KN�>ӫ������-:��KN�>ӫ������-:��KN�>ӫ�����1-;%�+����J�|%v>�	]�����Wc�+���\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq�\\|%�W	i���Zuq����`���jM��(����h�)���Z-P�\Z?ZU\\�p;垕k���v2k{���:�}\Z_W�$���4ax�lN�F$Y��\'i@��e��1�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǅ]\\xU�ǅ]\\xU�ǅ]\\xU�ǅ]\\xU�ǅ]\\xU�ǅ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]\\x�ǁ]��1i7_�&�1�x��TWl�óe�Jdo����竏��g���,�G,f9:6�N����H6���[���i�G�p��d�\r~a�_�V�\0������f��\0���R�3;��w�KH�Y?���L����R�\0�_����#����?�O�<�07�����C7�������������\0e/���P���?���-#�d�\0���3��K�)�3;��w�KG����?��K�)?���d]���\0�O�<ɘ?���_�K�����d]���\0�O�<�07��R�3;��w�KH������e�\0�����\"��OH������\0e/����o�}�w�OH���n����\0�O�o�}��NS�<$�\0���7�~�� ��o�}��M�\0���������\0t��������\'���?����3;��-#�O�<��7��7�ȭ>S�<$�\0�Ȟ�����I��o�}��M������2������L�?���dV��}%#fJ���ّ:,5��\0�X���K�A��B�\0�C�e\'I��퓐5y{�\0ܩ��d:3���d�w��cU���ʛi6`������>>�CS����V��\0x���r1����6}����2;��;��J���p~c�dN8w2\Z���\'����_��i��#��3K�$N������\04�xc��2K�A�A���?�j≠�ޤ�p:N��\'�Ӑ��2�=�F�����O������Xnn�\\6���\04��;��zƼ�\0�\0�?��NB�:=�\'P��\0���\0���i�ĝ�-o���B[�h�\0�H�GώD��g��Zs\"�.j+�����uU�\Z��+�@X�����5��N�\0�.�\0�x�������N�Ɓa�\'���!4~o\'��/�x��\0?�2������o��q��9\n7���y��}7S��\\���uX��>�����AKLj������|B�����^�m�\0�у�)�w�}W�Z��/���_�5j��m�\0�я�W�aֵz�v���<B����oK��\0���h���p��~�[j��у�+��������\0�\"�\0�1�J8W���?��\0�b�\0�1�J��u�W�v�!�����)A���ƍ�T�4N�\'�F���2���͌�SO�����\0���q�\07�������!�0������z�}j����G��8�YG�W�RÛ���m.lnk�D|Ir�W��NW竰@j\Z���7��FO�,�W��@�\0�����\04��J�}n��Z_�?����}n��Z_�?���S��w}�\0-O���\0�8|b�o�W����\0�1�\0�8����oO�|���N>)Z\\\'��\0�����\0�q�JӾ�y�\0-�\0�ӏ�V�.�ڍ��f�����QO�<r�r��������o���\0���ާ��fa��u�������7�,�\0���DGr�w/���\0�Zw�Y�\0��xc܏����\0r��֛�\0�f�$�w/����������0p����^�\0�--��g��dhw\'�{�\0ܵ���z��_ّ�%��^�\0�.[�{���_ٓ\0w#�{�\0ܥ���ign�u���AۿPsU��l�is䜍��\"��\0�ޝ��i����Y@�]�gs���\04���.��C5���r�\0�1�\0�9?��Zo��j��\0�|R�-���]��?���\n��/��\0�c�\0�r>1^���<���� }����p�ŉϢ��bBL���!֟,���e��W�\0�t�?࿳B9���˿úw���_و!�������;�O�/�ò�s/���t�?࿳���^�\0�-�t�\0?࿳#�7����G��}z��\0?�S�̽�\0�]����L�O�2w�\0�k�?a��\0x����2w�\0�k�?c^��郌��y;�|�b;��������w��\r�;)�u�P��A�1��4ًS3 	y��5J����\0���h�d.�r꺡�\0���\0���h���Zڶ��mO�\"�\0�0���r���47M�\0�ч�*���?�jo��\0�Dׅ��u.�M�\0�і�Ă�5@�\0�����\04d��M�G�^��b?Տ�i���F�贸��~���\'�ӈ����l�s_���O��-�#��g.�X唟�w���i�(w �z-R����\0��\0�9(�s�}��!�W�\0��\0�rѧ����z!-c4���\0�2�������d�Dŧ[�*����\ZL]�l��NN�Lz=���~��2cG���l�V^�\0�(�д�:����1�����L�/��U���z��\0��̐�a�o��\'[���ʪ�oK?���/�Ɏ�����LN�7��E�Ɣ{I�\0��!��?�������*��] ���%��������7������=�O�<��7��S����#�����\0�O�<?ɘ?����)�3;��-#�d�\0���3��K�)?���d]���$�\0������o�)�/��;싿�ZG���\0��f��\0���R�\0(f�w���������������\0�����G�;�%�,��x�\0&`�o�)�/�o�}��N�\0	i�\'�?ɘ?���_�K�����dS��ZG���\0��f��\0���R�\0(f�w�ԫ�t�_��ſ�j���0�؋	�r�Q�i�G\nS�6��3g���N*�Uث�Wb��]���V�K�+U�Z8-+	��i|f�8AD�bJr6�I��JGu�O,�����s���x�K{C�*���ٯ��\06dZ�g\"JP��V�@�2\Zl�,�Nٍ)9`!�l�ɰ;��̙����*2gM�w�\'�p�n�5�X�0�ș2/��\Z�*2m�U8*N�8���!�ʔ���8�\0��N��iA�5�%�--������L�W��~���6�����d�3!0�ڝ\\���x-[\r�I\r7Z�)c~sэ����{}�x���7G��Ty�kB7rn�h}�V�\r�*���k�b���\\N*�b:U�z�J�C|�b����	 s��+��AY����/XZ^�z~�Nϒ��F�G��-Q�D:��\0�;\Z�d�ǵ�+E?+�?�^�>��d�{�?O�#i0��	��������P	o	�Pw���/S�+���*��SmO�\\X�-)��\\�Zf�-��pF6c���F&F�3e���X��gl�D�(�|Nl�O=�)���A�b�D�j��ڶ	]Z�V��\"B��\0WR�U���X�\0s4+V\'��륰]��\'r���C�Ŵ}��1��˶�Plݲ�Ζ���m\r5qV�v8ҪE#,��A�ӂ�.OY��ϊ�՛�1.e�2(oW*��%V� ɾ�U���P��R���G\"R��[���?�\'�L��g��f�1\n�H�҇$�����CS&�][o�*�؃Q�d�%�X��ąޠ&v��K\\�(Ɂ\r��9x�Y��*2�&�1�H�c6(��;o�	���a�\ndĚ�QQ�<r�ɬ���p-d\"���X�\\���L�\"�@�!X6I��p�xU�P�*�Uث�Wb��]�����N*�Uث�W`WaWb�`K�+U�j�8-4����c�%�* ��}���pZ�N@��^h׭�.j:���:}��@Mx) Px�t>Y��\0.u����.��J|��f	��΀[�K�#��H~/�U�r�>c�\\���L�\Z��\'���|��߂=R�9�d�\0�r2�&`!�64��FM�!��L�Y����̓¨�@��ǉx[vV\\��P7Q�%�%(������\r�^N8�:Qi\rw��Jl��Z^�-Z�C��Zz����9��.@�d]N�>�d�GӋ��q�T�r$����Ӂ�q1!�C\nPz�HW�y�A�xnaZ�LI�l��w��	Ə66�Jx��ż�W�ثM�Z�\\z�S���m�U8�xqU�H �F���̼��\"�m��Q�Y���J3!��4�Y���7	ap�،�]D�bh��\\�,R�kE�R��u�9=��G&! ߧԜgɀ�zE՜�K;ױ�1(�b�1f���ui�L-ֽ^���(\\�]�1U�\n�V�ߠ�U���a���e8�Iٮs^����i��Vf�����-���C��M.®ȕ[�[v�j�*��)q[�ȕy��e�Tx>�q�6���Ȼ�01�ǹ\ZP�nu�:�*�\r�(\\?UO��J�>�*�d���(��W�Ȗ5��Q\0�g�O0y���6�p�]�!Z�F�M\\�����غ��Y4r%��D�i9U-���=�/^ddߦ��&;�!���+��18AV�}�~�UWb+�*�\\���r�XҠz��$+� +bB:9*�bB���-`B&\r�\\mf(��d����J�3k1WI���Ɂ�\";�|�2k1D�r+�_5��ᚣ,j!���ѓY���Ak!�`,D���$��%x��Uث�Wb��]�����N*�Uث�7�\0�\"4��o0Z��ZL���6��I��AvN$7���U�2�� �$h���R�?���ż:�$\\r$ֻ�U���\r+A�_����<���WҷYP4>�<�٫^ت}����e�ya�]���ߍbci�p!U�yV�kR�\0̯���Wv:Tzuֳ�\rB$�-2�U�$3��~ʢ�R��\0>Hy�^j�����|��OcsDyKSd,���Tf����[��4������I$��j�K3ȌT$aiɚ��V7K������^Ӭm<��&���%�\Z�\0cۏ&!}:/�~�������\0�\r3Xԯ�����l�4��(ݚV�	����o8�ڞ����Z]�Vs�<L�����z~�>�F�I�7�����z�OԠ��Qiz���;�!u��1�G���<�r�<� ���Ml]�9�� �R�����3v���8��c=�046�s5���A���eZ~�8u�\0c�.j����_+hN�<��^����#��ݕ�5�Z}�\0v����߳��&�X��]���\00���O�c6�N��|�d�� ���\Z��Uݟ��\0���DE(}�0&Y����ԙڽ��f�eτ()Vd����eFL�Ps�Vd����a	%w���L��K�*r��d�؃��bِ0��-!.�04�l�Iy	l ���,G^�+eKY��ĚX́.,qVW�yxR�kvj,�U_q�\'w_�����\0n�F.����j�-\\iLhb����>�e��\n� ���c&x�bl<�\\Ѯ���������\\�.�\0Q8�Kw�76�*�밮*��pZ[�*z��V�5F6��L�(\\c��h)�$\n���U�F\'>_�\rΗp��{f���#$%N6�L27�Xj�Ь��OP:��d�@���E7�Z�ݥ��F)�2���>Xe!E8���/���5�3���+��>y�<f>�u��	�y�����⬝7�/,+�+�I�X�^N��@,�\0˚i�z�\0n�U����Ê��G�����ҝ�̇\r�.®�V��%V��2^2a��$��Lm��c�QS��Q�yV�y��Ji�� a�j�l���a�\0\r\\�c`䒽I?,UR�-���P�GQ�$_JOS�r*��Xe��J�?^gE�xU�$�TU�ɾ�+WTd\n�0ol%V6W&Ah�*[�)�-�lV�~FNF�7�<�ڤ��w�Gz�p8���b�9\0p�]^���JT��N%-��]��b��I�%Ă��@�	bB-Z��8���V�|��R��������N�t$��-�NdD����2���0]A\'.����p@�	0!\Z�W.���Q1K�ĵ��]��Z�FE\'L�,E��� XA�b��+x��Uث�Wb��]�����N*�Uث���\"/5���#�\Zȃ��R̿��y֛5ם���\\�F���~YkHKoY�R�����a�����\08��]wĘ-���YEoX�����T��C�4�\"�iW��\\Ir\'H�u��n��Oiɱ	O?8�\0+!��ɦ��A�M���:�ַS�%�!H�Z��j�^�����)��m�����\0���}+�GC�O�%P%V�����_������\0��ʉ���ћJ�P�t�P�PG/���byS;E�Ѵ���#k,Q���rƮ\0Q�1yP>�Q+l6�]CO�5?4�R�˺W�5�NT���d��+��x���\0\"�?kz(�Yxd���g�đͣ�����zd|�DPc#e	�Q�y��嫯���~��?갏���?R���o����\r��W�W��v�h?}�zW�d����И/��4�*�T?6<�/�g�]������ �K�\r+��R^n=Y�w���!��7A�ο�-yC��k_�ڜ��~�b[�Iw��Ec%�y?_|��e��dj?J)�G��O�|�G���c�;�&OJX����M6e�s4e� �5K�ojhh����12��\r�1�I���5�N�z�$�%$R�`~��,�P����	f�(;w�Ȓ�!$^ߎTKhCH����!�F�,��w�	��»�+���m��+b�!)����[�I.$}���ITn�|,�ki��|��՞P!����2��ෞ!�\n\\N��,]����-:�8SIv����֍�	�rSu>�-�3g��z��qay%��C)��#�a�w��	Sa�fפ�r6�p�W�䜉*��\\�D#\n-i44��lxb��lUmEr@��ӮI�~���i����_�?1�V\\Q���=�֚��\"��2a��tz�$���)�j:e��9�I��%n��C�|��ŀ����\0L�Ʉ�N�M��1He1ʥ]v*v9Hv���|�<�J^F;(Ō��>��OO^z=��\0��n5�t��W��O}�%�n�8���B�*��Ad�a�q�+���ĪU�K���\'r�vR��r�Ҩ�\ZHqd/bI�9��n#j�5늮|Uw-�R\Z�p�i?~*�y~.�l��T��7i�J�^��3q�6�W#\"��KTȐ��7��$�9�\\\n�D��2%X�%)�?�L����st#����N�a^��X	$�ū�B��$ Ih�=;bUQ�2�*�qo�l��\\iC�$�G�E*	��I�.Y��A�\r��:u�\"���Ѧ_.�����x,E	*�#&�EZ��/j1M�.�.&&Q϶Y5�b�~��5H#��/���F�&ZQ	���iᒶ��0X�Ʉ7�®�]��v*�U���N*�Uث������ϻ�L�7�y��v����#��N�ֆ(ג�\0��Bä�Sh�/�t�\\��w�m��~�����(�>�k��\0��Um�?)#�\r����\'���=�Amr���!���!���[����	I���o�#�iuE��V��R(o����%9r�\'��?�2�$��\0?yk�Ϻ宩�Xjk7���1��U�5W����#d%4��G������K�-?Sf�U�\Z��хu�er��ˑ$�M+�ZG�m?/#������<�<�4��h˙$rY�2x��_k dm�/��\0���:��y��K��n⸂��ԟ���\\�>�*�\0k�V�S��@G�����m��as��q-�ת��V�Ǧ*x�Ȉee$6���?H{9\'���6�k��&Y��t��T�;���\0�ɛ-l�K���Ң���ֵ�����{AwX�!�N%>ǵp%8�|���֕��B^�\0Gi\Z�J�ʼ[�������JX/箍o,V������Z��t	j[��0�+#�\0����w�y�<��\\j�������V���w���L�Hc>dnQ7���#3���*a�/)i�U�\0������6�u��z��d��.��V�+��\06BYI�r�O�eկ�����4����?Nh�e�6�bᏚ\\]���NE5ꑐ2M.����IZ\\%��Z�,�7��m� �%�CH� �Г\r�i�%�%�\rM�[h@K!����`w;b�T@�8\nҔ�۶H�\'iXNI]��j�n��%�S�V�\0G����c���G|����p��\'5�-\rҸ��b\\IV��.�X�u��b��\Z��%�u���#M�8ϓ��g���p�x���`wP�$,!�z}�[8�����b���i�EJ���ɡc(\'�A+J�Hm�}8Iԃ�+� ӶH*�\0�(r튕hg�Hث����\\X��Ǔ;�<�\r�X/H�a����������\Z�ɔ��<ʉu�vI)>���}Nh\\��\\mS�r�������g~K<�帴��G�?i��8�V喫Tr\ZJ{�g2&�J슻$�W\"�\Z�l�W\0{�Wd���R�\"\r%��[�}H�x�hk#��\0X�iYw}���&]�k��S�eV�N�R��U�n�qW�Cu�1K��<U7򨮹l���C�q�ݗ��S����Mr��W���Ñ,���[�n��)Zr$�ݰZ�k���o?̋��dT�\nd:������ ���LA�T�o��^�����;�JՍ����1��hEr<HVD�Cd�Ӷ6��v�L\"�\0��I�/riPrQ(�]�}� 1�����\r,�7\\�&6ӆX��|�2j�Qv�4��XK{�@�#&�lSo\\Ȍ�e�	��dFM2	�eѓQ	���a�z�� ���k^2a�u�!�U�Uث�Wb��_���N*�Uت_.���#�%�\r,���c^D�SV�w8F��^�������V �H��AJo�?�����yC�]^�,i 1�䰞Q�ۢ��IV�Cђ�R��n���_�,���_-���:nܙ�\0��PF�@�@Vm\'K���T��ep^\\�B�^EUW����(���G#��J�/E%z\Zt�Vd�S��R�	�\"�Un��ETv��R�E|Z��\\�gL��uP*�ۧL��`��^Цx��	\Z\"Le�\ZM�\0<T��C�Z9iR?7���~_�n�?2O�����ʼ�ğ��/δ��+�2;%�m�<���R꺿�<�v�Z�:W�5�lnb�b�={tJ��U�>��e��*�݋м����Oqo4�����^0{�@Q�*�F��j���n��=�6+<H�٬%�<�[\0C�H4�%�\n^��C��.\r�r<KJ�?�߃�iP�����Ez�f���N��\r�%�\r�~8@K�8C0��R�zw�%G�p����(k�8��,1d�*�ث$�.��MO��\ZEs��f퐓�����zg���:F�J��MW�ZdmZ�)l6�]�J�H]GL�����R>��,i�<�f��S�5[ㅾ̃��`�m�P24�kp:\r��\0�\Z2��gkW�t«��r*�D��TKgA��p�\\+��.�xU��UE4���:έ�%�����_���q̂�5�!\\\\��;�u\r�r@�}1C\\�-�$��LZ>9U�C&���v*�{`��#\"R��5$Ӭ%�}ʏ�|I�rJ�nG$�<�k�\'�I�5w5\'瘏D#B����%�.6�m�+OLUL⫕��^��S�\'D_\\��ʂ���[*�^�]�.EдEr+����m\r\Z�œ�`!V����Z�ĥi9��K��s��:����\0��{8lX;\r�nɢ1V��t���-��}��$Dv�#ċT�Sl���2LT�a�bR\ZK���\0�W�cZe�j)�-�lJe��U�i	5U�\\�E5��=r�`B�FJ2bB\"�n&�l����IQQ�\'0!tO�W.j1L��\"��Ě�L���ˣ&������I�eo\'L�2i�L!��_� �A(h��690ZV2�QM�\\�b�d��P�*�Uث�W���N*�UثG\"��D�D�IJ�r�Y-\'+%!m	�)\\������ ����\\��a\n�8%%k*�W��}�Z^��\0��K��j6��ݪ�\"9����eo�����J�o0���e�T����.�����|ŮjD2L���\r��(bޚG��W*��#Q6�,�c24�����:g99^�� J.*2�[�s�%�CJ��2��Τr%�S�A�r���P:��[��w�i�h܃���o�\\Y��� ?!�� �`NH2RaZk�T�C\\UJ�bɣN�l���U��N6�v�_�:ț:��;H����Yu-.9ݨ8J=�E�j�pO�4\'ö�\Z��M:�� ���.��p�[\n	�\n\Z�(�R����q��H��y^�P�l}\'?�~�3����Դ��G\"H�΢�v8��Cb��U����v�%��Qa�K~X�b��[0��kJu�\n��=?����=X+~�$-95�2�t�!��VK�=W����{�����m�෌G\n����t@�R26U��cN�+xmZ���A�*�l��q逫�b�$�cj�;��cC\\	j�W���J�\0�o.~���[7�fIYw�-?�̱���9ʊ�4�W�Sl�6��T�{�w���W�銲�!�gP��9p�rX�~�λf[�]�V���n�\\2����%!aʋ&�ȥ��*����/>����MJ(��]������\"6�����\'`�����HWHd	[^QGL\n���Q�\n���l4�����,J�d�߾2\n����%HB\n��-�-?ۦH���ڙ\0� �pFJB�J��^\ZD+UVE.Bj)�,`B>	~\ZLHEFzu�X&�b��M��h�Y�co\'M��ɪQL��S�_4�(�nw̘�l7U�e@�H&vw\Z6Z�Bd�=rq�YVh,W&�aWb��]�����N*�U���r%+VR��9Y���� \"�Oa��w&�?�\n��3C�Wr��&���.&�+�({�����3>q��q�ggr�jNj2M�>\"�il����|����#l��\n}=�f\nQ��0�~��������!��~�Yҋ]7J��SM+�4ғ�鑦A\n�C�	m\Z�P�Zw�T�6�\\Y(n*��޸U�Bp*���AZ��Rפ�kLmS�\'�M��B7����q��#\'W��>oM v=�A�-�	\\\r6�:����\\U��]��Zdr���J�W,b��OP\r{�	.����x�I\n�u�	�ݏS8�If���ᖽ�|iˏh��\'�5%j#�ƴƛ���P�U��A��?�\Z-�Y��o�3Y�L`���Ɗ�Ț�\n�$i^�$ᦹv�:&6�A�Z���p�<-��\'V>]�,�c�3��m���ɩ����\0U~;\r�]��}9`,�,���xm]��w�+�+����� ��]�L[�Z��Z\'|V�4�Y$�g�ƝhR=�%�W�<r�ӡN^�O�l�:%��1ݍk�s�4F�8����[\r�b��k|i8�M�>�Uc6�L���.WW2��������җ�uL�t�9U����)\r�%�����J�a�BA+	��-�OL��y�\'�֮\\�<~��}��@��Zm��o�@�|�!d�)\n\r2�� ��u���JY���Ɉ�c\n��\rD�ja*�^B�FC���Z6��J]�n�B#���Xy!3�@PW|��9�|�b�#_�$Kt8��&&�+�&$##j�\\�,EFB��.k!®�s�D�H\"V��L��Zd6�d��3 Z$kY���|d�(���A�N�p-2	�3����0�M++W.�bB��Ab�$���Uث�W��',26896);
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

-- Dump completed on 2013-02-11 23:48:13
