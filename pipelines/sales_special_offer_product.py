import sys
sys.path.append('C:/Users/gabri/Desktop/FATEC/6/data-engineering-challenge')

import pandas as pd
from config.dbconnection import mysql


df = pd.read_csv('data/Sales.SpecialOfferProduct.csv', delimiter = ';', keep_default_na = False)

cursor = mysql.cursor()

sql = """ 
INSERT INTO specialofferproduct (SpecialOfferID, ProductID, rowguid, ModifiedDate) VALUES (%s, %s, %s, %s);
"""

for index, row in df.iterrows():
    val =(
            row['SpecialOfferID'],
            row['ProductID'],
            row['rowguid'],
            row['ModifiedDate']
        )
    cursor.execute(sql, tuple(row))

mysql.commit()