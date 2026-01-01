/* 28 - HAVING COUNT

O conceito de HAVING COUNT é utilizado para indetificar repetições, com base em alguma condição, normalmente é usado para identificação de duplicidade de dados.
O conceito de HAVING COUNT SEMPRE vai precisar de um GROUP BY na query

USE schema_name;
USE table_name
  SELECT name,COUNT(*) FROM table_name
  GROUP BY 1
  HAVING COUNT(*) > 2;

*/

-- 1. HAVING COUNT, identificando nomes repetidos na tabela.
USE SCHEMA sakila
USE TABLE table_name

SELECT 
  name
  , COUNT(*) AS Quantidade
FROM table_name
GROUP BY 1
HAVING COUNT(*)>2;
