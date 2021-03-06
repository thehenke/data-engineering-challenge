-- MySQL Script generated by MySQL Workbench
-- Thu May 20 17:20:45 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema engineering
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Person` (
  `PersonID` INT NOT NULL AUTO_INCREMENT,
  `BusinessEntityID` INT NOT NULL,
  `PersonType` VARCHAR(255) NULL,
  `NameStyle` INT NULL,
  `Title` VARCHAR(255) NULL,
  `FirstName` VARCHAR(255) NULL,
  `MiddleName` VARCHAR(255) NULL,
  `LastName` VARCHAR(255) NULL,
  `Suffix` VARCHAR(255) NULL,
  `EmailPromotion` INT NULL,
  `AdditionalContactInfo` VARCHAR(255) NULL,
  `Demographics` VARCHAR(255) NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  PRIMARY KEY (`PersonID`, `BusinessEntityID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Product` (
  `ProductID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(255) NULL,
  `ProductNumber` VARCHAR(255) NULL,
  `MakeFlag` INT NULL,
  `FinishedGoodsFlag` INT NULL,
  `Color` VARCHAR(255) NULL,
  `SafetyStockLevel` INT NULL,
  `ReorderPoint` INT NULL,
  `StandardCost` VARCHAR(255) NULL,
  `ListPrice` VARCHAR(255) NULL,
  `Size` VARCHAR(255) NULL,
  `SizeUnitMeasureCode` VARCHAR(255) NULL,
  `WeightUnitMeasureCode` VARCHAR(255) NULL,
  `Weight` VARCHAR(255) NULL,
  `DaysToManufacture` INT NULL,
  `ProductLine` VARCHAR(255) NULL,
  `Class` VARCHAR(255) NULL,
  `Style` VARCHAR(255) NULL,
  `ProductSubcategoryID` VARCHAR(255) NULL,
  `ProductModelID` VARCHAR(255) NULL,
  `SellStartDate` VARCHAR(255) NULL,
  `SellEndDate` VARCHAR(255) NULL,
  `DiscontinuedDate` VARCHAR(255) NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customer` (
  `CustomerID` INT NOT NULL,
  `PersonID` INT NOT NULL,
  `StoreID` INT NULL,
  `TerritoryID` INT NULL,
  `AccountNumber` VARCHAR(255) NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  PRIMARY KEY (`CustomerID`),
  INDEX `fk_Customer_Person_idx` (`PersonID` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Person`
    FOREIGN KEY (`PersonID`)
    REFERENCES `Person` (`PersonID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpecialOfferProduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpecialOfferProduct` (
  `SpecialOfferID` INT NOT NULL,
  `ProductID` VARCHAR(45) NOT NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  PRIMARY KEY (`SpecialOfferID`),
  INDEX `fk_SpecialOfferProduct_Product1_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_SpecialOfferProduct_Product1`
    FOREIGN KEY (`ProductID`)
    REFERENCES `Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SalesOrderDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SalesOrderDetail` (
  `SalesOrderID` INT NOT NULL,
  `SalesOrderDetailID` INT NOT NULL,
  `CarrierTrackingNumber` VARCHAR(255) NULL,
  `OrderQty` INT NULL,
  `ProductID` INT NOT NULL,
  `SpecialOfferID` INT NOT NULL,
  `UnitPrice` VARCHAR(255) NULL,
  `UnitPriceDiscount` VARCHAR(255) NULL,
  `LineTotal` FLOAT NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  PRIMARY KEY (`SalesOrderID`, `SalesOrderDetailID`),
  INDEX `fk_SalesOrderDetail_SpecialOfferProduct1_idx` (`SpecialOfferID` ASC) VISIBLE,
  CONSTRAINT `fk_SalesOrderDetail_SpecialOfferProduct1`
    FOREIGN KEY (`SpecialOfferID`)
    REFERENCES `SpecialOfferProduct` (`SpecialOfferID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SalesOrderHeader`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SalesOrderHeader` (
  `SalesOrderID` INT NOT NULL,
  `RevisionNumber` INT NULL,
  `OrderDate` VARCHAR(255) NULL,
  `DueDate` VARCHAR(255) NULL,
  `ShipDate` VARCHAR(255) NULL,
  `Status` INT NULL,
  `OnlineOrderFlag` INT NULL,
  `SalesOrderNumber` VARCHAR(255) NULL,
  `AccountNumber` VARCHAR(255) NULL,
  `SalesOrderHeadercol` VARCHAR(45) NULL,
  `CustomerID` INT NOT NULL,
  `SalesPersonID` INT NULL,
  `TerritoryID` INT NULL,
  `BillToAddressID` INT NULL,
  `ShipToAddressID` INT NULL,
  `ShipMethodID` INT NULL,
  `CreditCardID` INT NULL,
  `CreditCardApprovalCode` VARCHAR(255) NULL,
  `CurrencyRateID` INT NULL,
  `SubTotal` VARCHAR(255) NULL,
  `TaxAmt` VARCHAR(255) NULL,
  `Freight` VARCHAR(255) NULL,
  `TotalDue` VARCHAR(255) NULL,
  `Comment` FLOAT NULL,
  `rowguid` VARCHAR(255) NULL,
  `ModifiedDate` VARCHAR(255) NULL,
  INDEX `fk_SalesOrderHeader_SalesOrderDetail1_idx` (`SalesOrderID` ASC) VISIBLE,
  INDEX `fk_SalesOrderHeader_Customer1_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_SalesOrderHeader_SalesOrderDetail1`
    FOREIGN KEY (`SalesOrderID`)
    REFERENCES `SalesOrderDetail` (`SalesOrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SalesOrderHeader_Customer1`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person` (
  `PersonID` INT NOT NULL AUTO_INCREMENT,
  `BusinessEntityID` INT NOT NULL,
  `PersonType` VARCHAR(255) NULL DEFAULT NULL,
  `NameStyle` INT NULL DEFAULT NULL,
  `Title` VARCHAR(255) NULL DEFAULT NULL,
  `FirstName` VARCHAR(255) NULL DEFAULT NULL,
  `MiddleName` VARCHAR(255) NULL DEFAULT NULL,
  `LastName` VARCHAR(255) NULL DEFAULT NULL,
  `Suffix` VARCHAR(255) NULL DEFAULT NULL,
  `EmailPromotion` INT NULL DEFAULT NULL,
  `AdditionalContactInfo` LONGBLOB NULL DEFAULT NULL,
  `Demographics` LONGBLOB NULL DEFAULT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`PersonID`, `BusinessEntityID`))
ENGINE = InnoDB
AUTO_INCREMENT = 81468
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` INT NOT NULL,
  `PersonID` INT NOT NULL,
  `StoreID` INT NULL DEFAULT NULL,
  `TerritoryID` INT NULL DEFAULT NULL,
  `AccountNumber` VARCHAR(255) NULL DEFAULT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  INDEX `fk_Customer_Person_idx` (`PersonID` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Person`
    FOREIGN KEY (`PersonID`)
    REFERENCES `person` (`PersonID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` INT NOT NULL,
  `Name` VARCHAR(255) NULL DEFAULT NULL,
  `ProductNumber` VARCHAR(255) NULL DEFAULT NULL,
  `MakeFlag` INT NULL DEFAULT NULL,
  `FinishedGoodsFlag` INT NULL DEFAULT NULL,
  `Color` VARCHAR(255) NULL DEFAULT NULL,
  `SafetyStockLevel` INT NULL DEFAULT NULL,
  `ReorderPoint` INT NULL DEFAULT NULL,
  `StandardCost` VARCHAR(255) NULL DEFAULT NULL,
  `ListPrice` VARCHAR(255) NULL DEFAULT NULL,
  `Size` VARCHAR(255) NULL DEFAULT NULL,
  `SizeUnitMeasureCode` VARCHAR(255) NULL DEFAULT NULL,
  `WeightUnitMeasureCode` VARCHAR(255) NULL DEFAULT NULL,
  `Weight` VARCHAR(255) NULL DEFAULT NULL,
  `DaysToManufacture` INT NULL DEFAULT NULL,
  `ProductLine` VARCHAR(255) NULL DEFAULT NULL,
  `Class` VARCHAR(255) NULL DEFAULT NULL,
  `Style` VARCHAR(255) NULL DEFAULT NULL,
  `ProductSubcategoryID` VARCHAR(255) NULL DEFAULT NULL,
  `ProductModelID` VARCHAR(255) NULL DEFAULT NULL,
  `SellStartDate` VARCHAR(255) NULL DEFAULT NULL,
  `SellEndDate` VARCHAR(255) NULL DEFAULT NULL,
  `DiscontinuedDate` VARCHAR(255) NULL DEFAULT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `specialofferproduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `specialofferproduct` (
  `SpecialOfferID` INT NOT NULL,
  `ProductID` INT NOT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`, `SpecialOfferID`),
  INDEX `fk_SpecialOfferProduct_Product1_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_SpecialOfferProduct`
    FOREIGN KEY (`ProductID`)
    REFERENCES `product` (`ProductID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salesorderdetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salesorderdetail` (
  `SalesOrderID` INT NOT NULL,
  `SalesOrderDetailID` INT NOT NULL,
  `CarrierTrackingNumber` VARCHAR(255) NULL DEFAULT NULL,
  `OrderQty` INT NULL DEFAULT NULL,
  `ProductID` INT NOT NULL,
  `SpecialOfferID` INT NOT NULL,
  `UnitPrice` VARCHAR(255) NULL DEFAULT NULL,
  `UnitPriceDiscount` VARCHAR(255) NULL DEFAULT NULL,
  `LineTotal` FLOAT NULL DEFAULT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`SalesOrderID`, `SalesOrderDetailID`),
  INDEX `fkSalesOrderDetailProduct_idx` (`ProductID` ASC) VISIBLE,
  INDEX `fk_salesorderdetail_specialofferproduct1_idx` (`SpecialOfferID` ASC) VISIBLE,
  CONSTRAINT `fkSalesOrderDetailProduct`
    FOREIGN KEY (`ProductID`)
    REFERENCES `product` (`ProductID`),
  CONSTRAINT `fk_salesorderdetail_specialofferproduct1`
    FOREIGN KEY (`SpecialOfferID`)
    REFERENCES `specialofferproduct` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `salesorderheader`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salesorderheader` (
  `SalesOrderID` INT NOT NULL,
  `RevisionNumber` INT NULL DEFAULT NULL,
  `OrderDate` VARCHAR(255) NULL DEFAULT NULL,
  `DueDate` VARCHAR(255) NULL DEFAULT NULL,
  `ShipDate` VARCHAR(255) NULL DEFAULT NULL,
  `Status` INT NULL DEFAULT NULL,
  `OnlineOrderFlag` INT NULL DEFAULT NULL,
  `SalesOrderNumber` VARCHAR(255) NULL DEFAULT NULL,
  `PurchaseOrderNumber` VARCHAR(255) NULL DEFAULT NULL,
  `AccountNumber` VARCHAR(255) NULL DEFAULT NULL,
  `CustomerID` INT NOT NULL,
  `SalesPersonID` INT NULL DEFAULT NULL,
  `TerritoryID` INT NULL DEFAULT NULL,
  `BillToAddressID` INT NULL DEFAULT NULL,
  `ShipToAddressID` INT NULL DEFAULT NULL,
  `ShipMethodID` INT NULL DEFAULT NULL,
  `CreditCardID` INT NULL DEFAULT NULL,
  `CreditCardApprovalCode` VARCHAR(255) NULL DEFAULT NULL,
  `CurrencyRateID` INT NULL DEFAULT NULL,
  `SubTotal` VARCHAR(255) NULL DEFAULT NULL,
  `TaxAmt` VARCHAR(255) NULL DEFAULT NULL,
  `Freight` VARCHAR(255) NULL DEFAULT NULL,
  `TotalDue` VARCHAR(255) NULL DEFAULT NULL,
  `rowguid` VARCHAR(255) NULL DEFAULT NULL,
  `ModifiedDate` VARCHAR(255) NULL DEFAULT NULL,
  INDEX `fk_SalesOrderHeader_SalesOrderDetail1_idx` (`SalesOrderID` ASC) VISIBLE,
  INDEX `fk_SalesOrderHeader_Customer1_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_SalesOrderHeader_Customer1`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `customer` (`CustomerID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_SalesOrderHeader_SalesOrderDetail1`
    FOREIGN KEY (`SalesOrderID`)
    REFERENCES `salesorderdetail` (`SalesOrderID`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
