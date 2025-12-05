// Faça um programa que receba um número inteiro. O programa deverá imprimir tabuada de multiplicação deste número.
import 'dart:io';

class Multiplicador {
  int numero;

  Multiplicador({required this.numero});

  int multiplicarPor2() {
    return numero * 2;
  }

  int multiplicarPor3() {
    return numero * 3;
  }

  int multiplicarPor4() {
    return numero * 4;
  }

  int multiplicarPor5() {
    return numero * 5;
  }

  int multiplicarPor6() {
    return numero * 6;
  }

  int multiplicarPor7() {
    return numero * 7;
  }

  int multiplicarPor8() {
    return numero * 8;
  }

  int multiplicarPor9() {
    return numero * 9;
  }

  int multiplicarPor10() {
    return numero * 10;
  }

  void exibirTabuada() {
    print('--- TABUADA ---\n');
    print('$numero × 1 = $numero');
    print('$numero × 2 = ${multiplicarPor2()}');
    print('$numero × 3 = ${multiplicarPor3()}');
    print('$numero × 4 = ${multiplicarPor4()}');
    print('$numero × 5 = ${multiplicarPor5()}');
    print('$numero × 6 = ${multiplicarPor6()}');
    print('$numero × 7 = ${multiplicarPor7()}');
    print('$numero × 8 = ${multiplicarPor8()}');
    print('$numero × 9 = ${multiplicarPor9()}');
    print('$numero × 10 = ${multiplicarPor10()}\n');
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
  num.exibirTabuada();
}
