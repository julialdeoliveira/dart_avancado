

import 'package:clean_arch_star1/app/domain/entities/computer_entity.dart';
import 'package:clean_arch_star1/app/domain/repositories/get_all_computers_repository.dart';
import 'package:clean_arch_star1/app/infra/datasources/remote/get_all_computers_datasource.dart';

class GetAllComputersRepositoryImp implements IGetAllComputersRepository {

  final IGetAllComputersDatasource _datasource;
  GetAllComputersRepositoryImp(this._datasource);

  @override
  List<ComputerEntity> call() {
    return _datasource.call();
  }
  
}