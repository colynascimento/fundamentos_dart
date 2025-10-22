// Faça um programa para conversão de temperaturas (C => F  e F ⇒ C)

import 'dart:io';
import 'utils/validacoes.dart';
import 'utils/firulas.dart';

Future<void> main() async {
    while (true) {
        print('\nEscolha uma opção:');
        print('1 - Celsius para Fahrenheit');
        print('2 - Fahrenheit para Celsius');
        print('3 - Sair');
        stdout.write('Digite sua opção: ');

        String? opcao = stdin.readLineSync();

        if (opcao == '1') {
          converterCelsiusParaFahrenheit();
        } else if (opcao == '2') {
          converterFahrenheitParaCelsius();
        } else if (opcao == '3') {
          await finalizarPrograma();
          break;
        } else {
          print('Opção inválida! Tente novamente.');
        }
      }
}

void converterCelsiusParaFahrenheit() {
  print('\n--- Celsius para Fahrenheit ---');
  stdout.write('Digite a temperatura em Celsius: ');
  
  double? celsius = double.tryParse(stdin.readLineSync() ?? '');
  
  if (!verificadorDeDouble(celsius)) {
    print('Valor inválido!');
    return;
  }
  
  double fahrenheit = (celsius! * 9/5) + 32;
  print('$celsius°C = ${fahrenheit.toStringAsFixed(2)}°F');
}

void converterFahrenheitParaCelsius() {
  print('\n--- Fahrenheit para Celsius ---');
  stdout.write('Digite a temperatura em Fahrenheit: ');
 
  double? fahrenheit = double.tryParse(stdin.readLineSync() ?? '');
  
  if (!verificadorDeDouble(fahrenheit)) {
    print('Valor inválido!');
    return;
  }
  
  double celsius = (fahrenheit! - 32) * 5/9;
  print('$fahrenheit°F = ${celsius.toStringAsFixed(2)}°C');
}