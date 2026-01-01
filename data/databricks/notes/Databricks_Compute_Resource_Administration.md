# Curso Databricks Compute Resource Administration

## Visão geral de Clusters
- Coleção de instancias de Maquinas Virtuais (VMs - Virtual Machine)
- Distribuição de cargas de trabalho pelos funcionarios

## Tipos de Clusters no Databricks
Existem 3 tipos de servidores disponíveis para o Databricks, sendo eles:
- ALl Purpose: Clusters que realizam tanto os trabalhos de consulta aos bancos de dados, quanto execução de processos automatizados como Pipelines
- Job: CLusters voltados a execução de atividades automatizadas, pipelines e cargas de trabalho;
- SQL Warehouses: Clusters voltados a interações diretas com bancos de dados, utilizado para consultas a bancos de dados e relatórios

  <img width="1799" height="934" alt="image" src="https://github.com/user-attachments/assets/4aaed803-0620-43d8-963f-4ef63f2ebd81" />

## Parametros de Clusters
### Node Configuration

- Multi node: Configuração padrão para o modo de trabalho dos clusters, podendo utilizar qualquer tipo de linguagem suportada(Requer no minimo duas VMs).
- Single node: Cluster unico, voltado a atividades de machine learning e atividades leves de analise exploratoria, utilizado para atividades de **salvamento e carregamento de dados**, sendo uma **alternativa de baixo custo**.

### Databricks Runtime version
- Standard: Utiliza **Apache Spark e varios outros componentes**, possui um **serviço constantemente atualizado mantendo sempre uma experiencia otimizada voltada a analise de big data**, garantindo ótima performance, usabilidade e segurança.
- Photon: Uma adição opicional para **otimizar a carga de trabalho usando Spark**, sendo o serviço do *Databricks* para a carga de dados de maneira mais eficiente.
- Machine Learning: Adiciona bibliotecas populares de **machine learning**, como **TensorFlow, Keras, Pytorchm e XGBoost**.

### Access Mode
- Dedicated: Suporta multiplas linguagens, porém não é compartilhado e voltado a atividade especifica de um usuário ou grupo de usuários. O uso de clusters dedicados concede automaticamente ao usuários que se conectar a ele as mesmas permissões do grupo de usuários que o utiliza. Sendo um metodo mais restrito de utilização, controlado e seguro.
- Shared: Compartilhável e possui suporte a Scala, SQL e Python, com recursos limitados
- No Isolation Share: Compartilhável, suporta varias linguagens, recursos adicionais, porém não tem suporte do *Unity Catalog*.

## Comparação de arquiteturas
<img width="1417" height="552" alt="image" src="https://github.com/user-attachments/assets/a2ccd879-c5af-4dc7-9aff-3f555fc60af7" />

Na imagem é demonstrada a difença basica entre a arquitetura do funcionamento de Clusters e as respectivas diferenças, sendo a mais imporante o maior diferencial o *Isolamento* das transações ACID.
Outro diferencial é a utilização de Clusters distintos para cada tipo de atividade e a possibilidade de criação de Cluster exclusívos para a respectiva Workspace, permitindo o controle dos Cluster criados.

## Passo a passo da criação de Clusters
O passo a passo básico da criação de Clusters em uma Workspace.
1. Acesse a Opção "Compute"
   <img width="1865" height="967" alt="image" src="https://github.com/user-attachments/assets/9f6c0ad1-29c8-4532-afcb-4d0237ea86d8" />
2. Opção criar "SQL Warehouse", neste caso está desabilitiado por ser uma conta free e ter restrição em relação a recursos.
   <img width="1865" height="967" alt="image" src="https://github.com/user-attachments/assets/b9a40e92-ec47-4af0-9840-64065aea7c00" />
3. Configurando o Cluster e os respetivos pontos de atenção necessários em relação as opções.
   <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8d268505-5326-4006-8901-57ff35ae1f44" />
4. Definição de nome do Cluster, não podendo se repetir dentro da mesma Workspace
5. Seleção do tipo de Cluster, entre *multi node compute* e *single node compute*
  - Multi Node: Voltado para trabalhos em larga escala que precisam ser distribuidos em diversas maquinas virtuais.
  - Single Node: Voltado para atividades de dados que não precisem de cargas de trabalho distribuidas, ou trabalhos de machine learning que possam ser executados em uma unica maquina.
    
