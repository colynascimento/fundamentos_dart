// Faça um programa para calcular o IMC COMPLETO de uma pessoa.
import 'dart:io';

class Pessoa {
  double altura;
  double peso;

  Pessoa({required this.altura, required this.peso});

  double calcularImc() {
    return peso / (altura * altura);
  }

  void exibirImc() {
    print('--- CALCULAR IMC ---');
    print('Peso: ${peso}kg');
    print('Altura: ${altura.toStringAsFixed(2)}cm');
    print('IMC: ${calcularImc().toStringAsFixed(2)}\n');
  }
}
