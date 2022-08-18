import 'package:flutter/material.dart';
import '../widgets/chat_messages_widget.dart';
import '../widgets/chat_pannel.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          final hasFullScreen = constraints.maxWidth > 600;
          if (hasFullScreen) {
            return Row(
              children: const [
                ChatPannelWidget(),
                Expanded(child: ChatMessagesWidget()),
              ],
            );
          } else {
            return const ChatMessagesWidget();
          }
        }),
      ),
    );
  }
}
