# Comprensão de listas que basicamente é reduzir o tamanho da sintaxe de utilização de lista e simplificada
nomes = ['Pedro', 'José', 'Maria', 'Antonio']

# Compressão simples de lista
[print('Lista original, sem manipulação:\n',x) for x in nomes]

# Selecionando um caractere presente em cada indice da lista
novalista = [] # Nova lista vazia que será preenchida
for y in nomes: # Verifica se para cada item da lista nomes
    if 'e' in y: # Se tiver 'u' em algum indice
        novalista.append(y) # Adicione o item ao final da novalista
print('Print da novalista dos nomes que possuem a letra e:\n',novalista)

# Mesma lista porém de forma comprimida
novalista2 = [z for z in nomes if 'a' in z] # A expressão da lista comprimida realiza a junção da lógica do algoritimo dentro da lista a ser preenchida
print('Print nova lista de forma comprimida:\n',novalista2) 

# EXPLICAÇÃO DO ALGORITMO
# novalista2 é a nova lista vazia
# novalista2 = [z for z in nomes] é o algoritimo de analise de cada indice da lista nomes
# novalista2 = [z for z in nomes if 'a' in z] é a condição para funcionamento do algoritmo

# Realizando o mesmo comando utilizando o formato de tupla
novalista3 = [u for u in range(10)]
print('Realizando o mesmo processo com tupla\n',novalista3)

# Um exemplo mais elaborado trazendo apenas numeros pares
novalista4 = [h for h in range(10) if h%2==0] # Essa condição de if está filtrando apenas valores que são divisíveis por 2 e resto = 0, ou seja, numeros pares.
print('Nova lista trazendo apenas numeros pares para uma tupla\n',novalista4)

# Um exemplo trazendo apenas numeros impares
novalista5 = [q for q in range(10) if q%2!=0] # Trazendo apenas numeros impares com o IF trazendo numeros que se divididos por 2 não resultam em resto 0
print('Nova lista 5 trazendo apenas numeros impares \n', novalista5)

# Utilizando o comando UPPER, LOWER:
novalista6 = [ t.upper() for t in nomes] # Cria a nova lista colocando tudo em maiusculo
print('Nova lista impressa usando o metodo UPPER \n',novalista6)

novalista7 = [g.lower() for g in nomes] # Cria a nova lista colocando tudo em minusculo
print('Nova lista nomes impressa usando o comando LOWER\n', novalista7)

# Outro exemplo com listas
novalista8 = [ 'Ola' for  b in nomes] #Neste caso retorna a string de acordo com a quantidade de itens presentes na lista
print('Novalista8', novalista8)

novalista9 = [ 'Teste' for d in nomes if 'a' in d] # Imprime a palavra teste desde que seja encontrada a condição do if, tenha 'a' no indice da lista
print('Adiciona a palavra teste a lista, de acordo com o numero de vezes que a condição proposta seja verdadeira \n',novalista9)

# Aplicando o filtro de forma comprimida
novalista10 = [s if s !='Pedro' else 'Danielle' for s in nomes] # Neste caso a nova lista criada faz a busca pelo nome Pedro, caso seja encontrado irá substituir por Danielle, do contrário será mantido
print('Criando uma nova lista, com base na lista nomes, porém substituindo o nome Pedro por Danielle \n',novalista10)

