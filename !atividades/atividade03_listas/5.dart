// Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor
// presente na lista. A lista pode conter duplicatas, mas o segundo maior valor
// deve ser o valor distinto que é imediatamente menor que o maior valor.

void main() {
  List<int> numeros = [3, 90, 87, 54, 31, 21, 90];

  numeros.sort();

  var maiorValor = numeros[numeros.length - 1];
  var segundoValor = 0;

  for (var i = numeros.length - 1; i >= 0; i--) {
    if (numeros[i] < maiorValor) {
      segundoValor = numeros[i];
      break;
    }
  }

  print(segundoValor);
}
