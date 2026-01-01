# Criando um objeto iterador em Python
# É price implementar os metodo iter e next
# Todas as classes possuem uma função de chamada int
# O metodo iter permite a realização de operações mas deve retornar o próprio objeto iterador
# O next também permite interações mas deve retornar o próximo objeto da sequencia

class MeusNumeros:
    def __iter__(self):
        self.a = 1 # Realiza operação no objeto atual da sequencia
        return self
    def __next__(self):
        x = self.a # retorna O valor atual ## após a icrementação avança para o próximo
        self.a+=1  # Incrementa o objeto atual para permitir que o next imprima o próximo objeto    
        return x 

myClass = MeusNumeros()
myIter = iter(myClass)

print(next(myClass))
print(next(myClass))
print(next(myClass))
print(next(myClass))
print(next(myClass))