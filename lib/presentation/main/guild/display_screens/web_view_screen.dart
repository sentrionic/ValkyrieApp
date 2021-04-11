import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  static const routeName = '/web';
  final String url;
  final String filename;

  const WebViewScreen({
    Key? key,
    required this.url,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "File embed",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              filename,
              style: const TextStyle(color: Colors.white30, fontSize: 14.0),
            )
          ],
        ),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
