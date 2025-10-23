// Faça um programa que mostre a mensagem "Olá Mundo!" na tela.

import 'dart:io';
import 'dart:async';
import 'utils/firulas.dart';

Future<void> main() async {
  while (true) {
    stdout.write('Digite "Olá Mundo!": ');

    String? mensagem = stdin.readLineSync();

    // if mensagem for null, usa '' (string vazia)
    String mensagemNormalizada = normalizarTexto(mensagem ?? '');

    if (mensagemNormalizada.toLowerCase() == 'ola mundo!') {
      print('Obrigada!');
      await finalizarPrograma();
      break;
    } else {
      print('Mensagem incorreta! Tente novamente.');
    }
  }
}
