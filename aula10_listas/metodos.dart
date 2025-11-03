void main() {
  print('-' * 70);
  print('LISTA DE MÉTODOS PARA LISTAS');
  print('-' * 70);

  // add → adiciona um elemento no final da lista
  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  listaInteiros.add(4);
  print('Após add(4): $listaInteiros');
  print('-' * 70);

  // addAll → adiciona vários elementos no final da lista
  List<String> listaFrutas = ['banana', 'morango', 'jabuticaba'];
  print('Lista original: $listaFrutas');
  listaFrutas.addAll(['uva', 'manga', 'tangerina']);
  print('Após addAll([...]): $listaFrutas');
  print('-' * 70);

  // remove → remove um elemento específico da lista
  List<String> listaNomes = ['João', 'Maria', 'José'];
  print('Lista original: $listaNomes');
  listaNomes.remove('João');
  print('Após remove("João"): $listaNomes');
  print('-' * 70);

  // removeAll → remove um elemento pelo índice
  List<double> listaDouble = [1.1, 2.2, 3.3];
  print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Após removeAt(1): $listaDouble');
  print('-' * 70);

  // insert → insere um elemento em uma posição específica
  List<String> listaArtistas = ['Fernanda Torres', 'Paulo José', 'Raul Cortez'];
  print('Lista original: $listaArtistas');
  listaArtistas.insert(2, 'Grande Otelo');
  print('Após insert(2, "Grande Otelo"): $listaArtistas');
  print('-' * 70);

  // insertAll → insere VÁRIOS elementos a partir de um índice
  List<int> listaNumeros = [3, 4, 5];
  print('Lista original: $listaNumeros');
  listaNumeros.insertAll(0, [1, 2]);
  print('Após insertAll(0, [1, 2]): $listaNumeros');
  print('-' * 70);

  // indexOf → retorna o índice da PRIMEIRA ocorrência
  // retorna -1 se o elemento não existir
  List<String> listaVogais = ['a', 'e', 'i', 'o', 'u'];
  print('Lista original: $listaVogais');
  print('Primeira ocorrência de "i": índice ${listaVogais.indexOf('i')}');
  print('-' * 70);

  // sublist → gera uma sublista (cópia) entre índices [inicial, final]
  // o índice final é EXCLUSIVO (não é incluído)
  List<int> listaMultiplos5 = [5, 10, 15, 20, 25];
  print('Lista original: $listaMultiplos5');
  print('Sublista de 1 a 3: ${listaMultiplos5.sublist(1, 3)}');
  print('-' * 70);

  // sort → ordena a lista
  // Para Strings: ordem alfabética
  // Para números: ordem crescente
  List<String> listaVogais2 = ['u', 'a', 'o', 'i', 'e'];
  print('Lista original: $listaVogais2');
  listaVogais2.sort();
  print('Após sort(): $listaVogais2');
  print('-' * 70);

  // reversed → retorna os elementos em ordem reversa
  // IMPORTANTE: retorna um "Iterable", por isso usamos toList()
  List<int> listaNumeros2 = [1, 2, 3, 4, 5, 6];
  print('Lista original: $listaNumeros2');
  var listaReversa = listaNumeros2.reversed.toList();
  print('Lista reversa: $listaReversa');
  print('-' * 70);

  // shuffle → embaralha os elementos da lista
  // OBS: altera a lista original, não cria uma cópia
  List<String> listaVerduras = ['Couve', 'Serraia', 'Alface', 'Rúcula'];
  print('Lista original: $listaVerduras');
  listaVerduras.shuffle();
  print('Após suffle(): $listaVerduras');
  print('-' * 70);
}
