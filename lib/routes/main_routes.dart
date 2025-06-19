import 'package:flutter/material.dart';
import 'package:electrosmart/models/menu_option.dart';
import 'package:electrosmart/screens/screens.dart';
import 'package:electrosmart/screens/account_screen.dart';
import 'package:electrosmart/screens/home_screen.dart';
import 'package:electrosmart/screens/cart_screen.dart';

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
