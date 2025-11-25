// Funções anônimas são funções que não possuem um nome identificador e podem
// ser definidas no momento em que são necessárias. Para definir uma função
// anônima, podemos utilizar a sintaxe de função de flecha (arrow function).

void main() {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA');
  print('-' * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  numeros.forEach((numero) {
    print(numero * 2);
  });
}

// Neste exemplo, uma função anônima é passada como argumento para o método
// forEach() do objeto numeros. 
// A função anônima recebe cada elemento do objeto numeros como argumento e
// imprime o dobro de cada número.

