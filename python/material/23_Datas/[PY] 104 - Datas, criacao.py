# Data e horas em Python
# Data não é um tipo de comando ou metodo
# Datas são importadas de um modulo
# Datas são importadas utilizando o módulo -> datetime

import datetime
# Função para verificar todas as funções e comandos desse modulo
print('Modelo de impressão da lista de funções do metodo datetime')
def DateTime():
        i = dir(datetime)
        print(i)
DateTime()
print('Fim de execução do modelo.\n')

# Modelo de utilização de DATETIME para a obtenção das informações de hora
print('Modelo de exibição da data e horário local.')
x = datetime.datetime.now() # A variável x recebe o modulo DateTime, a classe Datetime e o metodo now o horário exato local
print('Desta forma é exibido o data e horário local:\n',x)
print('Fim de execução do modelo.\n')

# Modelo de obtenção das informações específicar
print('Modelo de obtenção de outras informações de data')
y = datetime.datetime.now()
print('Ano:',y.year)
print('Mês',y.month)
print('Dia:',y.day)
print('Fim de execução do modelo.\n')

# Obtenção da informação de dia da semana usando o metodo STRFTIME
print('Modelo de obtenção do dia da semana usando o metodo STRTIME')
print(y.strftime('%A'))
print('Fim de execução do modelo.\n')