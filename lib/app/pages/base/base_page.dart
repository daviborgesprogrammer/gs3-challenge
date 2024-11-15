import 'package:flutter/material.dart';

import '../../core/constants/image_const.dart';
import '../../core/ui/widgets/app_icons.dart';

class BasePage extends StatefulWidget {
  BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    Container(color: Colors.redAccent),
    Container(color: Colors.greenAccent),
    Container(color: Colors.blueAccent),
    Container(color: Colors.purpleAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: 0,
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: AppIcons(
              icon: ImageConst.home,
              height: 27,
              width: 27,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Fatura',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Cartao',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Shop',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
