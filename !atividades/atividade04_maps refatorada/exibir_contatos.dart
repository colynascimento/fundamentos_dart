import 'utils/firulas.dart';
import 'dart:io';

void exibirContatos(agenda) {
  limparTela();
  print('_' * 50);
  print('AGENDA DE CONTATOS\n');

  if (!validarAgendaVazia(agenda)) {
    return;
  }

  for (var contato in agenda) {
    print('ID: ${contato['id']}');
    print('Nome: ${contato['nome']}');
    print('Número: ${contato['numero']}');
    print('E-mail: ${contato['email']}');
    print('_' * 50);
  }

  stdout.write('Digite Enter para voltar ao Menu Inicial.');
  stdin.readLineSync();
  return;
}

bool validarAgendaVazia(agenda) {
  if (agenda.isEmpty) {
    print('Não há nenhum contato há ser exibido');
    print('Digite Enter para voltar ao menu.');
    print('_' * 50);
    print('');
    stdin.readLineSync();
    return false;
  }
  return true;
}
