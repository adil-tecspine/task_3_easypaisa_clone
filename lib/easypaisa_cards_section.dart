import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/easy_paisa_card.dart';

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
            title: 'Online Card',
            subtitle: 'Only for online payments in Pakistan',
            buttonText: 'Manage Cards',
            cardColor: Color.fromRGBO(48, 111, 102, 1),
          ),
          EasyPaisaCard(
            title: 'Plastic Card',
            subtitle: 'Use at any ATM or shop in Pakistan',
            buttonText: 'Manage Cards',
            cardColor: Color.fromRGBO(47, 47, 57, 1),
          ),
        ],
      ),
    );
  }
}
