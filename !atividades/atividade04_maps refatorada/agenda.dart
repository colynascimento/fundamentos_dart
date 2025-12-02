import 'dart:io';
import 'cadastrar_contato.dart';

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
  while (true) {
    print("\x1B[2J\x1B[0;0H");
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
      cadastrarContato(agenda);
    } else if (opcao == 2) {
      while (true) {
        print("\x1B[2J\x1B[0;0H");
        print('_' * 50);
        print('AGENDA DE CONTATOS\n');

        if (agenda.isEmpty) {
          print('Não há nenhum contato há ser exibido');
          print('Digite Enter para voltar ao menu.');
          print('_' * 50);
          print('');
          break;
        }

        for (var contato in agenda) {
          print('ID: ${contato['id']}');
          print('Nome: ${contato['nome']}');
          print('Número: ${contato['numero']}');
          print('E-mail: ${contato['email']}');
          print('_' * 50);
        }

        stdout.write('Digite Enter para voltar ao Menu Inicial');
        stdin.readLineSync();
        break;
      }
    } else if (opcao == 3) {
      while (true) {
        int? opcaoBusca;
        if (opcaoBusca == '2') break;

        print("\x1B[2J\x1B[0;0H");
        print('_' * 50);
        print('BUSCAR CONTATOS\n');

        stdout.write('Digite o dado que deseja buscar:');
        String? entrada_buscada =
            stdin.readLineSync()?.trim().toLowerCase() ?? '';

        if (entrada_buscada.isEmpty) {
          print('Por favor, insira um dado para realizar a busca.');
          stdout.write('');
          stdin.readLineSync();
          continue;
        }

        // Filtra somente os contatos que contém o termo buscado
        var resultados_busca = agenda.where((contato) {
          return contato.values.any(
            (info_contato) => info_contato!.toLowerCase().contains(
              entrada_buscada,
            ), // Verifica se qualquer valor dentro do mapa contém o termo buscado
          );
        }).toList();

        print('_' * 50);
        print('RESULTADOS DA BUSCA:\n');

        if (resultados_busca.isEmpty) {
          print('Nenhum resultado encontrado.');
        } else {
          for (var contato in resultados_busca) {
            print('Nome: ${contato['nome']}');
            print('Número: ${contato['numero']}');
            print('E-mail: ${contato['email']}');
          }
        }
        print('_' * 50);
        print('');

        print('Opções:');
        print('1 - Realizar nova busca');
        print('2 - Voltar ao Menu Inicial');
        print('_' * 50);

        stdout.write('Digite a opção escolhida: ');
        opcaoBusca = int.tryParse(stdin.readLineSync()?.trim() ?? '');

        if (opcaoBusca == 2) {
          break;
        }
      }
    } else if (opcao == 4) {
      bool contatoAtualizado = false;

      while (!contatoAtualizado) {
        print("\x1B[2J\x1B[0;0H");
        print('_' * 50);
        print('ATUALIZAR CONTATOS\n');

        if (agenda.isEmpty) {
          print('Não há nenhum contato há ser exibido');
          print('Digite Enter para voltar ao menu.');
          print('_' * 50);
          stdout.write('');
          stdin.readLineSync();
          break;
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

        List<String?> ids_agenda = agenda
            .map((contato) => contato['id'])
            .toList();

        if (id_atualizacao == null) {
          print(
            '\nPor favor, digite apenas o número do ID correspondente ao contato.',
          );
          stdin.readLineSync();
          continue;
        } else if (!ids_agenda.contains(id_atualizacao.toString())) {
          print(
            '\nEsse ID não está na agenda de contatos. Verifique e tente novamente.',
          );
          stdin.readLineSync();
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
        int? dado_atualizacao = int.tryParse(
          stdin.readLineSync()?.trim() ?? '',
        );

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

          print(
            'O nome do contato foi alterado alterado para $nome_atualizado.',
          );
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
    } else if (opcao == 5) {
      bool removerContato = false;
      while (removerContato == false) {
        print("\x1B[2J\x1B[0;0H");
        print('_' * 50);
        print('REMOVER CONTATOS\n');

        if (agenda.isEmpty) {
          print('Não há nenhum contato há ser exibido');
          print('Digite Enter para voltar ao menu.');
          print('_' * 50);
          stdout.write('');
          stdin.readLineSync();
          break;
        } else {
          for (var contato in agenda) {
            print('ID: ${contato['id']}');
            print('Nome: ${contato['nome']}');
            print('Número: ${contato['numero']}');
            print('E-mail: ${contato['email']}');
            print('_' * 50);
          }

          stdout.write('Qual o ID do contato que deseja remover? ');
          int? id_exclusao = int.tryParse(stdin.readLineSync()?.trim() ?? '');

          List<String?> ids_agenda = agenda
              .map((contato) => contato['id'])
              .toList();

          if (id_exclusao == null) {
            print(
              '\nPor favor, digite apenas o número do ID correspondente ao contato.',
            );
            stdout.write('');
            stdin.readLineSync();
            continue;
          } else if (!ids_agenda.contains(id_exclusao.toString())) {
            print(
              '\nEsse ID não está na agenda de contatos. Verifique e tente novamente.',
            );
            stdout.write('');
            stdin.readLineSync();
            continue;
          }
          ;

          var contato_correspondente = agenda.firstWhere(
            (contato) => contato['id'] == id_exclusao.toString(),
          );

          print('\nCONTATO ID $id_exclusao');
          print('Nome: ${contato_correspondente['nome']}');
          print('Número: ${contato_correspondente['numero']}');
          print('E-mail: ${contato_correspondente['email']}');
          print('_' * 50);

          stdout.write('Realmente deseja excluir este contato? (s/n): ');
          String? resposta = stdin.readLineSync()?.trim() ?? '';
          resposta = resposta.toLowerCase();

          if (resposta == 's') {
            agenda.remove(contato_correspondente);

            print('\nContato ID $id_exclusao excluído!');
            print('Pressione Enter para voltar ao Menu Inicial.');
            stdout.write('');
            stdin.readLineSync();
            removerContato = true;
          } else if (resposta == 'n') {
            print('\nO contato ID $id_exclusao foi mantido na agenda.');
            print('Pressione Enter para voltar ao Menu Inicial.');
            stdout.write('');
            stdin.readLineSync();
            removerContato = true;
          } else {
            print('Resposta inválida! Digite "s" para sim ou "n" para não.');
          }
        }
      }
    } else if (opcao == 6) {
      break;
    }
  }

  print('Encerrando o programa...');
  // timer
  print('Programa finalizado! :)');
}
