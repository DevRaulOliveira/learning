#Funções em Python
# Funções são blocos de códigos que são executados quando a função é mencionada no código.
# Parametros são as variáveis de dentro de uma função e argumentos os valores dessas variáveis

# Modelo de estruturação de função
print('Criando a primeira função com o metodo construtor DEF')
def myFunction(): # Metodo construtor de função
    print('Olá de dentro da função')
# Para uma função ser executada ela precisa ser chamada no código
myFunction()
print('Fim da execução do modelo.\n')

# Função com um parametro interno
print('Modelo de função com parâmetro o parametro interno, "nome".')
def cumprimenta(nome): # Quando esta função for referenciada ela irá pedir um parametro, neste caso 'nome'
    print('Olá', nome) # Parametro interno da função com o argumento.
cumprimenta('Raul') # Execução a função função e substitui o parametro "nome" pelo argumento "Raul".
cumprimenta('Danny') # Executa a função novamente, mas substituindo o parametro "nome" pelo argumento 'Danny'
print('Fim da execução do modelo.\n')

# Modelo de FUNÇÃO retornando um valor
print('Modelo de FUNÇÃO retornando um valor.')
def multiplica(x):
    return x*5 # Ao executar essa função será retornado o valor de 'x' multiplicado por 5 ## O RETURN define o que retornará da função.
multiplica(9) # Internamente o resultado da função multiplica se tornou 45

# Atribuindo o resultado da função a uma variável, temos
result = multiplica(9) # Nesta etapa o resultado 45 foi atribuido a uma variável
print(result) # Ao exibir a variável. exibe o valor da função ## Esse processo poderia ter sido realizado sem a atribuição a uma variável

# É IMPORTANTE CITAR QUE A FUNÇÃO EM SI NÃO SE COMUNICA COM AS VEZES QUE ELA FOI CHAMADA, FICANDO DO MESMO JEITO AO LONGO DO CÓDIGO /
# INDEPENDENTE DE QUANTAS VEZES FOR CHAMADA
