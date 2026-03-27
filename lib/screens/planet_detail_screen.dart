import 'package:flutter/material.dart';

class PlanetDetailScreen extends StatelessWidget {
  final String name;
  final String type;
  final Color planetColor;
  final String distance;

  const PlanetDetailScreen({
    super.key,
    required this.name,
    required this.type,
    required this.planetColor,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: planetColor,
                boxShadow: [
                  BoxShadow(
                    color: planetColor.withOpacity(0.5),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              name,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              type,
              style: const TextStyle(fontSize: 20, color: Color(0xFF00D8FF)),
            ),
            const SizedBox(height: 30),
            _InfoRow(label: 'Distance from Sun', value: distance),
            const _InfoRow(label: 'Gravity', value: 'Varies'),
            const _InfoRow(label: 'Atmosphere', value: 'Studied'),
            const SizedBox(height: 30),
            const Text(
              'This is a stateless detail page. In a full app, this text would be passed in through the constructor just like the name and color were.',
              style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 16)),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
