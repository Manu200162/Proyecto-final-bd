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

DROP TABLE IF EXISTS `administracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administracion` (
  `Id` int NOT NULL,
  `Id_administrador` int DEFAULT NULL,
  `Id_controlador` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_administrador` (`Id_administrador`),
  KEY `Id_controlador` (`Id_controlador`),
  CONSTRAINT `administracion_ibfk_1` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_administrador`),
  CONSTRAINT `administracion_ibfk_2` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administracion`
--

LOCK TABLES `administracion` WRITE;
/*!40000 ALTER TABLE `administracion` DISABLE KEYS */;
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
  `nombre` varchar(30) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `Id_usuario` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_administrador`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
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
  `capacidad` int DEFAULT NULL,
  `direccion` text,
  `Id_ciudad` int DEFAULT NULL,
  `Id_controlador` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_ciudad` (`Id_ciudad`),
  KEY `Id_controlador` (`Id_controlador`),
  CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `almacen_ibfk_2` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
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
  `nombre` varchar(25) DEFAULT NULL,
  `Nro_reparticiones` int DEFAULT NULL,
  `Id_usuario` int DEFAULT NULL,
  `Id_controlador` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_chaski`),
  KEY `Id_usuario` (`Id_usuario`),
  KEY `Id_controlador` (`Id_controlador`),
  CONSTRAINT `chaski_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`),
  CONSTRAINT `chaski_ibfk_2` FOREIGN KEY (`Id_controlador`) REFERENCES `controlador` (`Id_controlador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski`
--

LOCK TABLES `chaski` WRITE;
/*!40000 ALTER TABLE `chaski` DISABLE KEYS */;
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
  `Id_chaski` int DEFAULT NULL,
  `tiendas_cono` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_chaskiaero`),
  KEY `Id_chaski` (`Id_chaski`),
  CONSTRAINT `chaski_aero_ibfk_1` FOREIGN KEY (`Id_chaski`) REFERENCES `chaski` (`Id_chaski`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski_aero`
--

LOCK TABLES `chaski_aero` WRITE;
/*!40000 ALTER TABLE `chaski_aero` DISABLE KEYS */;
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
  `Id_chaski` int DEFAULT NULL,
  `z_conocidas` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_chaskilocal`),
  KEY `Id_chaski` (`Id_chaski`),
  CONSTRAINT `chaski_local_ibfk_1` FOREIGN KEY (`Id_chaski`) REFERENCES `chaski` (`Id_chaski`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaski_local`
--

LOCK TABLES `chaski_local` WRITE;
/*!40000 ALTER TABLE `chaski_local` DISABLE KEYS */;
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
  `nombre` varchar(25) DEFAULT NULL,
  `Id_ciudad` int DEFAULT NULL,
  `Id_usuario` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_controlador`),
  KEY `Id_ciudad` (`Id_ciudad`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `controlador_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `ciudad` (`Id_ciudad`),
  CONSTRAINT `controlador_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlador`
--

LOCK TABLES `controlador` WRITE;
/*!40000 ALTER TABLE `controlador` DISABLE KEYS */;
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
  `CI_cliente` int DEFAULT NULL,
  `Fecha_pedido` date DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_pedido`,`Id_producto`),
  KEY `CI_cliente` (`CI_cliente`),
  KEY `Id_producto` (`Id_producto`),
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
  `CI_cliente` int DEFAULT NULL,
  `Id_chaskilocal` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CI_cliente` (`CI_cliente`),
  KEY `Id_chaskilocal` (`Id_chaskilocal`),
  CONSTRAINT `entrega_producto_ibfk_1` FOREIGN KEY (`CI_cliente`) REFERENCES `cliente` (`CI`),
  CONSTRAINT `entrega_producto_ibfk_2` FOREIGN KEY (`Id_chaskilocal`) REFERENCES `chaski_local` (`Id_chaskilocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega_producto`
--

LOCK TABLES `entrega_producto` WRITE;
/*!40000 ALTER TABLE `entrega_producto` DISABLE KEYS */;
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
  `Id_controlador` int DEFAULT NULL,
  `Id_seguro` varchar(15) DEFAULT NULL,
  `Id_vuelo` int DEFAULT NULL,
  `aduana` tinyint(1) DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_pedido`),
  KEY `Id_controlador` (`Id_controlador`),
  KEY `Id_seguro` (`Id_seguro`),
  KEY `Id_vuelo` (`Id_vuelo`),
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
  `Id_almacen` int DEFAULT NULL,
  `Id_producto` varchar(18) DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_almacen` (`Id_almacen`),
  KEY `Id_producto` (`Id_producto`),
  CONSTRAINT `producto_almacen_ibfk_1` FOREIGN KEY (`Id_almacen`) REFERENCES `almacen` (`Id`),
  CONSTRAINT `producto_almacen_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_almacen`
--

LOCK TABLES `producto_almacen` WRITE;
/*!40000 ALTER TABLE `producto_almacen` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (340,'MARISOL39','Cliente','Marsol200',2),(341,'JUANQUI123','Cliente','juanqui20056',1),(342,'ALEZAPATA34','Cliente','Aleza09876',4),(343,'ANDREAMU','Cliente','Muñoz2345',5),(344,'PEDROGUEZ03','Cliente','rodrirO3',3),(345,'JUASAN45','Cliente','Sanjua45',8),(346,'JOSEMA78','Cliente','Josema78',6),(347,'ANJONES12','Cliente','Joandrew34',9),(348,'MICHAELWI123','Cliente','Miwilliams345',7),(349,'MUJTAR908','Cliente','Mahmud2078',15),(350,'PARISITI890','Cliente','Tinapari45',12),(351,'WANG3456','Cliente','Gaowang3456',13),(352,'CARLEGI67','Cliente','Carlettigi67',11),(353,'WUHUANG65','Cliente','Wu65huang',14),(354,'JOHNDA89','Cliente','davidSon89',10),(355,'PAREJU23','Proveedor','Ju123paredes',16),(356,'TORREZJO34','Proveedor','Joserrez34',18),(357,'SILESNAT56','Proveedor','Nat56sil',20),(358,'MEREMMA45','Proveedor','Mercadonuek45',17),(359,'ABLEAN90','Proveedor','Abdo90',19),(360,'VALLEO23','Empleado','Valandro230',23),(361,'AGUIBE78','Empleado','Aguilen78',21),(362,'FERMARI67','Empleado','nAndezfer678',24),(363,'AYAROD345','Empleado','Rodsayala45',22),(364,'IGNALIZA67','Empleado','Lizaigna67',28),(365,'RENEREN89','Empleado','Rengel790',29),(366,'VALMANU34','Empleado','Valenz3089',26),(367,'CORTEZJA45','Empleado','Juliocor89',27),(368,'JERIALE34','Empleado','Jandrajeri34',25),(369,'FERPEDRO09','Empleado','Pednandez098',30),(370,'CAMATAM56','Empleado','Tamcamarg90',33),(371,'CARLNAV45','Empleado','CharlieNav654',35),(372,'ALBANIC678','Empleado','Alnic678',32),(373,'ASCARIAN23','Empleado','Adrirrunz98',34),(374,'LLUBILI89','Empleado','Gabilina43',31);
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
  `Nro_vuelo` int DEFAULT NULL,
  `F_vuelo` date DEFAULT NULL,
  `A_salida` text,
  `A_llegada` text,
  `Id_chaskiaero` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`Id_vuelo`),
  KEY `Id_chaskiaero` (`Id_chaskiaero`),
  CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`Id_chaskiaero`) REFERENCES `chaski_aero` (`Id_chaskiaero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
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

-- Dump completed on 2020-03-22 16:18:25
