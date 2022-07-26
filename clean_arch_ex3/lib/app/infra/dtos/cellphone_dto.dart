import 'dart:convert';

import '../../domain/entities/cellphone_entity.dart';

class CellphoneDto extends CellphoneEntity {
  int id;
  String model;
  String brand;
  double price;

  CellphoneDto({
    required this.id,
    required this.model,
    required this.brand,
    required this.price,
  }) : super(
          id: id,
          model: model,
          brand: brand,
          price: price,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'model': model});
    result.addAll({'brand': brand});
    result.addAll({'price': price});

    return result;
  }

  factory CellphoneDto.fromMap(Map<String, dynamic> map) {
    return CellphoneDto(
      id: map['id']?.toInt() ?? 0,
      model: map['model'] ?? '',
      brand: map['brand'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CellphoneDto.fromJson(String source) =>
      CellphoneDto.fromMap(json.decode(source));
}
