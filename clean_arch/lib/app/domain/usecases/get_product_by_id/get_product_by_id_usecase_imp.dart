


// import 'package:clean_arch/app/domain/entities/product_entity.dart';
// import 'package:clean_arch/app/domain/repositories/get_all_products_repository.dart';
// import 'package:clean_arch/app/domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

// class GetProductsByIdUsecaseImp implements IGetProductsByIdUsecase{

//   final GetAllProductsRepository _repository;
//   GetProductsByIdUsecaseImp(this._repository);

//   @override
//   List<ProductEntity> call() {
//     List<ProductEntity> listById = [];
//     List<ProductEntity> listProducts = _repository.call();

//     for(ProductEntity product in listProducts){
//       if (product.getById()){
//         listById.add(product);
//     }
//     return listById;
//   }
  
// }
// }