import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/utils/launch_url.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse("https://www.google.com/"),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Text('Link google externo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                LaunchURL.launch(context, "https://www.google.com/");
              },
              child: const Text('Link google interno'),
            ),
          ],
        ),
      ),
    );
  }
}
