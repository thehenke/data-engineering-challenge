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
            <li>Escolhi usar GCP pelo fato de ter tido pouco contato anteriormente, aproveitei pra aprender mais.</li>
        </ul>
</ul>

<ul>
    <li><b>MODELAGEM DE DADOS</b>
        <ul>
            <li>A modelagem foi criada utilizando MySQL, seguindo os nomes e tipos referentes de cada campo de cada arquivo CSV.</li>
            <li>Todo o conteúdo referente a modelagem de dados está na pasta /model</li>
            <img src="/model/MER.png" alt="MER" style="height: 80px; width:80px;"/>
        </ul>
</ul>

<ul>
    <li><b>FLUXO DE DADOS</b>
        <ul>
            <li>Os dados de cada entidade de cada arquivo CSV, é lida em memória, utilizando a biblioteca Pandas</li>
            <li>Os dados carregados em memoria são transformados quando necessário, feito o tratamento de missing e missing ocultos.</li>
            <li>Todo o fluxo é implementado utilizando a Linguagem Python e suas bibliotecas padroes</li>
            <li>Cada arquivo .py de pipeline é responsável pelo fluxo de uma entidade (csv > python > mysql). Escolhi dividir dessa forma para manter a organização e deixar de facil entendimento e manutenção do código.</li>
            <ul>
                <li><b>customer.py</b> é responsavel pelos dados de Customer (Coleta, Transformação e Carga)</li>
                <li><b>person.py</b> é responsavel pelos dados de Person (Coleta, Transformação e Carga)</li>
                <li><b>product.py</b> é responsavel pelos dados de Product (Coleta, Transformação e Carga)</li>
                <li><b>sales_order_detail.py</b> é responsavel pelos dados de SalesOrderDetail (Coleta, Transformação e Carga)</li>
                <li><b>sales_special_offer_product.py</b> é responsavel pelos dados de SalesSpecialOfferProduct (Coleta, Transformação e Carga)</li>
                <li><b>sales_order_header.py</b> é responsavel pelos dados de SalesOrderHeader (Coleta, Transformação e Carga)</li>
            </ul>
            <li>Os scripts detém de uma ordem de execução, para respeitar os relacionamento entre as entidades e se relacionarem da maneira correta</li>
            <li>Ordem de execução: person -> customer -> product -> specialOfferProduct -> salesOrderDetail -> salesOrderHeader</li>
        </ul>
</ul>

<ul>
    <li><b>ANÁLISE DE DADOS</b>
        <ul>
            <li>As queries de SELECT estão no arquivo analytics/queries.py, da pergunta 1 a 5, cada uma respondida em uma função</li>
            <li>Alguns plots realizado com os dados extraidos do banco de dados estão no Notebook visualization.ipynb</li>
        </ul>
</ul>

<h2>E se? No futuro?</h2>

> Utilizaria um framework para o ETL, Pentaho, ou coisa do tipo.
> Se a quantidade de dados for maior, seria necessário utilizar uma solução mais robusta, processamento em paralelo para fazer o fluxo (Spark por exemplo)
> Orquestra de agendamento para automação agendada desse fluxo (Airflow)
> Se os dados forem utilizados para análise exploratória, machine learning, e modelagem preditiva no geral, eu faria uma modelagem de dados diferente, assim como o tratamento de dados missing e pré processamento.