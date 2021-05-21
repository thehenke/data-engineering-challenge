# Desafio de Engenharia de Dados

## Seja bem vindo ao teste de Engenheiro de Dados

<h2>Estrutura do projeto</h2>
    .
    ├── analytics                                   # Queries feitas referente as questoes 1 a 5 requisitadas no documentos
    │   ├── queries.py                              
    │   ├── visualization.ipynb                     
    ├── config                                      # Arquivo de configuração do banco de dados MySQL
    │   ├── dbconnection.py                         
    ├── data                                        # Todos os dados e seus respectivos arquivos CSV
    │   ├── CSV Files...                            
    ├── model                                       # Scripts contendo apenas a estrutura da modelagem de dados e o MER
    │   ├── structure.sql                           
    │   ├── final.sql                               
    │   ├── MER.mwb                                 
    ├── pipelines                                   # Entidades responsáveis pela leitura dos dados na memória e a carga no banco de dados de destino
    │   ├── customer.py                              
    │   ├── person.py
    │   ├── product.py
    │   ├── sales_order_detail.py
    │   ├── sales_order_header.py
    │   ├── sales_special_offer_product.py
    └── 


 
Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

