
def load_salesOrderHeader():
    import pandas as pd
    import numpy as np
    from config.dbconnection import mysql

    df = pd.read_csv('data/Sales.SalesOrderHeader.csv', delimiter = ';', keep_default_na = False)

    df['CurrencyRateID'] = df['CurrencyRateID'].replace({'NULL': 0})
    df['SalesPersonID'] = df['SalesPersonID'].replace({'NULL': 0})
    df['CreditCardID'] = df['CreditCardID'].replace({'NULL': 0})
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
        cursor.execute(sql, tuple(row))

    mysql.commit()

    print('SalesOrderHeader OK')
    return None