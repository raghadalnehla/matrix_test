import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/features/mobile_view.dart';

import 'core/helper/screen_manager.dart';
import 'core/presentation/helpers/responsive.dart';
import 'core/theme/theme_manager.dart';
import 'features/desktop_view.dart';
import 'features/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenManager( context);
    return ProviderScope(
        child: ScreenUtilInit(
            designSize: const Size(360, 800),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                onGenerateTitle: (_) => tr("ar"),
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme:  ThemeManager.getTheme(),

              home: const Responsive(
                desktop: DesktopView(),
                tablet: TabletView(),
                mobile:MobileView() ,
              )
              );
            }));

  }
}
