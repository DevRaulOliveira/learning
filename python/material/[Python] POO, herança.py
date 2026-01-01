# Heranças em python
# É uma classe que herda metodos
# Classe pai/base e é que possui os metodos
# Classe filha/derivada é a que herda
# Torna o código mais limpo e evita repetição de informações.

# Modelo de classe base e classe derivada
print('Modelo de uso de herança.')
class Pessoa:
    def __init__(self, nome, sobrenome)-> None:
        self.nome = nome
        self.sobrenome = sobrenome

    def nomeCompleto(self):
        print(f'Imprimindo o nome {self.nome} e o sobrenome {self.sobrenome}')


x = Pessoa('Pedro', 'José')
x.nomeCompleto()


class Estudante(Pessoa):
    pass
    # def faculdade(info, curso, horario):
    #     info.curso = curso
    #     info.horario = horario
    # def aluno(info):
    #     print(f'O aluno está matriculado em {info.curso} no periodo {info.curso}')

y = Estudante('José', 'Antonio')
y.nomeCompleto()
print('Fim de execução do modelo.\n ')