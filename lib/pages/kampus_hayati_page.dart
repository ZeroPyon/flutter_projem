import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KampusHayatiPage extends StatefulWidget {
  const KampusHayatiPage({super.key});

  @override
  State<KampusHayatiPage> createState() => _KampusHayatiPageState();
}

class _KampusHayatiPageState extends State<KampusHayatiPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://www.comu.edu.tr/kampuste-yasam"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Kampüs Hayatı"),
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
