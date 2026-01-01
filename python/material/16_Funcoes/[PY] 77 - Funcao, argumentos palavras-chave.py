
def nomes(primeiro,segundo,terceiro):
    print('O primeiro nome é', primeiro)
    print('O segundo nome é', segundo)
    print('O terceiro nome é', terceiro)

nomes('Gabriel','Danny','Arthur') # Vale citar que nesse caso a ordem é mantida

# Modelo alterando a sequencia dos argumentos, através da sintaxe chave-valor
print('Modelo alterando a sequencia da sintaxe chave-valor da FUNCAO')
nomes(terceiro='Danny', primeiro='Arthur',segundo='Gabriel') # Neste caso a chave foi utilizada para remanejar a sequencia de exibição

# Caso não saiba a quantidade de parametros de uma função, para reordenar é preciso utilizar dois **
def nomeCompleto(**nome): # Nesta função não é possível saber quantos serão os parametros de entrada, por que a pessoa pode ter nome, sobrenome ou mais de um sobrenome
    print(nome) # criando dessa forma um dicionário
    for x in nome.values(): # Utilizando esse FOR é realizada a remoção da chave e exibido apenas o valor do dicionário
        print(x)
nomeCompleto(pri='Gabriel',seg='Silva',ter='Santos')