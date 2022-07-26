import 'dart:convert';

import '../../domain/entities/computer_entity.dart';

class ComputerDto extends ComputerEntity {
  int id;
  String brand;
  String model;
  double price;
  int quantity;
  bool isNew;
  ComputerDto({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.quantity,
    required this.isNew,
  }) : super(
          id: id,
          brand: brand,
          model: model,
          price: price,
          quantity: quantity,
          isNew: isNew,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'brand': brand});
    result.addAll({'model': model});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});
    result.addAll({'isNew': isNew});
  
    return result;
  }

  factory ComputerDto.fromMap(Map<String, dynamic> map) {
    return ComputerDto(
      id: map['id']?.toInt() ?? 0,
      brand: map['brand'] ?? '',
      model: map['model'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      quantity: map['quantity']?.toInt() ?? 0,
      isNew: map['isNew'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerDto.fromJson(String source) => ComputerDto.fromMap(json.decode(source));
}
