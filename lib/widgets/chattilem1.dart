import 'package:flutter/material.dart';

class Chattilem1 extends StatelessWidget {
  final String profileImage;
  final String username;
  final String lastMessage;
  final String time;
  final VoidCallback? onPressed;

  const Chattilem1({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.lastMessage,
    required this.time,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(profileImage),
            radius: 28,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  lastMessage,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time, style: const TextStyle(color: Colors.white70, fontSize: 12)),
              const SizedBox(height: 4),
              const Icon(Icons.more_vert, color: Colors.white70, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}
