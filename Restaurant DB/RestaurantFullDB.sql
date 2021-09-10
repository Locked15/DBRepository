CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant
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
-- Table structure for table `accountdata`
--

DROP TABLE IF EXISTS `accountdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountdata` (
  `accountId` int NOT NULL AUTO_INCREMENT,
  `accountLogin` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountPassword` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountEmail` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountPhoneNumber` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountTypeId` int NOT NULL,
  PRIMARY KEY (`accountId`),
  KEY `accountTypeId` (`accountTypeId`),
  CONSTRAINT `accountdata_ibfk_1` FOREIGN KEY (`accountTypeId`) REFERENCES `accounttype` (`accountTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountdata`
--

LOCK TABLES `accountdata` WRITE;
/*!40000 ALTER TABLE `accountdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounttype`
--

DROP TABLE IF EXISTS `accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttype` (
  `accountTypeId` int NOT NULL AUTO_INCREMENT,
  `accountTypeName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`accountTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttype`
--

LOCK TABLES `accounttype` WRITE;
/*!40000 ALTER TABLE `accounttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookedmeal`
--

DROP TABLE IF EXISTS `cookedmeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookedmeal` (
  `cookedMealId` int NOT NULL AUTO_INCREMENT,
  `cookedMealName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cookedMealId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookedmeal`
--

LOCK TABLES `cookedmeal` WRITE;
/*!40000 ALTER TABLE `cookedmeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `cookedmeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookedmeal_category`
--

DROP TABLE IF EXISTS `cookedmeal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookedmeal_category` (
  `cookedMeal_categoryId` int NOT NULL AUTO_INCREMENT,
  `cookedMealId` int NOT NULL,
  `categoryId` int NOT NULL,
  PRIMARY KEY (`cookedMeal_categoryId`),
  KEY `cookedMealId` (`cookedMealId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `cookedmeal_category_ibfk_1` FOREIGN KEY (`cookedMealId`) REFERENCES `cookedmeal` (`cookedMealId`),
  CONSTRAINT `cookedmeal_category_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookedmeal_category`
--

LOCK TABLES `cookedmeal_category` WRITE;
/*!40000 ALTER TABLE `cookedmeal_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cookedmeal_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courieraccount`
--

DROP TABLE IF EXISTS `courieraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courieraccount` (
  `accountId` int NOT NULL,
  `foodOrderId` int NOT NULL,
  `courierVehicle` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`accountId`),
  KEY `foodOrderId` (`foodOrderId`),
  CONSTRAINT `courieraccount_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accountdata` (`accountId`),
  CONSTRAINT `courieraccount_ibfk_2` FOREIGN KEY (`foodOrderId`) REFERENCES `foodorder` (`foodOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courieraccount`
--

LOCK TABLES `courieraccount` WRITE;
/*!40000 ALTER TABLE `courieraccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `courieraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodorder`
--

DROP TABLE IF EXISTS `foodorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodorder` (
  `foodOrderId` int NOT NULL AUTO_INCREMENT,
  `accountID` int DEFAULT NULL,
  `orderStateId` int NOT NULL,
  `fullPrice` int NOT NULL,
  PRIMARY KEY (`foodOrderId`),
  KEY `accountID` (`accountID`),
  KEY `orderStateId` (`orderStateId`),
  CONSTRAINT `foodorder_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `useraccount` (`accountId`),
  CONSTRAINT `foodorder_ibfk_2` FOREIGN KEY (`orderStateId`) REFERENCES `orderstate` (`orderStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodorder`
--

LOCK TABLES `foodorder` WRITE;
/*!40000 ALTER TABLE `foodorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `foodorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodorder_cookedmeal`
--

DROP TABLE IF EXISTS `foodorder_cookedmeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodorder_cookedmeal` (
  `foodOrder_cookedMealId` int NOT NULL AUTO_INCREMENT,
  `foodOrderId` int NOT NULL,
  `cookedMealId` int NOT NULL,
  PRIMARY KEY (`foodOrder_cookedMealId`),
  KEY `foodOrderId` (`foodOrderId`),
  KEY `cookedMealId` (`cookedMealId`),
  CONSTRAINT `foodorder_cookedmeal_ibfk_1` FOREIGN KEY (`foodOrderId`) REFERENCES `foodorder` (`foodOrderId`),
  CONSTRAINT `foodorder_cookedmeal_ibfk_2` FOREIGN KEY (`cookedMealId`) REFERENCES `cookedmeal` (`cookedMealId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodorder_cookedmeal`
--

LOCK TABLES `foodorder_cookedmeal` WRITE;
/*!40000 ALTER TABLE `foodorder_cookedmeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `foodorder_cookedmeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstate`
--

DROP TABLE IF EXISTS `orderstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstate` (
  `orderStateId` int NOT NULL AUTO_INCREMENT,
  `stateName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstate`
--

LOCK TABLES `orderstate` WRITE;
/*!40000 ALTER TABLE `orderstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productCalories` int NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_cookedmeal`
--

DROP TABLE IF EXISTS `product_cookedmeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_cookedmeal` (
  `product_cookedMealId` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `cookedMealId` int NOT NULL,
  PRIMARY KEY (`product_cookedMealId`),
  KEY `productId` (`productId`),
  KEY `cookedMealId` (`cookedMealId`),
  CONSTRAINT `product_cookedmeal_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  CONSTRAINT `product_cookedmeal_ibfk_2` FOREIGN KEY (`cookedMealId`) REFERENCES `cookedmeal` (`cookedMealId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_cookedmeal`
--

LOCK TABLES `product_cookedmeal` WRITE;
/*!40000 ALTER TABLE `product_cookedmeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_cookedmeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantId` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `restaurantAddPrice` int NOT NULL,
  PRIMARY KEY (`restaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_cookedmeal`
--

DROP TABLE IF EXISTS `restaurant_cookedmeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_cookedmeal` (
  `restaurant_cookedMealId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int NOT NULL,
  `cookedMealId` int NOT NULL,
  PRIMARY KEY (`restaurant_cookedMealId`),
  KEY `restaurantId` (`restaurantId`),
  KEY `cookedMealId` (`cookedMealId`),
  CONSTRAINT `restaurant_cookedmeal_ibfk_1` FOREIGN KEY (`restaurantId`) REFERENCES `restaurant` (`restaurantId`),
  CONSTRAINT `restaurant_cookedmeal_ibfk_2` FOREIGN KEY (`cookedMealId`) REFERENCES `cookedmeal` (`cookedMealId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_cookedmeal`
--

LOCK TABLES `restaurant_cookedmeal` WRITE;
/*!40000 ALTER TABLE `restaurant_cookedmeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_cookedmeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantaccount`
--

DROP TABLE IF EXISTS `restaurantaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurantaccount` (
  `accountId` int NOT NULL,
  `restaurantId` int NOT NULL,
  PRIMARY KEY (`accountId`),
  KEY `restaurantId` (`restaurantId`),
  CONSTRAINT `restaurantaccount_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accountdata` (`accountId`),
  CONSTRAINT `restaurantaccount_ibfk_2` FOREIGN KEY (`restaurantId`) REFERENCES `restaurant` (`restaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantaccount`
--

LOCK TABLES `restaurantaccount` WRITE;
/*!40000 ALTER TABLE `restaurantaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurantaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccount` (
  `accountId` int NOT NULL,
  `accountDiscount` double DEFAULT NULL,
  `accountAddress` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`accountId`),
  CONSTRAINT `useraccount_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `accountdata` (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-10 19:16:27
