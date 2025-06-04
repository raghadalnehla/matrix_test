import 'package:flutter/material.dart';
import '../helper/screen_manager.dart';
import 'border_radius_manager.dart';
import 'colors_manager.dart';
import 'text_style_manager.dart';

abstract class ButtonStyleManager {
  static ButtonStyle primaryLightOutlined = const ButtonStyle().copyWith(
    foregroundColor: const MaterialStatePropertyAll(ColorsManager.primary),
    textStyle: MaterialStatePropertyAll(TextStyleManager.f16w600
        .copyWith(color: ColorsManager.primary, fontFamily: 'Cairo')),
    overlayColor:
        MaterialStatePropertyAll(ColorsManager.primary.withOpacity(0.03)),
    fixedSize: MaterialStatePropertyAll(Size.fromWidth(ScreenManager.width)),
    side: const MaterialStatePropertyAll(
        BorderSide(color: ColorsManager.primary, width: 1)),
  );


  static ButtonStyle primaryDarkOutlined = const ButtonStyle().copyWith(
    foregroundColor: const MaterialStatePropertyAll(ColorsManager.primaryDark),
    textStyle: MaterialStatePropertyAll(TextStyleManager.f16w600
        .copyWith(color: ColorsManager.primaryDark, fontFamily: 'Cairo')),
    overlayColor:
    MaterialStatePropertyAll(ColorsManager.primaryDark.withOpacity(0.03)),
    fixedSize: MaterialStatePropertyAll(Size.fromWidth(ScreenManager.width)),
    side: const MaterialStatePropertyAll(
        BorderSide(color: ColorsManager.primaryDark, width: 1)),
  );
  static ButtonStyle editIconButton = const ButtonStyle().copyWith(
      backgroundColor:
          const MaterialStatePropertyAll(ColorsManager.primaryDark),
      alignment: Alignment.center,
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      maximumSize: const MaterialStatePropertyAll(Size.fromRadius(15)),
      minimumSize: const MaterialStatePropertyAll(Size.fromRadius(15)));

  static ButtonStyle skipQuestion = const ButtonStyle().copyWith(
      fixedSize: const MaterialStatePropertyAll(Size.fromHeight(48)),
      foregroundColor:
          const MaterialStatePropertyAll(ColorsManager.primaryDark),
      textStyle: MaterialStatePropertyAll(
          TextStyleManager.f16w600.copyWith(fontFamily: 'SF')),
      backgroundColor: const MaterialStatePropertyAll(Colors.transparent));

  static ButtonStyle secondaryForDialog = const ButtonStyle().copyWith(
      shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadiusManager.circular10)),
      overlayColor:
          MaterialStatePropertyAll(ColorsManager.primaryDark.withOpacity(0.08)),
      fixedSize:
          MaterialStatePropertyAll(Size(ScreenManager.fromWidth(50) - 36, 48)),
      foregroundColor:
          const MaterialStatePropertyAll(ColorsManager.primaryDark),
      textStyle: MaterialStatePropertyAll(
          TextStyleManager.f16w600.copyWith(fontFamily: 'Cairo')),
      backgroundColor: const MaterialStatePropertyAll(Colors.transparent));
}
