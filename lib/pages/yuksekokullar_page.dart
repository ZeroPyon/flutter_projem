import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YuksekokullarPage extends StatelessWidget {
  const YuksekokullarPage({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Bağlantı açılamadı: $url');
    }
  }

  void _callPhone(String phone) async {
    final Uri uri = Uri.parse('tel:$phone');
    if (!await launchUrl(uri)) {
      debugPrint('Telefon aranamadı: $phone');
    }
  }

  Widget _buildSchoolCard({
    required String name,
    required String logo,
    required String webUrl,
    required String mapUrl,
    required String phone,
  }) {
    return Card(
      color: const Color(0xFF424242),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 12,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(logo, height: 70),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.link, color: Colors.white),
                        onPressed: () => _launchURL(webUrl),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        onPressed: () => _launchURL(mapUrl),
                      ),
                      IconButton(
                        icon: const Icon(Icons.phone, color: Colors.white),
                        onPressed: () => _callPhone(phone),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Yüksekokullar"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Image.asset(
                'assets/images/comu.png',
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildSchoolCard(
            name: "Gökçeada Uygulamalı Bilimler Yüksekokulu",
            logo: "assets/images/guby.png",
            webUrl: "https://guby.comu.edu.tr/",
            mapUrl:
                "https://harita.comu.edu.tr/gokceada-uygulamali-bilimler-yuksekokulu",
            phone: "02868872302",
          ),
          _buildSchoolCard(
            name: "Yabancı Diller Yüksekokulu",
            logo: "assets/images/cubf.png",
            webUrl: "https://ydyo.comu.edu.tr/",
            mapUrl: "https://harita.comu.edu.tr/yabanci-diller-yuksekokulu",
            phone: "02862180018",
          ),
        ],
      ),
    );
  }
}
