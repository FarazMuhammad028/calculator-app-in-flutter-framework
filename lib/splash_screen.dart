import 'dart:async';

import 'package:calculator_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            child: Lottie.asset("lib/assets/splash_animation.json",
                fit: BoxFit.cover),
          ),
          const Text(
            'Developed by',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
          const Text('Muhammad Faraz'),
        ],
      ),
    );
  }
}
