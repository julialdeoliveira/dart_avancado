void main() {
  Soda soda = Soda();
  Wine wine = Wine();

  Bebendo bebendo = Bebendo();
  bebendo.bebo(wine);
  bebendo.bebo(soda);
}

abstract class Drinkable {
  void beber() {}
}

class Soda implements Drinkable {
  @override
  void beber() {
    print('Bebendo refri');
  }
}

class Wine implements Drinkable {
  @override
  void beber() {
    print('Bebendo vinho');
  }
}

class Bebendo {
  void bebo(Drinkable bebida) {
    print({bebida.beber()});
  }
}
