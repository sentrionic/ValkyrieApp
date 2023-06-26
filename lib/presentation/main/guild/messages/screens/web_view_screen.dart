import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/screens/webview_controller_hook.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends HookWidget {
  static const routeName = '/web';
  final String url;
  final String filename;

  const WebViewScreen({
    super.key,
    required this.url,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useWebViewController(url);
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
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
