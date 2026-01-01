/* 6 - IN
IN, é o operador utilizado para agrupar uma série de informações em um unica lista de valores, verificando se está contido em um conjunto.
USE nome_schema;
SELECT * FROM nome_tabela
WHERE nome_coluna IN('valor1','valor2', etc)
*/
-- 1. IN, filtrando diversos nomes de uma coluna
USE sakila;
SELECT * FROM cadastro
WHERE nome IN('Ana', 'Maria','Pedro'); -- Neste caso as informações trazidas serão referentes aos respectivos nomes.

-- 2. IN, utilizando em uma subconsulta
USE sakila;
SELECT usuário FROM cadastro
WHERE id_usuario IN -- Neste caso verifica se o id usuário faz parte do grupo de RH
  (
  SELECT
  id
  FROM departamentos
  WHERE area ='RH'
);
