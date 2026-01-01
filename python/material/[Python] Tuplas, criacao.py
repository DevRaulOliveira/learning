# Criando Tuplas
# Tuplas são utilizadas para armazenar um conjunto de dados em uma unica variável
# Tupla é uma forma de ordenação de dados e IMUTÁVEL, sendo essa a principal diferença em relação a lista
# Tupla é escrita entre parenteses
# Itens da tupla são indexados
# Tupla possui indices
# Permite a existencia de itens duplicados
# Tuplas são objetos com classificação de tipo Tupla podendo conter diversos tipos de dados
tupla = ('Gabriel', 'Danny', 'Arthur')
print(tupla)

# Forma de impressão e localização da informação de acordo com o indice na tupla
print('Imprimindo o valor no indice [0]\n',tupla[0])

# Verificando o tamanho de uma tupla e atribuindo a uma variável
tam = len(tupla) # poderia ser feito assim print(len(tupla))
print('Imprimindo o comprimento de uma tupla usando Len \n', tam)

# Reconhecendo o item dentro de uma tupla
tupla2 = ('Carro',) # Este é o formato usado quando se quer reconhecer o formato tupla
print('Imprimindo o tipo da tupla usando a formatação correta \n',type(tupla2))

# Outros tipos de tuplas
tuplas3 = (1,5,6,7,8,34)
tupla4 = (True,False,True,True)
tupla5 = ('Gabriel', 5,True,1.5,False)






