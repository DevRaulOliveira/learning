# Copiando dicionários
dict1 = {
    'Nome':'Gabriel',
    'Sobrenome':'Artigas',
    'Ano':1985
}

# Modelo de copia de dicionarios usando o metodo COPY
print('Modelo de copia de dicionário usando metodo COPY')
dict2 = dict1.copy()
print('dict2, copia criada usando o metodo COPY:',dict2)
print('Fim da execução do modelo.\n')

# Modelo de copia utilizando o metodo construtor DICT
print('Modelo de copia gerada usando o meotodo DICT.')
dict3 = dict(dict1) # Será criado um novo dicionário com base no dicionário 1
print('Fim da execução do modelo.\n')