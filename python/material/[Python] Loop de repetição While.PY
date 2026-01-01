# Loop de repetição WHILE
# É um comando de repetição de código enquanto uma determinada condição for verdadeira

i = 1

# Modelo de WHILE ## Significa enquanto
while i < 6: # Enquanto essa condição for verdadeira
    print(i) # Execute esse comando
    i+=1 # Incremento da condição que faz com que o código não fique em LOOP INFINITO, causando o termino da execução do bloco de código
print('Fim do programa.')

# Incluindo um ELSE junto ao WHILE
j = 0
while j <= 6:
    print(j)
    j+=2
else:
    print('O valor de J não é menor ou igual a 6')
