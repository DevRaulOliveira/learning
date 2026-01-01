# Deletando propriedades de dentro de uma classe no Python

class myFunction:
    def __init__(self, pessoa, idade) -> None:
        self.pessoa = pessoa
        self.idade = idade

print('Modelo de exclusão de propriedade')
x = myFunction('Raul',30)
print(f'Meu nome é {x.pessoa} e tenho {x.idade} anos.') # Neste ponto do código a propriedade idade ainda existe

del  x.idade
print(f'Meu nome é {x.pessoa}') # Neste ponto do código a propriedade idade não existe mais
print('Fim de execução de modelo.')