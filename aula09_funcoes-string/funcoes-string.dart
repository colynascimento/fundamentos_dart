void main() {
  // String base
  String frase = 'Gal Gadot! My true love!!';

  // length → tamanho da String
  int tamanhoString = frase.length;

  // toUpperCase() → tudo maiúsculo
  String fraseMaiuscula = frase.toUpperCase();

  // toLowerCase() → tudo minúsculo
  String fraseMinuscula = frase.toLowerCase();

  // contains() → verifica se um trecho existe na String
  bool contemGal = frase.contains('Gal');
  bool contemBatman = frase.contains('Batman');

  // substring() → recorta uma parte da String (inicio, fim)
  String pedaco = frase.substring(0, 9); // do índice 0 até o índice 8

  // replaceAll() → substitui todas as ocorrências
  String substituida = frase.replaceAll('love', 'amor');

  // split() → divide a string em partes, gerando uma lista
  List<String> palavras = frase.split(' ');

  // trim() → remove espaços extras no inicio e no fim
  String comEspacos = '   Gal Gadot    ';
  String semEspacos = comEspacos.trim();

  // startsWith() → verifica se o indice especificado começa com a substring
  bool comecaCom = frase.startsWith('Gado', 4);

  // endsWith() → verifica se a string termina com a substring especificada
  bool terminaCom = frase.endsWith('Gado');

  // --------------------------------------------------
  // Saída formatada
  print('-' * 70);
  print('Frase original: $frase');
  print('=' * 70);
  print('Tamanho da frase: $tamanhoString');
  print('Maiúscula: $fraseMaiuscula');
  print('Minúscula: $fraseMinuscula');
  print('-' * 70);
  print('Contém Gal?: $contemGal');
  print('Contém Batman?: $contemBatman');
  print('-' * 70);
  print('Substring (0 a 9): $pedaco');
  print('Replace All: $substituida');
  print('-' * 70);
  print('Split em palavras: $palavras');
  print('Trim antes: $comEspacos');
  print('Trim depois: $semEspacos');
  print('-' * 70);
  print('Começa com Gado: $comecaCom');
  print('Termina com Gado: $terminaCom');
  print('-' * 70);
}
