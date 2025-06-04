import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:matrix_erp_test/core/helper/file_reader.dart';
import '../models/user_model.dart';

abstract class UsersLocalDataSource {
  Future<List<UserModel>> getUsers();
}

class UsersLocalDataSourceImpl implements UsersLocalDataSource {
  @override
  Future<List<UserModel>> getUsers() async {

    List jsonList =
    await FileReader.readFileAsList("assets/data/users_data.json");

    // 2. Convert to serializable format
    List<UserModel> serializableList = jsonList.map<UserModel>((item) {
      return UserModel.fromJson(item);
    }).toList();

    return serializableList;
  }
}
