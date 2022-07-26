
import '../entities/product_entity.dart';

//Esse será o contrato do repositório, a implementação dele ficará dentro dos repositories do infra.
abstract class IGetAllProductsRepository {
//Ele será praticamente igual ao do usercase, as vezes a dferença é que será um Future.
//Porém não podemos usar o UseCase para usar na implementação do repositório
//pois estariamos ferindo o princípio do SRP (Single Responsability Principle) do SOLID
List<ProductEntity> call();
}