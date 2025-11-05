// Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo apenas os
// elementos que estão presentes em ambas as listas (a interseção).

void main() {
  List<int> multiplosDois = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  List<int> multiplosTres = [0, 3, 6, 9, 12, 15, 18, 21, 24, 27, 30];

  List<int> intersecao = [];

  for (var m2 in multiplosDois) {
    for (var m3 in multiplosTres) {
      if (m2 == m3) {
        intersecao.add(m2);
      }
    }
  }

  print(intersecao);
}
