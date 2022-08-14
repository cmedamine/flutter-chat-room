import 'package:flutter/material.dart';

class ChatMessagesWidget extends StatelessWidget {
  const ChatMessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [Text('chats!')],
      ),
    );
  }
}
