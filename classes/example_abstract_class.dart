void main() {
  Romance romance = Romance(nome: 'Todas as cores', codigo: 110, valor: 50);
  Ficcao ficcao = Ficcao(nome: 'Divergente', codigo: 500, valor: 45);

  romance.status();
  romance.assunto();
  ficcao.status();
  ficcao.assunto();
}

abstract class Livros {
  String nome;
  int codigo;
  int valor;

  Livros({required this.nome, required this.codigo, required this.valor});

  void status() {
    print('O nome do livro é: $nome, O código é: $codigo e o valor é: $valor');
  }
}

class Romance extends Livros {
  Romance({required super.nome, required super.codigo, required super.valor});

  void assunto() {
    print('Esse livro é sobre beijinhos');
  }
}

class Ficcao extends Livros {
  Ficcao({required super.nome, required super.codigo, required super.valor});

  void assunto() {
    print('Esse livro é sobre historinhas');
  }
}
