import 'package:flutter/material.dart';
import '../models/contact_info.dart';
import '../widgets/qr_code_widget.dart';

class SharePage extends StatelessWidget {
  final ContactInfo contactInfo;

  const SharePage({super.key, required this.contactInfo});

  @override
  Widget build(BuildContext context) {
    String contactJson = contactInfo.toJson().toString(); // You can use jsonEncode for better formatting

    return Scaffold(
      appBar: AppBar(title: const Text('Share Your Card')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QRCodeWidget(data: contactJson),
              const SizedBox(height: 20),
              Text(
                'Scan this QR code to get my contact!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}