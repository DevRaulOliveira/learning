<h1>Databricks Get Started Days</h1>
<p>Anotações em tópicos dos ponto para pesquisar depois</p>
<ul>
  <li>Arquitetura Medalhão</li>
  <li>Infraestrutura Control Plane, Compute Plane e Data Plane</li>
  <li>Runtime</li>
  <li>Databricks Photon</li>
  <li>Infraestrutura e Plataforma Serveless</li>
  <li>Databricks IQ, Unity Catalog, Delta Lake, Data Lake aberto</li>
  <li> Mosaic AI, Delta Live Tables</li>
  <li>Delta Sharing é o protocolo de compartilhamento de dados entre diversas empresas</li>
  <li>Databricks Marketplace e Databricks Clean Room</li>
  <li>Databricks Workflows, Orquestração de atividades</li>
  <li>Delta Live tables, é para montagem de Pipelines automaticas</li>
  <li>Databricks, SQL, AI e Genie</li>
  <li>Hive Metastore é o antecessor do Unity Catalog</li>
  <li>Unit Catalog, requer a configuração da Metastore (Conexão com o ambiente que tem os Dados), segundo o Catálogo (Informações dos objetos que voce estiver trabalhando) Catalogo serve para segurança e organização de ativos, Schemas armazenam Objetos(Organização em Nível de assunto e segurança) </li>
  <li>Access control List</li>
  <li>Arquivo DBC, gera um arquivo ZIP do Databricks</li>
  <li>Market PLace é onde se realiza a conexão com serviços externos</li>
  <li>Data engenieering é onde tem as Pipelines e os Job Runs</li>
</ul>

