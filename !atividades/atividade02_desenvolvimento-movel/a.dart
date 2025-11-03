// Números primos no intervalo: Faça um programa que receba dois números inteiros A e B
// e imprima todos os números primos entre A e B (inclusive).

import 'dart:io';
import 'utils/firulas.dart';

Future<void> main() async {
  stdout.write('Digite o valor de A: ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o valor de B: ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null) {
    print('Por favor, insira apenas números.');
    return;
  }

  List<dynamic> primos = [];

  for (int num = a; num <= b; num++) {
    if (num > 1) {
      bool isPrimo = true;
      for (int i = 2; i <= num ~/ 2; i++) {
        if (num % i == 0) {
          isPrimo = false;
          break;
        }
      }
      if (isPrimo) {
        primos.add(num);
      }
    }
  }

  print('Números primos entre $a e $b: $primos');

  while (true) {
    print('');
    stdout.write('Deseja finalizar o programa? (s/n) ');

    String? finalizar = stdin.readLineSync() ?? '';

    if (finalizar.toLowerCase() == 's') {
      break;
    } else if (finalizar.toLowerCase() == 'n') {
      main();
    } else {
      print('Por favor, digite apenas s ou n.');
    }
  }

  print('');
  await finalizarPrograma();
}
