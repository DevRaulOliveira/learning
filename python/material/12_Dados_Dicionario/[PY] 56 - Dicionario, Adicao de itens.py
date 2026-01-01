# Adição de itens ao dicionário
# A adição de itens é feita através da adição de chaves que não existem no dicionário
# Caso seja utilizada uma chave já existente o valor da chave será substituido

dict1 = {
    'Nome':'Gabriel',
    'Sobrenome':'Artigas',
    'Ano': 1985
}

# Modelo de adição de itens ao dicionário
print('Modelo de adição de itens ao dicionário.')
dict1['Idade'] = 36 # Chave que atualmente não existe no dicionário
print('Ao adicionar a chave IDADE ao dicionário, ele passa a ter as seguintes chaves:', dict1.keys())
print('Os valores das chaves no dicionário também são atualizados, resultando em:', dict1.values())
print('Ao visualizarmos todas as informações de dict1 temos:', dict1)
print('Fim da execução do modelo.\n')

# Modelo de adição usando o metodo update
print('Modelo utilizando o UPDATE para realizar a adição de item ao dicionário.')
dict1.update({'Altura': 1.68})
print('Após a adição da chave ALtura, temos:',dict1)
print('Fim da execução do modelo.\n')