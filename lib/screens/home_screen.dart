import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:veterinaria/widgets/custom_bottom_navigation.dart';
import 'package:veterinaria/themes/app_theme.dart';
import 'package:veterinaria/widgets/subtitle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ElectroSmart"),
        backgroundColor: const Color.fromARGB(255, 39, 131, 116),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  height: 280,
                  image: const NetworkImage(
                    "https://img.pikbest.com/wp/202345/listen-music-silhouette-of-a-person-wearing-headphones-and-listening-to_9585276.jpg!w700wp",
                  ),
                  placeholder: const AssetImage("assets/noimage.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              const Subtitle(titulo: "Categorias"),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(5),
                  children: const [
                    _Servicio(
                      titulo: "Teclados",
                      imagen: "assets/servicios/teclado1.jpg",
                    ),
                    _Servicio(
                      titulo: "Mouse",
                      imagen: "assets/servicios/mouse11.jpg",
                    ),
                    _Servicio(
                      titulo: "Audifonos",
                      imagen: "assets/servicios/audifo1.jpg",
                    ),
                    _Servicio(
                      titulo: "Parlantes",
                      imagen: "assets/servicios/parlante1.webp",
                    ),
                    _Servicio(
                      titulo: "Soportes",
                      imagen: "assets/servicios/parlante1.webp",
                    ),
                    _Servicio(
                      titulo: "Monitores",
                      imagen: "assets/servicios/parlante1.webp",
                    ),
                  ],
                ),
              ),
              const Subtitle(titulo: "Productos"),
              const _TopProductos(
                nombre: "NutriBites Beef Sticks",
                descripcion: "Descripción 1",
                precio: "13.20",
                imagen: "assets/productos/pupc5.jpg",
                favoritos: "50",
                calificacion: "3",
              ),
              const _TopProductos(
                nombre: "Fórmula Natural Gatos",
                descripcion: "Descripción 2",
                precio: "43.00",
                imagen: "assets/productos/sm19.jpg",
                favoritos: "150",
                calificacion: "2",
              ),
              const _TopProductos(
                nombre: "Ultrametrin 600",
                descripcion: "Descripción 3",
                precio: "7.60",
                imagen: "assets/productos/pubs4.jpg",
                favoritos: "60",
                calificacion: "4",
              ),
              const _TopProductos(
                nombre: "Suralan X-Large",
                descripcion: "Descripción 4",
                precio: "85.90",
                imagen: "assets/productos/t211.jpg",
                favoritos: "200",
                calificacion: "5",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final offset = math.sin(_controller.value * 2 * math.pi) * 6;
          return Transform.translate(
            offset: Offset(0, -offset),
            child: FloatingActionButton(
              onPressed: () => Navigator.pushReplacementNamed(context, 'cart'),
              backgroundColor: AppTheme.azul900,
              tooltip: 'Ir al carrito',
              child: const Icon(Icons.shopping_cart),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: const CustomBottomNavigation(currentIndex: 0),
    );
  }
}

class _TopProductos extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String imagen;
  final String precio;
  final String favoritos;
  final String calificacion;

  const _TopProductos({
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.precio,
    required this.favoritos,
    required this.calificacion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage(imagen), width: 80),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.azul900,
                      ),
                    ),
                    Text(descripcion),
                    Text(precio, style: TextStyle(color: AppTheme.azul800)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(favoritos, style: TextStyle(color: AppTheme.azul700)),
              const Icon(Icons.favorite, color: AppTheme.azul700),
              const SizedBox(width: 5),
              Text(calificacion, style: TextStyle(color: AppTheme.azul800)),
              const Icon(Icons.star, color: AppTheme.azul800),
            ],
          ),
        ],
      ),
    );
  }
}

class _Servicio extends StatelessWidget {
  final String titulo;
  final String imagen;

  const _Servicio({required this.titulo, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image(image: AssetImage(imagen), fit: BoxFit.cover),
          const SizedBox(height: 5),
          Text(titulo),
        ],
      ),
    );
  }
}
