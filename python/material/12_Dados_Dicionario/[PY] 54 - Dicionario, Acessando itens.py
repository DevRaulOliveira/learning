# Acessando itens de um dicionário
# Utilizando o metodo GET é possível acessar os itens individualmente da lista
# Utilizando o metodo KEYS é possível acessar todas chaves de um dicionário e retorna-los no formato de lista
# O conjunto CHAVE : VALOR pode ser interpretado como uma TUPLA
dict1 = {
        'Nome':'Gabriel',
        'Sobrenome':'Artigas',
        'Ano':'1985'
}

# Modelo de atribuição de uma chave a uma variável.
print('Modelo de atribuição do valor de uma chave a uma variável.')
x = dict1['Sobrenome']
print(x) # Valor do sobrenome atribuido a variável x
print('Fim da execução do modelo.\n')
# Modelo de utilização do GET
# Utilizado para coletar o valor de uma chave no dicionário
print('Modelo de utilização do metodo GET.')
print('Utilizando o metodo GET temos como resultado:', dict1.get('Nome')) # Formato de uso do get: Ex -> dicionario.get('Chave')
print('Fim da execução do modelo.\n')

 # Modelo de como guardar a chave GET e uma variável
print('Modelo de como guardar o valor da chave GET em uma variável.')
x = dict1.get('Ano')
print('Ao guardar o valor da chave Ano na variável x temos:', x)
print('Fim da execução do modelo.\n')

# Modelo de utilização do metodo KEYS
# Este metodo serve para acessar todas as chaves do dicionário em formato de lista
print('Modelo de utilização do metodo KEYS.')
y = dict1.keys()
print('Utilizando o metodo KEYS para obter uma lista de todas as chaves do dicionário:',y)
print('Fim da execução do modelo.\n')

# Modelo de adição de uma chave a um dicionário
print('Modelo de adição de itens no dicionário.')
dict1['Idade'] = 36 # Modelo de adição da chave idade ao dicionário
print('Após adicionar a chave idade ao dicionário temos:',y) # Exibe as chaves do dicionário de forma atualizada incluindo a chave idade
print('Fim da execução do modelo.\n')

# Modelo de verificação dos valores presentes em um dicionário usando o metodo VALUES.
print('Modelo de exibição dos valores presentes em chaves do dicionário utilizando VALUES')
z = dict1.values()
print('Exibindo os valores das chaves de um dicionário utiulizando o metodo VALUES, temos:', z)
print('Fim da execução do modelo.\n')

# Modelo de separação de itens de um dicionário em tuplas utilizando o metodo ITEMS
# É um metodo de visualização, ou seja alterações realizadas serão visiveis
print('Modelo utilizando o metodo ITEMS para separar os itens de um dicionário em tuplas.')
w = dict1.items() # Forma de separar os itens de um dicionário em tuplas
print('Ao separarmos os itens de um dicionário em tuplas utilizando o metodo ITEMS temos:',w)
print('Fim da execução do modelo.\n')

# Modelo de utilização de condicional para verificação da existencia de uma chave
print('Modelo de utilização condicional em dicionários.')
if 'Idade' in dict1:
    print('Sim IDADE é uma chave do dicionário.')
print('Fim da execução do modelo.\n')