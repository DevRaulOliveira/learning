/* 31 - DROP

O comando DROP serve para apagar objetos no SQL-SERVER, é aplicável a outros bancos de dados também, com essa mesma funcionalidade.

DROP DATABASE nome_database;
DROP SCHEMA nome_schema;
DROP VIEW nome_view;
DROP TABLE nome_table;
DROP FUNCTION nome_função;
DROP USER  nome_do_usuario;

-- É IMPORTANTE USAR ESSE COMANDO COM MUITO CUIDADO PARA NÃO APAGAR DE VEZ INFORMAÇÕES IMPORTANTES

*/
-- 1. DROP, apagando objetos.
DROP DATABASE marketing_data;
DROP SCHEMA custos_marketing;
DROP VIEW custos_mensais;
DROP TABLE lucro_mensal;
DROP FUNCTION calculo_custos;
DROP USER alberto_gomes@gmail.com;

-- 2. DROP, com tratamento de erros caso não exista.
DROP SCHEMA IF EXISTS custos_marketing;
