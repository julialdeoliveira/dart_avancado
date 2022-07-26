import 'package:clean_arch/app/domain/entities/product_entity.dart';
import 'package:clean_arch/app/domain/repositories/get_product_by_id_repository.dart';
import 'package:clean_arch/app/domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

class GetProductByIdUsecaseImp implements IGetProductByIdUsecase {
  final GetProductByIdRepository _repository;
  GetProductByIdUsecaseImp(this._repository);

  @override
  ProductEntity? call(int id) {
    return _repository.call(id);
  }
}
