# Atualizando Tuplas utilizando comandos list
# Tuplas são inalteraveis, por isso é preciso converte-las para listas e depois para tupla novamente para realizar a alteração
x = ('Gabriel', 'Danny', 'Arthur')
print('Utilizando print x, exibe a tupla original \n', x)

y = list(x) # Converte a tupla para lista
y[1] = 'Pedro' # Realiza a alteração no indice ou conteúdo necessário
print('Trocando o item do indice 1 por Pedro na lista y\n',y)
x = tuple(y) # Atribui as informações da lista y, para a tupla x
print('Resultado da conversão da lista y para tupla x \n',x) # Exibe a tupla x alterada

# Outras alterações seguem o modelo de lista, primeiro converte a tupla para uma lista, aplica as alterações desajdas como append e extend e depois converte novamente para tupla
z=list(x)
z.append('Raul') #Adicionando itens a lista
x=tuple(z) #Convertendo a lista usada para tupla novamente
print('Exibindo as informações da tupla após a aplicação do metodo append na lista z \n', x) # Exibindo novamente a tupla com o conteúdo adicionado

# Após conversão da TUPLA em LISTA, usando o metodo REMOVE na lista
w = list(x)
w.remove('Raul') # Removendo o nome Raul da lista
x=tuple(w)
print('Aplicando o metodo remove para retirar o nome Raul da tupla \n',x)

# Realizando a adição de tuplas
a = ('José',) # Nova tupla a ser adicionada
print('A nova tupla a contem o item \n', a)
x +=a # Adição da tupla a na tupla x
print('Tupla x após o processo de adição de itens com a nova tupla a \n',x)
