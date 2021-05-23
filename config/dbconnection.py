import mysql.connector

mysql = mysql.connector.connect(
    host="35.226.6.134",
    user="henke",
    password="",
    database="engineering"
)

def conn():
    return mysql
