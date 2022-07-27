
import '../../domain/entities/cellphone_entity.dart';
import '../../domain/repositories/get_cellphone_by_brand_repository.dart';
import '../datasources/get_cellphones_by_brand_datasource.dart';

class GetCellphonesByBrandRepositoryImp implements IGetCellphonesByBrandRepository{

  final IGetCellphonesByBrandDataSource _dataSource;
  GetCellphonesByBrandRepositoryImp(this._dataSource);

  @override
  List<CellphoneEntity>? call(String brand) {
    return _dataSource.call(brand);
  }
  
}