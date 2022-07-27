import 'package:clean_arch_ex3/app/domain/usecases/get_all_brands_usecase.dart';

import '../../domain/entities/cellphone_entity.dart';
import '../../domain/usecases/get_cellphones_by_brand_usecase.dart';

class CellphoneController {
  final IGetAllBrandsUsecase _getAllBrandsUsecase;
  final IGetCellphonesByBrandUsecase _getCellphonesByBrandUsecase;

  CellphoneController(
    this._getCellphonesByBrandUsecase,
    this._getAllBrandsUsecase,
  ) {
    getAllBrands();
  }

  List<CellphoneEntity> cellphones = [];
  getCellphoneByBrand(String brand){
  cellphones = _getCellphonesByBrandUsecase.call(brand)!;
  return cellphones;
  }

  List<String> brands = [];
  void getAllBrands(){
  brands = _getAllBrandsUsecase.call();
  }

  
}
