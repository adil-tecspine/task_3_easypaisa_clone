import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static const _themeStorageKey = 'theme_mode';

  Rx<ThemeMode> currentThemeMode = ThemeMode.system.obs;

  final themes = {
    'light': ThemeMode.light,
    'dark': ThemeMode.dark,
    'system': ThemeMode.system,
  };

  @override
  void onInit() {
    super.onInit();
    loadThemeMode();
  }

  void loadThemeMode() async {
    // load the saved theme mode from persistent storage and if there is no saved mode, default to system
    final prefs = await SharedPreferences.getInstance();
    final themeString = prefs.getString(_themeStorageKey);
    if (themeString != null) {
      currentThemeMode.value = ThemeMode.values.firstWhere(
        (e) => e.toString() == themeString,
        orElse: () => ThemeMode.system,
      );
    }
  }

  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _themeStorageKey,
      currentThemeMode.value == ThemeMode.light
          ? ThemeMode.dark.toString()
          : ThemeMode.light.toString(),
    );
    if (currentThemeMode.value == ThemeMode.light) {
      currentThemeMode.value = ThemeMode.dark;

      Get.changeThemeMode(ThemeMode.dark);
    } else {
      currentThemeMode.value = ThemeMode.light;
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}
