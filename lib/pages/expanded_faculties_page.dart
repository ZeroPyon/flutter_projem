import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandedFacultiesPage extends StatelessWidget {
  const ExpandedFacultiesPage({super.key});

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL açılamadı: $url');
    }
  }

  void _callPhone(String phoneNumber) async {
    Uri uri = Uri.parse('tel:$phoneNumber');
    if (!await launchUrl(uri)) {
      throw Exception('Telefon aranamadı: $phoneNumber');
    }
  }

  Widget _buildFacultyCard({
    required String name,
    required String image,
    required String url,
    required String mapUrl,
    required String phone,
  }) {
    return Card(
      color: const Color(0xFF424242),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image, width: 70, height: 70),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    name,
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
                      icon: const Icon(Icons.link, color: Colors.white),
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
                      onPressed: () => _launchURL(mapUrl),
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
                      onPressed: () => _callPhone(phone),
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
    final faculties = [
      {
        'name': 'Biga İktisadi ve İdari Bilimler Fakültesi',
        'image': 'assets/images/bigaivibf.png',
        'url': 'https://biibf.comu.edu.tr/',
        'mapUrl':
            'https://harita.comu.edu.tr/biga-iktisadi-ve-idari-bilimler-fakultesi',
        'phone': '02863358739',
      },
      {
        'name': 'Biga Uygulamalı Bilimler Fakültesi',
        'image': 'assets/images/bigaubf.png',
        'url': 'http://bigaubf.comu.edu.tr/',
        'mapUrl':
            'https://harita.comu.edu.tr/biga-uygulamali-bilimler-fakultesi',
        'phone': '02863358739',
      },
      {
        'name': 'Çan Uygulamalı Bilimler Fakültesi',
        'image': 'assets/images/cubf.png',
        'url': 'https://cubyo.comu.edu.tr/',
        'mapUrl':
            'https://harita.comu.edu.tr/can-uygulamali-bilimler-yuksekokulu',
        'phone': '02864166188',
      },
      {
        'name': 'Deniz Bilimleri ve Teknolojisi Fakültesi',
        'image': 'assets/images/dbtf.png',
        'url': 'https://denbiltek.comu.edu.tr/',
        'mapUrl':
            'https://harita.comu.edu.tr/deniz-bilimleri-ve-teknolojisi-fakultesi',
        'phone': '02862180542',
      },
      {
        'name': 'Diş Hekimliği Fakültesi',
        'image': 'assets/images/dhf.png',
        'url': 'http://dishekimligi.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/dis-hekimligi-fakultesi',
        'phone': '02862633533',
      },
      {
        'name': 'Eğitim Fakültesi',
        'image': 'assets/images/ef.png',
        'url': 'http://egitim.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/egitim-fakultesi',
        'phone': '02862135563',
      },
      {
        'name': 'Fen Fakültesi',
        'image': 'assets/images/fef.png',
        'url': 'http://fen.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/fen-edebiyat-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'Güzel Sanatlar Fakültesi',
        'image': 'assets/images/gsf.png',
        'url': 'http://gsf.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/guzel-sanatlar-fakultesi',
        'phone': '02862180535',
      },
      {
        'name': 'İlahiyat Fakültesi',
        'image': 'assets/images/ilahiyatf.png',
        'url': 'http://ilahiyat.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/ilahiyat-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'İletişim Fakültesi',
        'image': 'assets/images/cubf.png',
        'url': 'http://iletisim.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/iletisim-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'İnsan ve Toplum Bilimleri Fakültesi',
        'image': 'assets/images/ivtbf.png',
        'url': 'https://itbf.comu.edu.tr',
        'mapUrl':
            'https://harita.comu.edu.tr/insan-ve-toplum-bilimleri-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'Mimarlık ve Tasarım Fakültesi',
        'image': 'assets/images/mvtf.png',
        'url': 'http://mtf.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/mimarlik-ve-tasarim-fakultesi',
        'phone': '02862183272',
      },
      {
        'name': 'Mühendislik Fakültesi',
        'image': 'assets/images/mf.png',
        'url': 'http://muhendislik.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/muhendislik-fakultesi',
        'phone': '02862181439',
      },
      {
        'name': 'Sağlık Bilimleri Fakültesi',
        'image': 'assets/images/sbf.png',
        'url': 'http://saglikbf.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/saglik-bilimleri-fakultesi',
        'phone': '02862181397',
      },
      {
        'name': 'Siyasal Bilgiler Fakültesi',
        'image': 'assets/images/sibf.png',
        'url': 'http://sbf.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/siyasal-bilgiler-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'Spor Bilimleri Fakültesi',
        'image': 'assets/images/besyo.png',
        'url': 'http://sporbf.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/spor-bilimleri-fakultesi',
        'phone': '02862182297',
      },
      {
        'name': 'Tıp Fakültesi',
        'image': 'assets/images/tıp.png',
        'url': 'http://tip.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/tip-fakultesi',
        'phone': '02862180018',
      },
      {
        'name': 'Turizm Fakültesi',
        'image': 'assets/images/tuf.png',
        'url': 'http://turizm.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/turizm-fakultesi',
        'phone': '02862180546',
      },
      {
        'name': 'Ziraat Fakültesi',
        'image': 'assets/images/zt.png',
        'url': 'http://ziraat.comu.edu.tr/',
        'mapUrl': 'https://harita.comu.edu.tr/ziraat-fakultesi',
        'phone': '02862180018',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Fakülteler"),
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
          ...faculties.map(
            (faculty) => _buildFacultyCard(
              name: faculty['name']!,
              image: faculty['image']!,
              url: faculty['url']!,
              mapUrl: faculty['mapUrl']!,
              phone: faculty['phone']!,
            ),
          ),
        ],
      ),
    );
  }
}
