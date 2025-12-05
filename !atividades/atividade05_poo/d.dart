// Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';

class Calculadora {
  double dividendo;
  double divisor;

  Calculadora({required this.dividendo, required this.divisor});

  bool validarDivisaoZero() {
    if (divisor == 0) {
      return false;
    }
    return true;
  }

  double dividir() {
    return dividendo / divisor;
  }

  String formatar() {
    return dividir().toStringAsFixed(4);
  }
}

void main() {
  stdout.write('Digite o dividendo: ');
  double? dividendo = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o divisor: ');
  double? divisor = double.tryParse(stdin.readLineSync() ?? '');

  if (dividendo == null || divisor == null) {
    print('Por favor, digite apenas números.');
    return;
  }

  Calculadora calc = Calculadora(dividendo: dividendo, divisor: divisor);

  if (!calc.validarDivisaoZero()) {
    print('O divisor não pode ser zero, por favor insira outro valor.');
    return;
  }

  print('-' * 50);
  print('$dividendo ÷ $divisor = ${calc.formatar()}\n');
}
