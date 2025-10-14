// Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira um número: ');
    int? numero = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(numero)) {
        print('Por favor, insira apenas números.');
        return;
    }

    int dobro = numero! * 2;
    int triplo = numero! * 3;

    print('\nO dobro de $numero é $dobro.');
    print('O triplo do mesmo número é $triplo.\n');

    await finalizarPrograma();
}