import 'package:flutter/material.dart';

class ThirdSectionGridCard extends StatelessWidget {
  const ThirdSectionGridCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Color.fromRGBO(0, 187, 89, 1)),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
