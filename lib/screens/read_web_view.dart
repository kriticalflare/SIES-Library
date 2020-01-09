
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReadWebView extends StatefulWidget {
  final String isbn;
  ReadWebView({this.isbn});

  @override
  _ReadWebViewState createState() => _ReadWebViewState();
}

class _ReadWebViewState extends State<ReadWebView> {

  _loadHtmlFromAssets() async {
    String width = (MediaQuery.of(context).size.width - 0.025 * MediaQuery.of(context).size.width).floor().toString();
    String height = (MediaQuery.of(context).size.height - 0.075 * MediaQuery.of(context).size.height).floor().toString();
    String filePath = 'assets/webview.html';
    String fileHtmlContents = await rootBundle.loadString(filePath);
    String replaceIsbn = fileHtmlContents.replaceAll("'replace'", '${widget.isbn}');
    String replacedW = replaceIsbn.replaceAll('{width}', width);
    String finalHtml = replacedW.replaceAll('{height}', height);
//    print(finalHtml);
    _webViewController.loadUrl(Uri.dataFromString(finalHtml,
        mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
  WebViewController _webViewController;
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: "",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          _webViewController = webViewController;
          _controller.complete(webViewController);
          _loadHtmlFromAssets();
        },
      ),
    );
  }
}
