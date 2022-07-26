
import '../entities/cellphone_entity.dart';

abstract class IGetAllBrandsUsecase {
  List<CellphoneEntity> call();
}