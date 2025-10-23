// Conversão de energia: Faça um programa que leia um valor em joules 
// e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.

import 'dart:io';

import '../atividade01_desenvolvimento-movel/utils/firulas.dart';
import '../atividade01_desenvolvimento-movel/utils/validacoes.dart';

void main() async{
  while (true) {
    print('');
    stdout.write('Digite o valor em joules: ');
    double? joules = double.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeDouble(joules)) {
      print('Por favor, insira apenas números.');
      continue;
    }

    double calorias = joules! / 4.184;
    print('$joules joules equivalem a $calorias calorias.');

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
    break;
  }

  print('');
  await finalizarPrograma();
}
