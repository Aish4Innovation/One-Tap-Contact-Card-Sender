import 'package:flutter/material.dart';
import '../models/contact_info.dart';

class ContactCardPage extends StatelessWidget {
  final ContactInfo contactInfo;
  const ContactCardPage({super.key, required this.contactInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Details')),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(contactInfo.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(contactInfo.email),
                Text(contactInfo.phone),
                if (contactInfo.linkedin.isNotEmpty)
                  Text('LinkedIn: ${contactInfo.linkedin}'),
                if (contactInfo.instagram.isNotEmpty)
                  Text('Instagram: ${contactInfo.instagram}'),
                if (contactInfo.twitter.isNotEmpty)
                  Text('Twitter: ${contactInfo.twitter}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}