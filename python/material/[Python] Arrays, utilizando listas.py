# Utilizando listas como arrays

cars = ['Ford','Ferrari','Volvo','BMW']

# Utilizando o FOR imprimo a valor do indice
for x in cars:
    print('Utilizando for x int cars: e imprindo a variável em x temos:\n{}'.format(x))
print('Desta forma a cada execução do for o x receberá o valor de uma variável presente no indice da lista.\nFim da execução.')

# Utilizando o WHILE imprimo o indice
a = 0
while a < len(cars):
    print('Imprimindo o indice dos elementos da lista:\n{}'.format(a))
    a+=1
# Utilizando o pop
cars.pop(0)
print('A forma de remoção de itens utilizando o metodo pop é com base no indice:\n{}'.format(cars))

# Utilizando o remove é com base no valor da variável
cars.remove('Volvo')
print('Remoção utilizando o metodo remove para remover a marca Volvo:\n{}'.format(cars))

print('Limpando a lista, porém mantendo na memória usando metodo clear:', cars.clear())