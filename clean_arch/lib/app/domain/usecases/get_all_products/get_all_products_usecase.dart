
import '../../entities/product_entity.dart';

//Isso aqui é o contrato do nosso caso de uso para trazer todos os produtos.
abstract class IGetAllProductsUsecase {
  // Será retornado a lista de produtos
  List<ProductEntity> call(); 
  // o call também é usado de funções callable, basicamente ela é chamada quando instanciamos a classe.
}