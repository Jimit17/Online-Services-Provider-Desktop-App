-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: osp
-- ------------------------------------------------------
-- Server version	5.1.33-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ac_repair`
--

DROP TABLE IF EXISTS `ac_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_repair` (
  `Uname` varchar(30) DEFAULT NULL,
  `Type` varchar(25) NOT NULL,
  `DOS` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `ac_repair_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac_repair`
--

LOCK TABLES `ac_repair` WRITE;
/*!40000 ALTER TABLE `ac_repair` DISABLE KEYS */;
INSERT INTO `ac_repair` VALUES ('rahul11','Split','2019-01-18','05:00 pm');
/*!40000 ALTER TABLE `ac_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beauty`
--

DROP TABLE IF EXISTS `beauty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beauty` (
  `Uname` varchar(30) DEFAULT NULL,
  `Need` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Num_People` varchar(10) NOT NULL,
  `Type` varchar(40) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `beauty_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beauty`
--

LOCK TABLES `beauty` WRITE;
/*!40000 ALTER TABLE `beauty` DISABLE KEYS */;
INSERT INTO `beauty` VALUES ('rahul11','Other','2019-02-28','05:00 pm','1','Light	             Rs.2,000');
/*!40000 ALTER TABLE `beauty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_services`
--

DROP TABLE IF EXISTS `business_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_services` (
  `Uname` varchar(30) DEFAULT NULL,
  `Type` varchar(20) NOT NULL,
  `Special_requirement` varchar(100) DEFAULT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `business_services_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_services`
--

LOCK TABLES `business_services` WRITE;
/*!40000 ALTER TABLE `business_services` DISABLE KEYS */;
INSERT INTO `business_services` VALUES ('rahul11','C.A.','Auditing firm accounts');
/*!40000 ALTER TABLE `business_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_wash`
--

DROP TABLE IF EXISTS `car_wash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_wash` (
  `Uname` varchar(30) DEFAULT NULL,
  `Type_Price` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `car_wash_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_wash`
--

LOCK TABLES `car_wash` WRITE;
/*!40000 ALTER TABLE `car_wash` DISABLE KEYS */;
INSERT INTO `car_wash` VALUES ('rahul11','Sedan         Rs. 1200','2019-01-30','07:00 am');
/*!40000 ALTER TABLE `car_wash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer_repair`
--

DROP TABLE IF EXISTS `computer_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computer_repair` (
  `Uname` varchar(30) DEFAULT NULL,
  `Type` varchar(30) NOT NULL,
  `Make` varchar(30) NOT NULL,
  `OS` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `computer_repair_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_repair`
--

LOCK TABLES `computer_repair` WRITE;
/*!40000 ALTER TABLE `computer_repair` DISABLE KEYS */;
INSERT INTO `computer_repair` VALUES ('rahul11','Laptop','Lenovo','Windows','2019-01-26','08:00 pm');
/*!40000 ALTER TABLE `computer_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dietician`
--

DROP TABLE IF EXISTS `dietician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietician` (
  `Uname` varchar(30) DEFAULT NULL,
  `Need` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Height` varchar(20) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `dietician_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietician`
--

LOCK TABLES `dietician` WRITE;
/*!40000 ALTER TABLE `dietician` DISABLE KEYS */;
INSERT INTO `dietician` VALUES ('rahul11','Obesity','Male ','Below 24','179','90');
/*!40000 ALTER TABLE `dietician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_fitness`
--

DROP TABLE IF EXISTS `health_fitness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_fitness` (
  `Uname` varchar(30) DEFAULT NULL,
  `Need` varchar(100) DEFAULT NULL,
  `Age` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Height` varchar(20) NOT NULL,
  `Time` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `health_fitness_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_fitness`
--

LOCK TABLES `health_fitness` WRITE;
/*!40000 ALTER TABLE `health_fitness` DISABLE KEYS */;
INSERT INTO `health_fitness` VALUES ('rahul11','Body Building','Below 24','Male','179','08:00 pm','75');
/*!40000 ALTER TABLE `health_fitness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_construction`
--

DROP TABLE IF EXISTS `home_construction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_construction` (
  `Uname` varchar(30) DEFAULT NULL,
  `Size` varchar(30) NOT NULL,
  `Scope` varchar(30) NOT NULL,
  `Budget` varchar(10) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `home_construction_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_construction`
--

LOCK TABLES `home_construction` WRITE;
/*!40000 ALTER TABLE `home_construction` DISABLE KEYS */;
INSERT INTO `home_construction` VALUES ('rahul11','4 BHK','Furniture and Decor','7000000');
/*!40000 ALTER TABLE `home_construction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_keeping`
--

DROP TABLE IF EXISTS `house_keeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_keeping` (
  `Uname` varchar(30) DEFAULT NULL,
  `Size` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(10) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `house_keeping_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_keeping`
--

LOCK TABLES `house_keeping` WRITE;
/*!40000 ALTER TABLE `house_keeping` DISABLE KEYS */;
INSERT INTO `house_keeping` VALUES ('rahul11','3 BHK               Rs.1000','2019-01-26','11:00 am');
/*!40000 ALTER TABLE `house_keeping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_appliance`
--

DROP TABLE IF EXISTS `kitchen_appliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitchen_appliance` (
  `Uname` varchar(30) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(10) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `kitchen_appliance_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_appliance`
--

LOCK TABLES `kitchen_appliance` WRITE;
/*!40000 ALTER TABLE `kitchen_appliance` DISABLE KEYS */;
INSERT INTO `kitchen_appliance` VALUES ('rahul11','Oven','2019-01-27','05:00 pm');
/*!40000 ALTER TABLE `kitchen_appliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_move`
--

DROP TABLE IF EXISTS `pack_move`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pack_move` (
  `Uname` varchar(30) DEFAULT NULL,
  `Departure` varchar(100) NOT NULL,
  `Arrival` varchar(100) NOT NULL,
  `Items` varchar(50) DEFAULT NULL,
  `Date` date NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `pack_move_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_move`
--

LOCK TABLES `pack_move` WRITE;
/*!40000 ALTER TABLE `pack_move` DISABLE KEYS */;
INSERT INTO `pack_move` VALUES ('rahul11','A/12, Sun Appartments, Thaltej, Ahmedabad-380054','8, Goderej Lilly Bungalows, Sarkhej, Ahmedabad- 382210','Furniture','2019-03-20');
/*!40000 ALTER TABLE `pack_move` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_plan`
--

DROP TABLE IF EXISTS `party_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_plan` (
  `Uname` varchar(30) DEFAULT NULL,
  `Type` varchar(20) NOT NULL,
  `Num_People` varchar(10) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `party_plan_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_plan`
--

LOCK TABLES `party_plan` WRITE;
/*!40000 ALTER TABLE `party_plan` DISABLE KEYS */;
INSERT INTO `party_plan` VALUES ('rahul11','Reunion','200','16-19','2019-02-28','07:00 pm');
/*!40000 ALTER TABLE `party_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pest`
--

DROP TABLE IF EXISTS `pest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pest` (
  `Uname` varchar(30) DEFAULT NULL,
  `Date` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `pest_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pest`
--

LOCK TABLES `pest` WRITE;
/*!40000 ALTER TABLE `pest` DISABLE KEYS */;
INSERT INTO `pest` VALUES ('rahul11','2019-02-01','03:00 pm');
/*!40000 ALTER TABLE `pest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `Name` varchar(30) NOT NULL,
  `Mno` varchar(13) DEFAULT NULL,
  `Address` varchar(200) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Sex` varchar(10) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Birth` date NOT NULL,
  PRIMARY KEY (`Uname`),
  UNIQUE KEY `MNo` (`Mno`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `MNo_2` (`Mno`),
  UNIQUE KEY `MNo_3` (`Mno`),
  UNIQUE KEY `Email_2` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES ('Riya Modi','9409480493','1, Het Appartment, Naranpura, Ahmedabad-380013','riyamodi0791@gmail.com','Female','Chu_chu','321uhc','2002-09-11'),('Ganpat Rai','7689432604','A/11, Raj Bungalows, Thaltej, Ahmedabad- 380054','ganpat@live.com','Male','gxnpxt','$#43sa','1989-11-19'),('Jay Diaya','7878601010','A/11, Shantiniketan Bungalows, Bh. Auda Garden, Prahladnagar, Ahmedabad-380015','jaydaiya10@gmail.com','Male','jay10','odlanor','2002-11-10'),('Maria Stank','8765432901','C/43, Flora Hill Appartments, Navrangpura, Ahmedabad-380014','MStank@yahoo.in','Female','MS09','09)(lk','1964-04-19'),('Rahul Mehta','9898761245','15, Suryavansh Appartments, Bopal, Ahmedabad-380058','rahull@gmail.com','Male','rahul11','21@!wq','1992-07-11'),('Sunita Sharma','9754230967','6, Hari Om Bungalows, Ambli Road, Ahmedabd-380058','Sunita12@hotmail.com','Female','Sunu12','65^%sa','1999-12-12');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding`
--

DROP TABLE IF EXISTS `wedding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wedding` (
  `Uname` varchar(30) DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Budget` varchar(30) NOT NULL,
  `Num_People` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  KEY `Uname` (`Uname`),
  CONSTRAINT `wedding_ibfk_1` FOREIGN KEY (`Uname`) REFERENCES `user_data` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding`
--

LOCK TABLES `wedding` WRITE;
/*!40000 ALTER TABLE `wedding` DISABLE KEYS */;
INSERT INTO `wedding` VALUES ('rahul11','Matrimonial Services','Destination Wedding','25,00,000   -  1,00,00,000','500-1000','2019-11-12');
/*!40000 ALTER TABLE `wedding` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-05 11:48:38
