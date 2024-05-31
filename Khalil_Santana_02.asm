# Disciplina: Arquitetura de Computadores
# Atividade: Avaliação 01 - Programação em Linguagem de Montagem
# Alunos: Khalil Santana
# Objetivo: Calculo do Máximo Divisor Comum (Assembly Intermediario)

    .text               # segmento de código (programa)

main:
# Prompt X
    addi   a0, x0, 1    # 1 = StdOut
    la     a1, ins_x    # load address of string
    addi   a2, x0, 22   # length of our string
    addi   a7, x0, 64   # write system call
    ecall               # Call to output the string
# Read integer
    li     a7, 5        # select read integer syscal
    ecall               # Call read integer
    mv     s1, a0       # Set X=(user input)
# Prompt Y
    addi   a0, x0, 1    # 1 = StdOut
    la     a1, ins_y    # load address of string
    addi   a2, x0, 22   # length of our string
    addi   a7, x0, 64   # write system call
    ecall               # Call to output the string
# Read integer
    li     a7, 5        # select read integer syscal
    ecall               # Call read integer
    mv     s2, a0       # Set Y=(user input)
while:
    beq    s1, s2, exit # while(x!=y)
    bgeu   s1, s2, else # if Y>=X -> run else branch
    sub    s2, s2, s1   # Y = Y - X;
    j      while        # loop to while
else:
    sub    s1, s1, s2   # X = X - Y
    j      while        # loop to while
exit:
    addi   a0, x0, 1    # 1 = StdOut
    la     a1, res_x    # load address of string
    addi   a2, x0, 16   # length of our string
    addi   a7, x0, 64   # write system call
    ecall               # Call to output the string
    li     a7, 1        # service 1 is print integer
    mv     a0, s1       # Select register to print (X)
    ecall
    ebreak
    .data
ins_x:
    .asciz "Insira o valor de X: "
ins_y:
    .asciz "Insira o valor de Y: "
res_x:
    .asciz "O resultado eh: "