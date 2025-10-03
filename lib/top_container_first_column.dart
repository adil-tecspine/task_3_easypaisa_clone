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
          children: [Text('Available Balance'), AmountWithButton()],
        ),
        Expanded(
          child: Row(
            spacing: 4,
            children: [
              Icon(Icons.refresh, size: 16),
              FittedBox(child: Text('Updated Just Now')),
            ],
          ),
        ),
      ],
    );
  }
}

class AmountWithButton extends StatefulWidget {
  const AmountWithButton({super.key});

  @override
  State<AmountWithButton> createState() => _AmountWithButtonState();
}

class _AmountWithButtonState extends State<AmountWithButton> {
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text(
          isVisible ? 'Rs. 10,000' : '****',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
        ),
        ElevatedButton.icon(
          onPressed: toggleVisibility,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 49, 44, 59),
            foregroundColor: Colors.white,
            shape: CircleBorder(),
            minimumSize: Size(30, 30),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
          ),
          label: Icon(
            isVisible
                ? Icons.remove_red_eye_rounded
                : Icons.remove_red_eye_outlined,
            size: 15,
          ),
        ),
      ],
    );
  }
}
