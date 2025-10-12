import 'dart:async';

String removerAcentos(String texto) {
  const comAcento = 'áàãâäéèêëíìîïóòõôöúùûüçÁÀÃÂÄÉÈÊËÍÌÎÏÓÒÕÔÖÚÙÛÜÇ';
  const semAcento = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC';

  for (int i = 0; i < comAcento.length; i++) {
    texto = texto.replaceAll(comAcento[i], semAcento[i]);
  }

  return texto;
}

String normalizarTexto(String texto) {
  return removerAcentos(texto.trim().toLowerCase());
}


Future<void> finalizarPrograma() async {
  print('Finalizando o programa...');
  await Future.delayed(Duration(seconds: 3));
  print('Programa finalizado!');
}