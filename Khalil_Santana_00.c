// Disciplina: Arquitetura de Computadores
// Atividade: Avaliação 01 - Programação em Linguagem de Montagem
// Alunos: Khalil Santana
// Objetivo: Calculo do Máximo Divisor Comum (C)

#include <stdio.h>
#include <stdlib.h>

int proc_mdc(int x, int y) {
  while (x != y)  {
    if (x < y)
      y = y - x;
    else
      x = x - y;
  }
  return x;
}
int main(int argc, char *argv[]) {
  if (argc != 3) {
    fprintf(stderr, "Usage: %s <integer> <integer>\n", argv[0]);
    return EXIT_FAILURE;
  }

  int x = atoi(argv[1]);
  int y = atoi(argv[2]);
  printf("Input integers: (%d,%d)\n", x, y);
  x = proc_mdc(x, y);
  printf("Output: %d\n", x);
  return x;
}
