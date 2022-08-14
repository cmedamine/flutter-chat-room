import 'package:flutter/material.dart';
import '../widgets/chat_messages_widget.dart';

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
              children: [
                Container(
                  height: double.infinity,
                  width: 200,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Spacer(),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            'Node',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        
                        Flexible(
                          child: Text(
                            'Users:',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Flexible(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Joe'),
                              Text('Dan'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Leave'),
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                const Expanded(child: ChatMessagesWidget())
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

