import 'package:flutter/material.dart';

class ComuButikPage extends StatelessWidget {
  const ComuButikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("ÇOMÜ Butik"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/comu.png',
              height: 31,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Image.asset(
              'assets/images/comubutikhizmet.png',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            const Text(
              "ÇOMÜ Butik Tüm Öğrencilerimizin Hizmetinde",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'sans-serif-condensed',
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              '''Sağlık, Kültür ve Spor Daire Başkanlığı’na bağlı bulunan ÇOMÜ Butik Birimi, öğrencilerimizin ihtiyaçlarını ücretsiz olarak karşılamaya devam etmektedir.

Aralık 2019’dan bu yana koordinasyonu Doç. Dr. Hicran Özlem Ilgın ve Öğr. Gör. Şaziye Ceren Ulupınar tarafından yapılan ÇOMÜ Butik’te, üniversitemizin tüm öğrencilerine giyim, ev eşyası, kırtasiye, kitap ve erzak desteği sağlanmaktadır.

Destekçilerimiz tarafından ÇOMÜ Butik’e getirilen her türlü az kullanılmış malzeme ÇOMÜ Butik depo alanında değerlendirilerek ayrıştırılmakta ve öğrenciler için uygun bulunanlar ihtiyaç sınıflarına göre tasnif edilmektedir. Ayrıca ÇOMÜ Butik’i destekleyen hayırseverler tarafından alana ulaştırılan etiketli ürünler öğrencilerimizin hizmetine sunulmaktadır.

ÇOMÜ Butik, kuruluş amacı olan “ihtiyaç sahibi öğrencilere hizmet” anlayışını “üniversitemizin tüm öğrencilerine hizmet” ilkesiyle değiştirmiş ve hizmetten yararlanmak isteyen tüm öğrencilerimize kapılarını açmıştır. Ürün yelpazesini ev eşyasından, erzağa, kitaptan her çeşit giyim malzemesi ve aksesuara kadar çeşitlendiren ÇOMÜ Butik’ten yararlanan öğrencimizin sayısı, geçtiğimiz Ekim ve Kasım ayında birimlerde gerçekleştirilen tanıtım seminerlerinin de etkisiyle her geçen gün artmaktadır.

Kısmi zamanlı öğrencilerimizin ve gönüllü öğrencilerimizin desteğiyle hafta içi her gün 10.00-16.00 saatleri arası açık olan ÇOMÜ Butik, Terzioğlu Yerleşkesi, Hasan Mevsuf Spor Salonu girişinde yer almaktadır.''',
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
