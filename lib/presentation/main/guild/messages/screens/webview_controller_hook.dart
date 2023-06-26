import 'package:webview_flutter/webview_flutter.dart';

WebViewController useWebViewController(
  String url,
) {
  final WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse(url));
  return controller;
}
