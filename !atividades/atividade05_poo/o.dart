// Faça um programa que leia três valores inteiros e diferentes e mostre-os
// em ordem decrescente.

import 'dart:io';

class Conjunto {
  int a;
  int b;
  int c;

  Conjunto({required this.a, required this.b, required this.c});

  List<int> ordenar() {
    List<int> valores = [a, b, c];
    valores.sort();
    return valores.reversed.toList();
  }

  void exibirConjuntoOrdenado() {
    print('--- CONJUNTO ORDENADO ---');
    print('${ordenar()}\n');
  }
}

void main() {
  stdout.write('Digite o valor de A: ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o valor de B: ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite o valor de C: ');
  int? c = int.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null || c == null) {
    print('Por favor, digite apenas números inteiros.');
    return;
  }

  Conjunto conj = Conjunto(a: a, b: b, c: c);
  print('_' * 50);
  conj.exibirConjuntoOrdenado();
}
