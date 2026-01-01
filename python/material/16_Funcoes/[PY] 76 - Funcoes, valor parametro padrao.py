# Valor de parametros padrão
# É um valor que será utilizado pela função caso o usuáriuo não insira aquele parametro

# Modelo de função com parâmetro
print('Modelo de função com parametro') 
def myFunction(pais): #parametro, pais
    print('Eu sou do', pais) # ao inserir o valor na função irá substituir a informação do parâmetro
myFunction('Brasil') # Neste caso foi preenchido com o valor Brasil
print('Fim da execução do modelo.\n')

# Modelo de função com parametro, mas sem preenchimento
print('Modelo de criação de função com preenchimento padrão em caso de em branco')
def getNomes(nomes = 'em branco'): # Funcao que recebe o parametro nomes recebe por padrão o valor em branco
    print('Meu nome é', nomes) # Realiza esse print substituindo o parametro pelo valor respondido
getNomes()
print('Fim da execução do modelo.\n')