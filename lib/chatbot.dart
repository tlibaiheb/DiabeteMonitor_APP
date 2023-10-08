import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://console.dialogflow.com/api-client/demo/embedded/1c7d4c24-aa07-46fd-9e8b-ba310d6bebde'),
        ),
      ),
    );
  }
}
