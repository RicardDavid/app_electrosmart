import 'package:flutter/material.dart';
import 'package:electrosmart/themes/app_theme.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Libro de reclamaciones"),
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
              "Aquí puedes registrar tus reclamos o sugerencias",
              style: TextStyle(color: AppTheme.azul950, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
