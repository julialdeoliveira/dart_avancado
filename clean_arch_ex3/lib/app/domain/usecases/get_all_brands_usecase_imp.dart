import '../repositories/get_all_brands_repository.dart';
import 'get_all_brands_usecase.dart';


class GetAllBrandsUsecaseImp implements IGetAllBrandsUsecase{
final IGetAllBrandsRepository _repository;
GetAllBrandsUsecaseImp(this._repository);

  @override
  List<String> call() {

    return _repository.call();
  }
  
}