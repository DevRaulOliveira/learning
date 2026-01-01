# Convertendo uma string Python para Json
# Lembrando que o formato de uma string JSON é similar a um objeto dictionary
# A conversão de objetos para o formato JSON podfe ser realizado usando
# List, Tupla, String, Int, Float, True & false e None
# Não necessáriamente precisa estar atribuido a uma variável, pode ser realizada a conversão direta dentro do print
# A informação no tipo Json está em Java Script

# Modelo de conversão de Python para JSON
# 1 - Importe o módulo JSON

import json
# 2 - Crie o objeto dictionay
print('Modelo de conversão de um objeto Dictionary para JSON')
x = {
    'nome':'Gabriel',
    'idade':36,
    'Cidade':'São Paulo'
}
print('O Dicionário X em Python é:\n',x,'\nÉ um objeto do tipo:',type(x))


y = json.dumps(x)
print('Resultado da conversão do Objeto DICTIONARY para uma String JSON:\n',y,'\nAgora o formato do conteúdo é:\n',type(y))
# Na conversão para JSON caracteres especiais geram caracteres de escape
print('Fim da execução do Modelo.')

# Modelo de conversão de outros tipos de arquivo, de maneira direta
print('Modelo de conversão de diferentes tipos de objeto.')
print(json.dumps({"nome": "Gabriel", "idade": 36}))
print(json.dumps(["maça", "bananas"]))
print(json.dumps(("maça", "bananas")))
print(json.dumps("Ola"))
print(json.dumps(42))
print(json.dumps(31.76))
print(json.dumps(True))
print(json.dumps(False))
print('Fim de execução do Modelo.')