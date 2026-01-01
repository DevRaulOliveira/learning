# Módulo Plataform
# São módulos integrados ao código
# Funcionam como grandes bibliotecas que são integrados a linguagem Python

# Modelo de importação do módulo platform
import platform
print('Modelo de Platform que é integrada ao Python')
x = platform.system() # -> Este comando traz a plataforma do sistema operacional, neste caso Windows
print(x) # -> Imprime Windows como resultado
print('Termino de execução do modelo.\n')

# Para lista e verificar todas as funções presentes em um determinado módulo
print('Modelo de como listar todas as funções e bibliotecas de um módulo.')
y = dir(platform) # O comando dir acessa o diretório de um módulo
for a in y:
    print(a)
print('\nFim da execução do modelo.\n')

# Com a execução do comando DIR é possível obter todas funções, módulos e bibliotecas presentes em um determinado módulo.

