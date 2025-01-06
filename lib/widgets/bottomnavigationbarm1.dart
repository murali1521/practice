import 'package:flutter/material.dart';

class Bottomnavigationbarm1 extends StatelessWidget {
  const Bottomnavigationbarm1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.purple.shade400,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.people, color: Colors.white, size: 28),
          Icon(Icons.chat_bubble, color: Colors.white, size: 28),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.add, color: Colors.purple, size: 28),
          ),
          Icon(Icons.notifications, color: Colors.white, size: 28),
          Icon(Icons.settings, color: Colors.white, size: 28),
        ],
      ),
    );
  }
}