> [!Important]
> A disponibilidade de criação de ambos os tipos de Cluster pode ser limitada utilizando politicas de controle do tipo de Cluster diponível para a respectiva Workspace, definida pelo **Workspace Admin** ou pelo **Account Admin**.

6. Modo de acesso
   - Single user: Apenas o usuário tem acesso a essa maquina e ela se torna dedicada a aquele usuário específico.
   - Shared: Maquina compartilhável, contando com recursos como Scala, SQL, e Python, podendo assim ser usado por diversos usuários da Workspace.
   - No Isolation Share: Maquina compartilhável, com suporte a diversas linguagens, porém sem suporte do *Unity Catalog*.
  
> [!Note]
> Apenas a opção "*Single User*", permite a atribuição do respectivo usuário ao Cluster, no restante das opções essa opção some.

7. Performance
   - Seleção do tipo de maquina e a qual atividade ela está voltada, operações "*Standard*" ou atividades de "*Machine Learning(ML)*".
   - Conta com a configuração do "*Runtime Version*"
       - Standard: É uma maquina pré configurada que já vem com suporte a Spark, Python, Scala, MLib e outras, contando com recursos para análise de dados, machine learning e deep learning, podendo ser utilizada para operações simples de ETL e SQL, como até mesmo *Big Data*.
       - Machine Learning: É uma maquina que conta com os recursos padrão + recursos de Machine Learning, como suporte as bibliotecas Scikit-Learn, XGBoost, TensorFlow, Pytorch, MLFlow, databricks.automl, hyperopt e koalas. Sendo assim voltada a Machine Learning e tuning de hiperparametros.
       - Genomics: Voltado a Biomedicina.
       - Photon: Desenvolvido utilizando C++, disponibilizando alta performance para Dataframe e SQL, voltando para analises com baixa latencia.
       - Delta Live Tables (DLT): Focado no uso de Pipelines utilizando dados declarativos.
8. Tipo de Maquina
   - Neste campo é configurado os paramentros da maquina e os recursos de performance, como memória e numero de processadores.
9. Opções avançadas
   - Definição da localização da maquina, ***script inicial***, forma de login e afins.
  
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3cb5a91a-d72b-4fca-900b-d9eca402463d" />

10. Selecione a opção criar Cluster.
    - Pronto, desta forma o Cluster foi criado com sucesso, a criação de um Cluster normalmente leva alguns instantes e após isso, se torna disponível para uso.
   
# Gerenciamento de Clusters

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/669ee3be-7b84-48fe-b084-ab3069a618b4" />

## Controle de custo x Esforço administrativo
De modo geral existem três forma de realizar uma politica de governança e gestão de Clusters, cada uma necessitando de um esforço diferente para administra-lo e manutenibilidade de recursos, aos quais são demonstrados abaixo.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7b9afcd5-a726-4388-b10e-03bdce0d47cd" />

- Sem restrição de criação de Clusters.
  -  Requer nenhuma governança, os usuários ficam livres para realizarem as configurações de seus próprios Clusters de acordo com a necessidade individual. Esta pratica normalmente é a que gera maiores problemas relacionados a governança, manutenção e custos, por que depende exclusivamente da capacitação e entendimento dos usuários escolherem sempre as maquinas mais eficientes que gerem o menor custo possível e a sua configuração adequada.
- Restrição de criação inicial de Clusters.
  - Primeiro nível de controle de maquinas, precisando de suporte do *Workspace Admin* ou *Account Admin* para realizar a criação de Clusters e decisão dos recursos adequados por usuário.
- Restrição da criação de Cluster.
  - Dependencia total do *Workspace admin* e do *account admin* para a criação de Clusters, exigindo maior esforço desses profissionais e por possuir um maior controle, normalmente são Clusters, se configurados apropriadamente, que geram o menor indice de manutenção.

