import 'dart:io';
import 'cadastrar_contato.dart';
import 'exibir_contatos.dart';
import 'buscar_contatos.dart';
import 'utils/firulas.dart';

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
    limparTela();
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
      exibirContatos(agenda);
    } else if (opcao == 3) {
      buscarContatos(agenda);

    } else if (opcao == 4) {
      
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
