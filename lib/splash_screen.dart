import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_ori/homePage.dart';
import 'package:lottie/lottie.dart';

class AnimatedSplashScreenWidget extends StatefulWidget {
  const AnimatedSplashScreenWidget({super.key});

  @override
  State<AnimatedSplashScreenWidget> createState() => _AnimatedSplashScreenWidgetState();
}

class _AnimatedSplashScreenWidgetState extends State<AnimatedSplashScreenWidget> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 10), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MyHomePage()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 100),
          Lottie.asset(
            'assets/redchar_1.json',
            width: 180,
            height: 180,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 10),
          const Center(
            child: Text(
              "Loading....",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}