## Politicas de Clusters
As *Clusters Policies* são fundamentais para a boa gestão da utilização e configuração de Maquinas, além disso, colabora muito para o bom desenvolvimento de uma boa experiência de usuário, deixando claros os limites de cada um e agilizando o processo de desenvolvimento, além de claro contribuir para a estruturação adequada do ambiente permitindo o mapeamento de custos e seu controle, além dos pontos a seguir. 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/081879fb-6eeb-480d-a45d-63a06479bc86" />

## Controle de acesso
É importante entender os níveis de acesso necessários para cada tipo de usuário,a tabela abaixo define quais as ações ficam disponíveis de acordo com o nível de permissão atribuida ao usuário.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/022abf5d-7e65-46b2-b3b5-13334d6bdd4c" />

- *"No permissions"*
  - O usuário não pode utilizar os Clusters.
- *"Can attach to"*
  - O usuário pode conectar notebooks ao Cluster;
  - Pode visualizar a *UI(User Interface)* do *Spark*, metricas do Cluster e informações de drivers.
- *"Can restart"*
  - O usuário pode conectar notebooks ao Cluster;
  - Pode visualizar a *UI(User Interface)* do *Spark*, metricas do Cluster e informações de drivers;
  - Pode iniciar, reiniciar e interromper um Cluster.
- *"Can Manage"*
  - Tem todas as permissões anteriores, podendo editar o Cluster, incluir bibliotecas, redimensionar e alterar as permissões.
 
> [!Note]
> É recomendado que *analistas* tenham a permissão de **Can Attach to**.
> *Administradores de dados* podem ter permissões de **Can restart**.
> *Seniors ou cargos superiores* podem receber permissão de **Can Manage**.

> [!Caution]
> ***No permissions*** restringe totalmente o acesso do usuário ao uso no Databricks, exceto a visualização de dados em Dashboards que não sejam gerados utilizando Apache Spark.

# Gerenciando Clusters Interativos
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/46af51f6-876f-43e6-9a0c-ed7d2c617b61" />

## Objetivos do curso
- Analisar as diferenças entre clusters "inrestrito", "restrito" e com a desativação da permissão de criação;
- Implementar politicas de clusters, para controloar o uso de recursos e garantir consistencia;
- Verificar e gerenciar as credenciais emplementada, garantindo a permissão de criação de cluster de forma adequada;
- Estabelecer estrategias para balanciar as necessidades de uso com os custos computacionais.
  
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a2a12792-8674-4823-a5f5-5dc279358109" />


## Exemplo de politica de criação de Cluster

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a1f1924c-d409-4249-88fb-bc121c12fed5" />

### Especificações do Cluster
- Single node, single user online (and hide the associated controls)
- Fix (and display) the DBR version to 15.4 LTS
- Provide limited ability to select node type
- Fix auto-termination to 120 minutes and hide control

