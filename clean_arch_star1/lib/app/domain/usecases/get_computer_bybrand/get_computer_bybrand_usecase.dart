import '../../entities/computer_entity.dart';

abstract class IGetComputerByBrandUseCase{
  ComputerEntity call(String brand);
}