# Iterando itens com o Loop em listas
# Loops são estruturas de iteração e repetição

nomes = ['Gabriel','Danny','Arthur']

# Utilizando o comando FOR
for x in nomes: # # O x assume o valor dos valores da lista, neste caso, começando pelo indice 0 e até o final da lista
    print(x)

print('\nFim da impressão.')

# Usando o comando range e len
# Range é o comando utilizado para uma sequencia de valores
# Len é o comprimento total desses valores
for i in range(len(nomes)): # Esta formula imprime a sequencia de indices.
    print('Impressão dos indices utilizando a variável i:\n',i)
print('\n Fim da interação.')

# Usando loop WHILE
# Sempre criar uma incrementação
v = 0
while v < 3: # Enquanto V for menor que 3
    print('\nImpressão usando o comando while:\n',v) # Imprima
    v+=1 # Acrescente 1 unidade esse formato de incrementação se chama incrementação composta
print('\n Fim da interação.')