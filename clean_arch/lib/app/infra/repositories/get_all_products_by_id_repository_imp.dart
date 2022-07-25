
import 'package:clean_arch/app/domain/entities/product_entity.dart';
import 'package:clean_arch/app/infra/datasources/get_all_products_datasource.dart';

import '../../domain/repositories/get_product_by_id_repository.dart';

class GetAllProductsByIdRepositoryImp implements GetProductByIdRepository{

final GetAllProductsDatasource _datasource;
GetAllProductsByIdRepositoryImp(this._datasource);

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
  
}