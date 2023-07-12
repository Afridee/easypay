

import 'package:easypay/homepage.dart';
import 'package:easypay/orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedPage = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedPage == 1 ? Orders() : selectedPage == 2 ? HomePage() : Container(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        // fixedColor: darkGreen,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xffD2E063),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedIconTheme:
        IconThemeData(color: Color(0xffD2E063)),
        selectedLabelStyle:
        TextStyle(color: Color(0xffD2E063)),
        currentIndex: selectedPage,
        onTap: (index) {
          selectedPage = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag),
            label: "Shops",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list_alt),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.more_rounded),
            label: "More",
          ),
        ],
      ),
    );
  }
}
