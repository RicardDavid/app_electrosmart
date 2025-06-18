import 'package:flutter/material.dart';
import 'package:electrosmart/themes/app_theme.dart';

class Subtitle extends StatelessWidget {
  final String titulo;

  const Subtitle({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5, top: 5),
      child: Text(
        titulo,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: AppTheme.azul950,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
