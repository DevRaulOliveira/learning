# Utilizando loops em Set
set1 = {'Gabes', 'Danny', 'Arthur'}
print(set1)

# Utilizando for no set:
print('\n Cada interação do for irá retornar um item da coleção set.')
for s in set1: # Para cada interação um item do set1 será atribuido a variável s
    print('Cada item presente na coleção set1, sendo impresso um por linha devido a cada interação, não precisando do auxilio do \ n para separar os itens',s) # neste caso irá realizar a impressão individual de cada item a cada interação.

i = 0
print('Utilizando o comando While')
while i < len(set1): #
    print(i)
    i+=1
print('Fim da execução.')