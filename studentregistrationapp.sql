-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: interviewapp
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `classtbl`
--

DROP TABLE IF EXISTS `classtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classtbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classtbl`
--

LOCK TABLES `classtbl` WRITE;
/*!40000 ALTER TABLE `classtbl` DISABLE KEYS */;
INSERT INTO `classtbl` VALUES (6,'class 6'),(7,'class 7'),(8,'class 8'),(9,'class 9'),(10,'class 10');
/*!40000 ALTER TABLE `classtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logintbl`
--

DROP TABLE IF EXISTS `logintbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logintbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logintbl`
--

LOCK TABLES `logintbl` WRITE;
/*!40000 ALTER TABLE `logintbl` DISABLE KEYS */;
INSERT INTO `logintbl` VALUES (1,'Admin','adminpass'),(2,'Person','personpass');
/*!40000 ALTER TABLE `logintbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationtbl`
--

DROP TABLE IF EXISTS `registrationtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrationtbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dateofadmission` varchar(255) DEFAULT NULL,
  `classname` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classname` (`classname`),
  CONSTRAINT `registrationtbl_ibfk_1` FOREIGN KEY (`classname`) REFERENCES `classtbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationtbl`
--

LOCK TABLES `registrationtbl` WRITE;
/*!40000 ALTER TABLE `registrationtbl` DISABLE KEYS */;
INSERT INTO `registrationtbl` VALUES (8,'Md. Sibli Rayhan','Gazipur','2021-08-12',10),(13,'Rakib Ahmed','Narayanganj','2021-08-19',8),(15,'Sifat Ahmed','Chittagong','2021-08-14',9),(16,'Rassel Sheikh','Noakhali','2021-08-19',7);
/*!40000 ALTER TABLE `registrationtbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-10 12:17:36
