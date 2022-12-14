-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gocheeta_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_mobile` varchar(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pick_location` varchar(45) DEFAULT NULL,
  `drop_location` varchar(45) DEFAULT NULL,
  `area_branch` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `distance` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `v_type` varchar(45) DEFAULT NULL,
  `driver_mobile` varchar(45) DEFAULT NULL,
  `option` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `vehicle_no_idx` (`vehicle_no`),
  CONSTRAINT `vehicle_no` FOREIGN KEY (`vehicle_no`) REFERENCES `vehicle` (`vehicle_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,'07789655','nirashamliki!@gmail.com','Gampaha','Gampaha','Gampaha','Gampaha','15','2000.00','2022/09/24','CAE-3457','Lorry','778988111','No Active'),(2,'07789410','nirashamlik874899@gmail.com','Galle','Galle','Galle','Galle','10','2000.00','2022/09/25','CBJ-2356','Bus','77879635','Active'),(3,'0778988256','kamal0303@gmail.com','gampaha','gampaha','Galle','Galle','5','2000.00','2022-09-15','CA-3427','Van','728965412','No Active'),(4,'0778988256','kamal0303@gmail.com','gampaha','gampaha','Gampaha','Gampaha','15','5200.00','2022-08-31','CA-3427','Van','728965412','No Active'),(5,'0778988256','kamal0303@gmail.com','gampaha','gampaha','Gampaha','Gampaha','9','1000.00','2022-09-22','CA-3427','Van','728965412','No Active'),(6,'0778988256','kamal0303@gmail.com','gampaha','gampaha','Gampaha','Gampaha','20','2500.00','2022-09-12','CA-3427','Van','728965412','No Active'),(7,'07789655','nirashamliki!@gmail.com','Gampaha','Gampaha','Gampaha','Gampaha','15','2000.00','2022/09/24','CAE-3457','Lorry','778988111','No Active'),(8,'07789655','nirashamliki!@gmail.com','Gampaha','Gampaha','Gampaha','Gampaha','15','2500.00','2022/09/24','CAE-3457','Lorry','778988111','No Active'),(9,'0778988256','kamal0303@gmail.com','gampaha','gampaha','Galle','Galle','12','678.00','2022-09-20','CA-3427','Car','728965412','No Active'),(10,'07748374','maliki@gmail.com','Jaffna','jaffna','Galle','Galle','500','2800.00','2022-09-05','CA-3427','Car','728965412','No Active');
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-24 21:57:06
