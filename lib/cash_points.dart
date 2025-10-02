import 'package:flutter/material.dart';

class CashPoints extends StatelessWidget {
  const CashPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cash Points'), centerTitle: true),
      body: Center(child: Text('Cash Points Screen')),
    );
  }
}
