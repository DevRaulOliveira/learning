# Criando dicionários aninhados
# Cada chave contem um conjunto de chave e valor próprio
myFamily = { # Dicionário principal
    'filho1': {   # ATENÇÃO NA FORMATAÇÃO. 'Filho1 é a chave e o restante das informações são outro dicionário
        'Nome':'Lucas',
        'Ano':2001
    },
    'filho2': {   
        'Nome':'Lucas',
        'Ano':2001
    },
    'filho3': {   # ATENÇÃO NA LOGICA. Essa chave tem um outro conjunto de chave e valor
        'Nome':'Lucas',
        'Ano':2001
    }
}

# Modelo de referenciação de dicionário, contido em outros dicionáiros
# Primeiro crie os dicionários separadamente

filho4 = {
    'Nome':'José',
    'Ano' : 2002
}
filho5 = {
    'Nome':'Pedro',
    'Ano':1997
}

myFamily2 = { # Desta forma os atributos dos dicionários também estão inclusas
    'Filho4': filho4, # A chave filho4, contem as informações do dicionário filho4 
    'Filho5': filho5 # A chave filho5, contem as informações do dicionário filho5
}

print(myFamily)
print(myFamily2)
print('Termino de execução do modelo.')