import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeAuthLandingPage extends StatefulWidget {
  const WelcomeAuthLandingPage({super.key});

  @override
  State<WelcomeAuthLandingPage> createState() => _WelcomeAuthLandingPageState();
}

class _WelcomeAuthLandingPageState extends State<WelcomeAuthLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF6B57),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/images/Vector-1.png',
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                'assets/images/wepik-export-20231123125826rxSl 1.png',
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 150,
            child: Opacity(
              opacity: 0.9,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          (" I don't feel like\n cooking. Let's\n order food\n delivery."),
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(197, 0, 0, 0),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: const Color.fromARGB(100, 255, 255, 255),
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white, width: 1),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF242731),
              ),
              onPressed: () {},
              child: Text(
                'Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
