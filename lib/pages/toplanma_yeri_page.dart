import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ToplanmaYeriPage extends StatefulWidget {
  const ToplanmaYeriPage({super.key});

  @override
  State<ToplanmaYeriPage> createState() => _ToplanmaYeriPageState();
}

class _ToplanmaYeriPageState extends State<ToplanmaYeriPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse(
              "https://www.google.com/maps/place/40%C2%B006'37.4%22N+26%C2%B024'40.4%22E/@40.11039,26.411217,17z/data=!3m1!4b1!4m4!3m3!8m2!3d40.11039!4d26.411217?entry=ttu",
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Toplanma Yeri"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          const SizedBox(height: 5),
          Expanded(child: WebViewWidget(controller: _controller)),
        ],
      ),
    );
  }
}
