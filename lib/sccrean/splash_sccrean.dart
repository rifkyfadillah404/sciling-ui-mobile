import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isAnimated = false;

  @override
  void initState() {
    super.initState();
    // Start animation after a short delay
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isAnimated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2A4A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(flex: 2),
              // Animated Illustration
              AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutBack,
                height: _isAnimated ? 300 : 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Animated Background circle
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.elasticOut,
                      top: _isAnimated ? 50 : 100,
                      right: _isAnimated ? 20 : 50,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 800),
                        width: _isAnimated ? 80 : 40,
                        height: _isAnimated ? 80 : 40,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(
                            _isAnimated ? 0.3 : 0.1,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    // Animated Main illustration
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.elasticOut,
                      width: _isAnimated ? 250 : 150,
                      height: _isAnimated ? 200 : 120,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(
                          _isAnimated ? 0.2 : 0.1,
                        ),
                        borderRadius: BorderRadius.circular(
                          _isAnimated ? 20 : 10,
                        ),
                      ),
                      child: AnimatedScale(
                        duration: const Duration(milliseconds: 1200),
                        scale: _isAnimated ? 1.0 : 0.5,
                        child: const Image(
                          image: AssetImage('assets/images/logo.png'),
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Animated Title
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _isAnimated ? 1.0 : 0.0,
                child: AnimatedSlide(
                  duration: const Duration(milliseconds: 800),
                  offset: _isAnimated ? Offset.zero : const Offset(0, 0.5),
                  child: Column(
                    children: [
                      Text(
                        'Quick & Fastest',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Delivery Food',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Animated Subtitle
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1200),
                opacity: _isAnimated ? 1.0 : 0.0,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit ut aliquam',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              // Animated Button
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.elasticOut,
                width: _isAnimated ? double.infinity : 200,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
