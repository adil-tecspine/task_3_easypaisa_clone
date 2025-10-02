import 'package:flutter/material.dart';

class EasyPaisaCard extends StatelessWidget {
  const EasyPaisaCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.cardColor,
  });

  final String title;
  final String subtitle;
  final String buttonText;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,

                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(206, 208, 150, 1),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Text(buttonText),
                  label: Icon(Icons.arrow_forward),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(0, 187, 89, 1),
                    ),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
