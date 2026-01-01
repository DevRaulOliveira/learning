# Declaração de passagem é a utilização do comando pass

print('Modelo de declaração de passagemd e uma classe utilizando pass')
class myFunction:
    def __init__(self) -> None:
          pass ## Desta forma é realizada a passagem da classe com isso não apresentando erro por estar vazia
    
print('Fim da execução do modelo.\n')

print('Modelode alteração de uma argumentod e uma classe.')
class Pessoa:
    def __init__(self, nome, idade):
          self.nome = nome
          self.idade = idade ## O tipo de input deve ser o mesmo da variável para não ocorrer erroa
    def a(self):
        print(f'Meu nome é {self.nome} e tenho {self.idade}')
y = Pessoa('Gabriel',40)
y.a()

# Alterando uma propriedade da função interna da classe
print('Modelo após a alteração da propriedade nome.')
y.nome = 'José'
y.a()
print('Fim da execução do modelo.')