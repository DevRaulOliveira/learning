# Coleção de dados - Dicionário
# Dicionário é uma coleção de dados ordenados e alteraveis que não permite itens duplicados
# Armazena os itens dem forma de dupla
# Atributo da variável e o valor
# FORMATO -> Atributo(Chave) : valor
# Dicionário não trabalha com indices
# A busca em dicionários é feita com base no atributo(chave)
# É case sensitive
# Caso a chave seja repetida, o valor substituirá o valor anterior
# O valor da variável pode se repetir
# Chaves servem para distinguir o que significa os itens
# Dicionários podem armazenar diversos tipos de itens: int, char, bool e até mesmo armazenar listas em chaves
# As chaves podem ser de diversos tipos. Ex -> 112: true

# Exemplo de dicionário
print('Modelo de dicionário.')
dict1 = {
        'Nome':'Gabriel', # Uma boa pratica é escrever o código de dicionário quebrado em linhas para facilitar a leitura
        'Idade':'36',       
        'Altura':'1.68'
        } 
print('Exemplo de dicionário: ',dict1)
print('Fim da execução do exemplo de dicionário.\n')

# Modelo de seleção de item dentro de um dicionário
# O acesso a um item dentro do dicionário é feito com base no seu atributo(chave)
print('Modelo de acesso a uma chave do dicionário.')
print('Acessando a chave nome do dicionário temos: ', dict1['Nome']) # Formato de acesso a uma chave do dicionário dicionário['chave a ser encontrada']
print('Fim da execução do modelo de de acesso a chave.\n')

# Modelo de exibição do comprimento do dicionário utilizando LEN
print('Modelo de de exibição do da quantidade de itens de um dicionário usando LEN')
print('Exibindo a quantidade de itens no dicionário',len(dict1))
print('Fim da execução do modelo Len')