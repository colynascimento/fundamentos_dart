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

  int resultadoDivisaoInteira() {
    return valor1 ~/ valor2;
  }

  void exibir() {
    print('\n----- Calcular Valores -----\n');
    print('Soma: $valor1 + $valor2 = ${somar()}');
    print('Subtração: $valor1 - $valor2 = ${subtrair()}');
    print('Multiplicação: $valor1 × $valor2 = ${multiplicar()}');
    print('Divisão: $valor1 ÷ $valor2 = ${dividir()}');
    print('Resto da divisão: $valor1 % $valor2 = ${resultadoRestoDivisao()}');
    print('Divisão inteira: $valor1 ~/ $valor2 = ${resultadoDivisaoInteira()}');
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

  var calculadora = Calculadora(valor1: valor1, valor2: valor2);
  calculadora.exibir();
}
