# Metodo de Datas STRFTIME() 
# É um metodo que converte datas para strings legíveis

import datetime

# Modelo de conversão da informação de DATA em texto utilizando STRFTIME para conversão em texto
print('Modelo de conversão de data para o tipo texto')
x = datetime.datetime(2018,6,1)
print('Data',x)
print('Tipo de variável:',type(x))
a = x.strftime('%A %d %B %Y') # Diretiva (%) que realiza a conversão data numerica para TEXTO 
print(a)

# Glossário
# %A -> nome do dia da semana completo ## %a -> nome do dia da semana abreviado
# %d -> valor numerico do dia naquele mês 
# %B -> nome do mês
# %Y -> ano

