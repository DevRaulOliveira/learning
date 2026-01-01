# Descompactando tuplas

nomes = ('Gabriel', 'Danny', 'Arthur')
print('A tupla original é \n {}.'.format(nomes)) # Usando format para print

# A extração de valores para as variáveis é chamado de descompactamento
(nome0,nome1,nome2) = nomes # Cada indice da tupla foi atribuido a uma variável ex: nome0 = nome no indice 0; nome1= nome no indice 1; ETC...
print('O nome localizado no indice 0 é:\n',nome0)

nomes1 = list(nomes)
nomes2 = nomes1.copy()
nomes2.append('Raul')
nomes1 = tuple(nomes2)
print('Tupla aumentada \n',nomes1)

# Para atribuir mais de um valor em uma unica variável pode se utilizar o * no nome da variável que armazene mais de um indice
# Caso esteja no meio a variável com o * o código irá distribuir as informações de acordo com a quantidade restante de variáveis, por exemplo:
# Tem uma variável após a variável com o asterisco, o código irá armazenar todos os valores da lista a variável anterior, deixando apenas um restante para atribuir a ultima variável
(name1,*name2) = nomes1
print('A variável contendo apenas um valor: \n', name1,'\nA variável contendo o restante dos itens da lista:\n',name2)