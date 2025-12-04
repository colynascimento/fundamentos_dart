void exibirAgenda(agenda) {
  for (var contato in agenda) {
    print('ID: ${contato['id']}');
    print('Nome: ${contato['nome']}');
    print('Número: ${contato['numero']}');
    print('E-mail: ${contato['email']}');
    print('_' * 50);
  }
}

String capitalizarNome(nome) {
  return nome![0].toUpperCase() +
      nome.substring(1).toLowerCase();
}