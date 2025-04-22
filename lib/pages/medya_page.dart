import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MedyaPage extends StatefulWidget {
  const MedyaPage({super.key});

  @override
  State<MedyaPage> createState() => _MedyaPageState();
}

class _MedyaPageState extends State<MedyaPage> {
  late final WebViewController _webView1Controller;
  late final WebViewController _webView2Controller;

  @override
  void initState() {
    super.initState();

    _webView1Controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("http://medyamerkezi.comu.edu.tr/"));

    _webView2Controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse("http://radyo.comu.edu.tr/canlidinle/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Medya"), backgroundColor: Colors.black),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          Image.asset(
            'assets/images/sosyalmedyabar.png',
            height: 110,
            fit: BoxFit.cover,
          ),
          Expanded(child: WebViewWidget(controller: _webView1Controller)),
          SizedBox(
            height: 150,
            child: WebViewWidget(controller: _webView2Controller),
          ),
        ],
      ),
    );
  }
}
