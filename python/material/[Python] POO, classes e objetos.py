# Python atua como uma linguagem de POO
# Uma classe é um construtor de objetos que contem o projeto para criação desses objetos
# A classe contem as caracteristicas de um objeto
# Propriedade é uma variável interna da classe

# Modelo de criação de classe
print('Modelo de criação de classe em Python.')
class myClass:  # Nome da classe
    x = 5 # É uma propriedade da classe em que x recebe o valor int de 5. Similar a uma coleção de dados

print('Ao realizar o print da classe myClass criada temos:', myClass) # Esta impressão retorna que o objeto myClass é do tipo classe
print('Fim da execução do modelo.\n')


# Criando um objeto que se enquadre na classe myClass
# NESTE CASO O OBJETO QUE É DERIVADO DA CLASSE myClass
# Essa criação permite a interação com os objetos internos da classe
print('Modelo de interação com um argumento interno de uma classe.')
y = myClass() # Cria uma variável que se conecte com a classe desejada.
print('Com a variável y criada e vinculando ela com a classse, temos acesso a variável interna, imprimindo neste print:',y.x)

# Com isso toda e qualquer variável que eu criar, se vinculada a classe, tem acesso aos argumentos internos, se tornando disponíveis para uso
# -> y.argumento interno -> permite que y utilize o valor presente no argumento
