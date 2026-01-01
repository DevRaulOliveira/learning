/*  41 - REVOKE
Assim como a atribuição de privilégios varia de acordo com a necessidade de uso, a remoção dos mesmos funciona da "mesma forma", apresentando pequena variação na estrutura, abaixo segue lsita de privilégios possíveis e suas aplicações:

1. Privilégios Gerais, a nível Global ou de Banco de Dados, ou até mesmo a Tabelas especificas.
ALL PRIVILEGES

-- SELECT: Permite a realização de consultas;
-- INSERT: Permite que sejam inseridos valores na base de dados;
-- UPDATE: Permite a execução do update da base de dados;
-- DELETE: Permite que sejam deletados todos os dados da tabela;
-- CREATE: Permite a criação de objetos, incluindo funções e procedures;
-- DROP: Permite a exclusão de objetos;
-- RELOAD: Permite que sejam excutados comando adminstrativos do tipo  FLUSH*;
-- SHUTDOWN: Permite que seja desligado o servidor;
-- PROCESS: Permite a visualização de processos da base de dados (Visualização de Threads);
-- FILE: Permite a leitura e gravação de arquivos no sevidor com os comandos LOAD DATA INFILE ou SELECT... INTO FILE*;
-- INDEX: Permite a criação e remoção de indices;
-- ALTER: Permite a alteração de estruturas de tabelas;
-- SHOW DATABASES: Permite realizar a listagem de TODOS os bancos de dados do servidor;
-- SUPER: Permissão de admin, além de remoção de qualquer tipo de limitação ou regra do servidor;
-- CREATE TEMPORARY TABLES: Permite a criação de tabelas temporárias;
-- LOCK TABLES: Permissão para bloquear tabelas com o comando LOCK TABLES;
-- EXECUTE: Permite a execução de procedures e funções armazenadas usando CALL*;
-- REPLICATION SLAVE: Permite a criação de tabelas de acordo com hierarquias;
-- REPLICATION CLIENT: Permite acessar o status de replicação usando comandos SHOW SLAVE STATUS e SHOW MASTER STATUS;
-- CREATE VIEW: Permite a criação de visualizações;
-- SHOW VIEW: Permite a utilização de VIEWS;
-- CREATE ROUTINE: Permite a criação e armazenamento de procedures e funções;
-- ALTER ROUTINE: Permiter a alteração e o descarte de procedures e funções;
-- TRIGGER: Permite a criação e remoção de triggers;
-- EVENT: Permite criar, alterar e excluir eventos pré programados;
-- GRANT OPTION: érmite conceder a outros usuários os mesmos privilégios que o atual usuário possui.

2. Nível coluna apenas:
-- SELECT;
-- INSERT;
-- UPDATE;

3. Nível procedure e funções:
-- EXECUTE;
-- ALTER ROUTINE.
*/
1- Removendo permissão de UPDATE:

USE schema_name
REVOKE UPDATE ON schema_name ON username;

*/

USE sakila
REVOKE UPDATE ON sakila FROM user_name;


/*
2- Removendo permissão de READ

USE schema_name
REVOKE READ ON schema_name ON username;

*/

USE sakila
REVOKE READ ON sakila FROM user_name;

/*
3- Removendo permissão de SELECT(Consulta)

USE schema_name
REVOKE SELECT ON schem_name ON username;
*/
USE sakila
REVOKE SELECT ON sakila FROM user_name;

