import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/home_drawer.dart';
import 'package:task_3_easypaisa_clone/last_grid.dart';
import 'package:task_3_easypaisa_clone/second_cards.dart';
import 'package:task_3_easypaisa_clone/top_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easypaisa'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
        backgroundColor: const Color.fromARGB(255, 38, 165, 88),
        foregroundColor: Colors.white,
        elevation: 8,
        shadowColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopCard(),
            Container(
              color: Color.fromARGB(255, 244, 244, 244),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SecondCards(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'More with easypaisa',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        LastGrid(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: HomeDrawer(),
    );
  }
}
