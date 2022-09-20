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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_mobile` int NOT NULL,
  `driver_email` varchar(45) DEFAULT NULL,
  `driver_name` varchar(45) DEFAULT NULL,
  `driver_password` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `time_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`driver_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (456,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(8478988,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(77879635,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(77896541,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(84789887,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(728963547,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(728965412,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(775478988,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988111,'kamal378@gmail.com','Kamal','123','Gampaha','Full Time'),(778988200,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988222,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988251,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988253,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988256,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988296,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988856,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988896,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(778988985,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(783456666,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(783456789,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time'),(785963201,'kamal378@gmail.com','Kamal','null','Gampaha','Full Time');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 22:16:50
