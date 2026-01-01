# Função interna __init__()
# É uma função implicita que ocorre quando um objeto está sendo criado.
# É uma função interna das classes

# Entendendo a função __init__()
# Por padrão ela vem com o argumento pass, para que a execução do função não apresente erro
class pessoa:
    def __init__(self) ->None: # Função interna da classe
        self.nome = 'Gabriel' # A propriedade de self.nome é o nome Gabriel
        self.idade = 36
# Seguindo o mesmo conceito anterior, a função __init__(self) é uma função de inicialização
# Com isso conectar com a classe pessoa, temos:
print('Modelo de acesso a argumentos de uma classe')
y = pessoa() # Conexão com a classe pessoa
print(f'Acessando a classe pessoa, temos como resultado o nome {y.nome} e a idade {y.idade}, trazendo também seu tipo que são {type(y.nome)} e {type(y.idade)}') # Acesso direto ao argumento dentro da função __init__(self)
print('Fim da execução do modelo.\n')

# Interagindo com parametros de uma classe
# Modelo de interação por referencia
print('Modelo de interação, atribuindo argumentos a classe.')
class carros:
    def __init__(self,marca,modelo, ano) -> None:
        self.marca = marca ## Desta forma ao interagir com a classe ela irá solicitar esses dois paramentos
        self.modelo = modelo
        self.ano = ano
# Para acessar os itens da classe é feito o seguinte passo
# Lembrando que é obrigatório fornecer a mesma quantidade de informações presentes na classe
z = carros('Ford','Mustang',1970)
w = carros('Dodge','Charger',1970)
print(z.marca, z.modelo, z.ano)
print(w.marca,w.modelo,w.ano)
print('Fim de execução do modelo.')