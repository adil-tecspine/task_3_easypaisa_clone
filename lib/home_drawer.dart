import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/controllers/locale_controller.dart';
import 'package:task_3_easypaisa_clone/controllers/theme_controller.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  String _languageLabelKey(String code) {
    switch (code) {
      case 'ur':
        return LocaleKeys.languageUrdu;
      case 'en':
      default:
        return LocaleKeys.languageEnglish;
    }
  }

  String _themeLabelKey(String theme) {
    switch (theme) {
      case 'light':
        return LocaleKeys.drawerLight;
      case 'dark':
        return LocaleKeys.drawerDark;
      case 'system':
      default:
        return LocaleKeys.drawerSystemDefault;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
    final themeController = Get.find<ThemeController>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(46, 155, 97, 1)),
            child: Text(
              LocaleKeys.drawerMenu.tr,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Obx(() {
            final currentCode = localeController.currentLanguageCode;
            return ListTile(
              leading: Icon(Icons.language),
              title: Text(LocaleKeys.drawerLanguage.tr),
              subtitle: Text(_languageLabelKey(currentCode).tr),
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: currentCode,
                  items: localeController.supportedLocales.keys
                      .map(
                        (code) => DropdownMenuItem(
                          value: code,
                          child: Text(
                            _languageLabelKey(code).tr,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (code) {
                    if (code != null) {
                      localeController.changeLocale(code);
                    }
                  },
                ),
              ),
            );
          }),
          Obx(() {
            final currentTheme = themeController.currentThemeMode.value;
            return ListTile(
              leading: Icon(Icons.brightness_6),
              title: Text(LocaleKeys.drawerTheme.tr),
              subtitle: Text(_themeLabelKey(currentTheme.name).tr),
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 24,
                  value: currentTheme.name,
                  items: themeController.themes.keys
                      .map(
                        (code) => DropdownMenuItem(
                          value: code,
                          child: Text(
                            _themeLabelKey(
                              themeController.themes[code]!.name,
                            ).tr,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (code) {
                    if (code != null) {
                      themeController.toggleTheme();
                    }
                  },
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
