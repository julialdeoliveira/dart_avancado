import '../../domain/entities/computer_entity.dart';
import '../../domain/usecases/get_all_computers/get_all_computers_usecase.dart';

class ComputerController {
  final IGetAllComputersUsecase _getAllComputersUsecase;

  ComputerController(
    this._getAllComputersUsecase)
    {
      getAllComputers();
    }

    List<ComputerEntity> computers = [];
    void getAllComputers(){
    computers = _getAllComputersUsecase.call();
    }

}