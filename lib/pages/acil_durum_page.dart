import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AcilDurumPage extends StatelessWidget {
  const AcilDurumPage({super.key});

  void _makePhoneCall() async {
    const phoneNumber = 'tel:10713';
    if (await canLaunchUrl(Uri.parse(phoneNumber))) {
      await launchUrl(Uri.parse(phoneNumber));
    } else {
      debugPrint('Arama yapılamıyor: $phoneNumber');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Acil Durum'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _makePhoneCall,
                child: const Text(
                  'Terzioğlu Yerleşkesi Giriş Kapı Güvenliği',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
