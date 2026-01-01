# Como adicionar itens a uma coleção tipo set

set1 = {'Gabes','Danny', 'Pedro'}
print('Coleção de dados tipo set original: \n', set1)


#Adicionando itens a uma coleção set com o comando Add
print('Adicionando itens a uma coleção set usando metodo add')
set1.add('Lucas') # essa é a formatação de adição de itens
print('Coleção de dados tipo set após a adição de itens:\n',set1)

#Adicionando itens utilizando uma outra coleção set com o metodo update
set2 = {'Robert','Antony','Brad'} # Outra coleção criada
set1.update(set2) # Metodo update que realiza a adição de itens
print('\n Nova versão da coleção set1:\n',set1)

# O metodo update pode misturar conjuntos de outros tipos, como tupla, lista ou dicionário
lista = ['Paula','Maria','Luiz']
print('\n A lista criada contem os seguintes itens\n',lista)
set1.update(lista)
print('\nA coleção set1 após a adição de itens de uma coleção tipo de lista\n',set1)

print('Fim da execução.')