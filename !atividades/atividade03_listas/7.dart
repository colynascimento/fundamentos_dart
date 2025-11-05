// Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas
// as palavras que terminam com a letra 'R' (maiúscula ou minúscula).
// As palavras devem ser separadas por um espaço na frase final.

void main() {
  List<String> listaStrings = [
    'Jaguar',
    'Castor',
    'Flamingo',
    'Lobo Guará',
    'Rinoceronte',
  ];

  List<String> listaConcat = [];

  for (var s in listaStrings) {
    if (s.endsWith('r')) {
      listaConcat.add(s);
    }
  }

  String fraseFinal = listaConcat.join(' ');

  print(fraseFinal);
}
