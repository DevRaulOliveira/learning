# Metodo SUB
# Utilizada para substituir as ocorrencias definidas por outras informações

import re
txt='O calor do motor da moto'
print('Modelo de uso do metodo SUB')
x = re.sub('\s','_',txt) # Formato re.sub('variável que deseja substituir','o que deseja usar no lugar,'obj',numero de vezes que deseja que ocorra a substituição) 
# Caso queira que ocorra a substituição todas as vezes não é preciso adicionar o ultimo dado
print('Substituindo \s por _ no objeto txt, temos:\n',x)
print('Fim de execução do modelo.')