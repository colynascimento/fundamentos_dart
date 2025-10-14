// Faça um programa que receba um valor em reais
// Depois calcule quantos euros, dólares e wons daria para comprar com esse valor.

// Cotação de 14/10/2025

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira um valor em reais: ');
    double? valor = double.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeDouble(valor)) {
        print('Por favor, insira apenas números.');
        print('O separador de centavos deve ser o . (ponto).');
        return;
    }

    double valorEmEuros = valor! * 0.16;
    double valorEmDolar = valor! * 0.18;
    double valorEmWon = valor! * 261.21;

    print('-' * 70);
    print('Conversor de Moedas');
    print('\nR\$${valor.toStringAsFixed(2)} equivale a:');
    print('Euro: €${valorEmEuros.toStringAsFixed(2)}');
    print('Dolar: \$${valorEmDolar.toStringAsFixed(2)}');
    print('Won: ₩${valorEmWon.toStringAsFixed(2)}');
    print('-' * 70);

    await finalizarPrograma();
}