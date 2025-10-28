// Contagem regressiva: Faça um programa que receba um número inteiro positivo
// e faça uma contagem regressiva até zero, imprimindo cada número.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';
import 'dart:async';

void main() async {
  print('-' * 70);
  stdout.write('Insira um número: ');
  int? start = int.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeNum(start)) {
    print('Por favor, insira apenas números inteiro positivos.');
    return;
  }

  print('');
  for (int i = start!; i >= 0; i--) {
    print('$i');
    await Future.delayed(Duration(seconds: 1));
  }

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
