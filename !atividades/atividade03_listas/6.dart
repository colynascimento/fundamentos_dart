// Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista
// apenas as palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres;
// 2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

void main() {
  List<String> listaPalavras = [
    'Humor',
    'Apetite',
    'Impulsividade',
    'Apatia',
    'Irritabilidade',
    'Absoluto',
  ];

  List<String> listaFiltrada = [];

  for (var palavra in listaPalavras) {
    if (palavra.startsWith('A') && palavra.length > 5) {
      listaFiltrada.add(palavra);
    }
  }

  print(listaFiltrada);
}
