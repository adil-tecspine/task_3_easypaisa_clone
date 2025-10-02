import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easypaisa Clone',
      home: HomeScreen(),
    );
  }
}
