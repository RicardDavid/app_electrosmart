import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:electrosmart/widgets/custom_bottom_navigation.dart';
import 'package:electrosmart/themes/app_theme.dart';
import 'package:electrosmart/widgets/subtitle.dart';

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
        backgroundColor: const Color(0xFF076A9D),
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

              const Subtitle(titulo: "---Productos---"),

              const _TopProductos(
                nombre: "Teclado completo (Full Size):",
                descripcion: "Los teclados full size son los más completos y voluminosos.Incluyen todas las teclas alfanuméricas, de función, numérico y de dirección. ",
                precio: "179.00",
                imagen: "assets/productos/nbc2.jpg",
                favoritos: "50",
                calificacion: "3",
              ),
              const _TopProductos(
                nombre: "Teclado compacto (Tenkeyless o TKL)",
                descripcion: "En primer lugar, las siglas TKL se refieren a “TenKeyLess”, que son 10 teclas menos, en referencia a que no tienen teclado numérico",
                precio: "149.00",
                imagen: "assets/productos/sm19.jpg",
                favoritos: "15",
                calificacion: "2",
              ),
              const _TopProductos(
                nombre: "Teclado ergonómico",
                descripcion: "Un teclado ergonómico inalámbrico con un reposamanos acolchado, para una escritura natural y agradable durante todo el día. Escritura habitual.",
                precio: "509.00",
                imagen: "assets/productos/pubs4.jpg",
                favoritos: "60",
                calificacion: "4",
              ),
              const _TopProductos(
                nombre: "Teclado mecánico",
                descripcion: "Estos teclados están diseñados con interruptores mecánicos individuales debajo de cada tecla, lo que proporciona una sensación única y una mayor durabilidad",
                precio: "189.90",
                imagen: "assets/productos/t211.jpg",
                favoritos: "200",
                calificacion: "5",
              ),

              const Subtitle(titulo: "------------"),

              const _TopProductos(
                nombre: "Logitech MX Master 3S",
                descripcion: "Sensor Darkfield de hasta 8000 DPI, se conecta por Bluetooth o receptor USB, 7 botones, batería recargable de larga duración (hasta 70 días). Ideal para edición, productividad y multitarea",
                precio: "389.90",
                imagen: "assets/productos/mouse-gamer.jpg",
                favoritos: "37",
                calificacion: "5",
              ),
              const _TopProductos(
                nombre: "Razer DeathAdder Essential",
                descripcion: "Sensor óptico de 6400 DPI, diseño ergonómico, iluminación Chroma RGB, botones mecánicos duraderos (50millones de clics). Opción asequible para gamers",
                precio: "99.90",
                imagen: "assets/productos/t211.jpg",
                favoritos: "59",
                calificacion: "37",
              ),
              const _TopProductos(
                nombre: "Logitech G203 Lightsync",
                descripcion: "Sensor óptico 8 000 DPI, luz RGB personalizable, tamaño compacto, excelente relación calidad-precio para gaming casual",
                precio: "94.90",
                imagen: "assets/productos/t211.jpg",
                favoritos: "39",
                calificacion: "15",
              ),
              const _TopProductos(
                nombre: "Razer DeathAdder V3",
                descripcion: "Sensor Focus Pro 30K DPI, diseño ergonómico, ligero y con alto rendimiento. Ideal para jugadores que buscan precisión extrema.",
                precio: "249.90",
                imagen: "assets/productos/t211.jpg",
                favoritos: "47",
                calificacion: "55",
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
