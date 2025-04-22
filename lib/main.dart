import 'package:flutter/material.dart';
import 'pages/rektor_page.dart';
import 'pages/acil_durum_page.dart';
import 'pages/toplanma_yeri_page.dart';
import 'pages/osem_page.dart';
import 'pages/kart_page.dart';
import 'pages/sosyalmedya_page.dart';
import 'pages/randevual_page.dart';
import 'pages/dismer_page.dart';
import 'pages/eczane_page.dart';
import 'pages/medya_page.dart';
import 'pages/rehber_page.dart';
import 'pages/cozum_merkezi_page.dart';
import 'pages/library_page.dart';
import 'pages/cobiltum_page.dart';
import 'pages/comu_harita_page.dart';
import 'pages/comu_butik_page.dart';
import 'pages/kampus_hayati_page.dart';
import 'pages/topluluklar_page.dart';
import 'pages/akademik_takvim_page.dart';
import 'pages/akademik_birimler_page.dart';
import 'pages/feedback_page.dart';
import 'pages/teknopark_page.dart';
import 'pages/expanded_faculties_page.dart';
import 'pages/yuksekokullar_page.dart';
import 'pages/myo_page.dart';

void main() {
  runApp(const SfrdanApp());
}

class SfrdanApp extends StatelessWidget {
  const SfrdanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sfrdan',
      theme: ThemeData.dark(),
      home: const MainPage(),
      routes: {
        '/expandedFaculties': (context) => const ExpandedFacultiesPage(),
        '/ykskokl': (context) => const YuksekokullarPage(),
        '/myo': (context) => const MyoPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    List<_CardItem> items = [
      _CardItem("Rektör", "assets/images/rektor.png", () => const RektorPage()),
      _CardItem(
        "Acil Durum",
        "assets/images/emergency.png",
        () => const AcilDurumPage(),
      ),
      _CardItem(
        "Toplanma Alanı",
        "assets/images/toplanma.png",
        () => const ToplanmaYeriPage(),
      ),
      _CardItem("ÖSEM", "assets/images/dinner.png", () => const OsemPage()),
      _CardItem("Kart", "assets/images/kart.png", () => const KartPage()),
      _CardItem(
        "Sosyal Medya",
        "assets/images/socialmediacombined.png",
        () => const SosyalmedyaPage(),
      ),
      _CardItem(
        "Randevu",
        "assets/images/randevual.png",
        () => const RandevualPage(),
      ),
      _CardItem(
        "Diş Randevu",
        "assets/images/dismer.png",
        () => const DismerPage(),
      ),
      _CardItem("Eczane", "assets/images/eczane.png", () => const EczanePage()),
      _CardItem("Medya", "assets/images/medya.png", () => const MedyaPage()),
      _CardItem(
        "Rehber",
        "assets/images/comurehber.png",
        () => const RehberPage(),
      ),
      _CardItem(
        "Çözüm Merkezi",
        "assets/images/yediyirdmidort.png",
        () => const CozumMerkeziPage(),
      ),
      _CardItem(
        "Kütüphane",
        "assets/images/library.png",
        () => const LibraryPage(),
      ),
      _CardItem(
        "COBILTUM",
        "assets/images/cobiltum.png",
        () => const CobiltumPage(),
      ),
      _CardItem(
        "Kampüs Haritası",
        "assets/images/comuharita.png",
        () => const ComuHaritaPage(),
      ),
      _CardItem(
        "Butik",
        "assets/images/comubutik.png",
        () => const ComuButikPage(),
      ),
      _CardItem(
        "Kampüs Hayatı",
        "assets/images/kampushayati1.png",
        () => const KampusHayatiPage(),
      ),
      _CardItem(
        "Topluluklar",
        "assets/images/topluluklar.png",
        () => const TopluluklarPage(),
      ),
      _CardItem(
        "Akademik Takvim",
        "assets/images/takvim.png",
        () => const AkademikTakvimPage(),
      ),
      _CardItem(
        "Akademik Birimler",
        "assets/images/akademikbirimler.png",
        () => const AkademikBirimlerPage(),
      ),
      _CardItem(
        "Geri Bildirim",
        "assets/images/feedback.png",
        () => const FeedbackPage(),
      ),
      _CardItem(
        "TeknoPark",
        "assets/images/teknopark.png",
        () => const TeknoParkPage(),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset('assets/images/okulunyenilogosu.png', height: 100),
          const SizedBox(height: 8),
          const Text(
            "HOŞGELDİN ÇOMÜ'lü",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children:
                  items.map((item) {
                    try {
                      debugPrint("Yükleniyor: ${item.title}");
                      return GestureDetector(
                        onTap: () => navigateTo(context, item.pageBuilder()),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.grey[850],
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                item.imagePath,
                                height: 64,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.broken_image,
                                    color: Colors.white,
                                  );
                                },
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    } catch (e) {
                      debugPrint(
                        "🛑 HATA oluştu - Başlık: ${item.title}, Görsel: ${item.imagePath}, Hata: $e",
                      );
                      return const SizedBox();
                    }
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardItem {
  final String title;
  final String imagePath;
  final Widget Function() pageBuilder;

  const _CardItem(this.title, this.imagePath, this.pageBuilder);
}
