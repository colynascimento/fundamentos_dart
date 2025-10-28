// Cálculo de velocidade média: Faça um programa que receba as distâncias percorridas
// a cada intervalo de tempo e calcule a velocidade média total do percurso.

import 'dart:io';
import 'utils/firulas.dart';
import 'utils/validacoes.dart';

void main() async {
  print('-' * 70);
  stdout.write('Insira a distância percorrida (m): ');
  double? distancia = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Insira o intervalo de tempo (s): ');
  double? tempo = double.tryParse(stdin.readLineSync() ?? '');

  if (!verificadorDeDouble(distancia) || !verificadorDeDouble(tempo)) {
    print('Por favor, insira apenas números.');
    return;
  }

  print('');
  double velocidade = distancia! / tempo!;

  print(
    'A velocidade média foi de ${velocidade.toStringAsFixed(2)}m/s no percurso.',
  );

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
