import 'package:flutter/material.dart';
import 'package:flutter_chat_room/src/models/message.dart';

import 'chat_text_field_widget.dart';
import 'message_widget.dart';

class ChatMessagesWidget extends StatelessWidget {
  const ChatMessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: messages.length,
            itemBuilder: (context, index) => MessageWidget(
              msg: messages[index].message,
              user: messages[index].user,
              time: messages[index].timestamp,
            ),
          ),
        ),
        const ChatTextFieldWidget()
      ],
    );
  }
}
