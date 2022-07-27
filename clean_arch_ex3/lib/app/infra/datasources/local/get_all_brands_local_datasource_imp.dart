
import 'package:clean_arch_ex3/app/domain/entities/cellphone_entity.dart';

import '../get_all_brands_datasource.dart';

class GetAllBrandsLocalDatasourceImp implements IGetAllBrandsDatasource{
  @override

  List<String> brands = [];
  List<String> call() {
  return ['Xioami', 'Apple', 'Samsung', 'Motorola'];
  }
  
}