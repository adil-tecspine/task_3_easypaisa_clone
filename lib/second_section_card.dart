import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondSectionCard extends StatelessWidget {
  const SecondSectionCard({
    super.key,
    required this.textKey,
    required this.icon,
  });
  final String textKey;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, size: 32.0, color: Color.fromARGB(255, 24, 141, 84)),
                SizedBox(height: 10.0),
                FittedBox(
                  child: Text(
                    textKey.tr,
                    style: TextStyle(fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
