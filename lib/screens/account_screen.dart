import 'package:flutter/material.dart';
import 'package:electrosmart/routes/user_routes.dart';
import 'package:electrosmart/widgets/custom_bottom_navigation.dart';
import 'package:electrosmart/themes/app_theme.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var menu = UserRoutes.menuOptions;
    return Scaffold(
      backgroundColor: AppTheme.azul50, // 60% fondo principal
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 2),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // Avatar amigable para usuario final
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.azul700.withOpacity(0.15), // 30%
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: FadeInImage(
                    placeholder: AssetImage("assets/noimage.jpeg"),
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=facearea&w=500&q=80",
                    ),
                    height: 110,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Nombre y bienvenida
            Text(
              "¡Bienvenido a tu cuenta!",
              style: TextStyle(
                color: AppTheme.azul700, // 30%
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "ElectroSmart",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 18),
            // Tarjeta de resumen de usuario
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Compras realizadas",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "8",
                            style: TextStyle(
                              color: AppTheme.azul700, // 30%
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Puntos acumulados",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "120",
                            style: TextStyle(
                              color: AppTheme.azul700, // 30%
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            // Menú de opciones
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 8,
                  ),
                  itemBuilder:
                      (context, index) => ListTile(
                        leading: Icon(
                          menu[index].icono.icon,
                          color: AppTheme.azul950,
                        ), // 10%
                        title: Text(
                          menu[index].nombre,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppTheme.azul950,
                        ), // 10%
                        onTap: () {
                          Navigator.pushNamed(context, menu[index].ruta);
                        },
                      ),
                  separatorBuilder:
                      (_, __) =>
                          const Divider(color: Colors.black12, height: 1),
                  itemCount: menu.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
