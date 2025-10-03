import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/controllers/locale_controller.dart';
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

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
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
          ListTile(
            leading: Icon(Icons.home),
            title: Text(LocaleKeys.drawerHome.tr),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(LocaleKeys.drawerSettings.tr),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(LocaleKeys.drawerContactUs.tr),
            onTap: () {
              Navigator.pop(context);
            },
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
                          child: Text(_languageLabelKey(code).tr),
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
        ],
      ),
    );
  }
}
