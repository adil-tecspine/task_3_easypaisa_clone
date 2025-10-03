import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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

    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: LocaleKeys.appFullTitle.tr,
        translations: AppTranslations(),
        locale: localeController.locale.value,
        fallbackLocale: const Locale('en', 'US'),
        supportedLocales: localeController.supportedLocales.values.toList(),
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
