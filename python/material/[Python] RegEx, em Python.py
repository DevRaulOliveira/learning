# RegEx
# Esse conceito serve para verificar se existe um padrão de pesquisa especificado
# Existe um pacote imbutido de RE
# RE - Significa Regular Expressions

# MODELO DE UTILIZAÇÃO DE REGEX

import re

txt='O Gabriel amigo do Miguel'

# Realizando a pesquisa de: Verificar se a string começã com 'O'  e termina com 'Miguel"

# Utilizando o metodo Search, retorna um objeto de regular expression que irá conter alguns dados
# Sua aplicação pode ser feita também para conseguir resultados verdadeiro ou falso

a = re.search("^O.*Miguel$",txt) ## Modelo de escrita de pesquisa de RE ## Verifica se está correto a pesquisa

# Explicando os caracteres de Regular expression
    # ^ -> Verifica se começa com
    # . -> Qualquer caracteres na sequencia MENOS QUEBRA DE LINHA
    # * -> 0 ou mais ocorrencias 
    # $ -> Verifica se termina com

if a: # Se atender as expectativas, imprima
    print('Sim, temos uma correspondencia!')
# Se não    
else:('Nenhuma correspondencia')