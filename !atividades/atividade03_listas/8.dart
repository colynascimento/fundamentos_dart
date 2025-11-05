// Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro
// representa o número de caracteres da palavra correspondente na lista original.

void main() {
  List<String> listaPalavras = [
    'Dart',
    'Python',
    'Flutter',
    'JavaScript',
    'Go',
    'PHP',
  ];

  List<int> listaComp = [];

  for (var palavra in listaPalavras) {
    listaComp.add(palavra.length);
  }

  print(listaComp);
}
