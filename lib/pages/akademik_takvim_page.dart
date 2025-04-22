import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AkademikTakvimPage extends StatefulWidget {
  const AkademikTakvimPage({super.key});

  @override
  State<AkademikTakvimPage> createState() => _AkademikTakvimPageState();
}

class _AkademikTakvimPageState extends State<AkademikTakvimPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse(
              "https://ogrenciisleri.comu.edu.tr/2024-2025-egitim-ogretim-yili-akademik-takvimi-r165.html",
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Akademik Takvim"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          Expanded(child: WebViewWidget(controller: _controller)),
        ],
      ),
    );
  }
}
