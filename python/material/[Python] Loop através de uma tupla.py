# Usando loops em um tupla
tupla = ('Gabriel','Danny','Arthur')
print('A tupla original é \n', tupla)

# Usando tupla com o loop FOR
print('Começo do primeiro loop for \n')
for x in tupla: # x é a variável auxiliar que recebe os itens da tupla
    print(x) # Esse print imprime os itens em sequencia, ao termino dos itens o for é finalizado
print('\nFim do primeiro loop for.\n')

# Percorrendo os itens da tupla de acordo com o indice
print('Percorrendo os itens da tupla usando como referencia o indice\n')
for i in range(len(tupla)): # interação com todos os itens da tupla é feito através do comando range(len(tupla)) -- len representa o comprimento da tupla
    print(tupla[i]) # a impressão dos itens da tupla de acordo com o indice i
print('\n Fim do segundo loop utilizando o indice como referencia\n')

# Percorrendo os itens de uma tupla utilizando o while
z=0
print('Sequencia percorrendo os itens de uma tupla utilizando o while \n')
while z < len(tupla): # Enquanto z for menor que o comprimento da tupla
    print(tupla[z]) # imprima o valor localizado em cada indice z
    z+=1 # acrescente uma unidade para não ficar num loop infinito e sem progressão
print('\nFim do comando while')
