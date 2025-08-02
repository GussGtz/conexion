-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: formulario_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `mensaje` text,
  `acepto_terminos` tinyint(1) DEFAULT '0',
  `paso_captcha` tinyint(1) DEFAULT '0',
  `estado` enum('nuevo','contactado','descartado') NOT NULL DEFAULT 'nuevo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Isha Mia','presi@gmail.com','9981024115','prueba',0,0,'descartado'),(2,'Efraín','efrain@gmail.com','9981024115','Prueba de contacto',0,0,'nuevo'),(3,'Jonathan','jonathan@gmail.com','99810242020','Prueba de contactooo\r\n',0,0,'nuevo'),(4,'Gustavo','gustavo@gmail.com','9981024114','Prueba de contacto Gustavo',0,0,'nuevo'),(5,'Isha Mia','misha.raym@gmail.com','9981024115','dfvfddf ',0,0,'nuevo'),(7,'jose','admin@gmail.com','9981024115','qdw',1,1,'nuevo'),(8,'Paz','fernando@gmail.com','99810242034','dfsdj',1,1,'nuevo'),(9,'Maria','maria@gmail.com','9981024115','Mensaje de prueba para discord',1,1,'nuevo'),(10,'Jonathan','jonathan@gmail.com','9983006310','Estoy interesado',1,1,'nuevo'),(12,'Gustavo G','ejemplo@gmail.com','9981024000','Interesado',1,1,'nuevo'),(13,'Efrain','efrain@gmail.com','9981024111','Mensaje de interés',1,1,'nuevo'),(14,'Isha Mia','presi@gmail.com','9981024115','adassa',1,1,'nuevo'),(15,'Jonathan','fernando@gmail.com','9981024115','Interesado en el curso',1,1,'nuevo'),(16,'Rocío','ejemplo@gmail.com','9983006310','Estoy interesada en el curso',1,1,'nuevo'),(17,'Isha Mia','admin@gmail.com','9981024115','Mensjae',1,1,'nuevo');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rol` enum('usuario','admin') NOT NULL DEFAULT 'usuario',
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Gustavo','Gustavo@admin.com','$2b$10$wYwpsxnR.HsPAtNwpfi6fuUTc9PIP8myQgA5UNxkCkRqhqAl8p0sW','2025-07-05 22:32:01','admin'),(2,'pruebacero','pruebacero@gmail.com','$2b$10$pOyIZK0Vg./.vPsDbRmzk.vbA3x3nr5CV0YU9Qhog0AUkK.YJUeF2','2025-07-06 05:34:48','usuario');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-01 23:50:17
