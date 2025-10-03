import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navPromotions.tr),
        centerTitle: true,
      ),
      body: Center(child: Text(LocaleKeys.screenPromotions.tr)),
    );
  }
}
