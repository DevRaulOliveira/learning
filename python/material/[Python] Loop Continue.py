# Comando continue
# O comando continue é usado para pular uma condição que está presente em um loop

# Modelo de uso do CONTINUE com o WHILE
i = 0
while i<30:  
    i+=1
    if i == 3: # Se o valor for igual a 3 pule-o
        continue # Porém faz com que continue a execução do código
    print(i)

# Modelo de uso do CONTINUE com o FOR
carros = ['BWM','Volvo', 'Porsche', 'Scania']
for x in carros: # O x foi atribuido para cada item da lista carros
    if x == 'Porsche': # Se x for igual a 'Porsche'
        continue # Pule-o
    print(x) # Exiba x