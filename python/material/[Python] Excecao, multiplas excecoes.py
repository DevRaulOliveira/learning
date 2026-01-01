# Tratamento de multiplas exceções
# A visualização das opções de tratamento de erro específico estão listadas ao digitar "error"
# Nesta lista é possível visualizar os multiplos erros existentes e determinar um tratamento específico para cada tipo

# Modelo de uso do Bloco TRY/Except para tratamento de multiplos erros
x = 'Olá mundo'
try: # Tenta executar o comando desse bloco
   print(x)
except NameError: # Esse except realiza o tratamento específico de nome de variável
    print('Variável "X" não definida!')
except TypeError: # Ja nesse é tratado o erro de tipo.
    print('Tipo de variável incompátivel!')

else:
    print('Tudo certo no bloco de código try!')

print('Continuando a execução do programa')
