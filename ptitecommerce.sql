-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: musicshop
-- ------------------------------------------------------
-- Server version	5.5.61

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1488468815884,1,9000000,'Bank transfer','25 Nguyễn Xuân Ôn, P.2, Q.Bình Thạnh','2017-03-23 14:03:25',NULL,NULL),(1490686629467,3,29300000,'Bank transfer','abc','2017-03-28 07:37:09','abc','0935526224'),(1490687358000,1,20900000,'Bank transfer','tự tìm google nha','2017-03-28 07:49:18','tên gì kệ tui','0935526224'),(1490687595700,3,3865000,'Live','việt nam, trái đất, hệ mặt trời','2017-03-28 07:53:15','quang siêu cute','09999999999'),(1490683071125,1,55440000,'Bank transfer','test','2017-03-28 06:37:51','test','0935526224'),(1554451279033,3,2000000,'Live','M? Lao, Hà ?ông, Hà  N?i','2019-04-05 08:01:19','Ph?m ??c M?nh','0904658134');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (0,1488468815884,2,9000000,1),(1490683071143,1490683071125,14,55440000,1),(1490687358050,1490687358000,6,20900000,1),(1554451279081,1554451279033,1554450706005,2000000,1);
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `blog_comment` varchar(999) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `brand_id` bigint(20) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Taylor'),(2,'Fender'),(3,'Takamine'),(4,'Epiphone'),(5,'Gibson'),(6,'Roland'),(7,'Casio'),(8,'Kawai'),(1490664585545,'SViet'),(9,'Yamaha'),(10,'Suzuki'),(11,'Deviser');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Camera'),(2,'Phone'),(3,'Laptop'),(4,'Shoes'),(5,'Clothes'),(6,'Sound and Vision'),(7,'Health and Beauty'),(8,'Book'),(9,'Sport');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` bigint(20) NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_message` longtext COLLATE utf8_unicode_ci,
  `contact_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1490502122133,'Quang max cute','quang.com','dangquangkdc@gmail.com','Giao diện web',' Giao diện web cũng được',NULL),(1490503630308,'test','test','dangquangkdc@gmail.com','test',' test','2017-03-26 04:47:10');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `newsletter_id` bigint(20) NOT NULL,
  `newsletter_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (1490505766760,'dangquangkdc@gmail.com','2017-03-26 05:22:46');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_forward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_back` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1554521233969,1,'Camera 1',6,'images/1.jpg','images/1.jpg','images/1.jpg',23000000,'camera description '),(1554521233970,2,'Camera 2',6,'images/2.jpg','images/2.jpg','images/2.jpg',23000000,'camera description '),(1554521233971,1,'Camera 3',6,'images/3.jpg','images/3.jpg','images/3.jpg',23000000,'camera description '),(1554521233972,2,'Camera 4',6,'images/4.jpg','images/4.jpg','images/4.jpg',23000000,'camera description '),(1554521233973,3,'Camera 5',6,'images/5.jpg','images/5.jpg','images/5.jpg',23000000,'camera description '),(1554521233974,4,'Camera 6',6,'images/6.jpg','images/6.jpg','images/6.jpg',23000000,'camera description '),(1554521233975,5,'Camera 7',6,'images/7.jpg','images/7.jpg','images/7.jpg',23000000,'camera description '),(1554521233976,6,'Camera 8',6,'images/8.jpg','images/8.jpg','images/8.jpg',23000000,'camera description '),(1554521233977,7,'Camera 9',6,'images/9.jpg','images/9.jpg','images/9.jpg',23000000,'camera description '),(1554521233978,1,'Camera 10',6,'images/10.jpg','images/10.jpg','images/10.jpg',23000000,'camera description '),(1554521233979,2,'Camera 11',6,'images/11.jpg','images/11.jpg','images/11.jpg',23000000,'camera description '),(1554521233980,3,'Camera 12',6,'images/12.jpg','images/22.jpg','images/12.jpg',23000000,'camera description '),(1554521233981,4,'Camera 13',6,'images/13.jpg','images/13.jpg','images/13.jpg',23000000,'camera description '),(1554521233982,5,'Camera 14',6,'images/15.jpg','images/15.jpg','images/15.jpg',23000000,'camera description '),(1554521233983,6,'Camera 15',6,'images/b1.jpg','images/b1.jpg','images/b1.jpg',23000000,'camera description '),(1554521233984,7,'Camera 16',6,'images/b2.jpg','images/b2.jpg','images/b2.jpg',23000000,'camera description '),(1554521233985,1,'Camera 17',6,'images/b3.jpg','images/b3.jpg','images/b3.jpg',23000000,'camera description '),(1554521233986,2,'Camera 18',6,'images/b4.jpg','images/b4.jpg','images/b4.jpg',23000000,'camera description ');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `review_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_star` int(11) DEFAULT NULL,
  `review_message` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'quangcute','dangquangkdc','123','\0','0935526224'),(2,'admin','admin','pass1','',NULL),(1488431413954,'dangquangkdc',NULL,'123456','\0',NULL),(1488394819194,'quang',NULL,'123456','\0',NULL),(1490237767162,'dangquang',NULL,'123','\0',NULL),(1490249636892,'a','a','a','\0','a'),(1490249751501,'b','b','b','\0','b'),(1490263429251,'test','a','a','\0','a'),(1490274751771,'test1','dangquangkdc@gmail.com','a','\0','a'),(1490661762866,'tuanvu','tuanvu7795@gmail.com','123','\0','01687841467');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 14:42:01
