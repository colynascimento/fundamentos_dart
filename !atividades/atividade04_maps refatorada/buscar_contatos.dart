import 'utils/firulas.dart';
import 'utils/validacoes.dart';
import 'dart:io';

void buscarContatos(agenda) {
  while (true) {
    limparTela();
    print('_' * 50);
    print('BUSCAR CONTATOS\n');

    stdout.write('Digite o dado que deseja buscar:');
    String? entrada_buscada = stdin.readLineSync()?.trim().toLowerCase() ?? '';

    if (!validarEntradaVazia(entrada_buscada)) {
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
    int? opcaoBusca = int.tryParse(stdin.readLineSync()?.trim() ?? '');

    if (opcaoBusca == 2) {
      return;
    }
  }
}
