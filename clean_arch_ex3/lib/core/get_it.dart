import 'package:clean_arch_ex3/app/domain/usecases/get_cellphones_by_brand_usecase_imp.dart';
import 'package:clean_arch_ex3/app/infra/datasources/local/get_cellhphones_by_brand_local_datasource_imp.dart';
import 'package:clean_arch_ex3/app/infra/repositories/get_cellphones_by_brand_repository_imp.dart';
import 'package:clean_arch_ex3/app/presenter/controllers/cellphone_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  //DATASOURCE
  getIt.registerSingleton<GetCellhphonesByBrandLocalDatasourceImp>(
      GetCellhphonesByBrandLocalDatasourceImp());
  //REPOSITORIES
  getIt.registerSingleton<GetCellphonesByBrandRepositoryImp>(
      GetCellphonesByBrandRepositoryImp(
          getIt.get<GetCellhphonesByBrandLocalDatasourceImp>()));
  //USECASE
  getIt.registerSingleton<GetCellphonesByBrandUsecaseImp>(
      GetCellphonesByBrandUsecaseImp(
          getIt.get<GetCellphonesByBrandRepositoryImp>()));
  //CONTROLLERS
  getIt.registerSingleton<CellphoneController>(
      CellphoneController(getIt.get<GetCellphonesByBrandUsecaseImp>()));
}
