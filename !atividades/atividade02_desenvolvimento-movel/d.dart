// Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta.

import 'dart:io';
import 'utils/firulas.dart';

Future<void> main() async {
  stdout.write('Digite um ano para verificar se é bissexto:');
  int? ano = int.tryParse(stdin.readLineSync() ?? '');

  if (ano == null) {
    print('Entrada inválida. Por favor, insira um ano válido.');
    return;
  }

  bool isBissexto = (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0);

  if (isBissexto) {
    print('O ano $ano é bissexto.');
  } else {
    print('O ano $ano não é bissexto.');
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