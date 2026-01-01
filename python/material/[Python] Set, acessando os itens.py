# Como acessar os itens de uma coleção de ados set

set1 = {'Pedro', 'José', 'Maria'}
print(set1)

# O acesso do item é feito utilizando o for
for s in set1: # Atribui cada item do set a variável s e exibe, a execução é feita até terminar a coleção
    print(s) # Não é possível acessar o item pelo indice #
print('Fim da execução\n')
# Verificando se um determinado item está na coleç~çao set
print('Verificando se um item está na coleção set usando o nome do item para verificar')
if 'Maria' in set1:
    print('O nome existe na coleção.\n')
else:
    print('O nome não está presente na coleção.\n')
print('Fim da execução.')