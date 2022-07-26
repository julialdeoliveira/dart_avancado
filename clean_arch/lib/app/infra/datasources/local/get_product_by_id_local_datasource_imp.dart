
import '../../../domain/entities/product_entity.dart';
import '../remote/get_product_by_id_datasource.dart';

class GetProductByIdLocalDatasourceImp implements GetProductByIdDatasource{
  @override
  ProductEntity? call(int id) {
    List<ProductEntity> products = [
      ProductEntity(
        id: 0,
        name: 'Computador',
        brand: 'hp',
        category: 'eletrônicos',
        price: 5000,
        qtd: 3, 
      ),
      ProductEntity(
        id: 1,
        name: 'Bicicleta',
        brand: 'mona',
        category: 'automóveis',
        price: 300,
        qtd: 3,
      ),
      ProductEntity(
        id: 2,
        name: 'Fone de ouvido gamer',
        brand: 'hyperX',
        category: 'eletrônicos',
        price: 500,
        qtd: 5,
      ),
    ];

    for (ProductEntity product in products){
      if(product.id == id){
        return product;
      }
    }
    return null;
  }
  
}