
import 'package:clean_arch/app/domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductController {
  IGetAllProductsUsecase _getAllProcutsUseCase;
  ProductController(this._getAllProcutsUseCase){
    getAllProducts();
  }

  List<ProductEntity> products = [];
  void getAllProducts(){
    products = _getAllProcutsUseCase.call();
  }
}
