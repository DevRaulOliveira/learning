# Criação de objeto de data
import datetime
x = datetime.datetime.now() # Desta forma são geradas as informações de data e hora de acordo com o sistema
    #MODULO.CLASSE.METODO

# Criando datas usando o metodo construtor
print('Modelo de metodo construtor de DATAS')
# A classe datetime, precisa de no minimo 3 parametros para a criação de data
y = datetime.datetime(2020,5,17,17,12,30,10) # Este é o modelo de criação usando o metodo construtor de datas
# Informações presentes na data ano,mês,dia,hora,minuto e segundo
print(y)
print('Fim de execução do modelo.\n')

# A criação de datas usando o metodo construtor serve para a realização de calculos
z = datetime.datetime(2021,7,10,20,24,18)
print('Desta forma é popssível exibir a diferença entre as datas',x-z)

# DATETIME NÃO SUPORTA SOMA DE DATAS
# Por isso o calculo pode ser feito utilizando o metodo absoluto ABS