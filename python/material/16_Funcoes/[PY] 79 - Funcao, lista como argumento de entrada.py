# Passando uma lista como um argumento


# Modelo de uso de uma lista dentro de uma função
print('Modelo de uso de uma lista como argumento de uma função.')
def myFunction(alimentos): # Função alimentos
    for x in alimentos: # Que a cada execução exibe um item por linha
        print(x)

# Lista criada como argumento para ser utilizado dentro da função
frutas =['Maça', 'Uva', 'Morango', 'Abacaxi','Maracuja','Pessego']
myFunction(frutas) # Desta forma a lista foi passado por referencia utilizando uma variável, mas poderia ser passada de forma literal
print('Fim da execução do modelo.\n')