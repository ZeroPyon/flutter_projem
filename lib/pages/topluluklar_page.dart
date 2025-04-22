import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TopluluklarPage extends StatefulWidget {
  const TopluluklarPage({super.key});

  @override
  State<TopluluklarPage> createState() => _TopluluklarPageState();
}

class _TopluluklarPageState extends State<TopluluklarPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse(
              "https://tv.comu.edu.tr/haberler/topluluklar/ogrenci-topluluklari-tanitim-gunleri-basladi",
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Topluluklar"),
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
