# METACARACTERES
# Importando um conjunto de metacaracteres

import re
txt = 'O calor do motor da moto'

# [] Um conjunto de caracteres '[a-m]' -> Usado para a pesquisa de um conjunto de caracteres entre a letra 'a' e 'm'
print('Modelo de uso dos [] para busca de um conjunto de caracteres')
# Encontre todos os caracteres minusculos em ordem entre de aparição 'a' e 'm'
print('Frase exemplo:\n',txt)
x = re.findall('[a-m]',txt)
print('Usando [], para busca de conjunto, temos:',x,'\n')

# \ é utilizado como caracter especial, usado para caracteres de escape \d,\n,\b,\w,\s...
print('Modelo de uso do \d para encontrar digitos')
txt1 = 'Eu tenho 36 anos de idade'
print('Frase exemplo:\n',txt1)
z = re.findall('\d',txt1) # O caractere \d procura digitos no objeto
print('Usando o carcter especial \d, para encontrar digitos, temos:',z)
 
# . é utilizado para determinar um intervalo de alguma palavra que não seja especificado
# Procure uma sequencia de caracteres com 'mu..o' -> Se lê, sequencia de caracteres que comece com mu, tenha dois caracteres na sequencia e termine com o 
print('\nModelo usando o caractere especial "."')
txt2 = 'Olá mundo'
w = re.findall('mu..o',txt2)
print('Usando o caractere especial "." no intervalo entre caracteres temos:',w)

# ^ é o metacaractere que representa "Começa com"
# Verificando se a string começa com Olá, retornando uma lista se houver, do contrário lista vazia
# A aplicação não obrigatóriamente precisa ser um print, pode ser usado para criar uma regra ou condição
print('\nModelo de uso do "^"(Começa com).')
print('Verificando se a frase Olá mundo, começa com Olá',re.findall('^Olá',txt2)) 

# $ é o metacaractere que representa 'Termina com'
print('\nModelo de uso do "$"(Termina com).')
print('Verificando se a string termina com "mundo"',re.findall('mundo$',txt2))

# * ele retorna 0 ou mais correspondencias
# Verificando se a string contem "or" seguidos por 0 ou mais caracteres "x"
print('\nModelo de uso do "*"')
print('Verificando se existe 0 ou mais ocorrencias de "x" seguidos de "or":', re.findall('orx*',txt))
print('Neste caso retorna duas ocorrencias, por que tem duas palavras que terminam em "or" porém não são seguidos de nenhum carcter')

# + ele funciona da mesma forma que o anterior, porém ele verifica se de fato teve ocorrencia pois a regra é uma ou mais ocorrencias
# verifica na condição da informação ser seguida por 1 ou mais caracteres
print('\nModelo de uso "+"')
print('Verificando se existe um ou mais caracteres depois da ocorrencia', re.findall('orx+',txt))
print('Retorna uma lista vazia, por que das duas vezes que aparece "or", não há nenhum caractere na sequencia.')

# {} Verifica se ocorreu exatamente uma quentaidade determinada de ocorrencias neste caso "al{2}" ## situações que os objeto é seguido exatamente de dois caracteres
print('\nModelo de uso de chaves')
print('Verificando a ocorrencia de dois caracteres após "mo', re.findall('mo{2}', txt)) # Neste caso verificando se é seguido por dois "o"(moo) se fosse 1 "o" ficaria...
print('Verifican a ocorrencia de 1 caracteres após o m"o"', re.findall('mo{1}', txt)) # ou seja duas ocorrencias de palavras que contem a sequencia "mo"

# | significa "Ou" 
print('\nModelo de uso de "|"(Ou)')
print('Verificando se possui ou motor ou moto', re.findall('motor | moto',txt))
print('Fim da execução do modelo')