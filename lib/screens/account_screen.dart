import 'package:flutter/material.dart';
import 'package:veterinaria/routes/user_routes.dart';
import 'package:veterinaria/themes/app_theme.dart';
import 'package:veterinaria/widgets/custom_bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var menu = UserRoutes.menuOptions;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(currentIndex: 2),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: ClipOval(
                child: FadeInImage(
                  placeholder: AssetImage("assets/noimage.jpeg"),
                  image: NetworkImage(
                    "https://static.wikia.nocookie.net/marvelcentral/images/9/97/Tony-Stark.jpg/revision/latest?cb=20130429010603",
                  ),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Tony Stark",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.azul900,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemBuilder:
                    (context, index) => ListTile(
                      leading: menu[index].icono,
                      title: Text(menu[index].nombre),
                      trailing: const Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.pushNamed(context, menu[index].ruta);
                      },
                    ),
                separatorBuilder: (_, _) => const Divider(),
                itemCount: menu.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
