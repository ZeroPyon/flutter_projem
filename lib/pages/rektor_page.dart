import 'package:flutter/material.dart';

class RektorPage extends StatelessWidget {
  const RektorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Rektör'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/comu.png',
              height: 31,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            Image.asset(
              'assets/images/hepbirlikte.png',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            const Text(
              'Değerli Çanakkale Onsekiz Mart Üniversitesi Ailesi',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'sans-serif-condensed',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              // Uzun yazı (kısaltılmış örnek metinle temsil ediliyor)
              'Çanakkale Onsekiz Mart Üniversitesi genç ve dinamik yapısı, nitelikli eğitim modelleri, güçlü altyapısı ile...',
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 24),
            const Text(
              'Prof. Dr. R. Cüneyt ERENOĞLU\nRektör',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
