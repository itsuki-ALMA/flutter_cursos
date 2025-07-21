import 'package:flutter/material.dart';
import 'package:flutter_cursos/ui/home_screen.dart';
import 'package:flutter_cursos/ui/login_screen.dart';

void main() {
  runApp(const TempoCursaApp());
}

class TempoCursaApp extends StatelessWidget {
  const TempoCursaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => HomeScreen(),
      },
      initialRoute: "login",
    );
  }
} 
