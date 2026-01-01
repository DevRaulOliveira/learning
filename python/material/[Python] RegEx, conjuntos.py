# Conjuntos em Python
# Conjuntos são utilizados para realizar a pesquisa usando um grupo definido de caracteres
# Verificando a ocorrencia de numeros funciona da mesma forma
# A verificação de caracteres minusculas e maiusculas simultanemante é feito assim : -> [a-zA-Z]

import re

beg = 'Texto de exemplo desse modelo ->'
fim = 'Fim de execucao do modelo.\n'

txt2 = 'O calor do motor da moto'
txt4 = '1 2 3 4 44 56 59'

# [] Encontrando valores específicos de um conjunto determinado
# Modelo de conjunto
print('Modelo de aplicação de conjuntos. Utilizando como exemplo [tor]')
print(beg,txt2)
print(f'Verificando a ocorrencia dos caracteres [tor], usando como busca o conjunto. Temos como resultado {re.findall("[tor]",txt2)}')
print(f'A busca também pode ser feita utilizando um intervalo [a-m], retornando {re.findall("[a-m]",txt2)}')
print(fim)

# [^] Verificando valores diferentes dos especificados na lista
# Verificando se existe a ocorencia de outros valores além dos especificados na lista
print('Modelo de uso do [^] para verificação de ocorrencia de outros caracteres na lista.')
print(beg,txt2)
print(f'Verificando a ocorrencia de caracteres diferentes de [^arm]: Tendo diversos resultados\n{re.findall("[^arm]",txt2)}')
print(fim)

# Verificando a ocorrencia de digitos
print('Modelo de uso de conjuntos para verificar a ocorrencia de digitos.')
print(beg,txt4)
print(f'Verificando a ocorrencia de digitos usando conjuntos.\nNa primeira buscando apenas um digito {re.findall("[0-9]",txt4)}\
      \nNa segunda a ocorrencia de dois digitos {re.findall("[0-9][0-9]",txt4)}')
print(fim)

