void main() {
  print('-' * 70);
  print('LISTA DE MÉTODOS PARA LISTAS');
  print('-' * 70);

  // add: adiciona um elemento no final da lista
  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-' * 70);

  // addAll: adiciona vários elementos no final da lista
  List<String> listaFrutas = ['banana', 'morango', 'jabuticaba'];
  print('Lista de frutas original: $listaFrutas');
  
}
