
import 'package:clean_arch_ex3/app/domain/repositories/get_all_brands_repository.dart';

import '../entities/cellphone_entity.dart';
import 'get_all_cellpones_usecase.dart';

class GetAllCellphonesUsecaseImp implements IGetAllCellponesUsecase{
final IGetAllBrandsRepository _repository;
GetAllCellphonesUsecaseImp(this._repository);

  @override
  List<CellphoneEntity> call() {
    List<CellphoneEntity> listCellphones = _repository.call();

    return listCellphones;
  }
  
}