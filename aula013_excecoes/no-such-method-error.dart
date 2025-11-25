// void main() {
//   try {
//     print('-' * 70);
//     print('Testando NoSuchMethodError');
//     print('-' * 70);

//     var list = [1, 2, 3];
//     // list.toUpperCase();
//   } catch (e) {
//     if (e is NoSuchMethodError) { // Melhor entendido com OO
//     print('Erro: O método chamado não existe.');
//     print('-' * 70);
//     } else {
//       print('Ocorreu um erro: $e');
//       print('-' * 70);
//     }
//   }
// }

void main() {
  print('-' * 70);
  print('Testando NoSuchMethodError');
  print('-' * 70);

  try {
    // variável booleana
    dynamic variavel = true;
    // tentando iterar
    variavel ++;
  } catch (e) {
    print('Erro!!! $e');
    print('-' * 70);
  }
}

// Ao executar esse código, a exceção NoSuchMethodError será lançada devido à
// tentativa de chamar um método inexistente na lista. Em seguida, o bloco catch
// será executado, exibindo a mensagem de erro apropriada.