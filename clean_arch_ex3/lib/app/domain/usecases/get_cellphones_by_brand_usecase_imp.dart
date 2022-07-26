
import '../entities/cellphone_entity.dart';
import '../repositories/get_computer_by_brand_repository.dart';
import 'get_cellphones_by_brand_usecase.dart';

class GetCellphonesByBrandUsecaseImp implements IGetCellphonesByBrandUsecase{
final IGetComputerByBrandRepository _repository;
GetCellphonesByBrandUsecaseImp(this._repository);

  @override
  CellphoneEntity? call(String brand) {
    return _repository.call(brand);
  }
  
}