
def load_customer():
    import pandas as pd
    from config.dbconnection import mysql

    df = pd.read_csv('data/Sales.Customer.csv', delimiter = ';', keep_default_na=False)
    df['PersonID'] = df['PersonID'].replace({'NULL': 0})
    df['StoreID'] = df['StoreID'].replace({'NULL': 0})

    cursor = mysql.cursor()

    sql = '''
    INSERT INTO customer (CustomerID, PersonID, StoreID, TerritoryID, AccountNumber, rowguid, ModifiedDate)
    VALUES (%s, %s, %s, %s, %s, %s, %s)
    '''

    for index, row in df.iterrows():
        cursor.execute(sql, tuple(row))

    mysql.commit()
    print('Customer OK')
    return None
