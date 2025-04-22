import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DismerPage extends StatefulWidget {
  const DismerPage({super.key});

  @override
  State<DismerPage> createState() => _DismerPageState();
}

class _DismerPageState extends State<DismerPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://dishastanesi.comu.edu.tr/login"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Diş Randevu"),
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
