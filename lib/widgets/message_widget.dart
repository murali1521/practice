import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String messageText;
  final bool isSentByUser;

  const MessageWidget({
    Key? key,
    required this.messageText,
    this.isSentByUser = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSentByUser ? Colors.purple.shade100 : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          messageText,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
