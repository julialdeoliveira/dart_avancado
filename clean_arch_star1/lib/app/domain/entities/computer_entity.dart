class ComputerEntity {
  //Atributos
  int id;
  String brand;
  String model;
  double price;
  int quantity;
  bool isNew;
  //Construtor
  ComputerEntity({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.quantity,
    required this.isNew,
  });

//Método de validação do preço, o bool significa o tipo de retorno dele.
  bool priceIsValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyAvailability(){
    if (quantity > 0){
      return true;
    }else{
      return false;
    }
  }

  double hasDiscountIfUsed(){
    if(isNew == false){
      return price * 0.75;
    }else{
      return price;
    }
  }
}
