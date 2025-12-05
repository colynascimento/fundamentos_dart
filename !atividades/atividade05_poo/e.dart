// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.

import 'dart:io';

class Numeral {
  int numero;

  Numeral({required this.numero});

  int obterAntecessor() {
    return numero - 1;
  }

  int obterSucessor() {
    return numero + 1;
  }

  void exibirAntecessorESucessor() {
    print('O número é $numero');
    print('O antecessor é ${obterAntecessor()}');
    print('O sucessor é ${obterSucessor()}\n');
  }
}

void main() {
  while (true) {
    stdout.write('Digite o número: ');
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    if (n == null) {
      print('Por favor, digite apenas números inteiros.');
      continue;
    }

    Numeral num = Numeral(numero: n);

    print('-' * 50);
    num.exibirAntecessorESucessor();

    break;
  }
}
