/* 7 - BETWEEN
BETWEEN, operador voltado a filtrar resultados ordenais, com enfase em intervalos
SELECT * FROM nome_tabela
WHERE nome_coluna BETWEEN valor1 AND valor 2;

*/
-- 1. BETWEEN, filtrando um intervalo de numeros
USE sakila;
SELECT * FROM clientes
WHERE total BETWEEN 10 AND 20; -- Clientes que gastaram entre 10 e 20 apenas
