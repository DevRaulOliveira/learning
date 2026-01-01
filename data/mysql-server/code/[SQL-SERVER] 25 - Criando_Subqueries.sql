/* 25 - SUBQURIES
SUBQUERY, é o metodo de gerar uma sub consulta para definir o escopo de dados a serem usados.

SELECT * FROM nome_tabela
WHERE nome_filtro >=
  (
  SELECT 
    SUM(nome_coluna)
  FROM nome_tabela_2
  WHERE nome_coluna = 'valor_filtrado'
  );
*/
-- 1. SUBQUERY, usado em um filtro por exemplo
USE sakila;
SELECT * FROM pagamentos
WHERE total >
  (
  SELECT
  AVG(total) -- Desta forma é possível usar operadores matematicos como filtro
  FROM pagamentos
  );
