import 'dart:io';
import 'utils/firulas.dart';

void cadastrarContato(agenda) {
  while (true) {
    limparTela();
    print('_' * 50);
    print('CADASTRAR NOVO CONTATO');

    stdout.write('\nDigite o número do contato: ');
    String? numero = stdin.readLineSync()?.trim() ?? 'Não informado';

    validarNumero(agenda, numero);

    stdout.write('\nDigite o e-mail do contato: ');
    String? email = stdin.readLineSync()?.trim() ?? 'Não informado';

    String? nome;
    while (true) {
      stdout.write('\nDigite o nome do contato: ');
      nome = stdin.readLineSync()?.trim();

      if (nome == null || nome.isEmpty) {
        print('O campo "nome" é obrigatório.');
        print('Por favor, digite um nome válido para continuar.');
      } else {
        break;
      }
    }

    nome =
        nome[0].toUpperCase() +
        nome.substring(1).toLowerCase(); // Garante a capitalização do nome

    print('_' * 50);
    print('CONFIRMAÇÃO CADASTRO');
    print('Nome: $nome');
    print('Número: $numero');
    print('E-mail: $email');
    print('_' * 50);
    print('\nOpções:');
    print('1 - Confirmar e adicionar');
    print('2 - Cancelar e fazer novo cadastro');
    print('3 - Cancelar e voltar ao Menu Inicial');
    stdout.write('\nDigite a opção escolhida: ');
    int? opcaoCadastro = int.tryParse(stdin.readLineSync()?.trim() ?? '');

    if (opcaoCadastro == null || opcaoCadastro > 3) {
      print('Opção inválida.');
      continue;
    } else if (opcaoCadastro == 3) {
      break;
    }

    if (opcaoCadastro == 1) {
      int id;
      if (agenda.isEmpty) {
        id = 1;
      } else {
        int maiorId = agenda
            .map((contato) => int.parse(contato['id']!))
            .reduce((a, b) => a > b ? a : b);
        id = maiorId + 1;
      }

      Map<String, String?> novoContato = {
        'id': id.toString(),
        'numero': numero,
        'email': email,
        'nome': nome,
      };

      agenda.add(novoContato);

      stdout.write('Digite Enter para voltar ao Menu Inicial.');
      stdin.readLineSync();
      break;
    }
  }
}

bool validarNumero(agenda, numero) {
  for (var contato in agenda) {
    if (contato['numero'] == numero) {
      print('O número do contato já existe!');
      print(
        'Por favor, digite um número diferente ou vá ao módulo "Atualizar" no Menu Inicial.',
      );
      return false;
    }
  }

  return true;
}
