// Sequência de potências: Faça um programa que receba um número inteiro N
// e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).

import 'dart:io';
import 'dart:math';
import 'utils/firulas.dart';
import 'utils/validacoes.dart';

void main() async {
  print('-' * 70);
  stdout.write('Digite um número:');
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeNum(n)) {
    print('Por favor, insira apenas números inteiros.');
    return;
  }

  print('');
  for (double i = 0; i <= n!; i++) {
    num potencia = pow(2, i);
    print('2^${i.toStringAsFixed(0)} = ${potencia.toStringAsFixed(0)}');
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
