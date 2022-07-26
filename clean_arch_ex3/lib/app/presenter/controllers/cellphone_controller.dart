import 'package:clean_arch_ex3/app/domain/usecases/get_all_cellpones_usecase.dart';

import '../../domain/entities/cellphone_entity.dart';
import '../../domain/usecases/get_cellphones_by_brand_usecase.dart';

class CellphoneController {
  final IGetAllCellponesUsecase _getAllCellponesUsecase;
  final IGetCellphonesByBrandUsecase _getCellphonesByBrandUsecase;

  CellphoneController(
    this._getCellphonesByBrandUsecase,
    this._getAllCellponesUsecase,
  ) {
    getCellphoneByBrand('Positivo');
    print(cellphone.brand);
  }

  late CellphoneEntity cellphone;
  void getCellphoneByBrand(String brand) {
    cellphone = _getCellphonesByBrandUsecase.call(brand)!;
  }
}
