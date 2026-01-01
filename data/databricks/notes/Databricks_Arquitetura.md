# Arquitetura

## Arquitetura Alto Nível
A operação no *Databricks* segue duas premissas sendo elas o **plano de controle** e o **planocompute**.
- **Plano de Controle**: O *Databricks* que possui um serviço de *back-end* que realiza o gerenciamento da sua conta com o **Databricks Account**
- **Plano compute**: É o local onde os dados são processados, podendo variar de acordo com a natureza da atividade
  - **Servless Compute**: É a execução sem servidor.
  - **Classic Compute**: É a execução de acordo com as regras do servidor externo.

> [!NOTE]
> Pesquisar sobre **workspace storage bucket**
> https://docs.databricks.com/aws/pt/compute/#types-of-compute
  

# Data Lakehouse 

## Conceito
Um data lakehouse é uma arquitetura aberta e nova de gerenciamento de dados que incorpora a *fleoxibilidade, a economia e a escalabilidade de um data lake* para gerenciamento de dados e transações ACID.

# ACID

## Conceito 
ACID são as quatro propriedades fundamentais de uma tranação de banco de dados,sendo elas **Atomicidade**, **Consistência**, **Isolamento** e **Durabilidade**. Esse conceito também é utilizado para estabelcer o conceito de **sistemas transacional**.

![image](https://github.com/user-attachments/assets/5de9de5e-653d-4b0f-b300-79a97bb73173)
- **Atomicidade**: O conceito de *atomicidade* é gerado devido a abordagem da ideia de que cada valor é tratado como uma unidade, ou seja cada operação singular é aplicada individualmente em cada item e não de maneira agrupada ou conjunta.
- **Consistencia**: A *consistência* é gerada devido ao conceito de operações predefinidas e previsíveis durante a realização de transações.
- **Isolamento**: A utilização dos objetos da base de dados é realizada de maneira isolada por cada usuário, mesmo que ocorram simultaneamente fazendo com que cada uma seja independente.
- **Durabilidade**: Esse conceito assegura que alterações realizadas com **sucesso** na base de dados sejam preservadas mesmo em casos de falha do sistema.

## ACID no Databricks

> [!NOTE]
> O **principal benefício de transações utilizando sistemas ACID** é gerada pela consistencia de dados em casos de falhas inesperadas, ou seja o processo de gravação de **todos os dados** é assegurada por esse sistema e caso algum dado não seja carregado, o processo de recuperação desta inforamção ocorre de maneira mais facil e rápida.

## Justificativa
As transações *ACID* originalmente são propriedades exclusivas de *data warehouses*, porém o **Delta Lake** consegue aplicar esse conceito por que permite que os usuários visualizem as informações gravadas em tempo real e cada transação realizada é gravada e registrada em um loc de transações ordenadas. Outro ponto fundamental para a aplicação adequada do ACID é o processo de **isolamento serializável**

# Arquitetura Medalão

## Conceito
A *arquitetura medalhão* é um modelo de arquitetura de dados que visa realizar  a organização *lógica* dos dados dentro do ambiiente do *Databricks*.O Conceito dessa estrutura tem como principal objetivo o processo de *incrementação dos dados* de acordo com as camadas no qual os dados são armazenados.

## Criação de Pipelines
O **Databricks** possui o **Delta Live Tables(DLT)**, ferramenta utilizada para a criação de Pipelines que organizam o fluxo de dados entre as camadas de dados existentes. O DLT conta com recursos criação de pipelines utilizando tabelas de transmissão e visualizações materializadas baseando se no sistema *Apache Spark* que realiza *streaming estruturado*, ou seja os dados estruturados são atualizados de modo **incremental**.

## Tipos de camadas de dados
Os dados em uma "arquitetura medalhão* ficam distribuidos em *3 camadas distintas*, sendo elas as seguintes:
- Bronze
- Silver
- Gold

![image](https://github.com/user-attachments/assets/64a98424-4f9f-4690-9fc8-d03155b1dc84)

Cada uma dessas camadas exerce um papel fundamental no processo de tratamento de dados a serem disponibilizados para consumo. Seja para a criação de Dashboards e relatórios gerando *Insights* para o setor de negócio.

### Bronze
Os dados armazenados na camada **bronze** não recebem qualquer tipo de tratamento. Essa camada é responsável por armazenar dados brutos que tem origem da camada **RAW**(Dados iguais ao da origem), ou seja dados sem qualquer tipo de modelagem, tratamento ou padronização.

### Silver
Na camada **silver** são armazenados os dados limpos, dados que já foram ajustados e padronizados e normalizados, prontos para serem enviados para a camada seguinte.


### Gold
A camada **Gold** contém os dados prontos para o usuário final, ou para o cientista de dados realizar elaboração dos projetos
