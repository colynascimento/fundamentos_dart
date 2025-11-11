void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE(), MAP() E REDUCE() COM STRINGS');
  print('=' * 70);

  // --------------------------------------------------
  // Map de pessoas: chave é o nome e valor é a idade
  Map<String, int> pessoas = {
    'Ana': 17,
    'Bruno': 22,
    'Carla': 19,
    'Diego': 25,
    'Elisa': 16,
  };

  // --------------------------------------------------
  // Encadeamento de métodos funcionais:
  // Objetivo: pegar nomes de pessoas adultas, colocar em maiúsculas
  // e concatenar em uma única String

  // Entradas no Map (nome, idade)
  String nomesAdultos = pessoas.entries
      .where(
        (entrada) => entrada.value >= 18,
      ) // Filtra: apenas maiores de idade → Bruno, Carla, Diego
      .map(
        (entrada) => entrada.key.toUpperCase(),
      ) // Transforma: nomes em maiúsculas → BRUNO, CARLA, DIEGO
      .reduce(
        (acumulador, nome) => '$acumulador, $nome',
      ); // Reduz: concatena os nomes → "BRUNO, CARLA, DIEGO"

  // --------------------------------------------------
  // Saída
  print('Nomes das pessoas adultas: $nomesAdultos'); // BRUNO, CARLA, DIEGO
  print('=' * 70);
}
