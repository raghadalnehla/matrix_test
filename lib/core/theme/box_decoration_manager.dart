import 'package:flutter/material.dart';
import 'package:matrix_erp_test/core/theme/shadows_manager.dart';

import 'border_radius_manager.dart';
import 'colors_manager.dart';

abstract class BoxDecorationManager {

  static BoxDecoration greyCir12Top = const BoxDecoration(
      color: ColorsManager.grey2,
      borderRadius: BorderRadiusManager.onlyTop12);

  static BoxDecoration secondaryButton = BoxDecoration(
      color: Colors.blue.withOpacity(0.1),
      border:Border.all(color: Colors.grey.shade200) ,
      borderRadius: BorderRadiusManager.circular5,);



  static BoxDecoration lightGreenWithBorder = BoxDecoration(
      color: ColorsManager.green.withOpacity(0.2),
      borderRadius: BorderRadiusManager.circular5);


  static BoxDecoration primaryDarkButtonWithBorder = BoxDecoration(
      color: ColorsManager.primaryDark,
      borderRadius: BorderRadiusManager.circular15,
      border: const Border(
          bottom: BorderSide(width: 3, color: ColorsManager.primaryDark),
          left: BorderSide(width: 1, color: ColorsManager.primaryDark),
          right: BorderSide(width: 1, color: ColorsManager.primaryDark),
          top: BorderSide(width: 1, color: ColorsManager.primaryDark)),
      boxShadow: [ShadowsManager.shadow25Gray10]);


  static BoxDecoration petrolButton = BoxDecoration(
      color: ColorsManager.petrol,
      borderRadius: BorderRadiusManager.circular5,
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration textField = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusManager.circular5,
      border: Border.all(color: ColorsManager.borderColor, width: 1),
      boxShadow: [ShadowsManager.shadow25Gray10]);




}
