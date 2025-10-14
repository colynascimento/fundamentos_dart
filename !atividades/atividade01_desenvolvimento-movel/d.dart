// Faça um programa que peça 4 notas com entrada de dados. 
// O programa deverá calcular a média das notas digitadas.

import 'dart:io';
import 'utils/firulas.dart';
import 'utils/validacoes.dart';

Future<void> main() async {
    stdout.write('Insira a 1ª nota: ');
    int? nota1 = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Insira a 2ª nota: ');
    int? nota2 = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Insira a 3ª nota: ');
    int? nota3 = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Insira a 4ª nota: ');
    int? nota4 = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(nota1) || !verificadorDeNum(nota2) || 
    !verificadorDeNum(nota3) || !verificadorDeNum(nota4)) {
        print('\nPor favor, digite apenas números.');
        return;
    }

    double media = (nota1! + nota2! + nota3! + nota4!) / 4;

    print('\nA média das notas é ${media.toStringAsFixed(2)}');

    await finalizarPrograma();
}