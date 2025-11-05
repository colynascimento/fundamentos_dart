// Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e
// colete em uma nova lista apenas os emails que contêm exatamente um caractere
// '@' e terminam com ".com".

void main() {
  List<String> emails = [
    'colynascimento@blabla.com',
    'princesajujuba@reinodoce.com',
    'girafa-azul@safari.org',
    'piupiu123canarinho.com',
    'shaolin@matador.com',
  ];

  List<String> validos = [];

  for (var e in emails) {
    if (e.endsWith('.com') && e.contains('@')) {
      validos.add(e);
    }
  }

  print(validos);
}
