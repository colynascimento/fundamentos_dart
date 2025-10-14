// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira um número inteiro: ');
    int? numero = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(numero)) {
        print('Por favor, insira apenas números.');
        return;
    }

    int antecessor = numero! - 1;
    int sucessor = numero! + 1;

    print('\n O número é $numero.');
    print('Seu antecessor é $antecessor.');
    print('Seu sucessor é $sucessor.\n');

    await finalizarPrograma();
}