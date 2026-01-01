-- Tabela que gera o período de anos
WITH anos AS(
  SELECT EXPLODE(SEQUENCE(2018, YEAR(CURRENT_DATE()))) AS ano -- explosão do período de anos desejado até o dia atual
 ),
WITH meses AS(
  SELECT EXPLODE(SEQUENCE(1,12)) as mes
-- Tabela que gera os sistemas  
sistemas AS(
  SELECT 'Nome_do_Sistema' as sistema
  UNION ALL
  SELECT 'Nome_do_Sistema'
),
-- Tabela que de fato possui os dados 
base AS(
  SELECT
    campo_data AS `Data` -- período a ser comparado
  , sistema -- campo que possui o nome do sistema ou dado a ser comparado
  FROM `nome_do_catalgo`.`nome_do_schema`.`nome_da_tabela`
  WHERE YEAR(campo_data)>=2018 -- Essa data tem que ser igual ao definido na CTE
  GROUP BY campo_data, sistema
)
-- Tabela final, consolidando todas as informações
SELECT
  a.ano
, s.sistema_origem
, IF(b.campo_data IS NULL,'Não carregado','Carregado') END as `Status Carga`
FROM anos a
CROSS JOIN meses m
CROSS JOIN sistemas s
LEFT JOIN base b
  ON a.ano = YEAR(b.campo_data) AND m.mes = MONTH(campo_data) AND s.sistema = b.sistema
WHERE s.sistema IN('Nome_Sistema_1','Nome_Sistema_2')
  AND (a.ano < YEAR(current_date()) OR m.mes <= MONTH(current_date()))
ORDER BY a.ano, m.mes, s.sistema_origem
