import 'package:flutter/material.dart';
import '../details/details_screen.dart';
import '../profile/profile_screen.dart';
import 'restaurant_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Verdesalvia Restaurante',
      'images': [
        'assets/images/verdesalvia1.jpeg',
        'assets/images/verdesalvia2.jpeg',
        'assets/images/verdesalvia3.jpeg',
      ],
      'location': 'Cuernavaca, Morelos',
      'rating': 4.5,
      'description':
          'Verdesalvia Restaurante ofrece una propuesta gastronómica en un lugar rodeado de jardines y un encuentro entre el arte y el buen vivir, muy cercano a la Ciudad de México donde nuestros visitantes pueden disfrutar la riqueza, tradiciones culinarias de Italia y México.',
    },
    {
      'name': 'Restaurante Antiguo',
      'images': [
        'assets/images/antiguo1.jpeg',
        'assets/images/antiguo2.jpeg',
        'assets/images/antiguo3.jpeg',
      ],
      'location': 'Emiliano Zapata, Morelos',
      'rating': 4.5,
      'description':
          'Un espacio clásico con terraza grande ventilada, que sirve cocina mexicana tradicional.',
    },
    {
      'name': 'Las Asadas Bar & Grill',
      'images': [
        'assets/images/asadas1.jpeg',
        'assets/images/asadas2.jpeg',
        'assets/images/asadas3.jpeg',
      ],
      'location': 'Xochitepec, Morelos',
      'rating': 4.4,
      'description': 'Delicious tacos with fresh ingredients.',
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Restaurants'), centerTitle: true),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return RestaurantCard(
            name: restaurant['name'],
            imageUrl: restaurant['images'][0],
            location: restaurant['location'],
            rating: restaurant['rating'],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(restaurant: restaurant),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
