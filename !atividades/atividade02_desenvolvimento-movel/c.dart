// Soma dos múltiplos: Faça um programa que receba um número inteiro N
// e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

import 'dart:io';
import 'utils/firulas.dart';

Future<void> main() async {
  stdout.write('Insira um número: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null) {
    print('Por favor, insira apenas números.');
    return;
  } else if (n <= 0) {
    print('Por favor, insira um número maior que zero.');
    return;
  }

  int soma = 0;

  for (int i = 0; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }

  print('A soma dos múltiplos de 3 ou 5 menores que $n é: $soma');

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
