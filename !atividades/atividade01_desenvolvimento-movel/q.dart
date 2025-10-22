// Faça um programa para calcular o IMC COMPLETO de uma pessoa.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Entre com o seu peso em kg: ');
    double? peso = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Entre com sua altura em metros: ');
    double? altura = double.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeDouble(peso) || !verificadorDeDouble(altura)) {
        print('Por favor, insira apenas números.');
        return;
    }

    double imc = peso! / (altura! * altura!);

    print('-' * 70);
    print('Seu IMC é ${imc.toStringAsFixed(2)}');

    print('');
    await finalizarPrograma();
}