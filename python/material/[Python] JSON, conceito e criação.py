# JSON é uma sintaxe para armazenamento e troca de dados.
# É escrito com notação de Java Script
# Extraindo dados e convertendo dados JSON para Python e vice versa

# Importando o módulo JSON
import json

# Formato parecido com o Dictionary
# Formato:  Chave : Valor
#->   {'Nome':'Gabriel', 'idade':36,'Cidade':'São Paulo'}    <- # Este é o formato de uma string JSON

# Modelo de conversão da String formato JSON para Python
print('Modelo de conversão da string Json para Python.')
# 1 - Adicionar aspas na informação JSON e atribui-la a uma variável
x = '{"Nome":"Gabriel", "idade":36,"Cidade":"São Paulo"}'  ## Sempre ter atenção em relação as aspas, INTERNAMENTE ASPAS DUPLAS e EXTERNAMENTE ASPAS SIMPLES
# 2 - Utilizando o metodo LOADS do módulo JSON é possível converter a informação em um DICIONÁRIO
y = json.loads(x) # Realiza o carregamento da STRING JSON e converte para o formato DICIONÁRIO

print('Resultado convertido para dicionário:',y)
print(type(y))
print('Fim de execução do modelo.\n')

# Modelo de extração de cada dado das chaves
# Lembrando que tem que ser feito individualmente, podendo ser feito utilizando Loop for
print('Modelo de extração de cada dado das chaves.')
print(y['Nome'])
print(y['idade'])
print(y['Cidade'])

# Modelo de extração dos nomes das chaves usando Loop for
for z in y:
    print(z)



