import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/core/presentation/screens/mobile_view.dart';

import 'core/helper/screen_manager.dart';
import 'core/presentation/helpers/responsive.dart';
import 'core/theme/theme_manager.dart';
import 'core/presentation/screens/desktop_view.dart';
import 'core/presentation/screens/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenManager(context);
    return ProviderScope(
        child: ScreenUtilInit(
            designSize: const Size(1000, 800),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeManager.getTheme(),
                  home:  EasyLocalization(
                    path: 'assets/translations',
                    supportedLocales: const [Locale('en'), Locale('ar')],
                    fallbackLocale: const Locale('ar'),
                    startLocale: const Locale('ar'),
                    child:  const Responsive(
                      desktop: DesktopView(),
                      tablet: TabletView(),
                      mobile: MobileView(),
                    ),
                  ));
            }));
  }
}
