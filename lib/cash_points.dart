import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';

class CashPoints extends StatelessWidget {
  const CashPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.navCashPoints.tr),
        centerTitle: true,
      ),
      body: Center(child: Text(LocaleKeys.screenCashPoints.tr)),
    );
  }
}
