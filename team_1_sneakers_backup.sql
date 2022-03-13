CREATE DATABASE  IF NOT EXISTS `sneakers` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sneakers`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: sneakers
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `availibility`
--

DROP TABLE IF EXISTS `availibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availibility` (
  `Availability_ID` int NOT NULL,
  `Availability` varchar(45) NOT NULL,
  PRIMARY KEY (`Availability_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availibility`
--

LOCK TABLES `availibility` WRITE;
/*!40000 ALTER TABLE `availibility` DISABLE KEYS */;
INSERT INTO `availibility` VALUES (1,'Yes'),(2,'No');
/*!40000 ALTER TABLE `availibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `Brand_ID` int NOT NULL,
  `Brand_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Yeezy'),(2,'Off-White');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `four_style_dates`
--

DROP TABLE IF EXISTS `four_style_dates`;
/*!50001 DROP VIEW IF EXISTS `four_style_dates`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `four_style_dates` AS SELECT 
 1 AS `Shoe Name`,
 1 AS `Release Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Inventory_ID` int NOT NULL,
  `Shoe_Name` varchar(45) DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Availibility_ID` int NOT NULL,
  `Price_ID` int NOT NULL,
  `Brand_ID` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`),
  KEY `fk_Inventory_Availibility1_idx` (`Availibility_ID`),
  KEY `fk_Inventory_Price1_idx` (`Price_ID`),
  KEY `fk_Inventory_Brands1_idx` (`Brand_ID`),
  CONSTRAINT `fk_Inventory_Availibility1` FOREIGN KEY (`Availibility_ID`) REFERENCES `availibility` (`Availability_ID`),
  CONSTRAINT `fk_Inventory_Brands1` FOREIGN KEY (`Brand_ID`) REFERENCES `brand` (`Brand_ID`),
  CONSTRAINT `fk_Inventory_Price1` FOREIGN KEY (`Price_ID`) REFERENCES `price` (`Price_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1001,'Adidas-Yeezy-Boost-350-V2-Core-Black-Red-2017','2017-02-11',2,6,1),(1002,'Adidas-Yeezy-Boost-350-Low-Turtledove','2017-02-12',2,5,1),(1003,'Adidas-Yeezy-Boost-350-V2-Cream-White','2017-02-13',2,6,1),(1004,'Adidas-Yeezy-Boost-350-Low-V2-Beluga','2017-02-14',2,6,1),(1005,'adidas-Yeezy-Boost-350-V2-Static','2017-02-15',2,6,1),(1006,'adidas-Yeezy-Boost-350-V2-Static','2017-02-16',2,6,1),(1007,'Adidas-Yeezy-Boost-350-Low-Moonrock','2017-02-17',2,5,1),(1008,'Adidas-Yeezy-Boost-350-Low-Pirate-Black-2016','2017-02-18',2,5,1),(1009,'Adidas-Yeezy-Boost-350-V2-Core-Black-White','2017-02-19',2,6,1),(1010,'Adidas-Yeezy-Boost-350-V2-Beluga-2pt0','2017-02-20',2,6,1),(1011,'Adidas-Yeezy-Boost-350-V2-Core-Black-Copper','2017-02-21',2,6,1),(1012,'adidas-Yeezy-Boost-350-V2-Butter','2017-02-22',2,6,1),(1013,'Adidas-Yeezy-Boost-350-V2-Core-Black-Green','2017-02-23',2,6,1),(1014,'Adidas-Yeezy-Boost-350-V2-Zebra','2017-02-24',2,6,1),(1015,'Adidas-Yeezy-Boost-350-V2-Core-Black-Red-2017','2017-02-25',2,6,1),(1016,'Adidas-Yeezy-Boost-350-Low-Pirate-Black-2015','2017-02-26',2,5,1),(1017,'adidas-Yeezy-Boost-350-V2-Static-Reflective','2017-02-27',2,6,1),(1018,'Adidas-Yeezy-Boost-350-V2-Semi-Frozen-Yellow','2017-02-28',2,6,1),(1019,'Adidas-Yeezy-Boost-350-V2-Sesame','2017-03-01',2,6,1),(1020,'Adidas-Yeezy-Boost-350-Low-Oxford-Tan','2017-03-02',2,5,1),(1021,'adidas-Yeezy-Boost-350-V2-Static','2017-03-03',2,6,1),(1022,'Adidas-Yeezy-Boost-350-V2-Sesame','2017-03-04',2,6,1),(1023,'adidas-Yeezy-Boost-350-V2-Butter','2017-03-05',2,6,1),(1024,'Adidas-Yeezy-Boost-350-V2-Zebra','2017-03-06',2,6,1),(1025,'Adidas-Yeezy-Boost-350-V2-Blue-Tint','2017-03-07',2,6,1),(1026,'Nike-Air-Presto-Off-White-White-2018','2018-08-03',2,2,2),(1028,'Nike-Air-Max-97-Off-White-Menta','2018-08-05',2,4,2),(1029,'Nike-Air-Max-90-Off-White-Black','2018-08-06',2,2,2),(1030,'Nike-Air-Presto-Off-White','2018-08-07',2,2,2),(1031,'Nike-Air-Force-1-Low-Off-White-Volt','2018-08-08',2,3,2),(1032,'Nike-Zoom-Fly-Off-White-Black-Silver','2018-08-09',2,3,2),(1033,'Nike-Air-Max-97-Off-White','2018-08-10',2,4,2),(1035,'Nike-Air-Force-1-Low-Off-White','2018-08-12',2,3,2),(1036,'Nike-Zoom-Fly-Off-White','2018-08-13',2,3,2),(1037,'Nike-React-Hyperdunk-2017-Flyknit-Off-White','2018-08-14',2,5,2),(1038,'Air-Jordan-1-Retro-High-Off-White-Chicago','2018-08-15',2,4,2),(1039,'Nike-Blazer-Mid-Off-White','2018-08-16',2,1,2),(1040,'Nike-Air-Presto-Off-White-Black-2018','2018-08-17',2,2,2),(1041,'Nike-Air-Max-97-Off-White-Black','2018-08-18',2,4,2),(1042,'Nike-Air-Max-90-Off-White-Desert-Ore','2018-08-19',2,2,2),(1043,'Nike-Blazer-Mid-Off-White-All-Hallows-Eve','2018-08-20',2,1,2),(1044,'Nike-Blazer-Mid-Off-White-Grim-Reaper','2018-08-21',2,1,2),(1045,'Nike-Air-VaporMax-Off-White-Black','2018-08-22',2,7,2),(1046,'Air-Jordan-1-Retro-High-Off-White-White','2018-08-23',2,4,2),(1047,'Nike-Blazer-Mid-Off-White-Wolf-Grey','2018-08-24',2,1,2),(1048,'Nike-Zoom-Fly-Mercurial-Off-White-Black','2018-08-25',2,5,2),(1049,'Nike-Air-VaporMax-Off-White','2018-08-26',2,7,2),(1050,'Nike-Air-VaporMax-Off-White-2018','2018-08-27',2,7,2);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `Price_ID` int NOT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Price_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,130),(2,160),(3,170),(4,190),(5,200),(6,220),(7,250);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `release_recap`
