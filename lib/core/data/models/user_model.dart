import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrix_erp_test/core/domain/entity/user_entity.dart';
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? id;


  String? name;

  String? phone;


  UserModel({this.id, this.name, this.phone});

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() {
    return UserEntity( id: id, name: name,);
  }
}
