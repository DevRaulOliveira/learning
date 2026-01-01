# Iteradores em python
# É um objeto que contem um numero contável de valores
# O iterador é objeto que implementa o protocolo de iterador que consiste nos metodos inter e next
# Diferença entre iteradores e iteraveis
# Listas, tuplas, dicionários e set são objetos iteraveis, sendo continuos e onde é possível obter um iterador
# O comando FOR e WHILE realiza esse processo internamente

# Demonstrando o iterador de uma TUPLA
tupla1 = ('Gabriel','Danny','Arthur') # Tupla é um iteravel
print('Modelo de uso do conceito de iteraveis.')

getTupla = iter(tupla1)
print(next(getTupla)) # Next sempre mostra o proximo objeto de um iterador começando a exibir o 0 e assim sucessivamente
print(next(getTupla))
print(next(getTupla)) 

print('Fim de execução do modelo.\n')

# Aplicando conceito em uma unica palavra e uma sequencia numérica

print('Modelo usando iter + next para uma unica palavra.')
a = '123' # IMPRIME APENAS FORMATO DE TEXTO
b = 'abcdefgh'
getA = iter(a)
getB = iter(b)
print(a)
print(next(getA))
print(next(getA))
print(next(getA))

print(b)
print(next(getB))
print(next(getB))
print(next(getB))

print('Fim de execução do modelo.\n')
# Aparentemente é o mesmo conceito utilizado em Loops do tipo FOR e WHILE
print('Modelo utilizando o loop FOR.')

tupla2 = ('Carro', 'Barco', 'Onibus')
for x in tupla2: # O LOOP for cria um objeto iterador durante cada execução do LOOP
    print('Metodo realizado utilizando o Loop for:',x)

print('Fim de execução do modelo.\n')


