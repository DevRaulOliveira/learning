# Como juntar coleções do tipo set
set1 = {'a','b','c'}
set2 = {1,2,3}
print('Essa é a coleção set1:\n',set1)
print('\nEssa é a coleção set2:\n',set2)

# Utilizando o set update
print('\nUtilizando o set update como metodo de junção de coleções.\n')
set1.update(set2)
print('Após a junção das coleções utilizando set temos:\n',set1)

# Criando uma nova coleção através da junção de outros sets
print('Criando uma coleção utilizando apartir da união de outros sets.\n')
set3 = set1.union(set2) # É preciso realizar outra coleção com a combinação de outra lista de dados
print('Coleção criada utilizando o comando union',set3) # Neste caso a coleção set1 não sofre alteração

# TODOS ESSES METODOS NÃO DUPLICAM ITENS IGUAIS EM DIFERENTES COLEÇÕES DE DADOS,M JÁ QUE SET NÃO PERMITE REPETIÇÃO DE ITENS

# Para manter apenas o itens duplicados, é preciso utilizar o metodo intersect update

# Metodo intersection
set4= set1.intersection(set2) # Seleciona apenas o item que tem em comum entre listas e atribui a uma variavel
print('\nUtilizando o comando intersection retornando apenas o itens em comum entre a coleção set1 e set2:\n',set4)

# Metodo inserction_update
set1.intersection_update(set3) # Atualiza a coleção original mantendo apenas o item em comum entre listas
print('\nRetorna todos os itens, já que ambos os sets são iguais, se não tivesse nada em comum retornaria NONE.\n',set1)

# Metodo print symmetric_difference
set5= set1.symmetric_difference(set2) # atribui a uma outra variável os valores diferentes entre listas
print('Retornar apenas os itens que são diferentes entre as coleções:',set5)

# Metodo symetric_difference_update
set1.symmetric_difference_update(set2) # Atualiza a lista original e mantem apenas os itens diferentes
print(set1)

