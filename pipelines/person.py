
def load_person():
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
        cursor.execute(sql, tuple(row))

    mysql.commit()
    print('Person OK')
    return None
