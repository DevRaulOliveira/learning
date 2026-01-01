# Utilizando init na classe derivada
# Ao utilizarmos o metodo Init na derivada, ela perde todas as propriedades da classe base

print('Modelo de uso de herança.')
class Pessoa:
    def __init__(self, nome, sobrenome)-> None:
        self.nome = nome
        self.sobrenome = sobrenome

    def nomeCompleto(self):
        print(f'Imprimindo o nome {self.nome} e o sobrenome {self.sobrenome}')
class Estudante(Pessoa):
    def __init__(self, nome, sobrenome, curso, horario):
        Pessoa.__init__(self,nome,sobrenome)
        self.curso = curso
        self.horario = horario
    def aluno(self):
        print(f'O aluno está matriculado em {self.curso} no periodo {self.horario}')

y = Estudante('Antonio','Paulo','ADS','Noturno')
y.nomeCompleto()
y.aluno()
print('Fim da execução do modelo.')

print('Montando uma derivada terceira da classe base')
class Matriculado(Estudante):
    def __init__(self, nome, sobrenome, curso, horario,faculdade):
        super().__init__(nome, sobrenome, curso, horario)
        self.faculdade = faculdade
    def universidade(self):
        print(f'Meu nome é {self.nome}. Meu sobrenome é {self.sobrenome}. Atualmente estou cursando {self.curso}, no horário {self.horario}. Matriculado na faculdade {self.faculdade}')

z = Matriculado('Raul', 'Oliveira', 'ADS', 'Noturno','FATEC')
z.universidade()    