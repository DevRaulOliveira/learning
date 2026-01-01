# Escopo de variáveis
# É referente ao local de atuação ou bloco de código que aquela variável tem um valor definido
# Esse escopo muda de acordo com o local do código que essa variável recebe algum valor ou comando
# Por exemplo: se uma variável recebe um determinado valor dentro de uma função, aquele valor recebido só é valido dentro da função
# Níveis inferiores acessam variáveis de níveis superiores
# Niveis SUPERIORES NÃO ACESSAM variáveis de níveis inferiores

print('Metodo de funcionamento de variáveis.')
def myFunction():
    x = 300 # O x só tem esse valor dentro da função, caso queira utilizar ela com esse valor eu preciso realizar a chamada da função
    # A atribuição do valor de uma variável só afeta a função do ponto em que ela foi criada adiante
    # Neste caso para acessar diretamente a variável x é preciso utilizar a função a seguir:
    def myInnerFunc(): # Função interna da função
        print(x) # Comando a ser executado pela função superior
    myInnerFunc() # retorno do valor da função

myFunction()
print('Fim da execução do modelo.\n')