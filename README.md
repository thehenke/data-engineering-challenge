# Desafio de Engenharia de Dados

## Seja bem vindo ao teste de Engenheiro de Dados

<h2>Estrutura do projeto</h2>

    .
    ├── analytics                             
    │   ├── queries.py                              # Queries feitas referente as questoes 1 a 5 requisitadas no documentos
    │   ├── visualization.ipynb                     # Alguns gráficos para visualização de dados
    ├── config
    │   ├── dbconnection.py                         # Arquivo de configuração do banco de dados MySQL
    ├── data                                        
    │   ├── CSV Files...                            # Todos os dados e seus respectivos arquivos CSV
    ├── model
    │   ├── structure.sql                           # Script contendo apenas a estrutura da modelagem de dados
    │   ├── final.sql                               # Script contendo a estrutura e o nome do banco de dados criado
    │   ├── MER.mwb                                 # Modelo Entidade Relacionamento
    ├── pipelines
    │   ├── customer.py                              
    │   ├── person.py
    │   ├── product.py
    │   ├── sales_order_detail.py
    │   ├── sales_order_header.py
    │   ├── sales_special_offer_product.py
    └── 

 
Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

