import 'package:flutter/material.dart';

class SecondSectionCard extends StatelessWidget {
  const SecondSectionCard({super.key, required this.text, required this.icon});
  final String text;
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
            height: 80.0,
            width: 80.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, size: 32.0, color: Color.fromARGB(255, 24, 141, 84)),
                SizedBox(height: 10.0),
                Text(
                  text,
                  style: TextStyle(fontSize: 12.0),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
