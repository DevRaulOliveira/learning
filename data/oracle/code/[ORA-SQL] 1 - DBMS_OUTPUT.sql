-- RETORNO DE INFORMAÇÕES 
/*
O retorno de informações utilizando  SQL pode ocorrer de duas formas, através do retorno do dado em formato de TABELA ou através do PRINT do resultado.
As duas formas de retorno de dados são exibidas abaixo.
*/

-- RETORNANDO A FUNÇÃO EM FORMATO DE TABELA
SELECT ola_mundo from dual;  -- Desta forma a execução retorna uma tabela


-- RETORNANDO A INFORMAÇÃO EM FORMA DE PL/SQL, SENDO EXIBIDA NO TERMINAL, SEM A CRIAÇÃO DE TABELA;
SET serveroutput ON;
BEGIN
    dbms_output.put_line(ola_mundo);
END;

