import 'package:flutter/material.dart';
import 'phenomena_detail_screen.dart';

class DeepSpaceScreen extends StatelessWidget {
  const DeepSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Crab Nebula',
      'Andromeda',
      'Sagittarius A*',
      'Orion Nebula',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Deep Space')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PhenomenaDetailScreen(title: items[index]),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF151821),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.blur_on,
                    size: 60,
                    color: Colors.purpleAccent,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    items[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
