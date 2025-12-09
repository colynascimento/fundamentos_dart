// Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar.

import 'dart:io';

class Numero {
  int numero;

  Numero({required this.numero});

  bool verificadorPar() {
    if (numero % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  void exibirVerificacao() {
    print('--- VERIFICADOR DE NÚMEROS ---');
    if (verificadorPar()) {
      print('O número $numero é par.');
    } else {
      print('O número $numero é ímpar.\n');
    }
  }
}

void main() {
  stdout.write('Digite um número: ');
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num == null) {
    print('Por favor, digite apenas números inteiros.');
  }

  Numero n = Numero(numero: num!);

  print('_' * 50);
  n.exibirVerificacao();
}
