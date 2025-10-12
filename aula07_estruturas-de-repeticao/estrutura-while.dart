import 'dart:io';

void main() {
    // Variável de controle do laço
    int i = 1;

    while (i <= 5) {
        // stdout.write imprime na mesma linha (sem quebra de linha automática)
        stdout.write('$i ');

        /* ----------------------------------------
             IMPORTANTE:
             Se não incrementarmos a variável 'i',
             a condição nunca mudará e o loop se tornará INFINITO.
           ---------------------------------------- */
        i++;
    } 
}