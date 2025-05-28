import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // <-- Si usas const, también usa en el test

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Aquí habilitas el banner de debug
      home: WelcomeScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