<p>Usando a plataforma para engenharia de Dados</p>
<ul>
  <li>Existem cluster dedicados para Engenharia de Dados, Analise de Dados e ETL</li>
  <li>Resp eng dados, transformar dados brutos em dados confiáveis e limpos, permitindo a movimentação dos dados</li>
  <li>Fluxo: Fonte de dados, ingestão de dados, processamento de dados, armazenamento de dados, disponibilização dos dados, orquestração e governança dos dados.</li>
  <li>Desafios comuns: Metodos complexos(diferentes ingestão de dados), Suporte a CI/CD e ferramentas de orquestração de terceiros</li>
  <li>Ingestão: Create table, Copy Into e Auto Loader(Delta Lake)</li>
  <li>Processamento: Spark e Photon</li>
  <li>Para PBI DBSQL, Machine Learn: Mosaic Ai, Delta Sharing: Compartilhamento</li>
  <li>Delta lake Resumo: É um protocolo de código aberto, é voltado a leitura e gravação de arquivos no armazenamento em cloud.</li>
  <li>Tabela Delta: por baixo dos panos são arquivos Parquet</li>
  <li>Logs de transação: Armazenamento de estados de metadados</li>
  <li>Tabelas criadas dentro da tabela possuem forma Delta, por Default</li>
  <li>Transações ACID: Integridade, Operações de DML: Linguagens de manipulação, Possui histórico de versionamento, Evolução do Schema e Impede que as tabelas mudem</li>
  <li>Passo de criação de Workspace: Criar Tabela e Esquema (é possível setar o catalogo e o schema usano USE)</li>
  <li>Identifier, currente_catalog, currente_schema</li>
  <li>DESCRIBE SCHEMA EXTENDED(Litas as informações detalhadas do Schema)</li>
  <li>SHOW TABLES, SHOW VOLUMES(É uma espécie de Bucket, nesse caso gerenciado pelo Unity Catalog)</li>
  <li>PySpark</li>
  <li>Comando LIST</li>
  <li>Lendo arquivo usando SQL SELECT * FROM csl.(caminho do arquivo, parando na PASTA)</li>
  <li>CSV é arquivo bruto</li>
  <li>Convertendo o arquivo CSV pronto para a tabela</li>

  ![image](https://github.com/user-attachments/assets/962801d5-75c8-4fd5-85b5-37a55762b7ca)

  <li>CREATE TABLE AS SELECT (CTAs)</li>
  <li>Comandos USE catalog e USE schema, fazem com que apartir dali, todas as ações sejam feitas nessa tabela</li>
  <li>Modo OVERWRITE sobre escreve a tabela, APPEND adiciona a tabela sem sobrescrever</li>
  <li>Aprender a usar PySpark e Python</li>
  <li>Describe Extended, expande a todas as inforamções da tabela na WorkSpace</li>
  <li>32 primeiras colunas sevem para estatistica</li>
  <li>Databricks IQ faz sugestão de descrição de tabelas com base nos dados</li>
  <li>Describe History</li>
  <li>Os comentários dos objetos e das colunas são criados com base nos valores e nos nomes das colunas</li>
  <li>Delta Lake Uniform</li>
  <li>Apache Hudi, Delta Lake, Apache Iceberg</li>
  <li>Delta Lake Uniform unificou dados e metadados, todos os arquivos ficam em formato Parquet</li>
  <li>Ingestão de dados: Create table, Update UI, Copy Into e Auto Loader</li>
  <li>Indepotente faz com que o copy into não aconteça se não for necessário</li>
  <li>Auto loader carrega os arquivos de Streaming</li>
  <li>O log registra a ação</li>
  <li>Dado tipo "MAP" ??</li>
  <li>SET CURRENT CATALOG e SET CURRENTE DATABASE</li>
  <li>CTAs é CREATE TABLE AS SELECT </li>
  <li>NEW>SHORTCUT>CREATE OR MODIFY TABLE(É a forma de criar tabelas através da importação de arquivos sem usar código sql, É POSSÍVEL FAZER COM MUITOS arquivos de uma vez?)</li>
  <li>COPY INTO</li>
  <li>COPY INTO É INTOPOTENTE(não realiza a ação)</li>

  ![image](https://github.com/user-attachments/assets/92e30fc0-9aaf-458e-8f6f-c41ee0eeb865)

  <li>COPY INTO só processa novas informações</li>
  <li>AUTO LOADER pula arquivos que já foram carregados também</li>

  ![image](https://github.com/user-attachments/assets/6914d8c6-284b-4c1c-9fd7-01ddbcbc6a38)

  <li>Arquitetura Medalhão: Conceito das camadas bronze, silver e gold</li>
  <li>Multi Hop</li>
  <li>Suporte ACID</li>
  <li>Tratamento de dados ao longo das camadas</li>
  <li>Delta Live Tables, funciona para a montagem de Pipelines</li>
  <li>Workflows, orquestração de tarefas dependentes, para machine learning também, Código arbitrário com APIS.</li>
  <li>Ingestão via streaming, Delta Live Tables</li>
  <li>Workflow>JobPipeline>É onde é criada a tarefa.(MUITO IMPORTANTE, LER A DOCUMENTAÇÃO COMPLETA) É transformação dos dados de acordo com a troca de camadas</li>
  <li>É possível schedular atividades</li>
  <li>Notificações podem ser enviadas por EMAIL, ou VIA TEAMS</li>
  <li>Workflow pode ser executado de um airflow externo</li>
  <li>IMPORTANTE Cluster para Datawarehouse e outro para Processamento</li>
  <li>Engenheiro de Dados: Coleta, limpeza e processamento de dados.</li>
  <li>Analista de dados: Analise exploratória</li>
  <li>Modelagem, análise e apresentação de dados</li>
  <li>Desafio de dados: Silos de dados e sistemas multiplos, Qualidade dos dados, governança e compliance</li>
  <li>Data Warehouse x Data Lake: IA e ML é recomendado usar o Data Lake e Data Warehouse para outras aplicações.</li>
  <li>Databricks SQL é voltado a Warehousing de dados</li>
  <li>Databricks SQL é integrado aos Notebooks</li>
  <li>Databricks possui integrações com o Power BI, Tableu </li>
  <li>SHOW TABLES IN mostra as tabelas do respectivo SCHEMA </li>
  <li>CRES - CREATE OR REPLACE</li>
  <li>Usar o WORKSPACE para criar QUERIES e criar visualização de dados</li>
  <li>Delta Lake os arquivos ficam em formato Parquet</li>
  <li>DESCRIBE HISTORY mostra o versionamento da tabela (histórico de atualizações, incluindo operações de DELETE e CREATE</li>
  <li>RESTORE TABLE restaura uma versão específica da tabela, recuperando dados
  <li>UNDROP TABLE restaura uma tabela que foi DROPADA</li>

![image](https://github.com/user-attachments/assets/be3928ec-661b-46eb-bc2d-eab2d38522a0)

  <li>VERSION AS OF permite a seleção de uma determinada tabela ou no final da tabela coloca @V2. Exemplo: bronze@v2</li>
  <li></li>
</ul>
