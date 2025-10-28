// Resfriamento de um líquido: Faça um programa que simule o resfriamento de um líquido
// a partir de uma temperatura inicial até atingir a temperatura ambiente (25°C).
// A cada segundo, a temperatura diminui 2%. Imprima a temperatura a cada segundo.

import 'dart:io';
import 'dart:async';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

void main() async {
  print('-' * 70);
  stdout.write('Insira a temperatura do líquido a ser resfriado: ');
  double? temperaturaInicial = double.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeDouble(temperaturaInicial)) {
    print('Por favor, insira apenas números.');
    return;
  }

  double temperatura = temperaturaInicial!;
  if (temperaturaInicial! <= 25) {
    print('O líquido já está resfriado!');
  } else {
    print('Iniciando o processo de resfriamento');

    while (temperatura > 25) {
      await Future.delayed(Duration(seconds: 1));

      temperatura = temperatura - temperaturaInicial * 0.02;
      print('Temperatura atual: ${temperatura.toStringAsFixed(1)}°C');
    }
  }

  print('Resfriamento completo!');

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
