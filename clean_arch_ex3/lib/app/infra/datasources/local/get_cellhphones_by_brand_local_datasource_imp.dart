import '../../../domain/entities/cellphone_entity.dart';
import '../get_cellphones_by_brand_datasource.dart';

class GetCellhphonesByBrandLocalDatasourceImp implements IGetCellphonesByBrandDataSource {

  @override
  List<CellphoneEntity> call(String brand) {
    List<CellphoneEntity> cellphones = [
      CellphoneEntity(
        id: 0,
        model: 'x1',
        brand: 'Xioami',
        price: 16000,
      ),
      CellphoneEntity(
        id: 1,
        model: 'x2',
        brand: 'Samsung',
        price: 26000,
      ),
      CellphoneEntity(
        id: 0,
        model: 'x3',
        brand: 'Motorola',
        price: 8000,
      ),
      CellphoneEntity(
        id: 0,
        model: 'x3',
        brand: 'Motorola',
        price: 8000,
      ),
      CellphoneEntity(
        id: 0,
        model: 'x3',
        brand: 'Positivo',
        price: 8000,
      ),
    ];
    List<String> brands = [];
    List<CellphoneEntity> cellphonesByBrand = [];
    for (CellphoneEntity cellphone in cellphones){
      if (cellphone.brand == brand){
        cellphonesByBrand.add(cellphone);
      }
    }
    return cellphonesByBrand;
  }
}
