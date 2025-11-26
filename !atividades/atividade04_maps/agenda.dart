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
  while (true) {
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
      print("\x1B[2J\x1B[0;0H");
      print('_' * 50);
      print('CADASTRAR NOVO CONTATO');

      stdout.write('\nDigite o número do contato: ');
      String? numero = stdin.readLineSync()?.trim() ?? 'Não informado';

      for (var contato in agenda) {
        // Validação para numero existente
        if (contato[numero] == numero) {
          print('O número do contato já existe!');
          print(
            'Por favor, digite um número diferente ou vá ao módulo "Atualizar" no Menu Inicial.',
          );
          continue;
        }
      }

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
      print('\nDeseja:');
      print('1 - Confirmar e adicionar');
      print('2 - Cancelar e fazer novo cadastro');
      print('3 - Cancelar e voltar ao Menu Inicial');
      stdout.write('\nDigite a opção escolhida: ');

      //CONTINUAR DAQUI

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

      stdout.write('Digite o dado que deseja buscar:');
      String? entrada_buscada =
          stdin.readLineSync()?.trim().toLowerCase() ?? '';

      if (entrada_buscada.isEmpty) {
        print('Por favor, insira um dado para realizar a busca.');
        //retorno
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
          print('_' * 50);
        }
      }

      // opção para usuário realizar nova buscar ou retornar ao menu
    } else if (opcao == 4) {
      print('_' * 50);
      print('ATUALIZAR CONTATOS\n');

      if (agenda.length == 0) {
        print('Não há nenhum contato há ser exibido');
        print('Digite Enter para voltar ao menu.');
        print('_' * 50);
        // Tenho que colocar um while para funcionar =')
      } else {
        for (var contato in agenda) {
          print('ID: ${contato['id']}');
          print('Nome: ${contato['nome']}');
          print('Número: ${contato['numero']}');
          print('E-mail: ${contato['email']}');
          print('_' * 50);
        }
      }

      stdout.write('Qual o ID do contato que deseja atualizar? ');
      int? id_atualizacao = int.tryParse(stdin.readLineSync()?.trim() ?? '');

      List<String?> ids_agenda = agenda
          .map((contato) => contato['id'])
          .toList();

      if (id_atualizacao == null) {
        print(
          '\nPor favor, digite apenas o número do ID correspondente ao contato.',
        );
        // retorno
      } else if (!ids_agenda.contains(id_atualizacao)) {
        print(
          '\nEsse ID não está na agenda de contatos. Verifique e tente novamente.',
        );
        // retorno
      }
      ;

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
          //retorno
        }

        print(
          'O nome do contato $contato_correspondente alterado para $nome_atualizado.',
        );
        print('Digite Enter para voltar ao menu.');
        print('_' * 50);
        // while p retornar, enfim
      } else if (dado_atualizacao == 2) {
        print('_' * 50);
        print('ATUALIZAR NÚMERO\n');
        print('Nome atual do contato: ${contato_correspondente['numero']}');
        stdout.write('Digite o novo número do contato: ');
        String? numero_atualizado = stdin.readLineSync()?.trim() ?? '';

        if (numero_atualizado.isEmpty) {
          numero_atualizado = 'Não informado';
        }

        print(
          'O nome do contato $contato_correspondente alterado para $numero_atualizado.',
        );
        print('Digite Enter para voltar ao menu.');
        print('_' * 50);
      } else if (dado_atualizacao == 3) {
        print('_' * 50);
        print('ATUALIZAR E-MAIL\n');
        print('E-mail atual do contato: ${contato_correspondente['email']}');
        stdout.write('Digite o novo e-mail do contato: ');
        String? email_atualizado = stdin.readLineSync()?.trim() ?? '';

        if (email_atualizado.isEmpty) {
          email_atualizado = 'Não informado';
        }

        print(
          'O nome do contato $contato_correspondente alterado para $email_atualizado.',
        );
        print('Digite Enter para voltar ao menu.');
        print('_' * 50);
      }
    } else if (opcao == 5) {
      print('_' * 50);
      print('REMOVER CONTATOS\n');

      if (agenda.isEmpty) {
        print('Não há nenhum contato há ser exibido');
        print('Digite Enter para voltar ao menu.');
        print('_' * 50);
        // Tenho que colocar um while para funcionar =')
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
          // retorno
        } else if (!ids_agenda.contains(id_exclusao.toString())) {
          print(
            '\nEsse ID não está na agenda de contatos. Verifique e tente novamente.',
          );
          // retorno
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
          return;
          //retorno
        } else if (resposta == 'n') {
          print('\nO contato ID $id_exclusao foi mantido na agenda.');
          print('Pressione Enter para voltar ao Menu Inicial.');
          return;
          //retorno
        } else {
          print('Resposta inválida! Digite "s" para sim ou "n" para não.');
          //segurado pelo while
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
