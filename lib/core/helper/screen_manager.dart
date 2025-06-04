import 'package:flutter/material.dart';

class ScreenManager {
  static late double width;
  static late double height;

  ScreenManager(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  static fromWidth(double percent) {
    assert(percent >= 0.0 && percent <= 100.0);
    return (percent / 100.0) * width;
  }

  static fromHeight(double percent) {
    assert(percent >= 0.0 && percent <= 100.0);
    return ((percent / 100.0) * height);
  }
}
