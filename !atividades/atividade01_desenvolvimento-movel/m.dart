// Faça um algoritmo que leia dois valores inteiros A e B. 
// Se os valores forem iguais deverá somar os dois, caso contrário multiplique a por B.
// Ao final de qualquer um dos cálculos deve-se atribuir o resultado para uma variável C
// e mostrar seu conteúdo na tela.

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Insira o valor de A: ');
    int? a = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Insira o valor de B: ');
    int? b = int.tryParse(stdin.readLineSync() ?? '');

    if(!verificadorDeNum(a) || !verificadorDeNum(b)) {
        print('Por favor, insira apenas números inteiros.');
        return;
    }

    int c;

    if (a! == b!) {
        c = a! + b!;
    } else {
        c = a! * b!;
    }

    print('-' * 70);
    print('O resultado é $c');
    print('');

    await finalizarPrograma();
}