import sys
sys.path.append('C:/Users/gabri/Desktop/FATEC/6/data-engineering-challenge')

import pandas as pd
from config.dbconnection import mysql

df = pd.read_csv('data/Person.Person.csv', delimiter = ';', keep_default_na=False)
cursor = mysql.cursor()

sql = '''INSERT INTO person (BusinessEntityID,
PersonType,
NameStyle,
Title,
FirstName,
MiddleName,
LastName,
Suffix,
EmailPromotion,
AdditionalContactInfo,
Demographics,
rowguid,
ModifiedDate)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)'''

for index, row in df.iterrows():
    val =(
            row['BusinessEntityID'],
            row['PersonType'],
            row['NameStyle'],
            row['Title'],
            row['FirstName'],
            row['MiddleName'],
            row['LastName'],
            row['Suffix'],
            row['EmailPromotion'],
            row['Demographics'],
            row['rowguid'],
            row['ModifiedDate'],
        )
    cursor.execute(sql, tuple(row))

mysql.commit()
