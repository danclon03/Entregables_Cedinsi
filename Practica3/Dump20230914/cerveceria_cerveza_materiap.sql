-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cerveceria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cerveza_materiap`
--

DROP TABLE IF EXISTS `cerveza_materiap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza_materiap` (
  `idcerveza_materiap` int NOT NULL AUTO_INCREMENT,
  `cantidad` varchar(255) NOT NULL,
  `unidad` varchar(255) NOT NULL,
  `id_cerveza` int DEFAULT NULL,
  `id_materiap` int DEFAULT NULL,
  PRIMARY KEY (`idcerveza_materiap`),
  KEY `id_cerveza` (`id_cerveza`),
  KEY `id_materiap` (`id_materiap`),
  CONSTRAINT `cerveza_materiap_ibfk_1` FOREIGN KEY (`id_cerveza`) REFERENCES `cerveza` (`id_cerveza`),
  CONSTRAINT `cerveza_materiap_ibfk_2` FOREIGN KEY (`id_materiap`) REFERENCES `materia_prima` (`id_MateriaP`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza_materiap`
--

LOCK TABLES `cerveza_materiap` WRITE;
/*!40000 ALTER TABLE `cerveza_materiap` DISABLE KEYS */;
INSERT INTO `cerveza_materiap` VALUES (1,'300','ML',1,1),(2,'1','GR',1,2),(3,'0.5','GR',1,3),(4,'0.5','GR',1,4),(5,'300','ML',2,1),(6,'0.8','GR',2,2),(7,'0.7','GR',2,3),(8,'0.3','GR',2,4),(9,'280','ML',3,1),(10,'0.2','GR',3,2),(11,'0.5','GR',3,3),(12,'0.8','GR',3,4),(13,'300','ML',4,1),(14,'0.3','GR',4,2);
/*!40000 ALTER TABLE `cerveza_materiap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 22:03:10
