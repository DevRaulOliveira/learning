/* 2 - ORDER BY
ORDER BY serve para ordenar os dados podendo ser feito usando o nome do campo e utilizar ASC(Crescente) ou DESC(Decrescente)

SELECT * FROM usuarios
ORDER BY 1;

* Não é preciso usar o nome da coluna para ordernar os dados porém é uma boa pratica escrever o nome da coluna
*/

-- 1. ORDER BY ASC, ordenando dados em ordem crescente.
SELECT * FROM usuarios
ORDER BY nome ASC; -- Ordenando a tabela por NOME em ordem alfabética começando com A;

-- 2. ORDER BY DESC, ordenando dados em ordem decrescente.
SELECT * FROM clientes
ORDER BY total DESC; -- Ordenando a tabela pelo TOTAL gasto em ordem decrescente.
