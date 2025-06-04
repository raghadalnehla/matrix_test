import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  String? id;
  String? code;
  String? name;
  String? image;
  num? price;

  ProductEntity({this.id, this.code, this.name, this.image, this.price});

  @override
  List<Object?> get props => [id];
}
