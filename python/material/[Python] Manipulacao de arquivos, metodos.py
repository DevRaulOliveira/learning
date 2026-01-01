# # Metodos de manipulação de arquivos

# # Modelo de uso do metodo read para especificar a quantidade de caracteres que deseja abrir do arquivo
# print('Modelo de leitura especificando a quantiade de caracteres a serem lidos.')
# f = open("C:\\Users\\Raul\\Documents\\teste.txt","r", encoding="UTF-8")
# print(f.read()) # O numero inserido dentro do read determina a quantiade de caracteres do arquivo que eu desejo ler
# print('Fim de execuação do modelo\n')

# # Modelo de READLINE, que realiza a leitura por linhas, sem especificar ele irá ler apenas a primeira linha, sendo interável e poendo ser atribuido a um loop for ou while
# print('Modelo de leitura "por linhas')
# print(f.readline()) # Neste caso o exemplo retorna em branco por que a leitrua já foi realizada anteriormente

# # Modelo de FECHAMENTO do arquivo utilizando CLOSE, para poupar recursos do sistema

# f.close()