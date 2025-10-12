void main() {
    int a = 20;
    int b = 5;
    int c = 7;

    bool proposicao1 = a > b; //true
    bool proposicao2 = b < c; //true

    print('VERDADEIRO --------------------');
    print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
    print('$a > $b || $b < $c - Resposta: ${proposicao1 || proposicao2}');
    print('');

    bool proposicao3 = a < b; // false
    bool proposicao4 = b > c; // false

    print('FALSO --------------------');
    print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');
    print('$a > $b || $b > $c - Resposta: ${proposicao3 || proposicao4}');
    print('');

    bool v = true;
    bool f = false;

    print('NEGANDO --------------------');
    print('Negando o V: ${!v}');
    print('Negando o F: ${!f}');
}