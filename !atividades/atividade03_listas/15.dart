// 15. Particionamento de Lista em Positivos e Não-Positivos

// Dada uma lista de números inteiros (positivos, negativos e zero), crie uma
// nova lista onde todos os números positivos aparecem primeiro, seguidos pelos
// números não-positivos (zero e negativos). A ordem relativa dentro de cada
// grupo deve ser mantida.

void main() {
  List<int> original = [84, -57, -60, 100, -66, -44, 52, 12, -88, -93];

  List<int> positivos = original.where((n) => n > 0).toList();
  List<int> naoPositivos = original.where((n) => n <= 0).toList();

  List<int> ordenada = positivos + naoPositivos;

  print(ordenada);
}
