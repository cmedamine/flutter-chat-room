
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String msg;
  final String user;
  final String time;

  const MessageWidget({
    Key? key,
    required this.msg,
    required this.user,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[900],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        width: double.infinity,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(user, style: Theme.of(context).textTheme.bodyText2),
                Text(time, style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
            Text(msg, style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
