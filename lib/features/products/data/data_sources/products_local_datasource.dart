import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:matrix_erp_test/core/helper/file_reader.dart';
import '../models/product_model.dart';

abstract class ProductsLocalDataSource {
  Future<List<ProductModel>> getProducts();
}

class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  @override
  Future<List<ProductModel>> getProducts() async {

    List jsonList =
        await FileReader.readFileAsList("assets/data/products_data.json");

    // 2. Convert to serializable format
    List<ProductModel> serializableList = jsonList.map<ProductModel>((item) {
      return ProductModel.fromJson(item);
    }).toList();

    return serializableList;
  }
}
