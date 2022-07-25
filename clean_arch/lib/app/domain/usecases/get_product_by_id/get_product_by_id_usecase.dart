
import '../../entities/product_entity.dart';

abstract class IGetProductsByIdUsecase {
  List<ProductEntity> call();
}