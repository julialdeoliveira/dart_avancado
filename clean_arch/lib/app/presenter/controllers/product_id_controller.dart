
import 'package:clean_arch/app/domain/entities/product_entity.dart';
import 'package:clean_arch/app/domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

class ProductIdController {
  
  final IGetProductsByIdUsecase _getProductsByIdUsecase;
  ProductIdController(this._getProductsByIdUsecase){

    getAllProductsById();
  }

  List<ProductEntity> products = [];
  void getAllProductsById(){
    products = _getProductsByIdUsecase.call();
  }
}