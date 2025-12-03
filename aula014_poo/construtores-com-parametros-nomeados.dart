import 'dart:io';

class Triangulo {
  // Atributos
  double base;
  double altura;

  // Construtor com parâmetros nomeados
  Triangulo({required this.base, required this.altura});

  // Método para calcular a área
  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  stdout.write('\nDigite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Instanciando o objeto com parâmetros NOMEADOS
  Triangulo triangulo = Triangulo(base: base, altura: altura);
  double area = triangulo.calcularArea();

  // Saída
  print('A área do triângulo é: $area');
  print('-' * 70);
}
