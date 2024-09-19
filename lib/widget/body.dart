import 'package:flutter/material.dart';

class CoffeeShopBody extends StatelessWidget {
  final PageController pageController;

  const CoffeeShopBody({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        CoffeeMenuPage(),
        OrderHistoryPage(),
        ProfilePage(),
      ],
    );
  }
}

class CoffeeMenuPage extends StatelessWidget {
  const CoffeeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Coffee Menu'),
    );
  }
}

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Order History'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('User Profile'),
    );
  }
}
