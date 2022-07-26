import 'package:clean_arch_star1/app/domain/repositories/get_all_computers_repository.dart';

import '../../entities/computer_entity.dart';
import 'get_all_computers_usecase.dart';

class GetAllComputersUsecaseImp implements IGetAllComputersUsecase {
  final IGetAllComputersRepository _repository;
  GetAllComputersUsecaseImp(this._repository);

  @override
  List<ComputerEntity> call() {
    List<ComputerEntity> listCorrect = [];
    List<ComputerEntity> listComputer = _repository.call();

    for (ComputerEntity computer in listComputer) {
      if (computer.verifyAvailability() && computer.priceIsValid()) {
        listCorrect.add(computer);
      }
    }
    return listCorrect;
  }
}
