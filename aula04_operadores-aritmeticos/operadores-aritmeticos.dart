import 'dart:io';

void main() {
    stdout.write('Entre com valor de A: ');
    int a = int.parse(stdin.readLineSync()!); //fazendo casting

    stdout.write('Entre com valor de B: ');
    int b = int.parse(stdin.readLineSync()!); //fazendo casting

    int soma = a + b;

    int subtracao = a - b;

    int produto = a * b;

    double divisao = a / b;

    int divInteira = a ~/ b;

    int restoDivisao = a % b;

    print('-' * 70);
    print('A soma de $a + $b = $soma');
    print('A subtração de $a - $b = $subtracao');
    print('A multiplicação de $a × $b = $produto');
    print('A divisão de $a ÷ $b = ${divisao.toStringAsFixed(2)}');
    print('A divisão inteira de $a ~/ $b = $divInteira');
    print('O restoi da divisão de $a % $b = $restoDivisao');
    print('-' * 70);
}