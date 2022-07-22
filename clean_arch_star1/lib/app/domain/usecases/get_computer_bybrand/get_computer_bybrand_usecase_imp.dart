import 'package:clean_arch_star1/app/domain/entities/computer_entity.dart';
import 'package:clean_arch_star1/app/domain/usecases/get_computer_bybrand/get_computer_bybrand_usecase.dart';

import '../../repositories/get_computer_bybrand_repository.dart';

class GetComputerByBrandUsecaseImp implements IGetComputerByBrandUseCase {
  //fu-class  para autocomplementar isso aqui
  final IGetComputerBybrandRepository _getComputerBybrandRepository;
  GetComputerByBrandUsecaseImp(this._getComputerBybrandRepository);

  @override
  ComputerEntity call(String brand) {
    return _getComputerBybrandRepository.getComputerByBrand(brand);
  }
}
