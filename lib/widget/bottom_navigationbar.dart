import 'package:flutter/material.dart';

class CoffeeShopBottomNavigationBar extends StatelessWidget {
  final PageController pageController;
  final int selectedIndex;
  final Function(int) onTap;

  const CoffeeShopBottomNavigationBar(
      {super.key,
      required this.pageController,
      required this.selectedIndex,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: (index) {
        onTap(index);
        pageController.jumpToPage(index);
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Ana Sayfa"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            label: "Menü"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_activity,
              color: Colors.black,
            ),
            label: "Mağazalar"),
      ],
    );
  }
}
