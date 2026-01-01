# Estruturas condicionais: IF, ELSE e ELIF
# Retornam resultados booleanos que levam a determinados conjuntos de código, servindo como tomada de decisão.
# É importante ter clareza ao aplicar a estrutura condicional

#Exemplo 1
a = 33
b = 200

# Estrutura condicional IF
if b > a: # Formato de escrita de estrutura condicional IF
    print('B é maior que a') # Atenção com a indentação
else:
    print('Fim do programa')

# Comando Elif
# Funciona como uma terceira opção de verificação
if a > b: # Esta verificação é executada, mas não é acessada por não ser verdadeira, o programa pula para a próxima regra
    print('A é maior que A')
elif b!=a: # Esta condição é verificada e executada por ser verdadeira
    print('Sim, B é diferente de A.')
else:
    print('B é maior que A')

# O comando ELIF atua como um SWITCH, para executar a verificação de uma série de condições
# ELSE é literalmente a forma de tratar a exceção, caso não atenda nenhuma das condições elaboradas.