import 'package:flutter/material.dart';
import 'package:veterinaria/models/menu_option.dart';
import 'package:veterinaria/screens/screens.dart';

class UserRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
      nombre: "Mis datos",
      ruta: "profile",
      icono: Icon(Icons.person_pin_outlined),
      screen: ProfileScreen(),
    ),
    MenuOption(
      nombre: "Mis compras",
      ruta: "myorders",
      icono: Icon(Icons.shop),
      screen: OrdersScreen(),
    ),
    MenuOption(
      nombre: "Mis direcciones",
      ruta: "myaddress",
      icono: Icon(Icons.location_on_outlined),
      screen: AddressScreen(),
    ),
    MenuOption(
      nombre: "Trámites",
      ruta: "mycomplaints",
      icono: Icon(Icons.document_scanner_outlined),
      screen: ComplaintsScreen(),
    ),
  ];
}
