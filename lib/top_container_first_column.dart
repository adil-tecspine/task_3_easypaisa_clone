import 'package:flutter/material.dart';

class TopContainerFirstColumn extends StatelessWidget {
  const TopContainerFirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Easypaisa',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Available Balance'),
            Row(
              spacing: 4,
              children: [
                Text(
                  'Rs. 10,000',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 49, 44, 59),
                    foregroundColor: Colors.white,
                    shape: CircleBorder(),
                    minimumSize: Size(32, 32),
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                  ),
                  label: Icon(Icons.arrow_forward, size: 20),
                ),
              ],
            ),
          ],
        ),
        Row(
          spacing: 4,
          children: [Icon(Icons.refresh, size: 16), Text('Updated Just Now')],
        ),
      ],
    );
  }
}
