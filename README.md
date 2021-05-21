# Desafio de Engenharia de Dados
Seja bem vindo ao teste de Engenheiro de Dados.

<h1>Estrutura do projeto</h1>

    .
    ├── analytics                             
    │   ├── queries.py               # Contém as respostas das perguntas 1 a 5.
    │   ├── visualization.ipynb      # Alguns gráficos para visualização de dados.
    ├── config
    │   ├── dbconnection.py          # Configuração do banco de dados MySQL.
    ├── data                                        
    │   ├── CSV Files...             # Todos os dados e seus respectivos arquivos CSV.
    ├── model
    │   ├── structure.sql            # Scripts contendo apenas a estrutura da modelagem de dados.
    │   ├── final.sql                               
    │   ├── MER.mwb                                 
    ├── pipelines                    # Arquivos responsáveis pela carga de dados de cada entidade no banco de dados.
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

><b>data -> </b> está contido todos os arquivos CSV, Sales, Person, Product, sem nenhuma alteração.
                              
><b>model -> </b> A estrutura da modelagem de dados relacional está contida nessa pasta, nos formatos SQL e .mwb (MER)                              
    
><b>pipelines -> </b> Cada arquivo dentro dessa pasta é responsável pelo carregamento dos dados da entidade referida no banco de dados destino, é nesses arquivos que são feitos os tratamento de dados também quando necessários.

<ul>
    <li><b>INFRAESTRUTURA</b>
        <ul>
            <li>A plataforma da nuvem escolhida foi o <b>Google Cloud Platform</b>.</li>
            <li>A instancia criada foi na ordem de SQL > MySQL, utilizando créditos do período trial.</li>
            <li>A infraestrutura foi configurada utilizando o script de modelagem de dados, contido na pasta /model.</li>
        </ul>
</ul>

<ul>
    <li><b>MODELAGEM DE DADOS</b>
        <ul>
            <li>A modelagem foi criada no MySQL, seguindo os nomes e tipos referentes de cada campo de cada arquivo CSV.</li>
            <li></li>
            <li></li>
        </ul>
</ul>
Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

