import 'package:flutter/material.dart';

class AppTheme {
  // Colores base
  static const Color azul950 = Color.fromRGBO(10, 48, 71, 1); // Acento (10%)
  static const Color azul900 = Color(0xFF0F4A6B);
  static const Color azul800 = Color(0xFF0A5A82);
  static const Color azul700 = Color(0xFF076A9D); // Secundario (30%)
  static const Color azul50 = Color(0xFFF0F9FF); // Primario (60%)
  static const Color blanco = Color(0xFFFFFFFF);

  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: azul50, // 60% del fondo
    primaryColor: azul700, // usado para elementos secundarios
    colorScheme: ColorScheme.fromSeed(
      seedColor: azul700,
      primary: azul700, // 30%
      secondary: azul950, // 10%
      background: azul50, // 60%
    ),

    appBarTheme: const AppBarTheme(
      color: azul700, // 30%
      foregroundColor: blanco,
      elevation: 4,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: blanco,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: azul700, // 30%
      selectedItemColor: blanco,
      unselectedItemColor: Color(0xFFD6EAF8), // Azul muy claro para contraste
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: azul950, // 10%
      titleTextStyle: TextStyle(
        color: azul950,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: azul950, // 10% acento
      foregroundColor: blanco,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: azul950, // 10% acento
        foregroundColor: blanco,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
