# Desafio de Engenharia de Dados

## Seja bem vindo ao teste de Engenheiro de Dados

<h1>Estrutura do projeto</h1>

+-- analytics
|   +-- queries.py
|   +-- visualization.ipynb
+-- config
|   +-- dbconnection.py
+-- _layouts
|   +-- default.html
|   +-- post.html
+-- _posts
|   +-- 2007-10-29-why-every-programmer-should-play-nethack.textile
|   +-- 2009-04-26-barcamp-boston-4-roundup.textile
+-- _data
|   +-- members.yml
+-- _site
+-- index.html

📦data-engineering-challenge
 ┣ 📂anayltics
 ┃ ┣ 📜queries.py
 ┃ ┗ 📜visualization.ipynb
 ┣ 📂config
 ┃ ┗ 📜dbconnection.py
 ┣ 📂data
 ┃ ┣ 📜Person.Person.csv
 ┃ ┣ 📜Production.Product.csv
 ┃ ┣ 📜Sales.Customer.csv
 ┃ ┣ 📜Sales.SalesOrderDetail.csv
 ┃ ┣ 📜Sales.SalesOrderHeader.csv
 ┃ ┗ 📜Sales.SpecialOfferProduct.csv
 ┣ 📂model
 ┃ ┣ 📜final.sql
 ┃ ┣ 📜MER.mwb
 ┃ ┣ 📜MER.mwb.bak
 ┃ ┣ 📜script.sql
 ┃ ┣ 📜structure.sql
 ┃ ┣ 📜structure2.sql
 ┃ ┣ 📜structure3.sql
 ┃ ┣ 📜structure4.sql
 ┃ ┗ 📜structure5.sql
 ┣ 📂pipelines
 ┃ ┣ 📜customer.py
 ┃ ┣ 📜person.py
 ┃ ┣ 📜product.py
 ┃ ┣ 📜sales_order_detail.py
 ┃ ┣ 📜sales_order_header.py
 ┃ ┗ 📜sales_special_offer_product.py
 ┣ 📜index.py
 ┗ 📜README.md


 
Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

