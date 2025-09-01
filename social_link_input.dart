import 'package:flutter/material.dart';

class SocialLinkInput extends StatelessWidget {
  const SocialLinkInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'LinkedIn URL',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.link),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Instagram URL',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.camera_alt),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Twitter/X URL',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.alternate_email),
          ),
        ),
      ],
    );
  }
}