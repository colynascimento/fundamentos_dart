// Determinação do maior divisor comum (MDC): Faça um programa que receba dois números inteiros
// e calcule o MDC usando o algoritmo de Euclides com repetição.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

void main() async {
  print('-' * 70);
  stdout.write('Insira o primeiro número: ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('\nInsira o segundo número: ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeNum(a) || !verificadorDeNum(b)) {
    print('Por favor, insira apenas números inteiros positivos.');
    return;
  }

  // garantindo que a e b não são nulos para não gerar erro lógico
  int numA = a!;
  int numB = b!; 
  int resto = 1; 

  while (resto != 0) {
    resto = numA % numB; 
    numA = numB;
    numB = resto;
  }

  print('');
  print('O Máximo Divisor Comum (MDC) de $a e $b é $numA;');

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
