
import '../entities/product_entity.dart';

abstract class GetProductByIdRepository {
 List<ProductEntity> call(); 
}