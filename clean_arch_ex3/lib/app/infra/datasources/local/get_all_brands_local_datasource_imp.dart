import '../remote/get_all_brands_datasource.dart';

class GetAllBrandsLocalDatasourceImp implements IGetAllBrandsDatasource{
  @override
  List<String> call() {
    return ['Xiami', 'Apple', 'Samsung'];
  }
  
}