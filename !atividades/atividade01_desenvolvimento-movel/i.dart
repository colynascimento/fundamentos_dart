// Faça um programa que receba um número inteiro.
// O programa deverá imprimir tabuada de multiplicação deste número

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira um numero inteiro: ');
    int? numero = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(numero)) {
        print('Por favor, digite apenas números.');
        return;
    }

    int x1 = numero! * 1;
    int x2 = numero! * 2;
    int x3 = numero! * 3;
    int x4 = numero! * 4;
    int x5 = numero! * 5;
    int x6 = numero! * 6;
    int x7 = numero! * 7;
    int x8 = numero! * 8;
    int x9 = numero! * 9;
    int x10 = numero! * 10;

    print('-' * 70);
    print('A tabuada de $numero');
    print('\n$numero × 0 = 0');
    print('$numero × 1 = $x1');
    print('$numero × 2 = $x2');
    print('$numero × 3 = $x3');
    print('$numero × 4 = $x4');
    print('$numero × 5 = $x5');
    print('$numero × 6 = $x6');
    print('$numero × 7 = $x7');
    print('$numero × 8 = $x8');
    print('$numero × 9 = $x9');
    print('$numero × 10 = $x10');
    print('-' * 70);

    await finalizarPrograma();
}