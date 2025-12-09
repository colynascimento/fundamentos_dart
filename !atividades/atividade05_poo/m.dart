// Faça um programa para encontrar o dobro de um número caso ele seja positivo
// e o seu triplo caso seja negativo, imprimindo o resultado.

import 'dart:io';

class Algoritmo {
  int numero;
  int resultado;

  Algoritmo({required this.numero, this.resultado = 1});

  int calcularPositivo() {
    return numero * 2;
  }

  int calcularNegativo() {
    return numero * 3;
  }

  int calcularResultado() {
    if (numero > 0) {
      resultado = calcularPositivo();
    } else {
      resultado = calcularNegativo();
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
    print('Por favor, digite apenas números diferentes de zero.');
    return;
  }

  Algoritmo alg = Algoritmo(numero: num);
  print('_' * 50);
  alg.exibirResultado();
}
