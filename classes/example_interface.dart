void main() {
  Romance romance = Romance();
  Ficcao ficcao = Ficcao();

  romance.status();
  ficcao.status();
}

abstract class Livros {
  void status();
}

class Romance implements Livros {
  @override
  void status() {
    print('Esse livro é sobre beijinhos');
  }
}

class Ficcao implements Livros {
  @override
  void status() {
    print('Esse livro é sobre historinhas');
  }
}
