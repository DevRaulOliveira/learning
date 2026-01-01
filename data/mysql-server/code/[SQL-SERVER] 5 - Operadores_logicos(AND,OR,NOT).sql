/* 5 - AND, OR, NOT
São os operadoes lógicos, funcionam como os conceitos lógicos básicos.
SELECT * FROM tabela
WHERE
  filtro_1
AND filtro_2 =
OR filtro_2 =
NOT filtro_3 =
*/

-- 1. AND, filtro que representa "E"
WHERE 
  user_name = 'Jose'
  AND estado = 'SP';

-- 2. OR, filtro que representa "OU"
WHERE 
  cor = 'azul' or cor = 'vermelho';
