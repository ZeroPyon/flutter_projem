import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ComuHaritaPage extends StatefulWidget {
  const ComuHaritaPage({super.key});

  @override
  State<ComuHaritaPage> createState() => _ComuHaritaPageState();
}

class _ComuHaritaPageState extends State<ComuHaritaPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://harita.comu.edu.tr/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("ÇOMÜ Harita"),
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
