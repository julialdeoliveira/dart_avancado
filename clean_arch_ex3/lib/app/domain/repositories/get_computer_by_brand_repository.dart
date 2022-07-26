
import '../entities/cellphone_entity.dart';

abstract class IGetComputerByBrandRepository {
  CellphoneEntity? call(String brand);
}