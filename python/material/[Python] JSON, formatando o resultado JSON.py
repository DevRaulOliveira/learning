# Formatando o resultado JSON para um formato legivel e caracteres especiais
# Existem diversas formas de realizar o ajuste na conversão de objetos para json
# São independentes, ou seja podem ser utilizados quais itens forem necessários

import json

# Modelo de conversão de formatação
# 1 - Objeto Dictionary
x = {
    'nome':'Gabriel',
    'idade':36,
    'casado':True,
    'divorciado':False,
    'filhos':('Arthur','Lucas'),
    'pets': None,
    'carros': [
        {'modelo':'BMW 320','cor':'branco'}, # Dicionário interno
        {'modelo':'Ford Edge','cor':'preto'}
    ]
}

# 2 - Metodo dumps
print(json.dumps(x))
# 3 - Desta forma são exibidos dados convertidos, porém com uma formatação de leitura ruim de interpretas
# 4 - Usando o metodo indent troca a quantidade de indentação interno
print('Após a correção mantendo 4 caracteres para cada item, temos:\n', json.dumps(x,indent=4))
print('Fim da execução do modelo.\n')
# No dicionário a separação é feita da seguinte forma:
# Chave e valor, são separados por ":": ex -> chave:valor 
# Entre as diferentes chaves ","

# Em JSON podem ser adicionados separadores
# Modelo utilizando o metodo separators
# Basicamente esse metódo realiza a troca dos separadores. 
# O primeiro argumento troca o separador entre chaves e o segundo o separador entre chave e conteúdo

print('Modelo de troca dos separadores de um objeto JSON.')
print('Após a correção mantendo 4 caracteres para cada item, e trocando os separadores usando o metodo "SEPARETOR =" temos:\n', json.dumps(x,indent=4, separators =(". "," = ")))

# É possível realizar a ordenação de itens usando SORT_KEYS
print('Utilizando "INDENT=", "Separator=" e "Sort_Keys=" temos:\n', json.dumps(x,indent=4, separators =(". "," = "),sort_keys=True))