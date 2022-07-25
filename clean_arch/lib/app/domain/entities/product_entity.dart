class ProductEntity {
  String name;
  String brand;
  String category;
  double price;
  int qtd;

  ProductEntity({
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.qtd,
  });

  bool isAvaliable(qnt){
    if(qnt > 0){
      return true;
    }else{
      return false;
    }
  }
  
}
