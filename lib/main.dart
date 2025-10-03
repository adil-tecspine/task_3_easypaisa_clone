import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task_3_easypaisa_clone/app_themes.dart';
import 'package:task_3_easypaisa_clone/controllers/theme_controller.dart';
import 'package:task_3_easypaisa_clone/home_screen.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/controllers/locale_controller.dart';
import 'package:task_3_easypaisa_clone/localization/app_translations.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.put(LocaleController(), permanent: true);
    final themeController = Get.put(ThemeController());

    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: LocaleKeys.appFullTitle.tr,
        translations: AppTranslations(),
        locale: localeController.locale.value,
        fallbackLocale: const Locale('en', 'US'),
        supportedLocales: localeController.supportedLocales.values.toList(),
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: themeController.currentThemeMode.value,

        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const HomeScreen(),
      ),
    );
  }
}
