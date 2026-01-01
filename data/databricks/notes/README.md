# Notas

## Informações Gerais
Essa pasta possui anotações gerais do curso realizado na Udemy sobre Databricks. A organização geral do conteúdo será feita dividida por grupos de aulas, abaixo segue a lista dos temas abordados nesse curso.
 - Databricks Free Edition;
 - Primeira Configurações e Cadastro;
 - Configurações de Manipulações de Arquivos;
 - Comandos SQL;
 - Tipos de Dados PySpark - Databricks;
 - Filtros avançados de Dados;
 - Manipulação de Colunas;
 - Conversão de Dados;
 - Trabalhando com Data e Hora;


# 1. Databricks Free Edition

## 1.1. Apresentação do Ambiente.
Ocorreu a apresentação do ambiente de maneira introdutória, apresentando a **Workspace** apresentando a criação de pastas e também o acesso a parte do **Unity Catalog**.

## 1.2. WorkSpace
A **WorkSpace** no ambiente do databricks funciona como área de trabalho do ambiente, sendo possível realizar a sua divisão por pastas e categorias. Sendo neste ambiente também onde ocorre a carga de arquivos de modo geral.

## 1.3. Catalogo
O **Catalogo** é o local onde fica o caminho de armazenamentod de dados, foi apresentado o processo de carga de arquivos simples apartir de uma *pasta*.
O processo de carga precisa ter um volume atribuido criado no ambiente para posteiormente ser realizada a ingestão de dados. O passo a passo de subida de arquivos no ambiente do catalogo é o seguinte:
  1. Definição da Workspace que irá conter os arquivos.
  2. Criação do schema que irá conter o volume/schema, neste caso o selecionado foi o "default".
  3. Selecionar opção ***>UPLOAD TO THIS VOLUME<***.
  4. Selecionar os respectivos arquivos.

É importante lembrar que após esse local criado, a localização desse arquivo será necessária para a seu uso durante a utilização dos *Notebooks*.

## 1.4. Notebooks
É o ambiente onde são realizados comandos avançados de execuções de atividades no Databricks, incluindo comando utilizando outras linguagens além do convencional *SQL(Structured Query Language)* é possível usar também Python, Scala,
 R e Markdown.
## 1.4.1. Comandos básicos
A seguir estarão disponíveis os comandos básicos utilizados em **Notebooks** no ambiente do Databricks acompanhados das respectivas linguagens e funções:

### Python
fs
: é um comando de grupo do **Databricks**.
: serve para interações com bases de dados que sejam **dbfs**.

ls
: comando utilizado para listar informações a respeito do diretório/caminho fornecido.

dbfs
: conjunto de informações publicas disponíveis no **Databricks** para a realização de estudos.
: dataset público.

spark.read
: *spark.read.**file_format*** é o comando utilizado para a leitura de um arquivo.
: O comando completo de **spark.read** tem a seguintes estrutura > ****df= spark.read.csv('file_path', header = True, inferSchema = True)**** <.
> [!NOTE]
> - header = titulo das colunas.
> - inferSchema = conteúdo das células.

createTempView
: Cria uma *View* temporária.
: A criação de uma view temporária permite a utilização de SQL.
: Exemplo:  var.createTempView()
> [!IMPORTANT]
> É importante que a mesma variável que passa a receber o valor do arquivo, seja utilizada em conjunto com o modulo creteTempView
> Ex: df.CreateTempView(Nome_da_View)
> 
### Genie Spaces
**Genie Spaces** é a ferramenta de IA, que permite a realização de análise de dados utilizando as respectivas descrições de **colunas e tabelas**, permitindo também a inserção direta de instruções em cada workspace.

#### Limitações
- Cada Genie Spaces suporta até 100 SQL injections.
- A quantidade de linhas na instruções contam na Genie Space.





