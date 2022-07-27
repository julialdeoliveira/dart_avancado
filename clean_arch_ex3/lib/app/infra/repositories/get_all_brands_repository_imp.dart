import '../../domain/repositories/get_all_brands_repository.dart';
import '../datasources/remote/get_all_brands_datasource.dart';

class GetAllBrandsRepositoryImp implements IGetAllBrandsRepository{
final IGetAllBrandsDatasource _datasource;
GetAllBrandsRepositoryImp(this._datasource);

  @override
  List<String> call() {
    return _datasource.call();
  }
  
}