-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: engineering
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `PersonID` int NOT NULL,
  `StoreID` int DEFAULT NULL,
  `TerritoryID` int DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `fk_Customer_Person_idx` (`PersonID`),
  CONSTRAINT `fk_Customer_Person` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `PersonID` int NOT NULL AUTO_INCREMENT,
  `BusinessEntityID` int NOT NULL,
  `PersonType` varchar(255) DEFAULT NULL,
  `NameStyle` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Suffix` varchar(255) DEFAULT NULL,
  `EmailPromotion` int DEFAULT NULL,
  `AdditionalContactInfo` longblob,
  `Demographics` longblob,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PersonID`,`BusinessEntityID`)
) ENGINE=InnoDB AUTO_INCREMENT=81468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ProductNumber` varchar(255) DEFAULT NULL,
  `MakeFlag` int DEFAULT NULL,
  `FinishedGoodsFlag` int DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `SafetyStockLevel` int DEFAULT NULL,
  `ReorderPoint` int DEFAULT NULL,
  `StandardCost` varchar(255) DEFAULT NULL,
  `ListPrice` varchar(255) DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `SizeUnitMeasureCode` varchar(255) DEFAULT NULL,
  `WeightUnitMeasureCode` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `DaysToManufacture` int DEFAULT NULL,
  `ProductLine` varchar(255) DEFAULT NULL,
  `Class` varchar(255) DEFAULT NULL,
  `Style` varchar(255) DEFAULT NULL,
  `ProductSubcategoryID` varchar(255) DEFAULT NULL,
  `ProductModelID` varchar(255) DEFAULT NULL,
  `SellStartDate` varchar(255) DEFAULT NULL,
  `SellEndDate` varchar(255) DEFAULT NULL,
  `DiscontinuedDate` varchar(255) DEFAULT NULL,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salesorderdetail`
--

DROP TABLE IF EXISTS `salesorderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorderdetail` (
  `SalesOrderID` int NOT NULL,
  `SalesOrderDetailID` int NOT NULL,
  `CarrierTrackingNumber` varchar(255) DEFAULT NULL,
  `OrderQty` int DEFAULT NULL,
  `ProductID` int NOT NULL,
  `SpecialOfferID` int NOT NULL,
  `UnitPrice` varchar(255) DEFAULT NULL,
  `UnitPriceDiscount` varchar(255) DEFAULT NULL,
  `LineTotal` float DEFAULT NULL,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SalesOrderID`,`SalesOrderDetailID`),
  KEY `fk_SalesOrderDetail_SpecialOfferProduct1_idx` (`SpecialOfferID`),
  KEY `fkSalesOrderDetailProduct_idx` (`ProductID`),
  CONSTRAINT `fk_SalesOrderDetail_SpecialOfferProduct1` FOREIGN KEY (`SpecialOfferID`) REFERENCES `specialofferproduct` (`SpecialOfferID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkSalesOrderDetailProduct` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salesorderheader`
--

DROP TABLE IF EXISTS `salesorderheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorderheader` (
  `SalesOrderID` int NOT NULL,
  `RevisionNumber` int DEFAULT NULL,
  `OrderDate` varchar(255) DEFAULT NULL,
  `DueDate` varchar(255) DEFAULT NULL,
  `ShipDate` varchar(255) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `OnlineOrderFlag` int DEFAULT NULL,
  `SalesOrderNumber` varchar(255) DEFAULT NULL,
  `PurchaseOrderNumber` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  `SalesPersonID` int DEFAULT NULL,
  `TerritoryID` int DEFAULT NULL,
  `BillToAddressID` int DEFAULT NULL,
  `ShipToAddressID` int DEFAULT NULL,
  `ShipMethodID` int DEFAULT NULL,
  `CreditCardID` int DEFAULT NULL,
  `CreditCardApprovalCode` varchar(255) DEFAULT NULL,
  `CurrencyRateID` int DEFAULT NULL,
  `SubTotal` varchar(255) DEFAULT NULL,
  `TaxAmt` varchar(255) DEFAULT NULL,
  `Freight` varchar(255) DEFAULT NULL,
  `TotalDue` varchar(255) DEFAULT NULL,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  KEY `fk_SalesOrderHeader_SalesOrderDetail1_idx` (`SalesOrderID`),
  KEY `fk_SalesOrderHeader_Customer1_idx` (`CustomerID`),
  CONSTRAINT `fk_SalesOrderHeader_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE,
  CONSTRAINT `fk_SalesOrderHeader_SalesOrderDetail1` FOREIGN KEY (`SalesOrderID`) REFERENCES `salesorderdetail` (`SalesOrderID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `specialofferproduct`
--

DROP TABLE IF EXISTS `specialofferproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialofferproduct` (
  `SpecialOfferID` int NOT NULL,
  `ProductID` int NOT NULL,
  `rowguid` varchar(255) DEFAULT NULL,
  `ModifiedDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SpecialOfferID`),
  KEY `fk_SpecialOfferProduct_Product1_idx` (`ProductID`),
  CONSTRAINT `fk_SpecialOfferProduct` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 16:29:34
