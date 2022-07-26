
import '../../entities/product_entity.dart';

abstract class IGetProductByIdUsecase {
  ProductEntity? call(int id); //pq vai chamar pelo id
}