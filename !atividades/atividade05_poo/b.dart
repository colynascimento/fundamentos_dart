// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.

import 'dart:io';

class Pessoa {
  int anoNascimento;

  Pessoa({required this.anoNascimento});

  int calcularIdade(bool aniversario) {
    if (aniversario) {
      return DateTime.now().year - anoNascimento;
    } else {
      return DateTime.now().year - anoNascimento - 1;
    }
  }

  bool verificarAniversario() {
    while (true) {
      stdout.write('Já fez aniversário este ano? (s/n): ');
      String aniversario = stdin.readLineSync() ?? '';

      if (aniversario.toLowerCase() == 's') {
        return true;
      } else if (aniversario.toLowerCase() == 'n') {
        return false;
      } else {
        print('Por favor, digite apenas s ou n.');
      }
    }
  }
}

void main() {
  stdout.write('Digite o ano do nascimento: ');
  int? anoNascimento = int.tryParse(stdin.readLineSync() ?? '');

  if (anoNascimento == null) {
    print('Por favor, insira apenas números.');
    return;
  }

  var ano = Pessoa(anoNascimento: anoNascimento);
  var aniversario = ano.verificarAniversario();

  print('A idade é ${ano.calcularIdade(aniversario)}');
}
