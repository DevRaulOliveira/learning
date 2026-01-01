
import psycopg2
from psycopg2 import sql

# Dados da conexão
host = "localhost"  # ou o endereço do servidor
database = "postgresql"
user = "postgres"
password = "K9p5au8naa.",
port: '5432'

try:
    # Estabelecendo a conexão
    conn = psycopg2.connect(
        host=host,
        database=database,
        user=user,
        password=password
    )
    print("Conexão estabelecida com sucesso!")

    # Criando um cursor para executar comandos SQL
    cursor = conn.cursor()

    # Testando com um comando SQL simples
    cursor.execute("SELECT version();")
    versao = cursor.fetchone()
    print("Versão do PostgreSQL:", versao)

except Exception as e:
    print("Erro ao conectar ao banco de dados:", e)

finally:
    # Fechando a conexão
    if conn:
        cursor.close()
        conn.close()
        print("Conexão encerrada.")