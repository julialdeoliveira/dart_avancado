
import '../entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandUsecase {
  List<CellphoneEntity>? call(String brand);
}