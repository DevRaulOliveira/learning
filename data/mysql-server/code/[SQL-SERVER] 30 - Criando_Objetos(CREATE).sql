/* 30 - CREATE OR REPLACE

O comando CREATE OR REPLACE é utilizado quando se deseja sobresescrever um objeto(tabela, view, funções e procedures)

CREATE new_view AS
  (SELECT * FROM new_view_v2)

--

CREATEFUNCTION soma(a INT, b INT)
RETURNS INT
DETERMINISTIC -- Boa pratica
BEGIN
  RETURN a + b;
END $$

DELIMITER;

SELECT soma(value1,value2);
*/

-- 1. CREATE, criando uma visualização.
CREATE VIEW funcionarios
  (
  id_func SERIAL PRIMARY KEY
  , nome VARCHAR(15)
  , sobrenome VARCHAR(15)  
  );

-- 2. CREATE, criando uma visualização usando outra como referencia, selecionando campos específicos.
USE sakila;

CREATE VIEW usuarios AS
  (
  SELECT 
  nome
  , sobrenome
  FROM cadastro
  );

-- 3. CREATE, criando uma tabela.
CREATE TABLE clientes
  (
  id_cliente SERIAL PRIMARY KEY
  , nome VARCHAR(15)
  , sobrenome VARCHAR(15)
  );

-- 4. CREATE, criando uma tabela usando outra como referencia, selecionando campos específicos.

CREATE TABLE cad_fornec AS
  SELECT
  CNPJ
, Nome
, Estado  
FROM fornecedores;

-- 5. CREATE DATABASE, criando um banco de dados.
CREATE DATABASE fiscal;

-- 6. CREATE USER, criando um usuários no banco de dados.
CREATE USER pedro@localhost; -- Por padrão o padrão de criação segue a REGRA - nome_usuario@porta_de_acesso

-- 7. CREATE, usado para criar uma copia de objeto
CREATE TABLE clientes_backup AS
SELECT * FROM clientes
