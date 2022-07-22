void main(){
Fruta fruta = Fruta();
Vegetal vegetal = Vegetal();
Carne carne = Carne();

Pessoa pessoa = Pessoa(fruta);
}

abstract class AlgoParaComer{
void comestivel();
}

class Fruta implements AlgoParaComer{
  @override
  void comestivel() {}
}

class Vegetal implements AlgoParaComer{
  @override
  void comestivel() {}
  }

  class Carne implements AlgoParaComer{
  @override
  void comestivel() {
  }
}

class Pessoa{
  AlgoParaComer algoParaComer;
  Pessoa(this.algoParaComer);
}