# Operadores lógicos são usados para combinar declarações condicionais

# Operador AND, retornar true se ambas as condições forem verdadeiras
# Operador OR, retorna verdadeiro se pelo menos uma expressão for verdadeira
# Operador Nor, retorna verdadeiro se apenas uma condição for verdadeira
# Operador NOT, retornar verdadeiro se nenhuma das condições forem verdadeiras

x = 5
print('O valor de x neste exemplo é {}'.format(x),'\n')
print('Operador AND retornar verdadeiro se ambas as condições forem verdadeiras:', x>3 and x<10)
print('Operador NOT retornar inverte o resultado:', not(x>3 and x<10))
print('Operador OR retornar verdadeiro se pelo menos uma condição for verdadeira:', x>3 or x<4)
