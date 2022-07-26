
import '../../entities/computer_entity.dart';

abstract class IGetAllComputersUsecase {
  List<ComputerEntity> call();
}