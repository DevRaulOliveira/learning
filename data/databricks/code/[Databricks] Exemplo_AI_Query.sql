
-- Neste bloco está salvo um exemplo de tratamento de dados utilizando a função AI_Query do Databricks
WITH update_data_treatement (
SELECT
	AI_QUERY('databricks-meta-llama-3-3-70b-instruct')
	CONCAT('Traduza o cron expression para uma frase curta e direta em português,',
 'sem explicações técnicas ou detalhamento',
 'Responda apenas no formato: "Executa às [Horas e minutos], [dias da semana ou condição]".'
	'Exemplo: "Executa às 6h30, 12h, 18h e 23h, de segunda a sexta-feira."',
	) 	AS update_frequency,
