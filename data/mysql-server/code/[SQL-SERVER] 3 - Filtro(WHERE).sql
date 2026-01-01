/* 3 - WHERE
O  WHERE funciona como filtro de dados, sendo utilizado em conjunto com os operadores lógicos AND, OR, NOT e também com outros operadores de agrupamento, como LIKE, IN e PATINDEX (Agrupamento de dados)

USE nome_schema
SELECT  * FROM nome_tabela
WHERE condição;
*/

-- 1. WHERE, usado em conjunto com o operador lógico
USE sakila;
SELECT * FROM cadastro
WHERE idade > 18 -- Idade Maior que 18
  AND sexo = 'Masculino'; -- E precisa ser homem.

-- 2. WHERE, usado com operador lógico de agrupamento
USE sakila;
SELECT * FROM endereco
WHERE estado IN('SP','MG','RJ') -- Trazendo resultados apenas dos estados apontados.
  AND PATINDEX('%[0-9]%', entregas);  -- Trazendo entregas diferentes de Null usando PATINDEX

-- 3; WHERE, usando junto com o LIKE para encontrar padrões
USE sakila
SELECT * FROM funcionarios
WHERE nome LIKE('J%'); -- Nome de funcionários que começão com a letra J
