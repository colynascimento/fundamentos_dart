// Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua velocidade a cada segundo até o tempo informado.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

void main() async {
  print('-' * 70);
  stdout.write('Digite o tempo em segundos: ');
  double? tempo = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite a aceleração constante (m/s²): ');
  double? aceleracaoConstante = double.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeDouble(tempo) ||
      !verificadorDeDouble(aceleracaoConstante)) {
    print('Por favor, insira apenas números.');
    return;
  }

  print('');

  for (double i = 1; i <= tempo!; i++) {
    double velocidade = i * aceleracaoConstante!;
    print('No segundo ${i.toStringAsFixed(0)}: ${velocidade.toStringAsFixed(1)}');
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
