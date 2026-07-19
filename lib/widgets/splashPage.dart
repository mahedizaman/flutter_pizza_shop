import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pizza_shop/widgets/welcomeAuthLandingPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeAuthLandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF6B57),
      body: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 0.8,
              child: Image.asset('assets/images/comida.png'),
            ),
          ),
          Positioned(
            width: 200,
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/images/Vector-1.png'),
            ),
          ),
          Positioned(
            width: 200,
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/images/Vector.png'),
            ),
          ),
        ],
      ),
    );
  }
}
