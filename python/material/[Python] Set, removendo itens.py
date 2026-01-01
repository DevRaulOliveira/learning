# Removendo itens de uma coleção tipo set
set1 = {'Gabes', 'Danny', 'Arthur'}
print('Coleção de itens original do tipo set: \n',set1)

# Removendo itens de uma coleção tipo set com o metodo remove
print('\nUtilizando o metodo remove para a remoção de itens de uma coleção tipo set\n')
set1.remove('Danny') #Metodo de remoção de iten # Pode ser removido apenas um item por vez
print('Após a utilização do metodo remove para remover o nome Danny a coleção set ficou:\n',set1)

# Adicionando o item novamente
set1.add('Danny') # Adicionando o item novamente para continuar os exercícios # Pode ser adicionado apenas um item por vez

# Metodo DISCARD
set1.discard('Pedro') # O discard não exibe erro quando não encontrar a string desejada, com isso o código continua funcionando sem apresentar erro
print('\nUtilizando o metodo discard, que não apresenta erro quando não encontra a variável e o código continua rodando normalmente \n', set1)

# Metodo POP
# Obrigatóriamente remove o ultimo item da coleção set, com isso por ser uma coleção randomica, pode remover qualquer item
print('\n Metodo Pop')
print('\nUtilizando o metodo pop, os nomes que restaram foi:\n',set1.pop()) # Sempre manter a parte de dentro do pop em branco

# Metodo Clear, realiza a limpeza de dados dentro da coleção set, porém não apaga a coleção set 
print('\n Metodo Clear\n')
set1.clear()
print('A utilização do metodo clear realiza a limpeza de todos os itens da coleção de dados set, mas não apaga a coleção, retornando apenas o metodo construtor:\n', set1)

# Utilizando o comando del para apagar a lista de fato
del set1
print('Utilizando o comando del para apagar definitivamente a coleção set, retornando sempre erro por ter de fato deletado o item',set1) # Neste ponto a coleção set não existe mais


# NOTA IMPORTANTE, QUANDO O POP É UTILIZANDO EM LISTAS OU TUPLAS QUE SÃO ORDENADAS É POSSÍVEL UTILIZAR O INDICE PARA REMOÇÃO DE UM DETERMINADO ITEM
# Na coleção de dados set ele da erro se for indicado o indice
print('\nInformações extras')
a= ['a','b','c','d']
print('\nLISTA de dados original, antes do teste do metodo pop\n',a )
b= a.pop(0)
print('\nUtilizando o metodo pop em listas para realizar a remoção de um item em um indice específico, neste caso o item no indice 0:\n',a)

