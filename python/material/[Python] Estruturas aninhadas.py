# Estruturas condicionais aninhadas
# Sendo uma estrutura de tomada de decisão

x = 41

if x > 10: # Esta condição sendo verdadeira é realizado o acesso ao bloco de código ## De acordo com a quantiade de blocos a quantiade de instruções aumentam
    print('O valor é maior do que 10') # Primeira instrução a ser executada no bloco caso o resultado seja true
    if x > 20: # Segunda verificação, acessada caso a primeira condição seja verdadeira ## Sempre acompanhar o bloco de indentação
        print('O valor é maior do que 20 também') 
    else:
        print('Mas o valor não é maior do que 20') # Esta segunda condição acontece apenas e for atendida a primeira porém não for atendida a segunda.
else:
    print( 'O valor é menor do que 10') # Esta condição é executada caso a primeira condição não seja atendida

# O grau de complexidade depende da quantidade de códigos que estão sob dependencia da mesma condição ser verdadeira
# Atenção ao estruturar a indentação
