// Faça um programa que peça 2 valores. Calcule e imprima  a soma, o produto, a subtração, a divisão, o resto da divisão e a divisão inteira.

import 'dart:io';

class Calculadora {
  double valor1;
  double valor2;

  Calculadora({required this.valor1, required this.valor2});

  double somar() {
    return valor1 + valor2;
  }

  double multiplicar() {
    return valor1 * valor2;
  }

  double subtrair() {
    return valor1 - valor2;
  }

  double dividir() {
    return valor1 / valor2;
  }

  double resultadoRestoDivisao() {
    return valor1 % valor2;
  }

  int reultadoDivisaoInteira() {
    return valor1 ~/ valor2;
  }

  String exibir() {
    print('\n----- Calcular Valores -----\n');
    print('Somar: $valor1 + $valor2 = ');
    print('Multiplicar: $valor1 × $valor2 =');
    
  }
}

void main() {
  stdout.write('Digite o primeiro valor: ');
  double? valor1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o segundo valor: ');
  double? valor2 = double.tryParse(stdin.readLineSync() ?? '');

  if (valor1 == null || valor2 == null) {
    print('Por favor, insira apenas números.');
    return;
  }
}
