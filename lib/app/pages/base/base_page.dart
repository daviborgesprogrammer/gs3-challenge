import 'package:flutter/material.dart';

import '../../core/constants/image_const.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../core/ui/widgets/app_icons.dart';
import '../home/home_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    Container(color: Colors.greenAccent),
    Container(color: Colors.blueAccent),
    Container(color: Colors.purpleAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens.elementAt(currentIndex),
      bottomNavigationBar: Container(
        height: 85,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          border: Border(
            top: BorderSide(color: Color(0X66E5E5E5), width: 4),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft:
                Radius.circular(35.0), // Ajuste o valor conforme necessário
            topRight: Radius.circular(35.0),
          ),
          child: BottomNavigationBar(
            // onTap: onTabTapped,
            currentIndex: currentIndex,
            backgroundColor: Colors.white,
            elevation: 4,
            selectedFontSize: 9,
            selectedLabelStyle: context.textStyles.textBold,
            selectedItemColor: const Color(0XFF2890CF),
            unselectedFontSize: 9,
            unselectedLabelStyle: context.textStyles.textBold,
            unselectedItemColor: const Color(0XFFB4B4B8),
            type: BottomNavigationBarType.fixed,
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
                icon: AppIcons(
                  icon: ImageConst.invoice,
                  height: 27,
                  width: 27,
                ),
                label: 'Fatura',
              ),
              BottomNavigationBarItem(
                icon: AppIcons(
                  icon: ImageConst.creditCard,
                  height: 27,
                  width: 27,
                ),
                label: 'Cartao',
              ),
              BottomNavigationBarItem(
                icon: AppIcons(
                  icon: ImageConst.invoice,
                  height: 27,
                  width: 27,
                ),
                label: 'Shop',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
}
