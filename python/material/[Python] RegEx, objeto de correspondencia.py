# Objetos de correspondencia
# Ele possui metodos para recuperar informações de pesquisa e resultado

import re
txt= 'O calor do motor da Moto'
x = re.search('or',txt)
print(x)

# Metodo SPAN retorna a posicição inciial e final da correspondencia
print('Modelo de utilização do metodo SPAN') # Este é reponsável por retornar os indices da ocorrencia
print('Retornando os indices',x.span())
print('Fim da execução do modelo.\n')

# Encontrando a palavra ou conjunto de caracteres que contem uma determinada ocorrencia, usando \b e \w

print('Modelo de uso de \b e \w para encontrar um conjunto de caracteres que contem uma determianda informação.')
y = re.search(r'\bc\w+',txt) #\b Retorna uma correspondencia de um caractere específico e o \w o restante da palavra ## O r faz com que a string seja tratada como uma string bruta
# A informação retornada é o INDICE da ocorrencia e utilizando o \w o conjunto de caracteres daquela ocorrencia
# Neste caso o espaço \s é um ponto em que termina uma determianda ocorrencia
print('Retornando o conjunto de caracteres que contem a informação, junto com o indice:',y)

# Usando o metodo STRING, retorna a string orginal.
print('Usando o metodo string para retornar a string/objeto usada:',y.string)

# Usando o metodo GROUP, retorna apenas a palavra que possuir a ocorrencia
print('Apenas a palavra que possui a ocorrencia:',  y.group())

print('Fim da execução do modelo.')

