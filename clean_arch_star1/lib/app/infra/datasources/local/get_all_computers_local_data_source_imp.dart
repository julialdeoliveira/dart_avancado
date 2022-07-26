import 'package:clean_arch_star1/app/domain/entities/computer_entity.dart';
import 'package:clean_arch_star1/app/infra/datasources/remote/get_all_computers_datasource.dart';

class GetAllComputersLocalDataSourceImp implements IGetAllComputersDatasource {
  @override
  List<ComputerEntity> call() {
    return [
      ComputerEntity(
        id: 0,
        brand: 'Positivo',
        model: 'x4d',
        price: 1500,
        quantity: 5,
        isNew: true,
      ),
      ComputerEntity(
        id: 1,
        brand: 'Apple',
        model: 'MacBook pro',
        price: 10500,
        quantity: 10,
        isNew: true,
      ),
      ComputerEntity(
        id: 3,
        brand: 'Acer',
        model: 'mrt',
        price: 5500,
        quantity: 5,
        isNew: false,
      ),
    ];
  }
}
