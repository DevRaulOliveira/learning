# Script de análise de tabelas do ambiente Databricks
# Especificações de colunas usadas para particionamento, colunas usas para clusterização e tamanho da tabela em Bytes

# Lista de tabelas
tables_list = [
  'nome_da_tabela_1'
  , 'nome_da_tabela_2'
  , 'nome_da_tabela_3'
]

detail_list = []
for table in tables_list:
  detail = spark.sql(
    f'DESCRIBE DETAIL {table}'
  ).select(
    'name'
    ,'parttionColumns'
    ,'clusteringColumns'
    ,'sizeInBytes'
  )
  detail_list.append(detail)

result_detail = detail_list[0]
for df in detail_list[1:]:
  result_detail = result_detail.unionByName(df)

display(result_detail)
