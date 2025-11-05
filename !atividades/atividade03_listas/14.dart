// 14. Análise Estatística Básica em Lista Numérica

// Dada uma lista de números inteiros, calcule o desvio padrão amostral de forma
// simplificada. O processo envolve:
//1) calcular a média;
//2) calcular a diferença entre cada número e a média, elevando ao quadrado;
//3) somar os resultados;
//4) dividir pela contagem de elementos menos 1;
//5) tirar a raiz quadrada do resultado.

import 'dart:math';

void main() {
  List<int> numeros = [121, 56, 60, 1, 140, 114, 135, 119, 90, 104];

  int soma1 = 0;
  numeros.forEach((n) => soma1 += n);
  double media = soma1 / numeros.length;

  double soma2 = 0;
  numeros.forEach((n) => soma2 += (n - media) * (n - media));

  double resultado = sqrt(soma2 / (numeros.length - 1));

  print(resultado);
}
