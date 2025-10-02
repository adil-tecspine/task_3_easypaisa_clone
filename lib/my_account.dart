import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account'), centerTitle: true),
      body: Center(child: Text('My Account Screen')),
    );
  }
}
