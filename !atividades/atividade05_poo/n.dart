// Faça um programa que leia uma variável e some 5 caso seja par ou some 8 caso
// seja ímpar, imprimir o resultado desta operação.

import 'dart:io';

class Algoritmo {
  int numero;
  int resultado;

  Algoritmo({required this.numero, this.resultado = 0});

  int calcularPar() {
    return numero + 5;
  }

  int calcularImpar() {
    return numero + 8;
  }

  int calcularResultado() {
    if (numero % 2 == 0) {
      resultado = calcularPar();
    } else {
      resultado = calcularImpar();
    }
    return resultado;
  }

  void exibirResultado() {
    print('--- ALGORITMO ---');
    print('O resultado é ${calcularResultado()}\n');
  }
}

void main() {
  stdout.write('Digite um número: ');
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num == null || num == 0) {
    print('Por favor, digite apenas números.');
    return;
  }

  Algoritmo alg = Algoritmo(numero: num);
  print('_' * 50);
  alg.exibirResultado();
}
