import 'package:flutter/material.dart';
import 'solar_system_screen.dart';
import 'deep_space_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Z E N I T H',
          style: TextStyle(letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Explore the Cosmos',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Select a sector to begin your journey.',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          SizedBox(height: 30),
          _CategoryCard(
            title: 'Solar System',
            subtitle: 'Planets, Moons, and Asteroids',
            icon: Icons.public,
            targetScreen: SolarSystemScreen(),
          ),
          SizedBox(height: 20),
          _CategoryCard(
            title: 'Deep Space',
            subtitle: 'Nebulas, Black Holes, and Galaxies',
            icon: Icons.auto_awesome,
            targetScreen: DeepSpaceScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF151821),
        selectedItemColor: const Color(0xFF00D8FF),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          }
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget targetScreen;

  const _CategoryCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => targetScreen),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFF151821),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFF00D8FF).withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Icon(icon, size: 50, color: const Color(0xFF00D8FF)),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
