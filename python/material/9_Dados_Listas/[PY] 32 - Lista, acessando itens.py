# Esse material é referente ao processo de acesso a itens de uma lista

lista = ["Ana", "Pedro", 'Maria']
print(lista[0]) # Formato para acesso ao indice de uma lista  é composto por lista[indice a ser acessado]
#Retorna Ana

# Outras formas de acesso aos itens de uma lista pode ser por atribuição do indice a uma variável, por exemplo:
nome1 = lista[0] # Neste caso cada variável recebeu o valor da variável localizada em cada indice
nome2 = lista[1]
nome3 = lista[2]
print('Referenciando a lista a uma variável:{},{},{}.'.format(nome3,nome2,nome1))

# Outras formas de acesso a itens de uma lista é através da referenciação usando indices negativos
print(lista[-1])

# Acessando um conjunto de itens de uma lista
print(lista[0:2]) # Formato de acesso a um conjunto de itens lembrando que o ultimo não é incluido
print(lista[0:]) # Caso o ultimo ou o primeiro não seja especificado a busca irá até o ultimo/primeiro item da lista

# Acessando itens de forma contraria
print(lista[::-1]) # Duplicar dois pontos faz com que seja possível trazer os dados de forma contraria

# Verificando se um determinado item está na lista utilizando comando 'in' em conjunto com if, else
# Lembrando que é case sensitive
if 'Maria' in lista:
    print('Nome encontrado')
else:
    print('Nome não encontrado')