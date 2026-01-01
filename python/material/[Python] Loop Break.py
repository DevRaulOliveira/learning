# Comando BREAK
# Serve para realizar a interrupção da execução do loop tanto FOR quanto WHILE
# Normalmente utilizado em conjunto com o if por conter uma excessão ao parametro esperado causando a parada de execução do bloco
i = 1

# Modelo de uso do BREAK no while
print('BREAK sendo usado em while')
while i <6:
    print(i)
    i+=1
    if i%3 == 0: # Se I divisível por 3 e gerar resto 0
        break # Então interrompa a execução
print('Fim da execução do bloco While.\n')
# Modelo de uso de BREAK no for
nomes = ['Gabriel', 'Danny', 'Arthur']
print('BREAK usado em FOR')
for x in nomes:
    print(x)
    if x == 'Danny':
        break
print('Fim da execução do bloco por que foi encontrado o nome Danny')

