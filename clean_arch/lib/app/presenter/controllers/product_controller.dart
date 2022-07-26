import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products/get_all_products_usecase.dart';
import '../../domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

class ProductController {
  //No nosso controller nós usaremos o UseCase
  //Por isso nós pedimos uma instancia do CONTRATO
  //no construtor, fazendo o DIP.
  final IGetAllProductsUsecase _getAllProductsUsecase;
  final IGetProductByIdUsecase _getProductByIdUsecase;

  ProductController(
    this._getAllProductsUsecase,
    this._getProductByIdUsecase,
  ) {
    //Aqui no construtor fizemos a chamada do método getAllproducts
    //Para trazer os produtos.
    getAllProducts();
    getProductById(1);
  }

  late ProductEntity product;
  void getProductById(int id) {
    product = _getProductByIdUsecase.call(id)!;
    print(product.name);
  }

//Criamos um objeto aqui para usar ele nas pages.
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }
}
