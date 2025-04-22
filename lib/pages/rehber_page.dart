import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RehberPage extends StatefulWidget {
  const RehberPage({super.key});

  @override
  State<RehberPage> createState() => _RehberPageState();
}

class _RehberPageState extends State<RehberPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://rehber.comu.edu.tr/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Rehber"),
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
