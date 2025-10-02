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
        leading: Builder(
          builder: (context) => Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 20,
                  foregroundColor: Color.fromRGBO(49, 44, 59, 1),
                  backgroundColor: Color.fromRGBO(77, 136, 151, 1),
                  child: Text(
                    'AB',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Positioned(
                right: -10,
                bottom: -8,
                child: IconButton.filled(
                  icon: Icon(Icons.menu),
                  iconSize: 12,
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(Size(15, 15)),
                    padding: WidgetStateProperty.all(EdgeInsets.all(5)),
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromRGBO(49, 44, 59, 1),
                    ),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    side: WidgetStateProperty.all(
                      BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 21,
                child: Badge(backgroundColor: Colors.red),
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
