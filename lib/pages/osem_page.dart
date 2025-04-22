import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OsemPage extends StatefulWidget {
  const OsemPage({super.key});

  @override
  State<OsemPage> createState() => _OsemPageState();
}

class _OsemPageState extends State<OsemPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://yemek.comu.edu.tr/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("ÖSEM"), backgroundColor: Colors.black),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          Image.asset(
            'assets/images/sckcorba.png',
            height: 152,
            fit: BoxFit.cover,
          ),
          Expanded(child: WebViewWidget(controller: _controller)),
        ],
      ),
    );
  }
}
