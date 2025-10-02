import 'package:flutter/material.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Promotions'), centerTitle: true),
      body: Center(child: Text('Promotions Screen')),
    );
  }
}
