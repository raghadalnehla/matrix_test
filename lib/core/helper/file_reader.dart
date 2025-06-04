import 'dart:convert';

import 'package:flutter/services.dart';

class FileReader {
  static Future<List<dynamic>> readFileAsList(String filePath) async {
    final jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString) as List<dynamic>;
  }
}
