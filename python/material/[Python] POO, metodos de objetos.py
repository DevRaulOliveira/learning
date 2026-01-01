# Classes podem conter metodos
# Esses metodos passam a ser pertencentes daquele objeto

class Pessoa:
    def __init__(self, nome, idade) -> None: # Self faz referencia aos objetos da classe
        self.nome = nome # Neste caso esta sendo criada a propriedade nome para os objetos dessa classe
        self.idade = idade

    # Criando metodos internos da classe
    def myFunc(self): # Isso faz com que seja referenciada a função anterior
        print('Olá, meu nome é',self.nome,'tenho',self.idade,'anos') # Vinculando a função anterior, argumento self.nome e posteriormente ao nome inserido na parte externa

print('Modelo de exemplo.')
x = Pessoa('Gabriel',36)
x.myFunc() # Não foi preciso utilizar o comando print por que a função myFunc já tem esse comando
print('Fim de execução do modelo.')        