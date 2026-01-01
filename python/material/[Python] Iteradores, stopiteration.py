# Conceito de Stop iteration
# Age como um break ou parte do processo de termino de loop


# A classe MeusNumeros contem o procedimento realizado implicitamente no LOOP FOR
class MeusNumeros:
    ## ESTE É O CÓDIGO DO COMANDO ITER
    def __iter__(self):
        self.a=1
        return self
    ## ESTE É O CÓDIGO DO COMANDO NEXT
    def __next__(self):
        if self.a <=20: # LIMITA A QUANTIDADDE DE EXECUÇÕES A ATÉ 20 EXECUÇÕES
            x=self.a
            self.a+=1
            return x
        else:
            raise StopIteration # COMANDO APÓS AS 20 EXECUÇÕES.
    
myClass = MeusNumeros()
myIter = iter(myClass)
