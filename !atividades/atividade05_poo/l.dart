// Faça um algoritmo que leia dois valores inteiros A e B. Se os valores forem
// iguais deverá somar os dois, caso contrário multiplique A por B. Ao final de
// qualquer um dos cálculos deve-se atribuir o resultado para uma variável C e
// mostrar seu conteúdo na tela.

import 'dart:io';

class Algoritmo {
  int a;
  int b;
  int c;

  Algoritmo({required this.a, required this.b, this.c = 0});

  int calcularValoresIguais() {
    return a + b;
  }

  int calcularValoresDiferentes() {
    return a * b;
  }

  int calcularResultado() {
    if (a == b) {
      c = calcularValoresIguais();
    } else {
      c = calcularValoresDiferentes();
    }
    return c;
  }

  void exibirResultado() {
    print('--- ALGORITMO ---');
    print('O valor de C é ${calcularResultado()}\n');
  }
}

void main() {
  stdout.write('Digite o valor de A: ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o valor de B: ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null) {
    print('Por favor, digite apenas números inteiros.');
    return;
  }

  Algoritmo algoritmo = Algoritmo(a: a, b: b);
  print('_' * 50);
  algoritmo.exibirResultado();
}
