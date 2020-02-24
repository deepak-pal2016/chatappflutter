import 'package:flutter/material.dart';
import 'package:learn_app/chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage> [];


  void _handlesubmit(String text) {
    _textController.clear();
    ChatMessage  message = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
          data: IconThemeData(
            color: Colors.blue,
          ),
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Send a Message"),
                controller: _textController,
                onSubmitted: _handlesubmit,
              ),  
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal:4.0),
              child: IconButton(icon: Icon(Icons.send),
               onPressed: () => _handlesubmit(_textController.text)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_,int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            Divider(height: 1.0,),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _textComposerWidget(),
            )
          ],
        );
  }
}
