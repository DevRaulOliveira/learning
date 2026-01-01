# Bloco Finnally
# O bloco finally é executado independente do bloco Try apresentar qualquer tipo de erro ou não

# Modelo de uso do Bloco TRY/Except e bloco FINNALLY
x = 'Olá mundo'
try: # Tenta executar o comando desse bloco
   print(x)
except NameError: # Esse except realiza o tratamento específico de nome de variável
    print('Variável "X" não definida!')
except TypeError: # Ja nesse é tratado o erro de tipo.
    print('Tipo de variável incompátivel!')

else:
    print('Tudo certo no bloco de código try!')

finally:
    print('O bloco FINALLY é executado de qualquer forma, mesmo se o código tiver apresentado erro!')
print('Continuando a execução do programa')
