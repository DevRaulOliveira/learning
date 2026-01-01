/* 10 - REGEXP
REGEXP, é usado para identificar expressões regulares

SELECT * FROM nome_tabela
WHERE nome_coluna REGEXP "condição";
*/
-- 1. REGEXP, identificando a ocorrencia de um caractere específico
SELECT * FROM alunos
WHERE nome REGEXP "a"; -- Nomes com a letra 'a'

-- 2. REGEXP, identificando valores que cointenha leTRAS
SELECT * FROM pais
WHERE pais REGEXP "a|b";-- Nomes de paises que comecem com A ou B

-- 3. REGEXP, filtro um pouco mais complexo
SELECT * FROM musicas
WHERE titulo REGEXP "^a[cim]" -- Titulos que comecem com a letra a e tenha ou a letra "c" ou "i" ou "m" na sequencia;
