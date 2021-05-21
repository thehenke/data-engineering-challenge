# Desafio de Engenharia de Dados

## Seja bem vindo ao teste de Engenheiro de Dados

<h1>Estrutura do projeto</h1>

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
    │   ├── final.sql                               
    │   ├── MER.mwb                                 
    ├── pipelines
    │   ├── customer.py
    │   ├── person.py
    │   ├── product.py
    │   ├── sales_order_detail.py
    │   ├── sales_order_header.py
    │   ├── sales_special_offer_product.py
    └── 

<h3>Considerações sobre a estrutura</h3>
    
><b>analytics -> </b> representa todo o conteúdo que se trata do fim, queries feitas em cima do banco de dados final carregado, e a visualização utilizando Jupyter Notebook e Matplotlib

><b>config -> </b>representa o conteúdo de configuração para o script, seja ele banco de dados, ou outro elemento que necessite de uma configuração

                              
    
 
Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

