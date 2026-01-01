/* 24 - HAVING
O comando HAVING atua para trabalhar com grupo de dados, usualmente usado para realizar analise de dados e estruturas mais complexas. Sempre é usando junto ao GROUP BY.
HAVING COUNT;
HAVING SUM;
HAVING AVG;
HAVING MIN;
HAVING MAX
*/

-- 1. HAVING COUNT, usado normalmente para verificar a quantidade de repetições.
HAVING COUNT(*)>1; -- Identifica a duplicidade de linhas de dados.

-- 2. HAVING SUM, usado para avaliar totalidades como critério.
HAVING SUM(Vendas)>=1000; -- Identifica valores de vendas que sejam maior ou igual a 1000

-- 3. HAVING AVG, identifica a média de valores de uma coluna.
HAVING AVG(Dias)>=3 -- Identifica valores de médios de dias maiores ou igual a 3

/*
As aplicações do HAVING servem para definir o Grupo de dados que voce deseja analisar.
