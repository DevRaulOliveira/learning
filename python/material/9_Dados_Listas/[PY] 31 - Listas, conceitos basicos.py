# Criação de listas e organização de dados
# Os itens de uma lista são ordenados e começam sempre no indice 0
# Listas são mutaveis
# Ao adicionar itens automaticamente, eles irão para o final da lista a não ser que seja determinado um indíce específico
# Itens em listas são identificados pelo indice e não necessariamente pelo conteúdo

# Listas podem ter diversos formatos, string, numéricos e booleanos (true, false)
# Lista com formato string
lista = ["Maçã", "uva", "pera"]

# Lista com o formato numérico
lista2 = [1,2,3,4,5,6]

# Lista com formato booleano
lista3 = [True, False]
lista4 = [1,0] # Formato booleano pode usar 0 e 1 como regra também

# Comando len pode ser usado para ver o comprimento de uma lista, por exemplo:

print(len(lista)) # Função que exibe a quantidade de itens de uma lista
print(type(lista2)) # Demonstra que é um objeto de lista

# Utilizando o construtor lista

lista5 =  list(("Carro", "Moto", "Barco"))
print(lista5)
print(type(lista5))