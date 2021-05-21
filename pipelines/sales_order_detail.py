
def load_salesOrderDetail():
    import pandas as pd
    from config.dbconnection import mysql

    df = pd.read_csv('data/Sales.SalesOrderDetail.csv', delimiter = ';', keep_default_na=False)
    cursor = mysql.cursor()

    sql = '''INSERT INTO salesorderdetail (SalesOrderID,
    SalesOrderDetailID,
    CarrierTrackingNumber,
    OrderQty,
    ProductID,
    SpecialOfferID,
    UnitPrice,
    UnitPriceDiscount,
    LineTotal,
    rowguid,
    ModifiedDate
    )
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)'''

    for index, row in df.iterrows():
        cursor.execute(sql, tuple(row))

    mysql.commit()

    print('SalesOrderDetail OK')
    return None