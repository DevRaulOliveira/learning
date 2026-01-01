/*  28 - ANY

O ANY atua permitindo que
qualquer resultado encontrado seja retornado na consulta

USE schema_name;

USE table_name
SELECT * FROM table_name
WHERE column_name = ANY
  (
    SELECT
      column_name -- Atuando como coluna de uma tabela secundária que serivirá de FILTRO
    FROM table_name2
    GROUP BY 1
    HAVING COUNT(*)>2
  );
* Desta forma a consulta só retorna valores de 1 que se encaixarem na segunda condição*
*/

-- 1. ANY, filtrando a tabela 1 usando a tabela 2 como critério
USE sakila;

SELECT * FROM sakila
WHERE nome = ANY
  (
  SELECT 
  nome AS 'FUNC'
  FROM vendas
  GROUP BY 1
  HAVING COUNT(*)>2
  );
