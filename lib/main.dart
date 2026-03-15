import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const FinalProject());
}

class FinalProject extends StatelessWidget {
  const FinalProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
