# Levantar ou lançar uma exceção
# Esse processo pode ser feito caso ocorra uma determinada condição
# O método é feito utilizando o comando RAISE

# Modelo de uso de RAISE
x= -5

if x < 0:
    raise Exception('Não são permitido numeros negativos!') # Essa será o retorno de erro demonstrado no terminal

print('Fim do programa!')

# Outro exemplo de uso do metodo RAISE
y = 'Olá mundo!'
print('Frase de exemplo que está em y:',y)
if not type(y) is int:
    raise TypeError('Somente numeros são permitidos')

print('O erro foi gerado por que o dentro do if o y recebeu a condição de aceitar apenas numero inteiro como variável')
print('Fim do programa!')