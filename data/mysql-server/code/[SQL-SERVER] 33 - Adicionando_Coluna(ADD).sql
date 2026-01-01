/* 33 - ADD
-- Para adicionar colunas a uma tabela é preciso altera a tabela, por tanto a estrutura desse comando é:
ALTER TABLE table_name ADD new_column_name data_type();

*/

USE sakila;
ALTER TABLE user_information ADD address VARCHAR(30).
