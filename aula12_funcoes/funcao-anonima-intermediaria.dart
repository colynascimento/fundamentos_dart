void main() {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIÁRIA');
  print('-' * 70);

  var lista = [1, 2, 3, 4, 5];

  // Utilizada com o método map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);
}

// A arrow function é passada como argumento para o método map() do objeto lista.
// A função anônima recebe cada elemento da lista como argumento e retorna o
// dobro de cada número. 
// O resultado da função map() é uma nova lista com os valores dobrados.
