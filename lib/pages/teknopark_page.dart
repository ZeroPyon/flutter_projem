import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TeknoParkPage extends StatefulWidget {
  const TeknoParkPage({super.key});

  @override
  State<TeknoParkPage> createState() => _TeknoParkPageState();
}

class _TeknoParkPageState extends State<TeknoParkPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("https://www.canakkaleteknopark.com.tr/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("TeknoPark"),
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
