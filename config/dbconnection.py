import mysql.connector

mysql = mysql.connector.connect(
    host="localhost",
    user="root",
    password="chicao",
    database="engineering"
)

def conn():
    return mysql
