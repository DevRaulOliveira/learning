# Unindo listas
# Existem algumas formas de unir listas os quais serão usados a seguir
list1 = ['a','b','c']
list2 = [1,2,3]

print('A Lista 1 original\n',list1)
print('A Lista 2 original \n', list2)

# Unindo usando o sinal de + obrigatóriamente combina listas de acordo com a sequencia da soma.
list3 = list1 + list2
print('A lista 3 é gerada juntando as listas com o sinal de +, resultando em \n',list3) # Lista ordenada de acordo com a soma

# Unindo listas usando append
for x in list2: # esta forma é boa para ser usada utilizando alguma regra de verificação
    list1.append(x)
print('Usando o comando append\n',list1)

# Usando o comando extend para combinar listas
list1.extend(list2) # usando o metodo extend todos os dados serão adicionados, sem verificação ou a colocação de alguma regra
print('Usando o comando extend\n', list1)

