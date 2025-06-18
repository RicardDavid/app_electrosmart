import 'package:flutter/material.dart';
import '../widgets/custom_bottom_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrito de Compras'), centerTitle: true),
      body: Center(child: Text('Aquí va el contenido del carrito')),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 1),
    );
  }
}
