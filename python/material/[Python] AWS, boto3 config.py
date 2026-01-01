import boto3

try:
    dynamodb = boto3.client('dynamodb')
    response = dynamodb.list_tables()
    region = dynamodb.region_name('sa-east-1')
    print("Tabelas DynamoDB:", response['TableNames'])
except Exception as e:
    print("Erro ao acessar AWS:", e)
