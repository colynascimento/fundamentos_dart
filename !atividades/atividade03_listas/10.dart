// Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos
// elementos, mas na ordem inversa da lista original. O uso de List.reversed é
// permitido para fins de comparação, mas a implementação principal deve usar
// uma estrutura de repetição (for ou while).

void main() {
  List<String> listaDoces = ['Rosquinha', 'Bolo', 'Torta', 'Biscoito', 'Sonho'];

  List<String> docesReverso = [];

  for (var i = listaDoces.length - 1; i >= 0; i--) {
    docesReverso.add(listaDoces[i]);
  }

  print(docesReverso);
}
