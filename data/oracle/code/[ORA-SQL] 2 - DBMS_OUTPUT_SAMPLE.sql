-- Estrutra basica de criação de função compativel com o Oracle SQL
CREATE OR REPLACE FUNCTION ola_mundo
return varchar2 is 
begin
    return 'Olá, mundo';
End ola_mundo;


---- Após a criação da função

-- RETORNO DE INFORMAÇÕES 
-- RETORNANDO A FUNÇÃO EM FORMATO DE TABELA
SELECT ola_mundo from dual;  -- Desta forma a execução retorna uma tabela


-- RETORNANDO A INFORMAÇÃO EM FORMA DE PL/SQL, SENDO EXIBIDA NO TERMINAL, SEM A CRIAÇÃO DE TABELA;
SET serveroutput ON;
BEGIN
    dbms_output.put_line(ola_mundo);
END;
