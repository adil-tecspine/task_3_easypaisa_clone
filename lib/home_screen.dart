import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_3_easypaisa_clone/cash_points.dart';
import 'package:task_3_easypaisa_clone/home.dart';
import 'package:task_3_easypaisa_clone/localization/locale_keys.dart';
import 'package:task_3_easypaisa_clone/my_account.dart';
import 'package:task_3_easypaisa_clone/promotions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const _pages = [
    Home(),
    CashPoints(),
    Promotions(),
    Promotions(),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      // Handle the QR code button tap separately if needed
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        selectedItemColor: const Color.fromARGB(255, 1, 189, 94),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: LocaleKeys.navHome.tr,
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: LocaleKeys.navCashPoints.tr,
            activeIcon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            icon: IconButton.filled(
              onPressed: () {},
              visualDensity: VisualDensity.compact,

              icon: Icon(Icons.qr_code),
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(Size(40, 40)),
                padding: WidgetStateProperty.all(EdgeInsets.all(5)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(
                  Color.fromARGB(255, 1, 189, 94),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: LocaleKeys.navPromotions.tr,
            activeIcon: Icon(Icons.local_offer),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: LocaleKeys.navMyAccount.tr,
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
