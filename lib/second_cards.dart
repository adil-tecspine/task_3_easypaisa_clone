import 'package:flutter/material.dart';
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
            child: FittedBox(
              child: SecondSectionCard(text: 'Send Money', icon: Icons.send),
            ),
          ),
          Expanded(
            child: FittedBox(
              child: SecondSectionCard(
                text: 'Bill Payments',
                icon: Icons.receipt,
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              child: SecondSectionCard(
                text: 'Mobile Load',
                icon: Icons.phone_android,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
