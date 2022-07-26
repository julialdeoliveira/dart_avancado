
import '../entities/computer_entity.dart';

abstract class IGetAllComputersRepository {
  
  List<ComputerEntity> call();
}