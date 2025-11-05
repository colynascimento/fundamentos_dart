// 13. Checagem de Inclusão Total de Elementos

// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto, verifique
// se todos os elementos da Lista Subconjunto estão presentes na Lista Principal.
// O resultado deve ser um valor booleano (true ou false).

void main() {
  List<int> principal = [3, 18, 95, 38, 12, 47, 9, 81, 56];
  List<int> subconjunto = [18, 3, 47, 9];

  bool verificador = true;

  for (var n in subconjunto) {
    if (!principal.contains(n)) {
      verificador = false;
    }
  }

  print('A lista principal contém todos os elementos do subconjunto?');
  print('Resposta: $verificador');
}
