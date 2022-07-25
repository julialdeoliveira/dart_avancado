import 'package:clean_arch/app/domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductController {
  //No nosso controller nós usaremos o UseCase
  //Por isso nós pedimos uma instancia do CONTRATO
  //no construtor, fazendo o DIP.
  IGetAllProductsUsecase _getAllProcutsUseCase;
  ProductController(this._getAllProcutsUseCase) {
    //Aqui no construtor fizemos a chamada do método getAllproducts
    //Para trazer os produtos.
    getAllProducts();
  }

//Criamos um objeto aqui para usar ele nas pages.
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProcutsUseCase.call();
  }
}
