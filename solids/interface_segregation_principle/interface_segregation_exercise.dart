void main() {
  Romance romance = Romance();
  Acao acao = Acao();

  Duracao duracao = Duracao();
  duracao.imprimir(romance);
  duracao.imprimir(acao);

  Genero genero = Genero();
  genero.imprimir(romance);
  genero.imprimir(acao);
}

abstract class Filmes {
  genero() {}
  duracao() {}
}

abstract class FilmesMelosos extends Filmes {}

class Romance implements FilmesMelosos {
  @override
 void duracao() {
    print('Esse filme tem 2h');
  }

  @override
 void genero() {
    print('Esse filme é do gênero meloso');
  }
}

class Acao implements Filmes {
  @override
 void duracao() {
    print('Esse filme tem 1h30');
  }

  @override
  void genero() {
    print('Esse filme é do genero não meloso');
  }
}

class Duracao {
  void imprimir(Filmes filmes) {
    print(filmes.duracao());
  }
}

class Genero {
  void imprimir(Filmes filmes) {
    print(filmes.genero());
  }
}
