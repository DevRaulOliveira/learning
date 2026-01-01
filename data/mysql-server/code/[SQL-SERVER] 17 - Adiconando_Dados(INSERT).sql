/* 17 - INSERT INTO
-- Adicionando dados e sub dados em um objeto. É necesário entender a tipagem das colunas para que os dados sejam inseridos corretamente

USE schema_name
USE table_name
INSERT INTO table_name(coluna
VALUES(DEFAULT,'info1','info2','info3');

*/
-- 1. Adicionando valores pontais ao objeto, neste caso será o ultimo item adicionado
INSERT INTO table_name
  VALUES(DEFAULT,'Jose','Miguel',2000-02-03);

-- 2. INSERT INTO em colunas especificas
INSERT INTO table_name (nome,sobrenome,data_nasc)
VALUES ('Pedro','Almeida','2000-10-12');

-- 3. INSERT INTO utilizando condição
INSERT INTO table_name(nome)
VALUE('Roberto')
WHERE nome = 'Pedro';
