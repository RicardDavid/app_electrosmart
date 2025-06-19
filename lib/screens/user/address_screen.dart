import 'package:flutter/material.dart';
import 'package:electrosmart/themes/app_theme.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis direcciones"),
        backgroundColor: AppTheme.azul700,
      ),
      backgroundColor: AppTheme.azul50,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Center(
            child: Text(
              "Aquí puedes gestionar tus direcciones de entrega",
              style: TextStyle(color: AppTheme.azul950, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
