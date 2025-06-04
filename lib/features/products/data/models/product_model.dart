import 'package:json_annotation/json_annotation.dart';
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? id;

  String? code;

  String? name;

  String? image;

  num? price;

  ProductModel({this.id, this.code, this.name, this.image, this.price});

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  ProductEntity toEntity() {
    return ProductEntity(
        image: image, id: id, price: price, name: name, code: code);
  }
}
