
import 'package:clean_arch/app/domain/repositories/get_all_products_repository.dart';

import '../entities/product_entity.dart';
import 'get_all_products_usecase.dart';

//Contém as regras de negócio da aplicação
//Essa é a implementação do caso de uso do IGetAllProducts
class GetAllProductsUsecaseImp implements IGetAllProductsUsecase{
  //Aqui PRECISAREMOS de um CONTRATO do repositório para fazer a chamada do método.
  // Além de dependermos da ABSTRAÇÂO e NÂO DE IMPLEMENTAÇÂO, por isso o CONTRATO.
  
  final GetAllProductsRepository _repository;
  GetAllProductsUsecaseImp(this._repository);

  @override
  List<ProductEntity> call() {
    List<ProductEntity> listCorrect = [];
    List<ProductEntity> listProducts = _repository.call();

    for(ProductEntity product in listProducts){
      if (product.verifyAvailaibility() && product.verifyPrice()){
        listCorrect.add(product);
      }
    }
    return listCorrect;
  }
  
}