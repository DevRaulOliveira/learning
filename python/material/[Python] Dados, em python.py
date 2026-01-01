# Banco de dados Conecatado ao DynamoDB
import boto3


dynamodb = boto3.resource('dynamodb', region_name ='sa-east-1')


# FUNCAO DE CRIACAO DE TABELA
def createTabela():
    tabela = dynamodb.create_table(
    TableName = 'feriado',
    KeySchema=[
        {
            'AttributeName': 'ID',
            'KeyType': 'HASH'
        }
    ],
    AtTributeDefinitions =[
        {
            'AttributeName': 'ID',
            'AttributeType': 'S'
        }
    ],
    ProvisionedTroughput={
            'ReadCapacityUnits': 5,
            'WriteCapacityUnits': 5
        }
    )
    tabela.wait_until_exists()
    print('Tabela criada com sucesso.')

#FUNCAO INSERIR ITEM NA TABELA
def putItem():
    tabela= dynamodb.Table('feriado'),
    tabela.put_item(
        Item={
            'ID': '123',
            'Nome':'Exemplo',
            'Desc':'Exemplo desc'

        }
    )
    print('Item inserido com sucesso')

def getItem():
    tabela = dynamodb.Table('feriado')
    response = tabela.get_item(
        Key={
            'ID':'123'
        }  
    )
    item = response.get('Item')
    print('Item recuperado',item)

createTabela()
putItem()
getItem()   