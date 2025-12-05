// Faça um programa que peça 4 notas com entrada de dados. O programa deverá calcular a média das notas digitadas.

import 'dart:io';

class Boletim {
  double nota1;
  double nota2;
  double nota3;
  double nota4;

  Boletim({
    required this.nota1,
    required this.nota2,
    required this.nota3,
    required this.nota4,
  });

  double calcularMedia() {
    return (nota1 + nota2 + nota3 + nota4) / 4;
  }
}

void main() {
  List<double> notas = [];

  while (true) {
    for (int i = 1; i <= 4; i++) {
      stdout.write('Digite a ${i}ª nota: ');
      double? notaAtual = double.tryParse(stdin.readLineSync() ?? '');

      if (notaAtual == null) {
        print('Por favor, digite apenas números.');
        break;
      }

      notas.add(notaAtual);
    }
    break;
  }

  
  Boletim boletim = Boletim(
    nota1: notas[0],
    nota2: notas[1],
    nota3: notas[2],
    nota4: notas[3],
  );
  print('-' * 50);
  print('Média: ${boletim.calcularMedia()}\n');
}
