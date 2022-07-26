
import '../../../domain/entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandDataSource {
  CellphoneEntity? call(String brand);
}