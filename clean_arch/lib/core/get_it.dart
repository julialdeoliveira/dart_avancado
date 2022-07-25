import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
import '../app/infra/repositories/get_all_product_repository_imp.dart';
import '../app/presenter/controllers/product_controller.dart';

final getIt = GetIt.instance;

void setupDependencies() {
//DATASOURCE
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );
//REPOSITORIES
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(getIt.get<GetAllProductsLocalDatasourceImp>()),
  );
//USECASES
  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(getIt.get<GetAllProductsRepositoryImp>()),
  );
//CONTROLLERS
  getIt.registerSingleton<ProductController>(
    ProductController(getIt.get<GetAllProductsUsecaseImp>()),
  );


}
