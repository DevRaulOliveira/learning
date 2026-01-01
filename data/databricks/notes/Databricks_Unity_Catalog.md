<h1>Gestão e Governaça de dados com o Unity Catalog</h1>

![image](https://github.com/user-attachments/assets/24f0be9b-3536-434f-9b12-8cbea9940c62)


<h2>Objetivo Geral do Curso</h2>
<p>Apresentando de forma geral os temas a serem abordados ao longo do curso.</p>
  <ol>
    <li> Descrever conceitos gundamentais sobre o uso do Unity Catalog.</li>
    <li> Analisar os componentes principais e a arquitetura do Unity Catalog.</li>
    <li> Acesso seguro ao armazenamento externo.</li>
    <li> Avaliar o modelo de segurança do Unity Catalog e as funções do Databricks para implementar estratégias de governança de dados robustas.</li>
    <li> Criar e implementar fundamentos de administração de dados.</li>
  </ol>

<h2>Programação do Curso</h2>
<ol>
  <li> Visão geral da governança de dados.</li>
  <li> Demonstração: Preenchendo o Armazém de Metadados.</li>
  <li> Laboratório: Navegando no Armazém de Metadados.</li>
  <li> Padrões de Organização e acesso.</li>
  <li> Demonstração: Atualizando tabelas para o Unity Catalog.</li>
  <li> Segurança e Administração em Unity Catalog.</li>
  <li> Visão geral do Databricks Marketplace.</li>
  <li> Privilégios em Unity Catalog.</li>
  <li> Desmontração: Controlando o acesso aos dados.</li>
  <li> Controle de acesso de granulação fina.</li>
  <li> Laboratório: Migrando e gerenciando dados no Unity Catalog.</li>
</ol>

--

<h1> 1.  Governança de Dados</h1>

![image](https://github.com/user-attachments/assets/1d64af66-332a-452d-999d-4a1a3b936ae7)

<p>Nesta aula é abordado de uma forma geral uma visão de governança de dados utilizando o <strong>Unit Catalog</strong>. Sendo este um recurso podero para a gestão de uso da plataforma, que permite que o usuário visualize de maneira detalhada as informações de uso da ferramenta.</p>
<p>Apresentando dados sobre o tema:</p>
<ul>
  <li>"<strong>80% das empresas</strong> que buscam escalar negócios digitais <strong>irão fracassar</strong> por que não adotam uma <strong>abordagem moderna para a governança de dados e analítica"</strong>.</li>
  <p> Esse dado reforça o quão importante é realizar um planejamento detalhado antes da adoção de serviço <strong>Saas</strong> como plataforma de trabalho. Por isso é preciso entender e definir com clareza as regras de acesso as informações, bem como triggers de uso.</p>
  <br>
</ul>

  <h2> 1.1. Visão geral da governança de dados</h2>
  <p> A governaça de dados é subdividida em <strong> 4 áreas funcionais principais</strong>. <br>

![image](https://github.com/user-attachments/assets/70b6e434-f7c9-4196-92ae-cb3dd6c28a3b)

  <ul>
    <li>Controle de acesso a dados</li>
      <p>Definição de quem pode acessar quais informações das bases de dados, criando subdivisões de acordo com as áreas as tabelas que determinados usuários/sistemas precisam para realizar as atividades. </p>
    <li>Linhagem de dados</li>
      <p>Incluindo a captura feita por pipelines que realizam o carregamento de dados na base e também quais sistemas consomem essas informações.</p>
    <li>Auditoria de aceso a dados</li>
      <p>Esse processo pode ser feito pelo uso das System tables que basicamente registram todas as ações realizadas pelos usuários na Workspace, incluindo custos, ações, uso de recursos e até mesmo as querys executadas.</p>
    <li>Descobrimento de dados</li>
      <p>Define as fronteiras de visualização de informações, por exemplo gestores e administradores das bases de dados tem acesso a visão geral da base, enquanto outros usuários só podem visualizar as informações de suas respectivas áreas.
  </ul>
  </p>
<br>
    <h3> 1.1.1. Desafios no Data Lake</h3> <br>

![image](https://github.com/user-attachments/assets/21040cb3-d028-40cf-974c-86674b64b022)
      <p>Os principais desafios dessa estrutura é realizar o controle adequado e reduzir a duplicidade de dados, principalmente quando a empresa utiliza simultaneamente um <strong>Data lake</strong> e um <strong>Data Warehouse</strong>.<br>
          Essa pratica faz com que a governaça de dados seja mais complexa, já que ambos são estruturalmente diferentes, possuindo metodos de governança incompativeis e suportes de uso diferenciados. Todo esse contexto pode levar a <strong>duplicação e desvios de                dados</strong> quando não mapeado de maneira adequada e devidademente arquitetado.
      </p>
> [!IMPORTANT]
> Quanto maior a diversidade de ferramentas de armazenamento de dados, quantidade de fontes e ferramentas que utilizam essas informações, tende a ser mais complexo a gestão e guarda adequada dos dados.

  <h2> 1.2. A governança de dados, análises e AI é complexa.</h2> <br>

![image](https://github.com/user-attachments/assets/1773f348-7513-423e-a655-27a2faedf646)

  <p>Por isso a governança de dados é um <strong>desafio</strong> para as organizações já que não é possível realizar o controle granular de acesso aos dados e o controle de acesso a arquivos é igualmente dificil, por requerer que seja necessário definir a fronteira        de limite de acesso as informações respeitando as politicas da empresa e garantindo eficiencia, baixo custo e integridade. <br>
    A pratica de divisão de acesso por diretório é uma das mais utilizadas, contudo a realização dessa ação de maneira apropriada é desafiador principalmente em um mundo com constantes mudanças e com isso, talvez até pequenas alterações fazem com que seja necessário       alterar as regras de todas as fontes de dados.
  </p>

>[!NOTE]
> Exemplo: O <strong>Hive Metastore</strong> mantem o controle de visualizações e tabelas, então voce precisa dar permissões de visualização a tabelas, views além das permissões em nível de arquivo. Isso pode abrir margem para problemas de sincronização com dados subjacentes. <br>
Isso pode causar inconsistencias de acesso dos usuários que muitas vezes podem acabar tendo acesso apenas aos arquivos, porém não as tabelas que são alimentadas por esses arquivos.

  <p>O mesmo pode acontecer com o <strong>Data Warehouse</strong>, já que o mesmo possui fontes de dados diferentes e também politicas de acesso que são diferentes, por isso é um desafio manter ambas as frentes em sincronia e com politicas funcionando de maneiraadequada. O desafio tende a aumentar, conforme são adicionados elementos a essa estrutura, como notebooks, relatórios, diversas origem de dados ou sistemas que utilizam essas informações.<br>
    Por isso surgiu a necessidade de criação de uma ferramenta unificada de gestão de acesso a dados e IA, sendo este o <strong>Unity Catalog</strong>.
  </p>

<h2> 1.3. Databricks Unity Catalog</h2>

<p>A ferramenta unificada de governança de dados, análises e IA.</p>

![image](https://github.com/user-attachments/assets/2b1830d6-773f-4534-9d37-7f8dee0b4e13)

<p>O <strong>Unity Catalog</strong> oferece uma base unificada de gestão de <strong>daods e IA</strong>, permitindo o gerenciamento total da acessos e uso de recursos, tudo em uma unica solução, sendo a primeira camada de três níveis (<strong>catalogo</strong>.schema.table-etc). Os catalogos são registrados em um Unity Catalog metastore, na conta.</p>

<p>O <strong></strong> é o nível mais alto dentro do modelo de governança de dados, sendo assim a unidade lógica de isolamento de dados e uma catagoria lógica de acesso aos dados, permitindo que uma hieraquia eficiente de concessões para acesso aos esquemas e objetos contidos neles.</p>


> [!NOTE]
> A estrutura de catalogo na maioria das vezes é similar a estrutura organizacional das empresas, servindo como uma boa referencia para a elaboração da configuração.

<p>O <strong>Isolamento de dados usando catálogos</strong>, pode servir como um modelo de gerenciamento, conduto é possível criar o isolamento usando apenas a metastore, criando um local padrão sem a implantação de governança(<strong>não recomendado</strong>), fazendo com que a presença do catalogo possibilite um <strong>gerenciamento granular</strong>.</p>

<p>É importante entender os <strong>privilégios em nível de catálogo</strong>, já que por definição esses são os responsáveis pelo gerenciamento de todos os objetos que estão sob essas estrutura. Por isso que de acordo com as permissões de usuário a nível de <strong>catálogo</strong>, são geradas as permissões subsequentes.</p>

> [!NOTE]
> Exemplo: Um usuário com permissão de <strong>SELECT</strong> em um determinado catalogo, pode ler todas as informações de todos os objetos.
> Exemplo: Um usuário com permissão de <strong>CREATE TABLE</strong> podem criar uma tabela em qualquer lugar do catálogo.

<p>Por isso que a lóhgica de atribuição de privilégio é vista como o processo de liberação do acesso mínimo necessário para realizar a tarefa, sendo liberado o acesso a dois objetos específicos ou exclusivamente o nível de hierarquia que o usuário precisa.</p>

> [!IMPORTANT]
> É preciso aribuir a usuários de objetos a oermissão de <strong>USE CATALOG</strong> no catálogo que contém a tabela.

<p>É importante citar a existencia de dois <strong>tipos de catalogos</strong>, sendo um o <strong>catálogo padrão</strong> e o <strong>catálogo externo</strong>.</p>
<ul>
  <li>Catalogo Padrão:</li>
  <p>São os catalogos próprios do Databricks, sendo esse o modelo referido ao longo de toda a documentação.</p>
  <li>Catálogo Externo:</li>
  <p>A criação de objetos externos é feita por meio do <strong>Lakehouse Federation</strong>. Desse modo ocorre o espelhamento de um banco de externo no Databricks, permitindo que seja realizado a leitura desses dados dentro do ambiente do Databricks.</p>
</ul>

<p>Além desses dois tipos, o Databricks provisiona catálogos automaticamente durante a criação de uma <strong>WorkSpace</strong>.</p>

  <h3> 1.3.1. Visão geral Unity Catalog</h3><br>

![image](https://github.com/user-attachments/assets/a0395f58-7dbe-46e4-839a-165f47bff2a3)

  <ul>
    <li>Unificação de governaça entre clouds</li>
    <p> Governança refinada parda data lakes em clouds, com base no padrão aberto ANSI SQL.</p>
    <li>Unificação de dados e ativos de IA</li>
    <p> Auditoria, proteção e gerenciamento de todos os tipos de dados em uma unica plataforma, facilitando o processo de governança de acesso a informação.</p>
    <li>Unificar catálogo existentes</li>
    <p>Funcionam em conjunto com dados, armazenamento e catálogos existentes, sem necessidade de migração total.Esse recurso é fundamental para grandes volumes de dados de fontes diversificadas, permitindo uma visão completa dos diversos dados. <br>
      Sendo assim o <strong>Unity Catlaog </strong> atua como um HUB de gerenciamento de dados e IA de maneira simplificada, permitindo a unificação de diversas fontes como o Data Warehouse.
    </p>
  </ul>

> [!NOTE]
> Por padrão as configurações do Unity Catalog são restritas, permitindo que  ajuste fino seja feito posteriormente pelo administrador da ferramenta. É importante citar que as alterações feitas no <strong>Unity Catalog</strong> são aplicados a todas as camadas de dados e IA.

  <h3> 1.3.2. Unity Catalog Código Aberto</h3> <br>

![image](https://github.com/user-attachments/assets/87b20c23-1f8b-44a3-a7a2-e6278ed14808)

  <p>O <strong>Unity Catalog</strong> se tormou recentemente uma ferramenta de código aberto, apresentando as seguintes caracteristicas abaixo:</p>

<ul>
  <li> Aberta</li>
  <p> APIs abertas e servidor OSS maximizam a flexibilidade e a escolha do cliente.</p>
  <li> Interoperável</li>
  <p> A inferce universal suporta qualquer formato, mecanismo, dados e ativos de IA.</p>
  <li> Unificado</li>
  <p> Governança unificada em  dados tabulares, não tabulares e ativos de IA, suportando todos os tipos de dados e motores de IA, podendo ser utilizado tanto para dados tabulares quanto não tabulares.</p>
</ul>

<h3> 1.3.3. Lista de plataformas a qual o Unity Catalog tem compatibilidade.</h3> <br>

![image](https://github.com/user-attachments/assets/bba609da-306e-4d03-a685-c7058597973d)

<p> Algumas caracteristicas adicionais do <strong> Unity Catalog</strong>.</p>

![image](https://github.com/user-attachments/assets/04ebb319-d0b5-47d8-898c-46e40fb2ff04)


  <h2> 1.4. Metastore</h2> <br>
  
![image](https://github.com/user-attachments/assets/de068cf7-42fa-4896-bbb1-836b9ec5190e)

  <p>O <strong>Metastore</strong> é o container lógico de nível superiror do Unity Catalog, ou seja este é o conteiner máximo de todos os objetos do Unity Catalog.</p>

>[!IMPORTANT]
> Pesquisar a difença entre o Hive Metastore e o Metastore do Unity Catalog.

<p>Outro ponto fundamental do <strong>Metastore do Unity Catalog</strong> é que ele possui enfase em auditoria e segurança, além de poder ser conectado ao <strong>Hive Metastore</strong>, possibilitando a criação de uma conexão que siga o exemplo abaixo:

![image](https://github.com/user-attachments/assets/0876f837-edd7-4acb-9f1b-3d8f76b2f766)

  A <strong>Metastore</strong> é uma forma lógica de organizar dados e metadados, ao invés da necessidade de um container fisico em si. Esssas boas praticas facilitam o entendimento do conceito de referenciação utilizado pelo metastore para realizar o acesso as coleções  de dados.<br>
  O direcionamento para o <strong>container de dados</strong> é feito através da atribuição de link de acesso aos arquivos que estão em <strong>cloud</strong>.
</p>
     <h3>Exemplos de metadados</h4>
    <p>Abaixo se encontram algumas definições de exemplo de metadados:
    <ul>
      <li>Objetos de dados</li>
      <li>Tabelas</li>
      <li>Visualizações</li>
      <li>Colunas</li>
      <li>Plano de controle</li>
    </ul>
    É importante lembrar que os objetos e dados gerenciados pelo metastore estão armazenados em mesmo container localizados na mesma região.
    <p>

> [!CAUTION]
> Apenas o administrador tem permissão para gerenciar o local no qual será criado a Metastore.

  <h2> 1.5. Catálogo</h2><br>

![image](https://github.com/user-attachments/assets/094f9dcb-6600-4630-982d-6f6a6c113f96)

<p>O <strong>Catalogo</strong> é o container superior para objetos de dados no Unity Catalog e forma a primeira parte do <strong>namespace*</strong> de três níveis. 
</p>
    <h3>1.5.1. Conceito</h3>
  <p>Conceitualmente o catálogo é uma camada de contenção de <strong>schemas</strong>. Um catalogo é a principal unidade de dados no modelo de governça de dados do <strong>Databricks Unity Catalog</strong>. Os catálogos durante a criação de consultas é a primeira camada do nome de três níveis do Unity Catalog(catalog.schema.object).</p>

> [!NOTE]
> Exemplo: <strong>catalog</strong>.schema.object

  <h4>1.5.2. Informações Importantes</h4>


![image](https://github.com/user-attachments/assets/471c3a8b-ba05-431d-af6e-86a8480d31bb)
        <h4> 1.5.1.1 Exemplo</h4>
        <p>Um metastore pode ter diversos catálogos, que lhe da a flexibilidade na forma como os ativos de dados são organizados.</p>
        <p>Analisando alguns componente presentes em <strong>Catálogos</strong>: </p>
        <ul>
          <li>Tabelas</li>
          <p>
            São dados organizados utilizando linguagem <strong>SQL</strong> para a manipulação e inserção de dados, além de possuirem estruturas organizadas e bem definidas, sendo divididios em linhas e colunas, no qual cada valor está presente em uma célula da                    tabela. O seu conceito é mantido pelo <strong>Unity Catalog</strong>. 
          <p> <br>
    <h3> 1.5.2.Tipos de tabelas no Databricks:</h3>
      <ul>
      <li>Tabelas de Metadados</li>
      <p>
      São tabelas que armazenam informações dos arquivos, organizandos em tabelas com estruturas definidas.
      </p>
      <li>Tabelas de informações</li>
      <p> 
      São tabelas que armazenam informações a respeito das tabelas, essas tabelas estão presentes no Unity Catalog, contendo os comentários de coluna, tabela, tipos de dados e lista de colunas.
      </p>
      <li> <h4> 1.5.2.1. Tabelas Gerenciadas vs Tabelas Externas </h4></li>
            <p>     
            As <strong>Tabelas Gerenciais</strong> e <strong>Tabelas Externas </strong> tem os seus <strong>metadados</strong> gerenciados pela metasotre, porém possuem como principal variação de local onde os dados da tabela estão guardados. <br>
            Por isso é importante citar as principais diferenças entre ambas as tabelas:
            </p>
            <ul>
            <li>Tabelas gerenciadas</li>
            <ul>
              <li>Os <strong>arquivos</strong> de dados são armazenados em um local de armazenamento gerenciado.</li>
              <p>
              Essa caracteristica faz com que o gerenciamento desses containers estejam em uma mesma metastore.
              </p>
            </ul>
            <li><h4> 1.5.2.2. Tabelas externas.</h4></li>
            <ul>
              <li>Os <strong>arquivos</strong> são armazenados em outro serviços como Google, MongoDB.</li>
            </ul>
            <p>
            Esse tipo de estrutura da a capacidade de desacoplar os dados os dados diversificando os caminhos de acesso aos dados pelo usuário. 
            <br>
            Por tanto, é importante entender os impactos de utilização de uma tabela gerenciada e não gerenciada. O quadro a seguir demonstra algumas caracteristicas gerais que diferenciam ambas as tabelas.
            </p> 
            <br>
  
![image](https://github.com/user-attachments/assets/be4f9178-a2c5-407f-9d01-3a3a24e02593)
<br>

> [!NOTE]
>  Quando se trata do nível <strong>OPERACIONAL</strong> a utilização das tabelas ocorre de maneira semelhante, com exceção da exclusão de tabelas. No caso de tabelas externas, os dados subjacentes são deixados intactos, apenas os metadados da tabela excluida serão afetados. Caso fosse excluida uma <strong>Tabela Gerenciada</strong> os metadados e os dados desapareceriam. <br>
    </ul>
    <li>View</li>
    <p> São apenas visualizações dos dados, alterar os metadados das visualizações não gera nenhum impacto no dado real. As views podem ser utilizadas livremente com a linguagem SQL.</p>
    <li>Volume</li>
    <p> São containers de armazenamento lógico licalizado no Cloud Object Storage. Volumes dão acesso a armanzenamento e processamento de dados diversos e não tabulares, acessando diretamente aos arquivos arbitrários.</p>
    <li>Função</li>
    <p>Funções são comando encapsulados pelo usuário para realizar comandos. As <strong>functions</strong> no Databricks suportam tanto a linguagem SQL, quanto Python</p>

>[!NOTE]
> É NECESSÁRIO PRIVILÉGIO DE CREATE FUNCTION no Schema <br>
> FUNCTIONS EM SQL SÃO MAIS OTIMIZADAS.

  <li>Modelo</li>
    <p> São objetos de IA e Machine Learning</p>

>[!NOTE]
> É NECESSÁRIO PRIVILÉGIO DE CREATE MODEL no Schema, para registrar um novo modelo. <br>
> APENAS OS PROPRIETÁRIOS DO MODELO PODEM CRIAR NOVAS VERSÕES DOS MODELOS REGISTRADOS
</ul>

> [!IMPORTANT]
> Unity Catalog é o nome da solução de governança de dados e IA. Catalogo é apenas a camada de contenção de Schemas podendo ser ou não gerenciado pelo Unity Catalog.


<h2> 1.5.3. Namespace de Três Níveis</h2>

<p>
  O Unity Catalog conta com namespaces de <strong>trÊs níveis</strong>. Essa estrutura basicamente cobre as três camadas de dados do Databricks, sendo elas <strong>catalog.schema.object</strong>, sendo assim a utilização de tabelas, views ou funções também seguem esse mesmo modelo. <br>
  É possível utilizar essa mesma estrutura de consulta para objetos externos, para isso é necessário que esses objetos tenham as respectivas credenciais registradas no <strong>Unity Catalog</strong>. <br>
  O serviço que permite o acesso a multiplas fontes de dados é chamado de <strong>Lakehouse Federation</strong>.

![image](https://github.com/user-attachments/assets/f1a32d0d-8a35-40ed-b3d8-8511a0d664d1)

</p>

<h2>Lakehouse Federation</h2>
<p>O serviço <strong>Lakehouse Federation</strong> é o serviço que cria um unico ponto de acesso seguro a bases de dados externas.</p>

![image](https://github.com/user-attachments/assets/df170bda-bd97-42e1-b210-d10064b9348f)

<h3>Acesso ao armazenamento externo</h3>
<p>
Para a criação de tabelas em ambientes externos é preciso ter as seguintes informações:
  <ol type=1>
  <li> Credencial de armazenamento</li>
    <p> É uma definição que permite o acesso a um contêniner ou bucket de armazenamento. A credencial é normalmente associada a uma identidade gerenciada ou uma IAM, como permissões específicas para o acesso ao ambiente de armazenamento.Incluindo permissões de leitura, escrita, criação ou delete de dados. <br>
    As credenciais por padrão são armazenadas no <strong>Unity Catalog </strong></p>
  <li>Local externo</li>
    <p> São os serviços externos que realizam a guarda de metadados, como <strong>MySQL, PostgreSQL, Snowflake, entre outros.</p>
  </ol>
</p>

<h4> Catálogo Externo</h4>
<p> Um catalogo externo passa a ser um objeto seguro no Unity Catalog que realiza o espelhamento em um sistema de dados externo. Permitindo que execute consultas somente de leitura naquele sistema de dados usando seu espaço de trabalho no Databricks. <br>
  Neste caso o Unity Catalog passa a gerenciar o acesso a esses objetos, isso faz com que as informações do objeto se tornem disponíveis no Catalog Explorer e compatibilidade compatibilidade de dados com o Apache Spark**. (O UNITY CATALOG SE TORNAR O GERENCIADOR DESSES OBJETOS) <br>
  Uma conexão no Unity Catalog serve como uma abstração duma fonte de dados externa, acessível pelo DATABRICKS COMPUTE. <br>
  Estabelecer uma conexão é o passo inicial no gerenciamento de fontes de dados externas. <br>
  Posteiormente, a criação de objetos de dados, como catálogos, esquemas ou tabelas, usando a conexão para criar a interação com os dados.<br>
  Ojetos de dados derivados de conexões podem ser lidos ou gravados, semelhante a outros objetos de dados do Unity Catalog armazenados no Cloud Storage. <br>
 
  
> [!NOTE]
> Dessa forma os usuários passam a ter flexibilidade para criar varios tipos de conexões. Cada tipo oferece opções de configuração distintas, adaptadas para gerenciamento. O Delta Sharing é um protocolo aberto projetado para compartilhamento seguro de dados entre ogrganizações. <br>
> O compartilhamento de coleções podem ser feitos em tempo real armazenando em um metastore, sem a necessidade de duplicação de dados e isso garante que os dados sempre estejam atualizados.
</p>

<h3> Delta Sharing</h3>

<p>
  O <strong>Delta Sharing</strong> é um canal aberto para o compartilhamento seguro de tabelas, views, arquivos e modelos. O Delta Sharing, contempla também o compartilhamento de esquemas, visualizações, notebooks e recursos como catalogos entre plataformas, por exemplo AWS Redshift e o Snowflake. <br>
  O compartilhament usando o Delta Sharing não envolve apenas o Databricks, permite o compartilhamento direto para outras fontes de análise de dados como Excel, Tableu ou Python, fazendo que o dado se torne disponível instantaneamente para o usuário. <br>
  Utilizando o Delta Sharing é permite a aplicação de mascaramento de colunas de informações ao longo do compartilhamento, bem como a aplicação de filtros sobre os dados. <br>
  O Unity Catalog atua como servidor de delta sharing. <br>

  ![image](https://github.com/user-attachments/assets/a04c2a50-88b1-4b31-aa63-a438069662e2)
  
  </p>

![image](https://github.com/user-attachments/assets/04f59721-26d5-4418-83a9-ec4cabae502e)

<h2> Conclusão</h2>

<p> 
O Unity Catalog é a ferramenta principal quando se trata de gerenciamento de dados no Databricks, sendo a área que é responsável pela gerencia dos objetos gerenciados e externos, além de ter papel fundamental no armazenamento do <strong>catalogo</strong> de informações. 
</p>


<h3>Feature Store</h3>
<p>
  Você pode usar qualquer tabela Delta no Unity Catalog com uma chave primária, como uma tabela de características para treinamento ou inferência de modelo. Neste serviço qualquer tabela Delta no Unity Catalog que tenha uma chave primária pode ser usada como uma tabela de recursos, para treinamento de modelo ou inferência e há um simples privilégio <strong>CREATE TABLE</strong> e tudo que é necessário é o privilégio <strong>create table</strong> no esquema.
</p>

![image](https://github.com/user-attachments/assets/d1cd31c9-22b1-496b-8fa3-baef1786e12a)

<h3>Índice de Pesquisa de Vetores</h3>
<p> Este recurso é utilizado para a criação de vetores de atualização automática que são gerenciados pelo Unity Catalog.</p>

![image](https://github.com/user-attachments/assets/7b4642a6-82b6-48c7-bed5-4cba8a672116)



> [!WARNING]
> <h3> Melhor Prática</h3>
> <p> "Use tabelas gerenciadas sempre que possível para melhor desempenho e simplicidade. APIs abertas e o trabalho continuo de interoperabilidade continuarão reduzindo a necessidade de tabelas externas."</p>

> [!IMPORTANT]
> Pesquisar sobre o funcionamento do Delta Sharing, a DataBricks tem um curso específico sobre.
