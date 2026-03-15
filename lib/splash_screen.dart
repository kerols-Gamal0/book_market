import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ieee_final_project/LogIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> checkFirstTime() async {
    final prefs = await SharedPreferences.getInstance();

    bool seen = prefs.getBool('seenOnboarding') ?? false;

    if (seen) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Login()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Onboarding()),
      );
    }
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      checkFirstTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff54408C),
      body: Center(
        child: FadeInUp(child: Image.asset("assets/images/Bazar.png")),
      ),
    );
  }
}
