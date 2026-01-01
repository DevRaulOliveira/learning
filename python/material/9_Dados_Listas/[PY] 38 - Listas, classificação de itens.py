# Realizando a classificação de listas de acordo com o tipo

nomes = ['Gabriel', 'Danny', 'Arthur', 'João', 'Beatriz']
numeros = [100,50,70,13,17]

#Utilizando o metodo SORT
# Por padrão ele organiza de forma ascendente
nomes.sort()
numeros.sort()
print('Utilizando o metodo sort com a lista de nomes de forma ascendente\n',nomes)
print('Utilizando o metodo sort com a lista de numeros de forma ascendente \n',numeros)

# Utilizando o metodo SORT combinado com o Reverse
nomes.sort(reverse=True)
numeros.sort(reverse=True)
print('Utilizando o comando reverse dentro do comando SORT ordenando nomes de forma decrescente \n', nomes)
print('Utilizando o comando reverse dentro do metodo SORT ordenando numeros de forma decrescente \n', numeros)

# Utilizando o metodo KEY
def myfunction(n): # Neste caso pode ser criada qualquer tipo de função depende do objetivo do algoritmo
    return abs(n - 50) # Valor retornado da função valores próximos de 50

numeros.sort(key=myfunction) #Key vincula o metodo Sort a função criada anteriormente
print('Utilizando uma função que tem como objetivo trazer numeros mais proximos de 50 primeiro, o resultado encontrado foi \n', numeros)

# Utilizando o medodo Sort com strings ## Lembrando que é case sensitive ou seja sempre vai classificar primeiro letras maiusculas e depois minusculas
# Classificando de forma independente de lestra maiusculas ou minusculas
nomes.sort(key=str.lower)
print('Utilizando o metodo no metodo Key, sem distinguir letras maiusculas e minusculas \n', nomes)

# Metodo REVERSE
# É possível realizar a mudança de orde de acordo com o indice

nomes.reverse() # reordena informações de acordo com o indice
numeros.reverse()
print('Lista reordenada utilizando o metodo reverse \n', nomes)
print('Lista reordenada utilizando o metodo reverse\n', numeros)


