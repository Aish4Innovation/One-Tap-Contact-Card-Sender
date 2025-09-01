import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box, size: 100, color: Colors.indigo),
              const SizedBox(height: 16),
              Text(
                'One-Tap Contact Card Sender',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'Share your contact and social links instantly via QR code.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_forward ,color: Colors.white),
                label: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  
                ),
                onPressed: () => Navigator.pushNamed(context, '/form'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}