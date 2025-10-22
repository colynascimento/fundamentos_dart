// Faça um programa para encontrar o dobro de um número caso ele seja 
// positivo e o seu triplo caso seja negativo, imprimindo o resultado.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async{
    stdout.write('Insira um número: ');
    int? valor = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(valor)) {
        print('Por favor, insira apenas números;');
        return;
    }

    print('');
    int resultado;

    if (valor! == 0) {
        print('O número $valor é neutro.');
    } else if (valor! > 0) {
        resultado = 2 * valor;
        print('O número $valor é positivo.');
        print('O dobro de $valor é $resultado.');
    } else if (valor! < 0) {
        resultado = 3 * valor;
        print('O número $valor é negativo.');
        print('O triplo de $valor é $resultado.');
    }

    print('');
    await finalizarPrograma();
}