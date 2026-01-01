# Declaração de passagem
# Atenção a sempre estar preenchendo as condições do código
# Instrução de passagem retira o erro do código caso o if esteja vazio
a = 50
b = 100

if b > a: 
    print('B é maior do que A') 
    if b > a:
        a+=60
        print(f'Novo valor de a: {a}')
        if b > a:
            print('B é maior do que A')
        else:
            pass
print('Fim do programa exemplo de comando pass executada')
        
