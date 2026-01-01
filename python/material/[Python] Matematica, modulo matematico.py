# Modulo matematico em Python
# O modulo math habilita comandos matematicos

import math
# Modelo de uso do modulo MATH
print('Modelo de uso do modulo Math.')
x = math.sqrt(64)
print('O valor da raiz quadrada de 64 é:',x) # O resultado será apresentado em formato Float por padrão
print('Termino de excecução do modelo.\n')

# Modelo de arredondamento para baixo e modelo de arredondamento para cima
print ('Modelo de uso de metodos de arredondamento CEIL  e FLOOR')
y = math.floor(7.9)
z = math.ceil(8.1)
print(f'Arredonando 7.9 para baixo, temos:{y}\nArredondando 8.1 para cima temos {z}.')
print('Termino de excecução do modelo.\n')

# Numeros especiais na matematica e constantes
w = math.pi # Não precisa de parenteses após o uso do módulo de PI por que é uma constante e não uma variável, isso se aplica a todos as constantes matematicas
print(w)
