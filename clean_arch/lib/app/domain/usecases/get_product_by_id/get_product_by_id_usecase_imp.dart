import '../../entities/product_entity.dart';
import '../../repositories/get_product_by_id_repository.dart';
import 'get_product_by_id_usecase.dart';

class GetProductByIdUsecaseImp implements IGetProductByIdUsecase {
  final GetProductByIdRepository _repository;
  GetProductByIdUsecaseImp(this._repository);

  @override
  ProductEntity? call(int id) {
    return _repository.call(id);
  }
}
