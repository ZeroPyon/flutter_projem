import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyoPage extends StatelessWidget {
  const MyoPage({super.key});

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL açılamadı: $url');
    }
  }

  void _launchPhone(String number) async {
    Uri uri = Uri.parse("tel:$number");
    if (!await launchUrl(uri)) {
      throw Exception('Telefon açılamadı: $number');
    }
  }

  Widget _buildMyoCard({
    required String title,
    required String imagePath,
    required String url,
    required String locationUrl,
    required String phone,
  }) {
    return Card(
      color: const Color(0xFF424242),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(imagePath, height: 70, width: 70),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () => _launchURL(url),
                      icon: const Icon(Icons.language, color: Colors.white),
                    ),
                    const Text(
                      "Web",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => _launchURL(locationUrl),
                      icon: const Icon(Icons.location_on, color: Colors.white),
                    ),
                    const Text(
                      "Konum",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => _launchPhone(phone),
                      icon: const Icon(Icons.phone, color: Colors.white),
                    ),
                    const Text(
                      "Ara",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ],
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
        title: const Text("Meslek Yüksekokulları"),
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
          _buildMyoCard(
            title: "Ayvacık MYO",
            imagePath: "assets/images/amy.png",
            url: "https://ayvacik.comu.edu.tr",
            locationUrl:
                "https://harita.comu.edu.tr/ayvacik-meslek-yuksekokulu",
            phone: "0 286 712 32 05",
          ),
          _buildMyoCard(
            title: "Bayramiç MYO",
            imagePath: "assets/images/cubf.png",
            url: "https://bmyo.comu.edu.tr",
            locationUrl:
                "https://harita.comu.edu.tr/bayramic-meslek-yuksekokulu",
            phone: "0 286 773 25 12",
          ),
          _buildMyoCard(
            title: "Biga MYO",
            imagePath: "assets/images/bimy.png",
            url: "http://bigamyo.comu.edu.tr",
            locationUrl: "https://harita.comu.edu.tr/biga-meslek-yuksekokulu",
            phone: "",
          ),
          _buildMyoCard(
            title: "Çan MYO",
            imagePath: "assets/images/çamy.png",
            url: "https://canmyo.comu.edu.tr",
            locationUrl: "https://harita.comu.edu.tr/can-meslek-yuksekokulu",
            phone: "0 286 416 77 05",
          ),
          _buildMyoCard(
            title: "Ezine MYO",
            imagePath: "assets/images/ezmy.png",
            url: "http://ezinemyo.comu.edu.tr",
            locationUrl: "https://harita.comu.edu.tr/ezine-meslek-yuksekokulu",
            phone: "0 286 618 45 25",
          ),
          _buildMyoCard(
            title: "Gelibolu Piri Reis MYO",
            imagePath: "assets/images/gprmy.png",
            url: "https://gelibolu.comu.edu.tr",
            locationUrl:
                "https://harita.comu.edu.tr/gelibolu-piri-reis-meslek-yuksekokulu",
            phone: "0 286 566 39 22",
          ),
          _buildMyoCard(
            title: "Gökçeada MYO",
            imagePath: "assets/images/gomy.png",
            url: "https://gokceada.comu.edu.tr",
            locationUrl:
                "https://harita.comu.edu.tr/gokceada-meslek-yuksekokulu",
            phone: "0 286 887 44 10",
          ),
          _buildMyoCard(
            title: "Lapseki MYO",
            imagePath: "assets/images/lmy.png",
            url: "https://lapsekimyo.comu.edu.tr",
            locationUrl:
                "https://harita.comu.edu.tr/lapseki-meslek-yuksekokulu",
            phone: "0 286 522 61 04",
          ),
          _buildMyoCard(
            title: "Yenice MYO",
            imagePath: "assets/images/cubf.png",
            url: "https://yenice.comu.edu.tr",
            locationUrl: "https://harita.comu.edu.tr/yenice-meslek-yuksekokulu",
            phone: "0 286 474 28 68",
          ),
        ],
      ),
    );
  }
}
