import 'package:flutter/material.dart';
import 'package:veterinaria/models/menu_option.dart';
import 'package:veterinaria/screens/screens.dart';

class MainRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
      nombre: "Home",
      ruta: "home",
      icono: Icon(Icons.home),
      screen: HomeScreen(),
    ),
    MenuOption(
      nombre: "Carrito",
      ruta: "cart",
      icono: Icon(Icons.shopping_cart),
      screen: CartScreen(),
    ),
    MenuOption(
      nombre: "Mi cuenta",
      ruta: "account",
      icono: Icon(Icons.account_box),
      screen: AccountScreen(),
    ),
  ];
}
