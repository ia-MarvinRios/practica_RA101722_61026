CREATE DATABASE  IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidad`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: universidad
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `contacto_estudiante`
--

DROP TABLE IF EXISTS `contacto_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto_estudiante` (
  `id_contacto_estudiante` int NOT NULL AUTO_INCREMENT,
  `contacto_estudiante` varchar(45) NOT NULL,
  `estado_registro_contacto_estudiante` tinyint NOT NULL DEFAULT '1',
  `ultimo_contacto_estudiante` tinyint NOT NULL DEFAULT '1',
  `id_estudiante` int NOT NULL,
  `id_tipo_contacto` int NOT NULL,
  PRIMARY KEY (`id_contacto_estudiante`),
  UNIQUE KEY `id_contacto_estudiante_UNIQUE` (`id_contacto_estudiante`),
  KEY `fk_contacto_estudiante_estudiante_idx` (`id_estudiante`),
  KEY `fk_contacto_estudiante_tipo_contacto1_idx` (`id_tipo_contacto`),
  CONSTRAINT `fk_contacto_estudiante_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  CONSTRAINT `fk_contacto_estudiante_tipo_contacto1` FOREIGN KEY (`id_tipo_contacto`) REFERENCES `tipo_contacto` (`id_tipo_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_estudiante`
--

LOCK TABLES `contacto_estudiante` WRITE;
/*!40000 ALTER TABLE `contacto_estudiante` DISABLE KEYS */;
INSERT INTO `contacto_estudiante` VALUES (1,'7000-5832',1,1,1,1),(2,'2000-1947',1,1,1,2),(3,'qvmdzjtwxkga@xqvbnrjz.com',1,1,1,3),(4,'7000-0194',1,1,2,1),(5,'2000-6823',1,1,2,2),(6,'zjvtxwqkmdla@vbnxqjtw.com',1,1,2,3),(7,'7000-4729',1,1,3,1),(8,'2000-3056',1,1,3,2),(9,'mnbvcxzlkjhg@asdfghjk.com',1,1,3,3),(10,'7000-8610',1,1,4,1),(11,'2000-7492',1,1,4,2),(12,'plmoknijbuhv@qazwsxed.com',1,1,4,3),(13,'7000-3378',1,1,5,1),(14,'2000-1284',1,1,5,2),(15,'ghtrfbvcxzqw@lkjhgfdsa.com',1,1,5,3),(16,'7000-6205',1,1,6,1),(17,'2000-9731',1,1,6,2),(18,'asdfghjklqwe@zxcvbnmasd.com',1,1,6,3),(19,'7000-1583',1,1,7,1),(20,'2000-4067',1,1,7,2),(21,'qwertyuioplk@jhgfdsazxc.com',1,1,7,3),(22,'7000-7946',1,1,8,1),(23,'2000-2159',1,1,8,2),(24,'zxcvbnmlkjhg@poiuytrew.com',1,1,8,3),(25,'7000-0461',1,0,9,1),(26,'2000-8390',1,0,9,2),(27,'lkjhgfdsaqwe@mnbvcxzlk.com',1,0,9,3),(28,'7000-9837',1,1,9,1),(29,'2000-5624',1,1,9,2),(30,'poiuytrewqas@dfghjklmn.com',1,1,9,3),(31,'7000-2716',1,1,10,1),(32,'2000-6903',1,1,10,2),(33,'asdfqwertyui@zxcvbnmlp.com',1,1,10,3),(34,'7000-3149',1,1,12,1),(35,'2000-1078',1,1,12,2),(36,'qazwsxedcrfv@tgbnhyujm.com',1,1,12,3),(37,'7000-8052',1,1,13,1),(38,'2000-3481',1,1,13,2),(39,'mnbvcxzasdfg@hjklqwert.com',1,1,13,3),(40,'7000-1296',1,1,14,1),(41,'2000-9517',1,1,14,2),(42,'zxcvbnmasdfg@qwertyuiop.com',1,1,14,3),(43,'7000-4783',1,1,15,1),(44,'2000-6209',1,1,15,2),(45,'lkjhgfdspoiu@trewqasdf.com',1,1,15,3),(46,'7000-0634',1,1,17,1),(47,'2000-7845',1,1,17,2),(48,'qwertyuiopasd@fghjklzxc.com',1,1,17,3),(49,'7000-3920',1,1,18,1),(50,'2000-2186',1,1,19,2),(51,'asdfghjklpoi@uytrewqaz.com',1,1,20,3),(52,'7000-8471',1,1,21,1),(53,'2000-5308',1,1,21,2),(54,'zxcvbnmlkjhg@asdfghjkl.com',1,1,21,3),(55,'7000-1057',1,1,22,1),(56,'2000-6942',1,1,22,2),(57,'poiuytrewqaz@mnbvcxzas.com',1,1,22,3),(58,'7000-2368',1,1,23,1),(59,'2000-8710',1,1,24,2),(60,'lkjhgfdsaqaz@wsxedcrfv.com',1,1,25,3),(61,'7000-7194',1,1,27,1),(62,'2000-3025',1,1,27,2),(63,'qazwsxedcrty@fvgbyhnujm.com',1,1,27,3),(64,'7000-6801',1,1,28,1),(65,'2000-1496',1,1,28,2),(66,'mnbvcxzlkjhg@poiuytrew.com',1,1,28,3),(67,'7000-5043',1,1,29,1),(68,'2000-9872',1,1,30,2),(69,'zxcvbnmasdfg@hjklqwerty.com',1,1,31,3),(70,'7000-1762',1,1,32,1),(71,'2000-4389',1,1,32,2),(72,'lkjhgfdspoiu@trewqasdfg.com',1,1,32,3),(73,'7000-8230',1,0,33,1),(74,'2000-6104',1,0,33,2),(75,'qwertyuiopasd@fghjklzxcv.com',1,0,33,3),(76,'7000-3497',1,1,33,1),(77,'2000-2751',1,1,33,2),(78,'asdfghjklpoi@uytrewqazx.com',1,1,33,3),(79,'7000-9026',1,1,34,1),(80,'2000-5830',1,1,34,2),(81,'zxcvbnmlkjhg@asdfghjklq.com',1,1,34,3),(82,'7000-0678',1,1,35,1),(83,'2000-7941',1,1,36,2),(84,'poiuytrewqaz@mnbvcxzlk.com',1,1,37,3),(85,'7000-4215',1,1,38,1),(86,'2000-1386',1,1,38,2),(87,'lkjhgfdsaqaz@wsxedcrfvb.com',1,1,39,3),(88,'7000-7850',1,1,39,1);
/*!40000 ALTER TABLE `contacto_estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_personal`
--

DROP TABLE IF EXISTS `documento_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento_personal` (
  `id_documento_personal` int NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_registro_documento_personal` tinyint NOT NULL DEFAULT '1',
  `id_estudiante` int NOT NULL,
  `id_tipo_documento` int NOT NULL,
  PRIMARY KEY (`id_documento_personal`),
  UNIQUE KEY `id_documento_personal_UNIQUE` (`id_documento_personal`),
  KEY `fk_documento_personal_estudiante1_idx` (`id_estudiante`),
  KEY `fk_documento_personal_tipo_documento1_idx` (`id_tipo_documento`),
  CONSTRAINT `fk_documento_personal_estudiante1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  CONSTRAINT `fk_documento_personal_tipo_documento1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_personal`
--

LOCK TABLES `documento_personal` WRITE;
/*!40000 ALTER TABLE `documento_personal` DISABLE KEYS */;
INSERT INTO `documento_personal` VALUES (1,'7486-318522-483-8',1,1,2),(2,'B15320115',1,1,3),(3,'2974-919083-218-1',1,2,2),(4,'A17727143',1,2,3),(5,'6366-550683-047-4',1,3,2),(6,'B77513145',1,3,3),(7,'9921-896267-176-7',1,4,2),(8,'5793-107089-360-4',1,5,2),(9,'36009065-7',1,1,1),(10,'33251019-6',1,2,1),(11,'4407-918366-605-9',1,6,2),(12,'9884-527203-547-3',1,7,2),(13,'5651-538673-683-1',1,8,2),(14,'74298182-9',1,3,1),(15,'A48621646',1,4,3),(16,'21263678-2',1,4,1),(17,'09965073-2',1,5,1),(18,'59266507-0',1,6,1),(19,'19849973-5',1,7,1),(20,'04496437-6',1,8,1),(21,'B56981870',1,5,3),(22,'9557-055139-278-3',1,9,2),(23,'52642119-1',1,9,1),(24,'71750387-3',1,10,1),(25,'00729751-0',1,11,1),(26,'B54335035',1,6,3),(27,'A58967323',1,7,3),(28,'35658435-3',1,12,1),(29,'73139065-7',1,13,1),(30,'08708192-7',1,14,1),(31,'4658-412895-899-3',1,10,2),(32,'09160115-4',1,15,1),(33,'09489158-9',1,16,1),(34,'8115-952627-432-0',1,16,2),(35,'5560-290305-812-0',1,15,2),(36,'7876-764559-374-7',1,14,2),(37,'A82688914',1,14,3),(38,'51916011-8',1,17,1),(39,'22533700-3',1,18,1),(40,'34915784-2',1,19,1),(41,'42500741-8',1,20,1),(42,'82278695-8',1,21,1),(43,'63606163-7',1,22,1),(44,'3434-279070-227-2',1,17,2),(45,'4922-655058-918-6',1,18,2),(46,'3346-255350-066-4',1,19,2),(47,'A50881219',1,17,3),(48,'A80692312',1,18,3),(49,'B90212452',1,19,3),(50,'27352131-9',1,23,1),(51,'36967893-4',1,24,1),(52,'94560508-5',1,25,1),(53,'39287050-1',1,26,1),(54,'03871590-7',1,27,1),(55,'87636995-6',1,28,1),(56,'54834655-1',1,29,1),(57,'05718130-4',1,30,1),(58,'79147358-8',1,31,1),(59,'06278319-9',1,32,1),(60,'23481938-2',1,33,1),(61,'B06527326',1,34,3),(62,'A88177611',1,35,3),(63,'8759-913398-709-6',1,36,2),(64,'6883-771081-407-4',1,37,2);
/*!40000 ALTER TABLE `documento_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `fecha_nacimiento_estudiante` date NOT NULL COMMENT 'Tabla que registra todos los estudiantes',
  `estado_registro_estudiante` tinyint NOT NULL DEFAULT '1',
  `id_genero` int NOT NULL,
  `carnet_estudiante` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `anio_ingreso_universidad` int DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `id_estudiante_UNIQUE` (`id_estudiante`),
  KEY `fk_estudiante_genero1_idx` (`id_genero`),
  CONSTRAINT `fk_estudiante_genero1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'1990-05-05',1,1,NULL,NULL),(2,'1990-05-30',1,2,NULL,NULL),(3,'1990-06-30',1,1,NULL,NULL),(4,'1991-10-01',1,2,NULL,NULL),(5,'1991-11-02',1,1,NULL,NULL),(6,'1992-01-16',1,2,NULL,NULL),(7,'1992-03-03',1,1,NULL,NULL),(8,'1993-01-16',1,2,NULL,NULL),(9,'1993-12-31',1,1,NULL,NULL),(10,'1994-01-01',1,2,NULL,NULL),(11,'1994-02-02',1,1,NULL,NULL),(12,'1995-03-16',1,2,NULL,NULL),(13,'1995-02-28',1,1,NULL,NULL),(14,'1996-01-03',1,2,NULL,NULL),(15,'1996-01-03',1,1,NULL,NULL),(16,'1997-03-01',1,2,NULL,NULL),(17,'1997-02-28',1,1,NULL,NULL),(18,'1998-11-20',1,2,NULL,NULL),(19,'1998-11-11',1,1,NULL,NULL),(20,'1998-11-01',1,2,NULL,NULL),(21,'1999-12-01',1,1,NULL,NULL),(22,'2000-01-01',1,2,NULL,NULL),(23,'2000-01-30',1,1,NULL,NULL),(24,'2001-05-06',1,2,NULL,NULL),(25,'2001-04-04',1,1,NULL,NULL),(26,'2002-04-20',1,2,NULL,NULL),(27,'2002-07-01',1,1,NULL,NULL),(28,'2003-07-18',1,2,NULL,NULL),(29,'2003-07-07',1,1,NULL,NULL),(30,'2004-06-15',1,2,NULL,NULL),(31,'2004-08-13',1,1,NULL,NULL),(32,'2005-08-08',1,2,NULL,NULL),(33,'2005-09-01',1,1,NULL,NULL),(34,'2006-09-15',1,2,NULL,NULL),(35,'2006-09-20',1,1,NULL,NULL),(36,'2007-10-10',1,2,NULL,NULL),(37,'2007-10-13',1,1,NULL,NULL),(38,'2008-12-24',1,2,NULL,NULL),(39,'2008-12-01',1,1,NULL,NULL),(40,'2009-02-28',1,1,NULL,NULL),(41,'2009-02-28',1,1,NULL,NULL),(42,'2010-02-28',1,1,NULL,NULL),(43,'2010-02-28',1,1,NULL,NULL),(44,'2025-02-28',1,1,NULL,NULL),(45,'2025-02-28',1,1,NULL,NULL),(46,'2025-02-28',1,1,NULL,NULL),(47,'2025-02-28',1,1,NULL,NULL),(48,'2025-02-28',1,1,NULL,NULL),(49,'2025-02-28',1,1,NULL,NULL),(50,'2000-01-01',1,1,NULL,NULL);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(45) NOT NULL,
  `estado_registro_genero` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `id_genero_UNIQUE` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino',1),(2,'Femenino',1);
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre_estudiante`
--

DROP TABLE IF EXISTS `nombre_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombre_estudiante` (
  `id_nombre_estudiante` int NOT NULL AUTO_INCREMENT,
  `nombres_estudiante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos_estudiante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_nombre_estudiante` tinyint NOT NULL DEFAULT '1',
  `id_estudiante` int NOT NULL,
  PRIMARY KEY (`id_nombre_estudiante`),
  UNIQUE KEY `id_nombre_estudiante_UNIQUE` (`id_nombre_estudiante`),
  KEY `fk_nombre_estudiante_estudiante1_idx` (`id_estudiante`),
  CONSTRAINT `fk_nombre_estudiante_estudiante1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre_estudiante`
--

LOCK TABLES `nombre_estudiante` WRITE;
/*!40000 ALTER TABLE `nombre_estudiante` DISABLE KEYS */;
INSERT INTO `nombre_estudiante` VALUES (1,'José Alberto','Nájera Rodriguez',1,1),(2,'Nicole Carolina','Hernández Hernández',1,2),(3,'Carlos Vladimir','Rivera López',1,3),(4,'Brendali Odalis','Campos Beltrán',1,4),(5,'Oscar Vladimir','Fernández Coto',1,5),(6,'Verónica Guadalupe','Alas Rivera',0,6),(7,'Verónica Guadalupe','Alas de Cortez',1,6),(8,'Oswaldo Adalberto','López Gómez',1,7),(9,'María Estebana','Guandique Cárcamo',1,8),(10,'Humberto','Mendoza Granados',1,9),(11,'Karla María','Guardado Jiménez',0,10),(12,'Karla María','Guardado de Ayala',1,10),(13,'Mario Oscar','Monge Henríquez',1,11),(14,'Adelmira Isolina','Mijango Flores',1,12),(15,'Luis Javier','Murillo Argueta',1,13),(16,'Juana Patricia','Figueroa',1,14),(17,'Luis Omar','Guardado Ascencio',1,15),(18,'Marina Guadalupe','Ortez Trigueros',1,16),(19,'José ','Murillo García',1,17),(20,'Guadalupe Andrea','Ventura González',1,18),(21,'Omar Rigoberto','Ayala Centeno',1,19),(22,'Cinthia ','Sosa Figueroa',1,20),(23,'Iván Roberto Manrique','Gómez Pérez',1,21),(24,'Luisa Esperanza','Flores Rivera',1,22),(25,'Oswaldo Luis','Mejía Lara',1,23),(26,'Sofía Guadalupe','de la O Canjura',1,24),(27,'Jaime Alberto','Urrutia Urrutia',1,25),(28,'Amanda Jazmin','Pacheco Peña',1,26),(29,'Arturo José','Fermín Rivas',1,27),(30,'Alejandra Esmeralda','Vargas Rivera',1,28),(31,'Alonso ','Beltrán Luna',1,29),(32,'Alexandra Patricia','Vásquez Zárate',1,30),(33,'Andrés Giovanni','Contreras Morales',1,31),(34,'Yohana Masiel','de López',1,32),(35,'Freddy Javier','Angulo Beltrán',1,33),(36,'Maritza Luisa','Monterrosa Argueta',1,34),(37,'Mario Luis','Agreda Alas',1,35),(38,'Alessandra','Montenegro Corsario',1,36),(39,'Luis','Morataya Castro',1,37),(40,'Bernarda ','Montecinos Argueta',1,38),(41,'Joel Antonio','Mendoza Jiménez',1,39);
/*!40000 ALTER TABLE `nombre_estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contacto`
--

DROP TABLE IF EXISTS `tipo_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_contacto` (
  `id_tipo_contacto` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_contacto` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_registro_tipo_contacto` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo_contacto`),
  UNIQUE KEY `id_tipo_contacto_UNIQUE` (`id_tipo_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contacto`
--

LOCK TABLES `tipo_contacto` WRITE;
/*!40000 ALTER TABLE `tipo_contacto` DISABLE KEYS */;
INSERT INTO `tipo_contacto` VALUES (1,'Telefono móvil',1),(2,'Teléfono Fijo',1),(3,'Email',1);
/*!40000 ALTER TABLE `tipo_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT COMMENT 'Tabla que registra el catálogo de todos los tipo de documentos personales para identificación de estudiantes.',
  `nombre_tipo_documento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado_registro_tipo_documento` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tipo_documento`),
  UNIQUE KEY `id_tipo_documento_UNIQUE` (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'DUI',1),(2,'NIT',1),(3,'PASAPORTE',1);
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'universidad'
--

--
-- Dumping routines for database 'universidad'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-14 16:35:22
