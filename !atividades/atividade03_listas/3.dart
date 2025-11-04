// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a
// menor nota da lista e, em seguida, calcule a média aritmética das notas
// restantes. O resultado deve ser um número decimal (double).

void main() {
  List<double> notasDosAlunos = [10, 5, 7, 3, 8, 6, 9];

  double menorNota = notasDosAlunos[0];

  for (var nota in notasDosAlunos) {
    if (menorNota > nota) {
      menorNota = nota;
    }
  }

  notasDosAlunos.remove(menorNota);

  double soma = 0;
  notasDosAlunos.forEach((nota) => soma += nota);

  double media = soma / notasDosAlunos.length;
  print(media);
}
