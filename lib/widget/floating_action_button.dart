import 'package:flutter/material.dart';

class CoffeeShopFAB extends StatefulWidget {
  const CoffeeShopFAB({super.key});

  @override
  _CoffeeShopFABState createState() => _CoffeeShopFABState();
}

class _CoffeeShopFABState extends State<CoffeeShopFAB>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3), // 3 saniyede bir renk değişecek
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.pink[800],
      end: Colors.blue[400],
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return FloatingActionButton(
          backgroundColor: _colorAnimation.value,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            // Add a new order or item to the cart
          },
        );
      },
    );
  }
}
