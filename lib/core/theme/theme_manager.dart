import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrix_erp_test/core/theme/shadows_manager.dart';

import '../helper/screen_manager.dart';
import 'border_radius_manager.dart';
import 'colors_manager.dart';
import 'text_style_manager.dart';

abstract class ThemeManager {
  //App Theme
  static ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.tajawal().fontFamily,
      colorSchemeSeed: ColorsManager.primary,
      datePickerTheme: getDatePickerTheme(),
      scaffoldBackgroundColor: ColorsManager.backgroundColor,
      filledButtonTheme: getFilledButtonTheme(),
      inputDecorationTheme: getInputDecorationTheme(),
      appBarTheme: getAppBarTheme(),
      bottomNavigationBarTheme: getBottomNavigationBarTheme(),
      tabBarTheme: getTabBarTheme(),
      textButtonTheme: getTextButtonTheme(),
      bottomSheetTheme: getBottomSheetTheme(),
      // textTheme: getTextTheme(),
      outlinedButtonTheme: getOutlinedButtonTheme(),
      // switchTheme: getSwitchTheme(),
      // progressIndicatorTheme: getProgressIndicatorThemeData(),
      // cardTheme: getCardTheme(),
      dialogTheme: getDialogTheme(),
      // dividerTheme: getDividerTheme(),
      // chipTheme: getChipTheme(),
      // checkboxTheme: getCheckboxTheme(),
      // floatingActionButtonTheme: getFloatingButtonTheme(),
    );
  }

  static BottomSheetThemeData getBottomSheetTheme() {
    return  BottomSheetThemeData(
        backgroundColor: Colors.grey.shade100, surfaceTintColor: Colors.white);
  }

  static DatePickerThemeData getDatePickerTheme() {
    return const DatePickerThemeData().copyWith(
      confirmButtonStyle: const ButtonStyle().copyWith(
          foregroundColor:
              const MaterialStatePropertyAll(ColorsManager.petrol)),
      cancelButtonStyle: const ButtonStyle().copyWith(
          foregroundColor:
              const MaterialStatePropertyAll(ColorsManager.petrol)),
    );
  }

  //Filled Button Theme
  static FilledButtonThemeData getFilledButtonTheme() {
    return FilledButtonThemeData(
      style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(4),
          shadowColor: MaterialStatePropertyAll(ColorsManager.gray20),
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadiusManager.circular15)),
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.primary),
          foregroundColor: const MaterialStatePropertyAll(Colors.white),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 16)),
          textStyle: MaterialStatePropertyAll(
              TextStyleManager.f16w600.copyWith(fontFamily: 'SF')),),
    );
  }

  //TextField Decoration
  static InputDecorationTheme getInputDecorationTheme() {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      counterStyle: const TextStyle(color: Colors.transparent),
      prefixIconColor: ColorsManager.primary,
      hintStyle:
          TextStyleManager.f16w400.copyWith(color: ColorsManager.hintColor),
      errorStyle: TextStyleManager.f13w400.copyWith(color: ColorsManager.red),
      errorMaxLines: 4,
      suffixIconColor: ColorsManager.medGray,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManager.borderColor, width: 1),
        borderRadius: BorderRadiusManager.circular5,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManager.primary, width: 1),
        borderRadius: BorderRadiusManager.circular5,
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManager.red, width: 1),
        borderRadius: BorderRadiusManager.circular5,
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsManager.red, width: 1),
        borderRadius: BorderRadiusManager.circular5,
      ),
    );
  }

  //AppBar Theme
  static getAppBarTheme() {
    return AppBarTheme(
      centerTitle: false,
      backgroundColor: ColorsManager.backgroundColor,
      titleSpacing: 0,
      elevation: 0,
      titleTextStyle: TextStyleManager.f20w600
          .copyWith(color: ColorsManager.black, fontFamily: 'Cairo'),
    );
  }

  static getBottomNavigationBarTheme() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 4,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: ColorsManager.secondary,
      selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400, color: ColorsManager.secondary),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w400, color: ColorsManager.gray),
      unselectedItemColor: ColorsManager.gray,
    );
  }

  static TabBarTheme getTabBarTheme() {
    return TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyleManager.f16w600,
        labelColor: Colors.white,
        indicator: BoxDecoration(
            color: ColorsManager.primary,
            borderRadius: BorderRadiusManager.circular15,
            boxShadow: [ShadowsManager.tabBar]),
        unselectedLabelStyle:
            TextStyleManager.f16w400.copyWith(color: ColorsManager.gray),
        unselectedLabelColor: ColorsManager.gray,
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.fill);
  }

  //Text Button Theme
  static TextButtonThemeData getTextButtonTheme() {
    return TextButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16)),
        overlayColor: const MaterialStatePropertyAll(Colors.white30),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        textStyle: MaterialStatePropertyAll(TextStyleManager.f16w400.copyWith(
            decoration: TextDecoration.underline, fontFamily: 'Cairo')),
      ),
    );
  }

  //Outlined Button Theme
  static OutlinedButtonThemeData getOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
        style: ButtonStyle(
      alignment: Alignment.center,
      padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 9)),
      foregroundColor:
          const MaterialStatePropertyAll(ColorsManager.primaryDark),
      textStyle: MaterialStatePropertyAll(TextStyleManager.f16w600
          .copyWith(color: ColorsManager.primaryDark, fontFamily: 'Cairo')),
      overlayColor:
          MaterialStatePropertyAll(ColorsManager.primaryDark.withOpacity(0.03)),
      side: const MaterialStatePropertyAll(
          BorderSide(color: ColorsManager.primaryDark, width: 1)),
      shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadiusManager.circular15)),
    ));
  }

  // //Switch Theme
  // static SwitchThemeData getSwitchTheme() {
  //   return const SwitchThemeData(
  //     thumbColor: MaterialStatePropertyAll(ColorsManager.primaryDark2),
  //     trackColor: MaterialStatePropertyAll(ColorsManager.secondary),
  //   );
  // }

  // //Progress Indicator Theme
  // static getProgressIndicatorThemeData() {
  //   return const ProgressIndicatorThemeData(
  //     circularTrackColor: ColorsManager.gray20,
  //     color: ColorsManager.primaryLight2,
  //   );
  // }

  // //Card Theme
  // static getCardTheme() {
  //   return CardTheme(
  //       color: ColorsManager.gray0,
  //       elevation: 0,
  //       margin: const EdgeInsets.all(16),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  // }

  //Dialog Theme
  static getDialogTheme() {
    return const DialogTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    );
  }

  // //Divider Theme
  // static getDividerTheme() {
  //   return const DividerThemeData(
  //       color: ColorsManager.gray20, thickness: 1, space: 30);
  // }

  //Text Theme
  static getTextTheme() {
    return const TextTheme(
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      displayLarge: TextStyle(),
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
    ).apply(
      fontFamily: 'Cairo',
      // bodyColor: ColorsManager.primaryDark,
      // displayColor: ColorsManager.primaryDark,
    );
  }

  // static ChipThemeData getChipTheme() {
  //   return ChipThemeData(
  //       showCheckmark: false,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  //       backgroundColor: ColorsManager.gray0,
  //       selectedColor: ColorsManager.primary.withOpacity(0.01),
  //       labelStyle:
  //           TextStyleManager.f14w400.copyWith(color: ColorsManager.gray80));
  // }

  // static CheckboxThemeData getCheckboxTheme() {
  //   return CheckboxThemeData(
  //       checkColor: const MaterialStatePropertyAll(Colors.white),
  //       fillColor: const MaterialStatePropertyAll(ColorsManager.primary),
  //       side: const BorderSide(width: 2, color: ColorsManager.gray50),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)));
  // }

  // static FloatingActionButtonThemeData getFloatingButtonTheme() {
  //   return FloatingActionButtonThemeData(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  //     backgroundColor: ColorsManager.primaryDark2,
  //     elevation: 2,
  //     foregroundColor: ColorsManager.secondary,
  //   );
  // }
}
