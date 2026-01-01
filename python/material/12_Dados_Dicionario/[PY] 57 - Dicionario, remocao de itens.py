# Rermovendo itens de um dicionário

dict1 = {
    'Nome':'Gabriel',
    'Sobrenome':'Artigas',
    'Ano': 1985
}

# Modelo de remoção usando metodo POP
# A remoção de itens usando o metodo POP é com base na chave
print('Modelo de uso do metodo POP para remoção de item de um dicionário.')
dict1.pop('Nome') # Modelo de uso do metodo pop com a chave a ser removida
print('Após a remoção do item NOME utilizando o metodo POP temos:', dict1)
print('Fim da execução do modelo.\n')

# Modelo de remoção usando o metodo POPITEM
# Este metodo obrigatóriamente remove o ultimo item de um dicionário
print('Modelo de uso do metodo popitem')
dict1.popitem() # Modelo de uso do metodo popitem com parenteses em branco
print('Após a remoção da ultima chave do dicionário ANO, usando POPITEM temos:',dict1)
print('Fim da execução do modelo.\n')

# Passo executado para resetar o dicionário
dict1.clear()
dict1.update({'Nome':'Gabriel','Sobrenome':'Artigas','Ano':1985}) 

# Modelo de remoção de itens utilizando o comando DEL
# Este comando realiza a remoção com base na chave e não na variável
print('Modelo de uso do comando del para remover um item do dicionário.')
del dict1['Nome'] 
print('Após a utilização do comando DEL para remover a chave nome temos:',dict1)
print('Fim da execução do modelo.\n')

# DEL pode ser usado para deletar um dicionário completamente
# Metodo clear funciona da mesma forma