
import '../../domain/entities/cellphone_entity.dart';
import '../../domain/repositories/get_computer_by_brand_repository.dart';
import '../datasources/remote/get_cellphones_by_brand_datasource.dart';

class GetCellphonesByBrandRepositoryImp implements IGetComputerByBrandRepository{

  final IGetCellphonesByBrandDataSource _dataSource;
  GetCellphonesByBrandRepositoryImp(this._dataSource);

  @override
  CellphoneEntity? call(String brand) {
    return _dataSource.call(brand);
  }
  
}