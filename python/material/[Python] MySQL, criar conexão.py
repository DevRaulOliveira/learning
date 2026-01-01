# Como criar uma conexão entre o Python e o servidor MySQL
# As informações necessárias para conexão, são:
# 1 - O host de conexão, que é o endereço na Web Da base de Dados
# 2 - Nome de usuário
# 3 - Senha de usuário

# MySQL não é uma base de dados. É um servidor de base de dados

import mysql.connector

mydb = mysql.connector.connection(
    host="LocalPython",
    user ="teste",
    password='Abc123'
)

print(mydb)