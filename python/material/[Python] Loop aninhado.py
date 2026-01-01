# Loops aninhados
# São loops dentro de loops
 
nomes = ['Gabriel', 'Danny', 'Arthur']
sobrenome = ['Silva', 'Santos']

# Utilizando loop FOR
print('Utilizando o processo de aninhamento com FOR temos:')
for x in nomes: # Para cada nome que encontrar
    for y in sobrenome: # Para cada sobre nome que encontrar
        print(x,y) # Exiba nome e sobre nome
print('Neste caso ocoreu a junção apenas do nome e sobrenome.\nFim do programa.\n')
# Exemplo:
# A primeira execução começa com o nome Gabriel, no segundo for com o sobrenome Silva e vai imprimir
# A segunda execução começa com Gabriel, porém desta vez vai imprir com o sobrenome Santos


# # Utilizando para completar o nome tem um passo a mais
# # Após o segundo for é adicionado a soma
# x = x + '' + y # Desta forma ocorrem todas as interações do grupo interno
# print(x) # Desta forma é impresso o nome + sobrenome + sobrenome