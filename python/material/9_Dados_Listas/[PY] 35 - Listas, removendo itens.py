# Removendo itens de uma lista

nomes = ['Gabriel', 'Danny', 'Arthur']

print('Lista original \n', nomes, '\n')

# Utilizando o metodo remove, remove informações especificas, sem poder 
nomes.remove('Danny') # O metodo remove retira a informação com base na informação
print('Após usar o metodo remove para tirar um item da lista \n', nomes, '\n')

# Utilizando o metodo POP, remove o item com base no indice que ele está
nomes.pop(0) 
print('Após a utilização do comando POP \n',nomes,'\n')

nomes.extend(['Danny','Arthur'])
print('Inserindo informações usando extend visto anteriormente \n', nomes, '\n')

#Utilizando o comando DEL não é um metodo, sim um comando
del nomes[0] # Deleta apenas pelo indice
print('Comando DEL apagando o item do índice 0 \n',nomes, '\n') 
# Caso queira apagar a lista toda basta realizar o comando del nomes

# Utilizando o comando CLEAR a lista é limpa e a estrutura mantida na memória
nomes.clear()
print('Comando Clear limpa os indices da lista nomes, imprimindo a lista vazia \n', nomes,'\n') # A lista não é impressa no visual




