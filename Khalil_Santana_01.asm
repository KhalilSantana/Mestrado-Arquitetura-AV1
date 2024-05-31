# Disciplina: Arquitetura de Computadores
# Atividade: Avaliação 01 - Programação em Linguagem de Montagem
# Alunos: Khalil Santana
# Objetivo: Calculo do Máximo Divisor Comum (Assembly Básico)

       .text               # segmento de código (programa)

main:
       addi   s1, zero, 24 # X=
       addi   s2, zero, 18 # Y=
while:
       beq    s1, s2, exit # while(x!=y)
       bgeu   s1, s2, else # if Y>=X -> run else branch
       sub    s2, s2, s1   # Y = Y - X;
       j      while        # loop to while
else:
       sub    s1, s1, s2   # X = X - Y
       j      while        # loop to while
exit:
       ebreak