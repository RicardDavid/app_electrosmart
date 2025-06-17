import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final int currentIndex;
  const CustomBottomNavigation({super.key, this.currentIndex = 0});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  static const List<String> _routes = ['home', 'cart', 'account'];

  void _onItemTap(int idx) {
    if (idx != widget.currentIndex) {
      Navigator.pushReplacementNamed(context, _routes[idx]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max_outlined),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_sharp),
          label: "Carrito",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: "Mi Cuenta",
        ),
      ],
      onTap: _onItemTap,
    );
  }
}
