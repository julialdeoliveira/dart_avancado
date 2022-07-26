
import 'package:clean_arch/app/domain/entities/product_entity.dart';
import 'package:clean_arch/app/infra/datasources/remote/get_product_by_id_datasource.dart';

import '../../domain/repositories/get_product_by_id_repository.dart';

class GetProductByIdRepositoryImp implements GetProductByIdRepository{

final GetProductByIdDatasource _datasource;
GetProductByIdRepositoryImp(this._datasource);

  @override
  ProductEntity? call(int id) {
    return _datasource.call(id);
  }
  
}