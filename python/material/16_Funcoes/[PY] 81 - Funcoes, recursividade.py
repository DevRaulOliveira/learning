# Recursividade em funções
# É toda e qualquer função que executa ela mesma dentro do próprio bloco de código

# Modelo de criação de uma função do modo convencional
print('Modelo de execução de função de forma CONVENCIONAL')
def myFunction(n):
    for x in range(n): # Utilizando o LOOP FOR para cada execução
        print('Olá mundo')
myFunction(4)
print('Fim de execução do modelo.\n')

# Modelo de criação de uma função usando recursividade
print('Modelo de execução de função usando RECURSIVIDADE')
def myFunctionRec(n): #função tradicional
    if n > 0: # condição que limita a execução do código
        print('Olá mundo recursivo') # exiba a mensagem
        myFunctionRec(n-1) # Aprogressão da função recursiva usando a própria função como parametro ## Usado como ferramenta de LOOP
myFunctionRec(5)
print('Fim de execução do modelo.\n')
