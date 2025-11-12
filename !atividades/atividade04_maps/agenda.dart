import 'dart:io';

List<Map<String, String?>> agenda = [
  {
    'id': '2',
    'numero': '329999999',
    'email': 'email@live.com',
    'nome': 'fulano da silva',
  },
  {
    'id': '4',
    'numero': '329998888',
    'email': 'hotmail@live.com',
    'nome': 'ciclano de tal',
  },
];

void main() {
  print('_' * 50);
  print('AGENDA DE CONTATOS');
  print('');

  print('1 - Cadastrar');
  print('2 - Listar');
  print('3 - Buscar');
  print('4 - Atualizar');
  print('5 - Remover');
  print('6 - Sair do programa');
  print('_' * 50);

  stdout.write('Digite a opção desejada: ');
  int? opcao = int.tryParse(stdin.readLineSync()?.trim() ?? '');

  if (opcao == null || opcao > 6 || opcao < 1) {
    print(
      '\nPor favor, digite apenas o número correspondente a opção desejada.',
    );
    return;
  } else if (opcao == 1) {
    print('_' * 50);
    print('CADASTRAR NOVO CONTATO');

    stdout.write('\nDigite o número do contato: ');
    String? numero = stdin.readLineSync()?.trim() ?? '';

    // Adicionar validação para verificar se o número do contato já existe

    stdout.write('\nDigite o e-mail do contato: ');
    String? email = stdin.readLineSync()?.trim() ?? '';

    // Adicionar validação para verificar se o e-mail já existe (não impedimento, só confirmação)

    stdout.write('\nDigite o nome do contato: ');
    String? nome = stdin.readLineSync()?.trim() ?? '';

    // Confirmar se o usuário realmente deseja adicionar o contato com as informações XXX
    // Dar a opção de: 1- cancelar e voltar ao menu anterior
    // 2 - cancelar e fazer novo cadastro
    // 3 - confirmar e adicionar

    int id = agenda.length + 1;

    // Verificar se o id já existe

    Map<String, String?> novoContato = {
      'id': id.toString(),
      'numero': numero,
      'email': email,
      'nome': nome,
    };

    agenda.add(novoContato);

    print('\nContato adicionado com sucesso!');
    // Voltar ao menu ou adicionar novo contato?
  } else if (opcao == 2) {
    print('_' * 50);
    print('AGENDA DE CONTATOS\n');

    if (agenda.length == 0) {
      print('Não há nenhum contato há ser exibido');
      print('Digite Enter para voltar ao menu.');
      print('_' * 50);
      // Tenho que colocar um while para funcionar =')
    }

    for (var i = 0; i < agenda.length; i++) {
      agenda[i].forEach((tipo, dado) {
        print('$tipo: $dado');
      });
      print('');
    }
  } else if (opcao == 3) {
    print('_' * 50);
    print('BUSCAR CONTATOS\n');

    stdout.write('\nDigite o dado que deseja buscar:');
    String? entrada_buscada = stdin.readLineSync()?.trim().toLowerCase() ?? '';

    if (entrada_buscada.isEmpty) {
      print('Por favor, insira um dado para realizar a busca.');
      //retorno
    }

    var resultados_busca = agenda.where(
        (contato) { contato.value!.contains('$entrada_buscada')}
      );
  }
}
