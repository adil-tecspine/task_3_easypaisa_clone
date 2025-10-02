import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/second_section_card.dart';

class SecondCards extends StatelessWidget {
  const SecondCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SecondSectionCard(text: 'Send Money', icon: Icons.send),
          SecondSectionCard(text: 'Bill Payments', icon: Icons.receipt),
          SecondSectionCard(text: 'Mobile Load', icon: Icons.phone_android),
        ],
      ),
    );
  }
}
