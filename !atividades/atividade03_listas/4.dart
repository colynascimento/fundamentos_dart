// Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é
// ímpar. Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve
// permanecer inalterado. O resultado final deve ser uma nova lista com os
// valores transformados.

void main() {
  List<int> numeros = [15, 24, 87, 122, 169, 206];

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 != 0) {
      numeros.insert(i, numeros[i] * 2);

      int numeroRemovido = i + 1;
      numeros.remove(numeros[numeroRemovido]);
    }
  }
  print(numeros);
}
