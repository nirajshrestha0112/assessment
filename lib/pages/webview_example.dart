import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({ Key? key }) : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(
        initialUrl: "https://www.daraz.com.np/",
        javascriptMode: JavascriptMode.unrestricted,

      ),
      
      
    );
  }
}