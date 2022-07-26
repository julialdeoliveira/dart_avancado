import 'package:clean_arch_star1/app/infra/datasources/local/get_all_computers_local_data_source_imp.dart';
import 'package:clean_arch_star1/app/presenter/controllers/computer_controller.dart';
import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_computers/get_all_computers_imp.dart';
import '../app/infra/repositories/get_all_computers_repository_imp.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  //DATASOURCE
  getIt.registerSingleton<GetAllComputersLocalDataSourceImp>(
    GetAllComputersLocalDataSourceImp(),
  );
  //REPOSITORIES
  getIt.registerSingleton<GetAllComputersRepositoryImp>(
    GetAllComputersRepositoryImp(
      getIt.get<GetAllComputersLocalDataSourceImp>(),
    ),
  );
  //USECASE
  getIt.registerSingleton<GetAllComputersUsecaseImp>(
    GetAllComputersUsecaseImp(
      getIt.get<GetAllComputersRepositoryImp>(),
    ),
  );
  //CONTROLLER

  getIt.registerSingleton<ComputerController>(
    ComputerController(
      getIt.get<GetAllComputersUsecaseImp>(),
    ),
  );
}
