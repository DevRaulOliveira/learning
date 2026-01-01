# Copiando listas 

# Realizando a copia de listas
# Listas não podem ser copiadas apenas atribuindo a outra variável, por que tudo que for alterado na primeira irá mudar na segunda
nomes = ['Gabriel','Danny','Arthur']
print('A lista original é\n',nomes)

lista2 = nomes.copy()
nomes.append('Roberto')

print('Utilizando o metodo copy e depois o metodo append na lista original ela fica \n',nomes)
print('Enquanto a lista copiada lista2 fica igual a versão original, sem ser alterada \n', lista2)
