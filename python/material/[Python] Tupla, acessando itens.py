
# Exemplo
tupla = ('Gabriel', 'Danny', 'Arthur')
print(tupla)

# Forma de selecionar o item da tupla
print('Acessando o item da tupla usando [] \n', tupla[0])

# Acessando o ultimo item da tupla
print('Acessando o ultimo item da tupla [-1]\n', tupla[-1])

# Acessando o intervalo de itens
# Caso queira seguir o conceito da lista, ele também é aplicado [:5] neste caso do indice 4 até o primeiro indice
# Caso queira acessar a partir do primeiro fica dessa forma [0:]
print('Acessando um intervalo de itens de uma tupla [:] \n', tupla[0:2])

# Verificando se existe uma determinada informação na Tupla
print('Existe o nome Danny na Tupla?\n', 'Danny' in tupla) # Existe a palavra Danny na tupla ? A resposta que o print irá retornar será True, por que sim, existe 'Danny' na tupla

# A verificação pode ser feita utilizando o comando IF
if 'Danny' in tupla:
    print('Sim, este nome está na tupla')

