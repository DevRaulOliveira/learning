# Alterando itens de uma lista


# Realizando a alteração de um unico indice
nomes = ['Gabriel', 'Danny', 'Arthur', 'João']
nomes[0] = 'Raul' #Utilizar lista[indice a ser manipulado] = novo valor do indice

print(nomes)

# Alterando um conjunto de itens
marcas = ['FIAT','Volks', 'BMW', 'Chevy', 'Nissan']
print('Lista marcas original:\n',marcas)

marcas[0:2] = 'Toyota','Ferrari' #Especificar o intervalo de indices a serem alterados
print('Lista marcas alterada:\n', marcas)

marcas[5:] = 'Mercedes', 'Honda', 'Pagani','Ford' # Inserindo itens no final da lista 
print(marcas)

# Comando Insert, utilizado para adicionar itens

marcas.insert(7,'Bugatti') # Insere antes do indice específicado
print('Marcas após adicionar itens usando o comando insert', marcas)