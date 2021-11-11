import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FreightPostionMap extends StatelessWidget {
  FreightPostionMap({Key? key}) : super(key: key);
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  WebViewController? _webViewController;

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          //height: MediaQuery.of(context).size.height - 240,
          margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 0.0,
                offset: Offset(0.0, 0.0),
              ),
            ]
          ),
          child: WebView(
            initialUrl: 'https://udemy-cdff3.web.app/?v=0.1',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
              _webViewController = webViewController;
            },
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            javascriptChannels: <JavascriptChannel>{
              _toasterJavascriptChannel(context),
            },
          ),
        ),
        Positioned(
          top:-5,
          right: 12,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.transparent,
                child: Icon(Icons.close, color: Colors.black, size: 40,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}