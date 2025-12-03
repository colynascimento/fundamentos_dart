import 'dart:io';
import 'utils/firulas.dart';

void atualizarContato(agenda) {
  bool contatoAtualizado = false;

  while (!contatoAtualizado) {
    limparTela();
    print('_' * 50);
    print('ATUALIZAR CONTATOS\n');

    if (agenda.isEmpty) {
      print('Não há nenhum contato há ser exibido');
      print('Digite Enter para voltar ao menu.');
      print('_' * 50);
      stdin.readLineSync();
      return;
    } else {
      for (var contato in agenda) {
        print('ID: ${contato['id']}');
        print('Nome: ${contato['nome']}');
        print('Número: ${contato['numero']}');
        print('E-mail: ${contato['email']}');
        print('_' * 50);
      }
    }

    stdout.write('\nQual o ID do contato que deseja atualizar? ');
    int? id_atualizacao = int.tryParse(stdin.readLineSync()?.trim() ?? '');

    List<String?> ids_agenda = agenda.map((contato) => contato['id']).toList();

    if (!validarID(agenda, ids_agenda, id_atualizacao)) {
      continue;
    }

    var contato_correspondente = agenda.firstWhere(
      (contato) => contato['id'] == id_atualizacao.toString(),
    );

    print('\nCONTATO ID $id_atualizacao');
    print('1 - Nome: ${contato_correspondente['nome']}');
    print('2 - Número: ${contato_correspondente['numero']}');
    print('3 - E-mail: ${contato_correspondente['email']}');
    print('4 - Voltar ao menu inicial');
    print('_' * 50);
    stdout.write('Qual dado deseja atualizar? ');
    int? dado_atualizacao = int.tryParse(stdin.readLineSync()?.trim() ?? '');

    if (dado_atualizacao == null ||
        dado_atualizacao > 4 ||
        dado_atualizacao < 1) {
      print(
        '\nPor favor, digite apenas o número correspondente a opção desejada.',
      );
      stdout.write('');
      stdin.readLineSync();
      continue;
    } else if (dado_atualizacao == 4) {
      contatoAtualizado = true;
      continue;
    }

    if (dado_atualizacao == 1) {
      print('_' * 50);
      print('ATUALIZAR NOME\n');
      print('Nome atual do contato: ${contato_correspondente['nome']}');
      stdout.write('Digite o novo nome do contato: ');
      String? nome_atualizado = stdin.readLineSync()?.trim() ?? '';

      if (nome_atualizado.isEmpty) {
        print('O nome não pode ficar em branco.');
        print('_' * 50);
        stdin.readLineSync();
        continue;
      }

      nome_atualizado =
          nome_atualizado[0].toUpperCase() +
          nome_atualizado.substring(1).toLowerCase();
      contato_correspondente['nome'] = nome_atualizado;

      print('O nome do contato foi alterado alterado para $nome_atualizado.');
      print('Digite Enter para voltar ao menu.');
      print('_' * 50);
      stdout.write('');
      stdin.readLineSync();

      contatoAtualizado = true;
    } else if (dado_atualizacao == 2) {
      print('_' * 50);
      print('ATUALIZAR NÚMERO\n');
      print('Número atual do contato: ${contato_correspondente['numero']}');
      stdout.write('Digite o novo número do contato: ');
      String? numero_atualizado = stdin.readLineSync()?.trim() ?? '';

      if (numero_atualizado.isEmpty) {
        numero_atualizado = 'Não informado';
      }

      contato_correspondente['numero'] = numero_atualizado;

      print('O nome do contato foi alterado para $numero_atualizado.');
      print('Digite Enter para voltar ao menu.');
      print('_' * 50);
      stdout.write('');
      stdin.readLineSync();
      contatoAtualizado = true;
    } else if (dado_atualizacao == 3) {
      print('_' * 50);
      print('ATUALIZAR E-MAIL\n');
      print('E-mail atual do contato: ${contato_correspondente['email']}');
      stdout.write('Digite o novo e-mail do contato: ');
      String? email_atualizado = stdin.readLineSync()?.trim() ?? '';

      if (email_atualizado.isEmpty) {
        email_atualizado = 'Não informado';
      }

      contato_correspondente['email'] = email_atualizado;

      print('O e-mail do contato foi alterado para $email_atualizado.');
      print('Digite Enter para voltar ao menu.');
      print('_' * 50);
      stdout.write('');
      stdin.readLineSync();
      contatoAtualizado = true;
    }
  }
}

bool validarID(agenda, ids_agenda, id_atualizacao) {
  if (id_atualizacao == null) {
    print(
      '\nPor favor, insira apenas o número do ID correspondente ao contato.',
    );
    print('Digite Enter para tentar novamente');
    stdin.readLineSync();
    return false;
  } else if (!ids_agenda.contains(id_atualizacao.toString())) {
    print(
      '\nEsse ID não está na agenda de contatos.',
    );
    print('Digite Enter para tentar novamente.');
    stdin.readLineSync();
    return false;
  }
  return true;
}
