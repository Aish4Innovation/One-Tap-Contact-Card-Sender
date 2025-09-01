import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/contact_form_page.dart';

void main() {
  runApp(const ContactCardApp());
}

class ContactCardApp extends StatelessWidget {
  const ContactCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Card Sender',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/form': (context) => const ContactFormPage(),
        // REMOVE '/share' from here!
      },
    );
  }
}