import '../../domain/entities/cellphone_entity.dart';
import '../../domain/usecases/get_all_brands_usecase.dart';
import '../../domain/usecases/get_cellphones_by_brand_usecase.dart';

class CellphoneController {
  final IGetAllBrandsUsecase _getAllBrandsUsecase;
  final IGetCellphonesByBrandUsecase _getCellphonesByBrandUsecase;

  CellphoneController(
    this._getCellphonesByBrandUsecase,
    this._getAllBrandsUsecase,
  ) {
    
    getAllBrands();
    getCellphoneByBrand('Positivo');
  
  }

  late CellphoneEntity cellphone;
  void getCellphoneByBrand(String brand) {
    cellphone = _getCellphonesByBrandUsecase.call(brand)!;
  }

  List<String> brands = [];
  void getAllBrands(){
    brands = _getAllBrandsUsecase.call();
  }
}
