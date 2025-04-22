import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CozumMerkeziPage extends StatefulWidget {
  const CozumMerkeziPage({super.key});

  @override
  State<CozumMerkeziPage> createState() => _CozumMerkeziPageState();
}

class _CozumMerkeziPageState extends State<CozumMerkeziPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://rimer.comu.edu.tr/index"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Çözüm Merkezi"),
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
