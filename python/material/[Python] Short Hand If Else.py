# Short Hand If, Else
# É utilizado normalmente quando o bloco de código executa uma unica condição ou é mais curta, podendo ser escrito em uma unica linha

a = 200
b = 50

# Modelo de short hand if
if a > b: print('A é maior que B.')
else: 
    print('A afirmação está incorreta!') 

# Modelo de short hand do else 
c = 10
d = 67
print('C é maior que D') if c > d else print('D é maior que C') ## Imprima cond 1 -> se cond 1 > b <- qualquer outro resultado imprima cond 2

# Modelo de short hand if, else, if
e = 5
f = 5
print('E é maior que F') if e > f else print('=') if a == b else print('São iguais')
                                                    # Esta segunda verificação é da condição do segundo else
                                                    # Este else é condicional levantando igualdade
# É possível adicionar uma verificação condicional de else tendo valor de ELIF
