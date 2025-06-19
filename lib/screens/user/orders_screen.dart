import 'package:flutter/material.dart';
import 'package:electrosmart/themes/app_theme.dart';
import 'package:electrosmart/widgets/custom_bottom_navigation.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis compras'),
        centerTitle: true,
        backgroundColor: AppTheme.azul700,
      ),
      backgroundColor: AppTheme.azul50,
      body: const Center(
        child: Text(
          'Aquí verás el historial de tus compras',
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 1),
    );
  }
}
