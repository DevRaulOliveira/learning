# Alterando itens de um dicionário

# Modelo de alteração de dados de um dicionário.
dict1 = {'Nome':'Gabriel',
         'Sobrenome':'Artigas',
         'Ano':1985
}
print('Modelo de alteração de valor em um dicionário.')
dict1['Nome'] = 'Arthur' # Neste passo o valor da chave Nome é alterado
print('Alterando o valor da chave Nome Gabriel por Arthur, o dicionário fica da seguinte forma:',dict1)
print('Fim da execução do modelo.\n')

# Modelo de utilização do metodo UPDATE
# Argumento deve ser um item interavel e em pares
print('Modelo de utilização do metodo UPDATE.')
dict1.update({'Ano':2011}) # Modelo de alteração de valor no dicionário usando Update ex -> dicionário.update({chave:novo valor})
print(dict1)