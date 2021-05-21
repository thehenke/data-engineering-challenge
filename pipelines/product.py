
def load_product():
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
        cursor.execute(sql, tuple(row))

    mysql.commit()

    print('Product OK')
    return None