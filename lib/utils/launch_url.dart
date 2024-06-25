import 'package:flutter/material.dart';
import 'package:website/screens/webview_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LaunchURL {
  static void launch(BuildContext context, String url) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewScreen(controller: controller),
      ),
    );
  }
}
