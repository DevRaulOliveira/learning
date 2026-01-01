# ParÂmetros de função
# Funções com parametros de entrada podem ter inumeros parametros

# Modelo de função com mais de um parâmetro
print('Modelo de função com dois parametros def func(parametro1,parametros2).')
def nomeCompleto(nome,sobrenome): # Neste caso a função tem dois parametros, nome e sobrenome
    print(nome, sobrenome)
# É IMPORTANTE LEMBRAR QUE SE A FUNÇÃO POSSUI DOIS PARAMETROS DE ENTRADA, AO UTILIZA-LA SERÃO NECESSÁRIOS DUAS VARIÁVEIS
# Essa regra se aplica independente da quantidade de parametros que a função tiver
print('Neste caso sera impressa a função nomeCompleto(nome,sobrenome) que tem como parametros nome e sobrenome, resultando em:')
nomeCompleto('Gabriel','Artigas') # Caso sejam adicionados MAIS ou MENOS parametros do que a qtd definida na função irá dar erro.
print('Fim da execução do modelo.\n')

# Modelo de quando não se sabe a quantidade de parametros de uma função
print('Modelo de função usada quando não se sabe a quantidade de parametros, transformando a em tupla.')
def listaNomes(*nomes): # Neste caso é gerada uma tupla, com infinitos parâmetros
    print(nomes)
listaNomes('Gabriel','Danny','Arthur','Pedro') # Neste caso não há limites de variáveis.

# Modelo utilizando junto com o FOR para gerar resultados individualmente
print('Modelo de utilização de função com o comando FOR para gerar resultados individualmente.')
def listaMarcas(*marcas): # Coleção de marcas
    for x in marcas: # Atribui a x o resultado de cada marca da coleção
        print(x) # Exibe o nome da marca a cada passagem do Loop FOR

listaMarcas('BMW','Porsche','Ferrari','Mercedes') # Retorna as variáveis, seguindo o molde da função

print('Fim da execução do modelo.\n')