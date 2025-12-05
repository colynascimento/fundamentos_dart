// Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.

import 'dart:io';

class Multiplicador {
  int numero;

  Multiplicador({required this.numero});

  int calcularDobro() {
    return numero * 2;
  }

  int calcularTriplo() {
    return numero * 3;
  }

  void exibirDobroETriplo() {
    print('$numero × 2 = ${calcularDobro()}');
    print('$numero × 3 = ${calcularTriplo()}\n');
  }
}

void main() {
  stdout.write('Digite o número: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null) {
    print('Por favor, digite apenas números inteiros.');
    return;
  }

  Multiplicador num = Multiplicador(numero: n);

  print('_' * 50);
  num.exibirDobroETriplo();
}
