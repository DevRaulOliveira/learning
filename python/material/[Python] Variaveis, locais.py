# Variáveis de escopo local e global

# Exemplos de variáveis de escopo global
print('Modelo de variáveis de escopo global')
# Basicamente são funções que não estão incapsuladas em funções tendo seu valor disponível para todo o código
a = 10
b = 20
print(f'As variáveis A e B dentro do escopo global tem os valores de  {a} e {b} respectivamente.')
print('Fim da execução do modelo.\n')

# Podemos utilizar essas mesmas variáveis dentro de funções, que seus valores são outros e serão locais.
print('Função exibindo o valor da variável A na variável local(função).')
def myFunction(a):
    a*=1
    print('Neste ponto do cógio a variável a tem outro valor, diferente do valor da variável no escopo global:',a)
myFunction(1)
print('Fim da execução do modelo.\n')
