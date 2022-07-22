void main(){
  Uva uva = Uva();
  Carne carne = Carne();
  Pessoa pessoa = Pessoa(uva);

}
abstract class IAlimento{
  bool estaEstragado();
  bool ehSaudavel();
}

class Uva implements IAlimento{


  @override
  bool estaEstragado() {
    return false;
  }
  
  @override
  bool ehSaudavel() {
    return true;
  }

}

class Morango implements IAlimento{
  @override
  bool ehSaudavel() {
    return true;
  }

  @override
  bool estaEstragado() {
    return true;
  }

}

class Carne implements IAlimento{
  @override
  bool ehSaudavel() {
    return false;
  }

  @override
  bool estaEstragado() {
    return true;
  }

}

class Pessoa{
  final IAlimento alimento;
  Pessoa (this.alimento);

   void Comer(){
    if(alimento.estaEstragado() == false){
      print('Comendo ${alimento}');
    }
   }

   void comprar(){

   }
}