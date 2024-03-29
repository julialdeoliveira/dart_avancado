import '../../../domain/entities/product_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements GetAllProductsDatasource {
  @override
  List<ProductEntity> call() {
    return [
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
  }
}
