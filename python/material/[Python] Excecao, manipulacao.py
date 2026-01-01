# Manipulação de exceções/erros de código
# Utilizando o TRY o programa tenta executar uma tarefa, porém ao encontrar erro, retorna uma mensagem/comando do bloco da exceção

# Modelo de uso do Bloco TRY/Except para tratamento de erros

try: # Tenta executar o comando desse bloco

    print(x)
except: # Caso apresente erro no bloco anterior, é executado o bloco abaixo
    print('Aconteceu uma exceção!')
