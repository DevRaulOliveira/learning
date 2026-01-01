/* 19 - UPDATE, SET
UPDATE é o comando usado para realizar a atualização de um objeto e o SET é o comando responsável por inserir a respectiva mudança

USE nome_schema;
UPDATE nome_tabela
  SET nome_da_coluna = novo_valor atribuído

*/

-- 1. UPDATE, utilizado para atualizar todos os registros de uma tabela
UPDATE cadastro
  SET cliente = UPPER(cliente);

-- 2. UPDATE, utilizado para realizar uma atualização de acordo com uma condição
UPDATE cadastro
  SET uf = 'SP'
WHERE cliente = 'Pedro SA';
