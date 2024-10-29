import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> restaurant;

  const DetailsScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final List<String> images = restaurant['images'] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurant['name'],
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageCarouse(images),
              const SizedBox(height: 16),
              _buildRestaurantInfo(),
              const SizedBox(height: 24),
              const Text(
                'Descripción',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                restaurant['description'] ??
                    'No hay una descripción disponible',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCarouse(List<String> images) {
    if (images.isEmpty) {
      return const Center(
        child: Text('No hay imágenes disponibles'),
      );
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 250,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: images.map((image) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildRestaurantInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Nombre del restaurante y rateing
        Row(
          children: [
            Text(
              restaurant['name'] ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                const Icon(Icons.star, size: 20, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  restaurant['rating'].toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.location_on, size: 20, color: Colors.grey),
            const SizedBox(width: 4),
            Text(
              restaurant['location'],
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
