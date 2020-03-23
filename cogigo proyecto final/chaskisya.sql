-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: chaskisya
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `administracion`
--
show databases;
create database chaskisya;
use chaskisya;

DROP TABLE IF EXISTS `administracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administracion` (
  `Id` int NOT NULL,
  `Id_administrador` int NOT NULL,
  `Id_controlador` int NOT NULL,
  `created` int NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `administracion_ibfk_1` (`Id_administrador`),
  KEY `administracion_ibfk_2` (`Id_controlador`),
  CONSTRAINT `administracion_ibfk_1` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_administrador`),
  CONSTRAINT `administracion_ibfk_2` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administracion`
--

LOCK TABLES `administracion` WRITE;
/*!40000 ALTER TABLE `administracion` DISABLE KEYS */;
INSERT INTO `administracion` VALUES (21,1,910,1,'2020-03-23 17:24:00'),(22,1,911,2,'2020-03-23 17:25:00'),(23,1,912,3,'2020-03-23 17:26:00'),(24,1,913,4,'2020-03-23 17:26:00'),(25,2,914,5,'2020-03-23 17:27:00'),(26,2,915,6,'2020-03-23 17:27:00'),(27,2,916,7,'2020-03-23 17:28:00'),(28,2,917,8,'2020-03-23 17:28:00'),(29,3,918,9,'2020-03-23 17:29:00'),(30,3,919,10,'2020-03-23 17:29:00'),(31,3,920,11,'2020-03-23 17:29:00'),(32,3,921,12,'2020-03-23 17:30:00'),(33,4,922,13,'2020-03-23 17:31:00'),(34,4,923,14,'2020-03-23 17:31:00'),(35,5,924,15,'2020-03-23 17:32:00'),(36,5,925,16,'2020-03-23 17:32:00'),(37,6,926,17,'2020-03-23 17:33:00'),(38,6,927,18,'2020-03-23 17:33:00'),(39,7,928,19,'2020-03-23 17:33:00'),(40,7,929,20,'2020-03-23 17:34:00');
/*!40000 ALTER TABLE `administracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Id_administrador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `Id_usuario` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_administrador`),
  KEY `administrador_ibfk_1` (`Id_usuario`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Manuel Valenzuela','CEO',366,1),(2,'Jaime Cortez','Contador',367,2),(3,'Ignacio Lizarazu','Sub-gerente',364,3),(4,'Rene Rengel','Sub-gerente',365,4),(5,'Pedro Fernandez','Contador-general',369,5),(6,'Llubitza Linares','Sub-gerente',374,6),(7,'Nicolas Alba','Sub-gerente',372,7);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `Id` int NOT NULL,
  `capacidad` int NOT NULL,
  `direccion` text NOT NULL,
  `Id_controlador` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `almacen_ibfk_1` (`Id_controlador`),
  CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES (610,100,'Calle Antonio Lopez,235,28041',914,1),(611,250,'Rosenthaler Str.40-41,10178',920,2),(612,75,'Davila Larrain 1690,Region Metropolitana',913,3),(613,150,'401 8th St NE',923,4),(614,345,'162 Avenue Jean Jaures,93700',924,5),(615,135,'1 Chome 12-10 Nihonbashi,Chuo City',916,6),(616,120,'20-17 Nasukawacho,Morioka,Iwate',927,7),(617,300,'Skatertnyy Pereulok,13',928,8);
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaski`
--

DROP TABLE IF EXISTS `chaski`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaski` (
  `Id_chaski` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `Nro_viajes` int NOT NULL,
  `Id_usuario` int NOT NULL,
  `Id_controlador` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_chaski`),
  KEY `chaski_ibfk_1` (`Id_usuario`),
  KEY `chaski_ibfk_2` (`Id_controlador`),
  CONSTRAINT `chaski_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`),
  CONSTRAINT `chaski_ibfk_2` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB AUTO_INCREMENT=100065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski`
--

LOCK TABLES `chaski` WRITE;
/*!40000 ALTER TABLE `chaski` DISABLE KEYS */;
INSERT INTO `chaski` VALUES (100045,'Antonio Diaz',45,387,910,1),(100046,'Edgar Lazo',78,388,911,2),(100047,'Julio Pardo',15,389,912,3),(100048,'Carlos Vargas',100,390,913,4),(100049,'Sebastian Flores',25,391,914,5),(100050,'Alex Molina',200,392,915,6),(100051,'Virginia Sainz',400,393,916,7),(100052,'Fernando Borda',150,394,917,8),(100053,',Matias Montero',176,395,918,9),(100054,'Carla Gutierrez',15,396,919,10),(100055,'Olga Sahonero',120,397,920,11),(100056,'Jorge Velasquez',300,398,921,12),(100057,'Mauricio Zarate',125,399,922,13),(100058,'Jaime Casablanca',180,400,923,14),(100059,'Erick Burgoa',90,401,924,15),(100060,'Rene Arteaga',50,402,925,16),(100061,'Rolando Zabala',500,403,926,17),(100062,'Marco Jordan',340,404,927,18),(100063,'Gregorio Collao',35,405,928,19),(100064,'Veronica Cuentas',210,406,929,20);
/*!40000 ALTER TABLE `chaski` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaski_aero`
--

DROP TABLE IF EXISTS `chaski_aero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaski_aero` (
  `Id_chaskiaero` int NOT NULL AUTO_INCREMENT,
  `Id_chaski` int NOT NULL,
  `tiendas_cono` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_chaskiaero`),
  KEY `chaski_aero_ibfk_1` (`Id_chaski`),
  CONSTRAINT `chaski_aero_ibfk_1` FOREIGN KEY (`Id_chaski`) REFERENCES `chaski` (`Id_chaski`)
) ENGINE=InnoDB AUTO_INCREMENT=200055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski_aero`
--

LOCK TABLES `chaski_aero` WRITE;
/*!40000 ALTER TABLE `chaski_aero` DISABLE KEYS */;
INSERT INTO `chaski_aero` VALUES (200045,100045,10,1),(200046,100046,23,2),(200047,100047,19,3),(200048,100048,39,4),(200049,100049,25,5),(200050,100050,60,6),(200051,100051,30,7),(200052,100052,20,8),(200053,100053,50,9),(200054,100054,15,10);
/*!40000 ALTER TABLE `chaski_aero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaski_local`
--

DROP TABLE IF EXISTS `chaski_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaski_local` (
  `Id_chaskilocal` int NOT NULL AUTO_INCREMENT,
  `Id_chaski` int NOT NULL,
  `z_conocidas` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_chaskilocal`),
  KEY `chaski_local_ibfk_1` (`Id_chaski`),
  CONSTRAINT `chaski_local_ibfk_1` FOREIGN KEY (`Id_chaski`) REFERENCES `chaski` (`Id_chaski`)
) ENGINE=InnoDB AUTO_INCREMENT=300055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski_local`
--

LOCK TABLES `chaski_local` WRITE;
/*!40000 ALTER TABLE `chaski_local` DISABLE KEYS */;
INSERT INTO `chaski_local` VALUES (300045,100055,7,1),(300046,100056,5,2),(300047,100057,10,3),(300048,100058,9,4),(300049,100059,4,5),(300050,100060,12,6),(300051,100061,11,7),(300052,100062,7,8),(300053,100063,6,9),(300054,100064,10,10);
/*!40000 ALTER TABLE `chaski_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `Id_ciudad` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'La Paz','Bolivia',1),(2,'Madrid','España',2),(3,'Roma','Italia',3),(4,'El Cairo','Egipto',4),(5,'Shanghai','China',5),(6,'Berlin','Alemania',6),(7,'Buenos Aires','Argentina',7),(8,'Bruselas','Belgica',8),(9,'Doha','Catar',9),(10,'Santiago','Chile',10),(11,'Washigton D. C.','Estados Unidos',11),(12,'Paris','Francia',12),(13,'Jerusalen','Israel',13),(14,'New Jork','Estados Unidos',14),(15,'Seul','Corea del Sur',15),(16,'Tokio','Japon',16),(17,'Ciudad de Mexico','Mexico',17),(18,'Lima','Peru',18),(19,'Moscu','Rusia',19),(20,'Lisboa','Portugal',20);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CI` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` text NOT NULL,
  `nrocasa` int NOT NULL,
  `Id_ciudad` int NOT NULL,
  `Id_usuario` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`CI`),
  KEY `cliente_ibfk_2_idx` (`Id_usuario`),
  KEY `cliente_ibfk_1` (`Id_ciudad`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1038572,'Mahmud','Mujtar','6,El Ameir Katadar,El-Tahrir square',485,4,349,15),(1078562,'David','Johnson','Lucas Alaman S/N, Obrera,Cauhtemoc',6800,17,354,10),(1078563,'Tina','Parisi','69 Rue des Gravilliers',38,12,350,12),(1679024,'Gao','Wang','Bunkyo city,Hongo,7-3-1',345,16,351,13),(2059092,'Gian','Carletti','Via Antonio Rosmini,9,RM',184,3,352,11),(3407206,'Michael','Williams','20W 34th St,NY',678,14,348,7),(3456781,'Alejandro','Zapata','Av.de Daroca,Calle cyesa',123,2,342,4),(3689230,'Andrew','Jones','511 10th St NW',890,11,347,9),(4929124,'Juaquin','Sanchez','Terraza Mercado de San Anton,Calle augusto Figueroa',45,2,345,8),(6278031,'Huang','Wu','Xinchen Hwy,Songiang District',123,5,353,14),(6734893,'Andrea','Muñoz','Dr.jose Rebbizzo,Caseros',4715,7,343,5),(6789453,'Juan Carlos','Tordoya','Av.Ejercito libertador 71',550,10,341,1),(7645231,'Marisol','Solares','Av.Arequipa,URB.SANTA BEATRIZ',43,18,340,2),(8907481,'Jose','Mamani','Av.julio,Calle Pantino',8109,1,346,6),(9078562,'Pedro','Rodriguez','Av.de America, Calle gral Oraa',23,2,344,3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlador`
--

DROP TABLE IF EXISTS `controlador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlador` (
  `Id_controlador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `Id_ciudad` int NOT NULL,
  `Id_usuario` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_controlador`),
  KEY `controlador_ibfk_1` (`Id_ciudad`),
  KEY `controlador_ibfk_2` (`Id_usuario`),
  CONSTRAINT `controlador_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `controlador_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=930 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlador`
--

LOCK TABLES `controlador` WRITE;
/*!40000 ALTER TABLE `controlador` DISABLE KEYS */;
INSERT INTO `controlador` VALUES (910,'Leonardo Valda',7,360,1),(911,'Belen Aguilar',18,361,2),(912,'Maria Fernandez',17,362,3),(913,'Rodrigo Ayala',10,363,4),(914,'Alejandra Jeri',2,368,5),(915,'Tamara Camargo',1,370,6),(916,'Adrian Ascarrunz',16,373,7),(917,'Carlos Navajas',5,371,8),(918,'Andre Sagarnaga',3,375,9),(919,'Arturo Zabaleta',4,376,10),(920,'Sabrina Aneiva',6,377,11),(921,'Jorge Gallardo',8,378,12),(922,'Mario Martinez',9,379,13),(923,'Ivan Rojas',11,380,14),(924,'Omar Rivera',12,381,15),(925,'Rolando Pedraza',13,382,16),(926,'Walter Pacheco',14,383,17),(927,'Antonio Maceda',15,384,18),(928,'Graciela Indaburo',19,385,19),(929,'Guillermo Ramos',20,386,20);
/*!40000 ALTER TABLE `controlador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `Id_pedido` int NOT NULL,
  `Id_producto` varchar(18) NOT NULL,
  `CI_cliente` int NOT NULL,
  `Fecha_pedido` date NOT NULL,
  `cantidad` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_pedido`,`Id_producto`),
  KEY `Id_producto` (`Id_producto`),
  KEY `detalle_pedido_ibfk_1` (`CI_cliente`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`CI_cliente`) REFERENCES `cliente` (`CI`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`Id_pedido`) REFERENCES `pedido` (`Id_pedido`),
  CONSTRAINT `detalle_pedido_ibfk_3` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (102001,'prod0001',6789453,'2019-03-03',3,1),(102002,'prod0002',7645231,'2020-03-03',2,2),(102003,'prod0003',9078562,'2019-11-12',1,3),(102004,'prod0004',3456781,'2020-10-12',2,4),(102005,'prod0005',6734893,'2019-12-06',5,5),(102006,'prod0006',8907481,'2019-06-08',4,6),(102007,'prod0007',3407206,'2020-01-02',12,7),(102008,'prod0008',4929124,'2019-09-04',3,8),(102009,'prod0009',3689230,'2020-02-28',1,9),(102010,'prod0010',1078562,'2019-11-28',1,10),(102011,'prod0001',2059092,'2020-12-25',2,11),(102012,'prod0002',1078563,'2019-08-14',4,12),(102013,'prod0003',1679024,'2020-06-28',7,13),(102014,'prod0004',6278031,'2019-12-25',4,14),(102015,'prod0005',1038572,'2019-05-21',1,15),(102016,'prod0006',3407206,'2020-03-15',5,16),(102017,'prod0007',7645231,'2019-12-15',6,17),(102018,'prod0008',1078562,'2020-03-16',3,18),(102019,'prod0009',3456781,'2019-04-20',1,19),(102020,'prod0010',8907481,'2020-01-29',4,20);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega_producto`
--

DROP TABLE IF EXISTS `entrega_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega_producto` (
  `Id` int NOT NULL,
  `CI_cliente` int NOT NULL,
  `Id_chaskilocal` int NOT NULL,
  `created` int NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `entrega_producto_ibfk_1` (`CI_cliente`),
  KEY `entrega_producto_ibfk_2` (`Id_chaskilocal`),
  CONSTRAINT `entrega_producto_ibfk_1` FOREIGN KEY (`CI_cliente`) REFERENCES `cliente` (`CI`),
  CONSTRAINT `entrega_producto_ibfk_2` FOREIGN KEY (`Id_chaskilocal`) REFERENCES `chaski_local` (`Id_chaskilocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega_producto`
--

LOCK TABLES `entrega_producto` WRITE;
/*!40000 ALTER TABLE `entrega_producto` DISABLE KEYS */;
INSERT INTO `entrega_producto` VALUES (40001,6789453,300051,1,'2020-03-23 18:04:00'),(40002,7645231,300045,2,'2020-03-23 18:05:00'),(40003,9078562,300046,3,'2020-03-23 18:05:00'),(40004,3456781,300047,4,'2020-03-23 18:06:00'),(40005,6734893,300048,5,'2020-03-23 18:06:00'),(40006,8907481,300049,6,'2020-03-23 18:08:00'),(40007,3407206,300050,7,'2020-03-23 18:08:00'),(40008,4929124,300051,8,'2020-03-23 18:09:00'),(40009,3689230,300052,9,'2020-03-23 18:09:00'),(40010,1078562,300053,10,'2020-03-23 18:09:00'),(40011,2059092,300054,11,'2020-03-23 18:09:00'),(40012,1078563,300045,12,'2020-03-23 18:10:00'),(40013,1679024,300046,13,'2020-03-23 18:10:00'),(40014,6278031,300047,14,'2020-03-23 18:11:00'),(40015,1038572,300048,15,'2020-03-23 18:11:00'),(40016,3407206,300049,16,'2020-03-23 18:11:00'),(40017,7645231,300050,17,'2020-03-23 18:12:00'),(40018,1078562,300051,18,'2020-03-23 18:12:00'),(40019,3456781,300052,19,'2020-03-23 18:13:00'),(40020,8907481,300053,20,'2020-03-23 18:13:00');
/*!40000 ALTER TABLE `entrega_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Id_pedido` int NOT NULL,
  `Id_controlador` int NOT NULL,
  `Id_seguro` varchar(15) DEFAULT NULL,
  `Id_vuelo` int NOT NULL,
  `aduana` tinyint(1) NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_pedido`),
  KEY `pedido_ibfk_1` (`Id_controlador`),
  KEY `pedido_ibfk_2` (`Id_seguro`),
  KEY `pedido_ibfk_3` (`Id_vuelo`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Id_seguro`) REFERENCES `seguro` (`Id`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`Id_vuelo`) REFERENCES `vuelo` (`Id_vuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (102001,910,'seg002',20,1,1),(102002,911,NULL,21,1,2),(102003,912,NULL,22,1,3),(102004,913,'seg001',23,0,4),(102005,914,NULL,24,1,5),(102006,915,'seg004',25,1,6),(102007,916,'seg002',26,1,7),(102008,917,'seg001',27,0,8),(102009,918,NULL,28,1,9),(102010,919,'seg004',29,1,10),(102011,910,'seg001',20,1,11),(102012,911,'seg003',21,1,12),(102013,912,NULL,22,0,13),(102014,913,'seg001',23,1,14),(102015,914,'seg003',24,1,15),(102016,915,'seg002',25,1,16),(102017,916,NULL,26,1,17),(102018,917,'seg001',27,0,18),(102019,918,'seg004',28,1,19),(102020,919,'seg001',29,1,20);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `Id_producto` varchar(18) NOT NULL,
  `pais_origen` text NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `tamaño` varchar(15) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `Id_proveedor` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_producto`),
  KEY `producto_ibfk_1` (`Id_proveedor`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedor` (`Id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('prod0001','China','Electronico','Pequeño',0.15,1000.00,732,1),('prod0002','Corea del Sur','Electronico','Pequeño',0.30,1200.00,732,2),('prod0003','España','Prendas_vestir','Mediano',1.00,30.00,731,3),('prod0004','Mexico','Golocinas','Pequeño',1.00,5.00,730,4),('prod0005','Francia','Electronicos','Grande',10.00,1000.00,734,5),('prod0006','United Kindom','Electronicos','Mediano',2.00,300.00,734,6),('prod0007','China','Electronicos','pequeño',0.60,700.00,732,7),('prod0008','Japon','Electronicos','pequeño',0.35,1200.00,732,8),('prod0009','España','Prendas_vestir','Mediano',1.00,70.00,731,9),('prod0010','Peru','Ropa_deportiva','Mediano',1.50,80.00,733,10);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_almacen`
--

DROP TABLE IF EXISTS `producto_almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_almacen` (
  `Id` int NOT NULL,
  `Id_almacen` int NOT NULL,
  `Id_producto` varchar(18) NOT NULL,
  `cantidad_prod` int NOT NULL,
  `created` int NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `producto_almacen_ibfk_1` (`Id_almacen`),
  KEY `producto_almacen_ibfk_2` (`Id_producto`),
  CONSTRAINT `producto_almacen_ibfk_1` FOREIGN KEY (`Id_almacen`) REFERENCES `almacen` (`Id`),
  CONSTRAINT `producto_almacen_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_almacen`
--

LOCK TABLES `producto_almacen` WRITE;
/*!40000 ALTER TABLE `producto_almacen` DISABLE KEYS */;
INSERT INTO `producto_almacen` VALUES (50001,610,'prod0001',70,1,'2020-03-23 17:39:00'),(50002,611,'prod0002',50,2,'2020-03-23 17:39:00'),(50003,612,'prod0003',60,3,'2020-03-23 17:40:00'),(50004,613,'prod0004',90,4,'2020-03-23 17:41:00'),(50005,614,'prod0005',10,5,'2020-03-23 17:41:00'),(50006,615,'prod0006',35,6,'2020-03-23 17:41:00'),(50007,616,'prod0007',89,7,'2020-03-23 17:42:00'),(50008,617,'prod0008',100,8,'2020-03-23 17:42:00'),(50009,610,'prod0009',75,9,'2020-03-23 17:43:00'),(50010,611,'prod0010',200,10,'2020-03-23 17:44:00'),(50011,612,'prod0001',35,11,'2020-03-23 17:45:00'),(50012,613,'prod0002',98,12,'2020-03-23 17:46:00'),(50013,614,'prod0003',45,13,'2020-03-23 17:47:00'),(50014,615,'prod0004',26,14,'2020-03-23 17:48:00'),(50015,616,'prod0005',56,15,'2020-03-23 17:48:00'),(50016,617,'prod0006',24,16,'2020-03-23 17:49:00'),(50017,610,'prod0007',125,17,'2020-03-23 17:49:00'),(50018,611,'prod0008',35,18,'2020-03-23 17:50:00'),(50019,612,'prod0009',14,19,'2020-03-23 17:50:00'),(50020,613,'prod0010',23,20,'2020-03-23 17:51:00');
/*!40000 ALTER TABLE `producto_almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `Id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `nivel_confianza` int NOT NULL,
  `direccion` text NOT NULL,
  `Id_ciudad` int NOT NULL,
  `Id_usuario` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_proveedor`),
  KEY `proveedor_ibfk_1` (`Id_ciudad`),
  KEY `proveedor_ibfk_2` (`Id_usuario`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=735 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (730,'Julian Paredes',60,'Diagonal San Antonio 1709-C, Narvarte Poniente',17,355,1),(731,'Jose Torrez',75,'Pasadizo de San Gines,5,28013',2,356,2),(732,'Natalia Siles',55,'Gral Amengual 494,Santiago,Estacion Central',10,357,3),(733,'Emmanuel Mercado',100,'Jiron Sebastian Barranca 935,La victoria',18,358,4),(734,'Leandro Abdo',70,'32 Rue Saint-Maur,75011',12,359,5);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguro` (
  `Id` varchar(15) NOT NULL,
  `nombre_seguro` varchar(20) NOT NULL,
  `precio` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES ('seg001','Rojo',20,1),('seg002','Azul',30,2),('seg003','Verde',50,3),('seg004','Dorado',70,4);
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre_usuario` varchar(30) DEFAULT NULL,
  `tipo_usuario` varchar(10) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (340,'MARISOL39','Cliente','Marsol200',2),(341,'JUANQUI123','Cliente','juanqui20056',1),(342,'ALEZAPATA34','Cliente','Aleza09876',4),(343,'ANDREAMU','Cliente','Muñoz2345',5),(344,'PEDROGUEZ03','Cliente','rodrirO3',3),(345,'JUASAN45','Cliente','Sanjua45',8),(346,'JOSEMA78','Cliente','Josema78',6),(347,'ANJONES12','Cliente','Joandrew34',9),(348,'MICHAELWI123','Cliente','Miwilliams345',7),(349,'MUJTAR908','Cliente','Mahmud2078',15),(350,'PARISITI890','Cliente','Tinapari45',12),(351,'WANG3456','Cliente','Gaowang3456',13),(352,'CARLEGI67','Cliente','Carlettigi67',11),(353,'WUHUANG65','Cliente','Wu65huang',14),(354,'JOHNDA89','Cliente','davidSon89',10),(355,'PAREJU23','Proveedor','Ju123paredes',16),(356,'TORREZJO34','Proveedor','Joserrez34',18),(357,'SILESNAT56','Proveedor','Nat56sil',20),(358,'MEREMMA45','Proveedor','Mercadonuek45',17),(359,'ABLEAN90','Proveedor','Abdo90',19),(360,'VALLEO23','Empleado','Valandro230',23),(361,'AGUIBE78','Empleado','Aguilen78',21),(362,'FERMARI67','Empleado','nAndezfer678',24),(363,'AYAROD345','Empleado','Rodsayala45',22),(364,'IGNALIZA67','Empleado','Lizaigna67',28),(365,'RENEREN89','Empleado','Rengel790',29),(366,'VALMANU34','Empleado','Valenz3089',26),(367,'CORTEZJA45','Empleado','Juliocor89',27),(368,'JERIALE34','Empleado','Jandrajeri34',25),(369,'FERPEDRO09','Empleado','Pednandez098',30),(370,'CAMATAM56','Empleado','Tamcamarg90',33),(371,'CARLNAV45','Empleado','CharlieNav654',35),(372,'ALBANIC678','Empleado','Alnic678',32),(373,'ASCARIAN23','Empleado','Adrirrunz98',34),(374,'LLUBILI89','Empleado','Gabilina43',31),(375,'SAGARAN45','Empleado','Andresa304',36),(376,'ZABATUR67','Empleado','Arturba405',37),(377,'ANESABRI78','Empleado','sAbriane123',38),(378,'JORGALLAR40','Empleado','GallarJOr30',39),(379,'MARIO390','Empleado','marTinezMar389',40),(380,'IVROJAS20','Empleado','Rojiv756',41),(381,'RIVEOMAR71','Empleado','Omiriv102',42),(382,'ROLANPED95','Empleado','PEDrol200',43),(383,'WALPACHE78','Empleado','pacHecoal308',44),(384,'ANTONYMA34','Empleado','Macetonio278',45),(385,'INDAGRA267','Empleado','graci40in',46),(386,'GUILLERA30','Empleado','Guiramos2017',47),(387,'ANTODIAZ90','Empleado','anTonioDi2067',48),(388,'EDGALAZO73','Empleado','Lazoed998',49),(389,'JULIPAR223','Empleado','Pardexju334',50),(390,'CARLVARG44','Empleado','varGaCar332',51),(391,'SEBASFLO32','Empleado','floResSeb443',52),(392,'MOLIAL223','Empleado','alexmmoli32',53),(393,'SAINZVIR20','Empleado','saInzgini2089',54),(394,'BORFERNA223','Empleado','borNaNdo334',55),(395,'MONTEMA389','Empleado','monteMaTi212',56),(396,'CARLAGU290','Empleado','GutiCA209',57),(397,'SAHOOLGA23','Empleado','OlgAsaho54',58),(398,'JORVELAS','Empleado','Vejorge290',59),(399,'MAURIRATE10','Empleado','Zaratemau389',60),(400,'CASAJAIME123','Empleado','Blacaja342',61),(401,'BURGERIC22','Empleado','Ricyburgi334',62),(402,'ARTEARE332','Empleado','Renucoarte2213',63),(403,'ROLANZABA334','Empleado','zaBarOlan332',64),(404,'MARCJOR068','Empleado','jORdanma308',65),(405,'FOLLAOGRE23','Empleado','Collaogreg453',66),(406,'VERONICCUEN56','Empleado','CuentasVero43',67);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelo` (
  `Id_vuelo` int NOT NULL,
  `Nro_vuelo` int NOT NULL,
  `F_vuelo` date NOT NULL,
  `A_salida` text NOT NULL,
  `A_llegada` text NOT NULL,
  `Id_chaskiaero` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`Id_vuelo`),
  KEY `vuelo_ibfk_1` (`Id_chaskiaero`),
  CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`Id_chaskiaero`) REFERENCES `chaski_aero` (`Id_chaskiaero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
INSERT INTO `vuelo` VALUES (20,180,'2019-03-03','Argentina,Internacional Ezeiza','Bolivia,El alto internacional',200045,1),(21,267,'2020-03-12','Peru,Internacional Jorge Chavez','España,Barajas Adolfo Suarez',200046,2),(22,345,'2019-11-15','Mexico,Internacional Benito Juarez','Colombia,El Dorado',200047,3),(23,789,'2020-02-15','Chile,Arturo Merino Benitez','Bolivia,Internacional Viru Viru',200048,4),(24,378,'2019-12-12','España,Barajas Adolfo Suarez','Francia,Charles de Gaulle',200049,5),(25,634,'2020-01-12','Bolivia,El Alto internacional','Mexico,Internacional Benito Juarez',200050,6),(26,234,'2019-08-09','Japon,Internacional Tokio','China,Pudong',200051,7),(27,208,'2020-01-13','Egipto,Internacional de El Cairo','Emiratos Arabes,Internacional de Dubai',200052,8),(28,725,'2019-10-12','Alemania,Berlin-Tegel','Italia,Roma-Fiumicino',200053,9),(29,108,'2019-12-04','Belgica,Bruselas Internacional','Republica-Checa,Praga internacional',200054,10);
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 18:34:18
