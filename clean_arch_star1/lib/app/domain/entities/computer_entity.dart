class ComputerEntity {
  //Atributos
  String brand;
  String model;
  double price;
  int quantity;
  bool isNew;
  //Construtor
  ComputerEntity({
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
}
