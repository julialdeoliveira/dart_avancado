
import '../entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandUsecase {
  CellphoneEntity? call(String brand);
}