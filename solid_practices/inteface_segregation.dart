//Não implemente de interface em que terá métodos inúteis para a classe atual

void main(){
Bike bike = Bike();
Caminhao caminhao = Caminhao();
Moto moto = Moto();
}
//Abstrtação, Interface, Contrato
abstract class VeiculoI{
  void andar();
  void vender();
  void transportarCargaLevissima();
}

abstract class VeiculosQueCorrem extends VeiculoI{
  void correr();
}

abstract class VeiculoCargaI extends VeiculoI{
  void carregarCargaPesada();
}

class Bike implements VeiculoI{
  @override
  void andar() {}
  
  @override
  void transportarCargaLevissima() {
    // TODO: implement transportarCargaLevissima
  }
  
  @override
  void vender() {
    // TODO: implement vender
  }
}

class Caminhao implements VeiculoCargaI{
  @override
  void andar() {}

  @override
  void correr(){}

  @override
  void carregarCargaPesada() {}
  
  @override
  void transportarCargaLevissima() {}
  
  @override
  void vender() {}
}

class Moto implements VeiculosQueCorrem{
  @override
  void andar() {}

  @override
  void correr() {}
  
  @override
  void transportarCargaLevissima() {}
  
  @override
  void vender() {}

}