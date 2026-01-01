# Administração do Databricks

## Tipos de administratores no Databricks
O ***Databricks*** por padrão possui algumas contas de administração do ambiente, o qual irei explorar nas anotações a seguir:
- **"Account Admins"**: São os administradores de conta, sendo o nível mais alto de administração de uma conta no **Databricks** por que é esse nível de conta que gerencia a criação de *WORKSPACES*, *CONTAS DE USUÁRIOS*, *RECURSOS DE NUVEM* e  tem acesso a informações de *MONITORAMENTO DE USO* da plataforma.
- **"Workspace Admin"**: Responsável pela administração da WOrkspace local, permitindo o gerenciamento de identidades, controle de acesso, configurações e quaisquer recursos adicionais na *respectiva workspace*.

Além desses tipos de conta o *Databricks* conta com recursos de usuários voltadas exclusivamente a pontos de administração de recursos e gerenciamento:
- Marketplace admins: são responsáveis por gerenciar os recuros de perfis, incluindo o gerenciamento de serviços.
- Metastore admins: é o responsável por gerenciar as permissões de criações de objetos no *Databricks*, informações da metastore do *Unity Catalog* e criação de catalogos e consultas dos mesmos.
- Billing admins: responsável pelo gerenciamento financeiro por toda a conta.

  ## Gerenciadores de conta
  Os **account admins** são o nível de permissão máxima dentro do *Databricks* sendo assim eles são responsáveis pelas contas de usuário de TODOS os recursos do databricks, desde gerenciamento de usuários, serviços recursos, até os acessos a informações relacionadas a custos e usuários.
  Link para acesso: https://accounts.cloud.databricks.com/

  ## Responsabilidade do administrador de contas
  1. Criação e gerenciamento de Workspaces;
  2. Habilitação do  *Unity Catalog*
  3. Gerenciamento de identidades;
  4.  Monitorar o uso da conta e seus respectivos logs;
  5.  Gerenciar as subscrições de conta;
  6.  Gerenciar as novidades do Databricks.

 ### 1. Criação de gerenciamento de Workspaces
A criação de gerenciamento de *Workspaces* é uma atribuição que apenas o administrador de conta pode fazer, incluindo a criação de **Workspace**.

### 2. Ativação do Unity Catalog
Essa ativação era realizada manualmente pelo administrador de conta, porém se a **Workspace** foi criada após novembro de 2023, essa configuração já vem ativada por padrão.

### 3. Gerenciamento de identidades
É aconselhavél que os  **account admins** sincronizem as suas respectivas identidades com o *Databricks*, se possível utilizando o serviço de [System for Cross Domain Identity Management(SCIM)](https://docs.databricks.com/aws/en/admin/users-groups/scim/), serviço de gerenciamento de identidades entre domínios, no qual realiza o sincronismo entre o provedor de identitdade(Identity Provider(IdP)) e o ambiente do *Databricks*.

Se o *Unity Catalog* estiver habilitado para pelo menos uma *workspace* da conta, as identidades (usuários, grupos e serviços principais) devem ser gerenciados no console de contas. Os **Account Admins** deverão gerenciar as permissões e as respectivas identidades.

Além, desses fatores. os acessos  ao *Databricks* podem ser feitos utilizando os **Single sign-on(SSO)**, que permite que o administrador autentique os usuários usando o IdP da organização. Além disso a configuração do *SSO* permite um aumento na segurança do ambiente e melhora a experiencia de acesso, com a configuração de *SSO* concluída é possível realizar a ativação de multi-fatores para o processo de autenticação via provedor de identidade. 

### 4. Monitor de identidade com as System Tables
As **System Tables** são as tabelas geradas pelo *Databricks* para monitoramento de atividades. Essas tabelas normalmente estão habilitadas apenas para os **Account Admins** via system tables, porém as mesmas podem ser disponibilizadas através da criação de visualizações pelos respectivos administradores de conta.

### 5. Gerenciador de subscrições
Os administradores de contas, podem gerenciar os aspectos da *Databricks*,  usando as informações contidas no [Gerenciamento de subscrições](https://docs.databricks.com/aws/en/admin/account-settings/account).

### 6. Gerenciamento de Previews
É a permissão de gerenciamento das "novidades" liberadas para a plataforma do Databricks, sendo testes disponibilizados antes do lançamento oficial.


# O que são os Workspace admins afinal de contas?
Os **Workspace Admins** são os administradores daquela *Workspace* específica, sendo assim eles podem definir os níveis de identidade dentro do ambiente, regular o uso de computadores e habilitar e delegar o nível de controle de acesso as roles.

### Acessando o Painel de administrador e as respectivas configurações
Os administradores de Workspace, podem acessar ao painel de administração localizado no canto superiror direito.

<img width="1799" height="934" alt="image" src="https://github.com/user-attachments/assets/aa5a0e30-0a54-422e-a9ed-71f97b788aa8" />

## Responsabilidade de um administrador de Workspace
As principais responsabilidades de um administrador de workspace são:
- Gerenciar as identidades da Workspace;
- Criar e gerenciar recursos computacionais;
- Gerenciar os recursos disponiveis da workspace e as sua configurações.

### Criação e gerenciamento de recursos computacionais
Os **Workspace admins** conseguem criar bancos de dados SQL(basicamente a maquina que permite a execução de comandos SQL nos objetos do Databricks) e os clusters para os usuaŕios da Workspace. Para visualizar as instruções da criação de bancos de dados usando sql, acesse a documentação presente no [link](https://docs.databricks.com/aws/en/compute/sql-warehouse/create).

Além disso o *Workspace Admin* controla a utilização de recursos do ambiente e seu provisionamento. Por isso ele conta com as seguintes ferramentas para realizar essa gestão:
- "Cluster Policies": Permite o controle da criação de novos clusters, tendo como recomendação do *Databricks* utilizar scripts específicos para cada Cluster evitando o uso de recursos de maneira desnecessária, com *scripts globais*. Por isso é importante a definição de ***Init-Scripts*** otimizados que permitam a execução de todas as tarefas da forma mais eficiente possível.

> [!Note]
> Ao executar qualquer ação no Databricks um recurso computacional é consumido, por isso que é importante que seja definido um Script específico para cada tipo de ação evitando o uso de recursos desnecessários.
