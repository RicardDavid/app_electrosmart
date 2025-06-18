import 'package:flutter/material.dart';
import 'package:electrosmart/routes/app_routes.dart';
import 'package:electrosmart/routes/main_routes.dart';
import 'package:electrosmart/routes/user_routes.dart';
import 'package:electrosmart/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // AGREGAMOS LAS RUTAS DE LA APLICACIÓN
    AppRoutes.addRange(MainRoutes.menuOptions);
    AppRoutes.addRange(UserRoutes.menuOptions);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ElectroSmart App',
      theme: AppTheme.themeData,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}
