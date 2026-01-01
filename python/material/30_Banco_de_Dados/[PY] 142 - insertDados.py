import psycopg2
### from psycopg2 import sql

def connect_to_postgresql ():
    
    config={
    'host':'localhost',
    'port': '5432',
    'database': 'postgresql',
    'user':'postgres',
    'password': 'K9p5au8naa.'
    
}

nome = 'Jose'
idade = 20

insert_query = """
insert into teste (nome,idade)
values (%s,%s)
"""
try:
    connection=psycopg2.connect(**connect_to_postgresql)
    cursor = connection.cursor()
    
    cursor.execute(insert_query,(nome,idade))
    connection.commit()
    print('Valores inseridos com sucesso')

    cursor.close()
    connection.close()

except psycopg2.Error as e:
    print(f'Erro ao inserir os valores:{e}')