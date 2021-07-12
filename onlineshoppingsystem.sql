-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshoppingsystem
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'2020-05-16 00:46:08','admin@gmail.com','java@1991','admin');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('13042');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount_price` varchar(200) DEFAULT NULL,
  `quantity` int NOT NULL,
  `total_price` varchar(200) DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CART_CUST_FK` (`customer_id`),
  KEY `CART_PROD_FK` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcart`
--

LOCK TABLES `tblcart` WRITE;
/*!40000 ALTER TABLE `tblcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'2020-07-25 14:15:20','kadamk33@gmail.com','Hi, This is testing email contacts.','Kishor Kadam','Testing'),(4,'2020-10-06 04:01:28','javed.tamboli@gmail.com','This is awesome online shopping website.','Javed Tamboli','About website');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `valid` varchar(50) DEFAULT NULL,
  `pin_code` varchar(255) NOT NULL,
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (13962,'Bhalawani, Ahmednagar','2020-09-27 04:01:00','kadamk33@gmail.com','Male','Kishor Kadam','java@1991','+917276763516','6T6','414103'),(17611,'Charoli, Pune.','2020-09-27 04:01:33','javed.tamboli@gmail.com','Male','Javed Tamboli','java@123','8369651475','UZF','411022'),(12618,'Bhandgaon, Ahmednagar','2020-09-27 04:02:00','sagarkharmale@gmail.com','Male','Sagar Kharmale','sagar@123','8456571542','CR5','414103'),(10755,'Akurdi, Pune','2020-09-27 04:02:21','shashibhure33@yahoo.com','Male','Shashi Bhure','shashi@123','9741256358','2UR','411033'),(17279,'Kharwandi, Newasa,Ahmednagar','2020-09-27 04:03:02','30arunpandit@gmail.com','Male','Arun Pandit','arun@1234','8265686325','WSM','411055'),(14206,'Kalkup Road, Bhalawani, Ahmednagar','2020-10-05 13:21:00','aniketkadam33@yahoomail.com','Male','Aniket Kadam','aniket@123','8985236965','IQV','414103'),(12627,'Gevrai, Beed.','2020-10-05 13:16:41','govindraut780@yahoomail.com','Male','Govind Raut','govind@123','9858563214','11G','477502');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_no` int DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `product_selling_price` varchar(100) DEFAULT NULL,
  `product_total_price` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO `tblorders` VALUES (1,1001,'Javed Tamboli','8369651475','javed.tamboli@gmail.com','Charoli, Pune.','Home','411022','e2.jpg','Watches',2,'1900','1750','3500.0','Pending','2020-10-07 07:08:40','COD',101),(2,1002,'Javed Tamboli','8369651475','javed.tamboli@gmail.com','Charoli, Pune.','Home','411022','ph4.png','Apple Iphone 6s',1,'70200','66000','66000','Deliver','2020-10-07 07:08:40','COD',101),(3,1003,'Javed Tamboli','8369651475','javed.tamboli@gmail.com','Charoli, Pune.','Home','411022','18.png','Mens Blazer',5,'4575','4200','21000.0','Pending','2020-10-07 07:08:40','COD',101),(4,2004,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ph3.png','Apple Iphone 6',3,'80000','74000','222000.0','Deliver','2020-10-07 07:12:26','COD',102),(5,2005,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ep2.png','Watches',5,'1400','1230','6150.0','Deliver','2020-10-07 07:12:26','COD',102),(6,2006,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ep4.png','Watches',1,'1600','1380','1380','Deliver','2020-10-07 07:12:27','COD',102),(7,3007,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','18.png','Mens Blazer',5,'4575','4200','21000.0','Pending','2020-10-08 04:29:05','COD',103),(8,3008,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','e2.jpg','Watches',2,'1900','1750','3500.0','Deliver','2020-10-08 04:29:05','COD',103),(9,3009,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','mw1.png','Casual Shoes',3,'700','630','1890.0','Deliver','2020-10-08 04:29:05','COD',103),(10,4010,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ep4.png','Watches',1,'1600','1380','1380','Deliver','2020-10-12 02:16:46','COD',104),(11,5011,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Office','414103','15.png','Multicoloured TShirts',3,'300','250','750.0','Deliver','2020-10-12 02:22:22','COD',105),(12,5012,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Office','414103','11.png','Air Tshirt Black',5,'360','320','1600.0','Pending','2020-10-12 02:22:23','COD',105),(13,6013,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','g2.png','Shirts',10,'650','625','6250.0','Pending','2020-10-12 02:40:55','COD',106),(14,7014,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ph2.png','Apple Iphone 6s',1,'54100','51200','51200','Pending','2020-10-12 02:50:29','COD',107),(15,8015,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ep3.png','Watches',1,'550','525','525','Pending','2020-10-12 03:15:34','COD',108),(16,9016,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','14.png','Maroon Puma Tshirt',1,'950','700','700','Pending','2020-10-12 03:37:34','COD',109),(17,9017,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','e2.jpg','Watches',1,'1900','1750','1750','Pending','2020-10-12 03:37:34','COD',109),(18,10018,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','g2.png','Shirts',5,'650','625','3125.0','Deliver','2020-10-12 08:53:48','COD',110),(19,10019,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','ph1.png','Apple Iphone 6',3,'47500','45000','135000.0','Deliver','2020-10-12 08:53:48','COD',110);
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (1,'Active','M8F','2020-08-25 07:07:52','Mens Blazer','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/18.png','18.png','Mens Blazer','4200','4575','Mens/Womens Wear'),(2,'Active','LYB','2020-08-25 07:11:16','Apple Iphone 6','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph1.png','ph1.png','Apple Iphone 6','45000','47500','Electronics'),(3,'Active','I7N','2020-08-25 07:16:44','Apple Iphone 6s','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph2.png','ph2.png','Apple Iphone 6s','51200','54100','Electronics'),(4,'Active','E46','2020-08-25 07:19:07','Apple Iphone 6','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph3.png','ph3.png','Apple Iphone 6','74000','80000','Electronics'),(5,'Active','T9Y','2020-08-25 07:20:10','Apple Iphone 6s','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph4.png','ph4.png','Apple Iphone 6s','66000','70200','Electronics'),(6,'Active','4NU','2020-08-25 07:22:58','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep1.png','ep1.png','Watches','2200','2450','Electronics'),(7,'Active','8DC','2020-08-25 07:23:55','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep2.png','ep2.png','Watches','1230','1400','Electronics'),(8,'Active','ZVZ','2020-08-25 07:25:01','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep3.png','ep3.png','Watches','525','550','Electronics'),(9,'Active','Z87','2020-08-25 07:25:36','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep4.png','ep4.png','Watches','1380','1600','Electronics'),(10,'Active','MMQ','2020-08-25 07:27:04','Apple Iphone 6','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph3.png','ph3.png','Apple Iphone 6','42100','47500','Electronics'),(11,'Active','P32','2020-08-25 07:27:49','Apple Iphone 6s','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ph4.png','ph4.png','Apple Iphone 6s','40200','45000','Electronics'),(12,'Active','30L','2020-08-25 07:28:39','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/e2.jpg','e2.jpg','Watches','1750','1900','Electronics'),(13,'Active','FZ3','2020-08-25 07:29:38','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/b16.jpg','b16.jpg','Watches','2350','2500','Electronics'),(14,'Active','4SR','2020-08-25 07:32:12','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/11.png','11.png','Air Tshirt Black','320','360','Mens/Womens Wear'),(15,'Active','REI','2020-08-25 07:32:52','Next Blue Blazer','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/12.png','12.png','Next Blue Blazer','5400','6000','Mens/Womens Wear'),(16,'Active','90F','2020-08-25 07:33:28','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/13.png','13.png','Air Tshirt Black','720','900','Mens/Womens Wear'),(17,'Active','SS8','2020-08-25 07:34:08','Maroon Puma Tshirt','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/14.png','14.png','Maroon Puma Tshirt','700','950','Mens/Womens Wear'),(18,'Active','L8L','2020-08-25 07:34:58','Multicoloured TShirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/15.png','15.png','Multicoloured TShirts','250','300','Mens/Womens Wear'),(19,'Active','9NU','2020-08-25 07:35:36','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/16.png','16.png','Air Tshirt Black','350','400','Mens/Womens Wear'),(20,'Active','WMI','2020-08-25 07:36:09','Dresses','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/17.png','17.png','Dresses','780','850','Mens/Womens Wear'),(21,'Active','KC1','2020-08-25 07:36:48','Wedding Blazers','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/18.png','18.png','Wedding Blazers','2800','3000','Mens/Womens Wear'),(22,'Active','APD','2020-08-25 07:38:46','Dresses','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g1.png','g1.png','Dresses','740','850','Mens/Womens Wear'),(23,'Active','X0V','2020-08-25 07:39:42','Shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g2.png','g2.png','Shirts','625','650','Mens/Womens Wear'),(24,'Active','ITB','2020-08-25 07:40:28','Shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g3.png','g3.png','Shirts','900','1150','Mens/Womens Wear'),(25,'Active','ULA','2020-08-25 07:41:24','T shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/mw2.png','mw2.png','T shirts','475','500','Mens/Womens Wear'),(26,'Active','XUL','2020-08-25 07:42:50','Wedges','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/w1.png','w1.png','Wedges','730','800','Mens/Womens Wear'),(27,'Active','ICD','2020-08-25 07:43:28','Sandals','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/w2.png','w2.png','Sandals','480','550','Mens/Womens Wear'),(28,'Active','YNB','2020-08-25 07:44:22','Casual Shoes','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/mw1.png','mw1.png','Casual Shoes','630','700','Mens/Womens Wear'),(29,'Active','RF6','2020-08-25 07:45:12','Sport Shoes','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/mw3.png','mw3.png','Sport Shoes','950','1200','Mens/Womens Wear'),(30,'Active','A18','2020-08-25 07:46:03','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep2.png','ep2.png','Watches','1500','1540','Mens/Womens Wear'),(31,'Active','7MU','2020-08-25 07:46:51','Watches','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/ep3.png','ep3.png','Watches','1050','1100','Mens/Womens Wear'),(32,'Active','LLZ','2020-08-25 07:48:25','Air Tshirt Black Domyos','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/w3.png','w3.png','Air Tshirt Black Domyos','320','350','Mens/Womens Wear'),(34,'Active','5N7','2020-08-25 07:52:00','Hand Bags','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/w4.png','w4.png','Hand Bags','510','550','Mens/Womens Wear');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 12:05:55
