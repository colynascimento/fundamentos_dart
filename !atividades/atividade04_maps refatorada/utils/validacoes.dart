import 'dart:io';

bool validarEntradaVazia(entrada) {
  if (entrada.isEmpty) {
    print('Por favor, insira um dado para continuar.');
    stdin.readLineSync();
    return false;
  }
  return true;
}
