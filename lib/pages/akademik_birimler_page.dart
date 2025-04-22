import 'package:flutter/material.dart';

class AkademikBirimlerPage extends StatelessWidget {
  const AkademikBirimlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Akademik Birimler"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          const SizedBox(height: 16),
          _buildCategoryCard(
            context,
            title: "Fakülteler",
            image: "assets/images/Facultyphoto.png",
            routeName: '/expandedFaculties',
          ),
          _buildCategoryCard(
            context,
            title: "Yüksekokullar",
            image: "assets/images/ykskokl.png",
            routeName: '/ykskokl',
          ),
          _buildCategoryCard(
            context,
            title: "Meslek Yüksekokulları",
            image: "assets/images/MYO.png",
            routeName: '/myo',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context, {
    required String title,
    required String image,
    required String routeName,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: const Color(0xFF424242),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, routeName),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(image, height: 70),
                      const SizedBox(height: 8),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
