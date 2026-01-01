# Percorrer um dicionário usando loop
dict1 = {
    'Nome':'Gabriel',
    'Sobrenome':'Artigas',
    'Ano':1985
}

# Utilizando o comando FOR para obtenção das chaves
print('Modelo de impressão das chaves usando FOR.')
for x in dict1: # Desta forma o x percorre as chaves do dicionário
    print('Utilizando a variável auxiliar obtemos as chaves do dicionário:',x) # Desta forma são impressas as chaves 
print('Fim da execução do modelo.\n')

# Modelo utilizando o metodo KEYS para obtenção das chaves
print('Modelo utilizando o metodo KEYS para impressão das chaves')
for w in dict1.keys(): # Desta forma a variável auxiliar w recebe as chaves presentes no dicionário
    print('Utilizando o metodo KEYS:',w)
print('Fim da execução do modelo.\n')

# Para realizar a impressão dos valores de um dicionário usando FOR
print('Modelo de impressão dos valores utilizando FOR para obtenção dos valores.')
for y in dict1:
    print('Utilizando FOR, para exibir os valores das variáveis contidas nas chaves:',dict1[y]) # Estrutura ->dicionário[variável auxiliar]
print('Fim da execução do modelo.\n')

# Modelo utilizando o metodo VALUES, para obtenção dos valores
print('Modelo utilizando o metodo VALUES para obtenção dos valores')
for z in dict1.values():
    print('Utilizando o metodo VALUES temops:',z) # Desta forma z receberá os valores do dicionário
print('Fim da execução do modelo.\n')

# Modelo para impressão do conjunto chave + valor usando ITEMS
print('Modelo de utilização do metodo ITEMS para obter o conjunto chave + valor no loop FOR')
for w,z in dict1.items(): # Precisa de duas variáveis por que este metodo retorna o valor em PARES
    print(w,z)
print('Fim da execução do modelo.\n')


