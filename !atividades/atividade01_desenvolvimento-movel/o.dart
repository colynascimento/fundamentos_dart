// Faça um programa que leia uma variável e some 5 caso seja par
// ou some 8 caso seja ímpar, imprimir o resultado desta operação.

import 'dart:io';
import 'utils/firulas.dart';
import 'utils/validacoes.dart';

Future<void> main() async {
    stdout.write('Entre com um número: ');
    int? numero = int.tryParse(stdin.readLineSync() ?? '');

    if (!verificadorDeNum(numero)) {
        print('Por favor, digite apenas números.');
        return;
    }

    int resultado;
    print('');

    if (numero! == 0) {
        print('O número é neutro.');
        return;
    } else if (verificadorDePar(numero)) {
        resultado = numero! + 5;
        
    } else {
        resultado = numero! + 8;
    }

    print('O resultado da operação é $resultado.');
    print('');
    await finalizarPrograma();
}