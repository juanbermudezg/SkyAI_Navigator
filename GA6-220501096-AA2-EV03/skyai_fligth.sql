-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: skyai
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `fligth`
--

DROP TABLE IF EXISTS `fligth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fligth` (
  `id` varchar(7) NOT NULL,
  `origen` char(25) NOT NULL,
  `destino` char(25) NOT NULL,
  `depegueEsperado` timestamp NOT NULL,
  `aterrizajeEsperado` timestamp NOT NULL,
  `aerolinea` char(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `origen` (`origen`),
  KEY `destino` (`destino`),
  KEY `aerolinea` (`aerolinea`),
  CONSTRAINT `fligth_ibfk_1` FOREIGN KEY (`origen`) REFERENCES `country` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fligth_ibfk_2` FOREIGN KEY (`destino`) REFERENCES `country` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fligth_ibfk_3` FOREIGN KEY (`aerolinea`) REFERENCES `airliner` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fligth`
--

LOCK TABLES `fligth` WRITE;
/*!40000 ALTER TABLE `fligth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fligth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 20:27:20
