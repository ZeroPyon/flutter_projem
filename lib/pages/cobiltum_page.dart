import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CobiltumPage extends StatefulWidget {
  const CobiltumPage({super.key});

  @override
  State<CobiltumPage> createState() => _CobiltumPageState();
}

class _CobiltumPageState extends State<CobiltumPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://cobiltum.comu.edu.tr/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("COBILTUM"),
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
