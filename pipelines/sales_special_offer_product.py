def load_specialOfferProduct():
    import pandas as pd
    from config.dbconnection import mysql

    df = pd.read_csv('data/Sales.SpecialOfferProduct.csv', delimiter = ';', keep_default_na = False)

    cursor = mysql.cursor()

    sql = """ 
        INSERT INTO specialofferproduct (SpecialOfferID, ProductID, rowguid, ModifiedDate) VALUES (%s, %s, %s, %s);
    """

    for index, row in df.iterrows():
        cursor.execute(sql, tuple(row))

    mysql.commit()

    print('SpecialOfferProduct OK')
    return None