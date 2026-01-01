/* 9 - LIMIT
LIMIT, é o operador usado para limitar quantidade de resultados retornados, podendo conter um unico numero(define a quantidade de resultados) ou dois numeros, sendo o primeiro para identificar o primeiro resultado e o segundo o ultimo resultado
USE nome_schema;
SElECT * FROM nome_tabela
LIMIT nº_resultados;
*/

-- 1. LIMIT, trazendo apenas uma quantidade de resultados
USE sakila;
SELECT * FROM fornecedores
LIMIT 4; -- Desta forma a consulta irá trazer apenas 4 resultados, lembrando que não realiza qualquer tipo de ordenação, a não ser a própria do objeto

-- 2. LIMIT, trazendo um intervalor especifico
USE sakila;
SELECT * FROM usuarios
LIMIT 5,10; -- Desta forma retorna apenas os usuários da 5ª a 10ª posição
