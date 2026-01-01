# Metodo SPLIT
# Retorna uma lista
# Demonstra os espaços em branco entre as ocorrencias
import re

txt = 'O calor do motor da moto'
x = re.split('\s',txt) #\s Representa a ocorrencia da barra de espaço
y = re.split('\s',txt,1) # O numero 1 depois do objeto representa a quantidade de ocorrencias que desejo visualizar, neste caso ao ocorrer a primeira vez, a lista já será retornada

print('Na variável x as ocorrencias \s foram no seguintes pontos da strg:\n',x,'\nSendo assim dividiu a lista varias vezes.')
print('Na variável y, que só tenta encontrar uma unica vez da ocorrencia temos:\n',y,'\nSendo assim, dividiu a lista uma unica vez.')