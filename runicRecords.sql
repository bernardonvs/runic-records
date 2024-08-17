-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: runicRecords
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `Dwarves`
--

DROP TABLE IF EXISTS `Dwarves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dwarves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dwarves`
--

LOCK TABLES `Dwarves` WRITE;
/*!40000 ALTER TABLE `Dwarves` DISABLE KEYS */;
INSERT INTO `Dwarves` VALUES (1,'Thorgrim','Grudgebearer','Karaz-a-Karak'),(2,'Ungrim','Ironfist','Karak Kadrin'),(3,'Belegar','Ironhammer','Karak Eight Peaks'),(4,'Grombrindal','the White Dwarf','Unknown'),(5,'Gotrek','Gurnisson','Karaz-a-Karak'),(6,'Josef','Bugman','Bugman\'s Brewery'),(7,'Alrik','Ranulfsson','Karak Hirn'),(8,'Kragg','the Grim','Karak Azul'),(9,'Grimm','Burloksson','Zhufbar'),(10,'Thorek','Ironbrow','Karak Azul'),(11,'Kazador','Thunderhorn','Karak Azul'),(12,'Rorek','Granitehand','Karak Kadrin'),(13,'Barundin','Stoneheart','Barak Varr'),(14,'Durin','Stormbringer','Karaz-a-Karak'),(15,'Kraki','Forkbeard','Karak Varn'),(16,'Morgrim','Blackbeard','Karak Norn'),(17,'Buregar','Orcslayer','Zhufbar'),(18,'Kimril','Deepdelver','Karak Azgal'),(19,'Thrund','Redbeard','Karak Vlag'),(20,'Logri','Brassbeard','Karaz-a-Karak');
/*!40000 ALTER TABLE `Dwarves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `OrderSummary`
--

DROP TABLE IF EXISTS `OrderSummary`;
/*!50001 DROP VIEW IF EXISTS `OrderSummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderSummary` AS SELECT 
 1 AS `order_id`,
 1 AS `dwarf_name`,
 1 AS `product_name`,
 1 AS `supplier_name`,
 1 AS `order_date`,
 1 AS `product_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `dwarf_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dwarf_id` (`dwarf_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`dwarf_id`) REFERENCES `Dwarves` (`id`),
  CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Products` (`id`),
  CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `Suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2024-08-01',6,1,1),(2,'2024-08-02',6,2,2),(3,'2024-08-03',18,3,3),(4,'2024-08-04',12,4,4),(5,'2024-08-05',6,5,5),(6,'2024-08-06',1,6,6),(7,'2024-08-07',6,7,7),(8,'2024-08-08',16,8,8),(9,'2024-08-09',20,9,9),(10,'2024-08-10',5,10,10),(11,'2024-08-11',1,11,11),(12,'2024-08-12',13,12,12),(13,'2024-08-13',2,13,13),(14,'2024-08-14',14,14,14),(15,'2024-08-15',15,15,15),(16,'2024-08-16',4,16,16),(17,'2024-08-17',17,17,17),(18,'2024-08-18',20,18,18),(19,'2024-08-19',1,19,19),(20,'2024-08-20',15,20,20);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Masterwork Axe','Weapon',500.00,5.50),(2,'Gromril Armor','Armor',1000.00,30.00),(3,'Bugman\'s XXXXXX Ale','Beverage',50.00,2.00),(4,'Rune Anvil','Crafting Tool',2000.00,500.00),(5,'Flame Cannon','War Machine',1500.00,200.00),(6,'Grudge Thrower','War Machine',1200.00,300.00),(7,'Dragon Slayer Axe','Weapon',800.00,7.00),(8,'Ironbreaker Shields','Armor',300.00,10.00),(9,'Gyrocopter Parts','Engineering',1000.00,50.00),(10,'Book of Grudges','Literature',200.00,3.00),(11,'Trollhammer Torpedo','Ammunition',100.00,15.00),(12,'Organ Gun','War Machine',1800.00,250.00),(13,'Master Runes','Crafting Material',500.00,0.10),(14,'Longbeard Beard Oil','Grooming',30.00,0.20),(15,'Slayer Mohawk Dye','Grooming',25.00,0.10),(16,'Thunderbarge Blueprints','Engineering',5000.00,1.00),(17,'Miners Pickaxe','Tool',150.00,4.00),(18,'Oath Stone','Ceremonial',1000.00,100.00),(19,'Tankard Collection','Kitchenware',80.00,3.00),(20,'Dwarven Pipe-weed','Leisure',40.00,0.50);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `reputation` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
INSERT INTO `Suppliers` VALUES (1,'Ghal Maraz Forge','Altdorf',95),(2,'Nuln Armory','Nuln',90),(3,'Halfling Brewery','The Moot',85),(4,'Altdorf Foundry','Altdorf',88),(5,'Nuln Engineering Guild','Nuln',92),(6,'Reikland War Machines','Reikland',87),(7,'Middenheim Weaponsmiths','Middenheim',89),(8,'Averland Shieldmakers','Averland',86),(9,'Talabecland Tinkers','Talabecland',84),(10,'Altdorf Scribes','Altdorf',91),(11,'Marienburg Munitions','Marienburg',88),(12,'Nuln Artillery Works','Nuln',93),(13,'Wissenland Runesmiths','Wissenland',94),(14,'Halfling Apothecary','The Moot',82),(15,'Stirland Alchemists','Stirland',85),(16,'Imperial Engineers Guild','Altdorf',90),(17,'Ostermark Toolmakers','Ostermark',86),(18,'Sylvania Quarry','Sylvania',80),(19,'Mootland Pottery','The Moot',83),(20,'Halfling Tobacconists','The Moot',87);
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `OrderSummary`
--

/*!50001 DROP VIEW IF EXISTS `OrderSummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderSummary` AS select `O`.`id` AS `order_id`,concat(`D`.`name`,' ',`D`.`surname`) AS `dwarf_name`,`P`.`name` AS `product_name`,`S`.`name` AS `supplier_name`,`O`.`date` AS `order_date`,`P`.`price` AS `product_price` from (((`Orders` `O` join `Dwarves` `D` on((`O`.`dwarf_id` = `D`.`id`))) join `Products` `P` on((`O`.`product_id` = `P`.`id`))) join `Suppliers` `S` on((`O`.`supplier_id` = `S`.`id`))) */;
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

-- Dump completed on 2024-08-17 13:14:13
