# Utilizando a função search()
# Ela considera apenas a ocorrencia do dado
import re

txt = 'O calor do motor da moto'

x = re.search('\s', txt) # composição -> O que eu desejo buscar e o objeto em que eu desejo realizar a busca  ## indica busca por espaço vazio/Em branco
# Modelo de exibição do código da localização do espaço em branco
print('O primeiro espaço em branco está na posição', x) # Desta forma retorna o código da localização do item resultante da busca
print('Fim da execução do modelo.\n')

# Modelo de descoberta do indice da localização do resultado da busca utilizando o metodo START
print('Modelo de descoberta do indice do item procurado com o metodo START()')
print('O indice do primeiro espaço em branco está na posição', x.start())
print('Fim da execução do modelo.\n')

# Caso a busca retorne um resultado vazio, em caso de não encontrar a correspondencia a resposta retornada será tipo None