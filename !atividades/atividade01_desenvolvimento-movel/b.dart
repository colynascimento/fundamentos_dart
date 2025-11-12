// Faça um programa que peça 2 valores. 
// Calcule e imprima  a soma, o produto, a subtração, a divisão, o resto da divisão e a divisão inteira.

import 'dart:io';

void main() {
    stdout.write('Insira o 1º valor: ');
    int valor1 = int.parse(stdin.readLineSync()!);

    stdout.write('Insira o 2º valor: ');
    int valor2 = int.parse(stdin.readLineSync()!);

    int soma = valor1 + valor2;
    int subtracao = valor1 - valor2;
    int multiplicacao = valor1 * valor2;
    double divisao = valor1 / valor2;

    print('-' * 70);
    print('A soma de $valor1 + $valor2 = $soma');
    print('A subtração de $valor1 - $valor2 = $subtracao');
    print('A multiplicação de $valor1 × $valor2 = $multiplicacao');
    print('A divisão de $valor1 ÷ $valor2 = ${divisao.toStringAsFixed(2)}');
    print('-' * 70);
}