import 'package:flutter/material.dart';
import 'package:flutter_chat_room/src/widgets/room_form_widget.dart';

class JoinRoomPage extends StatelessWidget {
  const JoinRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child:RoomFormWidget()),
    );
  }
}