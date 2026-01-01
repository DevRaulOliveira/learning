# Excluindo arquivos
# Para realizar a exclusão é preciso importar um modulo do sistema operacional

import os

import shutil  # Usado para realizar ações em uma arvore de arquivos

# shutil.rmtree ## Remove uma arvore de arquivos  


# Modelo de exclusão de arquivo utilizando REMOVE
# os.remove('C:\\Users\\Raul\\Documents\\Novo.txt')

# Caso o arquivo já tenha sido excluido irá retornar Erro
# Exemplo de aplicação do metodo com a opção de tratamento de erros na exclusão
# print('Modelo de tratamento de erros durante a exclusão de arquivos')
# if os.path.exists('C:\\Users\\Raul\\Documents\\Novo.txt'): # Verificando se o arquivo existe
#     os.remove('C:\\Users\\Raul\\Documents\\Novo1.txt')
# else:
#     print('O arquivo não existe.')
# print('Fim de execução do modelo.')

# Exclusão de pasta
# print('Modelo de exclusão de pasta')
# os.rmdir('Nome da pasta')