--

DROP TABLE IF EXISTS `release_recap`;
/*!50001 DROP VIEW IF EXISTS `release_recap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `release_recap` AS SELECT 
 1 AS `Size`,
 1 AS `Brand_Name`,
 1 AS `Release_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shoe_size_inventory`
--

DROP TABLE IF EXISTS `shoe_size_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoe_size_inventory` (
  `Inventory_ID` int NOT NULL,
  `Size_ID` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`,`Size_ID`),
  KEY `fk_Inventory_has_Size_Size1_idx` (`Size_ID`),
  KEY `fk_Inventory_has_Size_Inventory1_idx` (`Inventory_ID`),
  CONSTRAINT `fk_Inventory_has_Size_Inventory1` FOREIGN KEY (`Inventory_ID`) REFERENCES `inventory` (`Inventory_ID`),
  CONSTRAINT `fk_Inventory_has_Size_Size1` FOREIGN KEY (`Size_ID`) REFERENCES `size` (`Size_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoe_size_inventory`
--

LOCK TABLES `shoe_size_inventory` WRITE;
/*!40000 ALTER TABLE `shoe_size_inventory` DISABLE KEYS */;
INSERT INTO `shoe_size_inventory` VALUES (1016,1),(1017,1),(1018,1),(1019,1),(1020,1),(1021,1),(1022,1),(1023,1),(1024,1),(1025,1),(1040,1),(1041,1),(1042,1),(1043,1),(1044,1),(1045,1),(1046,1),(1047,1),(1048,1),(1049,1),(1050,1),(1001,2),(1002,2),(1003,2),(1004,2),(1005,2),(1006,2),(1007,2),(1026,2),(1028,2),(1029,2),(1030,2),(1031,2),(1032,2),(1008,3),(1009,3),(1010,3),(1011,3),(1012,3),(1013,3),(1014,3),(1015,3),(1033,3),(1035,3),(1036,3),(1037,3),(1038,3),(1039,3);
/*!40000 ALTER TABLE `shoe_size_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoe_style`
--

DROP TABLE IF EXISTS `shoe_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoe_style` (
  `Style_ID` int NOT NULL,
  `Style_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Style_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoe_style`
--

LOCK TABLES `shoe_style` WRITE;
/*!40000 ALTER TABLE `shoe_style` DISABLE KEYS */;
INSERT INTO `shoe_style` VALUES (1,'Adidas_Yeezy_Boost_350_Low'),(2,'Adidas_Yeezy_Boost_350_V2'),(3,'Nike_Air_Presto_Off_White'),(4,'Air_Jordan_1_Retro_High'),(5,'Nike_Air_Max_97'),(6,'Nike_Air_Max_90'),(7,'Nike_Air_Force_1_Low'),(8,'Nike_Zoom_Fly_Off_White'),(9,'Nike_React_Hyperdunk_2017_Flyknit'),(10,'Nike_Blazer_Mid_Off_White'),(11,'Nike_Air_VaporMax'),(12,'Nike_Zoom_Fly_Mercurial');
/*!40000 ALTER TABLE `shoe_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoe_style_inventory`
--

DROP TABLE IF EXISTS `shoe_style_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoe_style_inventory` (
  `Inventory_ID` int NOT NULL,
  `Style_ID` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`,`Style_ID`),
  KEY `fk_Inventory_has_Shoe Style_Shoe Style1_idx` (`Style_ID`),
  KEY `fk_Inventory_has_Shoe Style_Inventory1_idx` (`Inventory_ID`),
  CONSTRAINT `fk_Inventory_has_Shoe Style_Inventory1` FOREIGN KEY (`Inventory_ID`) REFERENCES `inventory` (`Inventory_ID`),
  CONSTRAINT `fk_Inventory_has_Shoe Style_Shoe Style1` FOREIGN KEY (`Style_ID`) REFERENCES `shoe_style` (`Style_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoe_style_inventory`
--

LOCK TABLES `shoe_style_inventory` WRITE;
/*!40000 ALTER TABLE `shoe_style_inventory` DISABLE KEYS */;
INSERT INTO `shoe_style_inventory` VALUES (1002,1),(1004,1),(1007,1),(1008,1),(1016,1),(1020,1),(1001,2),(1003,2),(1005,2),(1006,2),(1009,2),(1010,2),(1011,2),(1012,2),(1013,2),(1014,2),(1015,2),(1017,2),(1018,2),(1019,2),(1021,2),(1022,2),(1023,2),(1024,2),(1025,2),(1026,3),(1030,3),(1040,3),(1038,4),(1046,4),(1028,5),(1033,5),(1041,5),(1029,6),(1042,6),(1031,7),(1035,7),(1032,8),(1036,8),(1037,9),(1039,10),(1043,10),(1044,10),(1047,10),(1045,11),(1049,11),(1050,11),(1048,12);
/*!40000 ALTER TABLE `shoe_style_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `Size_ID` int NOT NULL,
  `Size` varchar(45) NOT NULL,
  PRIMARY KEY (`Size_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'Mens '),(2,'Womens '),(3,'Both');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `unavailable`
--

DROP TABLE IF EXISTS `unavailable`;
/*!50001 DROP VIEW IF EXISTS `unavailable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unavailable` AS SELECT 
 1 AS `Shoe_Name`,
 1 AS `Availibility_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unique_styles`
--

DROP TABLE IF EXISTS `unique_styles`;
/*!50001 DROP VIEW IF EXISTS `unique_styles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unique_styles` AS SELECT 
 1 AS `total_sneakers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `womens_avg`
--

DROP TABLE IF EXISTS `womens_avg`;
/*!50001 DROP VIEW IF EXISTS `womens_avg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `womens_avg` AS SELECT 
 1 AS `Avg Women Shoe Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `four_style_dates`
--

/*!50001 DROP VIEW IF EXISTS `four_style_dates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `four_style_dates` AS select `inventory`.`Shoe_Name` AS `Shoe Name`,`inventory`.`Release_Date` AS `Release Date` from ((`inventory` join `shoe_style_inventory` on((`inventory`.`Inventory_ID` = `shoe_style_inventory`.`Inventory_ID`))) join `shoe_style` on((`shoe_style_inventory`.`Style_ID` = `shoe_style`.`Style_ID`))) where (`shoe_style_inventory`.`Style_ID` < 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `release_recap`
--

/*!50001 DROP VIEW IF EXISTS `release_recap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `release_recap` AS select `size`.`Size` AS `Size`,`brand`.`Brand_Name` AS `Brand_Name`,`inventory`.`Release_Date` AS `Release_Date` from (((`size` join `shoe_size_inventory` on((`size`.`Size_ID` = `shoe_size_inventory`.`Size_ID`))) join `inventory` on((`shoe_size_inventory`.`Inventory_ID` = `inventory`.`Inventory_ID`))) join `brand` on((`inventory`.`Brand_ID` = `brand`.`Brand_ID`))) order by `inventory`.`Release_Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unavailable`
--

/*!50001 DROP VIEW IF EXISTS `unavailable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unavailable` AS select `inventory`.`Shoe_Name` AS `Shoe_Name`,`inventory`.`Availibility_ID` AS `Availibility_ID` from `inventory` where `inventory`.`Shoe_Name` in (select `inventory`.`Shoe_Name` from `inventory` where (`inventory`.`Availibility_ID` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unique_styles`
--

/*!50001 DROP VIEW IF EXISTS `unique_styles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unique_styles` AS select count(`inventory`.`Shoe_Name`) AS `total_sneakers` from `inventory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `womens_avg`
--

/*!50001 DROP VIEW IF EXISTS `womens_avg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `womens_avg` AS select avg(`price`.`Price`) AS `Avg Women Shoe Price` from ((`inventory` join `price` on((`inventory`.`Price_ID` = `price`.`Price_ID`))) join `shoe_size_inventory` on((`inventory`.`Inventory_ID` = `shoe_size_inventory`.`Inventory_ID`))) where (`shoe_size_inventory`.`Size_ID` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 20:47:10
