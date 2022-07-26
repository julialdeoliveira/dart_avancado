import '../../../domain/entities/cellphone_entity.dart';
import '../remote/get_cellphones_by_brand_datasource.dart';

class GetCellhphonesByBrandLocalDatasourceImp implements IGetCellphonesByBrandDataSource {

  @override
  CellphoneEntity? call(String brand) {
    List<CellphoneEntity> cellphones = [
      CellphoneEntity(
        id: 0,
        model: 'x1',
        brand: 'xiomi',
        price: 16000,
      ),
      CellphoneEntity(
        id: 1,
        model: 'x2',
        brand: 'samsung',
        price: 26000,
      ),
      CellphoneEntity(
        id: 0,
        model: 'x3',
        brand: 'motorola',
        price: 8000,
      ),
    ];
    return null;
  }
}
