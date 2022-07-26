
import '../entities/computer_entity.dart';

abstract class IGetComputerBybrandRepository {
 List<ComputerEntity> call();
}