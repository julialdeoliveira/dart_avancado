import '../../domain/entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandDataSource {
  List<CellphoneEntity> call(String brand);
}