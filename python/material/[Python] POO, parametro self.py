# É uma referencia a estancia atual da classe
# Usa como referencia ao objeto criado naquele momento
# Usado para acessar variáveis que pertencem a classe
# Não precisa ter o nome de self, mas ele precisa sempre ser o primeiro parametro da classe


class Pessoa: 
    def __init__(self,nome,idade) -> None: # O NOME NO INICIO É O RESPONSÁVEL POR FAZER REFERENCIA A FUNÇÃO
        self.nome = nome
        self.idade = idade

    def myFunc(a): # Neste caso, mesmo que ocorra a troca de nome é importante que seja o mesmo no inicio e dentro da função
        print(f'Olá meu nome é{a.nome} e tenho {a.idade} anos')
x = Pessoa('José', 36) # Vincula os argumentos com os argumentos internos da primeira função
x.myFunc() # Permitindo que sejam aplicadas os comandos da segunda função  