void main(){
Professora professora = Professora();
Aluna aluna = Aluna();

Existencia existencia = Existencia(aluna);
}
abstract class Pessoa{
  void existir(){}
}

class Professora implements Pessoa{
  @override
  void existir() {}
}
class Aluna implements Pessoa{
  @override
  void existir() {}
}
class Faxineira implements Pessoa{
  @override
  void existir() {}
}

class Existencia{
Pessoa existir;
Existencia (this.existir);
}