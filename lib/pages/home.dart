import 'package:flutter/material.dart';
import 'package:kafe_app/widget/appbar.dart';
import 'package:kafe_app/widget/body.dart';
import 'package:kafe_app/widget/bottom_navigationbar.dart';
import 'package:kafe_app/widget/drawer.dart';
import 'package:kafe_app/widget/floating_action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CoffeeShopAppBar(),
      body: CoffeeShopBody(pageController: _pageController),
      bottomNavigationBar: CoffeeShopBottomNavigationBar(
        pageController: _pageController,
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: const CoffeeShopFAB(),
      //drawer: const CoffeeShopDrawer(),
    );
  }
}
