import 'package:flutter/material.dart';
import 'package:learn_app/chatscreen.dart';

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Developer Chat')),
          elevation: 4.0,
        ),
        body: ChatScreen()
    );
  }
}