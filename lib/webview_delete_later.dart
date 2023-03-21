import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  late final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WebViewWidget(controller: controller),
          ),
          Container(
            height: 100,
            color: Colors.orange[200],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(
        Uri.parse("https://www.facebook.com"),
      );
    super.initState();
  }
}
