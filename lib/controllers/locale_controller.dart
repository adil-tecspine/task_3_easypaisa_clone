import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleController extends GetxController {
  static const _languageStorageKey = 'language_code';

  final Rx<Locale> locale = const Locale('en', 'US').obs;

  final Map<String, Locale> supportedLocales = const {
    'en': Locale('en', 'US'),
    'ur': Locale('ur', 'PK'),
  };

  @override
  void onInit() {
    super.onInit();
    _loadSavedLocale();
  }

  Future<void> _loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final savedCode = prefs.getString(_languageStorageKey);
    if (savedCode != null && supportedLocales.containsKey(savedCode)) {
      final savedLocale = supportedLocales[savedCode]!;
      locale.value = savedLocale;
      Get.updateLocale(savedLocale);
    }
  }

  Future<void> changeLocale(String languageCode) async {
    final selectedLocale = supportedLocales[languageCode];
    if (selectedLocale == null) return;

    locale.value = selectedLocale;
    Get.updateLocale(selectedLocale);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageStorageKey, languageCode);
  }

  String get currentLanguageCode => locale.value.languageCode;
}
