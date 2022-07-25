//Contém as regra de negócio corporativas
// é uma entidade

class ProductEntity {
  int id;
  String name;
  String brand;
  String category;
  double price;
  int qtd;

  ProductEntity({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.qtd,
  });

  bool verifyAvailaibility(){
    if(qtd > 0){
      return true;
    }else{
      return false;
    }
  }

  bool verifyPrice(){
    if (price > 0){
      return true;
    }else{
      return false;
    }
  }

  double hasDiscountIfQuantity (price, qtd){
    if (qtd >= 5){
      return price * 0.75;
    }else{
      return price;
    }
  }

  // bool getById(id){
  //   if (id = idController){
  //     return id;
  //   }
  // }



  
}
