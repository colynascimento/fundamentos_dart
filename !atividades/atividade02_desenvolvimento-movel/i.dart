// Classificação de ângulos: Faça um programa que receba um ângulo em graus
// e classifique-o como agudo (<90°), reto (90°), obtuso (>90° e <180°) ou rente (180°).

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

void main() async {
  print('-' * 70);
  stdout.write('Insira o ângulo (em graus): ');
  int? angulo = int.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeNum(angulo)) {
    print('Por favor, insira apenas números.');
    return;
  }

  print('');
  if (angulo == 180) {
    print('O ângulo $angulo classifica-se como um ângulo raso.');
  } else if (180 > angulo! && angulo! > 90) {
    print('O ângulo $angulo classifica-se como um ângulo obtuso.');
  } else if (angulo! == 90) {
    print('O ângulo $angulo classifica-se como um ângulo reto.');
  } else if (90 > angulo! && angulo! > 0) {
    print('O ângulo $angulo classifica-se como um ângulo agudo');
  } else {
    print('O ângulo inserido é inválido.');
    print('São aceitos apenas valores de 1 a 180.');
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
