# Adicionando itens a uma lista

nomes = ['Gabriel', 'Danny', 'Arthur']
print('Lista original\n', nomes, '\n')
# Comando APPEND adiciona novos itens ao final da lista

nomes.append('Roberto')
print('Lista utilizando comando Append\n', nomes, '\n')

# Comando INSERT

nomes.insert(1,'Pedro')
print('Comando insert, inserindo informação no indice 0\n',nomes, '\n')

#Comando EXTEND adicionando itens de outra lista em uma lista anterior, forma de adição de itens interáveis

nomes.extend(['Maria', 'Gaby', 'Vanessa'])
print('Usando extend, inserindo itens de forma literal\n', nomes, '\n')

nomes2 =['Joana', 'Giovane', 'Fernando']
nomes.extend(nomes2) 
print('Usando extend para adicionar itens se referenciando diretamente a outra lista \n', nomes,'\n')