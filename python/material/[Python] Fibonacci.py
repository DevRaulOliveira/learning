
##Leonardo Pisa ou Fibonacci foi o cientista que desenvolveu o calculo da sequencia numerica
## 0,1,1,2,3,5,8,13 que basicamente realiza a soma do numero atual com o anterior

def func_fibonacci(x):
    if x <=0:
        return 0
    if x==1:
        return 1
    else:
        return func_fibonacci(x-1) + func_fibonacci(x-2)
print (func_fibonacci(10)) ## Realiza fibonacci com o numero 10