> [!Note]
> O Script de configuração do Cluster está salvo nesse mesmo repositório neste [link](https://github.com/DevRaulOliveira/DB-Material/blob/Main/Databricks/Code/%5BDatabricks%5D%20Exemplo_Cluster_Config.json)

# Provisionando custos para Clusters "Serverless"
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1453a681-584c-46da-a745-796423188e0f" />

## Visão geral do Serverless Compute
Os servidores *"Serverless"*, são servidores provisionados diretamente pelo *Databricks*, desta forma não precisando de um processo de confiuguração do mesmo, por que o mesmo já vem configurado por padrão, desta forma tirando a necessidade dessa atividade e colaborando para o processo de enfase no trabalho e deixando a responsabilidae de infraestrutura por parte da Databricks.

> [!Note]
> Sempre necessário entender qual demanda do projeto antes de implantar uma ferramenta, sendo uma pratica poderosa para o gerenciamento de custos.

A imagem abaixo apresenta os benefícios de servidores "**Serverless**".
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/fe0d83c2-232c-494c-a319-c1de095649cb" />

## Tipos de Serverless Compute no Databricks
- Serverless Compute para Notebooks
  - Provisionamento sob demanda permitindo escalabilidade, utilizando maquinas para a execução de códigos SQL e Python
- Serverless Compute para Jobs
  - Provisionamento sob demanda permitindo escalabilidade, executando processos sem a necessidade de realização de configuração de set-up.
- Serverles SQL Warehouses
  - Provisionamento sob demanda permitindo escalabilidade,para a execução de comandos SQL no SQL editor ou em notebooks.
- Serverless DLT Pipelines
  - Maquina otimizada e escalável para Pipelines atualizadas usando Delta Live Tables
- Mosaic AI Model Serving
  - Alta dispobilidade e baixa latencia para serviços de deploy usando modelos de IA
- Mosaic AI Model Training- Forecasting
  - Modelo de machine learning auto alimentado para elaboração de modelos de previsibiliade.
 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/86e1cd22-03b7-4e7c-b2cf-b1ba674e1430" />

## Monitoramento e gestão usando Serverless Costs
Abaixo estão alguns recursos disponibilizados ao utilizar recursos Serverless.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4e265170-2c05-40c1-a2af-bfee323c2944" />

- Atribuição de custos:
  - A atribuição de custos em computes é feita utilizando TAGs, esses dados são salvos nas System tables da Workspace.
- Metodo efetivo de monitoramento de Custos:
  - Os custos podem ser distribuidos e alocados de acordo com as carteiras de projetos.
- Controle de carteira:
  - Utilizando politicas de orçamento, voce pode obter melhor visibilidade e controle de como os seus recursos estão sendo gastos e quanto se está gastando.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/e1f02150-3503-46cf-83fd-727c09f7816e" />

## Tipos de permissões nas politicas de Orçamento
 - Permissões de usuário:
   - Permite que o usuário selecione a politica de orçamento desejada quando estiver criando recursos, como notebooks, jobs ou pipelines.
- Permissões gerenciais:
  - Permite que o próprio usuário edite e defina as suas respectivas politicas de custos.
  - Qualquer usuário pode receber esse tipo de permissão caso seja definido pelo *Workspace admin* ou *Account admin*
 
## Seleção Manual ou automatica de politicas orçamentárias.
Existem três tipos de formas de aplicações das politicas Orçamentárias.
1- *"Single Policy Assignment"*
  - A politica definida pelo administrador, automaticamente é aplicada ao respectivo usuário.
2- *"Multiple Policy Assignment"*
  - Aplicação de diversas politicas orçamentárias, neste caso fica disponivel para o usuário selecionar qual politica orçamentária é mais adequada a atividade que está exercendo.
3- *"Default Policy Selection"*
  - Caso nenhuma politica orçamentária seja selecionada, a politica orçamentária aplicada será baseada na ordem alfabética das politicas estabelecidas.

> [!Caution]
> Os valores de recursos gastos estão na system table "system.billing.usage" e as TAGs estão armazedas na tabela "Custom_tags"

### Exemplo importante
Quando um notebook é executado como parte de um Job, a politica orçamentária aplicada é a politica voltda a Jobs.

## Informações importantes para a otimização de custo
- Aplicação Manual das Politicas
  - As politicas existentes atualmente devem ser aplicadas manualmente a cada recurso.
- Aplicação Alfabética de politicas
  - Essa aplicação é realizada sempre que nenhuma opção for selecionada, por isso é importante ter atenção a ordem alfabética de politicas como medida de segurança
- Politicas Deletadas
  - Politicas deletadas, podem afetar produtos que as utilizam, por isso tenha atenção nisso.
- Atraso na atualização de TAGs
  - É preciso revisar sempre que necessário as alterações em TAGs já que essa são aplicadas apenas aos novos recursos.
- Repositório Git e as limitações de integração
  - A aplicação padrão da politica mais recente é realizada, com a ausencia de politicas específicas.
- Exclusão da Computação Classica.
  - A aplicação dessas politicas é valida SOMENTE para recursos SERVERLESS
- Visibilidade da TAGs na interface de usuário.
  - TAGs das politicas orçamentárias não fica visiveis na lista de Jobs do usuário.
- Delay na atualização de TAGs em Pipelines
  - A aplicação de alterações voltadas a Pipelines leva 24h para fazerem efeito.
- Independencia de politica orçamentária em pipelines
  - Cada Pipeline requer uma politica orçamentária específica.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6bdf326f-ebe0-4b20-be71-27790a861426" />



