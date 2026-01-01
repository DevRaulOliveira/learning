# Loop de repetição FOR
# É utilizado para iterar em uma sequencia, ou através de uma cadeia de caracteres

nomes =['Gabriel','Danny', 'Arthur'] # Lista de nomes

# Modelo loop FOR:
for x in nomes: # O FOR irá iterar na coleção de dados da LISTA nomes utilizando a variável x para realizar as iterações
    print(x) # x está atuando como variável auxiliar
print('Fim do programa\n')

# Utilizando o FOR para interagir com uma cadeia de caracteres
for x in 'Olá mundo': # Desta forma, ao longo de cada execução o for irá coletar uma letra da frase
    print(x)
else:
    print('Fim do programa') # Desta forma o print precisa estar aninhado