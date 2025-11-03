// Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop.

import 'dart:io';
import 'utils/firulas.dart';

Future<void> main() async {
  stdout.write('Insira um número positivo: ');
  int? numero = int.tryParse(stdin.readLineSync() ?? '');

  if (numero == null || numero < 0) {
    print('Por favor, insira apenas números positivos.');
    return;
  }

  int fatorial = 1;

  for (int i = 1; i <= numero!; i++) {
    fatorial *= i;
  }

  print('');
  print('O fatorial de $numero é $fatorial.');

  while (true) {
    print('');
    stdout.write('Deseja finalizar o programa? (s/n )');

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
