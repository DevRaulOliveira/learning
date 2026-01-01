# # Modelo de leitura de arquivo
# # O passo a passo ficará abaixo

# # 1 - Execute o comando abaixo
# # open('NomedoArquivo.formato', 'r') # Lembrando que neste caso o arquivo está na mesma pasta do arquivo Python ## "r" = leitura

# # exemplo: f = open('notas.txt', 'r')

# # 2 - Apartir dai, ao chamarmos a variável que guardou arquivo, disponibiliza uma série de opções

# exemplo: print(f.read()) # Exibindo as informações do arquivo no terminal

# # 3 - Caso o arquivo tenha caracteres especiais, eles irão estar bugados e por isso precisam ser tratados
# # Neste caso a alteração deverá ser feita no open, alterando o tipo de codificação do arquivo
# # open('NomedoArquivo.formato', 'r', enconding ='UTF-8') # Encoding converte o arquivo para alguma codificação específica, neste caso a UTF-8 

# exemplo: f=open('notas.txt','r', encoding ='UTF-8')

# # Caso o arquivo esteja em outra pasta, é preciso adicionar o caminho do arquivo

# exemplo> i=open('c:\\teste\\notas.txt', 'r', encoding='UTF-8') # "c:"" é o diretório ## "teste" é a pasta ## É PRECISO ADICIONAR AS BARRAS INVERTIDAS DUPLAS
