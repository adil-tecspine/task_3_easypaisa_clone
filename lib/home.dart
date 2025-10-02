import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/home_drawer.dart';
import 'package:task_3_easypaisa_clone/last_grid.dart';
import 'package:task_3_easypaisa_clone/second_cards.dart';
import 'package:task_3_easypaisa_clone/top_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Need a stack with circel avatar and name initials written in it , and above it menu icon and clicking on this cauese to open the drawer
        // onPressed: () => Scaffold.of(context).openDrawer(),
        leading: Builder(
          builder: (context) => Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 20,
                  foregroundColor: Color.fromARGB(255, 0, 187, 89),
                  backgroundColor: Colors.white,
                  child: Text(
                    'AB',
                    style: TextStyle(
                      // color: Color.fromARGB(255, 38, 165, 88),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Positioned(
                right: -10,
                bottom: -10,
                child: IconButton.filled(
                  icon: Icon(Icons.menu),
                  iconSize: 10,
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(Size(15, 15)),
                    padding: WidgetStateProperty.all(EdgeInsets.all(5)),
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromARGB(255, 0, 187, 89),
                    ),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ],
          ),
        ),
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
