
import 'package:clean_arch_star1/app/domain/entities/computer_entity.dart';

abstract class IGetAllComputersDatasource {
  List<ComputerEntity> call();
}