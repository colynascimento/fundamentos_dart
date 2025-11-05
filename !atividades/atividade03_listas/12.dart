// Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados e em ordem aleatória, o
// objetivo é primeiro remover todas as duplicatas e, em seguida, ordenar a
// lista resultante em ordem alfabética.

void main() {
  List<String> valoresDuplicados = [
    'Brasil',
    'Brasil',
    'Venezuela',
    'Uruguai',
    'Colombia',
    'México',
    'Peru',
    'Chile',
    'Mexico',
    'Argentina',
    'Uruguai',
    'Colombia',
  ];

  List<String> valoresNormalizados = [];

  for (var valor in valoresDuplicados) {
    if (!valoresNormalizados.contains(valor)) {
      valoresNormalizados.add(valor);
    }
  }

  valoresNormalizados.sort();

  print(valoresNormalizados);
}
