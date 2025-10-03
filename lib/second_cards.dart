import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';
import 'package:task_3_easypaisa_clone/second_section_card.dart';

class SecondCards extends StatelessWidget {
  const SecondCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SecondSectionCard(
              textKey: LocaleKeys.secondSendMoney,
              icon: Icons.send,
            ),
          ),
          Expanded(
            child: SecondSectionCard(
              textKey: LocaleKeys.secondBillPayments,
              icon: Icons.receipt,
            ),
          ),
          Expanded(
            child: SecondSectionCard(
              textKey: LocaleKeys.secondMobileLoad,
              icon: Icons.phone_android,
            ),
          ),
        ],
      ),
    );
  }
}
