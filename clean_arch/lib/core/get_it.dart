import 'package:clean_arch/app/infra/datasources/local/get_product_by_id_local_datasource_imp.dart';
import 'package:clean_arch/app/infra/datasources/remote/get_product_by_id_datasource.dart';
import 'package:clean_arch/app/presenter/controllers/product_controller.dart';
import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../app/domain/usecases/get_product_by_id/get_product_by_id_usecase_imp.dart';
import '../app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
import '../app/infra/repositories/get_all_product_repository_imp.dart';
import '../app/infra/repositories/get_product_by_id_repository_imp.dart';

final getIt = GetIt.instance;

void setupDependencies() {
//DATASOURCE
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );

  getIt.registerSingleton<GetProductByIdLocalDatasourceImp>(
    GetProductByIdLocalDatasourceImp(),
  );
//REPOSITORIES
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(getIt.get<GetAllProductsLocalDatasourceImp>()),
  );
 
 getIt.registerSingleton<GetProductByIdRepositoryImp>(
  GetProductByIdRepositoryImp(getIt.get<GetProductByIdLocalDatasourceImp>()),
 );

//USECASE

  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(getIt.get<GetAllProductsRepositoryImp>()),
  );

  getIt.registerSingleton<GetProductByIdUsecaseImp>(GetProductByIdUsecaseImp(
    getIt.get<GetProductByIdRepositoryImp>()
  ));


//CONTROLLERS
  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt.get<GetAllProductsUsecaseImp>(),
      getIt.get<GetProductByIdUsecaseImp>()
    ),
  );
}
