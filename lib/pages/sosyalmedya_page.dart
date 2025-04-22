import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SosyalmedyaPage extends StatelessWidget {
  const SosyalmedyaPage({super.key});

  void _launchURL(String url, {String? appPackage}) async {
    Uri uri = Uri.parse(url);

    // Eğer uygulama paketi varsa, önce onu dene
    if (appPackage != null) {
      final fallbackUri = uri;
      try {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (_) {
        await launchUrl(fallbackUri, mode: LaunchMode.platformDefault);
      }
    } else {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color cardColor = Color(0xFF424242);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Sosyal Medya"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Çanakkale Onsekiz Mart Üniversitesi\nSosyal Medya Hesapları",
              style: TextStyle(
                color: Color(0xFFEEEEEE),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap:
                          () => _launchURL(
                            'https://www.facebook.com/onsekizmartuni',
                            appPackage: 'com.facebook.katana',
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/facebook_icon.png',
                            height: 70,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'cursive',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Card(
                    color: cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap:
                          () => _launchURL(
                            'https://twitter.com/onsekizmartuni',
                            appPackage: 'com.twitter.android',
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/x_twitter_icon.png',
                            height: 70,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Twitter',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'cursive',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Card(
                    color: cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap:
                          () => _launchURL(
                            'https://www.instagram.com/onsekizmartuni',
                            appPackage: 'com.instagram.android',
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/instagram_icon.png',
                            height: 70,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Instagram',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'cursive',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
