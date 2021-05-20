import sys
sys.path.append('C:/Users/gabri/Desktop/FATEC/6/data-engineering-challenge')

import pandas as pd
from config.dbconnection import mysql


df = pd.read_csv('data/Production.Product.csv', delimiter = ';', keep_default_na = False)

cursor = mysql.cursor()

sql = """ 
INSERT INTO product
(ProductID,
Name,
ProductNumber,
MakeFlag,
FinishedGoodsFlag,
Color,
SafetyStockLevel,
ReorderPoint,
StandardCost,
ListPrice,
Size,
SizeUnitMeasureCode,
WeightUnitMeasureCode,
Weight,
DaysToManufacture,
ProductLine,
Class,
Style,
ProductSubcategoryID,
ProductModelID,
SellStartDate,
SellEndDate,
DiscontinuedDate,
rowguid,
ModifiedDate)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);
"""

for index, row in df.iterrows():
    val =(
            row['ProductID'],
            row['Name'],
            row['ProductNumber'],
            row['MakeFlag'],
            row['FinishedGoodsFlag'],
            row['Color'],
            row['SafetyStockLevel'],
            row['ReorderPoint'],
            row['StandardCost'],
            row['ListPrice'],
            row['Size'],
            row['SizeUnitMeasureCode'],
            row['WeightUnitMeasureCode'],
            row['Weight'],
            row['DaysToManufacture'],
            row['ProductLine'],
            row['Class'],
            row['Style'],
            row['ProductSubcategoryID'],
            row['SellStartDate'],
            row['SellEndDate'],
            row['DiscontinuedDate'],
            row['rowguid'],
            row['ModifiedDate']
        )
    cursor.execute(sql, tuple(row))

mysql.commit()