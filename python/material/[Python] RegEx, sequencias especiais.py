# Sequencias especiais
# São caracteres de escape.
# A estrutura consiste em "\" junto com algum caractere
# r antes do caractere especial é para garantir que a string está sendo tratada como uma "string bruta"
# Caracteres maiusculos, verficam a NÃO OCORRENCIA de resultados
import re

# Texto de exemplo
beg = 'Texto de exemplo desse modelo ->'
fim = 'Fim de execucao do modelo.\n'

txt = 'Olá mundo!'
txt2 = 'O calor do motor da moto'
txt3 = 'O calor do motor da moto dos pastores'

# \A Retorna uma correspondência se os caracteres especificados estiverem no início da string
print('Modelo de uso do "\A"')
print(beg,txt)
print('Verificando se o objeto txt começa com "Olá"',re.findall('\AOlá',txt))
print(fim)

# \b Retorna se o caracter especificado está no início de uma palavra, pode ser posicionado no incio ou no final
# A estrutura é r'\btor', quando quer verificar o início ou r'ror\b' vefifica se está no final
print('\nModelo de uso do "\ b"')
print(beg,txt2)
# Verificando se tor está no inicio de alguma palavra do texto
print(f'Usando "\ b" para verfifcar se tem alguma ocorrencia de "tor" no inicio temos:{re.findall(r"\btor",txt2)}\
      \nJá ao verificar a ocorrencia no final, temos:{re.findall(r"tor\b",txt2)}')
print(fim)

# \B Verifica se a ocorrencia acontece em qualquer lugar diferente do começo e se acontece em qualquer lugar do fim, basta colocar \B no final da string
print('Modelo de uso do "\ B"')
print(beg,txt3)
print(f'Verificando se acontece alguma aparicao de "tor" em qualquer lugar menos no início utilizando "\ B", temos: {re.findall(r"\Btor",txt3)}\
      \nJá no final acontece: {re.findall(r"tor\B",txt3)}')
print(fim)

# \d Verifica a ocorrencia de caracteres numéricos ou digitos de 0-9 na string 
print('Modelo de uso do "\ d"')
print(beg,txt2)
print(f'Verificando a ocorrencia de algum digito na string, e temos como resultado {re.findall("\d",txt2)}, por que a string não contem digitos!')
print(fim)

# \s Verifica os espaços entre os caracteres.O oposto \S verifica a não ocorrencia
print('Modelo de uso do "\ s"')
print(beg,txt2)
print(f'Verificando a quantidade de espaços entre as palavras utilizandso "\ s", temos{re.findall("\s",txt2)}, retornando 5 resultados!')
print(fim)

# \w Verifica a existencia de caracteres alfanumericos, ou seja numeros, letras e _. \W realiza o oposto.
print('Modelo de uso de "\ w"')
print(beg,txt2)
print(f'Verificando os caracteres existentes utilizando "\ w", temos: {re.findall('\w',txt2)}, retornando todos os caracteres!')
print(fim)

# \z Verifica a ocorrencia dos caracteres especificados. \Z verifica a não ocorrencia
print('Modelo de uso de "\ Z".')
print(beg,txt2)
print(f'Verificando a ocorrencia de "moto" com "\ z" no final do objeto: {re.findall("moto\Z",txt2)}. Sim termina com moto!')
print(fim)