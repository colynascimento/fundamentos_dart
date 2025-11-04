// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os
// números que são pares e, simultaneamente, maiores que 10. Após a filtragem,
// deve-se calcular a soma total desses números restantes.

void main() {
  // Lista original
  List<int> listaNumeros = [0, 9, 18, 27, 36, 45];

  // Filtro números pares maiores que 10
  List<int> listaFiltrada = listaNumeros
      .where((num) => num % 2 == 0 && num > 10)
      .toList();

  // Var para armazenar soma 
  int soma = 0;

  for (var numero in listaFiltrada) {
    soma += numero;
  }

  print('$soma');
}
