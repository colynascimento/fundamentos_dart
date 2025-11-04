// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é
// determinar quantos valores únicos existem na lista. A solução deve percorrer
// a lista e construir uma nova coleção (ou usar um Set temporário, se
// permitido, ou uma lista auxiliar) para armazenar apenas os elementos que
// ainda não foram vistos, reportando o total de elementos únicos ao final.

void main() {
  // Lista original
  List<int> listaDuplicada = [0, 2, 2, 4, 7, 8, 8, 13, 19, 19, 23, 23, 30];

  List<int> novaLista = [];

  // Para cada número na lista, toda ocorrência adiciona +1 ao contador
  for (var numero in listaDuplicada) {
    int contador = 0;
    for (var num in listaDuplicada) {
      if (numero == num) {
        contador++;
      }
    }
    // se contador == 1, ou seja, se o número aparecer somente uma vez,
    // o número é adicionado a lista de elementos únicos
    if (contador == 1) {
      novaLista.add(numero);
    }
  }

  print('$novaLista');
}
