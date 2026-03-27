import 'package:flutter/material.dart';
import 'planet_detail_screen.dart';

class SolarSystemScreen extends StatelessWidget {
  const SolarSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded stateless data
    final planets = [
      {
        'name': 'Mars',
        'type': 'Terrestrial Planet',
        'color': Colors.redAccent,
        'distance': '225M km',
      },
      {
        'name': 'Jupiter',
        'type': 'Gas Giant',
        'color': Colors.orangeAccent,
        'distance': '778M km',
      },
      {
        'name': 'Saturn',
        'type': 'Gas Giant',
        'color': Colors.amber,
        'distance': '1.4B km',
      },
      {
        'name': 'Neptune',
        'type': 'Ice Giant',
        'color': Colors.blueAccent,
        'distance': '4.3B km',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Solar System')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index];
          return Card(
            color: const Color(0xFF151821),
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                backgroundColor: planet['color'] as Color,
                radius: 25,
              ),
              title: Text(
                planet['name'] as String,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                planet['type'] as String,
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailScreen(
                      name: planet['name'] as String,
                      type: planet['type'] as String,
                      planetColor: planet['color'] as Color,
                      distance: planet['distance'] as String,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
