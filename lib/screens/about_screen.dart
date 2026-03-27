import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.rocket_launch, size: 80, color: Color(0xFF00D8FF)),
            const SizedBox(height: 24),
            const Text(
              'Z E N I T H',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Version 1.0.0', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 32),
            Text(
              'Zenith is a completely stateless application designed to demonstrate beautiful UI composition, routing, and data passing in Flutter without relying on complex state management tools.',
              style: TextStyle(
                color: Colors.grey[400],
                height: 1.6,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
