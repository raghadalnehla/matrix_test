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

  static BoxDecoration primaryButtonForDialog = BoxDecoration(
      color: ColorsManager.primaryDark,
      borderRadius: BorderRadiusManager.circular10,
      boxShadow: [ShadowsManager.shadow50Gray10]);

  static BoxDecoration primaryGreen = BoxDecoration(
      color: ColorsManager.green,
      borderRadius: BorderRadiusManager.circular15,
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration primaryRed = BoxDecoration(
      color: ColorsManager.red,
      borderRadius: BorderRadiusManager.circular15,
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration primaryLightButton = BoxDecoration(
      color: ColorsManager.primary,
      borderRadius: BorderRadiusManager.circular15,
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration primaryDarkButton = BoxDecoration(
      color: ColorsManager.primaryDark,
      borderRadius: BorderRadiusManager.circular15,
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration lightGreenWithBorder = BoxDecoration(
      color: ColorsManager.green.withOpacity(0.2),
      borderRadius: BorderRadiusManager.circular5);

  static BoxDecoration primaryRedWithBorder = BoxDecoration(
      color: ColorsManager.red,
      borderRadius: BorderRadiusManager.circular15,
      border: const Border(
          bottom: BorderSide(width: 3, color: ColorsManager.darkRed),
          left: BorderSide(width: 1, color: ColorsManager.darkRed),
          right: BorderSide(width: 1, color: ColorsManager.darkRed),
          top: BorderSide(width: 1, color: ColorsManager.darkRed)),
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration primaryDarkButtonWithBorder = BoxDecoration(
      color: ColorsManager.primaryDark,
      borderRadius: BorderRadiusManager.circular15,
      border: const Border(
          bottom: BorderSide(width: 3, color: ColorsManager.primaryDark),
          left: BorderSide(width: 1, color: ColorsManager.primaryDark),
          right: BorderSide(width: 1, color: ColorsManager.primaryDark),
          top: BorderSide(width: 1, color: ColorsManager.primaryDark)),
      boxShadow: [ShadowsManager.shadow25Gray10]);

  static BoxDecoration unactiveSubmitQuestionButton = BoxDecoration(
      color: ColorsManager.gray,
      borderRadius: BorderRadiusManager.circular15,
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

  static BoxDecoration quizCard = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusManager.circular30,
      boxShadow: [ShadowsManager.shadow200Gray15]);

  static BoxDecoration lessonTopicSavedQuetionCard = BoxDecoration(
    borderRadius: BorderRadiusManager.circular15,
    boxShadow: [ShadowsManager.shadow100Gray20],
    color: Colors.white,
  );

  static BoxDecoration brokerCard = BoxDecoration(
    borderRadius: BorderRadiusManager.circular30,
    boxShadow: [ShadowsManager.shadow100Gray20],
    color: Colors.white,
  );

  static BoxDecoration paymentCard = BoxDecoration(
    borderRadius: BorderRadiusManager.circular30,
    boxShadow: [ShadowsManager.shadow100Gray20],
    color: Colors.white,
  );

  static BoxDecoration pdfCard = BoxDecoration(
    borderRadius: BorderRadiusManager.circular15,
    boxShadow: [ShadowsManager.shadow100Gray20],
    color: Colors.white,
  );

  static BoxDecoration lightBlueCircle = BoxDecoration(
    shape: BoxShape.circle,
    color: ColorsManager.primaryDark.withOpacity(0.1),
  );

  static BoxDecoration cityDropDown = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusManager.circular15,
      border: Border.all(color: ColorsManager.primaryDark, width: 1),
  );

  static BoxDecoration noteTextField = BoxDecoration(
    borderRadius: BorderRadiusManager.circular15,
    boxShadow: [ShadowsManager.shadow100Gray20],
    color: Colors.white,
  );

}
