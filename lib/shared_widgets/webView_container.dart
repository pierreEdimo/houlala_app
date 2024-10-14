import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String? htmlContent;

  const WebViewContainer({
    super.key,
    this.htmlContent,
  });

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late String? htmlContent;
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    htmlContent = widget.htmlContent;
    _controller = WebViewController();
    _controller.loadHtmlString(htmlContent!);
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _controller,
    );
  }
}
