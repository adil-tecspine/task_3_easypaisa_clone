import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/easy_paisa_card.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';

class EasypaisaCardsSection extends StatelessWidget {
  const EasypaisaCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        spacing: 20,
        children: [
          EasyPaisaCard(
            title: LocaleKeys.cardOnlineTitle.tr,
            subtitle: LocaleKeys.cardOnlineSubtitle.tr,
            buttonText: LocaleKeys.cardManage.tr,
            cardColor: Color.fromRGBO(48, 111, 102, 1),
          ),
          EasyPaisaCard(
            title: LocaleKeys.cardPlasticTitle.tr,
            subtitle: LocaleKeys.cardPlasticSubtitle.tr,
            buttonText: LocaleKeys.cardManage.tr,
            cardColor: Color.fromRGBO(47, 47, 57, 1),
          ),
        ],
      ),
    );
  }
}
