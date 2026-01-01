# Funções Matemáticas integradas
# Python possui um extenso módulo matematico

# Modelo de MIN e MAX
# MIN é utilizado para encontrar o valor minimo dentro de uma coleção de valores
print('Modelo de utilização do comando MIN para encontra o menor valor em uma coleção de dados.')
x = min(5,9,7,1,2,3,5,33,4,5,6,7) 
y = [5, 9, 7, 2,3,5,33,4,5,6,7] # É importante citar que por Y ser um tipo lista é preciso ser referenciado em uma variável para aplicação do metodo
z = {5,9,7,3,5,33,4,5,6,7} # É importante citar que por Z ser um tipo set é preciso ser referenciado em uma variável para aplicação do metodo
b = min(y)
c = min(z)

print(f'O menor valor da coleção x é:{x}. Na coleção y, referenciada em b:{b} e na coleção Z, referenciado em c:{c}')
print('Termino de excecução do modelo\n')

print('Modelo de de utilização do comando MAX para encontrar o maior valor em uma coleção de dados.')
u = max(5,9,7,1,2,3,5,33,4,5,6,7) 
v = [5, 9, 7, 2,3,5,57,4,5,6,7] # É importante citar que por Y ser um tipo lista é preciso ser referenciado em uma variável para aplicação do metodo
w = {5,9,7,3,5,83,4,5,6,7} 
d = max(v)
e = max(w)

print(f'O menor valor da coleção x é:{u}. Na coleção y, referenciada em b:{d} e na coleção Z, referenciado em c:{e}')
print('Termino de excecução do modelo\n')
