void main() {
  /*
   * Criando um Map aninhado:
   * - O Map principal tem como chave o NOME da atriz (tipo String).return
   * - O valor associado a cada chave é outro Map (submapa).
   * - Esse submapa contém duas informações sobre a atriz:
   *     -> 'nascimento': data de nascimento (String)
   *     -> 'altura': altura em metros (double)
   * 
   * Estrutura resumida:
   *  { "Nome da atriz": {"nascimento": "data", "altura": valor}, ... }
   */

  Map<String, Map<String, dynamic>> atrizes = {
    'Selena Gomez': {'nascimento': '22/07/1992', 'altura': 1.65},
    'Gal Gadot': {'nascimento': '30/04/1984', 'altura': 1.78},
    'Scarlet Johansson': {'nascimento': '22/11/1984', 'altura': 1.60},
    'Margot Robbie': {'nascimento': '02/07/1990', 'altura': 1.68},
    'Zendaya': {'nascimento': '01/09/1996', 'altura': 1.78},
  };

  print('-' * 70);
  print('ATRIZES MAIS BELAS DE HOLLYWOOD (com Map aninhado)');

  /*
   * Percorrendo o Map principal com forEach():
   * - O método forEach percorre todos os pares chave/valor do Map.
   * - Aqui, "nome" representa a CHAVE (ex.: "Gal Gadot").
   * - "dados" representa o VALOR (que, neste caso, é outro Map).
   * 
   * Exemplo:
   *  nome -> "Gal Gadot"
   *  dados -> ("nascimento": "30/04/1985", "altura": "1.78")
   * 
   * Para acessar o submapa:
   *  dados['nascimento'] -> retorna a data de nascimento
   *  dados['altura']     -> retorna a altura
   */

  atrizes.forEach((nome, dados) {
    print(
      '$nome - Nascimento: ${dados['nascimento']}, Altura: ${dados['altura']}m',
    );
  });

  // Outro separador para facilitar a exibição
  print('-' * 70);
}
