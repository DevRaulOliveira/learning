# Funções Lambda 
# Normalmente são curtas
# São funções anonimas
# Podem receber numero de argumento, mas normalmente só podem ter uma expressão
# Lembrando que funções anonimas só funcionam dentro da função ou bloco que estão contidas

# Normalmente funções são estruturadas assim
print('Modelo de função convencional')
def myFunction(n):
    n+=10 # Com isso valores que utilizarem essa função irão ser somados com o valor de 10
print('Fim de execução do modelo.\n')

# Modelo de expressão Lambda
print('Modelo de uso de expressão lambda')
x = lambda a:a+20 # Formato padrão de uma função lambda
print('Modelo de expressão lambda com um parametro:',x(5))
y = lambda a,b:a*b # A e B são os dois parametros de entrada da função. ## O que ocorre depois dos dois pontos é o calculo realizado
print('Modelo de expressão lambda com dois parametros',y(4,3)) # Formato padrão com dois argumentos
print('Fim de execução do modelo.\n')

# Modelo de uso da expressão lambda dentro de outra função
print('Modelo de uso de lambda dentro da função')
def myFunct(n):
    return lambda z:z*n
myDouble = myFunct(2) # Nesta etapao 2 entra no lugar do n
print('Modelo utilizando a função lambda, contida em outra função',myDouble(11)) # Nesta etapa o 11 entra no lugar do z
print('Fim de execução do modelo.\n')

# Funciona da seguinte forma, na primeira chamada da função o argumento informado substitui o parametro n
# Na segunda chamada, o valor de n já foi substituido, então ao chamar a função por referencia, o próximo valor informado atua no lugar de z