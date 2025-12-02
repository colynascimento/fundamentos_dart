import 'dart:io';
import 'utils/firulas.dart';
import 'dart:math';

void cadastrarContato(agenda) {
  limparTela();
  print('_' * 50);
  print('CADASTRAR NOVO CONTATO');

  String? numero;
  while (true) {
    stdout.write('\nDigite o número do contato: ');
    numero = stdin.readLineSync()?.trim() ?? 'Não informado';

    if (!validarNumero(agenda, numero)) {
      continue;
    }
    break;
  }

  String? email;
  while (true) {
    stdout.write('\nDigite o e-mail do contato: ');
    email = stdin.readLineSync()?.trim() ?? 'Não informado';

    if (!validarEmail(email)) {
      continue;
    }
    break;
  }

  String? nome;
  while (true) {
    stdout.write('\nDigite o nome do contato: ');
    nome = stdin.readLineSync()?.trim();

    if (!validarNome(nome)) {
      continue;
    }
    break;
  }

  nome =
      nome![0].toUpperCase() +
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

  while (true) {
    stdout.write('\nDigite a opção escolhida: ');
    int? opcaoCadastro = int.tryParse(stdin.readLineSync()?.trim() ?? '');

    switch (opcaoCadastro) {
      case 1:
        int id;
        if (agenda.isEmpty) {
          id = 1;
        } else {
          int maiorId = agenda
              .map((c) => int.parse(c['id']!))
              .reduce((a, b) => max(a, b));
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

      case 2:
        cadastrarContato(agenda);
        return;

      case 3:
        return;

      default:
        print('Opção inválida.');
        print('Aperte Enter para continuar.');
        stdin.readLineSync();
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
      print('Aperte Enter para continuar.');
      stdin.readLineSync();
      return false;
    }
  }
  return true;
}

bool validarEmail(email) {
  if (email.isNotEmpty) {
    if (!email.contains('@')) {
      print('Por favor, digite um e-mail válido para continuar.');
      print('Aperte Enter para continuar.');
      stdin.readLineSync();
      return false;
    }
  }
  return true;
}

bool validarNome(nome) {
  if (nome == null || nome.isEmpty) {
    print('O campo "nome" é obrigatório. Por favor, digite um nome válido.');
    print('Aperte Enter para continuar.');
    stdin.readLineSync();
    return false;
  }
  return true;
}
