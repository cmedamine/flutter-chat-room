import 'package:flutter/material.dart';

class ChatTextFieldWidget extends StatelessWidget {
  const ChatTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  isDense: true,
                  hintText: 'Message...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.square(16 + 40),
              primary: Colors.teal[100],
            ),
            onPressed: () {},
            child: Text(
              'Send Message',
              style: Theme.of(context).textTheme.button?.copyWith(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
