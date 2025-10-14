// Faça um programa que receba e divida 2 números.
// A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira o dividendo: ');
    int? dividendo = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Insira o divisor: ');
    int? divisor = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(dividendo) || !verificadorDeNum(divisor)) {
        print('Por favor, insira apenas números.');
        return;
    }

    double resultado = dividendo! / divisor!;

    print('A divisão de $dividendo ÷ $divisor = ${resultado.toStringAsFixed(4)}');
}