import 'package:flutter/material.dart';

class TopContainerSecondColumn extends StatelessWidget {
  const TopContainerSecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.star, color: Color.fromARGB(255, 254, 206, 0)),
            Text(
              'My Rewards',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 187, 89),
            minimumSize: Size(120, 30),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Text('Add Cash'),
        ),
      ],
    );
  }
}
