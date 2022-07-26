
import 'package:clean_arch_ex3/app/infra/datasources/remote/get_all_cellphones_datasource.dart';

import '../../domain/entities/cellphone_entity.dart';
import '../../domain/repositories/get_all_brands_repository.dart';

class GetAllCellphonesRepositoryImp implements IGetAllBrandsRepository{
final IGetAllCellphonesDatasource _datasource;
GetAllCellphonesRepositoryImp(this._datasource);

  @override
  List<CellphoneEntity> call() {
    return _datasource.call();
  }
  
}