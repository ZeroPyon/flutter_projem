import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EczanePage extends StatefulWidget {
  const EczanePage({super.key});

  @override
  State<EczanePage> createState() => _EczanePageState();
}

class _EczanePageState extends State<EczanePage> {
  late final WebViewController _initialWebViewController;
  late final WebViewController _mapWebViewController;

  bool showInitial = true;

  @override
  void initState() {
    super.initState();
    _initialWebViewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse('https://www.canakkaleeo.org.tr/nobetci-eczaneler'),
          );

    _mapWebViewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse('https://www.google.com/maps/search/eczane/'),
          );
  }

  void toggleWebViews() {
    setState(() {
      showInitial = !showInitial;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Eczane"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/comu.png', height: 31, fit: BoxFit.cover),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: toggleWebViews,
            child: const Text("Yakındaki Eczaneyi Bul"),
          ),
          Expanded(
            child:
                showInitial
                    ? WebViewWidget(controller: _initialWebViewController)
                    : WebViewWidget(controller: _mapWebViewController),
          ),
        ],
      ),
    );
  }
}
