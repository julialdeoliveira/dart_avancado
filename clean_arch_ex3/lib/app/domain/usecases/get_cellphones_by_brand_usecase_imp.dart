
import '../entities/cellphone_entity.dart';
import '../repositories/get_cellphone_by_brand_repository.dart';
import 'get_cellphones_by_brand_usecase.dart';

class GetCellphonesByBrandUsecaseImp implements IGetCellphonesByBrandUsecase{
final IGetCellphonesByBrandRepository _repository;
GetCellphonesByBrandUsecaseImp(this._repository);

  @override
  List<CellphoneEntity>? call(String brand) {
    return _repository.call(brand);
  }
  
}