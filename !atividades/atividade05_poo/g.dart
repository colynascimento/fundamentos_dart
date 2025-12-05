// Faça um programa para converter medidas

import 'dart:io';

class Conversor {
  double comprimento;

  Conversor({required this.comprimento});

  double converterCentimetrosParaMetros() {
    return comprimento / 100;
  }

  double converterCentimetrosParaDecimetros() {
    return comprimento / 10;
  }

  double converterCentimetrosParaMilimetros() {
    return comprimento * 10;
  }

  void exibirConversao() {
    print('--- CONVERSOR DE MEDIDAS ---\n');
    print('${comprimento}cm em Metros: ${converterCentimetrosParaMetros()}');
    print(
      '${comprimento}cm em Decimetros: ${converterCentimetrosParaDecimetros()}',
    );
    print(
      '${comprimento}cm em Milimetros: ${converterCentimetrosParaMilimetros()}',
    );
  }
}

void main() {
  stdout.write('Digite o comprimento: ');
  double? c = double.tryParse(stdin.readLineSync() ?? '');

  if (c == null) {
    print('Por favor, digite apenas números inteiros.');
    return;
  }

  Conversor comp = Conversor(comprimento: c);

  print('_' * 50);
  comp.exibirConversao();
}
