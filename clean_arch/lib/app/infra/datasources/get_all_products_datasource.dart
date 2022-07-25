
import '../../domain/entities/product_entity.dart';

//Vai ser o contrato do nosso datasource de trazer todos os nossos produtos
abstract class  GetAllProductsDatasource {
  List<ProductEntity> call();
}