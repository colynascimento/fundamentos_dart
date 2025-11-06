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
}
