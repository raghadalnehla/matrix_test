import 'package:flutter/material.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';

abstract class ShadowsManager {
  static BoxShadow shadow100Gray10 = BoxShadow(
      offset: const Offset(3, 4),
      blurRadius: 6,
      spreadRadius: 0,
      color: ColorsManager.gray10);

  static BoxShadow shadow100Gray20 = BoxShadow(
      offset: const Offset(3, 4),
      blurRadius: 6,
      spreadRadius: 0,
      color: ColorsManager.gray20);

  static BoxShadow shadow25Gray10 = BoxShadow(
      offset: const Offset(0, 1),
      blurRadius: 3,
      spreadRadius: 0,
      color: ColorsManager.gray10);

  static BoxShadow shadow200Gray15 = BoxShadow(
      offset: const Offset(0, 12),
      blurRadius: 12,
      spreadRadius: 0,
      color: ColorsManager.gray15);

  static BoxShadow shadow50Gray10 = BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: 6,
      spreadRadius: 0,
      color: ColorsManager.gray10);

  static BoxShadow dropShadowGray20 = BoxShadow(
      offset: const Offset(3, -4),
      blurRadius: 6,
      spreadRadius: 0,
      color: ColorsManager.gray20);

  static BoxShadow dropShadowGray10 = BoxShadow(
      offset: const Offset(3, -2),
      blurRadius: 6,
      spreadRadius: 0,
      color: ColorsManager.gray10);

  static BoxShadow tabBar = BoxShadow(
      offset: const Offset(0, 4),
      blurRadius: 16,
      spreadRadius: 0,
      color: ColorsManager.gray10);
}
