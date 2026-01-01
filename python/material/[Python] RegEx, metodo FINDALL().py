# Função Find All
# Função para retornar todas as vezes que uma determinada ocorrencia acontece

# Modelo de utilização do FindAll
import re

txt = 'O calor do motor da moto,'

#Cria se uma variável para armazenar a informação
# Modelo: -> 'var = re.findall('Ocorrencia que se deseja encontrar', objeto)
print('Modelo de uso do metodo FINDALL')
x = re.findall('or',txt) #Onde é encontrado no objeto a ocorrencia de 'or'
# O retorno sempre será uma lista. Com a quantidade de vezes de ocorrencia, caso não ocorra nenhuma vez, o resultado retornado será uma lista vazia.
print('A busca por "or" no objeto retornou a lista:', x)
print('Fim de execução do modelo.')
