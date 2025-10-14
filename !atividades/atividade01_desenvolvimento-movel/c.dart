// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.

import 'dart:io';
import 'utils/firulas.dart';
import 'utils/validacoes.dart';

Future<void> main() async {
    stdout.write('Insira o ano do seu nascimento: ');
    int? ano = int.tryParse(stdin.readLineSync() ?? ''); // .tryParse() tenta converter e retorna null se não conseguir

    if (!verificadorDeNum(ano)) {
        print('Por favor, digite apenas números.');
        return;
    }

    while (verificadorDeNum(ano)) {
        stdout.write('Você já fez aniversário esse ano? (s/n): ');
        String aniversario = stdin.readLineSync() ?? '';

        int anoAtual = DateTime.now().year;

        if (aniversario == 's') {
            int idade = anoAtual - ano!;
            print('Você tem $idade anos.');

            await finalizarPrograma();
            break;
        } else if (aniversario == 'n') {
            int idade = anoAtual - (ano! + 1);
            print('Você tem $idade anos.');

            await finalizarPrograma();
            break;
        } else {
            print('Erro! Digite apenas s ou n.');
        }
    }
}
