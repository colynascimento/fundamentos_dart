void main() {
    int idade = 25;

    double altura = 1.63;

    bool opcao = true;

    String nome = 'Coly Chan';

    // Demonstração de inferência de tipo
    var teste = 'João'; // tipo inferido: String
    // teste = 100; // ERRO: não é possível atribuir int a uma variável do tipo String

    var numero = 10; // tipo inferido: int
    // numero = 'dez'; // ERRO: não é possível atribuir String a uma variável do tipo int

    // Saída formatada usando template strings
    print('-' * 70);
    print('Meu nome é $nome, tenho $idade anos.');
    print('Minha altura é ${altura.toStringAsFixed(2)}m.');
    print('Esta é uma aula de Dart? $opcao');
    print('-' * 70);
}