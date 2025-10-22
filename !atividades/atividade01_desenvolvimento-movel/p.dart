// Faça um programa que leia três valores inteiros e diferentes e mostre-os em ordem decrescente. 

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    stdout.write('Entre com o 1º valor: ');
    int? a = int.tryParse(stdin.readLineSync() ?? '');
    
    stdout.write('Entre com o 2º valor: ');
    int? b = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Entre com o 3º valor: ');
    int? c = int.tryParse(stdin.readLineSync() ?? '');

    if(!verificadorDeNum(a) || !verificadorDeNum(b) || !verificadorDeNum(c)) {
        print('Por favor, insira apenas números.');
        return;
    }

    List<dynamic> lista = [a, b, c];
    lista.sort();

    print('-' * 70);
    print('A ordem dos valores é: $lista');

    print('');
    await finalizarPrograma();
}