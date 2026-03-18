import 'package:flutter/material.dart';

void main() => runApp(const DogClubApp());

class DogClubApp extends StatelessWidget {
  const DogClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Club',
      home: const DogClubHome(),
    );
  }
}

class DogClubHome extends StatelessWidget {
  const DogClubHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las tarjetas
    final List<Map<String, String>> services = [
      {
        'title': 'Guardería Diaria',
        'subtitle': 'Diversión asegurada',
        'image': 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/border-collie-inteligente_25a6932c_260112115754_800x800.webp'
      },
      {
        'title': 'Entrenamiento',
        'subtitle': 'Mejora su conducta',
        'image': 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/360_F_1710569501_7Tx8DS93v2eqGmTYEu67Bt9PqmqND0pK.webp'
      },
      {
        'title': 'Baño y Estética',
        'subtitle': 'Relajación total',
        'image': 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/perro2.png'
      },
      {
        'title': 'Hospedaje VIP',
        'subtitle': 'Como en casa',
        'image': 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/pexels-photo-1108099.webp'
      },
      {
        'title': 'Tienda de Snacks',
        'subtitle': 'Premios naturales',
        'image': 'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/pexels-photo-3114143.webp'
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      appBar: AppBar(
        leading: const Icon(Icons.pets, color: Colors.black87),
        title: const Text(
          'Dog Club',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFBBDEFB),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: services.map((item) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                elevation: 2,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Container(
                  width: double.infinity, // Llena la pantalla horizontalmente
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // Imagen Cuadrada desde la web
                      AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Textos a la derecha
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            item['subtitle']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}