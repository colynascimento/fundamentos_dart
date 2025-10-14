// Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira um número: ');
    int? numero = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeInteiro(numero)) {
        print('Por favor, insira apenas números.');
        return;
    }

    if (numero! == 0) {
        print('\nO número $numero não é par nem ímpar.');
    } else if (verificadorDePar(numero)) {
        print('\nO número $numero é par.');
    } else {
        print('\n o número $numero é ímpar.');
    }

    print('');
    await finalizarPrograma();
}