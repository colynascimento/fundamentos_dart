// Faça um programa que receba um valor em reais, depois calcule quantos euros,
// dólares e wons dariam para comprar com esse valor.

import 'dart:io';

class Moeda {
  double real;
  double euro;
  double dolar;
  double won;

  Moeda({
    required this.real,
    this.euro = 6.32,
    this.dolar = 5.43,
    this.won = 0.0037,
  });

  double converterParaEuro() {
    return real / euro;
  }

  double converterParaDolar() {
    return real / dolar;
  }

  double converterParaWon() {
    return real / won;
  }

  void exibirConversao() {
    print('--- CONVERSOR DE MOEDAS ---');
    print('Valor em Real: R\$${real.toStringAsFixed(2)}');
    print('Valor em Euro: R\$${converterParaEuro().toStringAsFixed(2)}');
    print('Valor em Dolar: R\$${converterParaDolar().toStringAsFixed(2)}');
    print('Valor em Won: R\$${converterParaWon().toStringAsFixed(2)}');
  }
}

void main() {
  stdout.write('Digite o valor em real: ');
  double? valor = double.tryParse(stdin.readLineSync() ?? '');

  if (valor == null) {
    print('Por favor, digite apenas números. (Use . como separador)');
    return;
  }

  Moeda v = Moeda(real: valor);

  print('_' * 50);
  v.exibirConversao();
}
