import 'package:flutter/material.dart';
import 'about_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.notifications, color: Color(0xFF00D8FF)),
            title: Text('Notifications', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.toggle_on, color: Color(0xFF00D8FF), size: 40),
          ),
          const ListTile(
            leading: Icon(Icons.dark_mode, color: Color(0xFF00D8FF)),
            title: Text(
              'Force Dark Mode',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.toggle_on, color: Color(0xFF00D8FF), size: 40),
          ),
          const Divider(color: Colors.white24),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.grey),
            title: const Text(
              'About Zenith',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
