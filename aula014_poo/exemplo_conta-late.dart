// late: a palavra-chave late em Dart permite adiar a inicialização de um atributo até o momento
// em que ele é efetivamente acessado. Ela é útil quando sabemos que o atributo será inicializado
// posteriormente, permitindo mais flexibilidade na definição dos atributos em relação ao momento
// da inicialização.

class Conta {
  // Definição (atributos) da classe Conta
  late String titular;
  late double saldo;

  // Construtor da classe Conta
  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  // Método para realizar um depósito na conta
  void depositar(double valor) {
    saldo += valor; // Incrementa o valor ao saldo da conta
    print('Depósito de $valor realizado. Novo saldo: $saldo');
    print('-' * 70);
  }

  // Método para realizar um saque na conta
  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor; // Decrementa o valor do saldo da conta
      print('Saque de $valor realizado. Novo saldo: $saldo');
      print('-' * 70);
    } else {
      print('Saldo insuficiente. Operação não realizada.');
      print('-' * 70);
    }
  }

  // Método para exibir o saldo da conta
  void exibirSaldo() {
    print('Saldo atual: $saldo');
    print('-' * 70);
  }
}

// Uso da classe Conta
void main() {
  // Criação de uma instância da classe Conta com o construtor
  Conta cliente1 = Conta('João', 1000.0);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
  // Chamada do método depositar() da instância minhaConta
  cliente1.depositar(500);
  // Chamada do método sacar() da instância minhaConta
  cliente1.sacar(200);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
}