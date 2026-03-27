import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ZenithApp());
}

class ZenithApp extends StatelessWidget {
  const ZenithApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zenith Space Atlas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF090A0F),
        primaryColor: const Color(0xFF00D8FF),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00D8FF),
          surface: Color(0xFF151821),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090A0F),
          elevation: 0,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
