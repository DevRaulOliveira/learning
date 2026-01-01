/* 11 - JOIN, LEFT JOIN, RIGHT JOIN, INNER JOIN e FULL OUTER JOIN
JOIN é usado para criar relacionamentos entre objetos, sendo um ponto de extrema importancia na obtenção correta de resultados.

JOIN
LEFT JOIN
RIGHT JOIN
INNER JOIN
FULL OUTER JOIN
CROSS JOIN

*/

-- 1. JOIN, relacionando duas tabelas
USE sakila;
SELECT * FROM pagamentos
JOIN clientes
  ON pagamentos.pagamento_id = clientes.cliente_id; -- Campo de conexão entre ambas as tabelas

-- 2. JOIN, desta vez realizando a mesma conexão porém usando o recurso de atribuição de apelido a tabela
USE sakila;
SELECT * FROM pagamentos pag
JOIN clientes cli
  ON pag.pagamento_id = cli.cliente_id; -- Mesma coisa do anterior porém usando apelido para referenciar os objetos

-- 3. JOIN, combinando tabelas usando apelidos para vincular as respcetivas tabelas
USE sakila;
SELECT 
  cli.nome
, cli.sobre_nome
, SUM(pag.pagamentos) AS 'Total'
FROM clientes cli
JOIN pagamentos pag
  ON pag.pagamento_id = cli.cliente_id; 

-- 4. LEFT JOIN, utilizando a primeira tabela como referencia
SELECT * FROM clientes cli
LEFT JOIN pagamentos pag
  ON pag.pagamento_id = cli.cliente_id; -- Desta forma os registros obtidos serão gerados usando os registros da tabela clientes como referencia.

-- 5. RIGHT JOIN, utilizando a segunda tabela como referencia
SELECT * FROM clientes cli
RIGHT JOIN pagamentos pag
  ON pag.pagamento_id = cli.cliente_id; -- Os registros obtidos dessa forma utilizam os registros da segunda tabela como referencia.

-- 6. INNER JOIN, apenas os resultados em comum entre ambas as tabelas são obtidos
SELECT * FROM clientes cli
INNER JOIN pagamentos pag
  ON pag.pagamento_id = cli.cliente_id; -- Apenas os registros em comum entre ambas as tabelas são retornados.

-- 7. FULL OUTER JOIN, todos os registros são retornados e nos campos sem correspondencia a informação retornada será NULL
SELECT * FROM clientes cli
FULL OUTER JOIN pagamentos pag
  ON pag.pagamento_id = cli.cliente_id;

-- 8. CROSS JOIN, realiza a criação de PRODUTO CARTESIANO entre as tabelas visando expandir a quantidade de registros entre ambas
SELECT 
  func.nome
  , dep.departamento 
FROM funcionarios func
CROSS JOIN departamentos dep; -- Exemplo: se houver 2 funcionarios e 4 departamentos o resultado será de 8 linhas (2x4)
