// import 'package:clean_arch/app/domain/usecases/get_product_by_id/get_product_by_id_usecase_imp.dart';
// import 'package:clean_arch/app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
// import 'package:clean_arch/app/infra/repositories/get_all_products_by_id_repository_imp.dart';
// import 'package:clean_arch/app/presenter/controllers/product_id_controller.dart';
// import 'package:get_it/get_it.dart';

// final getIt = GetIt.instance;

// void setupDependencies() {
// //DATASOURCE
//   getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
//     GetAllProductsLocalDatasourceImp(),
//   );
// //REPOSITORIES
//   getIt.registerSingleton<GetAllProductsByIdRepositoryImp>(
//     GetAllProductsByIdRepositoryImp(
//         getIt.get<GetAllProductsLocalDatasourceImp>()),
//   );
// //USECASES
//   getIt.registerSingleton<GetProductsByIdUsecaseImp>(
//     GetProductsByIdUsecaseImp(getIt.get<GetAllProductsByIdRepositoryImp>()),
//   );
// //CONTROLLERS
//   getIt.registerSingleton<ProductIdController>(
//     ProductIdController(getIt.get<GetProductsByIdUsecaseImp>()),
//   );
// }
