# Declaração de passagem nos loops
# O comando PASS é usado para cobrir lacuna nos loops sem gerar erros
# Usado para interações vazias

print('Início')
for x in [0,1,2]:
   pass # Ao adicionar PASS no meio do código ele ignorou o erro em relação ao comando for e fez as outras execuções
print('Fim')