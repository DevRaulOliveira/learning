# Coleção de dados tipo Set.
# São usadas para armazenar diversos itens em uma unica variável
# São conjunto de dados não ordenados
# São criados entre chaves
# Não podem ser alterados
# Não permitem duplicidade
# Podem ser adicionado itens porém não podem ser removidos

set1 = {'Gabriel', 'Danny', 'Arthur'}
print('Coleção de ados tipo set ficou assim, sendo do tipo não ordenado \n', set1) # Sempre que executado os dados irão aparecer em ordens diferentes

# Utilizando o comando len, ainda é possível ver a quantidade de itens da coleção set
print('\nUtilizando len para contar a quantidae de itens da coleção set, o valor apontado é:\n', len(set1))

# Coleções do tipo set podem ser de dados variados
set2 = {1,5,7,9,3}
set3 = {True,False,True,True}
set4 = {'Abc',True,1,'1',1.4}

print('Identificando as coleções de dados como tipo set\n', type(set2),type(set3),type(set4))

# Criando a coleção set utilizando o construtor SET
set5 = set(('Carro','Bike','Onibus')) # É preciso usar dois parenteses
print(type(set5))