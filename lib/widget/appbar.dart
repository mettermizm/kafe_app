import 'package:flutter/material.dart';

class CoffeeShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoffeeShopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Coffee Corner"),
      backgroundColor: Colors.transparent,
      /*
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            // Navigate to cart or order summary
          },
        ),
      ],
      */
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
