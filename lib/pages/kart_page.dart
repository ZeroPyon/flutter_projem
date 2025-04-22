import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KartPage extends StatefulWidget {
  const KartPage({super.key});

  @override
  State<KartPage> createState() => _KartPageState();
}

class _KartPageState extends State<KartPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://odeme.comu.edu.tr/login/index"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("ÇOMÜ Kart"),
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
