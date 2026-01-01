#Data Lakehouses and Data Inteliligence

## Data Lakehouse
### Definição
O **Data Lakehouse** é a fundação de uma plataforma de **inteligencia de dados**, sendo assim a base desse tipo de plataforma. Por tanto é importante mencionar algumas definições importantes.

- Data Warehouse
- *Pontos Fortes*
  - A proposta do Data Warehouse foi feita com o objetivo de facilitar a obtenção de relatórios e facilitar o processo de consultas;
  - Possbilita a unificação de sistemas diferenciados;
  - Possui estrutura definida, podendo armazenar dados tratados e padronizados.

- *Pontos fracos*
  - Não tem suporte a dados semi estruturados ou não estruturados;
  - Baixo desempenho no processo de ciencia de dados envolvendo IA ou streaming de dados;
  - Usa formato fechados de dados, com propriedades pré estabelecidas;
  - Custo elevado de escalamento.

<img width="953" height="477" alt="image" src="https://github.com/user-attachments/assets/6696b81f-2935-46be-b076-abb8359aba7e" />

- Data Lakes
- *Pontos Fortes*
  - Armazena qualquer tipo de dados;
  - Baixo custo de armazenamento;
  - Bom modelo incial;
  - Suporta IA generativa e streaming de dados.

- *Pontos fracos*
  - Configuração complexa;
  - Baixo desempenho em Business Inteligence;
  - Pode gerar dados ilegíveis;
  - Problemas de governança;
  - Warehouses ainda são necessários.

<img width="977" height="480" alt="image" src="https://github.com/user-attachments/assets/cd09d6d3-6f41-4a1a-93b6-4b55f5343224" />

- Comparativo entre ambos
Normalmente a existencia de um requer que ambos existam, dessa forma gerando a necessiade de duplicidade de dados em multiplos ambientes. A figura a seguir reforça isso.
<img width="979" height="476" alt="image" src="https://github.com/user-attachments/assets/651f5a6b-c112-45c4-bacd-246ed7c523fd" />

- Data Lakehouse
  É uma plataforma para unificar todos os dados, incluindo processo analíticio e cargas de dados de IA, além disso esse modelo previne a existencia de Lock In, já que da suporte a multiplas plataformas.
<img width="976" height="476" alt="image" src="https://github.com/user-attachments/assets/2d4a20f5-72cd-4f79-a975-7cbfe2fa8e5c" />

- Data intelligence
  É o conceito que consegue unificar tanto os principios de engenharia, analise, IA e governança de dados. Para isso o Databricks possui uma solução centralizada que pemite a governança de todos esses aspectos em uma unica plataforma, mesmo possuindo dados de distintos ambientes. é importante informar que os dados para serem gerenciados e terem sua governança feita pelo Unity Catalog precisam estar inseridos no ambiente como "gerenciados".
<img width="979" height="549" alt="image" src="https://github.com/user-attachments/assets/b9652488-8e05-450e-93fd-d9e825e63e14" />


