
import '../datasources/get_all_products_datasource.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_all_products_repository.dart';

//Aqui será a implementação do repositório, porém não é ele que fará as requisições na API, Firebase, local,
//essa responsabilidade é dos datasources.
//A implementação do repositório servirá como uma ponte de certa forma.
class GetAllProductsRepositoryImp implements IGetAllProductsRepository {
  //Precisará de um contrato do datasource de trazer todos os produtos.
  //Nesse contrato pediremos o construtor.
  //Para lá no controller, passarmos a implementação.
  //Seguindo o princípio de Dependecy Inversion Principle (DIP), onde dependemos de abstrações e não implementações.

final GetAllProductsDatasource _datasource;
GetAllProductsRepositoryImp(this._datasource);

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
  
}

