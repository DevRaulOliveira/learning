# A comparação de objetos usando identidade é para verificar se eles ocupam o mesmo local de memória.
x = ['apple', 'banana']
y = ['apple', 'banana']
# Neste caso são objetos diferentes por que um foi atribuindo a uma variável e outro a outro local na memória, mesmo que contenha os mesmos valores.

z = x
# Utilizando comando IS para realizar a verificação
print('Utilizando o comando IS para a comparação de endereços de memória entre z e x o resultado é \n',z is x,'por z é uma referencia ao endereço de memória de x')
print('Utilizando o comando IS para a comparação de endereços de memória entre x e y o resultado é \n', x is y,'por que ambos possuem o mesmo conteúdo em endereços de memória diferentes')

# Utilizando comando IS NOT para realizar a verificação
print('Utilizando o comando IS para a comparação de endereços de memória entre z e x o resultado é \n',z is not x,'por z é uma referencia ao endereço de memória de x')
print('Utilizando o comando IS para a comparação de endereços de memória entre x e y o resultado é \n', x is not y,'por que ambos possuem o mesmo conteúdo em endereços de memória diferentes')