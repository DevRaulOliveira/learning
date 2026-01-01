-- Estrutura básica de soma utilizando o Oracle

-- Nome da função neste caso é soma
create or replace FUNCTION soma( 
    y in number, -- y é uma variável, é preciso especificar o tipo de variável sendo neste caso do tipo NUMBER
    x in number -- x é uma variável, neste caso do tipo NUMBER
) return number is  -- Como a intenção é realizar neste caso uma soma é preciso especificar o nome da variável em que será armazenado o resultado da operação e a classificação do dado após a operação.
begin -- Local em que será realizada a operação.
    resultado :=x+y; -- Operação matematica realizada.
return resultado; -- Retorno da operação.
End soma; -- Termino do conteúdo da função.


----- APÓS a criação da função e a sua compilação

SET SERVEROUTPUT ON; -- Ativa a saída de resultado
DECLARE -- Declara a variável que irá conter o resultado
    v_resultado number; -- Nome da variável e Tipo de dado gerado na saída
BEGIN -- Inicio da execução
    v_RESULTADO := soma(5,2); -- neste caso a variável v_resultado irá realizar a operação matematica da função soma criada anteriormente, sendo armazenado 5 no lugar da variável x e 2 no lugar da variáve x
    DBMS_OUTPUT.PUT_LINE('O resultado da soma é: '|| v_resultado); -- Gera o print no terminal para a verificação do resultado gerado na função
END soma; -- Fim da execução da função soma
