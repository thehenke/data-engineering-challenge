import sys
sys.path.append('C:/Users/gabri/Desktop/FATEC/6/data-engineering-challenge')

import pandas as pd
import numpy as np
from config.dbconnection import mysql

df = pd.read_csv('data/Sales.SalesOrderHeader.csv', delimiter = ';', keep_default_na = False)
df['CurrencyRateID'] = df['CurrencyRateID'].replace({'NULL': 0})
df = df.drop(['Comment'], axis = 1)


cursor = mysql.cursor()

sql = """
INSERT INTO salesorderheader
(SalesOrderID,
RevisionNumber,
OrderDate,
DueDate,
ShipDate,
Status,
OnlineOrderFlag,
SalesOrderNumber,
PurchaseOrderNumber,
AccountNumber,
CustomerID,
SalesPersonID,
TerritoryID,
BillToAddressID,
ShipToAddressID,
ShipMethodID,
CreditCardID,
CreditCardApprovalCode,
CurrencyRateID,
SubTotal,
TaxAmt,
Freight,
TotalDue,
rowguid,
ModifiedDate)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"""

for index, row in df.iterrows():
    val = (
        row['SalesOrderID'],
        row['RevisionNumber'],
        row['OrderDate'],
        row['DueDate'],
        row['ShipDate'],
        row['Status'],
        row['OnlineOrderFlag'],
        row['SalesOrderNumber'],
        row['PurchaseOrderNumber'],
        row['AccountNumber'],
        row['CustomerID'],
        row['SalesPersonID'],
        row['TerritoryID'],
        row['BillToAddressID'],
        row['ShipToAddressID'],
        row['ShipMethodID'],
        row['CreditCardID'],
        row['CreditCardApprovalCode'],
        row['CurrencyRateID'],
        row['SubTotal'],
        row['TaxAmt'],
        row['Freight'],
        row['TotalDue'],
        row['rowguid'],
        row['ModifiedDate']
        )
    cursor.execute(sql, tuple(row))
    break

mysql.commit()
